require 'json'
require 'open-uri'

class HtmlGenerator

	def index(search = "")
		raw_response = open("http://lcboapi.com/products?q=#{search}").read
		parsed_response = JSON.parse(raw_response)
		
		puts "
		<!DOCTYPE html>
		<html>
			<head>
			<title>LCBO Products</title>
			</head>
			<body>
		"	

		for i in 0..parsed_response["result"].length-1
			puts "
			<ul>
				<img src=\"#{parsed_response["result"][i]["image_thumb_url"]}\">
				<li>Name: #{parsed_response["result"][i]["name"]}</li>
				<li>Price: $#{parsed_response["result"][i]["price_in_cents"]/100.0}</li>
				<li>Alcohol Content: #{parsed_response["result"][i]["alcohol_content"]/100.00}%</li>
				<li>Type: #{parsed_response["result"][i]["primary_category"]}</li>
				<li>Package: #{parsed_response["result"][i]["package"]}</li>
			</ul>
			"
		end

		puts "	
			</body>
		</html>
		"
	end

	def show(product_id)
		raw_response = open("http://lcboapi.com/products/#{product_id}").read
		parsed_response = JSON.parse(raw_response)

		puts "
		<!DOCTYPE html>
		<html>
			<head>
			<title>Product ##{product_id}</title>
			</head>
			<body>

			<ul>
				<img src=\"#{parsed_response["result"]["image_thumb_url"]}\">
				<li>Name: #{parsed_response["result"]["name"]}</li>
				<li>Price: $#{parsed_response["result"]["price_in_cents"]/100.0}</li>
				<li>Alcohol Content: #{parsed_response["result"]["alcohol_content"]/100.00}%</li>
				<li>Type: #{parsed_response["result"]["primary_category"]}</li>
				<li>Package: #{parsed_response["result"]["package"]}</li>
			</ul>

			</body>
		</html>
		"
	end
end