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
Product.create!(title: 'Docker for Rails Developers',
    description: 
        %{<p>
          <em>Build, Ship, and Run Your Applications Everywhere </em> Docker 
          does for DevOps what Rails did for web development-it gives you a 
          new set of superpowers. Gone are "works on my machine" woes and 
          lengthy setup tasks, replaced instead by a simple, consistent, 
          Docker-based development environment that will have your team up 
          and running in seconds.
        </p>},
    image_url: 'ridocker.jpg',
    price: 19.95)
#...
Product.create!(title: 'Modern CSS with Tailwind',
    description: 
        %{<p>
          <em>Flexible Styling Without the Fuss</em> Tailwind CSS is an 
          exciting new CSS framework that allows you to design your site by 
          composing simple utility classes to create complex effects. With 
          Tailwind, you can style your text, move your items on the page, 
          design complex page layouts, and adapt your design for devices from 
          a phone to a wide-screen monitor. With this book, you'll learn how 
          to use the Tailwind for its flexibility and its consistency, from the 
          smallest detail of your typography to the entire design of your site.
        </p>},
    image_url: 'tailwind.jpg',
    price: 18.95)
#...