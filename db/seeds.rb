# frozen_string_literal: true

### ------------ SQL FILES IMPORT ------------ ###
connection = ActiveRecord::Base.connection

sql = File.read('db/cid10.sql') # Change path and filename as necessary
statements = sql.split(/;$/)
statements.pop

ActiveRecord::Base.transaction do
  statements.each do |statement|
    connection.execute(statement)
  end
end

Cnes.create(code: 5_468_345, unity: 'CAPS I - Cristina Palles')
Cnes.create(code: 2_601_273, unity: 'Centro de Saúde de Encruzilhada')
Cnes.create(code: 7_300_174, unity: 'Farmácia Básica de Encruzilhada')
Cnes.create(code: 4_025_148, unity: 'Hospital Municipal Milton Rocha Souza')
Cnes.create(code: 4_025_148, unity: 'NASF de Encruzilhada')
Cnes.create(code: 6_286_194, unity: 'PS Rio do Curral')
Cnes.create(code: 2_601_095, unity: 'PS Rosalvo Pereira dos Santos - Mamoeiro')
Cnes.create(code: 3_049_590, unity: 'Secretaria Municipal de Saúde de Encruzilhada')
Cnes.create(code: 7_395_108, unity: 'USF Diorge Azevedo - Sede')
Cnes.create(code: 7_231_482, unity: 'USF Zilda dos Santos - Sede')
Cnes.create(code: 2_771_586, unity: 'USF Vila do Café I')
Cnes.create(code: 6_265_421, unity: 'USF Antônio Alves Nascimento - Vila do Café II')
Cnes.create(code: 2_601_168, unity: 'USF Vila Bahia')
Cnes.create(code: 2_600_811, unity: 'USF Joaquim Silva - Boa Vista da Tapera')
Cnes.create(code: 2_601_281, unity: 'USF Antônio Fernandes Rocha - Cajazeiras')
Cnes.create(code: 2_601_176, unity: 'USF Anacleto Aposto Evangelista - Cabeceira da Forquilha')

PsychoativeSubstance.create(name: 'Álcool')
PsychoativeSubstance.create(name: 'Cocaína')
PsychoativeSubstance.create(name: 'Crack')
PsychoativeSubstance.create(name: 'Outras Drogas')

### ------------ FOR DEVELOPMENT TESTS ------------ ###
5.times do
  Agent.create({
                 name: Faker::Name.name_with_middle,
                 cnes_id: Cnes.all.sample.id,
                 email: Faker::Internet.free_email,
                 phone: Faker::PhoneNumber.cell_phone,
                 address: Faker::Address.street_address
               })
end

30.times do
  Patient.create({
                   medical_record_number: Faker::Number.unique.within(range: 1..30),
                   name: Faker::Name.name_with_middle,
                   gender: Faker::Number.within(range: 0..2),
                   birthdate: Faker::Date.between(from: 110.years.ago, to: 2.years.ago),
                   admission_date: Faker::Date.between(from: 10.years.ago, to: Date.today),
                   age: Faker::Number.between(from: 2, to: 110),
                   marital_status: Faker::Number.within(range: 0..3),
                   mother_name: Faker::Name.name_with_middle,
                   father_name: Faker::Name.name_with_middle,
                   sus_card: Faker::Number.unique.number(digits: 15),
                   cpf: Faker::IDNumber.unique.brazilian_citizen_number,
                   rg: Faker::Number.unique.number(digits: 11),
                   adress: Faker::Address.street_address,
                   phone: Faker::PhoneNumber.cell_phone,
                   status: Faker::Number.within(range: 0..1),
                   cnes_id: Cnes.all.sample.id,
                   agent_id: Agent.all.sample.id
                 })
end

Patient.all.each do |patient|
  patient.psychoative_substances.push(PsychoativeSubstance.all.sample)
  patient.cid10s.push(Cid10.all.sample)
end
