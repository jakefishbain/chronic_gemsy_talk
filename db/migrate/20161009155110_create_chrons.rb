class CreateChrons < ActiveRecord::Migration[5.0]
  def change
    create_table :chrons do |t|
      t.datetime :time, null: false
      t.string :form_params

      t.timestamps(null: false)
    end
  end
end
