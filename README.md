# Precure DCD Logger's icon generator

## Requirements

* ImageMagick (for `convert` command)

```
sudo apt-get install imagemagick
```

## Usage

Get images and combine them.

```
./get-images.sh
./combine-images.sh
```

`icon.png` is generated. Copy it to Android App directory, then go there and generate multiple size icons.

```
cp icon.png generate-icons.sh APP_ROOT
cd APP_ROOT
./generate-icons.sh
rm icon.png generate-icons.sh
```

## References

* http://d.hatena.ne.jp/pyopyopyo/20050801/p1
