store "varset" "tokens" {
  id       = "varset-azo9n9PpZVqVG2zK"
  category = "env"
}

deployment "test" {
  inputs = {
    # Pass varset variables to the component
    # Assuming your varset has variables like "TEST_PREFIX" and "TEST_MESSAGE"
    prefix_override = store.varset.tokens.TEST_PREFIX
    test_message    = store.varset.tokens.TEST_MESSAGE
  }
}
