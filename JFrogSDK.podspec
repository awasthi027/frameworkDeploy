
Pod::Spec.new do |s|
      s.name             = "JFrogSDK"
      s.version          = "1.0.0"
      s.summary          = "Testing xc framework deployment..."

      s.description      = "This is the testing library push for zip. Creating sample and learning how to push zip file and consume"

      s.homepage         = "HOMEPAGE"
      s.author            = { 'Name' => 'myemail.awasthi.com' }
      s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }
      s.source           = { :http => "https://github.com/awasthi027/frameworkDeploy.git":tag => "#{s.version}"}

      s.platform         = :ios, '12.0'
      s.requires_arc     = true

      s.vendored_frameworks = 'JFrogSDK.xcframework'
      s.framework  = "Foundation"

end