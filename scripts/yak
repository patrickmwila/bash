#!/usr/bin/sh
# Starting Yakuake based on user preferences. Information based on http://forums.gentoo.org/viewtopic-t-873915-start-0.html
# Adding sessions from previous website is broken, use this: http://pawelkoston.pl/blog/sublime-text-3-cheatsheet-modules-web-develpment/

# This line is needed in case Yakuake does not accept fcitx inputs.
/usr/bin/yakuake --im /usr/bin/fcitx --inputstyle onthespot &

# gives Yakuake a couple seconds before sending dbus commands
sleep 2      
                                                 
# rename tabs and optionally open applications on some tabs                                                       
TERMINAL_ID_0=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.terminalIdsForSessionId 0)
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 0 "[1] htop"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 0 "htop"

qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 1 "[2] coding</>"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 1 "cd ~/Github/ict2010/javaProgramming/fundamentals"

qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 2 "[3] exec</>"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 2 "cd ~/Github/ict2010/javaProgramming/fundamentals"
  
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 3 "[4] vifm"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 3 "vifm"

qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 4 "[5] mocp"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 4 "mocp"

qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 5 "[6] default"
