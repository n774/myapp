class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :g_id
      t.string :g_name

      t.timestamps
    end
  end
end
