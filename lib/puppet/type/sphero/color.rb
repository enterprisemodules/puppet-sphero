newproperty(:color) do
  include EasyType

  desc <<-EOD
    The color of the Sphero light.
  EOD

  to_translate_to_resource do | raw_resource|
  end


end
