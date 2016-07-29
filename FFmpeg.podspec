Pod::Spec.new do |s|
  s.name         = "FFmpeg"
  s.version      = "3.0.0"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/maytrue/FFmpeg-iOS"
  
  s.license      = { :type => 'LGPL', :file => 'LICENSE' }
  s.author       = { "Guowei Zou" => "guowzou@gmail.com" } 
  s.requires_arc = false
  #s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/maytrue/FFmpeg-iOS.git", :tag => "n3.1"}
  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'ios-static-libs/include/**/*.h'
    ss.public_header_files = 'ios-static-libs/include/**/*.h'
    ss.header_mappings_dir = 'ios-static-libs/include'
    ss.vendored_libraries  = 'ios-static-libs/lib/*.a'
    ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  end

end
