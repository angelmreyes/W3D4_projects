# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

## users
ApplicationRecord.connection.reset_pk_sequence!('users')
ApplicationRecord.connection.reset_pk_sequence!('polls')
ApplicationRecord.connection.reset_pk_sequence!('questions')
ApplicationRecord.connection.reset_pk_sequence!('answer_choices')
ApplicationRecord.connection.reset_pk_sequence!('responses')

u1 = User.create!(username: 'bryan0147')
u2 = User.create!(username: 'angel6789')
u3 = User.create!(username: 'russel 3490')
u4 = User.create!(username: 'bran_the_man')
u5 = User.create!(username: 'justin_justin')
u6 = User.create!(username: 'omega')
u7 = User.create!(username: 'spen')

## poll

p1 = Poll.create!(title: 'Next president', user_id: u1.id)
p2 = Poll.create!(title: 'App Academy', user_id: u2.id)
p3 = Poll.create!(title: 'Public transport', user_id: u3.id)
p4 = Poll.create!(title: 'Area restaurants', user_id: u4.id)
p5 = Poll.create!(title: 'UFOs', user_id: u5.id)
p6 = Poll.create!(title: 'The best movies', user_id: u6.id)
p7 = Poll.create!(title: 'iPhone vs Galaxy', user_id: u7.id)

## questions

q1 = Question.create!(text: 'Who will win?', poll_id: p1.id)
q2 = Question.create!(text: 'Who should run?', poll_id: p1.id)
q3 = Question.create!(text: 'How\'s the bootcamp?', poll_id: p2.id)
q4 = Question.create!(text: 'Are you learning?', poll_id: p2.id)
q5 = Question.create!(text: 'What is the dirtiest train?', poll_id: p3.id)
q6 = Question.create!(text: 'Has the train been late?', poll_id: p3.id)
q7 = Question.create!(text: 'What\'s hot?', poll_id: p4.id)
q8 = Question.create!(text: 'What\'s affordable in Midtown?', poll_id: p4.id)
q9 = Question.create!(text: 'Do you believe in UFOs?', poll_id: p5.id)
q10 = Question.create!(text: 'Are they friendly or hostile?', poll_id: p5.id)
q11 = Question.create!(text: 'Best movie of the year?', poll_id: p6.id)
q12 = Question.create!(text: 'Which movie would watch twice?', poll_id: p6.id)
q13 = Question.create!(text: 'iPhone or Android?', poll_id: p7.id)
q14 = Question.create!(text: 'Which will fizzle out first?', poll_id: p7.id)

## answer choices

a1 = AnswerChoice.create!(text: 'Trump, MAGA!', question_id: q1.id)
a2 = AnswerChoice.create!(text: 'Dick \'The Mastermind\' Cheney', question_id: q1.id)
a3 = AnswerChoice.create!(text: 'Bernie \'Feel the bern\' Sanders', question_id: q1.id)

a4 = AnswerChoice.create!(text: 'Obama', question_id: q2.id)
a5 = AnswerChoice.create!(text: 'Hilary', question_id: q2.id)
a6 = AnswerChoice.create!(text: 'Pence', question_id: q2.id)

a7 = AnswerChoice.create!(text: 'Excellent', question_id: q3.id)
a8 = AnswerChoice.create!(text: 'Ok', question_id: q3.id)
a9 = AnswerChoice.create!(text: 'Rough', question_id: q3.id)

a10 = AnswerChoice.create!(text: 'Absolutely', question_id: q4.id)
a11 = AnswerChoice.create!(text: 'Maybe', question_id: q4.id)
a12 = AnswerChoice.create!(text: 'Nah', question_id: q4.id)

a13 = AnswerChoice.create!(text: 'The 2 train', question_id: q5.id)
a14 = AnswerChoice.create!(text: 'The 5 train', question_id: q5.id)
a15 = AnswerChoice.create!(text: 'The D train', question_id: q5.id)

a16 = AnswerChoice.create!(text: 'All the time', question_id: q6.id)
a17 = AnswerChoice.create!(text: 'Sometimes', question_id: q6.id)
a18 = AnswerChoice.create!(text: 'Never', question_id: q6.id)

a19 = AnswerChoice.create!(text: 'Pokebowl', question_id: q7.id)
a20 = AnswerChoice.create!(text: '$1 pizza', question_id: q7.id)
a21 = AnswerChoice.create!(text: 'Chipotle', question_id: q7.id)

a22 = AnswerChoice.create!(text: 'The Corner deli', question_id: q8.id)
a23 = AnswerChoice.create!(text: '$1 pizza', question_id: q8.id)
a24 = AnswerChoice.create!(text: 'Street vendor', question_id: q8.id)

a25 = AnswerChoice.create!(text: 'Of course', question_id: q9.id)
a26 = AnswerChoice.create!(text: 'Not sure', question_id: q9.id)
a27 = AnswerChoice.create!(text: 'I\'m a UFO', question_id: q9.id)

a28 = AnswerChoice.create!(text: 'Definitely hostile', question_id: q10.id)
a29 = AnswerChoice.create!(text: 'Of course friendly', question_id: q10.id)
a30 = AnswerChoice.create!(text: 'Who knows?', question_id: q10.id)

a31 = AnswerChoice.create!(text: 'Avengers: Endgame', question_id: q11.id)
a32 = AnswerChoice.create!(text: 'The Lion King', question_id: q11.id)
a33 = AnswerChoice.create!(text: 'Toy Story 4', question_id: q11.id)

a34 = AnswerChoice.create!(text: 'Avengers: Endgame', question_id: q12.id)
a35 = AnswerChoice.create!(text: 'Aladdin', question_id: q12.id)
a36 = AnswerChoice.create!(text: 'John Wick 3', question_id: q12.id)

a37 = AnswerChoice.create!(text: 'iPhone', question_id: q13.id)
a38 = AnswerChoice.create!(text: 'Android', question_id: q13.id)
a39 = AnswerChoice.create!(text: 'None! Huawei', question_id: q13.id)

a40 = AnswerChoice.create!(text: 'Huawei', question_id: q14.id)
a41 = AnswerChoice.create!(text: 'iPhone', question_id: q14.id)
a42 = AnswerChoice.create!(text: 'Android', question_id: q14.id)

## Response

r1 = Response.create!(user_id: u1.id, answerchoice_id: a1.id)
r2 = Response.create!(user_id: u1.id, answerchoice_id: a5.id)

r3 = Response.create!(user_id: u2.id, answerchoice_id: a8.id)
r4 = Response.create!(user_id: u2.id, answerchoice_id: a12.id)

r5 = Response.create!(user_id: u3.id, answerchoice_id: a14.id)
r6 = Response.create!(user_id: u3.id, answerchoice_id: a18.id)

r7 = Response.create!(user_id: u4.id, answerchoice_id: a20.id)
r8 = Response.create!(user_id: u4.id, answerchoice_id: a23.id)

r9 = Response.create!(user_id: u5.id, answerchoice_id: a25.id)
r10 = Response.create!(user_id: u5.id, answerchoice_id: a30.id)

r11 = Response.create!(user_id: u6.id, answerchoice_id: a31.id)
r12 = Response.create!(user_id: u6.id, answerchoice_id: a36.id)

r13 = Response.create!(user_id: u7.id, answerchoice_id: a39.id)
r14 = Response.create!(user_id: u7.id, answerchoice_id: a42.id)