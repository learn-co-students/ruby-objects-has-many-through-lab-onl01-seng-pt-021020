class Appointment

  attr_accessor :appointment, :doctor, :patient

  @@all = []

  def initialize(appointment, patient, doctor)
    @appointment = appointment
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

end 