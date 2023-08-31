function ffconcat() {
  for f in *.mp4; do ffmpeg -i ${f} -q 0 "${f%.*}.mts"; done
  ffmpeg -f concat -safe 0 -i <(for f in *.mts; do echo "file '$PWD/${f}'"; done) -c copy all.mts
  ffmpeg -i all.mts all.mp4
}

