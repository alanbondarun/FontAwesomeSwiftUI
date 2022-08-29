Pod::Spec.new do |spec|
  spec.name          = "FontAwesomeSwiftUI"
  spec.version       = "1.0.4"
  spec.summary       = "Easy to use FontAwesome 5 in SwiftUI"
  spec.description   = "Easy to use FontAwesome 5 in SwiftUI"
  spec.homepage      = "https://github.com/scatterlab/FontAwesomeSwiftUI"
  spec.license       = "MIT"
  spec.author        = { "alanbondarun" => "alanbondarun@scatterlab.co.kr" }
  spec.source        = { :git => "https://github.com/scatterlab/FontAwesomeSwiftUI.git", :tag => "master" }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
end
