# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Language.destroy_all
Proficiency.destroy_all

mark = Student.create(name:"Mark", age:28, admin:false)
jonathan = Student.create(name:"Johnathan", age:28, admin:true)

english = Language.create(language:"English")
spanish = Language.create(language:"Spanish")
french = Language.create(language:"French")

Proficiency.create!([
  {student:jonathan, admin:true},
  {student:mark}
])
