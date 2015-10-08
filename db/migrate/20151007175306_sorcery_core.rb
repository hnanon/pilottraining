class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.integer :role
      t.integer :status
      t.string :first_name
      t.string :last_name
      t.integer :instructor_id

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end