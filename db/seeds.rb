# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Amin', last_name: 'Brodie', location: 'Hangzhou, China', email: 'ab@amin.com', password: '12345', password_confirmation: '12345')
User.create(first_name: 'Lera', last_name: 'Kalantayeva', location: 'Kathmandu, Nepal', email: 'lera@lera.com', password: '12345', password_confirmation: '12345')
User.create(first_name: 'Jamie', last_name: 'Fox', location: 'Berlin, Germany', email: 'Jamie@Jamie.com', password: '12345', password_confirmation: '12345')

Idea.create(title: 'Idea Roast', description: 'An early-stage idea validation platform that attmepts to make use of negative insights to uncover risks and flaws in startup concepts.  ', user_id: '1')
Idea.create(title: 'Safe Child Kit', description: 'SafeChildkit provides the country’s premier child safety kits to schools, day care centers, and preschools all around the country. These child safety kits arm parents with the ability to educate their children in an informed, non-fear based manner. Additionally, these kits help parents to compile all of the critical information that law enforcement would need in the event of an emergency.', user_id: '2')
Idea.create(title: 'Luckdrops for kids', description: 'Luckdrops gives kids the passport to a new universe of knowledge and learning. Your child’s dreams are previews of successes to come, and we give them flight through unique, specialized educational experiences.', user_id: '3')

Comment.create(text: 'This idea cant work becuase people are going to hate being trashed and abused by all the internet trolls out there that just want to kill their dreams!', idea_id: '1', user_id: '3')
Comment.create(text: 'This cant work becuase people are fundamentally selfish and shitty.  Asking for money to help anyone other than themselves is a flaw in your judgement of people.  Try to offer them something that might appeal to their greed and selfishness', idea_id: '2', user_id: '2')
Comment.create(text: 'This idea relies on the idea that people arent ignorant pieces of shit that want to play call of duty all day long and drink their brains out after work rather than spend any quality educational time with their little bastard children.', idea_id: '3', user_id: '1')