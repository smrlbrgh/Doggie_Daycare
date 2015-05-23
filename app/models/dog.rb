class Dog < ActiveRecord::Base
  belongs_to :owner
  belongs_to :breed


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
 validates_attachment_content_type :avatar, :content_type =>/\Aimage\/.*\Z/
 validates :name, :breed_id, :dob, :vet, :owner_id, presence: true

end
