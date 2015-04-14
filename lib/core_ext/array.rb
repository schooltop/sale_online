

class Array
  def to_hash
    unless size%2 == 0
      nil
    end
     hash = Hash.new
     0.step(size-1,2) {|x| hash[self[x]] = self[x+1] }
    hash
   end
end

