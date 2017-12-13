class Car
  attr_accessor :reg_no, :colour

  def initialize(reg_no, colour)
    @reg_no = reg_no
    @colour = colour
  end

  def having_reg_no?(reg_number)
    reg_no == reg_number
  end

  def having_colour?(colour_name)
    colour.downcase == colour_name.downcase
  end

  def self.colours
    ['Red', 'White', 'Black']
  end
end
