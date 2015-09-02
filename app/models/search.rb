class Search
  def self.for(word)
    Word.where("name LIKE ?", "%#{word}%")
  end
end
