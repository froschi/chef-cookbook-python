maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures python"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

recipe           "python::2.6", ""
recipe           "python::2.7", ""

depends          "libbz2", ">= 0.0.1"
depends          "libdb", ">= 0.0.1"
depends          "libncursesw", ">= 0.0.1"
depends          "libreadline", ">= 0.0.1"
depends          "libsqlite", ">= 0.0.1"
depends          "mime-support", ">= 0.0.1"
depends          "python-minimal", ">= 0.0.1"
