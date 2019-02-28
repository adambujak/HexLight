#include <ESP8266WiFi.h>
#include <FastLED.h>
#include <SPI.h>

#define ID_STRING_LENGTH 4
#define START_OF_COLOR_HEX 10
#define START_OF_BRIGHTNESS_HEX 3
#define LENGTH_OF_COLOR_HEX 6

#define NUM_LEDS 7  
#define DATA_PIN_1 12
#define DATA_PIN_2 5
#define DATA_PIN_3 4
#define DATA_PIN_4 0
#define DATA_PIN_5 2
#define DATA_PIN_6 14
#define DATA_PIN_7 12
#define CHIPSET WS2811

CRGB leds[NUM_LEDS-1][1]; 

const char* ssid = "StroudHome";
const char* password = "Cloud2017";

boolean NEW_CLIENT = false;
boolean READ_FROM_CLIENT = false;
boolean ANIMATION_IN_PROGRESS = false;

WiFiServer server(80);
WiFiClient client;

void setup() {
  Serial.begin(115200);
  setupWiFi();
  addLEDs();
  setBrightnessLevel(255);
  updateLEDs();
  test();
  updateLEDs();
  NEW_CLIENT = true;
}
 
void loop() {
  // Check if a client has connected
  if (NEW_CLIENT) {
    client = server.available();
     if (client) {
        NEW_CLIENT = false;
        READ_FROM_CLIENT = true;
     }
  }
  else if (READ_FROM_CLIENT) {
    if (client.available()) {
      String request = client.readStringUntil('\r');
      Serial.print(request);
      Serial.println("   request");
      client.flush();
      sendOKMessage(client);
      parseRequest(request);
      NEW_CLIENT = true;
      READ_FROM_CLIENT = false;
    }
  }
}

void setupWiFi() {
  WiFi.hostname("HexLight");
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("WiFi connected");
  /*IPAddress ip(192,168,1,22);   
  IPAddress gateway(192,168,1,1);   
  IPAddress subnet(255,255,255,0);   
  WiFi.config(ip, gateway, subnet);*/
  Serial.println(WiFi.localIP());
  server.begin();
}
void addLEDs() { 
  /*   
   * this implementation is bad, (terrible)
   * if you ever work on something like this make sure to take 
   * advantage of the ws2811 addressablilty - I can't 
   * change it now without making a new PCB
   * 
   * proper way to do it:
   
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS); 
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS); 
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS); 
  */

  FastLED.addLeds<CHIPSET, DATA_PIN_2>(leds[0], 1);
  FastLED.addLeds<CHIPSET, DATA_PIN_3>(leds[1], 1);
  FastLED.addLeds<CHIPSET, DATA_PIN_4>(leds[2], 1);
  FastLED.addLeds<CHIPSET, DATA_PIN_5>(leds[3], 1); 
  FastLED.addLeds<CHIPSET, DATA_PIN_6>(leds[4], 1); 
  FastLED.addLeds<CHIPSET, DATA_PIN_7>(leds[5], 2); 
  FastLED.addLeds<CHIPSET, DATA_PIN_7>(leds[5], 2);
  
  FastLED.setCorrection(0xFFB0F0);
  for (int i = 0; i < NUM_LEDS-1; i++) {
    leds[i][0] = CRGB::Red;
  }
  leds[5][1] = CRGB::Red;
}
void sendOKMessage(WiFiClient client) {
  client.print("HTTP/1.1 200 OK\r\n\nok");
}
void setBrightnessLevel(byte level) {
  FastLED.setBrightness(level);
  FastLED.show();
}
void updateLEDs() {
  FastLED.show();
}
void setLEDColor(byte led, byte red, byte green, byte blue) {
  if (led == NUM_LEDS) {
    leds[5][1].r = red;
    leds[5][1].g = green;
    leds[5][1].b = blue;
    return;
  }
  leds[led][0].r = red;
  leds[led][0].g = green;
  leds[led][0].b = blue;
}

void parseRequest(String request) {
  if (request.indexOf("ID") != -1) {
     parseRequestForColors(request);
  }
  else if (request.indexOf("BR") != -1) {
     parseRequestForBrightness(request);
  }
  //add custom functions here - like animations
}
byte getIntFromHexChar(char h); 
void parseRequestForColors(String request) {
  byte COLOR_COUNT;
  byte RGBColors[3];
  int startIndex;
  for (byte cnt = 0; cnt < NUM_LEDS; cnt ++) {
    
    char strbuf[ID_STRING_LENGTH];  // 4 = length of "ID=i"
    sprintf(strbuf,"ID=%d",cnt);   
    
    COLOR_COUNT = 0;
    startIndex = request.indexOf(strbuf)+START_OF_COLOR_HEX;
    
    for (int i = startIndex; i < startIndex + LENGTH_OF_COLOR_HEX; i+=2) {
      RGBColors[COLOR_COUNT] = 16*getIntFromHexChar(request.charAt(i)) + getIntFromHexChar(request.charAt(i+1));
      COLOR_COUNT++;
    }
    setLEDColor(cnt, RGBColors[0], RGBColors[1], RGBColors[2]);
  }
  updateLEDs();
}

void parseRequestForBrightness(String request) {
  byte brightness;
  int i;
  i = request.indexOf("BR")+START_OF_BRIGHTNESS_HEX;
  brightness = 16*getIntFromHexChar(request.charAt(i)) + getIntFromHexChar(request.charAt(i+1));
  setBrightnessLevel(brightness);
  
}

byte getIntFromHexChar(char h) {
  switch (h) {
    case '0': 
      return 0;
    case '1': 
      return 1;
    case '2': 
        return 2;
    case '3': 
        return 3;
    case '4': 
        return 4;
    case '5': 
        return 5;
    case '6': 
        return 6;
    case '7': 
        return 7;
    case '8': 
        return 8;
    case '9': 
        return 9;
    case 'A': 
        return 10;
    case 'B': 
        return 11;
    case 'C': 
        return 12;
    case 'D': 
        return 13;
    case 'E': 
        return 14;
    case 'F': 
        return 15;
    }
} 
