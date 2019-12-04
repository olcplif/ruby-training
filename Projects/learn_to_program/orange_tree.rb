
class OrangeTree

  def initialize
    @age = 0 # вік дерева
    @height = 0 # висота дерева
    @fruiting = false # чи плодоносить дерево
    @orangeCount = 0 # Кількість апельсинів, які вродили
    puts 'Почало рости нове Апельсинове дерево!'
  end

  def height
    puts 'Тепер дерево має висоту ' + @height.to_s + ' метри.'
  end

  def oneYearPasses
    @orangeCount = 0
    puts 'Минув ' + (@age += 1).to_s + ' рік.'
    @height += 1
    if @age >= 3
      @orangeCount += (@age * rand(2..4))
    end
    if @age > 19 # Коли дереву більше 20 років воно всихає
      puts 'Нажаль, дерево зістарілося і всохло...'
      exit
    end
  end

  def countTheOranges # Рахує кількість апельсинів
      puts 'Тепер на дереві росте ' + @orangeCount.to_s + ' апельсинів.'
  end

  def pickAnOrange # Збирання апельсинів
    if @orangeCount > 0
      @orangeCount -= 1
      puts 'Цей зірваний апельсин був дуже смачний!'
    else
      puts 'Апельсинів для збору цього року немає.'
    end
  end

end

orangeTree = OrangeTree.new
orangeTree.height
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
orangeTree.oneYearPasses
orangeTree.height
orangeTree.countTheOranges
orangeTree.pickAnOrange
orangeTree.countTheOranges
orangeTree.pickAnOrange
orangeTree.pickAnOrange
orangeTree.countTheOranges
orangeTree.pickAnOrange
orangeTree.pickAnOrange
orangeTree.countTheOranges
orangeTree.pickAnOrange
orangeTree.pickAnOrange
orangeTree.countTheOranges
orangeTree.oneYearPasses
orangeTree.countTheOranges
orangeTree.height
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.height
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.countTheOranges
orangeTree.pickAnOrange
orangeTree.pickAnOrange
orangeTree.pickAnOrange
orangeTree.pickAnOrange
orangeTree.pickAnOrange
orangeTree.pickAnOrange
orangeTree.countTheOranges
orangeTree.oneYearPasses
orangeTree.countTheOranges
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.countTheOranges
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
orangeTree.oneYearPasses
