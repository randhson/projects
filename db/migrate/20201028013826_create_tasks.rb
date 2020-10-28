class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :dt_inicio
      t.datetime :dt_final
      t.boolean :finish, default: false
      t.references :project

      t.timestamps
    end
  end
end
