class Permission < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.string :operation
      t.timestamps
    end
  end
end
