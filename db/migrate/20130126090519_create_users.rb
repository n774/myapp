class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :u_id
      t.string :u_name
      t.string :g_id
      t.string :password_digest

      t.timestamps
    end
  end
end
