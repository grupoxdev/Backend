# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(nombre: 'Joselito', 
                    primerApellido: 'Don', 
                    segundoApellido: 'Pregunton',
                    correo: 'joselito@elpregunton.com', 
                    password: '12e4adas',
                    tipoDocumento: 1,
                    documento: '1096276799',
                    fechaNacimiento: 20/06/2000,
                    departamento: 'Cundinamarca',
                    ciudad: 'Bogota',
                    telefono: '3102553938',
                    estadoProceso: 2,
                    estadoCivil: 'Soltero',
                    rh: 'O+')