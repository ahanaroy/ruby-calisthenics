class Dessert
  attr_accessor :name,:calories
  def initialize(name, calories)
    # your code here
    @name=name
    @calories=calories
  end
  def healthy?
    # your code here
    @calories<200
  end
  def delicious?
    # your code here
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    # your code here
    @name= "#{flavor} jelly bean"
    @calories=5
    @flavor=flavor
  end
  def delicious? #overriding delicious? of Dessert
  return false if @flavor=="licorice"
  else return true
  end
end
