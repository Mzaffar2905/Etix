class CreateDeclarations < ActiveRecord::Migration[6.0]
  def change
    create_table :declarations do |t|
      t.integer :cof_number
      t.integer :policy_insurance_number
      t.references :registration, null: false, foreign_key: true
      t.boolean :declaration_approved
      t.boolean :payment_done
      t.date :expiry_date

      t.timestamps
    end
  end
end
