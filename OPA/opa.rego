package barmanagement

default allow := false

allow {
    input.method == "POST"
    input.path = ["api", "bar"]
    input.user.role == "customer"
}

allow {
    input.method == "POST"
    input.path = ["api", "managebar"]
    input.user.role == "bartender"
}

allow {
    input.method == "POST"
    input.path = ["api", "bar"]
    input.user.role == "customer"
    input.user.age >= 18
    input.body.DrinkName == "Beer"
}

allow {
    input.method == "POST"
    input.path = ["api", "bar"]
    input.user.role == "customer"
    input.body.DrinkName == "Fristi"
}
