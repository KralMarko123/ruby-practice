# frozen_string_literal: true

class AddTimestampsDescriptionToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
    add_column :articles, :description, :text
  end
end
