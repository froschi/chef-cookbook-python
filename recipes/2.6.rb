include_recipe "libbz2"
include_recipe "libdb"
include_recipe "libncursesw"
include_recipe "libreadline"
include_recipe "libsqlite"
include_recipe "mime-support"
include_recipe "python-minimal"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    python2.6
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
