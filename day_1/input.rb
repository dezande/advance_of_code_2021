class Input
  def read
    File
      .read('input.txt')
      .split("\n")
      .map(&:to_i)
  end
end
