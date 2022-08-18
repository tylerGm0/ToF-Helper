# ToF-Helper-AHK

A **Tower of Fantasy** AHK Script -- Use at your own peril. Reminder, this is only for resolution 1920x1080 for the majority of the helper features. The rotation features and auto loot work regardless of resolution.

**Risk Factors**: I have used similar scripts in most games for over a decade and haven't been banned, but Your Mileage May Vary.

## HotKeys

| HotKey            | Function                | Description                                                                                       |
| ----------------- | ----------------------- | ------------------------------------------------------------------------------------------------- |
| **`**             | Active Menu Key         | Currently Blank, Building GUI Now (STILL ADDING THIS FEATURE)                                     |
| **ALT+`**         | Suspend Script          | Suspends the Script so that None of the HotKeys / Functions work. In case needed.                 |
| **ALT+F**         | Auto-Loot               | Repeatedly sends F Key Turn off when near NPC's                                                   |
| **ALT+R**         | Auto-Rotation           | Makes it so holding LButton down fires your rotation **SEE NOTE BELOW**                           |
| **CTRL+D**        | Decipher                | Makes sure it uses the Perfect Decipher first if you have it available                            |
| **SHIFT+D**       | Perfect Decipher        | Click Perfect Decipher                                                                            |
| **SHIFT+F**       | Forced Decipher         | Click Forced Decipher. If you have a perfect key it will skip using it and just force it.         |
| **P**             | Purchase 1              | Purchase 1 of the Item your mouse is hovered over in the vendor                                   | 
| **SHIFT+P**       | Purchase Max            | Purchase Maximum Available of the Item your mouse is hovered over                                 |
| **SHIFT+R**       | Roll -> Return          | Roll and then Click Skip then Click Return                                                        |
| **SHIFT+V**       | Skip Dialog and Return  | Skip Dialog then Hit Return.                                                                      |
| **X**             | Skip                    | Press this Key whenever you want to click the Skip Option in top right                            |
| **SHIFT+X**       | Return                  | Press this Key to hit the Return button in the Top Left                                           |
| **Middle Click**  | Teleport (SpaceRift)    | Hover over a SpaceRift and hit Middle Mouse Button (the mouse wheel) and will transmit you        |     
| **Numpad 1**      | Switch to WeaponSet 1   | Will open the N (Weapon) Menu and Switch to Weapon Set 1                                          |
| **Numpad 2**      | Switch to WeaponSet 2   | Will open the N (Weapon) Menu and Switch to Weapon Set 2                                          |
| **Numpad 3**      | Switch to WeaponSet 3   | Will open the N (Weapon) Menu and Switch to Weapon Set 3                                          |
| **Numpad 4**      | Config Relic Set 1      | Open and Config Relic Set 1 (STILL ADDING THIS FEATURE)                                           |
| **Numpad 5**      | Config Relic Set 2      | Open and Config Relic Set 2 (STILL ADDING THIS FEATURE)                                           |
| **Numpad 6**      | Config Relic Set 3      | Open and Config Relic Set 3 (STILL ADDING THIS FEATURE)                                           |
| **Numpad 7**      | Infinite Climb          | Press this while on Wall to instantly climb up a ways without using stamina **SEE NOTE BELOW**    |
| ----------------- | ----------------------- | ------------------------------------------------------------------------------------------------- |
| **F13**           | Use Extras              | Turn on the use of the Extra buttons (1/2/3) **SEE NOTE BELOW**                                   |
| **F14**           | Use 1                   | Turn on the use of the 1 skill.                                                                   |
| **F15**           | Use 2                   | Turn on the use of the 2 skill.                                                                   |
| **F16**           | Use 3                   | Turn on the use of the 3 skill.                                                                   |
| **F17**           | Use 1                   | Toggle 1 2 and 3 skill.                                                                           |
| ----------------- | ----------------------- | ------------------------------------------------------------------------------------------------- |
| **Numpad+Minus**  | Reduce Volume           | Reduces Volume in Increments of 15                                                                |
| **Numpad+Plus**   | Increase Volume         | Increases Volume in Increments of 15                                                              |
| **Numpad+Mult**   | Mute / Unmute           | Flips Volume for This App from Muted to Unmuted.                                                  |


**Auto-Rotation Note/Use Extras:** Please note that the way Auto-Rotation works is turning off via special KeyBinds. So by default ALT+R turns on
your rotation, however, you also have access to adding in abilities (Extras) into the rotation via Use1/Use2/Use3, these are done via the F13/F14/F15/F16
HotKeys. If you do not know how to or have a keyboard able to use these Function keys, you can go to **modules/Combat/Base.ahk** and change the bindings

**Infinite Climb Note:** Thank you to ToFU-AHK-Flex for this as my own Infinite Climb was sub-par, his had perfect timings and never failed.
