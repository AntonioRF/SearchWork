class AddNameToStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
    add_column :students, :boleta, :string
    add_column :students, :es_egresado, :boolean, default: false
    add_column :students, :telefono, :string
    add_column :students, :interes, :string
    add_column :students, :edad, :integer
  end
end