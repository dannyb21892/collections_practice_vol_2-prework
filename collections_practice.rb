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
  out = []
  index = 0
  while array.size > 0
    out << {}
    found = array.find_all {|i| i == array[0] }
    out[index][:count] = found.size
    out[index][array[0].keys[0]] = array[0].values[0]
    if found.size == array.size
      array = []
    else
      array.delete(array[0])
    end
    index += 1
  end
  out
end

def merge_data(keys, data)
  out = []
  i=0
  puts keys.length
  while i < keys.length
    out << {}
    
    keys[i].each do |title, name|
      out[i][title] = name
    end
    
    puts "{data[i]}"
    data[i].each do |datum, about|
      puts "check"
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

keys =     [
           {
            :first_name => "blake"
        },
           {
            :first_name => "ashley"
        }
    ]
data =     [
           {
             "blake" => {
                :awesomeness => 10,
                     :height => "74",
                  :last_name => "johnson"
            },
            "ashley" => {
                :awesomeness => 9,
                     :height => 60,
                  :last_name => "dubs"
            }
        }
    ]
merge_data(keys,data)