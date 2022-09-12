# How to deploy compiled framework

Example framework Name: JFrogSDK

** Step1. Create JFrogSDK.xcframework. It will support iOS, M1 Simu, Intel Simu
  1. Open this link and get complete instructions 
  
  https://github.com/awasthi027/Xcode_lib_framework_issues/blob/master/README.md
  
  
** Step 2. Once framework created. Create on git repository (JFrogSDK) and clone it on local machice
  
** Step 3. Copy paste same JFrogSDK.xcframework in respositry
  
  
** Step 4. Create  JFrogSDK.podspec file in same respositoy
  
  Now respository will have file
    /JFrogSDK/JFrogSDK.xcframework
    /JFrogSDK/JFrogSDK.podspec 
    
** Step 5. JFrogSDK.podspec  will have this details 
  
  =========================================================================
  
  
Pod::Spec.new do |s|
    s.name         = "JFrogSDK"
    s.version      = "1.0.0"
    s.summary      = "A brief description of MyFramework project."
    s.description  = <<-DESC
    An extended description of MyFramework project.
    DESC
    s.homepage     = "https://github.com/example/"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
    s.author             =  "example@gmail.com"
    s.source       = { :git => "https://github.com/example/JFrogSDK.git", :tag => "#{s.version}" }
    s.public_header_files = "JFrogSDK.xcframework/**/JFrogSDK.framework/Headers/*.h"
    s.source_files = "JFrogSDK.xcframework/**/JFrogSDK.framework/Headers/*.h"
    s.vendored_frameworks = "JFrogSDK.xcframework"
    s.platform = :ios
    s.swift_version = "5.5"
    s.ios.deployment_target  = '12.0'
    
    s.framework  = "Foundation"
end
  
  
  ==========================================================================


** Step 6. Only we need to push compiled framdwork and podspec file
  
    /JFrogSDK/JFrogSDK.xcframework
    /JFrogSDK/JFrogSDK.podspec // Update tag number in this file which you will deploy example 1.0.0n
    
License file only if you specified in podspec file. In my case I haven't specified

** Step 7. Pushed the changes
  
** Step 8. validate pod spec with command
  
pod lint spec JFrogSDK.podspec --vervose 
  
or with details 
  
pod lib lint JFrogSDK.podspec --no-clean --verbose
  
  
** Step 9. Create tag git tag 1.0.0 and push tag git tag origin 1.0.0
  
** Step 10. Push framework tag on pod
  
pod trunk push JFrogSDK.podspec
   
** Congrats That's all, You have done it, How to consume now
   

** Step 1. Create sample

cd projectpath

pod init 

Add in pod file 

pod 'JFrogSDK', '1.0.2'

pod install 

** Done That's all 

** FAQ When you pod spec lint JFrogSDK.podspec you may below errors 

** Not finding headers

(Add header path like "JFrogSDK.xcframework/**/JFrogSDK.framework/Headers/*.h")


 ** - ERROR | [iOS] unknown: Encountered an unknown error (The plist file at path `/private/var/folders/84/9kg991n93qg94rl36s3bj4cc0000gn/T/CocoaPods-Lint-20220912-406-cu6tgp-JFrogSDK/Pods/JFrogSDK/JFrogSDK.xcframework/Info.plist` doesn't exist.) during validation
 
 
You might be missing .plist in your git respository. May be because of .ignore file or other check on browser whether file is present or not

If not

.. project path 

run commands 
git add . -f
git commit -m "Commit update files"
update podspec file
and create new tag.
