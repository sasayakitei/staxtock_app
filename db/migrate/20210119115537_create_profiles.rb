class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string     :phone
      t.date       :birthday
      t.integer    :address_id
      t.integer    :workplace_id
      t.string     :strength
      t.string     :weakness
      t.string     :website
      t.string     :avatar
      t.text       :introduction
      t.timestamps
    end
  end
end
