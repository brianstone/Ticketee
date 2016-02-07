class AddPreviousStateToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :previous_state, index: true
    add_foreign_key :comments, :states, column: :previous_states
  end
end
