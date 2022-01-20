class CreateTmpZones < ActiveRecord::Migration[7.0]
  def change
    create_table :tmp_zones do |t|
      t.string :title

      t.timestamps
    end
  end
end
