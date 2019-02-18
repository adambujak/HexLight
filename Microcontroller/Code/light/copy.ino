#include <ESP8266WiFi.h>
#include <FastLED.h>
#include <SPI.h>

#define NUM_LEDS 1
#define DATA_PIN_1 15 //15 for esp 13
#define DATA_PIN_2 5
#define DATA_PIN_3 4
#define DATA_PIN_4 0
#define DATA_PIN_5 14
#define DATA_PIN_6 12
#define DATA_PIN_7 13
#define CHIPSET WS2811
CRGB leds[NUM_LEDS];

const char* ssid = "TP-LINK_D442";
const char* password = "Connection";

WiFiServer server(80);

void setup() {
  Serial.begin(115200);
  setupWiFi();
  addLEDs();
  setBrightnessLevel(255);
  updateLEDs();
}
 
void loop() {
  // Check if a client has connected
  WiFiClient client = server.available();
  if (!client) {
    return;
  }
 
  // Wait until the client sends some data
  Serial.println("new client");
  while(!client.available()){
    delay(1);
  }
 
  // Read the first line of the request
  String request = client.readStringUntil('\r');
  Serial.print(request);
  Serial.println("   request");
  client.flush();
  sendOKMessage(client);
 
}



void setupWiFi() {
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("WiFi connected");
  IPAddress ip(192,168,1,21);   
  IPAddress gateway(192,168,1,254);   
  IPAddress subnet(255,255,255,0);   
  WiFi.config(ip, gateway, subnet);
  server.begin();
}
void addLEDs() {
  //FastLED.addLeds<CHIPSET, DATA_PIN_1>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN_2>(leds, NUM_LEDS);
  /*FastLED.addLeds<CHIPSET, DATA_PIN_3>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN_4>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN_5>(leds, NUM_LEDS); 
  FastLED.addLeds<CHIPSET, DATA_PIN_6>(leds, NUM_LEDS); 
  FastLED.addLeds<CHIPSET, DATA_PIN_7>(leds, NUM_LEDS); 
  FastLED.setCorrection(0xFFB0F0);*/
  for (int i = 0; i < NUM_LEDS; i++) {
    leds[i] = CRGB::Red;
  }
}
void sendOKMessage(WiFiClient client) {
  client.print("HTTP/1.1 200 OK\r\n\nok");
}
void setBrightnessLevel(byte level) {
  FastLED.setBrightness(level);
}
void updateLEDs() {
  FastLED.show();
}
void setLEDColor(byte led, byte red, byte green, byte blue) {
  leds[led].r = red;
  leds[led].g = green;
  leds[led].b = blue;
  FastLED.show();
}
int parseRequestForColors(String request, String LEDName) {
  String colors = "";
    for (int i = request.indexOf(LEDName)+5; i < request.length(); i++) {
      char character = request.charAt(i);
      if (character == '&'|| character == ' ') {
        break;
      }
      colors += character;
    }
    String RGBcolors[3];
    String strbuffer = "";
    int cnt = 0;
    for (int i = 0; i < colors.length(); i++) {
 
      char character = colors.charAt(i);
      if (character == '&' || character == ' ') {
        break;
      }
      if (character == ':') {
        RGBcolors[cnt] = strbuffer;
        cnt++;
        strbuffer = "";
        continue;
      }
      strbuffer += character;
    }
    RGBcolors[2]=strbuffer;
   
}
 