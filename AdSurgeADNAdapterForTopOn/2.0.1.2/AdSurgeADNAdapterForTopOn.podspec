Pod::Spec.new do |s|
  s.name             = 'AdSurgeADNAdapterForTopOn'
  s.version          = '2.0.1.2'
  s.summary          = 'AdSurgeADN adapter used for mediation with the TopOn SDK'
  s.description      = 'Custom mediation adapter for integrating AdSurgeADN with the TopOn(TPNiOS) SDK.'
  s.homepage         = 'https://www.adsurge.com'
  s.author           = { 'AdSurge' => 'support@serafino.co' }

  s.license          = {
    :type => 'Commercial',
    :text => <<-LICENSE
                    Copyright 2025 AdSurge Corp. All rights reserved.
                    AdSurgeSDK is available under a commercial license.(https://www.adsurge.com/privacy/privacypolicy.html).
                LICENSE
  }

  s.platform         = :ios, '12.0'
  s.static_framework = true

  # The custom base adapter APIs (ATBaseMediationAdapter / ATBaseInitAdapter) require TopOn SDK >= 6.4.94.
  s.dependency 'TPNiOS', '>= 6.4.94'
  s.dependency 'AdSurgeADN', '~> 2.0.1'

  s.source = { :http => 'https://staticfile.qq.com/odc-ios/pa113077ecdfc4a259ac34e6ce477620f/612da0a35f764cbc83b41a2d9a4e72d0/AdSurgeADNAdapterForTopOn.zip' }
  s.vendored_frameworks = 'AdSurgeADNAdapterForTopOn.xcframework'
end
