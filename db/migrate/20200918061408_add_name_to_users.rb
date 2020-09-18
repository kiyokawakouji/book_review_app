class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    def change
      add_column :users, :name, :string, null: false, default: ""
    end
  end
end
