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


variable "solution_plan_map" {
    type = "map"
}

# Map structure:
# solution_plan_map = {
#     ContainerInsights {
#         publisher = "Microsoft"
#         product   = "OMSGallery/ContainerInsights"
#     }
# }