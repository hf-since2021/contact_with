class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.references :user,                 null: false
      t.date       :date,                 null: false
      t.integer    :request_type_id,      null: false
      t.integer    :absent_type_id,       null: false
      t.integer    :in_and_out_time_id,   null: false
      t.integer    :reason,               null: false
      t.string     :sync_status_id,       null: false
      t.timestamps
    end
  end
end
