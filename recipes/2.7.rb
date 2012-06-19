packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    python2.7
  /
when "precise"
  packages |= %w/
    python2.7
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
