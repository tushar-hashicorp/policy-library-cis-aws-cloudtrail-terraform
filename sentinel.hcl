import "module" "report" {
  source = "./modules/report/report.sentinel"
}

import "module" "tfresources" {
  source = "./modules/tfresources/tfresources.sentinel"
}

policy "cloudtrail-server-side-encryption-enabled" {
    source = "./policies/cloudtrail-server-side-encryption-enabled.sentinel"
    enforcement_level = "advisory"
}

policy "cloudtrail-log-file-validation-enabled" {
    source = "./policies/cloudtrail-log-file-validation-enabled.sentinel"
    enforcement_level = "advisory"
}

policy "cloudtrail-cloudwatch-logs-group-arn-present" {
  source = "./policies/cloudtrail-cloudwatch-logs-group-arn-present.sentinel"
  enforcement_level = "advisory"
}

policy "cloudtrail-logs-bucket-not-public" {
  source = "./policies/cloudtrail-logs-bucket-not-public.sentinel"
  enforcement_level = "advisory"
}

policy "cloudtrail-bucket-access-logging-enabled" {
  source = "./policies/cloudtrail-bucket-access-logging-enabled.sentinel"
  enforcement_level = "advisory"
}