require 'net/http'
require 'json'

puts "[ + ] Ruby IP Locator by XiraS3c"
puts ""
print "Entrez une adresse IP : "
ip_address = gets.chomp

uri = URI("https://ipapi.co/#{ip_address}/json/")
response = Net::HTTP.get(uri)
result = JSON.parse(response)

puts ""
puts "[ + ] Résultat :"
puts ""
puts "Pays : #{result['country_name']}"
puts "Code pays : #{result['country_code']}"
puts "Ville : #{result['city']}"
puts "Code postal : #{result['postal']}"
puts "Latitude : #{result['latitude']}"
puts "Longitude : #{result['longitude']}"
puts "Fuseau horaire : #{result['timezone']}"
puts "Opérateur : #{result['org']}"
