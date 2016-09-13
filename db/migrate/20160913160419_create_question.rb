class CreateQuestion < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :text, :string
      t.column :user_id, :integer
      t.column :votes, :integer
    end
  end
end
