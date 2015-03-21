class AddDivisionTypeToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :division_type, :string
  end
end
