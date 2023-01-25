require 'json'

module WriteLabels
  def write_labels
    return if @labels.empty?

    json = JSON.pretty_generate(@labels.map do |label|
      {
        title: label.title,
        color: label.color
      }
    end)
    File.write('./json_files/labels.json', json)

    puts 'Labels saved to file successfully!'
  end
end
