class Surfboard < ApplicationRecord
  has_many :surfboardbookings, dependent: :destroy
end
