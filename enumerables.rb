
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

  def my_flatten

    arr = []
    self.my_each do |x|

      if(x.class == Array)
        arr.concat(x.my_flatten)
      else
        arr.push(x)
      end

    end
    arr
  end

  def my_zip(*arr)
    result = []
    self.each_index do |i|
      result.push([self[i]])
      arr.each do |array|
        result[i].push(array[i])
      end
    end
    result
  end

  def my_rotate(num = 1)
    arr = self.dup

    if num > 0
      num.times { arr.push(arr.shift) }
    else
      (num * -1).times { arr.unshift(arr.pop) }
    end
    arr
  end

  


end
