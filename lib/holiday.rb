require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]


end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday1, values|
        values << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday1, values|
        if holiday1 == :memorial_day
          values << supply 
        end
      end
    end
  end
  holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season]= {}
  holiday_hash[season][holiday_name]=supply_array

  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  answers = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supply|
        supply.each do |supply|
          answers << supply
        end
      end
    end
  end
  answers
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  string = ""
  holiday_hash.each do |season, holiday|
    puts symbol_converter(season) + ":"
    holiday.each do |holiday_name, supply|
      puts "  " + symbol_converter(holiday_name) + ": " + supply.join(", ")
    end
  end
string 

end

def symbol_converter(symbol)
  capitalized_array = []
  capitalized_string = ""
  returned_string = ""
  #covert symbol to string
  symbol_as_string = symbol.to_s
  #split at _
  word_array = symbol_as_string.split("_")
  #capatolize each word
  word_array.each do |word|
    capitalized_array << word.capitalize
  end
  capitalized_string = capitalized_array.join(" ")
  #join into string with space seperating
  #return string 
  capitalized_string
end

puts symbol_converter(:new_years)


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  answer = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      supply.each do |supply|
        if supply == "BBQ"
          answer << holiday
        end
      end
    end
  end
  answer

end







