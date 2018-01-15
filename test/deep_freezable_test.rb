require 'minitest/autorun'
require './lib/bank'
require './lib/team'

class GateTest < Minitest::Test
  def test_deep_freeze_to_array
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? {|country| country.frozen? }
  end

  def test_deep_freeze_to_hash
    assert_equal ({'Japan' => 'yen', 'US' => 'doller', 'India' => 'rupee'}), Bank::CURRENCIES
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? {|k, v| k.frozen? && v.frozen? }
  end
end
