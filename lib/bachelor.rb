


def get_first_name_of_season_winner(data, season)
winner = nil 
  data.collect do |seasons, info|
    if seasons == season
      info.collect do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"].split[0]
        end 
      end 
    end 
  end 
winner 
end



def get_contestant_name(data, occupation)
proflady = nil 
data.collect do |seasons, info|
  info.collect do |contestant|
    if contestant["occupation"] == occupation
      proflady = contestant["name"]
    end 
  end
end 
proflady
end

def count_contestants_by_hometown(data, hometown)
 counter = 0 
  data.collect do |seasons, info|
    info.collect do |contestants|
      if contestants["hometown"] == hometown
        counter += 1 
      end 
    end
  end 
counter
end

def get_occupation(data, hometown)
  occupation = nil 
  data.collect do |seasons, info|
    cont = info.find do |contestant| 
      contestant["hometown"] == hometown
      end 
    if !cont 
    else occupation = cont["occupation"]
    end 
  end 
occupation
end

def get_average_age_for_season(data, season)
  ages_added = 0 
  average_age = 0
  data.each do |seasons, info|
    if season == seasons
      info.each do |contestant|
         ages_added += contestant["age"].to_i
       end
     end
     average_age = (ages_added/info.length).round
     puts average_age
   end 
average_age
end
