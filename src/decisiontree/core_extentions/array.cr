class Array(T)
    
  def classification
    collect(&:last)
  end

  # calculate information entropy
  def entropy
    return 0 if empty?

    info = {} of String => Int32
    each do |i|
      info[i] = !info[i] ? 1 : (info[i] + 1)
    end

    result(info, length)
  end
  
  def inject (accumulator = 0, &block)
    each do |item|
      accumulator = block.call(accumulator, item)
    end
    accumulator
  end

  private def result(info, total)
    final = 0
    info.each do |_symbol, count|
      next unless count > 0
      percentage = count.to_f / total
      final += -percentage * Math.log(percentage) / Math.log(2.0)
    end
    final
  end
end