variable "resource_group_name" {
    description = "Resource group name"
}

variable "location" {
    description = "Location of the resources"
}


variable "prefix" {
    description = "(Optional) Prefix to add to resources"
    default = ""
}

variable "name" {
    description = "Log Analytics workspace name"
}

variable "solution_plan_map" {
    description = "(Optional) List of map of the solutions"
    type = "map"
    default = {}
}

# Map structure:
# solution_plan_map = {
#     ContainerInsights = [{
#         publisher = "Microsoft"
#         product   = "OMSGallery/ContainerInsights"
#     }]
# }