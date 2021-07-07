class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  #initializes with a name

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  #given a doctor and date, creates a new appointment belonging to that patient

  def self.all
    @@all
  end
  #knows about all instances of patients

  def appointments
    Appointment.all.select { |a| a.patient == self }
  end
  #returns all appointments associated with this Patient

  def doctors
    appointments.map { |a| a.doctor }
  end
  #has many doctors through appointments

end
