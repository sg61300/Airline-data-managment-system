<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="date_wise_r" DTDVersion="9.0.2.0.0">
  <xmlSettings xmlTag="DATE_WISE_R" xmlPrologType="text">
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
    <userParameter name="RSRV_DATE" datatype="character" width="40"
     defaultWidth="0" defaultHeight="0"/>
    <dataSource name="Q_1">
      <select>
      <![CDATA[select * from RESERVATION WHERE RESERVE_DATE = 
decode(:rsrv_date,NULL,RESERVE_DATE,:rsrv_date)
and upper(STATUS) != 'NO']]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_TCT_NO">
        <displayInfo x="1.23083" y="1.94995" width="1.53845" height="1.62695"
        />
        <dataItem name="TCT_NO" oracleDatatype="number" columnOrder="12"
         width="22" defaultWidth="120000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.TCT_NO"
           descriptiveExpression="TCT_NO" order="1" oracleDatatype="number"
           width="22" precision="10"/>
        </dataItem>
        <dataItem name="FLIGHT_NO" datatype="vchar2" columnOrder="13"
         width="4" defaultWidth="40000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.FLIGHT_NO"
           descriptiveExpression="FLIGHT_NO" order="2" width="4"/>
        </dataItem>
        <dataItem name="SEAT_NO" datatype="vchar2" columnOrder="14" width="3"
         defaultWidth="30000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.SEAT_NO"
           descriptiveExpression="SEAT_NO" order="3" width="3"/>
        </dataItem>
        <dataItem name="FLIGHT_DATE" datatype="date" oracleDatatype="date"
         columnOrder="15" width="9" defaultWidth="90000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.FLIGHT_DATE"
           descriptiveExpression="FLIGHT_DATE" order="4" oracleDatatype="date"
           width="9"/>
        </dataItem>
        <dataItem name="FLIGHT_TIME" datatype="vchar2" columnOrder="16"
         defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.FLIGHT_TIME"
           descriptiveExpression="FLIGHT_TIME" order="5" width="10"/>
        </dataItem>
        <dataItem name="SOURCE" datatype="vchar2" columnOrder="17" width="20"
         defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.SOURCE"
           descriptiveExpression="SOURCE" order="6" width="20"/>
        </dataItem>
        <dataItem name="DESTINATION" datatype="vchar2" columnOrder="18"
         width="20" defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.DESTINATION"
           descriptiveExpression="DESTINATION" order="7" width="20"/>
        </dataItem>
        <dataItem name="CLASS" datatype="vchar2" columnOrder="19" width="1"
         defaultWidth="10000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.CLASS"
           descriptiveExpression="CLASS" order="8" width="1"/>
        </dataItem>
        <dataItem name="RESERVE_DATE" datatype="date" oracleDatatype="date"
         columnOrder="20" width="9" defaultWidth="90000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.RESERVE_DATE"
           descriptiveExpression="RESERVE_DATE" order="9"
           oracleDatatype="date" width="9"/>
        </dataItem>
        <dataItem name="TOTAL_FARE" oracleDatatype="number" columnOrder="21"
         width="22" defaultWidth="120000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.TOTAL_FARE"
           descriptiveExpression="TOTAL_FARE" order="10"
           oracleDatatype="number" width="22" scale="2" precision="10"/>
        </dataItem>
        <dataItem name="P_NAME" datatype="vchar2" columnOrder="22" width="50"
         defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.P_NAME"
           descriptiveExpression="P_NAME" order="11" width="50"/>
        </dataItem>
        <dataItem name="P_ADD" datatype="vchar2" columnOrder="23" width="200"
         defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.P_ADD"
           descriptiveExpression="P_ADD" order="12" width="200"/>
        </dataItem>
        <dataItem name="P_CNTCT_NO" oracleDatatype="number" columnOrder="24"
         width="22" defaultWidth="120000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.P_CNTCT_NO"
           descriptiveExpression="P_CNTCT_NO" order="13"
           oracleDatatype="number" width="22" precision="10"/>
        </dataItem>
        <dataItem name="PASSPORT_NO" datatype="vchar2" columnOrder="25"
         defaultWidth="100000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.PASSPORT_NO"
           descriptiveExpression="PASSPORT_NO" order="14" width="10"/>
        </dataItem>
        <dataItem name="STATUS" datatype="vchar2" columnOrder="26" width="3"
         defaultWidth="30000" defaultHeight="10000">
          <dataDescriptor expression="RESERVATION.STATUS"
           descriptiveExpression="STATUS" order="15" width="3"/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_TCT_NO_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.50000" height="0.31250"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"/>
        <repeatingFrame name="R_G_TCT_NO" source="G_TCT_NO"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.18750" width="7.50000"
           height="0.12500"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_TCT_NO" source="TCT_NO" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="0.00000" y="0.18750" width="0.93750"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_FLIGHT_NO" source="FLIGHT_NO" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="0.93750" y="0.18750" width="0.31250"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_SEAT_NO" source="SEAT_NO" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="1.25000" y="0.18750" width="0.18750"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_FLIGHT_DATE" source="FLIGHT_DATE" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="1.43750" y="0.18750" width="0.68750"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_FLIGHT_TIME" source="FLIGHT_TIME" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="2.12500" y="0.18750" width="0.37500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_SOURCE" source="SOURCE" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="2.50000" y="0.18750" width="0.37500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_DESTINATION" source="DESTINATION" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="2.87500" y="0.18750" width="0.43750"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_CLASS" source="CLASS" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="3.31250" y="0.18750" width="0.25000"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_RESERVE_DATE" source="RESERVE_DATE" alignment="start"
            >
            <font face="Arial" size="5"/>
            <geometryInfo x="3.56250" y="0.18750" width="0.68750"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_TOTAL_FARE" source="TOTAL_FARE" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="4.25000" y="0.18750" width="0.93750"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_P_NAME" source="P_NAME" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="5.18750" y="0.18750" width="0.37500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_P_ADD" source="P_ADD" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="5.56250" y="0.18750" width="0.37500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_P_CNTCT_NO" source="P_CNTCT_NO" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="5.93750" y="0.18750" width="0.93750"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_PASSPORT_NO" source="PASSPORT_NO" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="6.87500" y="0.18750" width="0.37500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_STATUS" source="STATUS" alignment="start">
            <font face="Arial" size="5"/>
            <geometryInfo x="7.25000" y="0.18750" width="0.25000"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_TCT_NO_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="7.50000"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_TCT_NO">
            <geometryInfo x="0.00000" y="0.00000" width="0.93750"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Tct No]]>
              </string>
            </textSegment>
          </text>
          <text name="B_FLIGHT_NO">
            <geometryInfo x="0.93750" y="0.00000" width="0.31250"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Flight No]]>
              </string>
            </textSegment>
          </text>
          <text name="B_SEAT_NO">
            <geometryInfo x="1.25000" y="0.00000" width="0.18750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Seat
]]>
              </string>
            </textSegment>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[No]]>
              </string>
            </textSegment>
          </text>
          <text name="B_FLIGHT_DATE">
            <geometryInfo x="1.43750" y="0.00000" width="0.68750"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Flight Date]]>
              </string>
            </textSegment>
          </text>
          <text name="B_FLIGHT_TIME">
            <geometryInfo x="2.12500" y="0.00000" width="0.37500"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Flight Time]]>
              </string>
            </textSegment>
          </text>
          <text name="B_SOURCE">
            <geometryInfo x="2.50000" y="0.00000" width="0.37500"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Source]]>
              </string>
            </textSegment>
          </text>
          <text name="B_DESTINATION">
            <geometryInfo x="2.87500" y="0.00000" width="0.43750"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Destination]]>
              </string>
            </textSegment>
          </text>
          <text name="B_CLASS">
            <geometryInfo x="3.31250" y="0.00000" width="0.25000"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Class]]>
              </string>
            </textSegment>
          </text>
          <text name="B_RESERVE_DATE">
            <geometryInfo x="3.56250" y="0.00000" width="0.68750"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Reserve Date]]>
              </string>
            </textSegment>
          </text>
          <text name="B_TOTAL_FARE">
            <geometryInfo x="4.25000" y="0.00000" width="0.93750"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Total Fare]]>
              </string>
            </textSegment>
          </text>
          <text name="B_P_NAME">
            <geometryInfo x="5.18750" y="0.00000" width="0.37500"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[P Name]]>
              </string>
            </textSegment>
          </text>
          <text name="B_P_ADD">
            <geometryInfo x="5.56250" y="0.00000" width="0.37500"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[P Add]]>
              </string>
            </textSegment>
          </text>
          <text name="B_P_CNTCT_NO">
            <geometryInfo x="5.93750" y="0.00000" width="0.93750"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[P Cntct No]]>
              </string>
            </textSegment>
          </text>
          <text name="B_PASSPORT_NO">
            <geometryInfo x="6.87500" y="0.00000" width="0.37500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Passport
]]>
              </string>
            </textSegment>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[No]]>
              </string>
            </textSegment>
          </text>
          <text name="B_STATUS">
            <geometryInfo x="7.25000" y="0.00000" width="0.25000"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="5" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Status]]>
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
B4E51F60 4000B300 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 B3000000 F0000000 10000000 10000000 A3000000 E0000000
10000000 10000000 A3000000 E0000000 10000000 10000000 A3000000 E0000000
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 BEFFFFFF
00000000 BEFFFFFF 00000000 BEFFFFFF 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 10000000 00000000 00000000
00000000 00000000 00000000 FFFFFFFF FFFFFFFF EFFFFFFF 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
56E64600 00000000 B300F800 B7108050 0394B1C0 88C1C1C0 8259D1C0 85F8D1C0
8EADD1C0 0BA1C1C0 00000000 0000C647
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
<rw:dataArea id="MGTCTNOGRPFR">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBTCTNO" asArray="no"/> class="OraColumnHeader"> Tct No </th>
   <th <rw:id id="HBFLIGHTNO" asArray="no"/> class="OraColumnHeader"> Flight No </th>
   <th <rw:id id="HBSEATNO" asArray="no"/> class="OraColumnHeader"> Seat
No </th>
   <th <rw:id id="HBFLIGHTDATE" asArray="no"/> class="OraColumnHeader"> Flight Date </th>
   <th <rw:id id="HBFLIGHTTIME" asArray="no"/> class="OraColumnHeader"> Flight Time </th>
   <th <rw:id id="HBSOURCE" asArray="no"/> class="OraColumnHeader"> Source </th>
   <th <rw:id id="HBDESTINATION" asArray="no"/> class="OraColumnHeader"> Destination </th>
   <th <rw:id id="HBCLASS" asArray="no"/> class="OraColumnHeader"> Class </th>
   <th <rw:id id="HBRESERVEDATE" asArray="no"/> class="OraColumnHeader"> Reserve Date </th>
   <th <rw:id id="HBTOTALFARE" asArray="no"/> class="OraColumnHeader"> Total Fare </th>
   <th <rw:id id="HBPNAME" asArray="no"/> class="OraColumnHeader"> P Name </th>
   <th <rw:id id="HBPADD" asArray="no"/> class="OraColumnHeader"> P Add </th>
   <th <rw:id id="HBPCNTCTNO" asArray="no"/> class="OraColumnHeader"> P Cntct No </th>
   <th <rw:id id="HBPASSPORTNO" asArray="no"/> class="OraColumnHeader"> Passport
No </th>
   <th <rw:id id="HBSTATUS" asArray="no"/> class="OraColumnHeader"> Status </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="R_G_TCT_NO_1" src="G_TCT_NO">
   <tr>
    <td <rw:headers id="HFTCTNO" src="HBTCTNO"/> class="OraCellNumber"><rw:field id="F_TCT_NO" src="TCT_NO" nullValue="&nbsp;"> F_TCT_NO </rw:field></td>
    <td <rw:headers id="HFFLIGHTNO" src="HBFLIGHTNO"/> class="OraCellText"><rw:field id="F_FLIGHT_NO" src="FLIGHT_NO" nullValue="&nbsp;"> F_FLIGHT_NO </rw:field></td>
    <td <rw:headers id="HFSEATNO" src="HBSEATNO"/> class="OraCellText"><rw:field id="F_SEAT_NO" src="SEAT_NO" nullValue="&nbsp;"> F_SEAT_NO </rw:field></td>
    <td <rw:headers id="HFFLIGHTDATE" src="HBFLIGHTDATE"/> class="OraCellText"><rw:field id="F_FLIGHT_DATE" src="FLIGHT_DATE" nullValue="&nbsp;"> F_FLIGHT_DATE </rw:field></td>
    <td <rw:headers id="HFFLIGHTTIME" src="HBFLIGHTTIME"/> class="OraCellText"><rw:field id="F_FLIGHT_TIME" src="FLIGHT_TIME" nullValue="&nbsp;"> F_FLIGHT_TIME </rw:field></td>
    <td <rw:headers id="HFSOURCE" src="HBSOURCE"/> class="OraCellText"><rw:field id="F_SOURCE" src="SOURCE" nullValue="&nbsp;"> F_SOURCE </rw:field></td>
    <td <rw:headers id="HFDESTINATION" src="HBDESTINATION"/> class="OraCellText"><rw:field id="F_DESTINATION" src="DESTINATION" nullValue="&nbsp;"> F_DESTINATION </rw:field></td>
    <td <rw:headers id="HFCLASS" src="HBCLASS"/> class="OraCellText"><rw:field id="F_CLASS" src="CLASS" nullValue="&nbsp;"> F_CLASS </rw:field></td>
    <td <rw:headers id="HFRESERVEDATE" src="HBRESERVEDATE"/> class="OraCellText"><rw:field id="F_RESERVE_DATE" src="RESERVE_DATE" nullValue="&nbsp;"> F_RESERVE_DATE </rw:field></td>
    <td <rw:headers id="HFTOTALFARE" src="HBTOTALFARE"/> class="OraCellNumber"><rw:field id="F_TOTAL_FARE" src="TOTAL_FARE" nullValue="&nbsp;"> F_TOTAL_FARE </rw:field></td>
    <td <rw:headers id="HFPNAME" src="HBPNAME"/> class="OraCellText"><rw:field id="F_P_NAME" src="P_NAME" nullValue="&nbsp;"> F_P_NAME </rw:field></td>
    <td <rw:headers id="HFPADD" src="HBPADD"/> class="OraCellText"><rw:field id="F_P_ADD" src="P_ADD" nullValue="&nbsp;"> F_P_ADD </rw:field></td>
    <td <rw:headers id="HFPCNTCTNO" src="HBPCNTCTNO"/> class="OraCellNumber"><rw:field id="F_P_CNTCT_NO" src="P_CNTCT_NO" nullValue="&nbsp;"> F_P_CNTCT_NO </rw:field></td>
    <td <rw:headers id="HFPASSPORTNO" src="HBPASSPORTNO"/> class="OraCellText"><rw:field id="F_PASSPORT_NO" src="PASSPORT_NO" nullValue="&nbsp;"> F_PASSPORT_NO </rw:field></td>
    <td <rw:headers id="HFSTATUS" src="HBSTATUS"/> class="OraCellText"><rw:field id="F_STATUS" src="STATUS" nullValue="&nbsp;"> F_STATUS </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
</table>
</rw:dataArea> <!-- id="MGTCTNOGRPFR" -->
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
