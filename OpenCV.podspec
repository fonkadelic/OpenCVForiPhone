#
# Be sure to run `pod spec lint OpenCV.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec.
#
Pod::Spec.new do |s|

  # ――― REQUIRED VALUES ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.name      = "OpenCV"
  s.version   = "0.0.1"
  s.summary   = "A short description of OpenCV."
  s.homepage  = "http://EXAMPLE/OpenCV"

  # Specify the authors of the library, with email addresses. You can often find
  # the email addresses of the authors by using the SCM log. E.g. $ git log
  #
  s.author    = { "Bernhard Loibl" => "bernhard.loibl@googlemail.com" }
  # s.authors = { "Bernhard Loibl" => "bernhard.loibl@googlemail.com", "other author" => "and email address" }
  #
  # If absolutely no email addresses are available, then you can use this form instead.
  #
  # s.author   = 'Bernhard Loibl', 'other author'

  # Specify the location from where the source should be retreived.
  #
  s.source    = { :git => "http://github.com/fonkadelic/OpenCVForiPhone.git" }
  # s.source    = { :git => "http://EXAMPLE/OpenCV.git", :tag => "0.0.1" }
  # s.source   = { :svn => 'http://EXAMPLE/OpenCV/tags/1.0.0' }
  # s.source   = { :hg  => 'http://EXAMPLE/OpenCV', :revision => '1.0.0' }

  # Specify the license details. Only if no dedicated file is available include
  # the full text of the license.
  #
  #s.license  = {
  #  :type => 'MIT',
  #  :file => 'LICENSE',
  ##  :text => 'Permission is hereby granted ...'
  #}

  # A list of file patterns which select the source files that should be
  # added to the Pods project. If the pattern is a directory then the
  # path will automatically have '*.{h,m,mm,c,cpp}' appended.
  #
  # Alternatively, you can use the FileList class for even more control
  # over the selected files.
  # (See http://rake.rubyforge.org/classes/Rake/FileList.html.)
  #
  # s.source_files = 'Classes', 'Classes/**/*.{h,m}'

  # ――― OPTIONAL VALUES ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # s.description = 'An optional longer description of OpenCV.'

  # If this Pod runs only on iOS or OS X, then specify that with one of
  # these, or none if it runs on both platforms.
  # If the pod runs on both plafroms but presents different deployment
  # targets, source files, etc. create two different pods: `OpenCV-iOS'
  # and `OpenCV-OSX'.
  #
  # s.platform = :ios
  # s.platform = :ios, { :deployment_target => "5.0" }
  # s.platform = :osx
  # s.platform = :osx, { :deployment_target => "10.7" }

  # A list of resources included with the Pod. These are copied into the
  # target bundle with a build phase script.
  #
  # Also allows the use of the FileList class like `source_files does.
  #
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # A list of paths to remove after installing the Pod without the
  # `--no-clean' option. These can be examples, docs, and any other type
  # of files that are not needed to build the Pod.
  #
  # *NOTE*: Never remove license and README files.
  #
  # Also allows the use of the FileList class like `source_files does.
  #
  # s.clean_path  = "examples"
  s.clean_paths = "OpenCVClient.xcodeproj", "OpenCVClient", "opencvbuild.sh"

  # Specify a list of frameworks that the application needs to link
  # against for this Pod to work.
  #
  # s.framework  = 'SomeFramework'
  s.frameworks = 'OpenCV', 'AVFoundation', 'ImageIO', 'libz', 'CoreVideo', 'CoreMedia'

  # Specify a list of libraries that the application needs to link
  # against for this Pod to work.
  #
  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'

  # If this Pod uses ARC, specify it like so.
  #
  # s.requires_arc = true

  # Finally, specify any Pods that this Pod depends on.
  #
  # s.dependency 'JSONKit', '~> 1.4'

        # ――― EXTRA VALUES ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(SRCROOT)/Pods/OpenCV' }

end
