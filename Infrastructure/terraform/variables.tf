variable "newrelic_api_key" {
  type        = string
  description = "New Relic API key, must have Synthetics write permissions"
}

variable "monitor_url" {
  type        = string
  description = "The full URL to hit health check"
  default     = "http://chinthika-rathnayake.click/health"
}

variable "newrelic_account_id" {
  type        = string
  description = "Your New Relic account numeric ID (NOT the license key)"
}

variable "alert_emails" {
  type = list(string)
  description = "List of email addresses to receive alerts"
  default = ["chinthika.jayani@gmail.com"]
}