class Product < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  has_attached_file :image,
    :styles => {
      :medium => "300x300>",
      :thumb => "100x100>" },
    :default_url => "missing_product_:style.png",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment_content_type :image,
    :content_type => /\Aimage\/.*\Z/

  private
  #Ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        error.add(:base, 'Line Items Present.')
        return false
      end
    end
end
