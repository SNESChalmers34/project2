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
johnathan = Student.create(name:"Johnathan", age:28, admin:true)

english = Language.create(language:"English")
spanish = Language.create(language:"Spanish")
french = Language.create(language:"French")

Proficiency.create([
  {student:johnathan, language:english, fluent_in:true, want_to_learn:false, years_exp:28},
  {student:johnathan, language:spanish, fluent_in:true, want_to_learn:false, years_exp:5},
  {student:mark, language:english, fluent_in:true, want_to_learn:false, years_exp:28},
  {student:mark, language:spanish, fluent_in:false, want_to_learn:true}
])
