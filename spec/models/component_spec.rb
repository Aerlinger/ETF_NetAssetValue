require 'spec_helper'

describe Component do

  describe "is a has many through association" do
    it { should respond_to :etf }
    it { should respond_to :stock }
  end

end
