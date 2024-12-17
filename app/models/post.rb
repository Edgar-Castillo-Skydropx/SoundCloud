# typed: true

class Post < ApplicationRecord
  extend T::Sig
  belongs_to :user
  has_rich_text :description
  has_one_attached :cover_art
  has_one_attached :audio

  sig { returns(String) }
  def title_and_desc
    T.must(self.title) + self.description.to_s
  end
end
