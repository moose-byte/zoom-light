## Zoom Light 💡

This workflow automatically turns off the light behind when I start a Zoom Meeting.
It uses Apple HomeKit to control the light.
It's also smart enough to only run if I'm home.

### Requirements

You'll have to have an Apple Shortcut that turns your light on or off, or runs any action you want.
Here is a link to my own

https://www.icloud.com/shortcuts/ce026f1307774a5aa71e8a894ef7b12b

### Install

This workflow relies on `launchd` to run in the background.

1. Copy `zoom-light.plist` into `~/Library/LaunchAgents/`
2. Tell `launchd` that you always want the script to run

    ```shell
      launchctl load -w ~/Library/LaunchAgents/zoom-light.plist
    ```
3. That's it! If it's not running, you can do this

    ```shell
       launchctl start zoom-light.job
    ```

### Thank You 🙏

I couldn't have done this without the resources, thank you!

* https://apple.stackexchange.com/questions/449400/do-an-action-like-run-shell-command-when-zoom-call-starts-and-when-zoom-call
* https://apple.stackexchange.com/a/192654