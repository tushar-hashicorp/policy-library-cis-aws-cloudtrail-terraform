mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-success-cloudtrail-has-private-s3-bucket-with-mixed-references/mock-tfconfig-v2.sentinel"
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

test {
  rules = {
    main = true
  }
}