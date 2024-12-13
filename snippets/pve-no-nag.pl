#!/usr/bin/perl -pi.bak

#
# Proxmox VE no-subscription popup removal tool
#
# Maintained at: https://github.com/free-pmx/
#
# Usage:
#
#   perl pve-no-nag.pl /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
# 
# Check:
#
#   diff -u /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js{.bak,}
#
# Revert:
#
#   apt reinstall proxmox-widget-toolkit
#

use strict;
use warnings;


my $_PATTERN_ = << 'EOF';
    checked_command: function(orig_cmd) {
	Proxmox.Utils.API2Request(
	    {
		url: '/nodes/localhost/subscription',
		method: 'GET',
		failure: function(response, opts) {
		    Ext.Msg.alert(gettext('Error'), response.htmlStatus);
		},
		success: function(response, opts) {
		    let res = response.result;
		    if (res === null || res === undefined || !res || res
			.data.status.toLowerCase() !== 'active') {
			Ext.Msg.show({
			    title: gettext('No valid subscription'),
			    icon: Ext.Msg.WARNING,
			    message: Proxmox.Utils.getNoSubKeyHtml(res.data.url),
			    buttons: Ext.Msg.OK,
			    callback: function(btn) {
				if (btn !== 'ok') {
				    return;
				}
				orig_cmd();
			    },
			});
		    } else {
			orig_cmd();
		    }
		},
	    },
	);
    },
EOF

my $_SUBSTITUTE_ = << 'EOF';
    checked_command: function(orig_cmd) {
	Proxmox.Utils.API2Request(
	    {
		url: '/nodes/localhost/subscription',
		method: 'GET',
		failure: function(response, opts) {
		    Ext.Msg.alert(gettext('Error'), response.htmlStatus);
		},
		success: function(response, opts) {
			orig_cmd();
		},
	    },
	);
    },
EOF


BEGIN {undef $/;}

s/\Q$_PATTERN_\E/$_SUBSTITUTE_/;
