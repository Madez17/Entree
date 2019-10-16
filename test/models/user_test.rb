require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "email cant be blank to create" do
      mafe = User.new(name: "mafe", lastname: "mendez", identification: 456789)      
      assert_not mafe.save
  end

  test "email correct format to create" do
    mafe = User.new(name: "mafe", lastname: "mendez", identification: 456789, email: "asdadsad")      
    assert_not mafe.save  
  end

  test "name cant be blank to create" do
    mafe = User.new(lastname: "mendez", identification: 456789, email: "a@a.com")      
    assert_not mafe.save
  end

  test "lastname cant be blank to create" do
    mafe = User.new(name: "mafe", identification: 456789, email: "a@a.com")      
    assert_not mafe.save
  end

  test "identification cant be blank to create" do
    mafe = User.new(name: "mafe", lastname: "mendez", email: "a@a.com")      
    assert_not mafe.save
  end

  test "email should be unique to create" do
    mafe = User.new(name: "mafe", lastname: "mendez",identification: 456789, email: "a@a.com")
    mafe.save  
    fer = User.new(name: "fer", lastname: "medina", identification: 456788, email: "a@a.com")
         
    assert_not fer.save
  end

  test "identification should be unique to create" do
    mafe = User.new(name: "mafe", lastname: "mendez",identification: 456789, email: "a@a.com")
    mafe.save  
    fer = User.new(name: "fer", lastname: "medina", identification: 456789, email: "b@a.com")
         
    assert_not fer.save
  end

end
