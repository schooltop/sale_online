class String

  def wrap(prefix, suffix = prefix)
    prefix + self + suffix #为字符串添加前后缀  默认前后一样
  end
  
  
  def to_hash
    h = {}
    self.delete("{}").split(",").each {|auth_param|   h[auth_param.split(":")[0].delete("\"")] = auth_param.split(":")[1].delete("\"")}
    h  
  end

  def digitize
    gsub(/[^\d]/, "")  # 查找出里面所有的数字
  end


  def to_url
    self.match(/^https?:\/\//) ? self : "http://" << self #生成url的形式
  end

#  def short_string(str,num=20) #当一段文字比较长时我们可以根据需要的长度截取字符串 并返回该串的这个长度作为简介……
#       (str.size > num || str.size == num) ? (str[0,num]+"......") : str
#  end
  
  def true?
    self == "true"
  end


  def false?
    self == "false"
  end


  def name
    self
  end

end

