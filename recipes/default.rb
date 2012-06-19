case node[:lsb][:codename]
when "lucid"
  include_recipe "python::2.6"
when "precise"
  include_recipe "python::2.7"
end
