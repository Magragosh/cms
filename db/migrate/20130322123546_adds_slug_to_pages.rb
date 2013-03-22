class AddsSlugToPages < ActiveRecord::Migration
  def up
  	add_column :pages, :slug, :string
  end

  def down
  	remove_column :pages, :slug
  end
end
