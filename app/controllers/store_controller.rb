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
     results_search = []
     clothing_types = ClothingType.all
     brands = Brand.all

     @query_strings.each do |query|
        matches = false
        found = false
        clothing_types.each do  |clothing_type|

          if(!found)
            match = clothing_type.name.downcase.scan(/#{query.downcase}/)
            if (match.any?)
              result << ("<i>" + query + "</i>").html_safe
              results_search.include?(clothing_type.name) ? nil:results_search << clothing_type.name
              matches = true
              found = true
            end
          end
        end

        found = false
        brands.each do |brand|
            if(!found)
              match = brand.name.downcase.scan(/#{query.downcase}/)
              if (match.any?)
                result << ("<b>" + query + "</b>").html_safe
                results_search.include?(brand.name) ? nil:results_search << brand.name
                matches = true
                found = true
              end
            end
       end

      if(!matches)
        result << query
      end

     end
     @results = result
     @results_search = results_search
  end
end
