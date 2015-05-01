class Musician
  def accept_instrument(instrument)
    @instrument = instrument
  end

  def status
    @instrument.maker == "Stradivarius" ? "extremely happy" : "meh"
  end
end
