class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :city
      t.string :state
      t.text :description
      t.boolean :is_active, default: true, null: false
      t.boolean :is_internal, default: true, null: false
      t.text :requirements
      t.boolean :is_remote, default: false, null: false
      t.float :hourly_rate
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
