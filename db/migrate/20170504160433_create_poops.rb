class CreatePoops < ActiveRecord::Migration
  def change
    create_table :poops do |t|
      t.integer  :issue_id
      t.integer  :politician_id
      t.integer  :call_time
      t.integer  :on_hold_time
      t.boolean  :spoke_directly
      t.integer  :followup_id

      t.timestamps(null: false)
    end
  end
end
