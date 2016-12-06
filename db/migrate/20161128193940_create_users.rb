class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first
      t.string :last
      t.string :phone
      t.string :carrier

      t.timestamps null: false
    end
  end
end
