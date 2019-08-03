# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
doc = []
pat = []
c =[]
s =[]
t = ['Addictologue‎', 'Allergologue', 'Anatomiste‎', 'Anesthesiste', 'Cancerologue‎', 'Cardiologue‎', 'Chirurgien‎', 'Clinicien‎', 'Dentiste‎']
 20.times do 
 	c << City.create(name: Faker::Nation.capital_city)
 	doc << Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: c.shuffle[0].id)
 	pat << Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: c.shuffle[0].id)
 	s << Specialty.create(specialitE: t.shuffle[0], doctor_id: doc.shuffle[0].id)
 

end

20.times do
	a = Appointment.create(doctor_id: doc.shuffle[0].id, patient_id:pat.shuffle[0].id, city_id: c.shuffle[0].id)
end



