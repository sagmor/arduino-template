# /Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc src/main.cpp

ROOT="/Users/sagmor/Code/ArduinoTest"
BOARD=arduino:avr:uno
SKETCH=BlinkSample

mkdir -p $ROOT/src/$SKETCH/bin/$BOARD

arduino-cli compile --verbose \
    --warnings all \
    --fqbn arduino:avr:uno \
    $ROOT/src/$SKETCH \
    --build-path $ROOT/src/$SKETCH/obj/$BOARD \
    --build-cache-path $ROOT/src/$SKETCH/obj/$BOARD/cache \
    --output $ROOT/src/$SKETCH/bin/$BOARD/$SKETCH.hex \
    --build-properties "includes=$ROOT/src/Shared"

exit 0

mkdir $ROOT/src/UnitTests/bin
gcc --verbose \
    -o $ROOT/src/UnitTests/bin/UnitTests \
    -iquote $ROOT/src/Shared \
    -I $ROOT/src/UnitTests/Framework \
    $ROOT/src/UnitTests/*.cpp \
    $ROOT/src/Shared/*.cpp
