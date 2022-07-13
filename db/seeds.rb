3.times do |topic|
	Topic.create!(
		title: "PHP Topic"
	)
end

puts "3 topics created"

10.times do |blog|
	Blog.create!(
		title: "my Blog #{blog}",
		body: "Hello world, this is my blog body #{blog}",
		topic_id: Topic.last.id
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


8.times do |pf|
	Portfolio.create!(
		title: "Portfolio #{pf}",
		body: "The body text or body copy is the text forming the main content of a book, 
				magazine, web page, or any other printed or digital work. This is as a contrast 
				to both additional components such as headings, images, charts, footnotes etc. 
				on each page, and also the pages of front matter that form the introduction to 
				a book. #{pf}",
    	subtitle: "Ruby On Rails",
    	image: "https://via.placeholder.com/600x400",
    	thumb_image: "https://via.placeholder.com/350x150"
	)
end

1.times do |pf|
	Portfolio.create!(
		title: "Portfolio #{pf}",
		body: "The body text or body copy is the text forming the main content of a book, 
				magazine, web page, or any other printed or digital work. This is as a contrast 
				to both additional components such as headings, images, charts, footnotes etc. 
				on each page, and also the pages of front matter that form the introduction to 
				a book. #{pf}",
    	subtitle: "PHP",
    	image: "https://via.placeholder.com/600x400",
    	thumb_image: "https://via.placeholder.com/350x150"
	)
end

puts "8 new porfolios created"

3.times do |tech|
	Technology.create!(
		name:"Technology #{tech}",
		portfolio_id: Portfolio.last.id
	)
end

puts "3 new Technologies created"

