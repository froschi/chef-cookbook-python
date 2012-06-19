packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    python2.6
  /
when "precise"
  packages |= %w/
    python2.6
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
