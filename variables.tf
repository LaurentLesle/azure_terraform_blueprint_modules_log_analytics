variable "resource_group_name" {
  
}

variable "location" {
  
}


variable "prefix" {
  
}

variable "name" {
  
}

variable "solutions" {
    description = "List of the log solutions to create"
    type        = "list"
}

solutions = [
    "ContainerInsights"
]

solution_provider = {
    ContainerInsights {
        publisher = "Microsoft"
        product   = "OMSGallery/ContainerInsights"
    }
}