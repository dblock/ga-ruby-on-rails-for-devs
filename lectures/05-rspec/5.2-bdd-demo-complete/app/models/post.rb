# frozen_string_literal: true

class Post < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :content
  validates_presence_of :user_id
  validates_presence_of :title
end
