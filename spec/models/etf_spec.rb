require 'spec_helper'

describe Etf do

  it { should respond_to :sponsor }
  it { should respond_to :composite_ticker }
  it { should respond_to :composite_name }
  it { should respond_to :location }
  it { should respond_to :exchange }
  it { should respond_to :total_shares }
  it { should respond_to :last_trade }
  it { should respond_to :type }
  it { should respond_to :shares_outstanding }
  it { should respond_to :market_cap }
  it { should respond_to :time_zone }
  it { should respond_to :dividend_yield }
  it { should respond_to :e_signal_ticker }

  describe "database names are adapted from the row titles in the CSV" do



  end

end
