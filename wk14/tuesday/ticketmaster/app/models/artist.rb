class Artist < ActiveRecord::Base
  has_many :albums, dependent: :destroy
  has_many :gigs
  # so we can lookup Artist.Venue
  # same as has_many( :venues, { through: :gigs } )
  has_many :venues, through: :gigs
end
