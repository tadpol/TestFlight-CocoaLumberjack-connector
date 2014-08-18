Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "TestFlight-CocoaLumberjack-connector"
  s.version      = "0.0.2"
  s.summary      = "A connector for TestFlight to CocoaLumberjack."
  s.description  = <<-DESC
                   A connector for TestFlight to CocoaLumberjack.

                   Pretty simple.

                   DESC
  s.homepage     = "https://github.com/tadpol/TestFlight-CocoaLumberjack-connector"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Michael Conrad Tadpol Tilstra" => "tadpol@tadpol.org" }
  s.social_media_url   = "http://twitter.com/tadpol"

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/tadpol/TestFlight-CocoaLumberjack-connector.git",
                     :tag => "0.0.2" }
  s.source_files  = "TADTestFlightLogger.{h,m}"
  s.public_header_files = "TADTestFlightLogger.h"
  s.requires_arc = true
  s.dependency "CocoaLumberjack"
  s.dependency 'TestFlightSDK', '~> 3.0'

end
#  vim: set ai et sw=2 ts=2 ft=ruby :
