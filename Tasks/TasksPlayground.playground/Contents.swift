let pedroBankAccount = BankAccount(money: 200)
let jaimeBankAccount = BankAccount(money: 199)
let newPayment = PendingPayment()

Task {
    await print(newPayment.amount)
}

Task {
    print("Pedro has paid: \(await newPayment.pay(from: pedroBankAccount))")
}

Task {
    print("Jaime has paid: \(await newPayment.pay(from: jaimeBankAccount))")
}
