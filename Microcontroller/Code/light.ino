#include <ESP8266WiFi.h>
#include <FastLED.h>
#include <SPI.h>

#define NUM_LEDS 7
#define DATA_PIN_1 16
#define DATA_PIN_2 5
#define DATA_PIN_3 4
#define DATA_PIN_4 0
#define DATA_PIN_5 14
#define DATA_PIN_6 12
#define DATA_PIN_7 13
#define CHIPSET WS2811
CRGB leds[NUM_LEDS];

const char* ssid = "StroudHome";
const char* password = "Cloud2017";
const int pin[] = {16, 5, 4, 0, 14, 12, 13};   
WiFiServer server(80);
void setup() {
  FastLED.addLeds<CHIPSET, DATA_PIN_1>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN_2>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN_3>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN_4>(leds, NUM_LEDS);
  FastLED.addLeds<CHIPSET, DATA_PIN_5>(leds, NUM_LEDS); 
  FastLED.addLeds<CHIPSET, DATA_PIN_6>(leds, NUM_LEDS); 
  FastLED.addLeds<CHIPSET, DATA_PIN_7>(leds, NUM_LEDS); 
  FastLED.setCorrection(0xFFB0F0);
  for (int i = 0; i < NUM_LEDS; i++) {
    leds[i] = CRGB::Red;
  }

  
  FastLED.show();
  FastLED.setBrightness(255);
  Serial.begin(115200);
  delay(10);
 
  // Connect to WiFi network
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
 
  WiFi.begin(ssid, password);
 
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");
 
  // Start the server
  server.begin();
  Serial.println("Server started");
  IPAddress ip(192, 168, 1, 21); // where xx is the desired IP Address this is to make it static so the android app doesn't have to be configured each 
  IPAddress gateway(192, 168, 1, 1);
  IPAddress subnet(255, 255, 255, 0); 
  WiFi.config(ip, gateway, subnet);
  Serial.print("Use this URL to connect: ");
  Serial.print("http://");
  Serial.print(WiFi.localIP());
  Serial.println("/");
}
void setColourRgb(unsigned int red, unsigned int green, unsigned int blue, int led) {
  leds[led].r = red;
  leds[led].g = green;
  leds[led].b = blue;
  FastLED.show();
 }

int parseRequestForColors (String request, String ledName, int RGBints[]) {
  String colors = "";
    for (int i = request.indexOf(ledName)+5; i < request.length(); i++) {
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
   
    for (int i = 0; i < 3; i++) {
      RGBints[i] = RGBcolors[i].toInt();
    }
  
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
 
  // Match the request
  client.println("ok");
  
  if (request.indexOf("LED1=") != -1)  {
    int RGBints[3];
    parseRequestForColors(request, "LED1=", RGBints);
    setColourRgb(RGBints[0], RGBints[1], RGBints[2], 0);
  } 
   
  delay(1);
  Serial.println("Client disonnected");
  Serial.println("");
 
}
 

