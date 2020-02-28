class Patient
  attr_reader :name
  
  
  # class variables
  @@all = []
  
  # class methods
  def self.all
    @@all
  end
  
  
  # instance methods
  def initialize(name)
    @@all << self
    
    @name = name
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
  
end