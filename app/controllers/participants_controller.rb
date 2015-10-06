class ParticipantsController < ApplicationController
	before_action :set_participant, only: [:show, :edit, :update, :destroy]
  
	def index
		@participants = Participant.all
		respond_to do |format|
			format.html
			format.csv { send_data @participants.to_csv }
			format.xls { send_data @participants.to_csv(col_sep: "\t") }
		end
	end

	def show
	end

	def new
		@participant = Participant.new
	end

	def create
		@participant = Participant.create(participant_params)

		respond_to do |format|
		  if @participant.save
		    format.json { head :no_content }
		    format.js
		  else
		    format.json { render json: @participant.errors.full_messages, 
		                        status: :unprocessable_entity }
		  end
		end
	end

	def edit
	end

	def update
	 respond_to do |format|
	  if @participant.update(participant_params)
	    format.json { head :no_content }
	    format.js
	  else
	    format.json { render json: @participant.errors.full_messages,
	                               status: :unprocessable_entity }
	  end
	 
	end
	end


	def destroy
		@participant.destroy
		respond_to do |format|
		  format.js
		  format.html { redirect_to posts_url }
		  format.json { head :no_content }
		end
	end

private

	def set_participant
		@participant = Participant.find(params[:id])
	end

	def participant_params
		params.require(:participant).permit(:first_name, :last_name, :age, :major, 
		                        :phone, :email, :university, :first_question, :second_question, :third_question, :fourth_question, :fifth_question, :sixth_question)
	end
end
