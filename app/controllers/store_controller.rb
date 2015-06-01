class StoreController < ApplicationController
  def index
  	 @header= "Rokk3r Store"
  	 @clothing_types = ClothingType.all
  	 @brands = Brand.all
  end

  def search
     @query = params[:q]
     


     result = []
     clothing_types = ClothingType.all
     clothing_types.each do |clothing_type|
     	  result << clothing_type.name
     end

     @results = result
     #brands = Brand.all

  end
end
