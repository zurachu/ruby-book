class Gate
  STATIONS = %i(umeda juso mikuni)
  FARES = {
    1 => 150,
    2 => 190,
  }

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    calc_fare(ticket) <= ticket.fare
  end

  private

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    FARES[to - from]
  end
end
