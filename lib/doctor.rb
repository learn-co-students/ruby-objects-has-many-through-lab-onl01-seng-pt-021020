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
    Appointments.each do |appointment|
      appointment.patients
    end
  end
  
end 