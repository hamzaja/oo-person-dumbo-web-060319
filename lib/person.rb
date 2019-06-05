require 'pry'
class Person
  attr_reader  :name, :bank_account, :happiness, :hygiene
  attr_writer  :bank_account 
  def initialize (name)
  	@name = name
  	@bank_account = 25
  	@happiness = 8
    @hygiene = 8
  end
  def happiness=(rate)
    if rate < 0 
      @happiness = 0
    elsif rate > 10
      @happiness = 10
    else
      @happiness = rate
     
    end
  end
  def hygiene=(rate)
    if rate < 0 
      @hygiene = 0
    elsif rate > 10
      @hygiene = 10
    else
      @hygiene = rate
     
    end
  end  
  def happy?
    @happiness > 7?    true : false
  end
  def clean?
    @hygiene > 7? true : false
  end
  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end
  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.hygiene = @hygiene - 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    self.happiness += 3
    friend.happiness +=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(person ,topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
