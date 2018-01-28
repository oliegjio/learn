### Install .Net Framework 3.5 If Error Occured:
1. Create Windows 10 installation USB.
2. Open CMD in Windows 10 installaion.
3. ```DISM /Online /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:E:\sources\sxs``` where ```E:\``` is drive letter of the USB stick.

### Debload Windows 10:
[Github: W4RH4WK/Debloat-Windows-10](https://github.com/W4RH4WK/Debloat-Windows-10)

### Remove Dead Items from Task Manager Startup Tab:
Edit keys with Regedit in: `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run`.
