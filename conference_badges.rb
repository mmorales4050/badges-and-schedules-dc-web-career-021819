def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_list)
  badge_list = []
  name_list.each do |name|
    badge_list << badge_maker(name)
  end
  badge_list
end

def assign_rooms(name_list)
  room_list = []
  name_list.each_with_index do |name, index|
    room_list << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  room_list
end

def printer(name_list)
  batch_badge_creator(name_list).each do |name|
    puts name
  end
  assign_rooms(name_list).each do |room|
    puts room
  end
end
