class VendorSweetsController < ApplicationController

    def index
        @vendor_sweets = VendorSweet.all
    end 

    def new 
        @errors = flash[:errors]
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all
    end 

    def create 
        new_vendor_sweet = VendorSweet.create(vendor_sweet_params)
        
        if new_vendor_sweet.valid?
            redirect_to vendor_path(new_vendor_sweet.vendor)
        else 
            flash[:errors] = new_vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path
        end
    end 

    def show 
        @vendor_sweet = VendorSweet.find(params[:id])
    end 

    private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
    end 
    
end
