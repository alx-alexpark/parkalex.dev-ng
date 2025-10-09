#!/usr/bin/env fish

set quality 85

for file in *.jpg *.jpeg *.png *.bmp *.tiff *.gif
    if test ! -e $file
        continue
    end

    set base (basename $file | sed 's/\.[^.]*$//')
    set output "$base.webp"

    if test -e $output
        echo "Skipping $file → $output already exists."
        continue
    end

    echo "Converting $file → $output"
    magick "$file" -quality $quality -define webp:method=6 -strip "$output"

    if test $status -eq 0
        echo "✅ Converted successfully — deleting original: $file"
        rm "$file"
    else
        echo "❌ Conversion failed for $file — keeping original."
    end
end
