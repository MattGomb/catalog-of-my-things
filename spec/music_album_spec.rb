require 'spec_helper'

describe MusicAlbum do
  before (:each) do
    @album = MusicAlbum.new('The Sound of Silence', '19/10/1964')
  end

  describe 'MusicAlbum is a child of Item' do
    it 'returns true' do
      expect(@album).to be_a_kind_of(Item)
    end
  end

  describe '#new' do
    it 'returns a MusicAlbum object with two parameters' do
      expect(@album).to be_an_instance_of(MusicAlbum)
    end
  end

  describe '#title' do
    it 'returns the correct title' do
      expect(@album.title).to eq('The Sound of Silence')
    end
  end

  describe '#publish_date' do
    it 'returns the correct publish date' do
      expect(@album.publish_date).to eq('19/10/1964')
    end
  end
end
