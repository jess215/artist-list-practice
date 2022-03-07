class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :ceo
      t.string :worth

      t.timestamps
    end
  end
end
