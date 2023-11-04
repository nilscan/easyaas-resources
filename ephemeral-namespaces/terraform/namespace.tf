locals {
    annotations = merge(var.annotations, {
        "expires-at" = var.expiresAt
    })
}

resource kubernetes_namespace namespace {
  metadata {
    annotations = local.annotations
    labels = var.labels
    name = var.metadataName
  }
}
