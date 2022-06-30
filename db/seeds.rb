
10.times do |blog|
	Blog.create!(
		title: "my Blog #{blog}",
		body: "Hello world, this is my blog body #{blog}"
	)
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
		title: "Skill #{skill}",
		percent_u: 68
	)
end


puts "5 skill created"


9.times do |pf|
	Portfolio.create!(
		title: "Portfolio #{pf}",
		body: "The body text or body copy is the text forming the main content of a book, 
				magazine, web page, or any other printed or digital work. This is as a contrast 
				to both additional components such as headings, images, charts, footnotes etc. 
				on each page, and also the pages of front matter that form the introduction to 
				a book. #{pf}",
    	subtitle: "My great service #{pf}",
    	image: "https://via.placeholder.com/600x400",
    	thumb_image: "https://via.placeholder.com/350x150"
	)
end

puts "9 porfolios created"

