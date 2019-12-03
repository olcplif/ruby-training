class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10 # Він ситий.
    @stuffInIntestine = 0 # Йому необхідно погуляти

    puts @name + ' народився.'
  end

  def feed
    puts 'Ви годуєте ' + @name + '(a).'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'Ви вигулюєте ' + @name + '(а).'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'Ви вкладаєте ' + @name + '(а) спати.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' хропе, наповнюючи кімнату димом.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' повільно прокидається.'
    end
  end

  def toss
    puts 'Ви підкидаєте ' + @name + '(а) в повітря.'
    puts 'Він регоче, при цьому обпалює вам брови.'
    passageOfTime
  end

  def rock
    puts 'Ви ніжно вколихуєте' + @name + '(a).'
    @asleep = true
    puts 'Він швидко задрімує...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '... але просинається, як тільки ви перестаєте колихати.'
    end
  end

  private # Означає, що визначені тут методи є внутрішніми методами даного об'єкта
  # Тобто можна годувати дракона, але не можна його запитати чи він голодний.

  def hungry? # голодний?
    # Імена методів можуть закінчуватися знаком ?
    # Як правило, так називають методи, які можуть повертати лише true або false
    @stuffInBelly <= 2
  end

  def poopy? # Йой, хтось пукає?
    @stuffInIntestine >= 8
  end

  def passageOfTime # Минає деякий час
    if @stuffInBelly > 0
      # Перемістити їжу із шлунка в кишечник.
      @stuffInBelly = @stuffInBelly - 1
      @StuffInIntestine = @stuffInIntestine + 1
    else # Наш дракон страждає від голоду!
      if @asleep
        @asleep = false
        puts 'Він раптово прокидається!'
      end
      puts @name + ' проголодався! Доведений до крайнощів, він з\'їдає ВАС!'
      exit #Цим методом виходимо із програми.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Опаньки! ' + @name + ' зробив не добре...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'Він раптово просинається!'
      end
      puts 'В шлунку у ' + @name + ' (а) бурчить...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'Він раптово прокидається!'
      end
      puts @name + ' підпригує, тому що хоче на горщик...'
    end
  end

end

pet = Dragon.new "Уілл"
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.feed
pet.putToBed
pet.putToBed
pet.putToBed
