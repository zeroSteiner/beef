require 'rubygems'
require 'webrick'
require 'dm-core'
require 'dm-migrations'
require 'json'
require 'ansi'
require 'optparse'
require 'cgi'
require 'parseconfig'
require 'singleton'
require 'ipaddr'
require 'base64'

require 'lib/patches/webrick/httprequest'
require 'lib/patches/webrick/cookie'
require 'lib/patches/webrick/genericserver'
require 'lib/patches/webrick/httpresponse'
require 'lib/patches/webrick/httpservlet/filehandler.rb'

require 'lib/constants'

require 'lib/model/user'
require 'lib/model/commandmodule'
require 'lib/model/zombie'
require 'lib/model/log'
require 'lib/model/command'
require 'lib/model/result'
require 'lib/model/autoloading'
require 'lib/model/plugin'
require 'lib/model/http'
require 'lib/model/browserdetails'

require 'lib/crypto'
require 'lib/filter'

require 'lib/configuration'

require 'lib/console/banner'
require 'lib/console/commandline'
require 'lib/migration'

require 'lib/server/modules/common'
require 'lib/server/modules/requester'

require 'lib/server/httphandler'
require 'lib/server/httpcontroller'

require 'lib/server/httphookserver'

require 'lib/server/zombiehandler'
require 'lib/server/commandhandler'
require 'lib/server/publichandler'
require 'lib/server/requesterhandler'
require 'lib/server/inithandler'

require 'lib/logger'
require 'lib/modules/command'

require 'openssl'

# load command modules
Dir["#{$root_dir}/modules/commands/**/*.rb"].each do |command|
  require command
end