class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :email
      t.integer :job_id
      t.text :resume
      t.string :first_name
      t.string :last_name
      t.text :cover_letter
      t.boolean :opt_in, default: true, null: false
      t.string :address

      t.timestamps null: false
    end
  end
end
