variable "resource_groups" {
    description = "A map of resource groups to create"
    type = map(object({
        rg_name  = string
        location = string
    }))
    default = {}
}