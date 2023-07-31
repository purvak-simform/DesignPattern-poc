class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :lastname
      t.text :address
      t.text :landmark
      t.text :city
      t.integer :pincode
      t.integer :contact_number
      t.integer :status, default: 0 
      t.timestamps
    end
  end
end
