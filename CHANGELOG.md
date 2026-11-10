Stops thermal services at boot (thermal-engine, thermal-hal, mi_thermald, thermald, and others) and forces their init.svc.* state to stopped
Sets thermal zones to disabled and turns off msm_thermal and its core control
Overlays vendor thermal binaries, libraries and scripts with empty files (systemless, nothing on /system is touched)
Replaces the vendor thermal-*.conf profiles
Sets ro.vendor.dfps.enable and ro.vendor.smart_dfps.enable to false
