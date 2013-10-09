class CreateTableAnswers < ActiveRecord::Migration
  def up
    create_table :answers do |t|
      t.string :body
      t.integer :user_id
      t.timestamps
    end
  end

  def down
    drop_table :answers
  end
end
