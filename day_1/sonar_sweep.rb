class SonarSweep
  class << self
    def count_increase(input)
      new(input).count_increase
    end

    def count_3_increase(input)
      new(input).count_3_increase
    end
  end

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def count_increase
    size = input.size - 2

    (0..size).count { |i| input[i] < input[i + 1] }
  end

  def count_3_increase
    size = input.size - 4

    (0..size).count { |i| input[i, 3].sum < input[i + 1, 3].sum }
  end
end
