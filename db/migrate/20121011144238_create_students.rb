require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration

  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :phone
      t.date   :birthday

      t.timestamps
    end

  end
end

# HINT: checkout ActiveRecord::Migration.create_table
# schema

  # def initialize(args)
  #   :first_name = ARGS[0]
  #   :last_name = ARGS[1]
  #   :gender = ARGS[2]
  #   :email = ARGS[3]
  #   :phone = ARGS[4]
  #   :birthday = ARGS[5]
  # end  

      # :integer => ["id"],
      # :string => ["first_name", "last_name", "gender", "email", "phone"],
      # :date => ["birthday"]
