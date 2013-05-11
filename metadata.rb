maintainer       "Chris Roberts"
maintainer_email "chrisroberts.code@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures s3fs-fuse"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.8"

supports          "ubuntu"

depends           "bluepill"
depends           "rightscale"

recipe            "s3fs-fuse", "Installs s3fs"
recipe            "s3fs-fuse::install", "Recipe that is called to install s3fs"
recipe            "s3fs-fuse::bluepill", "Sets up bluepil monitoring when the attribute is set to true"

attribute "s3fs-fuse/s3_key",
  :display_name => "s3fs s3 auth key",
  :description => "Key used to authenticate user with s3",
  :recipes => [ "s3fs-fuse" ],
  :required => "required",
  :category => "s3fs"

attribute "s3fs-fuse/s3_secret",
  :display_name => "s3fs s3 secret",
  :description => "Secrect to the key used to authenticate user with s3",
  :recipes => [ "s3fs-fuse" ],
  :required => "required",
  :category => "s3fs"

attribute "s3fs-fuse/mounts",
  :display_name => "s3fs s3 mountpoints",
  :description => "The string representation of a hash containing mountpoints for the buckets. e.g [{:bucket => 'my-bucket', :path => '/mount/path', :tmp_dir => '/tmp/cache'}]",
  :recipes => [ "s3fs-fuse" ],
  :required => "required",
  :category => "s3fs"  

attribute "s3fs-fuse/bluepill",
  :display_name => "s3fs bluepill monitoring",
  :description => "Monitoring to restart s3fs when its memory goes crazy",
  :recipes => [ "s3fs-fuse" ],
  :required => "optional",
  :category => "s3fs"

attribute "s3fs-fuse/maxmemory",
  :display_name => "s3fs maxmemory",
  :description => "Restart s3fs when memory hits this threshold",
  :recipes => [ "s3fs-fuse" ],
  :required => "optional",
  :category => "s3fs"

attribute "s3fs-fuse/version",
  :display_name => "s3fs version",
  :description => "s3fs version",
  :recipes => [ "s3fs-fuse" ],
  :required => "optional",
  :category => "s3fs"

