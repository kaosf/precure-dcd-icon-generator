# Experiment Log

## Exp 1

```
convert img_dress_tops-dd.jpg     tops.png
convert img_dress_bottoms-dd.jpg  bottoms.png
convert img_dress_shoes-dd.jpg    shoes.png
convert img_dress_hairacce-dd.jpg hairacce.png
convert +append tops.png  bottoms.png  icon-top.png
convert +append shoes.png hairacce.png icon-bottom.png
convert -append icon-top.png icon-bottom.png icon.png
rm tops.png bottoms.png shoes.png hairacce.png icon-top.png icon-bottom.png
```

文字が入ったままになる．切り取り範囲を調査する．

## Exp 2

### Image size

* tops:     46x55
* bottoms:  50x55
* shoes:    43x55
* hairacce: 45x55

```
# 44: NG
# 43: NG a little
# 42: OK
convert -crop 46x42+0+0 img_dress_tops-dd.jpg tmp.jpg
convert -crop 50x42+0+0 img_dress_bottoms-dd.jpg tmp.jpg

# 44: NG
# 43: OK
convert -crop 43x43+0+0 img_dress_shoes-dd.jpg tmp.jpg
convert -crop 45x43+0+0 img_dress_hairacce-dd.jpg tmp.jpg

rm tmp.jpg
```

切り取り範囲特定完了．

## Exp 3

```
convert img_dress_tops-dd.jpg     tops.png
convert img_dress_bottoms-dd.jpg  bottoms.png
convert img_dress_shoes-dd.jpg    shoes.png
convert img_dress_hairacce-dd.jpg hairacce.png
convert -crop 46x42+0+0 tops.png     tops.png
convert -crop 50x42+0+0 bottoms.png  bottoms.png
convert -crop 43x43+0+0 shoes.png    shoes.png
convert -crop 45x43+0+0 hairacce.png hairacce.png
convert +append tops.png  bottoms.png  icon-top.png
convert +append shoes.png hairacce.png icon-bottom.png
convert -append icon-top.png icon-bottom.png icon.png
rm tops.png bottoms.png shoes.png hairacce.png icon-top.png icon-bottom.png
```

この順番で並べて結合するなら，上下を後から結合するより左右を後から結合した方が良さそう (に思える)．

## Exp 4

``
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
rm tops.png bottoms.png shoes.png hairacce.png icon-left.png icon-right.png
```

これが現在の `combine-images.sh`．
