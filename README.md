# Rokk3rRoR
Rokk3rTest written on RoR

## Database
https://raw.githubusercontent.com/ronsuez/Rokk3rRoR/master/db/development.sql
## Search Function
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
    
## Snapshots
![home]
(https://raw.githubusercontent.com/ronsuez/Rokk3rRoR/master/snapshots/home.png)
    
![search]
(https://raw.githubusercontent.com/ronsuez/Rokk3rRoR/master/snapshots/search_2.png)
    
