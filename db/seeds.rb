# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cnes.create(code: 5468345, unity: "CAPS I - Cristina Palles")
Cnes.create(code: 2601273, unity: "Centro de Saúde de Encruzilhada")
Cnes.create(code: 7300174, unity: "Farmácia Básica de Encruzilhada")
Cnes.create(code: 4025148, unity: "Hospital Municipal Milton Rocha Souza")
Cnes.create(code: 4025148, unity: "NASF de Encruzilhada")
Cnes.create(code: 6286194, unity: "PS Rio do Curral")
Cnes.create(code: 2601095, unity: "PS Rosalvo Pereira dos Santos - Mamoeiro")
Cnes.create(code: 3049590, unity: "Secretaria Municipal de Saúde de Encruzilhada")
Cnes.create(code: 7395108, unity: "USF Diorge Azevedo - Sede")
Cnes.create(code: 7231482, unity: "USF Zilda dos Santos - Sede")
Cnes.create(code: 2771586, unity: "USF Vila do Café I") 
Cnes.create(code: 6265421, unity: "USF Antônio Alves Nascimento - Vila do Café II")
Cnes.create(code: 2601168, unity: "USF Vila Bahia")
Cnes.create(code: 2600811, unity: "USF Joaquim Silva - Boa Vista da Tapera")
Cnes.create(code: 2601281, unity: "USF Antônio Fernandes Rocha - Cajazeiras")
Cnes.create(code: 2601176, unity: "USF Anacleto Aposto Evangelista - Cabeceira da Forquilha")

PsychoativeSubstance.create(name: "Álcool")
PsychoativeSubstance.create(name: "Cocaína")
PsychoativeSubstance.create(name: "Crack")
PsychoativeSubstance.create(name: "Outras Drogas")

### ------------ FOR DEVELOPMENT TESTS ------------ ###
5.times do
    Agent.create({
        name: Faker::Name.name_with_middle, 
        cnes_id: Cnes.all.sample.id
    })
end

10.times do
    Patient.create({
        medical_record_number: Faker::Number.unique.within(range: 1..10),
        name: Faker::Name.name_with_middle,
        gender: Faker::Gender.type,
        birthdate: Faker::Date.between(from: 110.years.ago, to: 2.years.ago),
        admission_date: Faker::Date.between(from: 10.years.ago, to: Date.today),
        age: Faker::Number.between(from: 2, to: 110),
        marital_status: Faker::Demographic.marital_status,
        mother_name: Faker::Name.name_with_middle,
        father_name: Faker::Name.name_with_middle,
        sus_card: Faker::Number.unique.number(digits: 15),
        cpf: Faker::IDNumber.unique.brazilian_citizen_number,
        rg: Faker::Number.unique.number(digits: 11),
        county: Faker::Address.city,
        adress: Faker::Address.street_address,
        phone: Faker::PhoneNumber.cell_phone,
        status: Faker::Subscription.status,
        cnes_id: Cnes.all.sample.id,
        agent_id: Agent.all.sample.id
    })
end