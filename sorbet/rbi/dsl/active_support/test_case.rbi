# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveSupport::TestCase`.
# Please instead update this file by running `bin/tapioca dsl ActiveSupport::TestCase`.


class ActiveSupport::TestCase
  sig { params(fixture_name: NilClass, other_fixtures: NilClass).returns(T::Array[ActionText::RichText]) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: NilClass).returns(ActionText::RichText) }
  sig do
    params(
      fixture_name: T.any(String, Symbol),
      other_fixtures: T.any(String, Symbol)
    ).returns(T::Array[ActionText::RichText])
  end
  def action_text_rich_texts(fixture_name = nil, *other_fixtures); end

  sig { params(fixture_name: NilClass, other_fixtures: NilClass).returns(T::Array[Post]) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: NilClass).returns(Post) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: T.any(String, Symbol)).returns(T::Array[Post]) }
  def posts(fixture_name = nil, *other_fixtures); end

  sig { params(fixture_name: NilClass, other_fixtures: NilClass).returns(T::Array[User]) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: NilClass).returns(User) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: T.any(String, Symbol)).returns(T::Array[User]) }
  def users(fixture_name = nil, *other_fixtures); end
end
