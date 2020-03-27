class Patient

  attr_reader :name, :appointments, :doctor
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
   new_appointment =  Appointment.new(date, self, doctor)
  end
  def self.all
    @@all 
  end
  def appointments
    Appointment.all.select do |appointments|
      appointments.patient == self
    
    end
   
  end

  def doctors
    Appointment.all.map do |appointments|
      appointments.doctor
    end
  end
end
