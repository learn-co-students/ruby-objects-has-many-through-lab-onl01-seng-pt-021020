class Doctor

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end

  def appointments
    Appointment.all.select{|p| p.doctor = self}
  end

  def patients
    Patient.all.select{|p| p.doctor = self}
  end

end
