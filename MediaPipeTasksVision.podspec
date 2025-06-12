Pod::Spec.new do |s|
    s.name             = 'MediaPipeTasksVision'
    s.version          = '0.0.1'
    s.authors          = 'Google Inc.'
    s.license          = { :type => 'Apache',:file => "LICENSE" }
    s.homepage         = 'https://github.com/google/mediapipe'
    s.source           = { :git => ".git", :tag => "#{s.version}" }
    s.summary          = 'MediaPipe Task Library - Vision'
    s.description      = 'The Vision APIs of the MediaPipe Task Library'
  
    s.ios.deployment_target = '15.0'
  
    s.module_name = 'MediaPipeTasksVision'
    s.static_framework = true
    s.library = 'c++'
    s.vendored_frameworks = [
      'frameworks/MediaPipeTasksVision.xcframework',
      'frameworks/MediaPipeTasksCommon.xcframework'
    ]
    s.user_target_xcconfig = {
      'OTHER_LDFLAGS[sdk=iphonesimulator*]' => '$(inherited) -force_load "$(PODS_ROOT)/MediaPipeTasksVision/frameworks/graph_libraries/libMediaPipeTasksCommon_simulator_graph.a" -Wl,-weak_reference_mismatches,weak',
      'OTHER_LDFLAGS[sdk=iphoneos*]' => '$(inherited) -force_load "$(PODS_ROOT)/MediaPipeTasksVision/frameworks/graph_libraries/libMediaPipeTasksCommon_device_graph.a" -Wl,-weak_reference_mismatches,weak',
    }
    s.frameworks = 'Accelerate', 'CoreMedia', 'AssetsLibrary', 'CoreFoundation', 'CoreGraphics', 'CoreImage', 'QuartzCore', 'AVFoundation', 'CoreVideo'
    s.preserve_paths = 'frameworks/graph_libraries/*.a'
end