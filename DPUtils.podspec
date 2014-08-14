Pod::Spec.new do |s|
  s.name         = "DPUtils"
  s.version      = "0.0.1"
  s.summary      = "DPUtils"
  s.homepage     = "http://dpostigo.com"
  s.license      = 'BSD'
  s.author       = { "Dani Postigo" => "dani@firstperson.is" }
  s.source       = { :git => "https://github.com/dpostigo/DPUtils.git", :tag => s.version.to_s }
  
  s.requires_arc = true

  s.ios.deployment_target = '4.3'
  s.osx.deployment_target = '10.7'

  # s.ios.source_files = 'DPUtils/*.{h,m}', 'DPUtils/ios/[^UIKit,Foundation]/**/*.{h,m}'

  s.subspec 'UIKit' do |uikit|

    uikit.ios.frameworks   = 'Foundation', 'QuartzCore', 'UIKit', 'CoreGraphics'
    uikit.ios.source_files = 'DPUtils/ios/UIKit/*.{h,m}'

    uikit.subspec 'UIView' do |uiview|
      uiview.ios.source_files = 'DPUtils/ios/UIKit/UIView/*.{h,m}'
    end
  end

  s.subspec 'Foundation' do |foundation|
    foundation.ios.source_files = 'DPUtils/Foundation/*.{h,m}', 'DPUtils/ios/Foundation/*.{h,m}'
    foundation.osx.source_files = 'DPUtils/Foundation/*.{h,m}', 'DPUtils/osx/Foundation/*.{h,m}'
    foundation.ios.dependency   'DPUtils/UIKit'
  end

  s.subspec 'AppKit' do |appkit|
    appkit.ios.source_files = 'DPUtils/ios/AppKit/*.{h,m}'
    appkit.osx.source_files = 'DPUtils/osx/AppKit/*.{h,m}'
    appkit.osx.dependency   'DPUtils/Foundation'
  end



  s.subspec 'CoreData' do |coredata|
    # coredata.source_files = 'DPUtils/coredata/*.{h,m}'
    coredata.ios.source_files = 'DPUtils/ios/CoreData/*.{h,m}'
  end


  s.subspec 'MapKit' do |mapkit|
    # mapkit.source_files = 'DPUtils/MapKit/*.{h,m}'
    mapkit.ios.source_files = 'DPUtils/ios/MapKit/*.{h,m}'
  end



  s.osx.source_files = 'DPUtils/osx/*.{h,m}', 'DPUtils/osx/[^AppKit]/**/*.{]h,m}'



  s.dependency  'JMSimpleDate'
  s.frameworks   = 'Foundation', 'QuartzCore', 'UIKit', 'CoreGraphics'
  # s.ios.frameworks   = 'Foundation', 'QuartzCore', 'UIKit', 'CoreGraphics'



  
end
