#!/bin/bash
osascript << EOF
tell application "Safari"
  set safariWindows to every window
  repeat with win in safariWindows
    set safariTabs to every tab in win
    repeat with t in safariTabs
      if (URL of t contains "youtube") then
        tell t to do JavaScript "document.querySelector('.ytp-play-button').click();"
      end if
    end repeat
  end repeat
end tell
