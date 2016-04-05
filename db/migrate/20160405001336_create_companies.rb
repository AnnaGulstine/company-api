class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :catchphrase
      t.string :logo
      t.string :ein

      t.timestamps null: false
    end
  end
end
