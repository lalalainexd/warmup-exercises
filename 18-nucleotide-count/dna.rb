class DNA

  attr_reader :dna_string

  def initialize dna_string
    @dna_string = dna_string

  end

  def count letter
    nucleotide_counts[letter]
  end

  def nucleotide_counts
    nucleotides.each_with_object({}) do |nucleotide, counts|
      counts[nucleotide] = dna_string.count(nucleotide)
    end

  end

  def nucleotides
    %w{A C T G}
  end

end
