
class NilClass

  def true?
    false
  end

  def false?
    false
  end

  def try_rescue(*args)
    self
  end
  
  def to_s
    ""
  end
end

