resource "random_pet" "increase_resource_count" {
  for_each = { for idx in range(1, 10) : idx => idx }

  prefix = "hello-world-lambda-${each.key}"
  length = 2
}
