<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="user_details" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE6" xmlPrologType="text">
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
      <![CDATA[SELECT ALL USER_MASTER.USER_ID, 
USER_MASTER.U_NAME, USER_MASTER.GENDER, USER_MASTER.U_DOB, USER_MASTER.U_CNTCT_NO, 
USER_MASTER.U_EMAIL_ID, USER_MASTER.U_ADD, USER_MASTER.U_DESIG
FROM USER_MASTER ]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_USER_ID">
        <displayInfo x="1.30408" y="1.94995" width="1.39197" height="1.62695"
        />
        <dataItem name="USER_ID" datatype="vchar2" columnOrder="11" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="User Id">
          <dataDescriptor expression="USER_MASTER.USER_ID"
           descriptiveExpression="USER_ID" order="1" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="U_NAME" datatype="vchar2" columnOrder="12" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="U Name">
          <dataDescriptor expression="USER_MASTER.U_NAME"
           descriptiveExpression="U_NAME" order="2" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="GENDER" datatype="vchar2" columnOrder="13" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Gender">
          <dataDescriptor expression="USER_MASTER.GENDER"
           descriptiveExpression="GENDER" order="3" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="U_DOB" datatype="date" oracleDatatype="date"
         columnOrder="14" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="U Dob">
          <dataDescriptor expression="USER_MASTER.U_DOB"
           descriptiveExpression="U_DOB" order="4" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="U_CNTCT_NO" oracleDatatype="number" columnOrder="15"
         width="22" defaultWidth="120000" defaultHeight="10000"
         columnFlags="1" defaultLabel="U Cntct No">
          <dataDescriptor expression="USER_MASTER.U_CNTCT_NO"
           descriptiveExpression="U_CNTCT_NO" order="5"
           oracleDatatype="number" width="22" precision="10"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="U_EMAIL_ID" datatype="vchar2" columnOrder="16"
         width="50" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="U Email Id">
          <dataDescriptor expression="USER_MASTER.U_EMAIL_ID"
           descriptiveExpression="U_EMAIL_ID" order="6" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="U_ADD" datatype="vchar2" columnOrder="17" width="200"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="U Add">
          <dataDescriptor expression="USER_MASTER.U_ADD"
           descriptiveExpression="U_ADD" order="7" width="200"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="U_DESIG" datatype="vchar2" columnOrder="18" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="U Desig">
          <dataDescriptor expression="USER_MASTER.U_DESIG"
           descriptiveExpression="U_DESIG" order="8" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_USER_ID_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.50000" height="0.37500"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"/>
        <repeatingFrame name="R_G_USER_ID" source="G_USER_ID"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.18750" width="7.50000"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_USER_ID" source="USER_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial" size="10"/>
            <geometryInfo x="0.00000" y="0.18750" width="0.93750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_U_NAME" source="U_NAME" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial" size="10"/>
            <geometryInfo x="0.93750" y="0.18750" width="0.75000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_GENDER" source="GENDER" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial" size="10"/>
            <geometryInfo x="1.68750" y="0.18750" width="0.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_U_DOB" source="U_DOB" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial" size="10"/>
            <geometryInfo x="2.12500" y="0.18750" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_U_CNTCT_NO" source="U_CNTCT_NO" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial" size="10"/>
            <geometryInfo x="2.87500" y="0.18750" width="1.00000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_U_EMAIL_ID" source="U_EMAIL_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial" size="10"/>
            <geometryInfo x="3.87500" y="0.18750" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_U_ADD" source="U_ADD" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial" size="10"/>
            <geometryInfo x="5.37500" y="0.18750" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_U_DESIG" source="U_DESIG" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial" size="10"/>
            <geometryInfo x="6.81250" y="0.18750" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_USER_ID_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="7.50000"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_USER_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="1.00000"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[User Id]]>
              </string>
            </textSegment>
          </text>
          <text name="B_U_NAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.93750" y="0.00000" width="0.75000"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[U Name]]>
              </string>
            </textSegment>
          </text>
          <text name="B_GENDER" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.62500" y="0.00000" width="0.50000"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Gender]]>
              </string>
            </textSegment>
          </text>
          <text name="B_U_DOB" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.18750" y="0.00000" width="0.62500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[U Dob]]>
              </string>
            </textSegment>
          </text>
          <text name="B_U_CNTCT_NO" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.87500" y="0.00000" width="1.06250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[U Cntct No]]>
              </string>
            </textSegment>
          </text>
          <text name="B_U_EMAIL_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.12500" y="0.00000" width="1.31250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[U Email Id]]>
              </string>
            </textSegment>
          </text>
          <text name="B_U_ADD" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="6.00000" y="0.00000" width="0.81250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Address]]>
              </string>
            </textSegment>
          </text>
          <text name="B_U_DESIG" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="6.81250" y="0.00000" width="0.68750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[U Desig]]>
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
00000000 00000000 00000000 00002433
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
  <reportPrivate defaultReportType="tabular" versionFlags2="0"
   templateName="rwgreen"/>
  <reportWebSettings>
  <![CDATA[]]>
  </reportWebSettings>
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
<rw:dataArea id="MGUSERIDGRPFR">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBUSERID" asArray="no"/> class="OraColumnHeader"> User Id </th>
   <th <rw:id id="HBUNAME" asArray="no"/> class="OraColumnHeader"> U Name </th>
   <th <rw:id id="HBGENDER" asArray="no"/> class="OraColumnHeader"> Gender </th>
   <th <rw:id id="HBUDOB" asArray="no"/> class="OraColumnHeader"> U Dob </th>
   <th <rw:id id="HBUCNTCTNO" asArray="no"/> class="OraColumnHeader"> U Cntct No </th>
   <th <rw:id id="HBUEMAILID" asArray="no"/> class="OraColumnHeader"> U Email Id </th>
   <th <rw:id id="HBUADD" asArray="no"/> class="OraColumnHeader"> U Add </th>
   <th <rw:id id="HBUDESIG" asArray="no"/> class="OraColumnHeader"> U Desig </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="R_G_USER_ID_1" src="G_USER_ID">
   <tr>
    <td <rw:headers id="HFUSERID" src="HBUSERID"/> class="OraCellText"><rw:field id="F_USER_ID" src="USER_ID" nullValue="&nbsp;"> F_USER_ID </rw:field></td>
    <td <rw:headers id="HFUNAME" src="HBUNAME"/> class="OraCellText"><rw:field id="F_U_NAME" src="U_NAME" nullValue="&nbsp;"> F_U_NAME </rw:field></td>
    <td <rw:headers id="HFGENDER" src="HBGENDER"/> class="OraCellText"><rw:field id="F_GENDER" src="GENDER" nullValue="&nbsp;"> F_GENDER </rw:field></td>
    <td <rw:headers id="HFUDOB" src="HBUDOB"/> class="OraCellText"><rw:field id="F_U_DOB" src="U_DOB" nullValue="&nbsp;"> F_U_DOB </rw:field></td>
    <td <rw:headers id="HFUCNTCTNO" src="HBUCNTCTNO"/> class="OraCellNumber"><rw:field id="F_U_CNTCT_NO" src="U_CNTCT_NO" nullValue="&nbsp;"> F_U_CNTCT_NO </rw:field></td>
    <td <rw:headers id="HFUEMAILID" src="HBUEMAILID"/> class="OraCellText"><rw:field id="F_U_EMAIL_ID" src="U_EMAIL_ID" nullValue="&nbsp;"> F_U_EMAIL_ID </rw:field></td>
    <td <rw:headers id="HFUADD" src="HBUADD"/> class="OraCellText"><rw:field id="F_U_ADD" src="U_ADD" nullValue="&nbsp;"> F_U_ADD </rw:field></td>
    <td <rw:headers id="HFUDESIG" src="HBUDESIG"/> class="OraCellText"><rw:field id="F_U_DESIG" src="U_DESIG" nullValue="&nbsp;"> F_U_DESIG </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
</table>
</rw:dataArea> <!-- id="MGUSERIDGRPFR" -->
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
