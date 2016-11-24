class CreateVacantes < ActiveRecord::Migration
  def change
    create_table :vacantes do |t|
      t.string :title
      t.string :address
      t.string :salary
      t.text :description
      t.text :requirements
      t.text :benefits
      t.string :schedule
      t.string :category

      t.timestamps null: false
    end
  end
end
