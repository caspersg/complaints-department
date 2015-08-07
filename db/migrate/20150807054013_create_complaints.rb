class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :to
      t.text :text
      t.string :from

      t.timestamps null: false
    end
  end
end
