class Point < ActiveRecord::Base
  geocoded_by :city,  :latitude => :lat, :longitude => :lng
  after_validation :geocode
end
