module PeopleHelper

 def name(person)
  "#{person.first_name[0].upcase}. #{person.last_name}"
  #person.first_name[0].upcase + ". " + person.last_name
 end
end
