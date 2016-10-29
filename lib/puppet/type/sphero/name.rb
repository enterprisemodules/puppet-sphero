newparam(:name) do
  include EasyType

  desc <<-EOD
    The full name.
  EOD

  isnamevar

  to_translate_to_resource do | raw_resource|
  end


end
