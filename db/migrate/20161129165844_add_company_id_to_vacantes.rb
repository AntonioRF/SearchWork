class AddCompanyIdToVacantes < ActiveRecord::Migration
  def change
    add_reference :vacantes, :company, index: true, foreign_key: true
  end
end
