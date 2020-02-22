Pod::Spec.new do |s|

  s.name         = "LibFfmpeg"
  s.version      = "0.0.2"
  s.summary      = "ffmpeg code library"
  s.description  = "Ffmpeg code base, video processing base"

  s.homepage     = "https://github.com/midoks/LibFfmpeg"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "midoks" => "midoks@163.com" }
  s.requires_arc = false

  s.platform     = :ios

  #  When using multiple platforms
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.7"

  s.source       = { :git => "https://github.com/midoks/LibFfmpeg", :tag => "0.0.2", :submodules => true }

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'source/include/**/*.h'
    ss.public_header_files = 'source/include/**/*.h'
    ss.header_mappings_dir = 'source/include'
    ss.vendored_libraries  = 'source/lib/*.a'
    ss.libraries = "c++", 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  end

end
