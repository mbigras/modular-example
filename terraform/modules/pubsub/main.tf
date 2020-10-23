resource "google_pubsub_topic" "foo" {
  project = var.project
  name    = local.foo
}

resource "google_pubsub_subscription" "foo" {
  project = var.project
  name    = local.foo
  topic   = google_pubsub_topic.foo.name
}

resource "google_pubsub_topic" "bar" {
  project = var.project
  name    = local.bar
}

resource "google_pubsub_subscription" "bar" {
  project = var.project
  name    = local.bar
  topic   = google_pubsub_topic.bar.name
}
