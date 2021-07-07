class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.find_all {|app| app.patient == self}
  end

  def doctors
    self.appointments.map {|app| app.doctor}
  end
  
end
