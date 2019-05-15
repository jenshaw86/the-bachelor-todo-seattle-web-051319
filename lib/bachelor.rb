require "pry"

def get_first_name_of_season_winner(data, season)
  winner = data[season].find do |contestant|
    contestant["status"] == "Winner"
  end
  first_name = winner["name"].split(" ").first
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestant = contestants.find {|person| person.has_value?(occupation)}
    if contestant
      return contestant["name"]
    end
  end
end

# Can I approach this differently without having to initiate a count variable?
def count_contestants_by_hometown(data, hometown)
  natives = 0
  data.each do |season, contestants|
    contestants.each do |person|
      if person.has_value?(hometown)
        natives += 1
      end
    end
  end
  natives
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestant = contestants.find {|person| person.has_value?(hometown)}
    if contestant
      return contestant["occupation"]
    end
  end
end

def get_average_age_for_season(data, season)
  season_contestants = data[season]
  ages_array = season_contestants.collect {|person| person["age"].to_i}
  num_of_ppl = ages_array.length
  total_age = total_age
  average_age = (total_age/num_of_ppl.to_f).round
end