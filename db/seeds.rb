# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = major.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Participant.destroy_all
 
 
Participant.create!([
    {
    	id: 1, name: "John", phone: "01121969779", email: "john@doe.com",
        university: "Allen St.", major: "Manhattan", first_question: "10002", second_question: "yes"
     },
     {
    	id: 2, name: "Jane", phone: "Roe", email: "jane@roe.com",
        university: "Boo St.", major: "Kirkland", first_question: "98034", second_question: "yes"
    },
    {
    	id: 3, name: "Foo", phone: "Bar", email: "foo@bar.com",
        university: "Boo St.", major: "Kirkland", first_question: "98034", second_question: "yes"
    },
    {
    	id: 4, name: "Rachid", phone: "Benkirane", email: "contact@roe.com", 
        university: "Boo St.", major: "Kirkland",first_question: "98034", second_question: "yes"
    }
 ])
 
p "Created #{Participant.count} participants."AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')