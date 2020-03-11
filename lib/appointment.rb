require "pry"
class Appointment
  attr_accessor :doctor, :patient
  attr_reader :name
  @@all=[]

  def initialize(date, patient, doctor)
    @date=date
    @patient=patient
    @doctor=doctor
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
