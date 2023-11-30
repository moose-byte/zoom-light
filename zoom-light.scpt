tell application "zoom.us" to activate

tell application "System Events"

    tell process "zoom.us"

        repeat

            if  (window "Zoom Meeting" exists)
                -- do something here (On Air light)
                -- for example, run a shell script:
                -- do shell script "command"
                tell application "Shortcuts Events" to run the shortcut named "Control Futton Light" with input "Off"

                repeat until not (window "Zoom Meeting" exists)
                    delay 1
                end repeat
                -- do something here
                -- for example, run a shell script:
                -- do shell script "command"
                tell application "Shortcuts Events" to run the shortcut named "Control Futton Light" with input "On"
            end if

        end repeat

    end tell

end tell