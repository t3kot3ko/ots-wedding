class Album < ApplicationRecord
  belongs_to :party
	has_many :photos
end
