# frozen_string_literal: true

require_relative "ip_geolocation/version"

require "json"

require "rest-client"

module IpGeolocation
  class Geo
	
	def ip(geo_ip)
		@geo_ip = geo_ip
	end
	
	def location
		url = RestClient.get "http://ip-api.com/json/#{@geo_ip}"
		
		api1 = JSON.parse(url.body)["query"]
		puts "Ip: #{api1}"
		
		api2 = JSON.parse(url.body)["country"]
		puts "Country: #{api2}"
		
		api3 = JSON.parse(url.body)["regionName"]
		puts "Region: #{api3}"
		
		api4 = JSON.parse(url.body)["city"]
		puts "City: #{api4}"
		
		api5 = JSON.parse(url.body)["status"]
		puts "Status: #{api5}"
	end
  end
end
