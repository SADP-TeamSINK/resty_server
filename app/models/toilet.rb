class Toilet < ActiveRecord::Base
  belongs_to :building
  has_many :rooms, dependent: :destroy
  has_many :toilet_pictures, dependent: :destroy
end
