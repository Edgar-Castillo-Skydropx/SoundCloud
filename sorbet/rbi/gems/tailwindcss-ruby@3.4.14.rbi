# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `tailwindcss-ruby` gem.
# Please instead update this file by running `bin/tapioca gem tailwindcss-ruby`.


# source://tailwindcss-ruby//lib/tailwindcss/ruby/version.rb#3
module Tailwindcss; end

# source://tailwindcss-ruby//lib/tailwindcss/ruby/version.rb#4
module Tailwindcss::Ruby
  class << self
    # source://tailwindcss-ruby//lib/tailwindcss/ruby.rb#28
    def executable(exe_path: T.unsafe(nil)); end

    # source://tailwindcss-ruby//lib/tailwindcss/ruby.rb#24
    def platform; end
  end
end

# source://tailwindcss-ruby//lib/tailwindcss/ruby.rb#8
Tailwindcss::Ruby::DEFAULT_DIR = T.let(T.unsafe(nil), String)

# raised when TAILWINDCSS_INSTALL_DIR does not exist
#
# source://tailwindcss-ruby//lib/tailwindcss/ruby.rb#20
class Tailwindcss::Ruby::DirectoryNotFoundException < ::StandardError; end

# raised when the tailwindcss executable could not be found where we expected it to be
#
# source://tailwindcss-ruby//lib/tailwindcss/ruby.rb#16
class Tailwindcss::Ruby::ExecutableNotFoundException < ::StandardError; end

# source://tailwindcss-ruby//lib/tailwindcss/ruby.rb#9
Tailwindcss::Ruby::GEM_NAME = T.let(T.unsafe(nil), String)

# raised when the host platform is not supported by upstream tailwindcss's binary releases
#
# source://tailwindcss-ruby//lib/tailwindcss/ruby.rb#12
class Tailwindcss::Ruby::UnsupportedPlatformException < ::StandardError; end

# source://tailwindcss-ruby//lib/tailwindcss/ruby/upstream.rb#3
module Tailwindcss::Ruby::Upstream; end

# rubygems platform name => upstream release filename
#
# source://tailwindcss-ruby//lib/tailwindcss/ruby/upstream.rb#7
Tailwindcss::Ruby::Upstream::NATIVE_PLATFORMS = T.let(T.unsafe(nil), Hash)

# source://tailwindcss-ruby//lib/tailwindcss/ruby/upstream.rb#4
Tailwindcss::Ruby::Upstream::VERSION = T.let(T.unsafe(nil), String)

# source://tailwindcss-ruby//lib/tailwindcss/ruby/version.rb#5
Tailwindcss::Ruby::VERSION = T.let(T.unsafe(nil), String)
