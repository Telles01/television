class AddHostNameToScheme < ActiveRecord::Migration[7.0]
  def change
    add_column :schemes, :host_name, :string
  end
end
