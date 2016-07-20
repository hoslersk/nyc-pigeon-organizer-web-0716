#require 'pry'

#pigeon_data = {
#        :color => {
#          :purple => ["Theo", "Peter Jr.", "Lucky"],
#          :grey => ["Theo", "Peter Jr.", "Ms. K"],
#          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#          :brown => ["Queenie", "Alex"]
#        },
#        :gender => {
#          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#          :female => ["Queenie", "Ms. K"]
#        },
#        :lives => {
#          "Subway" => ["Theo", "Queenie"],
#          "Central Park" => ["Alex", "Ms. K", "Lucky"],
#          "Library" => ["Peter Jr."],
#          "City Hall" => ["Andrew"]
#        }
#      }

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_hash = {}

  data.each do |trait, details|
    details.each do |detail, array|
      array.each do |name|
        if pigeon_hash.keys.include?(name)
          if pigeon_hash[name][trait] #pigeon_hash.keys.include?(trait)
            pigeon_hash[name][trait] << detail.to_s
          else
            pigeon_hash[name][trait] = []
            #pigeon_hash[name][trait] = [detail.to_s]
            pigeon_hash[name][trait] << detail.to_s
          end
        else
          pigeon_hash[name] = {}
          pigeon_hash[name][trait] = []
          #pigeon_hash[name][trait] = [detail.to_s]
          pigeon_hash[name][trait] << detail.to_s
        end
      end
    end
  end
  return pigeon_hash
end

#nyc_pigeon_organizer(pigeon_data)
