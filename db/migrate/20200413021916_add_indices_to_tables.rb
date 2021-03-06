class AddIndicesToTables < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :username, :unique => true
    add_index :polls, :user_id
    add_index :questions, :poll_id
    add_index :responses, [:user_id, :answer_choice_id, :question_id], :unique => true
    add_index :answer_choices, :question_id
    
  end
end
