# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ella = Student.create(first_name: "Ella", last_name: "Taber")
nate = Student.create(first_name: "Nate", last_name: "Taber")

algebra = SchoolClass.create(title: "Intro Algebra", room_number: 12)
calculus = SchoolClass.create(title: "Advanced Calculus", room_number: 15)
