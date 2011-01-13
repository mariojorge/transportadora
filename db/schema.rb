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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110111151749) do

  create_table "cidades", :force => true do |t|
    t.integer  "ufd_id"
    t.string   "codigo_ibge"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.integer  "cidade_id"
    t.string   "nome_fantasia"
    t.string   "razao_social"
    t.string   "cnpj"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ufd_id"
  end

  create_table "entregas", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "motorista_id"
    t.integer  "cidade_id"
    t.date     "data_da_partida"
    t.date     "data_da_entrega"
    t.date     "data_do_retorno"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ufd_id"
  end

  create_table "motoristas", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ufds", :force => true do |t|
    t.string   "codigo_ibge"
    t.string   "sigla"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
