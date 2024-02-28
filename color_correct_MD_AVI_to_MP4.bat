ffmpeg -i md-h.avi -codec:v libx264 -pix_fmt yuv420p -profile:v main -vf eq=gamma=1.45 md-h_color-corrected.mp4

ffmpeg -i md-v.avi -codec:v libx264 -pix_fmt yuv420p -profile:v main -filter_complex "[0:v]eq=gamma=1.45,transpose=2[v]" -map "[v]" md-v_rotated_color-corrected.mp4