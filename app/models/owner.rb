class Owner < ActiveRecord::Base
  has_many :dogs
  belongs_to :state
end
