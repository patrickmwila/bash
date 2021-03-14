#!/bin/bash
find ~/Music/all-in-one -type f -name "*.mp3" | shuf | while read f; do ffplay -autoexit -- "$f"; done
