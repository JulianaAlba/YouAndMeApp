# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151212071922) do

  create_table "defeitoparceiros", force: :cascade do |t|
    t.string   "Nomedefeitop"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "defeitos", force: :cascade do |t|
    t.string   "Nomedefeito"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "localidades", force: :cascade do |t|
    t.string   "Nomelocalidade"
    t.float    "elevacao"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "localizacaos", force: :cascade do |t|
    t.string   "Nomelocalizacao"
    t.float    "elevacao"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string   "Nomelocal"
    t.decimal  "elevacao"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome"
    t.string   "idade"
    t.string   "senha"
    t.string   "confirmarsenha"
    t.string   "sexo"
    t.string   "sexoparceiro"
    t.integer  "qualidade_id"
    t.integer  "qualidadeparceiro_id"
    t.integer  "defeito_id"
    t.integer  "defeitoparceiro_id"
    t.integer  "picture_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "pessoas", ["defeito_id"], name: "index_pessoas_on_defeito_id"
  add_index "pessoas", ["defeitoparceiro_id"], name: "index_pessoas_on_defeitoparceiro_id"
  add_index "pessoas", ["picture_id"], name: "index_pessoas_on_picture_id"
  add_index "pessoas", ["qualidade_id"], name: "index_pessoas_on_qualidade_id"
  add_index "pessoas", ["qualidadeparceiro_id"], name: "index_pessoas_on_qualidadeparceiro_id"

  create_table "pictures", force: :cascade do |t|
    t.string   "Nomepicture"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "pictureinteira_file_name"
    t.string   "pictureinteira_content_type"
    t.integer  "pictureinteira_file_size"
    t.datetime "pictureinteira_updated_at"
  end

  create_table "qualidadeparceiros", force: :cascade do |t|
    t.string   "Nomequalidadep"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "qualidades", force: :cascade do |t|
    t.string   "Nomequalidade"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "idade"
    t.string   "senha"
    t.string   "confirmarsenha"
    t.string   "sexo"
    t.string   "sexoparceiro"
    t.string   "qualidade"
    t.string   "qualidadeparceiro"
    t.string   "defeito"
    t.string   "defeitoparceiro"
    t.string   "foto"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
