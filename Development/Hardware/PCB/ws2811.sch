<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.1.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ws2811">
<packages>
<package name="SOP8" urn="urn:adsk.eagle:footprint:26249/1" locally_modified="yes">
<description>&lt;b&gt;SOP8&lt;/b&gt;&lt;p&gt;
Source: http://www.rohm.com/products/databook/motor/pdf/bd623x_series-e.pdf</description>
<wire x1="2.395" y1="2.085" x2="2.395" y2="-2.11" width="0.2032" layer="21"/>
<wire x1="2.395" y1="-2.11" x2="-2.395" y2="-2.11" width="0.2032" layer="51"/>
<wire x1="-2.395" y1="-2.11" x2="-2.395" y2="2.085" width="0.2032" layer="21"/>
<wire x1="-2.395" y1="2.085" x2="2.395" y2="2.085" width="0.2032" layer="51"/>
<wire x1="-2.34" y1="0.635" x2="-2.34" y2="-0.635" width="0.2032" layer="21" curve="-180"/>
<smd name="OUTR" x="-1.905" y="-2.6" dx="0.6" dy="1.6" layer="1"/>
<smd name="OUTG" x="-0.635" y="-2.6" dx="0.6" dy="1.6" layer="1"/>
<smd name="OUTB" x="0.635" y="-2.6" dx="0.6" dy="1.6" layer="1"/>
<smd name="GND" x="1.905" y="-2.6" dx="0.6" dy="1.6" layer="1"/>
<smd name="DO" x="1.905" y="2.6" dx="0.6" dy="1.6" layer="1"/>
<smd name="DIN" x="0.635" y="2.6" dx="0.6" dy="1.6" layer="1"/>
<smd name="SET" x="-0.635" y="2.6" dx="0.6" dy="1.6" layer="1"/>
<smd name="VDD" x="-1.905" y="2.6" dx="0.6" dy="1.6" layer="1"/>
<text x="-3.175" y="-3.175" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.175" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1549" y1="-3.1" x2="-1.6551" y2="-2.2" layer="51"/>
<rectangle x1="-0.8849" y1="-3.1" x2="-0.3851" y2="-2.2" layer="51"/>
<rectangle x1="0.3851" y1="-3.1" x2="0.8849" y2="-2.2" layer="51"/>
<rectangle x1="1.6551" y1="-3.1" x2="2.1549" y2="-2.2" layer="51"/>
<rectangle x1="1.6551" y1="2.2" x2="2.1549" y2="3.1" layer="51"/>
<rectangle x1="0.3851" y1="2.2" x2="0.8849" y2="3.1" layer="51"/>
<rectangle x1="-0.8849" y1="2.2" x2="-0.3851" y2="3.1" layer="51"/>
<rectangle x1="-2.1549" y1="2.2" x2="-1.6551" y2="3.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="WS2811">
<pin name="OUTR" x="-12.7" y="12.7" length="middle"/>
<pin name="OUTG" x="-12.7" y="5.08" length="middle"/>
<pin name="OUTB" x="-12.7" y="-2.54" length="middle"/>
<pin name="GND" x="-12.7" y="-10.16" length="middle"/>
<pin name="VDD" x="12.7" y="12.7" length="middle" rot="R180"/>
<pin name="SET" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="DIN" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="DO" x="12.7" y="-10.16" length="middle" rot="R180"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="15.24" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="15.24" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="0" width="0.254" layer="94"/>
<text x="0" y="-20.32" size="1.778" layer="95">&gt;NAME
</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="WS2811" prefix="LEDC">
<gates>
<gate name="G$1" symbol="WS2811" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOP8">
<connects>
<connect gate="G$1" pin="DIN" pad="DIN"/>
<connect gate="G$1" pin="DO" pad="DO"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="OUTB" pad="OUTB"/>
<connect gate="G$1" pin="OUTG" pad="OUTG"/>
<connect gate="G$1" pin="OUTR" pad="OUTR"/>
<connect gate="G$1" pin="SET" pad="SET"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+05V" urn="urn:adsk.eagle:symbol:26987/1" library_version="2">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" urn="urn:adsk.eagle:component:27032/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="+5V" symbol="+05V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-samtec" urn="urn:adsk.eagle:library:184">
<description>&lt;b&gt;Samtec Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SSW-101-02-G-S" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST SOCKET&lt;/b&gt;&lt;p&gt;
Source: Samtec SSW.pdf</description>
<wire x1="-1.399" y1="1.155" x2="1.399" y2="1.155" width="0.2032" layer="21"/>
<wire x1="1.399" y1="1.155" x2="1.399" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="1.399" y1="-1.155" x2="-1.399" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="-1.399" y1="-1.155" x2="-1.399" y2="1.155" width="0.2032" layer="21"/>
<wire x1="-0.745" y1="0.755" x2="0.755" y2="0.755" width="0.2032" layer="51"/>
<wire x1="0.755" y1="0.755" x2="0.755" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="0.755" y1="-0.745" x2="-0.745" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-0.745" y1="-0.745" x2="-0.745" y2="0.755" width="0.2032" layer="51"/>
<pad name="1" x="0" y="0" drill="1" diameter="1.5" shape="octagon"/>
<text x="-1.905" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.175" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="SSW-101-02-G-S-RA" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST SOCKET&lt;/b&gt;&lt;p&gt;
Source: Samtec SSW.pdf</description>
<wire x1="-1.399" y1="-8.396" x2="1.399" y2="-8.396" width="0.2032" layer="21"/>
<wire x1="1.399" y1="-8.396" x2="1.399" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="1.399" y1="-0.106" x2="-1.399" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="-1.399" y1="-0.106" x2="-1.399" y2="-8.396" width="0.2032" layer="21"/>
<pad name="1" x="0" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<text x="-1.905" y="-7.62" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.175" y="-7.62" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.254" y1="0" x2="0.254" y2="1.778" layer="51"/>
</package>
<package name="SSW-115-02-G-S" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST SOCKET&lt;/b&gt;&lt;p&gt;
Source: Samtec SSW.pdf</description>
<wire x1="-19.179" y1="1.155" x2="19.179" y2="1.155" width="0.2032" layer="21"/>
<wire x1="19.179" y1="1.155" x2="19.179" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="19.179" y1="-1.155" x2="-19.179" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="-19.179" y1="-1.155" x2="-19.179" y2="1.155" width="0.2032" layer="21"/>
<wire x1="-18.525" y1="0.755" x2="-17.025" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-17.025" y1="0.755" x2="-17.025" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-17.025" y1="-0.745" x2="-18.525" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-18.525" y1="-0.745" x2="-18.525" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-15.985" y1="0.755" x2="-14.485" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-14.485" y1="0.755" x2="-14.485" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-14.485" y1="-0.745" x2="-15.985" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-15.985" y1="-0.745" x2="-15.985" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-13.445" y1="0.755" x2="-11.945" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-11.945" y1="0.755" x2="-11.945" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-11.945" y1="-0.745" x2="-13.445" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-13.445" y1="-0.745" x2="-13.445" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-10.905" y1="0.755" x2="-9.405" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-9.405" y1="0.755" x2="-9.405" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-9.405" y1="-0.745" x2="-10.905" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-10.905" y1="-0.745" x2="-10.905" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-8.365" y1="0.755" x2="-6.865" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-6.865" y1="0.755" x2="-6.865" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-6.865" y1="-0.745" x2="-8.365" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-8.365" y1="-0.745" x2="-8.365" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-5.825" y1="0.755" x2="-4.325" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-4.325" y1="0.755" x2="-4.325" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-4.325" y1="-0.745" x2="-5.825" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-5.825" y1="-0.745" x2="-5.825" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-3.285" y1="0.755" x2="-1.785" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-1.785" y1="0.755" x2="-1.785" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-1.785" y1="-0.745" x2="-3.285" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-3.285" y1="-0.745" x2="-3.285" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-0.745" y1="0.755" x2="0.755" y2="0.755" width="0.2032" layer="51"/>
<wire x1="0.755" y1="0.755" x2="0.755" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="0.755" y1="-0.745" x2="-0.745" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-0.745" y1="-0.745" x2="-0.745" y2="0.755" width="0.2032" layer="51"/>
<wire x1="1.795" y1="0.755" x2="3.295" y2="0.755" width="0.2032" layer="51"/>
<wire x1="3.295" y1="0.755" x2="3.295" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="3.295" y1="-0.745" x2="1.795" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="1.795" y1="-0.745" x2="1.795" y2="0.755" width="0.2032" layer="51"/>
<wire x1="4.335" y1="0.755" x2="5.835" y2="0.755" width="0.2032" layer="51"/>
<wire x1="5.835" y1="0.755" x2="5.835" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="5.835" y1="-0.745" x2="4.335" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="4.335" y1="-0.745" x2="4.335" y2="0.755" width="0.2032" layer="51"/>
<wire x1="6.875" y1="0.755" x2="8.375" y2="0.755" width="0.2032" layer="51"/>
<wire x1="8.375" y1="0.755" x2="8.375" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="8.375" y1="-0.745" x2="6.875" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="6.875" y1="-0.745" x2="6.875" y2="0.755" width="0.2032" layer="51"/>
<wire x1="9.415" y1="0.755" x2="10.915" y2="0.755" width="0.2032" layer="51"/>
<wire x1="10.915" y1="0.755" x2="10.915" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="10.915" y1="-0.745" x2="9.415" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="9.415" y1="-0.745" x2="9.415" y2="0.755" width="0.2032" layer="51"/>
<wire x1="11.955" y1="0.755" x2="13.455" y2="0.755" width="0.2032" layer="51"/>
<wire x1="13.455" y1="0.755" x2="13.455" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="13.455" y1="-0.745" x2="11.955" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="11.955" y1="-0.745" x2="11.955" y2="0.755" width="0.2032" layer="51"/>
<wire x1="14.495" y1="0.755" x2="15.995" y2="0.755" width="0.2032" layer="51"/>
<wire x1="15.995" y1="0.755" x2="15.995" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="15.995" y1="-0.745" x2="14.495" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="14.495" y1="-0.745" x2="14.495" y2="0.755" width="0.2032" layer="51"/>
<wire x1="17.035" y1="0.755" x2="18.535" y2="0.755" width="0.2032" layer="51"/>
<wire x1="18.535" y1="0.755" x2="18.535" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="18.535" y1="-0.745" x2="17.035" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="17.035" y1="-0.745" x2="17.035" y2="0.755" width="0.2032" layer="51"/>
<pad name="1" x="-17.78" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="2" x="-15.24" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="3" x="-12.7" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="4" x="-10.16" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="5" x="-7.62" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="6" x="-5.08" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="7" x="-2.54" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="8" x="0" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="9" x="2.54" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="10" x="5.08" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="11" x="7.62" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="12" x="10.16" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="13" x="12.7" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="14" x="15.24" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="15" x="17.78" y="0" drill="1" diameter="1.5" shape="octagon"/>
<text x="-18.288" y="-3.048" size="1.6764" layer="21" font="vector">1</text>
<text x="-19.685" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="20.955" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="SSW-115-02-G-S-RA" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST SOCKET&lt;/b&gt;&lt;p&gt;
Source: Samtec SSW.pdf</description>
<wire x1="-19.179" y1="-8.396" x2="19.179" y2="-8.396" width="0.2032" layer="21"/>
<wire x1="19.179" y1="-8.396" x2="19.179" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="19.179" y1="-0.106" x2="-19.179" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="-19.179" y1="-0.106" x2="-19.179" y2="-8.396" width="0.2032" layer="21"/>
<pad name="1" x="-17.78" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="2" x="-15.24" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="3" x="-12.7" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="4" x="-10.16" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="5" x="-7.62" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="6" x="-5.08" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="7" x="-2.54" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="8" x="0" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="9" x="2.54" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="10" x="5.08" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="11" x="7.62" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="12" x="10.16" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="13" x="12.7" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="14" x="15.24" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="15" x="17.78" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<text x="-18.375" y="-7.65" size="1.6764" layer="21" font="vector">1</text>
<text x="-19.685" y="-7.62" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="20.955" y="-7.62" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-18.034" y1="0" x2="-17.526" y2="1.778" layer="51"/>
<rectangle x1="-15.494" y1="0" x2="-14.986" y2="1.778" layer="51"/>
<rectangle x1="-12.954" y1="0" x2="-12.446" y2="1.778" layer="51"/>
<rectangle x1="-10.414" y1="0" x2="-9.906" y2="1.778" layer="51"/>
<rectangle x1="-7.874" y1="0" x2="-7.366" y2="1.778" layer="51"/>
<rectangle x1="-5.334" y1="0" x2="-4.826" y2="1.778" layer="51"/>
<rectangle x1="-2.794" y1="0" x2="-2.286" y2="1.778" layer="51"/>
<rectangle x1="-0.254" y1="0" x2="0.254" y2="1.778" layer="51"/>
<rectangle x1="2.286" y1="0" x2="2.794" y2="1.778" layer="51"/>
<rectangle x1="4.826" y1="0" x2="5.334" y2="1.778" layer="51"/>
<rectangle x1="7.366" y1="0" x2="7.874" y2="1.778" layer="51"/>
<rectangle x1="9.906" y1="0" x2="10.414" y2="1.778" layer="51"/>
<rectangle x1="12.446" y1="0" x2="12.954" y2="1.778" layer="51"/>
<rectangle x1="14.986" y1="0" x2="15.494" y2="1.778" layer="51"/>
<rectangle x1="17.526" y1="0" x2="18.034" y2="1.778" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="FPINV" library_version="2">
<wire x1="-1.778" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="-1.778" y2="-0.508" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.048" y="0.762" size="1.524" layer="95" rot="R180">&gt;NAME</text>
<pin name="1" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="FPIN" library_version="2">
<wire x1="-1.778" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="-1.778" y2="-0.508" width="0.254" layer="94"/>
<text x="-3.048" y="0.762" size="1.524" layer="95" rot="R180">&gt;NAME</text>
<pin name="1" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SSW-101-02-G-S" prefix="X" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST SOCKET&lt;/b&gt;&lt;p&gt;
Source: Samtec SSW.pdf</description>
<gates>
<gate name="-1" symbol="FPINV" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="SSW-101-02-G-S">
<connects>
<connect gate="-1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="Samtec Inc." constant="no"/>
<attribute name="MPN" value="SSW-101-02-G-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="11P9336" constant="no"/>
</technology>
</technologies>
</device>
<device name="-RA" package="SSW-101-02-G-S-RA">
<connects>
<connect gate="-1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="Samtec Inc." constant="no"/>
<attribute name="MPN" value="SSW-101-02-G-S-RA" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="11P9337" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SSW-115-02-G-S" prefix="X" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST SOCKET&lt;/b&gt;&lt;p&gt;
Source: Samtec SSW.pdf</description>
<gates>
<gate name="-1" symbol="FPINV" x="0" y="17.78" addlevel="always"/>
<gate name="-2" symbol="FPIN" x="0" y="15.24" addlevel="always"/>
<gate name="-3" symbol="FPIN" x="0" y="12.7" addlevel="always"/>
<gate name="-4" symbol="FPIN" x="0" y="10.16" addlevel="always"/>
<gate name="-5" symbol="FPIN" x="0" y="7.62" addlevel="always"/>
<gate name="-6" symbol="FPIN" x="0" y="5.08" addlevel="always"/>
<gate name="-7" symbol="FPIN" x="0" y="2.54" addlevel="always"/>
<gate name="-8" symbol="FPIN" x="0" y="0" addlevel="always"/>
<gate name="-9" symbol="FPIN" x="0" y="-2.54" addlevel="always"/>
<gate name="-10" symbol="FPIN" x="0" y="-5.08" addlevel="always"/>
<gate name="-11" symbol="FPIN" x="0" y="-7.62" addlevel="always"/>
<gate name="-12" symbol="FPIN" x="0" y="-10.16" addlevel="always"/>
<gate name="-13" symbol="FPIN" x="0" y="-12.7" addlevel="always"/>
<gate name="-14" symbol="FPIN" x="0" y="-15.24" addlevel="always"/>
<gate name="-15" symbol="FPIN" x="0" y="-17.78" addlevel="always"/>
</gates>
<devices>
<device name="" package="SSW-115-02-G-S">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-11" pin="1" pad="11"/>
<connect gate="-12" pin="1" pad="12"/>
<connect gate="-13" pin="1" pad="13"/>
<connect gate="-14" pin="1" pad="14"/>
<connect gate="-15" pin="1" pad="15"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="Samtec Inc." constant="no"/>
<attribute name="MPN" value="SSW-115-02-G-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="11P9564" constant="no"/>
</technology>
</technologies>
</device>
<device name="-RA" package="SSW-115-02-G-S-RA">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-11" pin="1" pad="11"/>
<connect gate="-12" pin="1" pad="12"/>
<connect gate="-13" pin="1" pad="13"/>
<connect gate="-14" pin="1" pad="14"/>
<connect gate="-15" pin="1" pad="15"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="Samtec Inc." constant="no"/>
<attribute name="MPN" value="SSW-115-02-G-S-RA" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="11P9565" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="1" library="ws2811" deviceset="WS2811" device="" value=""/>
<part name="5" library="ws2811" deviceset="WS2811" device="" value=""/>
<part name="2" library="ws2811" deviceset="WS2811" device="" value=""/>
<part name="6" library="ws2811" deviceset="WS2811" device="" value=""/>
<part name="4" library="ws2811" deviceset="WS2811" device="" value=""/>
<part name="0" library="ws2811" deviceset="WS2811" device="" value=""/>
<part name="3" library="ws2811" deviceset="WS2811" device="" value=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY4" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY5" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY6" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY7" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="B" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="G" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="R" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="R1" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="R2" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="R3" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="R4" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="R5" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="R6" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="G1" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="G2" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="G3" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="G4" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="G5" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="G6" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="B1" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="B2" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="B3" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="B4" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="B5" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="B6" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="X1" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-115-02-G-S" device="" value=""/>
<part name="X2" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-115-02-G-S" device="" value=""/>
<part name="SUPPLY8" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="V" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="V1" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="V2" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="V3" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="V4" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="V5" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="V6" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="+12V" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="+5V" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="SUPPLY9" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="GND" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-101-02-G-S" device="" value=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="1" gate="G$1" x="20.32" y="91.44"/>
<instance part="5" gate="G$1" x="12.7" y="48.26"/>
<instance part="2" gate="G$1" x="66.04" y="91.44"/>
<instance part="6" gate="G$1" x="50.8" y="48.26"/>
<instance part="4" gate="G$1" x="-25.4" y="48.26"/>
<instance part="0" gate="G$1" x="-25.4" y="91.44"/>
<instance part="3" gate="G$1" x="106.68" y="91.44"/>
<instance part="GND7" gate="1" x="-38.1" y="78.74"/>
<instance part="GND1" gate="1" x="7.62" y="78.74"/>
<instance part="GND2" gate="1" x="53.34" y="78.74"/>
<instance part="GND3" gate="1" x="93.98" y="78.74"/>
<instance part="GND4" gate="1" x="38.1" y="35.56"/>
<instance part="GND5" gate="1" x="0" y="35.56"/>
<instance part="GND6" gate="1" x="-38.1" y="35.56"/>
<instance part="SUPPLY1" gate="+5V" x="-12.7" y="63.5"/>
<instance part="SUPPLY2" gate="+5V" x="-12.7" y="106.68"/>
<instance part="SUPPLY3" gate="+5V" x="33.02" y="106.68"/>
<instance part="SUPPLY4" gate="+5V" x="78.74" y="106.68"/>
<instance part="SUPPLY5" gate="+5V" x="119.38" y="106.68"/>
<instance part="SUPPLY6" gate="+5V" x="63.5" y="63.5"/>
<instance part="SUPPLY7" gate="+5V" x="25.4" y="63.5"/>
<instance part="B" gate="-1" x="-40.64" y="88.9"/>
<instance part="G" gate="-1" x="-40.64" y="96.52"/>
<instance part="R" gate="-1" x="-40.64" y="104.14"/>
<instance part="R1" gate="-1" x="5.08" y="104.14"/>
<instance part="R2" gate="-1" x="50.8" y="104.14"/>
<instance part="R3" gate="-1" x="91.44" y="104.14"/>
<instance part="R4" gate="-1" x="-40.64" y="60.96"/>
<instance part="R5" gate="-1" x="-2.54" y="60.96"/>
<instance part="R6" gate="-1" x="35.56" y="60.96"/>
<instance part="G1" gate="-1" x="5.08" y="96.52"/>
<instance part="G2" gate="-1" x="50.8" y="96.52"/>
<instance part="G3" gate="-1" x="91.44" y="96.52"/>
<instance part="G4" gate="-1" x="-40.64" y="53.34"/>
<instance part="G5" gate="-1" x="-2.54" y="53.34"/>
<instance part="G6" gate="-1" x="35.56" y="53.34"/>
<instance part="B1" gate="-1" x="5.08" y="88.9"/>
<instance part="B2" gate="-1" x="50.8" y="88.9"/>
<instance part="B3" gate="-1" x="91.44" y="88.9"/>
<instance part="B4" gate="-1" x="-40.64" y="45.72"/>
<instance part="B5" gate="-1" x="-2.54" y="45.72"/>
<instance part="B6" gate="-1" x="35.56" y="45.72"/>
<instance part="X1" gate="-1" x="83.82" y="63.5"/>
<instance part="X1" gate="-2" x="83.82" y="60.96"/>
<instance part="X1" gate="-3" x="83.82" y="58.42"/>
<instance part="X1" gate="-4" x="83.82" y="55.88"/>
<instance part="X1" gate="-5" x="83.82" y="53.34"/>
<instance part="X1" gate="-6" x="83.82" y="50.8"/>
<instance part="X1" gate="-7" x="83.82" y="48.26"/>
<instance part="X1" gate="-8" x="83.82" y="45.72"/>
<instance part="X1" gate="-9" x="83.82" y="43.18"/>
<instance part="X1" gate="-10" x="83.82" y="40.64"/>
<instance part="X1" gate="-11" x="83.82" y="38.1"/>
<instance part="X1" gate="-12" x="83.82" y="35.56"/>
<instance part="X1" gate="-13" x="83.82" y="33.02"/>
<instance part="X1" gate="-14" x="83.82" y="30.48"/>
<instance part="X1" gate="-15" x="83.82" y="27.94"/>
<instance part="X2" gate="-1" x="104.14" y="63.5"/>
<instance part="X2" gate="-2" x="104.14" y="60.96"/>
<instance part="X2" gate="-3" x="104.14" y="58.42"/>
<instance part="X2" gate="-4" x="104.14" y="55.88"/>
<instance part="X2" gate="-5" x="104.14" y="53.34"/>
<instance part="X2" gate="-6" x="104.14" y="50.8"/>
<instance part="X2" gate="-7" x="104.14" y="48.26"/>
<instance part="X2" gate="-8" x="104.14" y="45.72"/>
<instance part="X2" gate="-9" x="104.14" y="43.18"/>
<instance part="X2" gate="-10" x="104.14" y="40.64"/>
<instance part="X2" gate="-11" x="104.14" y="38.1"/>
<instance part="X2" gate="-12" x="104.14" y="35.56"/>
<instance part="X2" gate="-13" x="104.14" y="33.02"/>
<instance part="X2" gate="-14" x="104.14" y="30.48"/>
<instance part="X2" gate="-15" x="104.14" y="27.94"/>
<instance part="SUPPLY8" gate="+5V" x="86.36" y="25.4" rot="R180"/>
<instance part="V" gate="-1" x="-30.48" y="124.46" rot="R270"/>
<instance part="V1" gate="-1" x="-25.4" y="124.46" rot="R270"/>
<instance part="V2" gate="-1" x="-20.32" y="124.46" rot="R270"/>
<instance part="V3" gate="-1" x="-15.24" y="124.46" rot="R270"/>
<instance part="V4" gate="-1" x="-10.16" y="124.46" rot="R270"/>
<instance part="V5" gate="-1" x="-5.08" y="124.46" rot="R270"/>
<instance part="V6" gate="-1" x="0" y="124.46" rot="R270"/>
<instance part="GND8" gate="1" x="88.9" y="30.48" rot="R90"/>
<instance part="+12V" gate="-1" x="10.16" y="124.46" rot="R270"/>
<instance part="+5V" gate="-1" x="25.4" y="127" rot="R270"/>
<instance part="SUPPLY9" gate="+5V" x="33.02" y="127"/>
<instance part="GND" gate="-1" x="17.78" y="127" rot="R270"/>
<instance part="GND9" gate="1" x="17.78" y="121.92"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="0" gate="G$1" pin="GND"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="1" gate="G$1" pin="GND"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="2" gate="G$1" pin="GND"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="3" gate="G$1" pin="GND"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="5" gate="G$1" pin="GND"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="4" gate="G$1" pin="GND"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="6" gate="G$1" pin="GND"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="X1" gate="-14" pin="1"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND" gate="-1" pin="1"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="4" gate="G$1" pin="VDD"/>
<pinref part="SUPPLY1" gate="+5V" pin="+5V"/>
</segment>
<segment>
<pinref part="0" gate="G$1" pin="VDD"/>
<pinref part="SUPPLY2" gate="+5V" pin="+5V"/>
</segment>
<segment>
<pinref part="1" gate="G$1" pin="VDD"/>
<pinref part="SUPPLY3" gate="+5V" pin="+5V"/>
</segment>
<segment>
<pinref part="2" gate="G$1" pin="VDD"/>
<pinref part="SUPPLY4" gate="+5V" pin="+5V"/>
</segment>
<segment>
<pinref part="3" gate="G$1" pin="VDD"/>
<pinref part="SUPPLY5" gate="+5V" pin="+5V"/>
</segment>
<segment>
<pinref part="6" gate="G$1" pin="VDD"/>
<pinref part="SUPPLY6" gate="+5V" pin="+5V"/>
</segment>
<segment>
<pinref part="5" gate="G$1" pin="VDD"/>
<pinref part="SUPPLY7" gate="+5V" pin="+5V"/>
</segment>
<segment>
<pinref part="X1" gate="-15" pin="1"/>
<pinref part="SUPPLY8" gate="+5V" pin="+5V"/>
</segment>
<segment>
<pinref part="+5V" gate="-1" pin="1"/>
<pinref part="SUPPLY9" gate="+5V" pin="+5V"/>
<wire x1="25.4" y1="124.46" x2="33.02" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="0" gate="G$1" pin="OUTB"/>
<pinref part="B" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="0" gate="G$1" pin="OUTG"/>
<pinref part="G" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="0" gate="G$1" pin="OUTR"/>
<pinref part="R" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="1" gate="G$1" pin="OUTR"/>
<pinref part="R1" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="2" gate="G$1" pin="OUTR"/>
<pinref part="R2" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="3" gate="G$1" pin="OUTR"/>
<pinref part="R3" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="4" gate="G$1" pin="OUTR"/>
<pinref part="R4" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="5" gate="G$1" pin="OUTR"/>
<pinref part="R5" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="6" gate="G$1" pin="OUTR"/>
<pinref part="R6" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="1" gate="G$1" pin="OUTG"/>
<pinref part="G1" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="3" gate="G$1" pin="OUTG"/>
<pinref part="G3" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="4" gate="G$1" pin="OUTG"/>
<pinref part="G4" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="5" gate="G$1" pin="OUTG"/>
<pinref part="G5" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="6" gate="G$1" pin="OUTG"/>
<pinref part="G6" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="1" gate="G$1" pin="OUTB"/>
<pinref part="B1" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="2" gate="G$1" pin="OUTB"/>
<pinref part="B2" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="3" gate="G$1" pin="OUTB"/>
<pinref part="B3" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="4" gate="G$1" pin="OUTB"/>
<pinref part="B4" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="5" gate="G$1" pin="OUTB"/>
<pinref part="B5" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="6" gate="G$1" pin="OUTB"/>
<pinref part="B6" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="2" gate="G$1" pin="OUTG"/>
<pinref part="G2" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="0" gate="G$1" pin="DIN"/>
<wire x1="-12.7" y1="88.9" x2="-7.62" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="88.9" x2="-7.62" y2="68.58" width="0.1524" layer="91"/>
<pinref part="X2" gate="-1" pin="1"/>
<wire x1="-7.62" y1="68.58" x2="106.68" y2="68.58" width="0.1524" layer="91"/>
<wire x1="106.68" y1="68.58" x2="106.68" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="1" gate="G$1" pin="DIN"/>
<wire x1="33.02" y1="88.9" x2="35.56" y2="88.9" width="0.1524" layer="91"/>
<wire x1="35.56" y1="88.9" x2="35.56" y2="71.12" width="0.1524" layer="91"/>
<wire x1="35.56" y1="71.12" x2="111.76" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X2" gate="-2" pin="1"/>
<wire x1="111.76" y1="71.12" x2="111.76" y2="60.96" width="0.1524" layer="91"/>
<wire x1="111.76" y1="60.96" x2="106.68" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="2" gate="G$1" pin="DIN"/>
<wire x1="78.74" y1="88.9" x2="81.28" y2="88.9" width="0.1524" layer="91"/>
<wire x1="81.28" y1="88.9" x2="81.28" y2="73.66" width="0.1524" layer="91"/>
<wire x1="81.28" y1="73.66" x2="114.3" y2="73.66" width="0.1524" layer="91"/>
<wire x1="114.3" y1="73.66" x2="114.3" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X2" gate="-3" pin="1"/>
<wire x1="114.3" y1="58.42" x2="106.68" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="3" gate="G$1" pin="DIN"/>
<wire x1="119.38" y1="88.9" x2="121.92" y2="88.9" width="0.1524" layer="91"/>
<pinref part="X2" gate="-4" pin="1"/>
<wire x1="121.92" y1="88.9" x2="121.92" y2="55.88" width="0.1524" layer="91"/>
<wire x1="121.92" y1="55.88" x2="106.68" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="X2" gate="-5" pin="1"/>
<wire x1="106.68" y1="53.34" x2="121.92" y2="53.34" width="0.1524" layer="91"/>
<wire x1="121.92" y1="53.34" x2="121.92" y2="7.62" width="0.1524" layer="91"/>
<wire x1="121.92" y1="7.62" x2="-10.16" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="45.72" width="0.1524" layer="91"/>
<pinref part="4" gate="G$1" pin="DIN"/>
<wire x1="-10.16" y1="45.72" x2="-12.7" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="5" gate="G$1" pin="DIN"/>
<wire x1="25.4" y1="45.72" x2="27.94" y2="45.72" width="0.1524" layer="91"/>
<wire x1="27.94" y1="45.72" x2="27.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="27.94" y1="10.16" x2="119.38" y2="10.16" width="0.1524" layer="91"/>
<wire x1="119.38" y1="10.16" x2="119.38" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X2" gate="-8" pin="1"/>
<wire x1="119.38" y1="45.72" x2="106.68" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="X2" gate="-9" pin="1"/>
<wire x1="106.68" y1="43.18" x2="116.84" y2="43.18" width="0.1524" layer="91"/>
<wire x1="116.84" y1="43.18" x2="116.84" y2="12.7" width="0.1524" layer="91"/>
<wire x1="116.84" y1="12.7" x2="66.04" y2="12.7" width="0.1524" layer="91"/>
<pinref part="6" gate="G$1" pin="DIN"/>
<wire x1="66.04" y1="12.7" x2="66.04" y2="45.72" width="0.1524" layer="91"/>
<wire x1="66.04" y1="45.72" x2="63.5" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="V" gate="-1" pin="1"/>
<pinref part="+12V" gate="-1" pin="1"/>
<wire x1="-30.48" y1="121.92" x2="-25.4" y2="121.92" width="0.1524" layer="91"/>
<pinref part="V1" gate="-1" pin="1"/>
<wire x1="-25.4" y1="121.92" x2="-20.32" y2="121.92" width="0.1524" layer="91"/>
<junction x="-25.4" y="121.92"/>
<pinref part="V2" gate="-1" pin="1"/>
<wire x1="-20.32" y1="121.92" x2="-15.24" y2="121.92" width="0.1524" layer="91"/>
<junction x="-20.32" y="121.92"/>
<pinref part="V3" gate="-1" pin="1"/>
<wire x1="-15.24" y1="121.92" x2="-10.16" y2="121.92" width="0.1524" layer="91"/>
<junction x="-15.24" y="121.92"/>
<pinref part="V4" gate="-1" pin="1"/>
<wire x1="-10.16" y1="121.92" x2="-5.08" y2="121.92" width="0.1524" layer="91"/>
<junction x="-10.16" y="121.92"/>
<pinref part="V5" gate="-1" pin="1"/>
<wire x1="-5.08" y1="121.92" x2="0" y2="121.92" width="0.1524" layer="91"/>
<junction x="-5.08" y="121.92"/>
<pinref part="V6" gate="-1" pin="1"/>
<wire x1="0" y1="121.92" x2="10.16" y2="121.92" width="0.1524" layer="91"/>
<junction x="0" y="121.92"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
