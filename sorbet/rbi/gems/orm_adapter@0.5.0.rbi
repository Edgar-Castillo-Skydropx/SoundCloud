# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `orm_adapter` gem.
# Please instead update this file by running `bin/tapioca gem orm_adapter`.


# source://orm_adapter//lib/orm_adapter/base.rb#1
module OrmAdapter
  class << self
    # A collection of registered adapters
    #
    # source://orm_adapter//lib/orm_adapter.rb#7
    def adapters; end
  end
end

# source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#4
class OrmAdapter::ActiveRecord < ::OrmAdapter::Base
  # Return list of column/property names
  #
  # source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#6
  def column_names; end

  # @see OrmAdapter::Base#create!
  #
  # source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#31
  def create!(attributes = T.unsafe(nil)); end

  # @see OrmAdapter::Base#destroy
  #
  # source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#36
  def destroy(object); end

  # @see OrmAdapter::Base#find_all
  #
  # source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#26
  def find_all(options = T.unsafe(nil)); end

  # @see OrmAdapter::Base#find_first
  #
  # source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#21
  def find_first(options = T.unsafe(nil)); end

  # @see OrmAdapter::Base#get
  #
  # source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#16
  def get(id); end

  # @see OrmAdapter::Base#get!
  #
  # source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#11
  def get!(id); end

  protected

  # Introspects the klass to convert and objects in conditions into foreign key and type fields
  #
  # source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#53
  def conditions_to_fields(conditions); end

  # source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#41
  def construct_relation(relation, options); end

  # source://orm_adapter//lib/orm_adapter/adapters/active_record.rb#73
  def order_clause(order); end
end

# source://orm_adapter//lib/orm_adapter/base.rb#2
class OrmAdapter::Base
  # @return [Base] a new instance of Base
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#17
  def initialize(klass); end

  # Get a list of column/property/field names
  #
  # @raise [NotSupportedError]
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#22
  def column_names; end

  # Create a model using attributes
  #
  # @raise [NotSupportedError]
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#72
  def create!(attributes = T.unsafe(nil)); end

  # Destroy an instance by passing in the instance itself.
  #
  # @raise [NotSupportedError]
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#77
  def destroy(object); end

  # Find all models, optionally matching conditions, and specifying order
  #
  # @raise [NotSupportedError]
  # @see OrmAdapter::Base#find_first for how to specify order and conditions
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#67
  def find_all(options = T.unsafe(nil)); end

  # Find the first instance, optionally matching conditions, and specifying order
  #
  # You can call with just conditions, providing a hash
  #
  #   User.to_adapter.find_first :name => "Fred", :age => 23
  #
  # Or you can specify :order, and :conditions as keys
  #
  #   User.to_adapter.find_first :conditions => {:name => "Fred", :age => 23}
  #   User.to_adapter.find_first :order => [:age, :desc]
  #   User.to_adapter.find_first :order => :name, :conditions => {:age => 18}
  #
  # When specifying :order, it may be
  # * a single arg e.g. <tt>:order => :name</tt>
  # * a single pair with :asc, or :desc as last, e.g. <tt>:order => [:name, :desc]</tt>
  # * an array of single args or pairs (with :asc or :desc as last), e.g. <tt>:order => [[:name, :asc], [:age, :desc]]</tt>
  #
  # @raise [NotSupportedError]
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#61
  def find_first(options = T.unsafe(nil)); end

  # Get an instance by id of the model. Returns nil if a model is not found.
  # This should comply with ActiveModel#to_key API, i.e.:
  #
  #   User.to_adapter.get(@user.to_key) == @user
  #
  # @raise [NotSupportedError]
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#40
  def get(id); end

  # Get an instance by id of the model. Raises an error if a model is not found.
  # This should comply with ActiveModel#to_key API, i.e.:
  #
  #   User.to_adapter.get!(@user.to_key) == @user
  #
  # @raise [NotSupportedError]
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#31
  def get!(id); end

  # Returns the value of attribute klass.
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#3
  def klass; end

  protected

  # given an options hash,
  # with optional :conditions, :order, :limit and :offset keys,
  # returns conditions, normalized order, limit and offset
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#94
  def extract_conditions!(options = T.unsafe(nil)); end

  # given an order argument, returns an array of pairs, with each pair containing the attribute, and :asc or :desc
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#104
  def normalize_order(order); end

  # @return [Boolean]
  #
  # source://orm_adapter//lib/orm_adapter/base.rb#83
  def valid_object?(object); end

  # source://orm_adapter//lib/orm_adapter/base.rb#87
  def wrap_key(key); end

  class << self
    # Your ORM adapter needs to inherit from this Base class and its adapter
    # will be registered. To create an adapter you should create an inner
    # constant "OrmAdapter" e.g. ActiveRecord::Base::OrmAdapter
    #
    # @see orm_adapters/active_record
    # @see orm_adapters/datamapper
    # @see orm_adapters/mongoid
    #
    # source://orm_adapter//lib/orm_adapter/base.rb#12
    def inherited(adapter); end
  end
end

# source://orm_adapter//lib/orm_adapter/base.rb#122
class OrmAdapter::NotSupportedError < ::NotImplementedError
  # source://orm_adapter//lib/orm_adapter/base.rb#123
  def to_s; end
end

# Extend into a class that has an OrmAdapter
#
# source://orm_adapter//lib/orm_adapter/to_adapter.rb#3
module OrmAdapter::ToAdapter
  # source://orm_adapter//lib/orm_adapter/to_adapter.rb#4
  def to_adapter; end
end

# source://orm_adapter//lib/orm_adapter/version.rb#2
OrmAdapter::VERSION = T.let(T.unsafe(nil), String)
