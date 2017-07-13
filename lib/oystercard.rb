require_relative 'journey'
class Oystercard

  attr_reader :balance, :entry_station, :journey_history
  MAX_BALANCE = 90
  MIN_BALANCE = 1 # delete
  MIN_FARE = 1

  def initialize
    @balance = 0
    @journey_history = []
  end

  def top_up(amount)
    fail "Top up limit is £#{MAX_BALANCE}" if (@balance + amount) > MAX_BALANCE
    @balance += amount
  end

  def touch_in(station)
    fail "Insufficient funds" if balance < MIN_BALANCE
    @entry_station = station
    start_journey(station)
  end

  def touch_out(fare = MIN_FARE, station)
    deduct(fare)
    @exit_station = station
    end_journey(station)
  end

  def save_journey
    key = @entry_station
    value = @exit_station
    @journey_history << {key => value}
  end

  private

  def start_journey(station)
    journey = Journey.new(station)
    @journey_history << journey
  end

  def end_journey(station)
      @journey_history.last.end_journey(station)
  end    

  def deduct(amount)
    @balance -= @journey_history.last.end_journey.fare
  end

end
