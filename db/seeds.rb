# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Matiere.create [{:name => 'Francais'},
                {:name => 'Maths'},
                {:name => 'Anglais'},
                {:name => 'Histoire'},
                {:name => 'Geographie'}]

Student.create [{:firstName => 'Nicolas', :lastName => 'Dechesne', :gender => 'M'},
                {:firstName => 'Marion',  :lastName => 'Sanchez',  :gender => 'F'},
                {:firstName => 'Zinedine', :lastName => 'Zidane',  :gender => 'M'}]
                
