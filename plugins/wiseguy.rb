##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Wiseguy"
author "Brendan Coles <bcoles@gmail.com>" # 2011-08-07
version "0.1"
description "Wiseguy is a WSGI compliant FastCGI server built on top of python-fastcgi and the Open Market FCGI library. It contains a few patches to deal with various bad behaviors under high load."
website "https://code.google.com/p/msolo/wiki/wiseguy"



# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	if @headers["server"] =~ /^wiseguy\/([^\s]+)$/
		m << { :version=>"#{$1}" }
	end

	# Return passive matches
	m
end
end

