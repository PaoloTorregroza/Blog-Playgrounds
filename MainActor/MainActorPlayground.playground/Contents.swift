var candy = "Chocolate"

func changeCandy(_ new_candy: String) {
    candy = new_candy
    print(candy)
}

Task { @MainActor in
    changeCandy("Ice cream")
}

Task {
    await MainActor.run {
        changeCandy("Cookies")
    }
}
