# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6, maximum: 100}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}

  def initialize(title, description)
    @title = title,
    @description = description  
  end
end

