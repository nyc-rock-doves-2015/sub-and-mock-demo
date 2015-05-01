require 'rails_helper'

describe Musician do
  let(:bomb_ass_violin){ double("Violin", maker: "Stradivarius") }
  let(:discount_violin){ double("Violin", maker: "McCatGuts") }
  let(:musician) do
    musician = Musician.new
    musician.accept_instrument(bomb_ass_violin)
    musician
  end

  context "in terms of ego-gratification based on capitalism-induced consciousness of brand name" do
    it "loves a Stradivarius" do
      expect(musician.status).to eq "extremely happy"
    end

    it "is chagrinned by anything else" do
      musician.accept_instrument(discount_violin)
      expect(musician.status).to eq "meh"
    end
  end

  it "does not sound melodious sometimes" do
    j = Violin.create(maker: "Kahhhhhhhhn")
    expect(j).to receive(:tone_quality).once { "jazzy" }
    expect(j.create_auction_report).to eq "jazzy"
  end
end
