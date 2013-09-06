class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :name
      t.string :website
      t.string :twitter
      t.float :trust

      t.timestamps
    end
  end
end
