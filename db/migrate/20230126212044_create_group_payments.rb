class CreateGroupPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :group_payments do |t|
      t.integer group_id
      t.integer payment_id
      
      t.timestamps
    end
  end
end
