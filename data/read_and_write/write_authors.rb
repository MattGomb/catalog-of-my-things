require 'json'

module WriteAuthors
  def write_authors
    return if @authors.empty?

    json = JSON.pretty_generate(@authors.map do |author|
      {
        author: "#{author.last_name}, #{author.first_name}"
      }
    end)
    File.write('./json_files/authors.json', json)

    puts 'Authors saved to file successfully!'
  end
end
