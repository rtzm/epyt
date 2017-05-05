class CreateFollowups < ActiveRecord::Migration
  def change
    create_table :followups do |t|
      t.integer  :poop_id
      t.string   :phone
      t.string   :email

      t.timestamps(null: false)
    end
  end
end
