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
  FactoryBot.create(:agent, cnes: Cnes.all.sample)
  FactoryBot.create(:professional, cnes: Cnes.all.sample)
end

30.times do
  FactoryBot.create(:patient, cnes: Cnes.all.sample, agent: Agent.all.sample)
end

Patient.all.each do |patient|
  patient.psychoative_substances.push(PsychoativeSubstance.all.sample)
  patient.cid10s.push(Cid10.all.sample)
end
