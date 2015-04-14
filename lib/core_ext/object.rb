class Object
  def try_rescue(method, *args, &block)
    try(method, *args, &block)
  rescue
    nil
  end
end