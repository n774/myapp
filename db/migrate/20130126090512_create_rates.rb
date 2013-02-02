class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :g_id
      t.string :rate_id
      t.string :brate_id
      t.integer :point
      t.string :comment

      t.timestamps
    end
  end
end
