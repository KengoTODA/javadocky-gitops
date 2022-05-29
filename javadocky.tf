resource "google_cloud_run_service" "default" {
  name     = "web"
  location = "asia-northeast1"

  template {
    spec {
      containers {
        image = "gcr.io/javadocky/javadocky@sha256:cde1bc4136a4334803a9058279a7f45ac133088700d990c6dd0516d4972958dc"
      }
    }
  }
}

data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location = google_cloud_run_service.default.location
  project  = google_cloud_run_service.default.project
  service  = google_cloud_run_service.default.name

  policy_data = data.google_iam_policy.noauth.policy_data
}
