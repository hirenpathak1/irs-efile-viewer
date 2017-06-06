<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:output method="html" indent="yes"/>
  <xsl:strip-space elements="*"/>  
  
  <xsl:include href="PopulateTemplate.xsl"/>
  <xsl:include href="AddHeader.xsl"/>
  <xsl:include href="CommonPathRef.xsl"/>
  <xsl:include href="AddOnTable.xsl"/>  
    
  <xsl:param name="DependencyData" select="$RtnDoc/Collectables28PctGainStmt"/>
  
  <!-- Template to display Gain Eligible Section 1045 Rollover Statement -->
  
  <xsl:template name="ShowDependencyData">
    <!--Gain Eligible Section 1045 Rollover Statement Data -->
    <table class="styDepTbl">
      <thead class="styTableThead">
        <tr class="styDepTblHdr">  
           <th class="styDepTblCell" scope="col">Sale or Exchange Date</th>        
           <th class="styDepTblCell" scope="col">Amount of Gain or Loss Attributable to Section 751 Property</th>
           <th class="styDepTblCell" scope="col">Amount of Gain(Loss) Attributable to Capital Gain(Loss) on Sale of Partnership Interest</th>    
        </tr>
      </thead>
        <tfoot/>
       <tbody>
        <xsl:for-each select="$DependencyData/Collectables28PctGainGrp">
          <tr>
            <xsl:attribute name="class">
            <xsl:choose>
               <xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
               <xsl:otherwise>styDepTblRow2</xsl:otherwise>
            </xsl:choose>
            </xsl:attribute>
            <td class="styDepTblCell" style="text-align:center">
              <xsl:call-template name="PopulateMonthDayYear">
                <xsl:with-param name="TargetNode" select="SaleOrExchangeDt"/>
              </xsl:call-template>  
            </td>
            <td class="styDepTblCell" style="text-align:right">
              <xsl:call-template name="PopulateAmount">
                <xsl:with-param name="TargetNode" select="GainLossAttributableSect571Amt"/>
              </xsl:call-template>                  
            </td>
            <td class="styDepTblCell" style="text-align:right">
              <xsl:call-template name="PopulateAmount">
                <xsl:with-param name="TargetNode" select="CapitalGainLossOnSalePrtshpAmt"/>
              </xsl:call-template>
            </td> 
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:template>
  
  
  <xsl:param name="depDocTitle">
    <xsl:call-template name="PopulateDisplayName"><xsl:with-param name="TargetNode" select="$DependencyData"/></xsl:call-template>  
  </xsl:param>
  <!-- Main template -->
  <xsl:template match="/">
    <html>
      <head>
          <title><xsl:value-of select="$depDocTitle"/></title>

         <!-- No Browser Caching -->
         <meta http-equiv="Pragma" content="no-cache"/>
         <meta http-equiv="Cache-Control" content="no-cache"/>
         <meta http-equiv="Expires" content="0"/>
         <!-- No Proxy Caching -->
         <meta http-equiv="Cache-Control" content="private"/>
         <!-- Define Character Set -->
         <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
         <meta name="Author" content="Ravi Venigalla"/>
         <meta name="Description" content="{$depDocTitle}"/> 
        
        <script language="JavaScript" src="{$ScriptPath}/FormDisplay.js" type="text/javascript"/>
        <xsl:call-template name="InitJS"/>
        
        <style type="text/css">
          <xsl:if test="not($Print) or $Print=''">
            <xsl:call-template name="AddOnStyle"/>    
          </xsl:if>
        </style>
      <xsl:call-template name="GlobalStylesDep"/>
</head>    
      <body class="styBodyClass">      
        <xsl:call-template name="DocumentHeaderDependency"/>          
        <div class="styDepTitleLine">
          <span class="styDepTitle" style="width:124mm">
            <xsl:value-of select="$depDocTitle"/>
          </span>
        </div>
        <!--Adding template for left over data  -->
        <xsl:call-template name="PopulateDepCommonLeftover"><xsl:with-param name="TargetNode" select="$DependencyData"/></xsl:call-template>                
        <xsl:call-template name="ShowDependencyData"/>          
        <br/>                      
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>