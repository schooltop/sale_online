xml.instruct!
xml.news do
      xml.id @news.id
      xml.group @news.newsgroup.name rescue nil
      xml.name @news.name
      xml.text @news.text
end
