class CreateBetResults < ActiveRecord::Migration
  def change
    create_table :bet_results do |t|
      t.string :name

      t.timestamps
    end
  end
end
