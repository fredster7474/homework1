# main.rb
require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end

a = read_contacts

b = a.map{|x| x[:"name"]}
puts b

=begin
b = a.map{|x| x[:"name" => :"phone"]}
puts b
=end
#a.map{|x| x}.select{|name, phone, email| phone == "+44 20 7123 4567"}

=begin
my_hash = {"Joe" => "male", "Jim" => "male", "Patty" => "female"}
my_hash.select{|name, gender| gender == "male"}.map {|x| puts x}

   # ./tacta.rb
def action_search(contacts)
  puts
  pattern = ask("Search for? ")
  puts

  contacts.each do |contact|
    if contact[:name] =~ /\b#{pattern}/i
      show(contact)
      puts
    end
  end
end


#a = read_contacts
#a.select{|name, phone, email| name == "Thomas Jefferson" }

=begin


a = read_contacts
a.select{|item| puts item if item == 1 }

a.map {|item|"+ 1" == item}     #=> [true, false, false, false]
a.select {|item|"+ 1" == item}

contacts.each do |contact|
    map.contact {|contact|} if contact =~ /\"+ 1"/i
      puts contact
    end
=end
