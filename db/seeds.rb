# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post ##{blog + 1}",
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec ligula euismod, ultricies eros nec, luctus nunc. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi.'
  )
end

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill + 1}",
    percent_utilized: 15
  )
end

9.times do |portfolio_item|
  Porfolio.create!(
    title: "Portfolio title ##{portfolio_item + 1}",
    subtitle: 'Ruby on Rails',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec ligula euismod, ultricies eros nec, luctus nunc. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi. Nulla facilisi.',
    main_image: 'http://placehold.it/600x400',
    thumb_image: 'http://placehold.it/350x200'
  )
end

puts 'created db items'
