class Journey

  attr_reader :entry_station, :exit_station
  MINIMUM_FARE = 1

  def initialize(entry_station = nil, exit_station = nil)
    @entry_station = entry_station
    @exit_station = exit_station
  end

  def end_journey(exit_station)
    @exit_station = exit_station
  end

  def complete?
    @entry_station && @exit_station != nil
  end

  def fare
    MINIMUM_FARE if complete?
  end

end
