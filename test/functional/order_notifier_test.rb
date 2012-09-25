require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["hoodavy@gmail.com"], mail.to
    assert_equal ["hoodavy@gmail.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Pragmatic Store Order Shipped", mail.subject
    assert_equal ["hoodavy@gmail.com"], mail.to
    assert_equal ["hoodavy@gmail.com"], mail.from
<<<<<<< HEAD
    assert_match /<td>1&itmes;<\/td>\s*<td>Programming Ruby 1.9<\/td>/,
=======
    assert_match /Programming Ruby 1.9/,
>>>>>>> topic
      mail.body.encoded
  end

end
