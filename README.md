# Rokk3rRoR
Rokk3rTest written on RoR

## Search Function


    def search
         @query = params[:q]
         @query_strings = params[:q].scan(/\w+/)

         result = []
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
    end