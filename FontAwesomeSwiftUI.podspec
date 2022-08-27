Pod::Spec.new do |spec|
  spec.name          = "FontAwesomeSwiftUI"
  spec.version       = "0.0.1"
  spec.summary       = "Easy to use FontAwesome 5 in SwiftUI"
  spec.description   = "Easy to use FontAwesome 5 in SwiftUI"
  spec.homepage      = "https://github.com/alanbondarun/FontAwesomeSwiftUI"
  spec.license       = "MIT"
  spec.author        = { "alanbondarun" => "email@address.com" }
  spec.source        = { :git => "https://github.com/alanbondarun/FontAwesomeSwiftUI.git", :tag => "master" }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
end
