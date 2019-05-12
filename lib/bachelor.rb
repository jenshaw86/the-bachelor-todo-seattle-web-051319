require "pry"
def get_first_name_of_season_winner(data, season)
  the_winner_is = ""
  
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant|
        contestant.each do |attribute, value|
          if attribute == "status" && value == "Winner"
            # binding.pry
            the_winner_is = contestant["name"].split(" ").first
          end
        end
      end
    end
  end
  the_winner_is
end

def get_contestant_name(data, occupation)
  name = ""
  
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if attribute == "occupation" && value == occupation
          # binding.pry
          name = contestant["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  natives = 0
  
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if attribute == "hometown" && value == hometown
          natives += 1
        end
      end
    end
  end
  natives
end

def get_occupation(data, hometown)
  occupation = ""
  
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if attribute == "hometown" && value == hometown
          occupation = contestant["occupation"]
          return occupation
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages_sum = 0
  num_of_contestants = 0
  
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant|
        contestant.each do |attribute, value|
          if attribute == "age"
            contestant_age = value.to_i
            ages_sum += contestant_age
            num_of_contestants += 1
          end
        end
      end
    end
  end
  average_age = age_sum/num_of_contestants
end
