class CreateAnalystScores < ActiveRecord::Migration
  def change
    create_table :analyst_scores do |t|
      t.string :name
      t.integer :score

      t.timestamps
    end
  end
end
