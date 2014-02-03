Pod::Spec.new do |s|
  s.name         = "VAHelper"
  s.version      = "1.0.0"
  s.summary      = "Helper methods."
  s.homepage     = "https://github.com/alexveremeenko/VAHelper"
  s.license      = 'MIT'
  s.author       = { "Veremeenko Alexandr" => "asver88@gmail.com" }
  s.source       = { :git => "https://github.com/alexveremeenko/VAHelper.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.source_files = 'VAHelper/*.{h,m}'
  s.requires_arc = true
end
