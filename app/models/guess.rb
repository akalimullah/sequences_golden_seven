class Guess < ApplicationRecord
  def guess_string
    return self.first_number.to_s + ", " + self.second_number.to_s + ", " + self.third_number.to_s
  end
end
