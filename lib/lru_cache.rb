class LRUCache

  def initialize(size)
    @cache = Array.new
    @size = size
  end

  def count
    # returns number of elements currently in cache
    @cache.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @cache.include?(el)
      @cache.delete(el)
    elsif count == @size
      @cache.shift
    end
    @cache.push(el)
  end

  def show
    # shows the items in the cache, with the LRU item first
    puts "#{@cache}"
  end

end