variable metadataName {
    description = "Name of the namespace. Comes from the kubernetes resource's metadata.name field"
    type = string
}

variable metadataAnnotations {
    description = "Annotations to pass on to the underlying namespace's metadata. Comes from the kubernetes resource's metadata.annotations field"
    type = map(string)
    default = {}
}

variable metadataLabels {
    description = "Labels to pass on to the underlying namespace's metadata. Comes from the kubernetes resource's metadata.labels field"
    type = map(string)
    default = {}
}

variable expiresAt {
    description = "Date at which the namespace will be deleted (iso format)"
    type = string
}
