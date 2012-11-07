-- default desktop configuration for Fedora

import System.Posix.Env (getEnv)
import Data.Maybe (maybe)

import XMonad
import XMonad.Config.Desktop
import XMonad.Config.Gnome
import XMonad.Config.Kde
import XMonad.Config.Xfce
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/david/.xmobarrc"
    wallpaper <- spawnPipe "/usr/bin/awsetbg /home/david/Dropbox/Pictures/wallpapers/field_sun_glow.jpg"
    xmonad $ defaultConfig
        { terminal = "mate-terminal"
        , borderWidth = 2
        , normalBorderColor = "#cccccc"
        , focusedBorderColor = "#cd8b00"
        , modMask = mod4Mask -- Rebind mod to logo key
        , manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((mod4Mask, xK_Return   ), spawn "mate-terminal")
        , ((0, xK_Print), spawn "scrot")
        ]
