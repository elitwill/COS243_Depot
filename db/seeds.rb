# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.delete_all
#...
Product.create!(title: 'Design and Build Great Web APIs',
    description: 
        %{<p>
          <em>Robust, Reliable, and Resilient</em>
          APIs are transforming the business world at an increasing pace. Gain
          the essential skills needed to quickly desing, build, and deploy
          quality APIs that are robust, reliable, and resilient. Go from 
          initial design through prototyping and implementation to deployment of 
          mission-critical APIs for your organization. Test, secure, and deploy
          you API with confidence and aviod the "release into production" 
          panic. Tackle just about any API cahllenge with more than a dozen 
          open-source utilities and common programming patterns you can apply 
          right away.
        </p>},
    image_url: 'maapis.jpg',
    price: 24.95)
#...
