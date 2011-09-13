module Zodiac
  module Finder
    YEAR = 2012
    
    def self.date_for(month, day)
      DateTime.new(YEAR, month, day)
    end
    
    def self.range_for(month_start, day_start, month_end, day_end)
      SimpleRange.new(date_for(month_start, day_start), date_for(month_end, day_end))
    end
    
    RANGES = {
      range_for(1,  1,  1,  19) => :capricorn,
      range_for(1,  20, 2,  18) => :aquarius,
      range_for(2,  19, 3,  20) => :pisces,
      range_for(3,  21, 4,  19) => :aries,
      range_for(4,  20, 5,  20) => :taurus,
      range_for(5,  21, 6,  21) => :gemini,
      range_for(6,  22, 7,  22) => :cancer,
      range_for(7,  23, 8,  22) => :leo,
      range_for(8,  23, 9,  22) => :virgo,
      range_for(9,  23, 10, 23) => :libra,
      range_for(10, 24, 11, 21) => :scorpio,
      range_for(11, 22, 12, 21) => :sagittarius,
      range_for(12, 22, 12, 31) => :capricorn
    }
    
    def self.sign_for(date)
      RANGES.each do |range, sign|
        if range.days.include? date_for(date[:month], date[:day])
          return I18n.t!("zodiac.#{sign}")
        end
      end
      raise ArgumentError
    end
  end
end
