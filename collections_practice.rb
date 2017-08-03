# your code goes here
def first_wa(array)
  array.find do |value|
    value[0..1] == "wa"
  end
end

def begins_with_r(array)
  array.each{ |value|
   if value[0] != "r"
      return false
    end
  }
  return true
end

def contain_a(array)
  array.select do |value|
    value.include?("a")
  end
end

def remove_non_strings(array)
  array.select do |val|
    val.is_a? String
  end
end

def count_elements(array)
  arrayWithCount = []
array.each do |val|
  valueCount = array.count(val)
  val[:count] = valueCount
  arrayWithCount << val
  array.delete(val)
  end
return arrayWithCount
end

def merge_data(keys, data)
  newArray = []
  data.each do |name, about|
    #about.merge(keys)
    name.each do |key, value|
      keys.each do |totalNewPeople|
        totalNewPeople.each do |key2, val|
        if val == key
          newArray.push(totalNewPeople.merge(value))
        end
      end
      end
    end
  end
  return newArray
end

def find_cool(arrayOfHash)
  array = []
  arrayOfHash.each do |items|
    items.each do |key, value|
      if value == "cool"
        array.push(items)
        return array
    #items.has_value?("cool")
  end
  end
end
end

def organize_schools(schools)
  arrayNYC = []
  arrayChi = []
  arraySF = []
  #puts schools
  schools.each do |camp, place|
    city = place.fetch(:location)
    case city
    when "NYC"
      arrayNYC.push(camp)
    when "SF"
      arraySF.push(camp)
    when "Chicago"
      arrayChi.push(camp)
    end

  end
schoolsReturned = {"NYC" => arrayNYC, "SF" => arraySF, "Chicago" => arrayChi}
return schoolsReturned
end
