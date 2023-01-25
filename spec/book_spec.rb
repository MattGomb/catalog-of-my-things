require 'spec_helper'

describe Book do
  before (:each) do
    @book = Book.new('Test title', 'Test publisher', 'Good cover state', '2022/12/12', archived: true)
  end
  
  describe 'Book is a child of Item' do
    it 'returns true' do
      expect(@book).to be_a_kind_of(Item)
    end
  end

  describe '#new' do
    it 'returns a book instance with four parameters' do
      expect(@book).to be_an_instance_of(Book)
    end
  end

  describe '#title' do
    it 'returns the correct title' do
      expect(@book.title).to eq('Test title')
    end
  end

  describe '#publisher' do
    it 'returns the correct publisher' do
      expect(@book.publisher).to eq('Test publisher')
    end
  end

  describe '#cover_state' do
    it 'returns the correct cover_state' do
      expect(@book.cover_state).to eq('Good cover state')
    end
  end

  describe '#published' do
    it 'returns the correct publish date' do
      expect(@book.publish_date).to eq('2022/12/12')
    end
  end
end
