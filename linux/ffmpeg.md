- Increase volume by 50%: `ffmpeg -i input.mp3 -filter:a "volume=1.5" output.mp3`.
- Cut audio file: `ffmpeg -i from.mkv -ss 0 -to 60 -c copy to.mkv` or
                  `ffmpeg -i from.mkv -ss 00:00:00 -to 00:01:00 -c copy to.mkv`.
- MP4 to MP3: `ffmpeg -i input.mp4 output.mp3`.