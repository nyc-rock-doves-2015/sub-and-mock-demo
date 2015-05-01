class Violin < ActiveRecord::Base
  def self.create_priceless_violin(args)
    puts "Building perfection takes years of craftsmanship"
    sleep 5
    create(args)
  end

  def create_auction_report
    "We Say: " + tone_quality
  end

  def tone_quality
    puts "We do an extensive acoustic analysis at Dolby labs of Potrero Avenue in SF, CA."
    sleep 5
    "Melodious"
  end
end
