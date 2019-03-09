#include <ESP8266WiFi.h>
#include <FastLED.h>
#include <SPI.h>

#define ID_STRING_LENGTH 4
#define START_OF_COLOR_HEX 10
#define START_OF_BRIGHTNESS_HEX 3
#define LENGTH_OF_COLOR_HEX 6
#define NUM_LEDS 7  //change to 7
#define DATA_PIN 2 
#define CHIPSET WS2811
CRGB leds[NUM_LEDS]; 

const char* ssid = "StroudHome2";
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
   IPAddress ip(192,168,0,22);   
  IPAddress gateway(192,168,0,1);   
  IPAddress subnet(255,255,255,0);   
  WiFi.config(ip, gateway, subnet);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("WiFi connected");
 
  Serial.println(WiFi.localIP());
  server.begin();
}
void addLEDs() { //remove comments
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS); 
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS); 
  FastLED.addLeds<CHIPSET, DATA_PIN>(leds, NUM_LEDS); 
  FastLED.setCorrection(0xFFB0F0);
  for (int i = 0; i < NUM_LEDS; i++) {
    leds[i] = CRGB::Red;
  }
}
void test() { //every led is yellow
  //leds[0] = CRGB::Blue;
  leds[1] = CRGB::Red;
  leds[2] = CRGB::Green;
  leds[3] = CRGB::White;
  leds[4] = CRGB::Yellow;
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
  leds[led].r = red;
  leds[led].g = green;
  leds[led].b = blue;
}

void parseRequest(String request) {
  if (request.indexOf("ID") != -1) {
     parseRequestForColors(request);
  }
  else if (request.indexOf("BR") != -1) {
     parseRequestForBrightness(request);
  }
  //add brightness and custom functions here
}
byte getIntFromHexChar(char h);   ///////////IMPORTANT: index of is always returning the same id, firgure out how to - actually nvm
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
