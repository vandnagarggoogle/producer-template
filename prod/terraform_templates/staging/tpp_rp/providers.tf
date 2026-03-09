provider "google" {
  default_labels = {
    goog-adc-tf-deployment = "export"
  }
  # Append /v1/ (or /v1beta1/ if using beta resources) to these endpoints
  network_security_custom_endpoint = "https://staging-networksecurity.sandbox.googleapis.com/v1/"
  network_services_custom_endpoint = "https://staging-networkservices.sandbox.googleapis.com/v1/"

  # Compute example typically includes the version as shown below
  compute_custom_endpoint          = "https://www.googleapis.com/compute/staging_v1/"
}
provider "google-beta" {
  default_labels = {
    goog-adc-tf-deployment = "export"
  }
  # Append /v1/ (or /v1beta1/ if using beta resources) to these endpoints
  network_security_custom_endpoint = "https://staging-networksecurity.sandbox.googleapis.com/v1/"
  network_services_custom_endpoint = "https://staging-networkservices.sandbox.googleapis.com/v1/"
  #privateca_custom_endpoint        = "https://staging-privateca.sandbox.googleapis.com/v1/"

  # Compute example typically includes the version as shown below
  compute_custom_endpoint          = "https://www.googleapis.com/compute/staging_v1/"
}
