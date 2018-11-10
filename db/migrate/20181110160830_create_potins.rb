class CreatePotins < ActiveRecord::Migration[5.2]
  def change
    create_table :potins do |t|
      t.belongs_to :user, index: true  # cree automatiquement un FK user_id
      t.string :content
      t.timestamps
    end
  end
end
