
Pod::Spec.new do |s|
  s.name             = 'JFrogSDK'
  s.version          = '1.0.0'
  s.summary          = 'This SDK allows you to integrate SpotIM into your iOS app.'
  s.description      = <<-DESC

## Welcome to the Spot.IM SDK

Spot.IM SDK provides an easy integration with [Spot.IM](http://www.spot.im) into a native iOS app.

Here's a sample app that shows how to use the Spot.IM SDK for iOS.

## Getting started

To use the SDK you will need an active Spot.IM account. If you don't have it, get one [here](http://www.spot.im).
You will need to know your Spot ID (which looks like 'sp_xxxxxxx').
If you don't know your Spot ID, login to the [admin dashboard](https://admin.spot.im) and have a look at the URL.

DESC

  s.homepage        = "http://www.spot.im"
  s.license         = { :type => 'CUSTOM', :file => 'LICENSE' }
  s.author          = { 'Hernan Arber' => 'hernan@spot.im' }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

# the Pre-Compiled Framework:
  s.source          = { :http => 'https://s3.amazonaws.com/spot.im.artifacts/ios/Latest/Spot_IM.framework.zip' }
  s.ios.vendored_frameworks = 'Spot_IM.framework'

end