class String
  define_method(:clock_angle) do
    result = []
    time_input = self.to_i()
    hour_degree = (time_input * 30) + (self.to_f.-(time_input) * 30)
    min_degree = (self.to_f.-(time_input) * 12) * 30
    hands_difference = hour_degree - min_degree
    if hands_difference < 0
      hands_difference = hands_difference * -1
    else
      hands_difference
    end
    result.push(hour_degree, min_degree, hands_difference)
  end
end
