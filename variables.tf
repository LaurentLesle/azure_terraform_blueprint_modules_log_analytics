variable "resource_group_name" {
  
}

variable "location" {
  
}


variable "prefix" {
  
}

variable "name" {
  
}

variable "solution_plan_map" {
    type = "map"
}

# Map structure:
# solution_plan_map = {
#     ContainerInsights = [{
#         publisher = "Microsoft"
#         product   = "OMSGallery/ContainerInsights"
#     }]
# }