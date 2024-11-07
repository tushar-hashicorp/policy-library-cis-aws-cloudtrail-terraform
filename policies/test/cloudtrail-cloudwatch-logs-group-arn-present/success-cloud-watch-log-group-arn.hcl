mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-success-cloud-watch-log-group-arn/mock-tfconfig-v2.sentinel"
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
    main = true
  }
}