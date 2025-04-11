component "s3" {
  
  source = "./s3"

  providers = {
    random = provider.random.this
  }
}