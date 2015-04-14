xml.instruct!
@ps = @productions if @productions
xml.productions do
  @ps.each do |p|
	  xml.production do
		xml.id 					p.id
		xml.title 				p.title
		xml.price 				p.price
		xml.seller 				p.company rescue nil
		xml.first_picture       website_url + p.first_picture
		xml.description       	p.description
	  end if p
  end
end
