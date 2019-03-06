require "pry"
class Patient
attr_accessor :name

@@all = [] 

def initialize(name)
  @name = name 
  @@all << self 
end 

def self.all 
  @@all 
end 

def new_appointment(date, doctor)
  Appointment.new(date, doctor, self)
end 

def appointments 
  Appointments.all.select do |appointment|
    appointment.patient == self 
  end 
end 
binding.pry
end 