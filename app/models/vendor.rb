class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def average_price
        if self.vendor_sweets.size > 0
        average = self.vendor_sweets.sum {|vs| vs.price}.to_f / self.vendor_sweets.size
        average.round(2)
        else
        0
        end
    end

    def self.average_vendor_price
        if self.all.count > 0
          self.all.sum{|vendor| vendor.average_price} / self.all.size
        end
    end

end
