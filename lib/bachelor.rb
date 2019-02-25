require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each_with_index {|x,y|
    if data[season][y]["status"] == "Winner"
      return (data[season][y]["name"].split(" "))[0]
    end
  }
end

def get_contestant_name(data, occupation)
  data.each {|x,y|
    y.each {|x|
      if x["occupation"] == occupation 
        return x["name"]
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  z = 0 
    data.each {|x,y| 
      y.each {|x|
        if x["hometown"] == hometown 
          z+=1 
        end
      }
    }
    z
end

def get_occupation(data, hometown)
  data.each {|x,y| 
    y.each {|x|
      if x["hometown"] == hometown 
        return x["occupation"]
      end
    }
  }  
end

def get_average_age_for_season(data, season)
  arr = Array.new
  data[season].each {|x|
    arr.push(data[season]["age"])
  }
  return (arr.inject(0.0) {|sum,x| sum + x})/arr.length
end
