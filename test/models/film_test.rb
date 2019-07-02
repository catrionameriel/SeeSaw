require 'test_helper'

class FilmTest < ActiveSupport::TestCase
  test 'film with only one genre can get genre' do
    assert_equal(films(:eighth_grade).genres.count, 1)
    assert_equal(films(:eighth_grade).genres.first.name, 'comedy')
  end

  test 'film with multiple genres can get genres' do
    assert_equal(films(:waynes_world).genres.count, 2)
    assert_equal(films(:waynes_world).genres.pluck(:name), %w[comedy music])
    assert_equal(films(:waynes_world).genre_names, %w[comedy music])
  end
end
