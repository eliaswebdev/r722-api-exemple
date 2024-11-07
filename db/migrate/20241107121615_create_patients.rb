class CreatePatients < ActiveRecord::Migration[7.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :cpf
      t.date :birthdate

      t.timestamps
    end
  end
end
