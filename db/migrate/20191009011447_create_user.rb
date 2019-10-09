class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :hero_name
      t.string :user_name
      t.string :password
    end
  end
end
