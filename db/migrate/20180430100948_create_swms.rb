class CreateSwms < ActiveRecord::Migration[5.1]
  def change
    create_table :swms do |t|

      t.timestamps
    end
  end
end
