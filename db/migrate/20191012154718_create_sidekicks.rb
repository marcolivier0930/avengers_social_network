class CreateSidekicks < ActiveRecord::Migration
  def change
    create_table :sidekicks do |t|
      t.string :name
      t.string :hero_name
      t.string :age
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
