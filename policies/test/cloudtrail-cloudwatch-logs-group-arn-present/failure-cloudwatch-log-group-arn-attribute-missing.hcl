mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-cloudwatch-logs-group-arn-attribute-missing/mock-tfconfig-v2.sentinel"
  }
}

mock "tfresources" {
  module {
    source = "../../../modules/tfresources/tfresources.sentinel"
  }
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}


param "verify_cloudwatch_logs_group_arn_present" {
  value = true
}

test {
  rules = {
    main = false
  }
}