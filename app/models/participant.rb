class Participant < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness: true
	validates :university, presence: true
	validates :major, presence: true
	validates :phone, presence: true, numericality: true, length: {minimum: 11, maximum: 11}
	validates :first_question, presence: true
	validates :second_question, presence: true
	validates :third_question, presence: true
	validates :fourth_question, presence: true
	validates :fifth_question, presence: true
	validates :sixth_question, presence: true


  	def self.to_csv(options = {})
	    CSV.generate(options) do |csv|
	      	csv << column_names
	      	all.each do |participant|
	        	csv << participant.attributes.values_at(*column_names)
	      	end
	    end
  	end
end
