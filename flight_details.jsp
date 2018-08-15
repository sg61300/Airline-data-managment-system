<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="flight_details" DTDVersion="9.0.2.0.0">
  <xmlSettings xmlTag="MODULE8" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforeReportHtmlEscape>
    <![CDATA[<html>
<body dir=&Direction bgcolor="#ffffff">
]]>
    </beforeReportHtmlEscape>
    <beforeFormHtmlEscape>
    <![CDATA[<html>
<body dir=&Direction bgcolor="#ffffff">
<form method=post action="_action_">
<input name="hidden_run_parameters" type=hidden value="_hidden_">
<font color=red><!--error--></font>
<center>
<p><table border=0 cellspacing=0 cellpadding=0>
<tr>
<td><input type=submit></td>
<td width=15>
<td><input type=reset></td>
</tr>
</table>
<p><hr><p>
]]>
    </beforeFormHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[select fs.flight_no,fs.flight_name,fs.route_code,fs.busns_capct,fs.econmc_capct,rd.source,rd.destination,rd.flight_date,rd.flight_dep_time,rd.eco_fare,rd.buss_fare
  from flightsch fs, ROUTE_DETAIL rd
 WHERE fs.route_code=rd.route_code]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_flight_no">
        <displayInfo x="1.12097" y="1.94995" width="1.75818" height="1.69922"
        />
        <dataItem name="flight_no" datatype="vchar2" columnOrder="11"
         width="4" defaultWidth="40000" defaultHeight="10000">
          <dataDescriptor expression="fs.flight_no"
           descriptiveExpression="FLIGHT_NO" order="1" width="4"/>
        </dataItem>
        <dataItem name="flight_name" datatype="vchar2" columnOrder="12"
         width="20" defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="fs.flight_name"
           descriptiveExpression="FLIGHT_NAME" order="2" width="20"/>
        </dataItem>
        <dataItem name="route_code" datatype="vchar2" columnOrder="13"
         defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="fs.route_code"
           descriptiveExpression="ROUTE_CODE" order="3" width="10"/>
        </dataItem>
        <dataItem name="busns_capct" oracleDatatype="number" columnOrder="14"
         width="22" defaultWidth="50000" defaultHeight="10000">
          <dataDescriptor expression="fs.busns_capct"
           descriptiveExpression="BUSNS_CAPCT" order="4" width="22"
           precision="3"/>
        </dataItem>
        <dataItem name="econmc_capct" oracleDatatype="number" columnOrder="15"
         width="22" defaultWidth="50000" defaultHeight="10000">
          <dataDescriptor expression="fs.econmc_capct"
           descriptiveExpression="ECONMC_CAPCT" order="5" width="22"
           precision="3"/>
        </dataItem>
        <dataItem name="source" datatype="vchar2" columnOrder="16" width="20"
         defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="rd.source"
           descriptiveExpression="SOURCE" order="6" width="20"/>
        </dataItem>
        <dataItem name="destination" datatype="vchar2" columnOrder="17"
         width="20" defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="rd.destination"
           descriptiveExpression="DESTINATION" order="7" width="20"/>
        </dataItem>
        <dataItem name="flight_date" datatype="date" oracleDatatype="date"
         columnOrder="18" width="9" defaultWidth="90000" defaultHeight="10000">
          <dataDescriptor expression="rd.flight_date"
           descriptiveExpression="FLIGHT_DATE" order="8" width="9"/>
        </dataItem>
        <dataItem name="flight_dep_time" datatype="vchar2" columnOrder="19"
         defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="rd.flight_dep_time"
           descriptiveExpression="FLIGHT_DEP_TIME" order="9" width="10"/>
        </dataItem>
        <dataItem name="eco_fare" oracleDatatype="number" columnOrder="20"
         width="22" defaultWidth="120000" defaultHeight="10000">
          <dataDescriptor expression="rd.eco_fare"
           descriptiveExpression="ECO_FARE" order="10" width="22"
           precision="10"/>
        </dataItem>
        <dataItem name="buss_fare" oracleDatatype="number" columnOrder="21"
         width="22" defaultWidth="120000" defaultHeight="10000">
          <dataDescriptor expression="rd.buss_fare"
           descriptiveExpression="BUSS_FARE" order="11" width="22"
           precision="10"/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_flight_no_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.06250" height="0.25000"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"/>
        <repeatingFrame name="R_G_flight_no" source="G_flight_no"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.12500" width="7.06250"
           height="0.12500"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_flight_no" source="flight_no" alignment="start">
            <font face="Arial" size="6"/>
            <geometryInfo x="0.00000" y="0.12500" width="0.37500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_flight_name" source="flight_name" alignment="start">
            <font face="Arial" size="6"/>
            <geometryInfo x="0.37500" y="0.12500" width="0.50000"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_route_code" source="route_code" alignment="start">
            <font face="Arial" size="6"/>
            <geometryInfo x="0.87500" y="0.12500" width="0.50000"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_busns_capct" source="busns_capct" alignment="start">
            <font face="Arial" size="6"/>
            <geometryInfo x="1.37500" y="0.12500" width="0.56250"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_econmc_capct" source="econmc_capct" alignment="start"
            >
            <font face="Arial" size="6"/>
            <geometryInfo x="1.93750" y="0.12500" width="0.62500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_source" source="source" alignment="start">
            <font face="Arial" size="6"/>
            <geometryInfo x="2.56250" y="0.12500" width="0.43750"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_destination" source="destination" alignment="start">
            <font face="Arial" size="6"/>
            <geometryInfo x="3.00000" y="0.12500" width="0.50000"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_flight_date" source="flight_date" alignment="start">
            <font face="Arial" size="6"/>
            <geometryInfo x="3.50000" y="0.12500" width="0.81250"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_flight_dep_time" source="flight_dep_time"
           alignment="start">
            <font face="Arial" size="6"/>
            <geometryInfo x="4.31250" y="0.12500" width="0.62500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_eco_fare" source="eco_fare" alignment="start">
            <font face="Arial" size="6"/>
            <geometryInfo x="4.93750" y="0.12500" width="1.06250"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_buss_fare" source="buss_fare" alignment="start">
            <font face="Arial" size="6"/>
            <geometryInfo x="6.00000" y="0.12500" width="1.06250"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_flight_no_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="7.06250"
           height="0.12500"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_flight_no">
            <geometryInfo x="0.00000" y="0.00000" width="0.37500"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Flight No]]>
              </string>
            </textSegment>
          </text>
          <text name="B_flight_name">
            <geometryInfo x="0.37500" y="0.00000" width="0.50000"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Flight Name]]>
              </string>
            </textSegment>
          </text>
          <text name="B_route_code">
            <geometryInfo x="0.87500" y="0.00000" width="0.50000"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Route Code]]>
              </string>
            </textSegment>
          </text>
          <text name="B_busns_capct">
            <geometryInfo x="1.37500" y="0.00000" width="0.56250"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Busns Capct]]>
              </string>
            </textSegment>
          </text>
          <text name="B_econmc_capct">
            <geometryInfo x="1.93750" y="0.00000" width="0.62500"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Econmc Capct]]>
              </string>
            </textSegment>
          </text>
          <text name="B_source">
            <geometryInfo x="2.56250" y="0.00000" width="0.43750"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Source]]>
              </string>
            </textSegment>
          </text>
          <text name="B_destination">
            <geometryInfo x="3.00000" y="0.00000" width="0.50000"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Destination]]>
              </string>
            </textSegment>
          </text>
          <text name="B_flight_date">
            <geometryInfo x="3.50000" y="0.00000" width="0.81250"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Flight Date]]>
              </string>
            </textSegment>
          </text>
          <text name="B_flight_dep_time">
            <geometryInfo x="4.31250" y="0.00000" width="0.62500"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Flight Dep Time]]>
              </string>
            </textSegment>
          </text>
          <text name="B_eco_fare">
            <geometryInfo x="4.93750" y="0.00000" width="1.06250"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Eco Fare]]>
              </string>
            </textSegment>
          </text>
          <text name="B_buss_fare">
            <geometryInfo x="6.00000" y="0.00000" width="1.06250"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="6" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Buss Fare]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <image name="B_1_SEC2" templateSection="main">
        <geometryInfo x="0.50000" y="0.43750" width="1.40625" height="0.37500"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.40625" y="0.37500"/>
          <point x="0.50000" y="0.43750"/>
          <point x="1.40625" y="0.37500"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1_SEC2">
          
74946483 93167800 42007F00 00FFFFFF 183B180E CE0E3076 300C9D0C 1A6C1A98
8B98FE6F FE7FAF7F 0B0D0B8A BC8A19DB 198CED8C 0D3E0D7E 1F7E991C 998D7E8D
8B4D8B31 1731260A 26257925 17AA1723 482324D8 2432A732 97EA97B0 C6B0965A
96A388A3 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00129F40 00000000 00C20000 00007800 42000080
FF003080 C1840B0A 1C388031 A2C58C01 1668B081 6084C10A 18305868 8133E043
08000874 0020A061 8F820A0C 143040A3 E7400408 0E8C5912 90E7C69B 031C1859
8317E189 830804EC F90438A0 51811A06 2859B080 A18B9C27 1E2070B2 96A0C794
2B0ECC68 C15829C9 8614BA7D FA8350A0 05050508 749A2091 87460855 563D1845
D36CC187 5B1E15FA B0626500 BC7DBA85 406080E3 00070203 C5F870C0 A2020112
921CBBF6 7A2EC9B2 0BEA0C70 20237307 C20D0C75 A031D76F D1DF35C2 00805090
89CD8C43 18258AF1 D53146A8 63E284BA 76D5EA44 D23DBA40 98212821 06AC2983
05202A5B A9600467 36145BE1 D0B0C4EE 1103148E 5B723EE8 C102E630 5AE590C4
FF4A0B2F 04508830 0387C20F B1381F99 41E24284 021C67EC 5E808371 450F1313
148DB292 010C0810 CD540018 108D6200 2810C747 0218F080 02121060 02809505
51C00A1A D670060A 1E400046 8A1E004D 97491288 00400304 0724D086 6974B023
810810E6 5C840EF4 F0E08F25 E8902E46 3E08E0AC 824A10FE DF461C88 F2EA4218
68904104 1C203263 083D4030 C50E1530 A1AA7D26 00942001 18C801CA 4F363893
1F8B3228 A023814A 09862081 49003267 583169A1 21002610 A12B8F19 A842A747
0C196F1E 4E2EA480 C20802F7 26AA9562 A9E1999E 3A2A000F 823A100D 97587A68
B790AA12 5031CD44 1C7826A6 8276F538 EA450028 52220C06 79E1D9A4 0640D823
FFA98228 B6AE8000 30C02CAE 5D7A576E 474EA825 200326C5 45E00462 9AC52E4E
AE085220 06821871 20070038 1C24080A 76B21EA4 0E205B6F 8E523816 A65B4EA8
931C9A12 9990C886 CD8B1DE7 55AE74BC 600DCA4A 59E10F00 38A2D4B6 1E74E045
80D67BF2 120EFE08 B08B583E 884E92B9 723522E8 A000D9D7 60540419 FE6BA8A6
E4203386 04107F23 84D5CB33 27C23629 E8E59E1B 0522E00C D2E4CB66 A008786C
200F2210 3264BC4D F90CA0A9 CA9A7179 BC6238F0 81CE0CFC BF20CB25 7C302191
4DFA300B A2C23903 E8870EB8 70C8865E E9F2149B 9AECCA6C BDCA7401 C0C24A20
60F5926B C85081C5 23C8C06B BD8E8830 CB79E29B F6F7817D 50657005 18404596
FFD3042C B7EEC0F6 FCF31204 0C3B78A3 DF1D1090 C9D10C30 1CEA4B6B 7420228D
5FED07F5 0100175C 20E20C29 C73E4704 1BF16798 3B4019B7 4C0A2054 A74C083E
2F67421A 0000A008 433BE3E7 94065A5B A75AD228 1EEA4AB3 4A067603 14608BB3
891C60AB AF930F40 9A30059F 08E6FA43 4F5BA83E 49001ECF 228E66CA 04AFE7DE
F47D31F4 937FF063 F0EB7BF1 95B4060A B82181D7 0584F7DE F26B835E 80612EAE
FA488FD8 83140810 200404AE 01080810 065D2080 86C11022 0300FE16 0410410C
AA10600C 6370880C 403A7200 40E7D210 404441E4 E08404C9 410808DF 301210FB
7F1160C3 0B489318 08707524 2C00C20C 06D1C219 20E18389 598A0758 F1930CE0
FF3001C3 00C10C28 824C9C30 A08F1100 53080859 2005D0D4 88047319 0756E118
08B5E00F 2C361E46 8860C706 FFA4423C 70257C10 F2C20030 210B0440 2E4E7880
43E09039 32087117 13000B17 04296A8B 29312309 68C4CF84 40A88B4C 70205C18
16C7066F 000E0C70 611D58D5 C716F0F3 2D6C706A EAC847C4 EC200F74 08D3AB17
52A14504 11100E74 3EC20E24 F4434205 46898440 A10AC6F1 1F3A2210 919C70AD
62294D9E 06008E84 5940046A 00E9481A 65EE8394 32AD0752 808712E4 AB4A0865
220548B2 184EB0BB 453CA5E5 01728BC5 98E29E87 CA6044E2 18F11E3A 05010584
ED142DD4 34416A74 E68F1140 0FEAA980 C15E1132 94DCE265 29086B14 2220977B
FFDCF847 0DE8C49F 7683F391 41804121 28D7C04A 74259AE4 004000A9 32C842EF
C329EC71 6E252900 07084090 A41DE2A5 151A93CC 9C10389E 5400860B 00508386
8079957C FE1211B9 4440A0C3 93A4ACA5 244FE99A B45AB947 9804BD08 1DF97D4A
22949A85 BC9F105E 7803D75E F466AD05 95671D83 E0831A10 47840C86 91430060
84081C29 902D68A3 41C9E111 7A74C9AF 2485EA29 6AFCC5A6 D298A194 88205EE8
04CFACF0 9B9065F8 8E278A90 D8465F08 2D648921 07490006 A6949CAF 243A2235
5ACE4DA0 3477904D 008AF848 87D856D2 B8886C70 E44D4AD0 5BC69D40 BC6DA52F
E208A252 0E206198 0880854B 1B5C4F36 467CA215 C9896F58 49DCCE30 12AC9DCB
44A53D68 C0842120 400110D7 6A1B10AB 5EDAF630 0908A3A0 04A96C5E 96E6BE8F
3C4EA002 4B8F47E2 47B8B9CD 10A37BB8 BC56E6D2 5AB7BDEE A77FBB0E D0FA877C
B4E51F60 4000B307 E3A0C3F2 24F44495 E3A0C3F2 8445D4C4 E3A0C312 D2D2A0C3
F22777A3 275607F6 2747E3A0 D2D2E3A0 00000000 00000000 9C007330 00000050
07977801 8C647801 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00007400
        </binaryData>
      </image>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#000000"/>
    <color index="191" displayName="TableHeading" value="#046804"/>
    <color index="192" displayName="TableCell" value="#c0d9c0"/>
    <color index="193" displayName="Totals" value="#81b381"/>
  </colorPalette>
  <reportPrivate defaultReportType="tabular" templateName="rwgreen"/>
</report>
</rw:objects>
-->
<HTML>
<HEAD>
<rw:style id="rwgreen">
<link rel="StyleSheet" type="text/css" href="css/rwgreen.css">
</rw:style>

<TITLE> Your Title </TITLE>
<META content="text/html; charset=iso-8859-1" http-equiv=Content-Type>



<BODY bgColor=#ffffff link=#000000 vLink=#000000>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#ffffff rowSpan=2 vAlign=center width=188> 
      <p><IMG src="images/rwgreen_logo.gif" width="135" height="36"><br>
      </p>
      </TD>
    <TD bgColor=#ffffff height=40 vAlign=top><IMG alt="" height=1 src="images/stretch.gif" width=5></TD>
    <TD align=right bgColor=#ffffff vAlign=bottom>&nbsp; </TD>
  </TR></TBODY></TABLE>
<TABLE bgColor=#ff0000 border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD class="OraColumnHeader">&nbsp; </TD>
  </TR></TBODY></TABLE>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#ff0000 vAlign=top class="OraColumnHeader"><IMG alt="" border=0 height=17 src="images/topcurl.gif" width=30></TD>
    <TD vAlign=top width="100%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor=#000000 height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor=#9a9c9a height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor=#b3b4b3 height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>
<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="29%" valign="top"> 
      <TABLE width="77%" border="0" cellspacing="0" cellpadding="0">
        <TR> 
          <TD width="10%" class="OraCellText"><IMG src="images/green_d_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation goes here </TD>
        </TR>
        <TR> 
          <TD width="10%" class="OraCellText"><IMG src="images/green_r_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation Item</TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="71%">
      <DIV align="center">
	    <!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGflightnoGRPFR">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBflightno" asArray="no"/> class="OraColumnHeader"> Flight No </th>
   <th <rw:id id="HBflightname" asArray="no"/> class="OraColumnHeader"> Flight Name </th>
   <th <rw:id id="HBroutecode" asArray="no"/> class="OraColumnHeader"> Route Code </th>
   <th <rw:id id="HBbusnscapct" asArray="no"/> class="OraColumnHeader"> Busns Capct </th>
   <th <rw:id id="HBeconmccapct" asArray="no"/> class="OraColumnHeader"> Econmc Capct </th>
   <th <rw:id id="HBsource" asArray="no"/> class="OraColumnHeader"> Source </th>
   <th <rw:id id="HBdestination" asArray="no"/> class="OraColumnHeader"> Destination </th>
   <th <rw:id id="HBflightdate" asArray="no"/> class="OraColumnHeader"> Flight Date </th>
   <th <rw:id id="HBflightdeptime" asArray="no"/> class="OraColumnHeader"> Flight Dep Time </th>
   <th <rw:id id="HBecofare" asArray="no"/> class="OraColumnHeader"> Eco Fare </th>
   <th <rw:id id="HBbussfare" asArray="no"/> class="OraColumnHeader"> Buss Fare </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="R_G_flight_no_1" src="G_flight_no">
   <tr>
    <td <rw:headers id="HFflightno" src="HBflightno"/> class="OraCellText"><rw:field id="F_flight_no" src="flight_no" nullValue="&nbsp;"> F_flight_no </rw:field></td>
    <td <rw:headers id="HFflightname" src="HBflightname"/> class="OraCellText"><rw:field id="F_flight_name" src="flight_name" nullValue="&nbsp;"> F_flight_name </rw:field></td>
    <td <rw:headers id="HFroutecode" src="HBroutecode"/> class="OraCellText"><rw:field id="F_route_code" src="route_code" nullValue="&nbsp;"> F_route_code </rw:field></td>
    <td <rw:headers id="HFbusnscapct" src="HBbusnscapct"/> class="OraCellNumber"><rw:field id="F_busns_capct" src="busns_capct" nullValue="&nbsp;"> F_busns_capct </rw:field></td>
    <td <rw:headers id="HFeconmccapct" src="HBeconmccapct"/> class="OraCellNumber"><rw:field id="F_econmc_capct" src="econmc_capct" nullValue="&nbsp;"> F_econmc_capct </rw:field></td>
    <td <rw:headers id="HFsource" src="HBsource"/> class="OraCellText"><rw:field id="F_source" src="source" nullValue="&nbsp;"> F_source </rw:field></td>
    <td <rw:headers id="HFdestination" src="HBdestination"/> class="OraCellText"><rw:field id="F_destination" src="destination" nullValue="&nbsp;"> F_destination </rw:field></td>
    <td <rw:headers id="HFflightdate" src="HBflightdate"/> class="OraCellText"><rw:field id="F_flight_date" src="flight_date" nullValue="&nbsp;"> F_flight_date </rw:field></td>
    <td <rw:headers id="HFflightdeptime" src="HBflightdeptime"/> class="OraCellText"><rw:field id="F_flight_dep_time" src="flight_dep_time" nullValue="&nbsp;"> F_flight_dep_time </rw:field></td>
    <td <rw:headers id="HFecofare" src="HBecofare"/> class="OraCellNumber"><rw:field id="F_eco_fare" src="eco_fare" nullValue="&nbsp;"> F_eco_fare </rw:field></td>
    <td <rw:headers id="HFbussfare" src="HBbussfare"/> class="OraCellNumber"><rw:field id="F_buss_fare" src="buss_fare" nullValue="&nbsp;"> F_buss_fare </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
</table>
</rw:dataArea> <!-- id="MGflightnoGRPFR" -->
<!-- End of Data Area Generated by Reports Developer -->

	  </DIV>
    </TD>
  </TR>
</TABLE>
<P><BR>
</P>
<TD align=middle vAlign=top width="100%">&nbsp;</TD>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#000000 colSpan=2><IMG alt=" " border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor=#ff0000 colSpan=2 class="OraColumnHeader"><IMG alt=" " border=0 height=4 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor=#000000 colSpan=2><IMG alt=" " border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor=#ffffff>&nbsp;</TD>
    <TD align=right bgColor=#ffffff>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>
<p>&nbsp;</p>
</BODY>
</HTML>
<!--
</rw:report>
-->
