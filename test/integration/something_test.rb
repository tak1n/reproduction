require 'test_helper'

class SomethingTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers

  setup do
    user = User.create!(
      email: "herbertm1970#{SecureRandom.hex}@gmail.com",
      password: 'testtest',
      password_confirmation: 'testtest',
    )

    login_as(user, scope: :user)
  end

  test 'returns smth #1' do
    params = {
      format: :json,
    }

    # /something.json does not exist
    get '/', params
  end

  test 'returns smth #2' do
    params = {
      format: :json
    }

    # /something.json does not exist
    get '/', params
  end
end
