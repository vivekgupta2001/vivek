class AddToCompaniesRegisteredName < ActiveRecord::Migration
  def change
  	add_index :companies, :registeredName, unique: true
  end
end
