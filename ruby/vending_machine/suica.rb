class Suica
  def initialize
    @deposit = 500
  end

  attr_accessor :deposit

  def charge=(deposit)
    if deposit > 100
      @deposit = deposit
    else
      raise '例外が発生しました'
    end
  end
end
