require "pry"
class Doctor 
attr_accessor :name

@@all = [] 

def initialize(name)
  @name = name 
  @@all << self 
end 

def self.all 
  @@all 
end 

def new_appointment(patient, date)
  appointment = Appointment.new(date, patient, self)
end 

def appointments 
  Appointment.all.select do |appointment|
    appointment.doctor == self 
  end 
end 

def patients 
  patients_array = []
   Appointment.all.each do |appointment|
    if appointment.doctor == self 
      patients_array << appointment.patient
  end 
end
  patients_array
end 


end 