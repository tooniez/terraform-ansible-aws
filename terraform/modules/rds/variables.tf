variable env {
  description = "Environment prefix"
}

variable db_instance_class {
  description = "Instance class of the RDS instance"
}

variable db_name {
  description = "Name of the database"
  default = "tooniez_db"
}

variable db_username {
  description = "Username of the database"
  default = "tooniez_user"
}

variable db_password {
  description = "Password of the database"
  default = "tooniez_password"
}

variable vpc_id {
  description = "ID of the VPC"
  
}

variable subnet_ids {
  description = "IDs of the subnets"
}

