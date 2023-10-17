class Suica
  
  def initialize
    @deposit = 500
  end

  def deposit
    @deposit
  end
  
  def charge=(deposit)
    if deposit > 100
      @deposit = deposit
    else
      puts "例外"
    end
  end

  def deposit=(deposit)
    @deposit = deposit
  end


end
