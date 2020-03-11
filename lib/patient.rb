require "pry"
class Patient
  attr_accessor :name, :appointments, :doctors

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

#returns all appointments associated with this patient
    def appointments
      Appointment.all.select{|appt| appt.patient==self}
    end

#given a doctor and date, creates a new appointment belonging to that patient
    def new_appointment(doctor, date)
      Appointment.new(date, self, doctor)
    end

#has many doctors, through appointments
    def doctors
      arr_doctors=[]
      appointments.each do |appt|
          arr_doctors << appt.doctor
      end
      arr_doctors
    end

end
