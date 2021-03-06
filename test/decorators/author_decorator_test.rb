require_relative '../test_helper'

describe AuthorDecorator do
  include TestHelper

  describe '#website_link' do
    before do
      @author = AuthorDecorator.decorate(Fabricate(:author))
    end

    it 'returns link to authors website' do
      assert_match 'http://example.com', @author.website_link
    end

    it 'returns link to authors website when website is without http prefix' do
      @author.website = 'test.com'
      assert_match 'http://test.com', @author.website_link
    end
  end
end
