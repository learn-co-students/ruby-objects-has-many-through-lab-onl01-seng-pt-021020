class Doctor

  attr_reader :name, :appointments, :patient

  @@all_doc = []

  def initialize(name)
    @name = name
    @@all_doc << self
  end

  def self.all
    @@all_doc
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self
      # binding.pry
    end
    
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end