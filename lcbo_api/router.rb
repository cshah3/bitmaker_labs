require_relative 'html_generator'

if ARGV.empty?
	puts "Usage: ruby router.rb index (optional: search query) or
	ruby router.rb show (product id)"
else
	action = ARGV[0]
	generator = HtmlGenerator.new
	
	if action == "index"
		generator.index(ARGV[1])
	elsif action == "show"
		generator.show(ARGV[1])
	else
		puts "Unknown action #{action}. Use index or show."
	end
end