class AddMarketingCheckboxToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :marketing_checkbox, :bool
  end
end
