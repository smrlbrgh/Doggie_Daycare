class Owner < ActiveRecord::Base
  has_many :dogs
  belongs_to :usstate

  def last_first
    "#{last_name}, #{first_name}"
  end
end
