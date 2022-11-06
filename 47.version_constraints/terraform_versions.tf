


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21" 
      # Download me the latest incremental update
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 3.21" 
      # Only download version above this
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "< 3.21" # Only download version below this
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " != 3.21" 
      # Only download version that is NOT this
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.21" 
      # Only download version FOR this
    }
  }
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 3.21, < 3.28" 
      # Only download version above 3.21 AND less than 3.28
    }
  }
}