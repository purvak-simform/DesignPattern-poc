class CreateCoupons < ActiveRecord::Migration[7.0]
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :code
      t.datetime :generated_date
      t.datetime :expiry_date
      t.boolean :used_once, default: false
      t.belongs_to :user

      t.timestamps
    end
  end
end
