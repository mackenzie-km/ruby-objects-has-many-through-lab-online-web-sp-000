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
 appointment = Appointment.new(date, doctor, self)
end 

def appointments 
  Appointment.all.select do |appointment|
    appointment.patient == self 
  end 
end 


def doctors
  doctors_array = []
   Appointment.all.collect do |appointment|
    if appointment.patient == self 
      doctors_array << appointment.doctor
  end 
end
  doctors_array
end 
binding.pry 
end 