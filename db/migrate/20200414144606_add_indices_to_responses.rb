class AddIndicesToResponses < ActiveRecord::Migration[6.0]
  def change
    add_index :responses, :user_id
    add_index :responses, :answer_choice_id
  end
end
