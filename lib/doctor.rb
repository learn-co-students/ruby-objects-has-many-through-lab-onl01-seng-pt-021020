class Doctor
  @@all=[]

  def self.all
    @@all
  end

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(date, patient)
     appointment = Appointment.new(patient, date, self)
     @appointments << appointment
     appointment
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

end