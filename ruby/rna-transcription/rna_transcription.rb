class Complement

  def self.of_dna(seq)
    if !seq.match /^[GCTA]+$/
      raise ArgumentError.new
    end
    seq.tr "GCTA", "CGAU"
  end

  def self.of_rna(seq)
    if !seq.match /^[CGAU]+$/
      raise ArgumentError.new
    end
    seq.tr "CGAU", "GCTA"
  end

end
