terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">= 2.0.0"
    }
  }
}

provider "newrelic" {
  api_key    = var.newrelic_api_key
  account_id = var.newrelic_account_id
}


resource "newrelic_synthetics_monitor" "order_service_health" {
  # human‐readable name
  name = "Order Service Health"

  # monitor type: SIMPLE for a ping test, BROWSER for a scripted browser test
  type = "SIMPLE"

  # how often to run; valid values are strings like EVERY_1_MINUTE, EVERY_5_MINUTES, …
  period = "EVERY_MINUTE"

  # ENABLED or DISABLED
  status = "ENABLED"

  # which public minions to run from; pick from New Relic’s published list
  locations_public = ["AWS_US_EAST_1"]

  # the URL to hit
  uri = var.monitor_url
}