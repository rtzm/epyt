class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table  :politicians do |t|
      t.string    :first_name
      t.string    :last_name
      t.string    :leadership_role
      t.string    :chamber
      t.string    :party
      t.string    :state
      t.string    :district
      t.string    :title
      t.string    :twitter_id
      t.string    :facebook_id
      t.string    :email
      t.string    :phone
      t.string    :contact_form_url

      t.timestamps(null: false)
    end
  end
end
