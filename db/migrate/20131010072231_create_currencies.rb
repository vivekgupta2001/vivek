class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :longName
      t.string :shortName
      t.string :string

      t.timestamps
    end
  end
end
