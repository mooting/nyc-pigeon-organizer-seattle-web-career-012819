require 'pry'
def colors(data)
  data[:color]
end

def genders(data)
  data[:gender]
end

def lives(data)
  data[:lives]
end

def add_pigeons (key, value, names, pigeon_list)
  names.each do |name|
    !pigeon_list.include?(name) && pigeon_list[name] = {}
    !pigeon_list[name].include?(key) && pigeon_list[name][key] = []
    pigeon_list[name][key] << value.to_s
  end
end

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  colors(data).each { |color, names| add_pigeons(:color, color, names, pigeon_list)}
  genders(data).each { |gender, names| add_pigeons(:gender, gender, names, pigeon_list)}
  lives(data).each { |home, names| add_pigeons(:lives, home, names, pigeon_list)}
  pigeon_list
  # write your code here!
end
