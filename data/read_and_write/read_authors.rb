require 'json'

module ReadAuthors
  def read_authors
    return [] unless File.exist?('./json_files/authors.json') && !File.empty?('./json_files/authors.json')

    json = File.read('./json_files/authors.json')
    parsed = JSON.parse(json)
    array = []
    parsed.each do |auth|
      author_new = Author.new(auth['author'].split(', ')[1], auth['author'].split(', ')[0])
      array << author_new
    end
    array
  end
end
