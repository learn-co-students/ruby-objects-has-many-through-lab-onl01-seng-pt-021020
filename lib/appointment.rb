class Appointment
  attr_accessor :date, :patient, :doctor
  
  
  # class variables
  @@all = []
  
  # class methods
  def self.all
    @@all
  end
  
  
  # instance methods
  def initialize(date, patient, doctor)
    @@all << self
    
    @date = date
    @patient = patient
    @doctor = doctor
  end
  
end