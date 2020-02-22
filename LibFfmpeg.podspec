Pod::Spec.new do |s|

  s.name         = "LibFfmpeg"
  s.version      = "0.0.2"
  s.summary      = "ffmpeg code library"
  s.description  = "Ffmpeg code base, video processing base"

  s.homepage     = "https://github.com/midoks/LibFfmpeg"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "midoks" => "midoks@163.com" }
  s.requires_arc = false

  s.platform     = :osx, '10.7'
  # s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/midoks/LibFfmpeg", :tag => "0.0.2", :submodules => true }
  s.default_subspec = 'precompiled'
  # s.source       = { :git => "https://github.com/midoks/LibFfmpeg", :tag => "0.0.2"}

  
  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'source/include/**/*.h'
    ss.public_header_files = 'source/include/**/*.h'
    ss.header_mappings_dir = 'source/include'
    ss.vendored_libraries  = 'source/lib/*.a'
    ss.frameworks  = 'AVFoundation', 'VideoToolbox', 'AudioToolbox', 'CoreVideo', 'CoreMedia'
    ss.libraries =  'iconv', 'lzma', 'bz2', 'z', 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale'
  end

end
