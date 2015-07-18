# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.all.each {|user| user.delete}
Group.all.each {|group| group.delete}
MasterList.all.each {|ml| ml.delete}
ListCategory.all.each {|t| t.delete}
ListSubcategory.all.each {|t| t.delete}
ListCategory.all.each {|t| t.delete}


user = User.new 
user.save! 