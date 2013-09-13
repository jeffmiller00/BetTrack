class AddAbbrevToSources < ActiveRecord::Migration
  def change
    add_column :sources, :abbrev, :string
  end
end
