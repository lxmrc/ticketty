class AddDefaultToStates < ActiveRecord::Migration[6.0]
  def change
    add_column :states, :default, :boolean, default: false
  end
end
