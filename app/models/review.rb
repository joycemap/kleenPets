class Review < ApplicationRecord
         belongs_to :listing
         belongs_to :customer
end