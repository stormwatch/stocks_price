# $LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use!

class Minitest::Test
  make_my_diffs_pretty!
end
