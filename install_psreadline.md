# PowerShell PSReadLine Setup Guide

## 1. Install PSReadLine Module
To install the PSReadLine module, follow these steps:

1. Open PowerShell as Administrator by searching for "PowerShell" in Windows, right-clicking it, and selecting **Run as administrator**.
2. Run the following command:
   ```powershell
   Install-Module PSReadLine -Force
   ```

## 2. Add Script to PowerShell Profile
To enable PSReadLine customization, you need to edit the appropriate PowerShell profile script.

1. In PowerShell, type:
   ```powershell
   notepad <option>
   ```
   Replace `<option>` with one of the following:
   
   | Scope                           | Profile Path                                    | Affects                                        |
   |---------------------------------|------------------------------------------------|------------------------------------------------|
   | **Current User, Current Host**  | `$PROFILE`                                     | Current user, current PowerShell session      |
   | **All Users, Current Host**     | `$PSHOME\Profile.ps1`                          | All users, current PowerShell session        |
   | **Current User, All Hosts**     | `$PROFILE.AllUsersAllHosts`                    | Current user, all PowerShell sessions        |
   | **All Users, All Hosts**        | `$PSHOME\Profile.AllUsersAllHosts.ps1`         | All users, all PowerShell sessions           |

   **Example:**
   ```powershell
   notepad $PSHOME\Profile.AllUsersAllHosts.ps1
   ```

2. In the opened Notepad window, add the following lines:
   ```powershell
   # Import the PSReadLine module
   Import-Module PSReadLine

   # Enable command prediction from history
   Set-PSReadLineOption -PredictionSource History

   # Customize inline prediction color to bright green
   Set-PSReadLineOption -Colors @{ InlinePrediction = '#03fc2c' }
   ```

3. Save and close Notepad.

## 3. Restart PowerShell
After making the changes, restart PowerShell to apply the new settings.

---
Now, PowerShell will display command predictions based on your command history in **green** (`#03fc2c`). 🎉
