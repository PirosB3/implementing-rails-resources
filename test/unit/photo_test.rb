require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
    test "it should be able to reject wrong urls" do
        photo = Photo.new(:url => 'i am a wrong URL')
        photo.save
        assert photo.errors.include? :url
    end
end
