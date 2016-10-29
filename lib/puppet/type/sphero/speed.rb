newproperty(:speed) do
  include EasyType

  desc <<-EOD
    The speed ath which the Sphero moves.
  EOD

  to_translate_to_resource do | raw_resource|
  end


end
