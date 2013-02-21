class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :URL
      t.string :name
      t.date :dateSaved

      t.timestamps
    end
  end
end
