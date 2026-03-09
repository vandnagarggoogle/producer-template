provider "google" {
  default_labels = {
    goog-adc-tf-deployment = "export"
  }
  # Append /v1/ (or /v1beta1/ if using beta resources) to these endpoints
  network_services_custom_endpoint = "https://staging-networkservices.sandbox.googleapis.com/v1alpha1/"

}
provider "google-beta" {
  default_labels = {
    goog-adc-tf-deployment = "export"
  }
  # Append /v1/ (or /v1beta1/ if using beta resources) to these endpoints
  network_services_custom_endpoint = "https://staging-networkservices.sandbox.googleapis.com/v1alpha1/"
  #privateca_custom_endpoint        = "https://staging-privateca.sandbox.googleapis.com/v1/"

}
