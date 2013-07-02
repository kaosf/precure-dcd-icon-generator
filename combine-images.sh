#! /bin/sh

convert img_dress_tops-dd.jpg     tops.png
convert img_dress_bottoms-dd.jpg  bottoms.png
convert img_dress_shoes-dd.jpg    shoes.png
convert img_dress_hairacce-dd.jpg hairacce.png
convert -crop 46x42+0+0 tops.png     tops.png
convert -crop 50x42+0+0 bottoms.png  bottoms.png
convert -crop 43x43+0+0 shoes.png    shoes.png
convert -crop 45x43+0+0 hairacce.png hairacce.png
convert -append tops.png    shoes.png    icon-left.png
convert -append bottoms.png hairacce.png icon-right.png
convert +append icon-left.png icon-right.png icon.png

rm tops.png bottoms.png shoes.png hairacce.png
rm icon-left.png icon-right.png
