resource "newrelic_alert_policy" "order_service_policy" {
  name = "Order Service Monitoring"
}

resource "newrelic_alert_channel" "email" {
  name = "Order Service Email Alerts"
  type = "email"
  config {
    recipients = join(",", var.alert_emails)
    include_json_attachment = true
  }
}

resource "newrelic_alert_policy_channel" "binding" {
  policy_id = newrelic_alert_policy.order_service_policy.id
  channel_ids = [newrelic_alert_channel.email.id]
}

resource "newrelic_synthetics_alert_condition" "order_service_synthetics_failure" {
  name       = "Order Service Healthcheck Failure"
  monitor_id = newrelic_synthetics_monitor.order_service_health.id
  enabled    = true
  policy_id  = newrelic_alert_policy.order_service_policy.id
}