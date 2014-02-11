require 'rubygems'
require 'sinatra'
require 'net/http'


get '/*' do |path| 
	url = URI.parse("http://torrents.thepiratebay.se/#{path}")
	req = Net::HTTP::Get.new(url.path)
	res = Net::HTTP.start(url.host, url.port) {|http|
	  http.request(req)
	}
	res.each_header do |key, value|
	  response.headers[key] = value
	end
	res.body
end