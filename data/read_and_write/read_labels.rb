require 'json'

module ReadLabels
  def read_labels
    return [] unless File.exist?('./json_files/labels.json') && !File.empty?('./json_files/labels.json')

    json = File.read('./json_files/labels.json')
    parsed = JSON.parse(json)
    array = []
    parsed.each do |lab|
      new_label = Label.new(lab['title'], lab['color'])
      array << new_label
    end
    array
  end
end
