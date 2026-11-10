<div align="center">

<img src="assets/banner.png" alt="Ucan Disable Thermal" width="100%">

<br>

[![Release](https://img.shields.io/github/v/release/UcanPrjk01/Ucan_Disable_Thermal?style=for-the-badge&color=7c3aed&labelColor=0b0618&label=release)](https://github.com/UcanPrjk01/Ucan_Disable_Thermal/releases/latest)
[![Downloads](https://img.shields.io/github/downloads/UcanPrjk01/Ucan_Disable_Thermal/total?style=for-the-badge&color=a855f7&labelColor=0b0618)](https://github.com/UcanPrjk01/Ucan_Disable_Thermal/releases)
[![Build](https://img.shields.io/github/actions/workflow/status/UcanPrjk01/Ucan_Disable_Thermal/release.yml?style=for-the-badge&color=8b5cf6&labelColor=0b0618&label=build)](https://github.com/UcanPrjk01/Ucan_Disable_Thermal/actions)
![Root](https://img.shields.io/badge/Magisk%20%7C%20KernelSU%20%7C%20APatch-8b5cf6?style=for-the-badge&labelColor=0b0618)

**[🌐 Website](https://ucanprjk01.github.io/Ucan_Disable_Thermal/)** · **[📥 Download](https://github.com/UcanPrjk01/Ucan_Disable_Thermal/releases/latest)** · **[📝 Changelog](CHANGELOG.md)** · **[🐛 Issues](https://github.com/UcanPrjk01/Ucan_Disable_Thermal/issues)**

</div>

---

<table>
<tr>
<td valign="middle">

## ✨ About

**Ucan Disable Thermal** is a systemless Android module that turns off thermal throttling services and replaces vendor thermal files, so the device is not slowed down when it gets warm.

Made by **UcanPrjk01**.

</td>
<td align="center" width="240">
<img src="assets/mascot.png" alt="Ucan mascot" width="220">
</td>
</tr>
</table>

> [!WARNING]
> Disabling thermal protection can cause **overheating** and long-term **battery or hardware damage**.
> Use at your own risk, keep an eye on the temperature, and never use it while charging in a hot place.

## 🔧 What it does

- Stops thermal services at boot (`thermal-engine`, `thermal-hal`, `mi_thermald`, `thermald`, and others) and forces their `init.svc.*` state to `stopped`
- Sets thermal zones to disabled and turns off `msm_thermal` and its core control
- Overlays vendor thermal binaries, libraries and scripts with empty files (systemless, nothing on `/system` is touched)
- Replaces the vendor `thermal-*.conf` profiles
- Sets `ro.vendor.dfps.enable` and `ro.vendor.smart_dfps.enable` to `false`

Everything is systemless, so **removing the module and rebooting restores stock behaviour**.

## 📲 Install

1. Download the latest `Ucan_Disable_Thermal-vX.Y.zip` from [Releases](https://github.com/UcanPrjk01/Ucan_Disable_Thermal/releases/latest).
2. Open **Magisk**, **KernelSU** or **APatch** → **Modules** → **Install from storage**.
3. Pick the zip, wait for it to finish, then **reboot**.

Updates arrive inside the manager app through `updateJson`.

<div align="center">
<sub>Made with 💜 by UcanPrjk01</sub>
</div>
