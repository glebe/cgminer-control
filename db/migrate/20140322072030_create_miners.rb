class CreateMiners < ActiveRecord::Migration
  def change
    create_table :miners do |t|
      t.string :host
      t.integer :port
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
