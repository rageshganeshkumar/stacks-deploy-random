resource "random_pet" "increase_resource_count" {
  for_each = { for idx in range(1, 61) : idx => idx }

  prefix = "hello-world-${each.key}"
  length = 4
}
