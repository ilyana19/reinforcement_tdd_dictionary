class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    # if entry.is_a?(Hash)
    #   @entries.merge!(entry)
    # else
    #   @entries.merge!({entry => nil})
    # end

    entry.is_a?(Hash) ? @entries.merge!(entry) : @entries.merge!({entry => nil})
  end

  def keywords
    @entries.keys.sort
  end

  def find(entry)
    @entries.select do |key, value|
      key.include?(entry)
    end
  end

  def include?(entry)
    @entries.has_key?(entry)
  end
end