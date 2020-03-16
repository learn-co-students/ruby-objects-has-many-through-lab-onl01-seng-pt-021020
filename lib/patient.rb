class Patient
  
  @@all =[] 
  
  attr_reader :name, :appointment, :doctor
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(doctor, date)
    Appointment.all.select do |appointment|
      appointment.patient == self
    end 
  end 
  
  def appointments
    
  end
  
  def doctors
    
  end 
  
end 