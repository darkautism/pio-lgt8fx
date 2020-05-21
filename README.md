# Logic Green: development platform for [PlatformIO](http://platformio.org/)

Logic Green is a very very very cheap MCUs.


# Databooks
[LGT8FX8P](https://www.avrfreaks.net/sites/default/files/forum_attachments/LGT8F88P%20LGT8F168P%20LGT8F328P%20translated.pdf)

[LGT8FX8P Chinese](http://www.lgtic.com/upload/lgt8fx8p/LGT8FX8P_databook_v1.0.4.pdf)

# Usage

- Install platformIO
- Install this platform into `%USER%\.platformio\platforms\`

# Change cpu clock

An example platformio.ini
``` ini
; PlatformIO Project Configuration File
;
;   Build options: build flags, source filter
;   Upload options: custom upload port, speed and extra flags
;   Library options: dependencies, extra library storages
;   Advanced options: extra scripting
;
; Please visit documentation for the other options and examples
; https://docs.platformio.org/page/projectconf.html

[env:LGT8F328P]
platform = lgt8f
board = LGT8F328P
framework = arduino

board_build.f_cpu=16000000L
;internal clock
board_build.clock_source=1
```
Example code:
``` cpp
#include <Arduino.h>
void setup() {
  Serial.begin(9600);
  #if ((F_CPU) == 1000000)
  #warning F_CPU = 1MHz
  Serial.println("1MHz");
  #elif ((F_CPU) == 2000000)
  #warning F_CPU = 2MHz
  Serial.println("2MHz");
  #elif ((F_CPU) == 4000000)
  #warning F_CPU = 4MHz
  Serial.println("4MHz");
  #elif ((F_CPU) == 8000000)
  #warning F_CPU = 8MHz
  Serial.println("8MHz");
  #elif ((F_CPU) == 16000000)
  #warning F_CPU = 16MHz
  Serial.println("16MHz");
  #elif ((F_CPU) == 32000000)
  #warning F_CPU = 32MHz
  Serial.println("32MHz");
  #endif

  #if ((CLOCK_SOURCE) == 1)
  Serial.println("internal clock");
  #elif ((CLOCK_SOURCE) == 2)
  Serial.println("external clock");
  #endif

  while(1);
}

// the loop function runs over and over again forever
void loop() {
}
```

Example output:

```
--- Available filters and text transformations: colorize, debug, default, direct, hexlify, log2file, nocontrol, printable, send_on_enter, time
--- More details at http://bit.ly/pio-monitor-filters
--- Miniterm on COM8  9600,8,N,1 ---
--- Quit: Ctrl+C | Menu: Ctrl+T | Help: Ctrl+T followed by Ctrl+H ---
32MHz
internal clock
```

# Configuration

No! Jist hit upload button!
