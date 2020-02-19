class Listing < ApplicationRecord
    belongs_to :user
# http://www.ryanmcmahon.org/articles/11
#     include PgSearch
#   pg_search_scope :search_by_title_and_body, :against => [:title, :body],
#     using: {
#       :tsearch => {:prefix => true}
#     }

end
