# your code goes here
def begins_with_r(array)
  out = true
  array.each do |x|
    out = out && x[0]=="r"
  end
  out
end

def contain_a(array)
  out = []
  array.each do |x|
    if x.include?("a")
      out << x
    end
  end
  out
end

def first_wa(array)
  array.each do |x|
    if x.instance_of?(String)
      if x.include?("wa")
        return x
      end
    end
  end
end

def remove_non_strings(array)
  out = []
  array.each do |x|
   if x.instance_of?(String)
     out << x
   end
  end
  out
end

def count_elements(array)
  temp = array
  out = []
  index = 0
  while temp.length > 0
    out << {}
    out[index][:count] = temp.find(temp[0]).length
    temp = temp.delete(element)
  end
end

def merge_data(keys, data)
  out = []
  puts data
  i=0
  
  while i < keys.length
    out << {}
    
    keys[i].each do |title, name|
      out[i][title] = name
    end
    
    data[i].each do |datum, about|
      about.each do |stat, val|
        out[i][stat] = val
      end
    end
    i += 1
  end
end

def find_cool(cool)
end

def organize_schools(schools)
end