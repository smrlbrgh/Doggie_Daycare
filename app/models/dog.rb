class Dog < ActiveRecord::Base
  belongs_to :owner
  belongs_to :breed
  belongs_to :vet
end
