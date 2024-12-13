#!/usr/bin/perl -pi.bak

# NAME
#        pve-no-nag.pl - Proxmox VE no-subscription popup removal tool
#
# SYNOPSIS
#        pve-no-nag.pl [FILE]...
#
# DESCRIPTION
#        Searches and replaces entire offending piece of code in-place.
#
#        With no FILE, or when FILE is -, read standard input.
#
# USAGE, VERIFICATION AND REVERSION
#        perl pve-no-nag.pl /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
#
#               Applies the patch on the library at its usual installation path.
#               Requires no execute permission on the script.
#
#        diff -u /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js{.bak,}
#
#               Compares the applied changes against the retained copy of the original.
#
#        apt reinstall proxmox-widget-toolkit
#
#               Reverts the modification by reinstalling the original component.
#
# NOTES
#
#        Always creates a backup copy of the original into a .bak file.
#
# BUGS
#
#        Bugs can be reported at free-pmx GitHub repository <https://github.com/free-pmx/>.
#
# LICENSE
#        License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
#        This is free software: you are free to change and redistribute it.
#        There is NO WARRANTY, to the extent permitted by law.
#

use strict;
use warnings;

# original
my $o = quotemeta << 'EOF';
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

# replacement
my $r = << 'EOF';
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

BEGIN { undef $/; } s/$o/$r/;
