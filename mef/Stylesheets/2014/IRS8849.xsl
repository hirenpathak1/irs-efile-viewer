<?xml version="1.0" encoding="UTF-8"?>
<!--  10/06/2009  Added the new Special Condition Description for TY2010 per ETA091682OTH -->
<!--  10/07/2009  Added new pushpin for the General Dependency Medium for TY2010 per ETA091653OTH  -->
<!-- 05/18/12 - Made changes per defect #32722 - Jeremy Nichols -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:include href="CommonPathRef.xsl"/>
  <xsl:include href="PopulateTemplate_ETEC.xsl"/>
  <xsl:include href="AddHeader.xsl"/>
  <xsl:include href="AddOnTable.xsl"/>
  <xsl:include href="IRS8849Style.xsl"/>
  <xsl:output method="html" indent="yes"/>
  <xsl:strip-space elements="*"/>
  <xsl:param name="FormData" select="$RtnDoc/IRS8849"/>
  <xsl:template match="/">
    
    <html>
      <head>
        <title>
          <xsl:call-template name="FormTitle">
            <xsl:with-param name="RootElement" select="local-name($FormData)">
        </xsl:with-param>
          </xsl:call-template>
        </title>
        <!-- No Browser Caching -->
        <meta http-equiv="Pragma" content="no-cache"/>
        <meta http-equiv="Cache-Control" content="no-cache"/>
        <meta http-equiv="Expires" content="0"/>
        <!-- No Proxy Caching -->
        <meta http-equiv="Cache-Control" content="private"/>
        <!-- Define Character Set -->
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="Description" content="IRS Form 8849"/>
        <META name="GENERATOR" content="IBM WebSphere Studio"/>
        <script language="JavaScript" src="{$ScriptPath}/FormDisplay.js" type="text/javascript"/>
        <xsl:call-template name="InitJS"/>
        <style type="text/css">
          <xsl:if test="not($Print) or $Print=''">
            <xsl:call-template name="IRS8849Style"/>
            <xsl:call-template name="AddOnStyle"/>
          </xsl:if>
        </style>
        <xsl:call-template name="GlobalStylesForm"/>
      </head>
      <body class="styBodyClass">
        <form name="IRS8849">
          <xsl:call-template name="DocumentHeader"/>
          <div class="styTBB" style="width:187mm;">
            <div class="styFNBox" style="width:34mm;height:16mm;">
          Form
            <span style="font-size:16pt;font-family:'Arial'; font-weight:bold;">8849</span>
              <br/>
              <span style="font-size:6.5pt;font-family:'Arial';">(Rev. January 2009)</span>
              <!-- General Dependency (Push Pin)-->
              <xsl:call-template name="SetFormLinkInline">
                <xsl:with-param name="TargetNode" select="$FormData"/>
              </xsl:call-template>
              
              <br/>
              <span class="styAgency" style="height:2mm;">Department of the Treasury</span>
              <span class="styAgency" style="padding-bottom:0px;height:2mm;">Internal Revenue Service</span>
            </div>
            <div class="styFTBox" style="width:115mm;height:16mm;text-align:center;">
              <br/>
              <span class="styMainTitle">Claim for Refund of Excise Taxes</span>
            </div>
            <div class="styTYBox" style="width:37mm;height:16mm;">
              <div style="padding-top:5mm;padding-bottom:8.5mm;">OMB No. 1545-1420</div>
            </div>
          </div>
          <div class="styTBB" style="width:187mm; border-bottom:1px solid black;padding-top:.5mm;">
        Print clearly. Leave a blank box between words.<br/>
            <div style="width:140mm; float:left;clear: none;padding-top:3mm">
        Name of claimant
          <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="1"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="2"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="3"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="4"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="5"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="6"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="7"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="8"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="9"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="10"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="11"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="12"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="13"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="14"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="15"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="16"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="17"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="18"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="19"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="20"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="21"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="22"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="23"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="24"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="25"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="26"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/BusinessName/BusinessNameLine1"/>
                <xsl:with-param name="BoxNum" select="27"/>
              </xsl:call-template>
              <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
            </div>
            <div style="width:46mm; float:left;clear: none;padding-top:3mm">
              <span style="font-size:6pt">Employer identification number (EIN)</span>
              <br/>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EIN"/>
                <xsl:with-param name="BoxNum" select="1"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EIN"/>
                <xsl:with-param name="BoxNum" select="2"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EIN"/>
                <xsl:with-param name="BoxNum" select="3"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EIN"/>
                <xsl:with-param name="BoxNum" select="4"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EIN"/>
                <xsl:with-param name="BoxNum" select="5"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EIN"/>
                <xsl:with-param name="BoxNum" select="6"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EIN"/>
                <xsl:with-param name="BoxNum" select="7"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EIN"/>
                <xsl:with-param name="BoxNum" select="8"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EIN"/>
                <xsl:with-param name="BoxNum" select="9"/>
              </xsl:call-template>
              <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
            </div>
            <br/>
            <br/>
            <div style="width:140mm; float:left;clear: none;padding-top:3mm">
        Address (number, street, room or suite no.)
        <xsl:choose>
                <xsl:when test="$RtnHdrData/Filer/USAddress">
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="1"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="2"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="3"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="4"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="5"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="6"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="7"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="8"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="9"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="10"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="11"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="12"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="13"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="14"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="15"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="16"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="17"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="18"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="19"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="20"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="21"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="22"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="23"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="24"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="25"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="26"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="27"/>
                  </xsl:call-template>
                  <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="1"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="2"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="3"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="4"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="5"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="6"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="7"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="8"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="9"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="10"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="11"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="12"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="13"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="14"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="15"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="16"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="17"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="18"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="19"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="20"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="21"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="22"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="23"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="24"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="25"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="26"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/AddressLine1"/>
                    <xsl:with-param name="BoxNum" select="27"/>
                  </xsl:call-template>
                  <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
                </xsl:otherwise>
              </xsl:choose>
            </div>
            <div style="width:46mm; float:left;clear: none;padding-top:3mm">
        Social security number (SSN)<br/>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/SSN"/>
                <xsl:with-param name="BoxNum" select="1"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/SSN"/>
                <xsl:with-param name="BoxNum" select="2"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/SSN"/>
                <xsl:with-param name="BoxNum" select="3"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/SSN"/>
                <xsl:with-param name="BoxNum" select="4"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/SSN"/>
                <xsl:with-param name="BoxNum" select="5"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/SSN"/>
                <xsl:with-param name="BoxNum" select="6"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/SSN"/>
                <xsl:with-param name="BoxNum" select="7"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/SSN"/>
                <xsl:with-param name="BoxNum" select="8"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/SSN"/>
                <xsl:with-param name="BoxNum" select="9"/>
              </xsl:call-template>
              <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
            </div>
            <br/>
            <br/>
            <div style="width:140mm; float:left;clear: none;padding-top:3mm">
       City and state or province. If you have a foreign address, see page 2.
        
         <xsl:choose>
                <xsl:when test="$RtnHdrData/Filer/USAddress != '' ">
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="1"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="2"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="3"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="4"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="5"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="6"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="7"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="8"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="9"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="10"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="11"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="12"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="13"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="14"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="15"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="16"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="17"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="18"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="19"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="20"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="21"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/City"/>
                    <xsl:with-param name="BoxNum" select="22"/>
                  </xsl:call-template>
                  <div style="height:7mm;width:5mm;border:1 solid black;border-right-width:0;clear:none;float:left"/>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/State"/>
                    <xsl:with-param name="BoxNum" select="1"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/State"/>
                    <xsl:with-param name="BoxNum" select="2"/>
                  </xsl:call-template>
                  <div style="height:7mm;width:5mm;border:1 solid black;border-right-width:0;clear:none;float:left"/>
                  <div style="height:7mm;width:5mm;border:1 solid black;border-right-width:0;clear:none;float:left"/>
                  <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="1"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="2"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="3"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="4"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="5"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="6"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="7"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="8"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="9"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="10"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="11"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="12"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="13"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="14"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="15"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="16"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="17"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="18"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="19"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="20"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="21"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/City"/>
                    <xsl:with-param name="BoxNum" select="22"/>
                  </xsl:call-template>
                  <div style="height:7mm;width:5mm;border:1 solid black;border-right-width:0;clear:none;float:left"/>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/ProvinceOrState"/>
                    <xsl:with-param name="BoxNum" select="1"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/ProvinceOrState"/>
                    <xsl:with-param name="BoxNum" select="2"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/ProvinceOrState"/>
                    <xsl:with-param name="BoxNum" select="3"/>
                  </xsl:call-template>
                  <xsl:call-template name="PopulateIndividualLetterBox">
                    <xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/ProvinceOrState"/>
                    <xsl:with-param name="BoxNum" select="4"/>
                  </xsl:call-template>
                  <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
                </xsl:otherwise>
              </xsl:choose>
            </div>
            <div style="width:46mm;float:left; clear: none;padding-top:3mm">
		   ZIP code<br/>
		   <xsl:choose>
                <xsl:when test="$RtnHdrData/Filer/USAddress != '' ">
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/ZIPCode"/>
					<xsl:with-param name="BoxNum" select="1"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/ZIPCode"/>
					<xsl:with-param name="BoxNum" select="2"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/ZIPCode"/>
					<xsl:with-param name="BoxNum" select="3"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/ZIPCode"/>
					<xsl:with-param name="BoxNum" select="4"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/ZIPCode"/>
					<xsl:with-param name="BoxNum" select="5"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/ZIPCode"/>
					<xsl:with-param name="BoxNum" select="6"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/ZIPCode"/>
					<xsl:with-param name="BoxNum" select="7"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/ZIPCode"/>
					<xsl:with-param name="BoxNum" select="8"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress/ZIPCode"/>
					<xsl:with-param name="BoxNum" select="9"/>
				  </xsl:call-template>
			  </xsl:when>
			  <xsl:otherwise>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/PostalCode"/>
					<xsl:with-param name="BoxNum" select="1"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/PostalCode"/>
					<xsl:with-param name="BoxNum" select="2"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/PostalCode"/>
					<xsl:with-param name="BoxNum" select="3"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/PostalCode"/>
					<xsl:with-param name="BoxNum" select="4"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/PostalCode"/>
					<xsl:with-param name="BoxNum" select="5"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/PostalCode"/>
					<xsl:with-param name="BoxNum" select="6"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/PostalCode"/>
					<xsl:with-param name="BoxNum" select="7"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/PostalCode"/>
					<xsl:with-param name="BoxNum" select="8"/>
				  </xsl:call-template>
				  <xsl:call-template name="PopulateIndividualLetterBox">
					<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress/PostalCode"/>
					<xsl:with-param name="BoxNum" select="9"/>
				  </xsl:call-template>
			  </xsl:otherwise>
		  </xsl:choose>
              <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
            </div>
            <div style="width:140mm; float:left;clear: none;padding-top:3.2mm">
       Foreign country, if applicable. Do not abbreviate.
       
         <xsl:variable name="countryname" select="document('CountriesList.xml')/countries"/>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="1"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="2"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="3"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="4"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="5"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="6"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="7"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="8"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="9"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="10"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="11"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="12"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="13"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="14"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="15"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="16"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="17"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="18"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="19"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="20"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="21"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="22"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="23"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="24"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="25"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="26"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$countryname/country[@id=   $RtnHdrData/Filer/ForeignAddress/Country]"/>
                <xsl:with-param name="BoxNum" select="27"/>
              </xsl:call-template>
              <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
            </div>
            <div style="width:46mm;float:left;padding-top:1mm;padding-bottom:1mm;clear: none;text-align:center;font-size:6.5pt;">
       Month claimant’s income tax year ends<br/>
              <div style="padding-left:18mm;">
                <xsl:call-template name="PopulateIndividualLetterBox">
                  <xsl:with-param name="TargetNode" select="$RtnHdrData/TaxYearEndMonthNum"/>
                  <xsl:with-param name="BoxNum" select="3"/>
                </xsl:call-template>
                <xsl:call-template name="PopulateIndividualLetterBox">
                  <xsl:with-param name="TargetNode" select="$RtnHdrData/TaxYearEndMonthNum"/>
                  <xsl:with-param name="BoxNum" select="4"/>
                </xsl:call-template>
                <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
              </div>
            </div>
            <br/>
            <br/>
            <div style="width:140mm; float:left;clear: none;padding-bottom:3mm;padding-top:3mm">
       Daytime telephone number (optional)         
         
          <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/DaytimePhoneNum"/>
                <xsl:with-param name="BoxNum" select="1"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/DaytimePhoneNum"/>
                <xsl:with-param name="BoxNum" select="2"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/DaytimePhoneNum"/>
                <xsl:with-param name="BoxNum" select="3"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/DaytimePhoneNum"/>
                <xsl:with-param name="BoxNum" select="4"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/DaytimePhoneNum"/>
                <xsl:with-param name="BoxNum" select="5"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/DaytimePhoneNum"/>
                <xsl:with-param name="BoxNum" select="6"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/DaytimePhoneNum"/>
                <xsl:with-param name="BoxNum" select="7"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/DaytimePhoneNum"/>
                <xsl:with-param name="BoxNum" select="8"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/DaytimePhoneNum"/>
                <xsl:with-param name="BoxNum" select="9"/>
              </xsl:call-template>
              <xsl:call-template name="PopulateIndividualLetterBox">
                <xsl:with-param name="TargetNode" select="$RtnHdrData/DaytimePhoneNum"/>
                <xsl:with-param name="BoxNum" select="10"/>
              </xsl:call-template>
              <div style="height:7mm;width:1px;border:0 solid black;border-left-width:1;clear:none;float:left">
        </div>
            </div>
          </div>
          <!--Caution Line-->
          <div class="styBB" style="font-size:7.5pt;width:187mm;padding-top:1.5mm;padding-bottom:1.5mm;">
            <b>Caution.</b>
            <i>
              <b> Do not</b> use Form 8849 to make adjustments to liability reported on Forms 720 for prior quarters or to claim any amounts that were or will be claimed on 
        <b>Schedule C (Form 720),</b> Claims, <b>Form 4136,</b> Credit for Federal Tax Paid on Fuels, 
        <b>Form 2290,</b> Heavy Highway Vehicle Use Tax Return, or <b>Form 730,</b> 
        Monthly Tax Return for Wagers.</i>
          </div>
          <div class="styBB" style="font-family:'Arial';font-size:9pt;font-weight:bold;width:187mm;text-align:center;padding-top:2mm;padding-bottom:2mm;">
        Schedules Attached
      </div>
          <div class="styTBB" style="width:187mm; border-bottom: 1px solid black">
        Check (&#x2713;) the appropriate box(es) for the schedule(s) you attach to 
        Form 8849. Only attach the schedules on which you are claiming a refund. 
        Schedules 2, 3, 5, and 8 cannot be filed with any other schedules on Form 
        8849. File each of these schedules with a separate <br/>Form 8849.
      </div>
          <table class="styTBB" style="width:187mm;font-size:7pt" cellpadding="0" cellspacing="0">
            <tr>
              <td class="styBoldText" style="width:20mm;padding-top:4mm;text-align:center;border:1px black solid;border-top:0px;border-left:0;border-bottom:0px;">
            Schedule 1
              </td>
              <td style="width:162mm;padding-top:4mm;padding-left:2mm;">
                <div style="float:left">
                  <label>
                    <xsl:call-template name="PopulateLabel">
                      <xsl:with-param name="TargetNode" select="$FormData/Schedule1AttachedInd"/>
                      <xsl:with-param name="BackupName">IRS8849Schedule1Attached</xsl:with-param>
                    </xsl:call-template>
              Nontaxable Use of Fuels
            </label>
                </div>
                <div style="float:right">
                  <span style="letter-spacing:4mm; font-weight:bold; float:left"> 
                ......................... 
              </span>
                </div>
              </td>
              <td style="width:5mm;padding-top:4mm;padding-bottom:0mm;">
                <input type="checkbox" class="styCkbox" style="width:6mm;">
                  <xsl:call-template name="PopulateCheckbox">
                    <xsl:with-param name="TargetNode" select="$FormData/Schedule1AttachedInd"/>
                    <xsl:with-param name="BackupName">IRS8849Schedule1Attached</xsl:with-param>
                  </xsl:call-template>
                </input>
              </td>
            </tr>
            <tr>
              <td class="styBoldText" style="width:20mm;padding-top:4mm;text-align:center;border:1px black solid;border-top:0px;border-left:0;border-bottom:0px;">
            Schedule 2
          </td>
              <td style="width:162mm;padding-top:4mm;padding-left:2mm;">
                <div style="float:left">
                  <label>
                    <xsl:call-template name="PopulateLabel">
                      <xsl:with-param name="TargetNode" select="$FormData/Schedule2AttachedInd"/>
                      <xsl:with-param name="BackupName">IRS8849Schedule2Attached</xsl:with-param>
                    </xsl:call-template>
              Sales by Registered Ultimate Vendors
            </label>
                </div>
                <div style="float:right">
                  <span style="letter-spacing:4mm; font-weight:bold; float:left"> 
                ..................... 
              </span>
                </div>
              </td>
              <td style="width:5mm;padding-top:4mm;padding-bottom:0mm;">
                <input type="checkbox" class="styCkbox" style="width:6mm;">
                  <xsl:call-template name="PopulateCheckbox">
                    <xsl:with-param name="TargetNode" select="$FormData/Schedule2AttachedInd"/>
                    <xsl:with-param name="BackupName">IRS8849Schedule2Attached</xsl:with-param>
                  </xsl:call-template>
                </input>
              </td>
            </tr>
            <tr>
              <td class="styBoldText" style="width:20mm;padding-top:4mm;text-align:center;border:1px black solid;border-top:0px;border-left:0;border-bottom:0px;">
            Schedule 3
          </td>
              <td style="width:162mm;padding-top:4mm;padding-left:2mm;">
                <div style="float:left">
                  <label>
                    <xsl:call-template name="PopulateLabel">
                      <xsl:with-param name="TargetNode" select="$FormData/Schedule3AttachedInd"/>
                      <xsl:with-param name="BackupName">IRS8849Schedule3Attached</xsl:with-param>
                    </xsl:call-template>
              Certain Fuel Mixtures and the Alternative Fuel Credit
            </label>
                </div>
                <div style="float:right">
                  <span style="letter-spacing:4mm; font-weight:bold; float:left"> 
                .................
              </span>
                </div>
              </td>
              <td style="width:5mm;padding-top:4mm;padding-bottom:0mm;">
                <input type="checkbox" class="styCkbox" style="width:6mm;">
                  <xsl:call-template name="PopulateCheckbox">
                    <xsl:with-param name="TargetNode" select="$FormData/Schedule3AttachedInd"/>
                    <xsl:with-param name="BackupName">IRS8849Schedule3Attached</xsl:with-param>
                  </xsl:call-template>
                </input>
              </td>
            </tr>
            <tr>
              <td class="styBoldText" style="width:20mm;padding-top:4mm;text-align:center;border:1px black solid;border-top:0px;border-left:0;border-bottom:0px;">
            Schedule 5
          </td>
              <td style="width:162mm;padding-top:4mm;padding-left:2mm;">
                <div style="float:left">
                  <label>
                    <xsl:call-template name="PopulateLabel">
                      <xsl:with-param name="TargetNode" select="$FormData/Schedule5AttachedInd"/>
                      <xsl:with-param name="BackupName">IRS8849Schedule5Attached</xsl:with-param>
                    </xsl:call-template>
              Section 4081(e) Claims
            </label>
                </div>
                <div style="float:right">
                  <span style="letter-spacing:4mm; font-weight:bold; float:left"> 
                .........................
              </span>
                </div>
              </td>
              <td style="width:5mm;padding-top:4mm;padding-bottom:0mm;">
                <input type="checkbox" class="styCkbox" style="width:6mm;">
                  <xsl:call-template name="PopulateCheckbox">
                    <xsl:with-param name="TargetNode" select="$FormData/Schedule5AttachedInd"/>
                    <xsl:with-param name="BackupName">IRS8849Schedule5Attached</xsl:with-param>
                  </xsl:call-template>
                </input>
              </td>
            </tr>
            <tr>
              <td class="styBoldText" style="width:20mm;padding-top:4mm;text-align:center;border:1px black solid;border-top:0px;border-left:0;border-bottom:0px;">
            Schedule 6
          </td>
              <td style="width:162mm;padding-top:4mm;padding-left:2mm;">
                <div style="float:left">
                  <label>
                    <xsl:call-template name="PopulateLabel">
                      <xsl:with-param name="TargetNode" select="$FormData/Schedule6AttachedInd"/>
                      <xsl:with-param name="BackupName">IRS8849Schedule6Attached</xsl:with-param>
                    </xsl:call-template>
              Other Claims
            </label>
                </div>
                <div style="float:right">
                  <span style="letter-spacing:4mm; font-weight:bold; float:left"> 
                ............................
              </span>
                </div>
              </td>
              <td style="width:5mm;padding-top:4mm;padding-bottom:0mm;">
                <input type="checkbox" class="styCkbox" style="width:6mm;">
                  <xsl:call-template name="PopulateCheckbox">
                    <xsl:with-param name="TargetNode" select="$FormData/Schedule6AttachedInd"/>
                    <xsl:with-param name="BackupName">IRS8849Schedule6Attached</xsl:with-param>
                  </xsl:call-template>
                </input>
              </td>
            </tr>
            <tr>
              <td style="border:1px black solid;border-top-width:0px;border-left-width:0px;border-bottom-width:1px;width:20mm;padding-top:4mm;padding-bottom:3mm;text-align:center;font-weight:bold;">
            Schedule 8<br/>
              </td>
              <td class="styTBB" style="width:162mm;padding-top:4mm;padding-bottom:3mm; border-bottom-width:1px; padding-left:2mm;">
                <div style="float:left">
                  <label>
                    <xsl:call-template name="PopulateLabel">
                      <xsl:with-param name="TargetNode" select="$FormData/Schedule8AttachedInd"/>
                      <xsl:with-param name="BackupName">IRS8849Schedule8Attached</xsl:with-param>
                    </xsl:call-template>
              Registered Credit Card Issuers
            </label>
                </div>
                <div style="float:right">
                  <span style="letter-spacing:4mm; font-weight:bold; float:left"> 
                ....................... 
              </span>
                </div>
              </td>
              <td class="styTBB" style="width:5mm;padding-top:4mm;padding-bottom:3mm;border-bottom-width:1px;">
                <input type="checkbox" class="styCkbox" style="width:6mm;">
                  <xsl:call-template name="PopulateCheckbox">
                    <xsl:with-param name="TargetNode" select="$FormData/Schedule8AttachedInd"/>
                    <xsl:with-param name="BackupName">IRS8849Schedule8Attached</xsl:with-param>
                  </xsl:call-template>
                </input>
              </td>
            </tr>
            <tr>
              <td rowspan="5" style="width:20mm;font-size:11pt;font-weight:bold;border:1px black solid;border-top:0px;border-left:0;border-bottom:0;">
            Sign<br/>
            Here
          </td>
              <td colspan="2">
                <div style="padding-left:2mm;padding-bottom:6mm;font-size:6.25pt;">
              Under penalties of perjury, I declare (1) that I have examined this claim, 
              including accompanying schedules and statements, and to the best
              of my knowledge and belief, it is true, correct, and complete, and (2) that 
              amounts claimed on this form have not been, and will not be, claimed
              on any other form. Declaration of preparer (other than taxpayer) is based
              on all information of which preparer has any knowledge.
            </div>
              </td>
            </tr>
            <tr>
              <td class="styBB" colspan="2">
                <div class="styGenericDiv" style="width:130mm;padding-left:2mm;"/>
                <div class="styGenericDiv" style="width:25mm;padding-left:2mm;border:1px black solid;border-top:0px;border-right:0;border-bottom:0;">
            </div>
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <div class="styGenericDiv" style="width:130mm;padding-left:2mm;">
              Signature and title (if applicable)
            </div>
                <div class="styGenericDiv" style="width:25mm;padding-left:2mm;">
              Date
            </div>
              </td>
            </tr>
            <tr>
              <td colspan="2" style="padding-left:2mm;padding-top:2mm;padding-bottom:2mm;">
                <xsl:call-template name="PopulateReturnHeaderFiler">
                  <xsl:with-param name="TargetNode">BusinessNameLine1</xsl:with-param>
                </xsl:call-template>
                <br/>
                <xsl:call-template name="PopulateReturnHeaderFiler">
                  <xsl:with-param name="TargetNode">BusinessNameLine2</xsl:with-param>
                </xsl:call-template>
                <br/>
              </td>
            </tr>
            <tr>
              <td colspan="2" style="padding-left:2mm;">
            Type or print your name below signature.
          </td>
            </tr>
          </table>
          <!-- BEGIN PREPARER SIGNATURE SECTION -->
          <!-- Implementing Preparer section in table -->
          <table border="0" cellspacing="0" cellpadding="0" style="width:187mm;font-size:6pt;border-color:black;clear:both;">
            <tr>
              <td rowspan="3" style="width:17.75mm;font-family:arial;font-size:9.5pt;font-weight:bold;border-right:1 solid black;vertical-align:top;padding-top:5mm;border-bottom:1 solid black;padding-right:1mm;">Paid Preparer's
Use Only</td>
              <td style="width:32mm;border-bottom:1 solid black;">
                <span style="width:13mm;padding-left:1mm;" class="styGenericDiv">Preparer's <span style="width:0.75mm;"/>signature</span>
                <span class="styGenericDiv" style="border:0 solid red;">
                  <img src="{$ImagePath}/8849_Bullet_Lg.gif" align="middle" alt="Big Right Arrow" border="0"/>
                </span>
              </td>
              <td style="width:43mm;border-right:1 solid black;border-bottom:1 solid black;">
                <span style="width:2px;"/>
              </td>
              <td style="width:30mm;border-right:1 solid black;border-bottom:1 solid black;padding-left:1mm;">
		    Date <br/>
                <xsl:call-template name="PopulateReturnHeaderPreparer">
                  <xsl:with-param name="TargetNode">DatePrepared</xsl:with-param>
                </xsl:call-template>
              </td>
              <td style="width:25mm;border-right:1 solid black;border-bottom:1 solid black;padding-left:2mm;padding-bottom:.5mm;">
                
                  <label>
                    <xsl:call-template name="PopulateReturnHeaderPreparer">
                      <xsl:with-param name="TargetNode">SelfEmployedCheckbox</xsl:with-param>
                      <xsl:with-param name="BackupName">PreparerSelfEmployed</xsl:with-param>
                    </xsl:call-template>Check <span style="width:17mm;"/>if  self-<span style="width:17mm;"/>employed
				  </label>
                
                <span style="width:2px;"/>
                <!--<img src="{$ImagePath}/8849_Bullet_Sm.gif" width="4" height="7" alt="right pointing bullet image" border="0"/>-->
                <span style="width:5px;"/>
                <input class="styCkbox" type="checkbox" style="width:4mm;">
                  <xsl:call-template name="PopulateReturnHeaderPreparer">
                    <xsl:with-param name="TargetNode">SelfEmployedCheckbox</xsl:with-param>
                    <xsl:with-param name="BackupName">PreparerSelfEmployed</xsl:with-param>
                  </xsl:call-template>
                </input>
              </td>
              <td style="width:35mm;border-bottom:1 solid black;padding-left:1mm;">Preparer's SSN or PTIN
  		  <br/>
                <xsl:call-template name="PopulateReturnHeaderPreparer">
                  <xsl:with-param name="TargetNode">SSN</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="PopulateReturnHeaderPreparer">
                  <xsl:with-param name="TargetNode">PTIN</xsl:with-param>
                </xsl:call-template>
              </td>
            </tr>
            <tr>
              <td rowspan="2" colspan="1" style="border-bottom:1 solid black;padding-left:.5mm;">
                <span class="styGenericDiv" style="padding-right:.5mm;">
					<span class="styGenericDiv" style="padding-right:.5mm;">Firm's name (or</span> 
					<span class="styGenericDiv" style="padding-right:.5mm;">yours if self-employed),</span>
					<span class="styGenericDiv" style="padding-right:.5mm;">address, and ZIP code</span>
                </span>
                <span class="styGenericDiv" style="">
                  <img src="{$ImagePath}/8849_Bullet_Lg.gif" align="middle" alt="Big Right Arrow" border="0"/>
                </span>
              </td>
              <td colspan="3" style="border-right:1 solid black;border-bottom:1 solid black;padding-left:.5mm;">
                <xsl:call-template name="PopulateReturnHeaderPreparerFirm">
                  <xsl:with-param name="TargetNode">BusinessNameLine1</xsl:with-param>
                </xsl:call-template>
                <br/>
                <xsl:call-template name="PopulateReturnHeaderPreparerFirm">
                  <xsl:with-param name="TargetNode">BusinessNameLine2</xsl:with-param>
                </xsl:call-template>
              </td>
              <td style="border-bottom:1 solid black;padding-left:1mm;">EIN 
     <!-- <img src="{$ImagePath}/8849_Bullet_Sm.gif" width="4" height="7" alt="right pointing bullet image" border="0"/>-->
                <span style="width:5px;"/>
                <xsl:call-template name="PopulateReturnHeaderPreparerFirm">
                  <xsl:with-param name="TargetNode">EIN</xsl:with-param>
                </xsl:call-template>
              </td>
            </tr>
            <tr>
              <td colspan="3" style="border-bottom:1 solid black;border-right:1 solid black;padding-left:.5mm;">
                <xsl:call-template name="PopulateReturnHeaderPreparerFirm">
                  <xsl:with-param name="TargetNode">AddressLine1</xsl:with-param>
                </xsl:call-template>
                <br/>
                <xsl:call-template name="PopulateReturnHeaderPreparerFirm">
                  <xsl:with-param name="TargetNode">AddressLine2</xsl:with-param>
                </xsl:call-template>
                <br/>
                <xsl:call-template name="PopulateReturnHeaderPreparerFirm">
                  <xsl:with-param name="TargetNode">CityStateInfo</xsl:with-param>
                </xsl:call-template>
                <br/>
                <xsl:call-template name="PopulateReturnHeaderPreparerFirm">
                  <xsl:with-param name="TargetNode">Country</xsl:with-param>
                </xsl:call-template>
              </td>
              <td style="border-bottom:1 solid black;padding-left:1mm;"> Phone no. 
        <xsl:call-template name="PopulateReturnHeaderPreparer">
                  <xsl:with-param name="TargetNode">Phone</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="PopulateReturnHeaderPreparer">
                  <xsl:with-param name="TargetNode">ForeignPhone</xsl:with-param>
                </xsl:call-template>
              </td>
            </tr>
          </table>
          <!-- END PREPARER SIGNATURE SECTION -->
          <!-- Page 1 Footer -->
          <!-- Page Break and Footer-->
          <div class="pageEnd" style="width:187mm;padding-top:1mm;">
            <div style="float:left;">
              <span class="styBoldText">For Privacy Act and Paperwork Reduction Act Notice, see instructions.</span>
              <span style="width:17mm;"/>                        
        Cat. No. 20027J
      </div>
            <div style="float:right;">
              <span style="width:40px;"/>  
        Form <span class="styBoldText" style="font-size:8pt;">8849</span> (Rev. 1-2009)
      </div>
          </div>
          <!-- END Page Break and Footer-->
          <!-- Left Over Data Table -->
          <!-- Additonal Data Title Bar and Button -->
          <div class="styLeftOverTitleLine" id="LeftoverData">
            <div class="styLeftOverTitle">
        Additional Data        
      </div>
            <div class="styLeftOverButtonContainer">
              <input class="styLeftoverTableBtn" TabIndex="1" type="button" value="Return to Form" onclick="javascript:returnToWriteInImage();"/>
            </div>
          </div>
          <!-- Additional Data Table -->
          <table class="styLeftOverTbl">
            <xsl:call-template name="PopulateCommonLeftover">
              <xsl:with-param name="TargetNode" select="$FormData"/>
              <xsl:with-param name="DescWidth" select="100"/>
            </xsl:call-template>
          </table>
          <!--Special Condition Description -->
          <span class="styRepeatingDataTitle">Form 8849, Special Condition Description: </span>
          <table class="styDepTbl" cellspacing="0" style="font-size:7pt;">
            <thead class="styTableThead">
              <tr class="styDepTblHdr">
                <th class="styDepTblCell" scope="col" rowspan="2" style="width:179mm;font-size:8pt;">
Special Condition Description</th>
              </tr>
            </thead>
            <tfoot/>
            <tbody>
              <xsl:for-each select="$FormData/SpecialConditionDesc">
                <tr style="border-color:black;height:6mm;">
                  <xsl:attribute name="class"><xsl:choose><xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when><xsl:otherwise>styDepTblRow2</xsl:otherwise></xsl:choose></xsl:attribute>
                  <td class="styTableCellText" style="width:179mm;">
                    <xsl:call-template name="PopulateText">
                      <xsl:with-param name="TargetNode" select="."/>
                    </xsl:call-template>
                    <span class="styTableCellPad"/>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
          <!-- END Left Over Table -->
        </form>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>