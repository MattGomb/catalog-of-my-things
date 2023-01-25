require 'spec_helper'

describe Genre do
  before(:each) do
    @genre = Genre.new('Test genre')
  end

  describe '#new' do
    it 'returns a genre object with one parameter' do
      expect(@genre).to be_an_instance_of(Genre)
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      expect(@genre.name).to eq('Test genre')
    end
  end

  describe '#adding an item' do
    it 'adds correctly to the items instance variable' do
      item = instance_double('MusicAlbum')
      allow(item).to receive(:genre=)
      @genre.add_item(item)
      expect(@genre.items).to include(item)
      expect(item).to have_received(:genre=)
    end
  end
end
