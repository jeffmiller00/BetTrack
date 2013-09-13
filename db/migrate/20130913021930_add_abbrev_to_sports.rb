class AddAbbrevToSports < ActiveRecord::Migration
  def change
    add_column :sports, :abbrev, :string
  end
end
