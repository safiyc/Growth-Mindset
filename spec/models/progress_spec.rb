require 'rails_helper'

describe Progress do
  it { should validate_presence_of :comment }
end
