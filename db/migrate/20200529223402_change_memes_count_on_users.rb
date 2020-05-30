class ChangeMemesCountOnUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :memes_count, from: nil, to: 0
  end
end
