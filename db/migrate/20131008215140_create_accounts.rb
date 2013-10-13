class CreateAccounts < ActiveRecord::Migration
  def change
  	create_table :currencies do |t|
      t.string :longName
      t.string :shortName
      t.string :string

      t.timestamps
    end

    create_table :accounts do |t|
      t.string :bankName
      t.string :accountType
      t.float :accountBalance
      t.belongs_to :currency
      t.timestamps
    end
  end
end
