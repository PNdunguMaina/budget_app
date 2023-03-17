class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|

      t.timestamps
    end
  end
end
