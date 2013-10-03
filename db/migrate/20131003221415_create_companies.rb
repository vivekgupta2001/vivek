class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :registeredName
      t.string :registeredAddress
      t.string :vatNumber
      t.string :email

      t.timestamps
    end
  end
end
