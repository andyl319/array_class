
class Array

  def my_each(&prc)
    for x in (0..self.length - 1)
      prc.call(self[x])
    end
  end

  def my_select(&prc)
    arr = []
    self.my_each do |x|
      if (prc.call(x))
        arr << x
      end
    end
    arr
  end

  def my_reject(&prc)
    result = []

    self.my_each do |x|
      if (!prc.call(x))
        result << x
      end
    end
    result
  end

  def my_any?(&prc)
    self.my_each do |x|
      if prc.call(x)
        return true
      end
    end
    false
  end

  def my_all?(&prc)
    self.my_each do |x|
      if prc.call(x)
        next
      else
        return false
      end
    end
    true
  end

  


end
