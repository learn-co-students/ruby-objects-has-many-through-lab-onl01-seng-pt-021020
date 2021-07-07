class Patient
  attr_reader :name

  @@all = []

  def initialize(patient)
    @name = patient
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|app| app.patient == self}
  end

  def doctors
    self.appointments.map {|app| app.doctor}
  end
end
