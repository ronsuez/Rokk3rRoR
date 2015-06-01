class StoreController < ApplicationController
  def index
  	 @header= "Rokk3r Store"
  	 @clothing_types = ClothingType.all
  	 @brands = Brand.all
  end

  def search
     @query = params[:q]
     

     @query_strings = params[:q].scan(/\w+/)

     result = []

     puts @query_strings

     clothing_types = ClothingType.all
     brands = Brand.all

     @query_strings.each do |query|
        flag = false

        clothing_types.each do  |clothing_type|
          match = clothing_type.name.scan(/#{query}/)
          if (match.any?)
            puts match.to_s
            result << ("<i>" + query + "</i>").html_safe
            flag = true
          end
        end

       brands.each do |brand|
            match = brand.name.scan(/#{query}/)
            if (match.any?)
              puts match.to_s
              result << ("<b>" + query + "</b>").html_safe
              flag = true
           end
       end

      if(!flag)
        result << query
      end
       puts '------'
     end
     @results = result

  end
end
