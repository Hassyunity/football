class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firtname
      t.string :lastname
      t.string :username
      t.string :phone
      t.string :poste
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
