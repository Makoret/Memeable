class ChangeVotesCountOnMemes < ActiveRecord::Migration[6.0]
  def change
    change_column_default :memes, :votes_count, from: nil, to: 0
  end
end
