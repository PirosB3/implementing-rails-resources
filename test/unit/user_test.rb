require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test 'model should not save if name and password are not present' do
        user = User.new
        assert !user.valid?

        [:name, :password].each do |attrib|
            assert user.errors.include? attrib
        end
    end
end
