Pod::Spec.new do |s|
  s.name         = "ffmpeg-build"
  s.version      = "3.2"
  s.requires_arc = false
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/kentdang/ffmpeg-build.git", :tag => "3.2", :submodules => false }
  s.default_subspec = 'precompiled'
  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'ffmpeg-ios-static-libs/include/**/*.h'
    ss.public_header_files = 'ffmpeg-ios-static-libs/include/**/*.h'
    ss.header_mappings_dir = 'ffmpeg-ios-static-libs/include'
    ss.vendored_libraries  = 'ffmpeg-ios-static-libs/lib/*.a'
    ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  end
end
