class Patient
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end
  def appointments
    Appointment.all.select{|a| a.patient == self}
  end
  def doctors
    appointments.map {|a| a.doctor}
  end
end
