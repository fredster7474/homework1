# main.rb
require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end

#1
array = read_contacts

a =array.map do |hash|
  { "name": hash[:"name"], "phone": hash[:"phone"] }
end
puts a

=begin
return_keys = [ :"name", :"phone"]

return_array = array.map do |event|
  Hash[
    return_keys.collect do |key|
      [ key, event[key] ]
    end
  ]
end
puts return_array
=end
