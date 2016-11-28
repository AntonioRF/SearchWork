class AddNameToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string
    add_column :companies, :address, :string
    add_column :companies, :phone, :string
    add_column :companies, :contact, :string
    add_column :companies, :descrip, :text
    add_column :companies, :web, :string
  end
end
