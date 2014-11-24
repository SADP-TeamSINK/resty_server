class Building < ActiveRecord::Base
  has_many :toilets, dependent: :destroy
end
