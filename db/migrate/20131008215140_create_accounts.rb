class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :bankName
      t.string :accountType
      t.float :accountBalance

      t.timestamps
    end
  end
end
