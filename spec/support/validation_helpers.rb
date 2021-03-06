module ValidationHelpers
  def create_should_raise_record_invalid(model, args={})
    lambda { FactoryGirl.create(model.to_sym, args) }.should raise_error(ActiveRecord::RecordInvalid)    
  end
  def create_should_not_raise_record_invalid(model, args={})
    lambda { FactoryGirl.create(model.to_sym, args) }.should_not raise_error(ActiveRecord::RecordInvalid)    
  end
end

RSpec.configure do |config|
  config.include ValidationHelpers
end
