require_relative 'input'
require_relative 'sonar_sweep'

input = Input.new.read
puts SonarSweep.count_increase(input)
puts SonarSweep.count_3_increase(input)