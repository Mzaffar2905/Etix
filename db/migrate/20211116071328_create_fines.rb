class CreateFines < ActiveRecord::Migration[6.0]
  def change
    create_table :fines do |t|
      t.integer :fineticket
      t.references :declaration, null: false, foreign_key: true
      t.boolean :payment_done

      t.timestamps
    end
  end
end
