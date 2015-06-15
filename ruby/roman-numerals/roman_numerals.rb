module RomanNumerable

  ROMAN_NUMERABLE_MAPPING = {
       1 => 'I',
       5 => 'V',
      10 => 'X',
      50 => 'L',
     100 => 'C',
     500 => 'D',
    1000 => 'M'
  }

  def to_roman
    self.to_s.split('').each do |n|
      convert_num(n)
    end
  end


  def convert_num(num)
    
    case num.to_i
      when 1
        return 'I'
      end
    end
    
  end


end

class Integer
  include RomanNumerable
end
