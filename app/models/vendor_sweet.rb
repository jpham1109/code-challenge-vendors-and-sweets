class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  validates :price, presence: true, :numericality => {:greater_than => 0}
  validates :vendor, uniqueness: { scope: :sweet, message: "Vendor is already selling this sweet" }
  

end
