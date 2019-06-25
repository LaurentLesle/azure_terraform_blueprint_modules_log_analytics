variable "resource_group_name" {
  description = "Resource group name"
}

variable "location" {
  description = "Location of the resources"
}

variable "prefix" {
  description = "(Optional) Prefix to add to resources"
  default     = ""
}

variable "name" {
  description = "Log Analytics workspace name"
}

variable "solution_plan_map" {
  description = "(Optional) List of map of the solutions"
  type = map(any)
  default     = {}
}

# Map structure:
# solution_plan_map = {
#     ContainerInsights = {
#         publisher       = "Microsoft"
#         promotion_code  = null
#         product         = "OMSGallery/ContainerInsights"
#     },
#     ContainerInsights1 = {
#         publisher       = "Microsoft1"
#         promotion_code  = null
#         product         = "OMSGallery/ContainerInsights1"
#     } 
#   }
