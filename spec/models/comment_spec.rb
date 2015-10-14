require 'rails_helper'

describe Comment do
  it { should belong_to :link }
  it { should validate_presence_of :author }
  it { should validate_presence_of :body }
end
