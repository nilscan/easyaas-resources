variable metadataName {
    description = "Name of the namespace. Comes from the kubernetes resource's metadata.name field"
    type = string
}

variable annotations {
    description = "Annotations to pass on to the underlying namespace's metadata"
    type = map(string)
    default = {}
}

variable labels {
    description = "Labels to pass on to the underlying namespace's metadata"
    type = map(string)
    default = {}
}

variable expiresAt {
    description = "Date at which the namespace will be deleted (iso format)"
    type = string
}
