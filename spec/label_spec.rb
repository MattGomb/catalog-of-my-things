require 'spec_helper'

require 'spec_helper'

describe Label do
  before (:each) do
    @label = Label.new('Test label', 'green')
  end

  describe '#new' do
    it 'returns a label object with one parameter' do
      expect(@label).to be_an_instance_of(Label)
    end
  end

  describe '#title' do
    it 'returns the correct title' do
      expect(@label.title).to eq('Test label')
    end
  end

  describe '#color' do
    it 'returns the correct color' do
      expect(@label.color).to eq('green')
    end
  end

  describe "#adding an item" do
    it "adds correctly to the items instance variable" do
      item = instance_double("MusicAlbum")
      allow(item).to receive(:label=)
      @label.add_item(item)
      expect(@label.items).to include(item)
      expect(item).to have_received(:label=)
    end
  end
end
