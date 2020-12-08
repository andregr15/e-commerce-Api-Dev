class AddMaxUseToCoupon < ActiveRecord::Migration[6.0]
  def change
    add_column :coupons, :max_use, :integer, default: 1
  end
end
