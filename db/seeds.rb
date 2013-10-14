# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

USERS = 20
QUESTIONS = 50
MAX_ANSWERS = 10
MAX_VOTES = 10

all_users = []
USERS.times do
	all_users << User.create(
		username: Faker::Internet.user_name,
		password: 'foobar',
		password_confirmation: 'foobar'
		)
end

QUESTIONS.times do
	question = Question.create(
		title: Faker::Lorem.sentence,
		body: Faker::Lorem.sentence(4)
	)
	rand(MAX_ANSWERS).times do
		answer = Answer.create(
			body: Faker::Lorem.sentence(2),
			question_id: question.id
		)
		rand(MAX_VOTES).times do
			Vote.create(
				user_id: all_users.sample.id,
				answer_id: answer.id
			)
		end
	end
end