class EstimationCriteria < ActiveRecord::Migration
  def change
    create_table :estimation_criteria do |t|

      t.belongs_to :exhibition, index:true
      t.integer :max_awards_per_juror
      t.string :thematic
      t.string :rubric
      t.text :summary
      t.integer :degrees, default: 5
      t.string :min_criteria
      t.string :adv_criteria
      t.timestamps  null: false

    end
  end
end
