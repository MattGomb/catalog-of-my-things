module ListAuthors
  def list_authors
    @authors.each_with_index do |author, index|
      puts " Author #{index + 1}:
        - #{author.last_name}, #{author.first_name}"
    end
  end
end
