require 'uri'
require 'net/http'

uri = URI('http://localhost:8080/api/icecream')
res = Net::HTTP.get_response(uri)
puts res.body if res.is_a?(Net::HTTPSuccess)