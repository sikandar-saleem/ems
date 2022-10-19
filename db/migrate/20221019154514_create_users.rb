class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name, index: true, null: false
      t.string :last_name, index: true, null: false
      t.string :nick_name
      t.string :email, index: true, null: false
      t.string :phone, index: true, null: false

      t.timestamps
    end
  end
end
