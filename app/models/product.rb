class Product < ActiveRecord::Base
  belongs_to :category

  has_attached_file :image,
    :styles => {
      :medium => "300x300>",
      :thumb => "100x100>" },
    :default_url => "missing_product_:style.png"
  validates_attachment_content_type :image,
    :content_type => /\Aimage\/.*\Z/
end
