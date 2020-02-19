class Listing < ApplicationRecord
    belongs_to :user
# http://www.ryanmcmahon.org/articles/11
    include PgSearch::Model
  pg_search_scope :search_by_listings, :against => [:name, :address, :postal_code, :email, :description],
    using: {
      :tsearch => {:prefix => true}
    }
    has_many :reviews
end