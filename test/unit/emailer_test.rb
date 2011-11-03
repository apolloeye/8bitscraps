require 'test_helper'

class EmailerTest < ActionMailer::TestCase
  test "comment" do
    @expected.subject = 'Emailer#comment'
    @expected.body    = read_fixture('comment')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Emailer.create_comment(@expected.date).encoded
  end

end
