class CreateTargetAttributes < ActiveRecord::Migration[4.2]
  def change
    create_table :target_attributes do |t|
      t.references :typed_link, index: true, null: false

      t.string :type, null: false
      t.string :value, null: false

      t.timestamps
    end
  end
end
