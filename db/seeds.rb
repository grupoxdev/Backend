# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

index = 1
53.times do
    District.create(
        nombre: "Distrito Militar No" + index.to_s,
        direccion: Faker::Address.full_address,
        departamento: "Cundinamarca",
        ciudad: "Bogota",
        telefono: Faker::PhoneNumber.cell_phone
    )
    index = index + 1
end
p "Se crearon #{District.count} distritos militares"

1000.times do
    name = Faker::Name.male_first_name
    User.create(
        nombre: name,
        primerApellido: Faker::Name.last_name,
        segundoApellido: Faker::Name.last_name,
        correo: Faker::Internet.free_email(name),
        password: Faker::Internet.password(10, 15),
        tipoDocumento: Faker::Number.between(0, 2),
        documento: Faker::Number.between(9, 15),
        fechaNacimiento: Faker::Date.birthday(16, 25),
        departamento: "Cundinamarca",
        ciudad: "Bogota",
        telefono: Faker::PhoneNumber.cell_phone,
        estadoProceso: Faker::Number.between(0, 2),
        estadoCivil: Faker::Number.between(0, 2),
        rh: "0+",
        district_id: Faker::Number.between(1, 53)
    )
end
p "Se crearon #{User.count} usuarios"

index = 1
53.times do
    name = Faker::Name.male_first_name
    Admin.create(
        nombre: name,
        primerApellido: Faker::Name.last_name,
        segundoApellido: Faker::Name.last_name,
        correo: Faker::Internet.free_email(name),
        password: Faker::Internet.password(10, 15),
        tipoDocumento: Faker::Number.between(0, 2),
        documento: Faker::Number.between(9, 15),
        district_id: index
    )
    index = index + 1
end
100.times do
    name = Faker::Name.male_first_name
    Admin.create(
        nombre: name,
        primerApellido: Faker::Name.last_name,
        segundoApellido: Faker::Name.last_name,
        correo: Faker::Internet.free_email(name),
        password: Faker::Internet.password(10, 15),
        tipoDocumento: Faker::Number.between(0, 2),
        documento: Faker::Number.between(9, 15),
        district_id: Faker::Number.between(1, 53)
    )
end
p "Se crearon #{Admin.count} administradores"

usuario = 1
1000.times do
    documento = 1
    veces = Faker::Number.between(0, 5)
    veces.times do
        Document.create(
            nombre: "documento" + documento.to_s,
            archivo: Faker::Alphanumeric.alphanumeric(Faker::Number.between(6, 16)),
            user_id: usuario
        )
        documento = documento + 1
    end
    usuario = usuario + 1
end
p "Se crearon #{Document.count} documentos"

usuario = 1
1000.times do
    Appointment.create(
        nombre: "Citacion",
        direccion: Faker::Address.full_address,
        departamento: "Cundinamarca",
        ciudad: "Bogota",
        telefono: Faker::PhoneNumber.cell_phone,
        user_id: usuario
    )
end
p "Se crearon #{Appointment.count} citaciones"

Faker::UniqueGenerator.clear