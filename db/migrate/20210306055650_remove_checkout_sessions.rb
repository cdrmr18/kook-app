class RemoveCheckoutSessions < ActiveRecord::Migration[6.0]
  def change
    drop_table :checkout_sessions
  end
end
