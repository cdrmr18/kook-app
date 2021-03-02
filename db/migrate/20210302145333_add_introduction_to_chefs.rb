class AddIntroductionToChefs < ActiveRecord::Migration[6.0]
  def change
    add_column :chefs, :introduction, :text
    add_column :chefs, :job_title, :string
    add_column :chefs, :restaurant, :string
  end
end
