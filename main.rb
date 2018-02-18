# main.rb
system "clear"
require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end

array = read_contacts


#1
def contact_phone_and_name(contacts)
  phone_and_name = contacts.map{ |contact| { contact[:name] => contact[:phone] } }
  puts phone_and_name
end

#2a
def select_yank_numbers(contacts)
   contacts.select {|x| x[:"phone"].include?("+1")}
end

#2b
def select_org_emails(contacts)
 contacts.select {|x| x[:"email"].include?(".org")}
end

#3a and 3b
def count(orgs)
   orgs.reduce(0) do |sum, element|
   sum = orgs.length
  end
end

#1
puts "1"
puts contact_phone_and_name(array)

#2a
puts "2a"
puts select_yank_numbers(array)

#2b
puts "2b"
puts select_org_emails(array)

#3a
puts "3a"
y = select_yank_numbers(array)
z = count(y)
puts z

#3b
puts "3b"
y = select_org_emails(array)
z = count(y)
puts z
