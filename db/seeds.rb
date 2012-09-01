# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(:title => 'Programming Ruby 1.9',
               :description =>
               %{<p>
                  Ruby is the fastest growing and most exciting dynamic language
                  out there. If you need to get working programs delivered fast,
                  you should add Ruby to your toolbox.
                </p>},
               :image_url => '/images/ruby.jpg',
               :price => 49.50)

Product.create(:title => 'Web Design for Developers',
               :description =>
               %{<p>
                  Web Design Developers will show you how to make your website
                  user friendly.
                </p>},
               :image_url => '/images/wd4d.jpg',
               :price => 42.95)

Product.create(:title => 'Ruby Testing Prescripting',
               :description =>
               %{<p>
                  Ruby Testing Prescripting is a exciting book for rubyist.
                </p>},
               :image_url => '/images/rtp.jpg',
               :price => 29.95)
