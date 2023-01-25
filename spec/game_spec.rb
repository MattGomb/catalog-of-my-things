require 'spec_helper'

describe Game do
  before (:each) do
    @game = Game.new('Test title', '01/01/2010', '12/12/2022', multiplayer: true)
  end

  describe "#new" do
    it "returns a game object with four parameters, child of Item" do
      expect(@game).to be_a(Item)
      expect(@game).to be_an_instance_of(Game)
    end
  end

  describe "#title" do
    it "returns the correct title" do
      expect(@game.title).to eq('Test title')
    end
  end

  describe "#publish_date" do
    it "returns the correct publish date" do
      expect(@game.publish_date).to eq('01/01/2010')
    end
  end

  describe "#last_played_at" do
    it "returns the correct last played at date" do
      expect(@game.last_played_at).to eq('12/12/2022')
    end
  end

  describe "#multiplayer" do 
    it "returns the correct multiplayer value" do
      expect(@game.multiplayer).to eq(true)
    end
  end
end
