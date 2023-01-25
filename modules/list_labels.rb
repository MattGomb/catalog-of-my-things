module ListLabels
  def list_labels
    @labels.each_with_index do |label, index|
      puts " Label #{index + 1}
            - Title: #{label.title}
            - Color: #{label.color}"
    end
  end
end
