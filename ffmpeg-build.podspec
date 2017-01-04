Pod::Spec.new do |s|

  s.name         = "ffmpeg-build"
  s.version      = "0.0.1"
  s.summary      = ""

  s.description  = <<-DESC
                   DESC

  s.homepage     = "https://github.com/kentdang/ffmpeg-build"
  s.license      = "MIT (example)"
  s.author             = { "kentdang" => "kentdang.it@gmail.com" }
  s.source       = { :git => "https://github.com/kentdang/ffmpeg-build.git", :commit => "0b9c2bdc69745f91cc74d03b6a8beb63ceccb81f" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
  
  s.default_subspec = 'precompiled'
  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'ffmpeg-ios-static-libs/include/**/*.h'
    ss.public_header_files = 'ffmpeg-ios-static-libs/include/**/*.h'
    ss.header_mappings_dir = 'ffmpeg-ios-static-libs/include'
    ss.vendored_libraries  = 'ffmpeg-ios-static-libs/lib/*.a'
    ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  end

end
