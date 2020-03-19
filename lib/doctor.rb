require "pry"
class Doctor 
  
  attr_accessor :name, :appointment, :patient

  @@all = []

  def initialize(name)
    @name = name
    @appointment = appointment
    @patient = patient 
    @@all << self
  end

  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor
    end
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    Appointment.all.map do |appointment|
      appointment.patient
    end
  end
  
end 