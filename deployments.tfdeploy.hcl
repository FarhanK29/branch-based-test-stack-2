deployment "prod" {
  inputs = {
    prefix    = "prod"
    instances = 7
  }
}

deployment "staging" {
  inputs = {
    prefix    = "staging"
    instances = 5
  }
}

deployment "dev" {
  inputs = {
    prefix    = "dev"
    instances = 3
  }
}