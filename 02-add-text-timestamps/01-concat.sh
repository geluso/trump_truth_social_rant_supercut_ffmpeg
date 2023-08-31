ffmpeg -f concat -safe 0 -i <(for f in *.mts; do echo "file '$PWD/${f}'"; done) -c copy all.mts                                                            
ffmpeg -i all.mts all.mp4 
