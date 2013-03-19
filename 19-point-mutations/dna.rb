class DNA
  attr_reader :dna_strand

  def initialize(dna_strand)
    @dna_strand = dna_strand
  end

  def hamming_distance(mutation)
    distance = 0

    dna_strand.split("").each_with_index do |nucleotide, index|
      distance+= 1 if (mutation[index] != nucleotide && mutation[index])
    end

    return distance
  end



end
