<?php
define("SFB_PATH",			drupal_get_path("module", "tntbase_sfbrowser")."/sfbrowser/");		// path of sfbrowser (relative to the page it is run from)
define("SFB_BASE",			"/");		// upload folder (relative to sfbpath)

define("SFB_LANG",			"en_EN");				// the language ISO code
define("PREVIEW_BYTES",		600);				// ASCII preview ammount
define("SFB_DENY",			"php,php3,phtml");	// forbidden file extensions

define("FILETIME",			"j-n-Y H:i");		// file time display

define("SFB_ERROR_RETURN",	"<html><head><meta http-equiv=\"Refresh\" content=\"0;URL=http:/\" /></head></html>");

define("SFB_PLUGINS",		"");

define("SFB_DEBUG",			false);
?>