locals {
    annotations = merge(var.metadataAnnotations, {
        "expires-at" = var.expiresAt
    })
}

resource kubernetes_namespace namespace {
  metadata {
    annotations = local.annotations
    labels = var.metadataLabels
    name = var.metadataName
  }
}
