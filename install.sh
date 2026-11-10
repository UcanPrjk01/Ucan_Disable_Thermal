SKIPMOUNT=false

PROPFILE=true

POSTFSDATA=true

LATESTARTSERVICE=true

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"


REPLACE="
"


print_modname() {
    ui_print " "
    ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    ui_print "          ⚡ UcanPrjk01 ⚡"
    ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    ui_print " "
    ui_print "     U C A N   D I S A B L E"
    ui_print "       T H E R M A L"
    ui_print " "
    ui_print "       UNIVERSAL EDITION"
    ui_print " "
    sleep 1

    ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    ui_print " "
    ui_print "  Module  : Ucan Disable Thermal"
    ui_print "  Version : v2.0"
    ui_print "  Build   : 11"
    ui_print "  Author  : UcanPrjk01"
    ui_print "  Device  : Universal"
    ui_print " "
    sleep 1

    ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    ui_print " "
    ui_print "             /\_/\\\\"
    ui_print "            ( o.o )"
    ui_print "             > ^ <"
    ui_print " "
    ui_print "         POWERED BY"
    ui_print "          UcanPrjk01"
    ui_print " "
    sleep 1

    ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    ui_print " "
    ui_print "  GitHub  : github.com/UcanPrjk01"
    ui_print "  Telegram: UcanPrjk01 Community"
    ui_print "  Website : ucanprjk01.ucanprjk-id.workers.dev"
    ui_print " "
    sleep 1

    ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    ui_print " "
    ui_print "       Initializing Module..."
    sleep 1
    ui_print "       Preparing Components..."
    sleep 1
    ui_print "       Applying Configuration..."
    sleep 1
    ui_print "       Installation Completed!"
    ui_print " "
    sleep 1

    ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    ui_print "       Ucan Disable Thermal v2.0"
    ui_print "          REBOOT DEVICE"
    ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    ui_print " "
}

# Copy/extract your module files into $MODPATH in on_install.

on_install() {
  # The following is the default implementation: extract $ZIPFILE/system to $MODPATH
  # Extend/change the logic to whatever you want
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

# Only some special files require specific permissions
# This function will be called after on_install is done
# The default permissions should be good enough for most cases

set_permissions() {
  # The following is the default rule, DO NOT remove
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/system/bin/P0 0 0 0755 0755
  set_perm $MODPATH/system/bin/P1 0 0 0755 0755

  # Here are some examples:
  # set_perm_recursive  $MODPATH/system/lib       0     0       0755      0644
  # set_perm  $MODPATH/system/bin/app_process32   0     2000    0755      u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0     2000    0755      u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0     0       0644
}

# You can add more functions to assist your custom script code
