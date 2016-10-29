require 'easy_type'

Puppet::Type.type(:sphero).provide(:simple) do
  include EasyType

  desc 'Manage a Sphero robot'
  mk_resource_methods
end
