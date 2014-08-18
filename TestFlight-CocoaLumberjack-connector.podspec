Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "TestFlight-CocoaLumberjack-connector"
  s.version      = "0.0.1"
  s.summary      = "A connector for TestFlight to CocoaLumberjack."
  s.description  =  "A connector for TestFlight to CocoaLumberjack."
  s.homepage     = "http://EXAMPLE/TestFlight-CocoaLumberjack-connector"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "Michael Conrad Tadpol Tilstra" => "tadpol@tadpol.org" }
  s.social_media_url   = "http://twitter.com/tadpol"

  s.platform     = :ios, "7.0"
  s.source       = { :git => "http://EXAMPLE/TestFlight-CocoaLumberjack-connector.git",
                     :tag => "0.0.1" }
  s.source_files  = "TADTestFlightLogger.{h,m}"
  s.public_header_files = "TADTestFlightLogger.h"
  s.requires_arc = true
  s.dependency "CocoaLumberjack"
  s.dependency 'TestFlightSDK', '~> 3.0'

end
#  vim: set ai et sw=2 ts=2 ft=ruby :
