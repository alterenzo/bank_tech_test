require 'account'


describe Account do
  subject(:account) {Account.new}

  it 'is initialized with a balance of 0' do
    expect(account.balance).to eq 0
  end


  describe "#deposit" do
    it "allows money to be deposited" do
      account.deposit(5)
      expect(account.balance).to eq 5
    end
  end

  describe "#withdraw" do
    context "when enough money on account" do
      it "allows withdrawals" do
        account.deposit(10)
        account.withdraw(4)
        expect(account.balance).to eq 6
      end
    end

    context "when balance is insufficient" do
      it "won't allow withdrawals" do
        expect{account.withdraw(5)}.to raise_error "Insufficient funds"
      end
    end
  end
end
