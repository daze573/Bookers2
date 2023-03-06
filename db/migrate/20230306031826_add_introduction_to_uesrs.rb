class AddIntroductionToUesrs < ActiveRecord::Migration[6.1]
  def change
    add_column :uesrs, :introduction, :text
  end
end
