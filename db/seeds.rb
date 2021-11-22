# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
GeneralQuestion.destroy_all
Fine.destroy_all
Declaration.destroy_all
CarRegistration.destroy_all
User.destroy_all
mozaffar=User.create(email:"mozaf2905@outlook.com", password:"qwerty", first_name:"Mozaffar", last_name:"Beekun",nic_number:"B290599381191E",license_number:"798413",phone_number:"+230 57807059",is_analyst: true)
muhammad=User.create(email:"mozaf2905@yahoo.com", password:"qwerty", first_name:"Muhammad", last_name:"Beekun",nic_number:"B290599381191E",license_number:"798413",phone_number:"+230 57453608",is_analyst: false)
anaas=User.create(email:"soobratty.as@hotmail.com", password:"qwerty", first_name:"Anaas", last_name:"Soobratty",nic_number:"S912962001468",license_number:"798413",phone_number:"+230 59207695",is_analyst: false)
yaasir=User.create(email:"yaasir07@gmail.com", password:"qwerty", first_name:"Yaasir", last_name:"Cheekoory",nic_number:"C030497381291Y",license_number:"798413",phone_number:"+230 59207695",is_analyst: false)
billy=User.create(email:"jullien.perle@outlook.com", password:"qwerty", first_name:"Billy", last_name:"Perle",nic_number:"P070197276790A",license_number:"798413",phone_number:"+230 59838856",is_analyst: false)
kavish=User.create(email:"kavish.ng.06@gmail.com", password:"qwerty", first_name:"Kavish", last_name:"Neerghen",nic_number:"N0602973300159",license_number:"798413",phone_number:"+230 58257518",is_analyst: false)




toyota=CarRegistration.create(car_make:"Toyota", car_model:"Auris", chassis_number:"NSP151R-BHXRKE", engine_number:"2NR-FE", engine_capacity:"1800cc", user:muhammad, numeric_plate:"1F", request_number:"54671")
nissan=CarRegistration.create(car_make:"Nissan", car_model:"Qashqai", chassis_number:"1G1YM3D78ESH7", engine_number:"4E-G321", engine_capacity:"1499cc", user:anaas, numeric_plate:"688", request_number:"99982")
honda=CarRegistration.create(car_make:"Honda", car_model:"Vezel", chassis_number:"T7BG0M7-NH788P", engine_number:"DAA-RU3", engine_capacity:"1500cc", user:mozaffar, numeric_plate:"1111 AK", request_number:"63725")
hyundai=CarRegistration.create(car_make:"Hyundai", car_model:"Tucson", chassis_number:"2ES-DIYHFCJ0", engine_number:"JH-2005-3A", engine_capacity:"1700cc", user:yaasir, numeric_plate:"25 FB 2021", request_number:"85794")
suzuki=CarRegistration.create(car_make:"Suzuki", car_model:"Swift", chassis_number:"7AFPKUE566K", engine_number:"5A-AAA9", engine_capacity:"1490cc", user:billy, numeric_plate:"0689 DC 2015", request_number:"74866")



Declaration.create(car_registration:toyota, expiry_date:"4/4/21", cof_number:"782387", policy_insurance_number:"C987H4", declaration_approved:"pending", request_number:"54360")
Declaration.create(car_registration:nissan, expiry_date:"2/4/21", cof_number:"983462", policy_insurance_number:"A986J3", declaration_approved:"pending", request_number:"12347")
Declaration.create(car_registration:honda, expiry_date:"9/5/21", cof_number:"894579", policy_insurance_number:"B643E1", declaration_approved:"pending", request_number:"34568")
Declaration.create(car_registration:suzuki, expiry_date:"13/7/21", cof_number:"405976", policy_insurance_number:"D542K4", declaration_approved:"pending", request_number:"78900")
Declaration.create(car_registration:hyundai, expiry_date:"29/09/21", cof_number:"283580", policy_insurance_number:"M875L2", declaration_approved:"pending", request_number:"45675")



Fine.create(fineticket:"68349", user:anaas, fine_approved:"pending", request_number:"76453",registration_number:"789")
Fine.create(fineticket:"09324", user:mozaffar, fine_approved:"pending", request_number:"12347",registration_number:"456")
Fine.create(fineticket:"54639", user:yaasir, fine_approved:"pending", request_number:"23459",registration_number:"123")
Fine.create(fineticket:"98346", user:muhammad, fine_approved:"pending", request_number:"78940",registration_number:"321")
Fine.create(fineticket:"65435", user:billy, fine_approved:"pending", request_number:"45747",registration_number:"654")



GeneralQuestion.create(issue:"how to change horsepower?", user:mozaffar, request_number:"56346")
GeneralQuestion.create(issue:"how to make a transfer paper?", user:yaasir, request_number:"12345")
GeneralQuestion.create(issue:"how to change color of vehicle?", user:muhammad, request_number:"87964")
GeneralQuestion.create(issue:"what documents are needed for a car registration?", user:anaas, request_number:"66673")
GeneralQuestion.create(issue:"what is the price range for a registration of a car with more than 2000cc?", user:billy, request_number:"88888")
