class Doctor
  attr_accessor :name, :patients
  @@all=[]

  def initialize(name)
    @name=name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

#returns all appointments associated with this Doctor
  def appointments
    Appointment.all.select{|appt| appt.doctor==self}
  end

#given a date and a patient, creates a new appointment
  def new_appointment(patient,date)
    Appointment.new(date, patient, self)
  end

#has many patients, through appointments
  def patients
    # arr_patients=[]
    # appointments.each do |appt|
    #     arr_patients << appt.patient
    # end
    # arr_patients
    self.appointments.map{|appt| appt.patient}
  end


end
