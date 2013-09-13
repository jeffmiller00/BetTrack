class FixInputTypeTableName < ActiveRecord::Migration
  def change
    rename_column :bets, :input_type_id_id, :input_type_id
  end
end
