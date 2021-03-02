class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def average_price
        self.vendor_sweets.sum {|vs| vs.price} / self.vendor_sweets.size.to_f
    end

    # def self.average_vendor_price
    #    average_price / Vendor.all.size
    # end

end
