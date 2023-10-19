class Suica
  def initialize
    @deposit = 500
  end


  def deposit
    @deposit
  end


  def charge=(deposit)
    if deposit > 100
      @deposit = @deposit + deposit
    else
      raise "最低金額以下です"
    end
  end


  def deposit=(deposit)
    @deposit = deposit
  end

end

