class Patient
  attr_accessor :name, :appointment, :doctor
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    Appointment.all.collect {|appt| appt.doctor}
  end

  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end
end