xxx: OK, so, our build engineer has left for another company. The dude was literally living inside the terminal. You know, that type of a guy who loves Vim, creates diagrams in Dot and writes wiki-posts in Markdown... If something - anything - requires more than 90 seconds of his time, he writes a script to automate that.

xxx: So we're sitting here, looking through his, uhm, "legacy"

xxx: You're gonna love this

xxx: smack-my-bitch-up.sh - sends a text message "late at work" to his wife (apparently). Automatically picks reasons from an array of strings, randomly. Runs inside a cron-job. The job fires if there are active SSH-sessions on the server after 9pm with his login.

xxx: kumar-asshole.sh - scans the inbox for emails from "Kumar" (a DBA at our clients). Looks for keywords like "help", "trouble", "sorry" etc. If keywords are found - the script SSHes into the clients server and rolls back the staging database to the latest backup. Then sends a reply "no worries mate, be careful next time".

xxx: hangover.sh - another cron-job that is set to specific dates. Sends automated emails like "not feeling well/gonna work from home" etc. Adds a random "reason" from another predefined array of strings. Fires if there are no interactive sessions on the server at 8:45am.

xxx: (and the oscar goes to) fuckingcoffee.sh - this one waits exactly 17 seconds (!), then opens an SSH session to our coffee-machine (we had no frikin idea the coffee machine is on the network, runs linux and has SSHD up and running) and sends some weird gibberish to it. Looks binary. Turns out this thing starts brewing a mid-sized half-caf latte and waits another 24 (!) seconds before pouring it into a cup. The timing is exactly how long it takes to walk to the machine from the dudes desk.

xxx: holy sh*t I'm keeping those
