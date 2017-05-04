class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.date     :legislative_day
      t.string   :bill_number
      t.integer  :congress_number
      t.string   :description
      t.string   :chamber
      t.string   :range

      t.timestamps(null: false)
    end
  end
end
