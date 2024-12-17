# sorbet/rbi/devise.rbi
# typed: true

class ApplicationController
  sig { returns(T.nilable(User)) }
  def current_user; end
end

class User < ApplicationRecord
  sig { returns(ActiveRecord::Relation) }
  def posts; end
end
