class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :phone
      t.string :email
      t.string :university
      t.string :major
      t.string :first_question
      t.string :second_question
      t.text :third_question
      t.string :fourth_question
      t.text :fifth_question
      t.string :sixth_question

      t.timestamps null: false
    end
  end
end
