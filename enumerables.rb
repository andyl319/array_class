
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

  

end
