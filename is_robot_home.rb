def is_robot_home(directions)

 vertical_movement = 0
 horizontal_movement = 0

directions.each_char do |direction|
  case direction
    when 'U'
      vertical_movement += 1
    when 'D'
      vertical_movement -= 1
    when 'L'
      horizontal_movement -= 1
    when 'R'
      horizontal_movement += 1
    end
  end

  return vertical_movement == 0 && horizontal_movement == 0
end
  
puts is_robot_home("URDL") #should be true
puts is_robot_home("RRRL") #should be false
puts is_robot_home("RRLL") #should be true
puts is_robot_home("UDLL") #should be false
puts is_robot_home("UULLRRDD") #should be true
