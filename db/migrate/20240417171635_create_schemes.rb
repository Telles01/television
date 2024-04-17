class CreateSchemes < ActiveRecord::Migration[7.0]
  def change
    create_table :schemes do |t|
      t.string :name
      t.string :address
      t.integer :rating

      t.timestamps
    end
  end
end
