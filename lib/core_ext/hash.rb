

class Hash
  def to_params
       s = ""
       self.each {|k,v|  s += k.to_s+"="+v.to_s+(s.split("&").size < self.size-1 ? "&" : "")}
       s
   end
end

