class Appointment
  @@all = []
  attr_accessor :patient, :date

  def initialize(patient, date)
    @patient = patient
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
