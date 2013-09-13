class AddInputTypeIdToBets < ActiveRecord::Migration
  def change
    add_reference :bets, :input_type_id, index: true
  end
end
