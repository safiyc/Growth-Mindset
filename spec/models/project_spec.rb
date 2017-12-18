require 'rails_helper'

describe Project do
  it { should validate_presence_of :name }
  it { should validate_presence_of :desc }
  it { should validate_presence_of :action }
  it { should validate_presence_of :frequency }
end
