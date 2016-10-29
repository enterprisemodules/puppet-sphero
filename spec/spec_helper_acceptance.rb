require 'beaker-rspec/spec_helper'
require 'easy_type_helpers/acceptance'

unless ENV['RS_PROVISION'] == 'no'
  # This will install the latest available package on el and deb based
  # systems fail on windows and osx, and install via gem on other *nixes
  foss_opts = { :default_action => 'gem_install' }

  if default.is_pe?; then install_pe; else install_puppet( foss_opts ); end

  hosts.each do |host|
    if host['platform'] =~ /debian/
      on host, 'echo \'export PATH=/var/lib/gems/1.8/bin/:${PATH}\' >> ~/.bashrc'
    end

    on host, "mkdir -p #{host['distmoduledir']}"
  end
end

APPLIANCE_URL = 'https://192.168.59.10:215'

UNSUPPORTED_PLATFORMS = ['Ubuntu','windows','AIX']

RSpec.configure do |c|
  # Project root
  proj_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  # Readable test descriptions
  c.formatter = :documentation
  c.order     = :defined
  c.include Helpers

  # Configure all nodes in nodeset
  c.before :suite do
    # Install module and dependencies

    copy_module_to(master, :source => proj_root, :target_module_path => '/etc/puppetlabs/code/environments/production/modules', :module_name => 'zfs_appliance')

    modules = [
      'hajee-easy_type',
    ]

    modules.each do  |module_name |
      on(default, puppet('module', 'install --module_repository=http://forge.enterprisemodules.com', module_name), :acceptable_exit_codes => [0,1] )
    end

  end
end
