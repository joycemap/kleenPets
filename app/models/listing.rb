class Listing < ApplicationRecord
    belongs_to :user
# http://www.ryanmcmahon.org/articles/11
    include PgSearch
  pg_search_scope :search_listings, :against => [:name, :address, :postal_code],
    using: {
      :tsearch => {:prefix => true}
    }

end
