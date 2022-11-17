class Tag < ApplicationRecord
	has_many :publications, dependent: :destroy
	validates :name, presence: true
end
