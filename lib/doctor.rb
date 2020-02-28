class Doctor
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
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def patients
    appointments.collect {|appointment| appointment.patient}
  end
  
end