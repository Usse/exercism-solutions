class Hamming
  def self.compute(first,second)
    distance = 0

    for i in 0..first.length - 1
      if first[i] != second[i]
        distance+=1
      end
    end

    return distance
  end
end



