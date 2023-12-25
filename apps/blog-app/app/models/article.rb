# frozen_string_literal: true

class Article < ApplicationRecord
  def initialize(title, description)
    @title = title,
             @description = description
  end
end
