class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.datetime :dt_inicio
      t.datetime :dt_final
      t.integer :completed

      t.timestamps
    end
  end
end
