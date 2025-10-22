ffmpeg -i $1 -vf "reverse,scale=-1:540" -af areverse \
  -c:v libx264 -crf 20 -preset medium -c:a aac -b:a 160k \
  -movflags +faststart $1.rev.mp4
