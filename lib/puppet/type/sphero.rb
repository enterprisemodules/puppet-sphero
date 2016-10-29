require 'puppet_x/enterprisemodules/sphero/core'

module Puppet
  #
  Type.newtype(:sphero) do
    include EasyType

    desc <<-EOD
    EOD


    ensurable
    parameter :name
    parameter :speed
    property  :color
    property  :position

  end
end
