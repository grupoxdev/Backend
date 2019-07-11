# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_11_025456) do

  create_table "appointments", force: :cascade do |t|
    t.date "fecha"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "nombre", limit: 80, null: false
    t.string "direccion", limit: 100, null: false
    t.string "departamento", limit: 56, null: false
    t.string "ciudad", limit: 85, null: false
    t.string "telefono", limit: 20, null: false
    t.float "latitud", null: false
    t.float "longitud", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "nombre"
    t.string "archivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

  create_table "inscription_informations", force: :cascade do |t|
    t.boolean "cursa_educacion_basica"
    t.string "nivel_educacion_basica"
    t.string "institucion_educacion_basica"
    t.date "terminacion_educacion_basica"
    t.boolean "cursa_educacion_superior"
    t.string "nombre_carrera"
    t.string "semestre_educacion_superior"
    t.string "institucion_educacion_superior"
    t.date "terminacion_educacion_superior"
    t.boolean "esta_trabajando"
    t.string "nombre_trabajo"
    t.string "empresa_trabajo"
    t.string "cargo_trabajo"
    t.string "tipo_trabajador"
    t.date "fecha_ingreso_trabajo"
    t.string "direccion_trabajo"
    t.string "pais_trabajo"
    t.string "departamento_trabajo"
    t.string "municipio_trabajo"
    t.string "telefono_trabajo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_inscription_informations_on_user_id"
  end

  create_table "relatives", force: :cascade do |t|
    t.string "tipo_familiar"
    t.string "tipo_documento_familiar"
    t.string "documento_familiar"
    t.string "primer_nombre_familiar"
    t.string "segundo_nombre_familiar"
    t.string "primer_apellido_familiar"
    t.string "segundo_apellido_familiar"
    t.date "fecha_nacimiento_familiar"
    t.boolean "esta_vivo_familiar"
    t.string "estado_civil_familiar"
    t.boolean "tiene_cedula_militar_familiar"
    t.string "direccion_familiar"
    t.string "pais_familiar"
    t.string "departamento_familiar"
    t.string "municipio_familiar"
    t.string "telefono_familiar"
    t.boolean "esta_trabajando_familiar"
    t.string "nombre_trabajo_familiar"
    t.string "empresa_trabajo_familiar"
    t.string "cargo_trabajo_familiar"
    t.string "tipo_trabajador_familiar"
    t.date "fecha_ingreso_trabajo_familiar"
    t.string "direccion_trabajo_familiar"
    t.string "pais_trabajo_familiar"
    t.string "departamento_trabajo_familiar"
    t.string "municipio_trabajo_familiar"
    t.string "telefono_trabajo_familiar"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_relatives_on_user_id"
  end

  create_table "user_appointments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "appointment_id"
    t.index ["appointment_id"], name: "index_user_appointments_on_appointment_id"
    t.index ["user_id"], name: "index_user_appointments_on_user_id"
  end

  create_table "user_extra_infos", force: :cascade do |t|
    t.date "fecha_exp"
    t.string "pais_exp"
    t.string "dpto_exp"
    t.string "ciudad_exp"
    t.integer "genero"
    t.string "nacionalidad"
    t.string "doble_nacionalidad"
    t.string "boolean"
    t.boolean "retornado_de_exterior"
    t.integer "excepciones_de_ley"
    t.integer "dependencia_economica"
    t.string "pais_residencia"
    t.string "dpto_residencia"
    t.string "municipio_residencia"
    t.string "telefono_movil"
    t.integer "tipo_vivienda"
    t.integer "estrato_vivienda"
    t.boolean "pertenece_red_unidos"
    t.boolean "sisben"
    t.boolean "esta_cargo_icbf"
    t.integer "estatura"
    t.decimal "peso"
    t.integer "grupo_sanguineo"
    t.integer "factor_rh"
    t.integer "num_hijos"
    t.integer "estado_civil"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "direccion"
    t.boolean "tiene_hermano"
    t.index ["user_id"], name: "index_user_extra_infos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre", limit: 100, null: false
    t.string "primerApellido", limit: 100, null: false
    t.string "segundoApellido", limit: 100, null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.integer "tipoDocumento", null: false
    t.string "documento", null: false
    t.date "fechaNacimiento"
    t.string "departamento", limit: 56
    t.string "ciudad", limit: 85
    t.integer "estadoProceso"
    t.integer "estadoCivil"
    t.integer "tipoUsuario", limit: 100, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "district_id"
    t.string "avatar"
    t.boolean "first_session"
    t.index ["district_id"], name: "index_users_on_district_id"
  end

end
