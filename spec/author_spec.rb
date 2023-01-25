require 'spec_helper'

describe Author do
  before (:each) do
    @author = Author.new('John', 'Doe')
  end

  describe "#new" do
    it "returns an author object with two parameters" do
      expect(@author).to be_an_instance_of(Author)
    end
  end

  describe "#first_name" do
    it "returns the correct first name" do
      expect(@author.first_name).to eq('John')
    end
  end

  describe "#last_name" do
    it "returns the correct last name" do
      expect(@author.last_name).to eq('Doe')
    end
  end

  
  describe "#adding an item" do
    it "adds correctly to the items instance variable" do
      item = instance_double("Book")
      allow(item).to receive(:author=)
      @author.add_item(item)
      expect(@author.items).to include(item)
      expect(item).to have_received(:author=)
    end
  end
end