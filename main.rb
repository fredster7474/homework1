# main.rb
require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end

array = read_contacts

#1

=begin
a =array.map do |hash|
  { "name": hash[:"name"], "phone": hash[:"phone"] }
end
puts a

=end

#2a

b = array.select {|x| x[:"phone"].include?("+1")}


#2b

=begin

b = array.select {|x| x[:"email"].include?(".org")}
puts b

=end

c = b.reduce(0) do |sum, element|
    sum += (element.length)/3
   end
  puts c

  # a little cheap and dirty by dividing by 3 but it works... look forward to your version!

=begin
{|k,v|
  select if v.include?("w")}
puts b

#b = array.select.each {|v| v.include?("a")}
#print b

#results = sharks.select {|item| item.include?("a")}

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
