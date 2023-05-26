class AddSummaryToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :story_summary, :text
  end
end
