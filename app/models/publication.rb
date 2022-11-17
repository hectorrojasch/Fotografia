class Publication < ApplicationRecord
  validates :name, :deit, :comment, presence: true
  belongs_to :tag
end
