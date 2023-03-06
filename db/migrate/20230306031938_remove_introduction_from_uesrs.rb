class RemoveIntroductionFromUesrs < ActiveRecord::Migration[6.1]
  def change
    remove_column :uesrs, :introduction, :text
  end
end
