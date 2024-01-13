public actor PendingPayment {
    public var amount = 20.99
    var paid = false
    
    public func hasBeenPaid() {
        if !paid {
            print("Transaction need to be paid \(amount)")
        } else {
            print("Transaction already paid")
        }
    }
    
    public func pay(from account: BankAccount) -> Bool {
        var paymentProcessed = false
        
        if !paid {
            paid = true
            account.money -= amount
            paymentProcessed = true
        }
        
        return paymentProcessed
    }
    
    public init(amount: Double = 20.99, paid: Bool = false) {
        self.amount = amount
        self.paid = paid
    }
}
