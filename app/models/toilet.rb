class Toilet < ActiveRecord::Base
  belongs_to :building
  has_many :rooms, dependent: :destroy
end
