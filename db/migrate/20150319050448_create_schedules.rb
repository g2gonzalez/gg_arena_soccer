class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :gametime
      t.string :hteam
      t.string :ateam

      t.timestamps null: false
    end
  end
end
