class AddBodyToPortfolios < ActiveRecord::Migration[6.1]
  def change
    add_column :portfolios, :body, :text
  end
end
