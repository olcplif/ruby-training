
class OrangeTree

  def initialize
    @age = 0
    @height = 0
    @fruiting = false
    @orangeCount = 0
    puts 'Почало рости нове Апельсинове дерево!'
  end

  def height
    puts 'Тепер дерево має висоту ' + @height.to_s + ' метри'
  end

  def oneYearPasses
    @orangeCount = 0
    @age += 1
    @height += 1
    if @age > 20
      puts 'Нажаль, дерево зістарілося і всохло...'
      exit
    end
    if @age >= 3
      @fruiting = true
      countTheOranges
    end
    puts ''
  end

  def countTheOranges # Рахує кількість апельсинів
    if @fruiting == true # Можливо ця умова зайва
      @orangeCount += (2 * @age)
      puts 'Цього року на дереві виросло ' + @orangeCount.to_s + '  апельсинів!'
    end
  end

  def pickAnOrange
    @orangeCount -= 1
    if @orangeCount > 0
      puts 'Цей зірваний апельсин був дуже смачний!'
    else
      puts 'Цього року, нажаль, вже всі апельсини зібрані'
  end

end
end

orangeTree = OrangeTree.new
orangeTree.height
orangeTree.oneYearPasses
orangeTree.height
orangeTree.countTheOranges
orangeTree.pickAnOrange
orangeTree.countTheOranges
orangeTree.oneYearPasses
orangeTree.height
orangeTree.countTheOranges
orangeTree.pickAnOrange
orangeTree.countTheOranges
orangeTree.oneYearPasses
orangeTree.height
orangeTree.countTheOranges
orangeTree.pickAnOrange
orangeTree.countTheOranges
