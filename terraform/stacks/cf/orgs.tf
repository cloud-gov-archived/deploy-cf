resource "cloudfoundry_org" "cloud-gov" {
  name = "cloud-gov"
}

resource "cloudfoundry_org" "acceptance_tests" {
  name = "cloud-gov-acceptance-tests"
}

# Federalist/Pages

data "cloudfoundry_org" "gsa-18f-federalist" {
  name = "gsa-18f-federalist"
}
