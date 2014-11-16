require 'faraday'
require 'faker'
require 'active_support/all'

conn = Faraday.new(:url => 'http://localhost:3000')

10.times do

  city = ["Houston, TX", "Katy, TX", "Pearland, TX", "Woodlands, TX", "Sugar Land, TX", "Baytown, TX"].sample

  pizza_joint_name = [Faker::Company.name, "Pizza"].join(" ")

  response = conn.post do |req|
    req.url '/api/pizza_joints'
    req.headers['Content-Type'] = 'application/json'
    req.body = {
      pizza_joint: {
        name: pizza_joint_name,
        city: city
      }
    }.deep_stringify_keys.to_json
  end

end
