<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#160;">
]>
<!-- This schedule was created by Sandy Cram last modified on 11/25/2008 -->
<!-- This stylesheet was last modified by S. Cram on 1/8/2009  added shading for SRD -->
<!--This stylesheet was modified on 7/08/2009 for TY2009/PY2010 changes by S. Cram-->
<!--This stylesheet was modified on 8/24/2009 for TY2009/PY2010 BSP-091865OTH changes by Sandy Cram-->
<!-- Last modified on 10/28/2009 by Sandy Cram  Updates made per BSP-092774OTH -->
<!-- Updated 7/21/2011 per UWR 40502 by Robert L Jones -->
<!-- Last modified on 06/28/2012 by Robert Jones for UWR 58215 -->
<!-- Last modified on 09/06/2012 by Robert Jones for UWR 58215 after getting the 2012 PDF's-->
<!-- Last modified on 11/15/2012 by Robert Jones for IBM Defect 34387 top alignment at Part 1-C-->
<!-- Last modified on 11/15/2012 by Robert Jones for IBM Defect 34388 left alignment at Part 1-C line 5-->
<!-- Last modified on 11/29/2012 by Robert Jones for IBM Defect 34593 white space, Header,yes/no reverted-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:include href="PopulateTemplate.xsl"/>
	<xsl:include href="CommonPathRef.xsl"/>
	<xsl:include href="AddHeader.xsl"/>
	<xsl:include href="AddOnTable.xsl"/>
	<xsl:include href="IRS990ScheduleCStyle.xsl"/>
	<xsl:output method="html" indent="yes"/>
	<xsl:strip-space elements="*"/>
	<!-- Defines the stage of the data, e.g. original or latest -->
	
	<xsl:param name="FormData" select="$RtnDoc/IRS990ScheduleC"/>
	
	<xsl:template match="/">
		<html>
			<head>
				<title>
					<xsl:call-template name="FormTitle">
						<xsl:with-param name="RootElement" select="local-name($FormData)"/>
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
				<meta name="Description" content="IRS Form 990 Schedule C"/>
				<xsl:call-template name="GlobalStylesForm"/>
				<script language="JavaScript" src="{$ScriptPath}/FormDisplay.js" type="text/javascript"/>
				<xsl:call-template name="InitJS"/>
				<style type="text/css">
				<xsl:if test="not($Print) or $Print=''">
						<xsl:call-template name="IRS990ScheduleCStyle"/>
						<xsl:call-template name="AddOnStyle"/>
				</xsl:if>
				</style>
			</head>
			<body class="styBodyClass">
				<form name="IRS990ScheduleC">
					<xsl:call-template name="DocumentHeader"/>
					<!-- BEGIN FORM HEADER -->
					<div class="IRS990ScheduleC_LineContainer">
						<!-- Form Name -->
						<div class="IRS990ScheduleC_FormNumBlock" style="padding-top:5px;">
							<span style="font-size:11pt;font-weight:bold;font-familiy:'Arial Narrow';">SCHEDULE C</span>
							<br/>
							<span style="font-size:10pt;font-weight:bold;font-family:'Arial Narrow';">(Form 990 or 990-EZ)</span>
							<br/>
							<xsl:call-template name="SetFormLinkInline">
								<xsl:with-param name="TargetNode" select="$FormData"/>
							</xsl:call-template>
							<br/>
							<span style=" font-family:Arial Narrow; ">Department of the Treasury</span>
							<br/>
							<span style=" font-family:Arial Narrow; ">Internal Revenue Service</span>
						</div>
						<!-- Form Title Box -->
						<div class="IRS990ScheduleC_FormTitleBlock">
							<!-- Form Title -->
							<span class="styMainTitle">Political Campaign and Lobbying Activities</span>
							<!-- Form Subtitle -->
							<br/>
							<br/>
							<span style="font-weight:bold;font-size:9pt;font-family:Arial;text-align:left;">
     For Organizations Exempt From Income Tax Under section 501(c) and section 527</span>
							<br/>
							
								<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/> 
  <!-- This stylesheet was modified on 7/08/2009 for TY2009/PY2010 changes by Sandy Cram-->
  <span style="font-weight:bold;font-size:7pt;text-align:left;">
Complete if the organization is described below.</span>
							<span style="padding-right:1mm;"/>
							<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/>
							<span style="font-weight:bold;font-size:7pt;padding-right:2mm">
							 Attach to Form 990 or Form 990-EZ. </span>
							<br/>
							<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/>
							<span style="font-weight:bold;font-size:7pt;text-align:center;">
							See separate instructions.</span>
						</div>
						<!-- Tax Year Box -->
						<div class="IRS990ScheduleC_FormYearBlock" style="height:22mm">
							<!-- OMB No. -->
							<div class="IRS990ScheduleC_OMB">OMB No. 1545-0047</div>
							<!-- Tax Year -->
							<div class="IRS990ScheduleC_TaxYear" style="padding-top:0mm;padding-bottom:0mm;">
								<span>20<span class="styTYColor">12</span>
								</span>
								<div class="styPartName" style="font-size:8pt;font-family:verdana;width:30mm;padding-top:0mm;padding-bottom:0mm;height:7mm">Open to Public <br/>Inspection</div>
							</div>
						</div>
					</div>
					<div style="float:left; border-bottom-width: 1px;border-bottom-style:solid;font-family:Arial;font-size:8pt;width:187mm">
						<span style="font-weight:bold;">If the organization answered “Yes” to Form 990, Part IV, Line 3, or Form 990-EZ, Part V, line 46 (Political Campaign Activities), then</span>
						<br/>
						<span style="padding-left:3mm"/><img src="{$ImagePath}/990SchC_Bullet_Round.gif" alt="Round Bullet"/>
		Section 501(c)(3) organizations: Complete Parts I-A and B. Do not complete Part I-C.<br/>
						<span style="padding-left:3mm"/><img src="{$ImagePath}/990SchC_Bullet_Round.gif" alt="Round Bullet"/>
		 Section 501(c) (other than section 501(c)(3)) organizations: Complete Parts I-A and C below. Do not complete Part I-B.<br/>
						<span style="padding-left:3mm"/><img src="{$ImagePath}/990SchC_Bullet_Round.gif" alt="Round Bullet"/>
 		 Section 527 organizations: Complete Part I-A only.<br/>
						<span style="font-weight:bold;">If the organization answered “Yes” to Form 990, Part IV, Line 4, or Form 990-EZ, Part VI, line 47 (Lobbying Activities), then</span>
						<br/>
						<span style="padding-left:3mm"/><img src="{$ImagePath}/990SchC_Bullet_Round.gif" alt="Round Bullet"/>
 		 Section 501(c)(3) organizations that have filed Form 5768 (election under section 501(h)): Complete Part II-A. Do not complete Part II-B.<br/>
						<span style="padding-left:3mm"/><img src="{$ImagePath}/990SchC_Bullet_Round.gif" alt="Round Bullet"/>	
		 Section 501(c)(3) organizations that have NOT filed Form 5768 (election under section 501(h)): Complete Part II-B. Do not complete Part II-A.<br/>
						<span style="font-weight:bold;">If the organization answered “Yes” to Form 990, Part IV, Line 5 (Proxy Tax) or Form 990-EZ, Part V, line 35c (Proxy Tax), then</span>
						<br/>
						<span style="padding-left:3mm"/><img src="{$ImagePath}/990SchC_Bullet_Round.gif" alt="Round Bullet"/>
		Section 501(c)(4), (5), or (6) organizations: Complete Part III.
		</div>
					<!-- Begin Name and Identifying Number Section-->
					<div class="styBB" style="width:187mm;clear:both;font-family:verdana;font-size:7pt;">
						<div class="styFNBox" style="width:134mm;height:8mm;padding-left:2mm">
     Name of the organization<br/>
							<div style="font-family:verdana;font-size:6pt;height:6.25mm">
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">BusinessNameLine1</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">BusinessNameLine2</xsl:with-param>
								</xsl:call-template>
							</div>
						</div>
						<div class="styGenericDiv" style="width:52mm;height:4mm;padding-left:1mm;">
							<span class="styNormalText"><b>Employer identification number</b></span>
							<br/>
							<br/>
							<xsl:call-template name="PopulateReturnHeaderFiler">
								<xsl:with-param name="TargetNode">EIN</xsl:with-param>
							</xsl:call-template>
						</div>
					</div>
					<!-- End Name and Identifying Number Section-->
					<!-- Part I-A header -->
					<div class="styGenericDiv" style="width: 187mm; border-bottom-width: 1px;border-bottom-style:solid">
						<div class="styPartName">Part I-A</div>
						<div class="styPartDesc">
							<span class="styNormalText;font-weight:bold;">Complete if the organization is exempt under section 501(c)
or is a section 527 organization.</span>
						</div>
					</div>
					<!--Part I table -->
					<br/>
					<!-- Line 1 -->
					<div class="IRS990ScheduleC_LineContainer ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-top:2mm">1</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:140mm;border-right-width:0;padding-top:2mm;padding-left:0mm">
Provide a description of the organization’s direct and indirect political campaign activities in Part IV.
  <!--<span class="IRS990ScheduleC_Dotspacing">....</span>-->
						</div>
					</div>
					<!-- Line 1 -->
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;">2</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:142mm;border-right-width:0;padding-top:1mm">
   Political expenditures
  <span class="IRS990ScheduleC_Dotspacing">....................................</span>
							<span style="padding-left:4.5mm">
								<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/>
							</span>
						</div>
						<div style="float:right;align:right;padding-top:1mm"> $
<span style="width:30mm;clear:none;border-bottom: 1 solid black;text-align:right">
								<xsl:call-template name="PopulateAmount">
									<xsl:with-param name="TargetNode" select="$FormData/PoliticalExpenditures"/>
								</xsl:call-template>
							</span>
						</div>
					</div>
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;">3</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:142mm;border-right-width:0;padding-top:1mm">
   Volunteer hours
  <span class="IRS990ScheduleC_Dotspacing">........................................</span>
						</div>
						<div style="float:right;align:right;padding-top:1mm">
							<span style="width:30mm;clear:none;border-bottom: 1 solid black;text-align:right">
								<xsl:call-template name="PopulateAmount">
									<xsl:with-param name="TargetNode" select="$FormData/VolunteerHours"/>
								</xsl:call-template>
							</span>
						</div>
					</div>
					<br/>
					<!-- Part I-B header -->
					<div class="styGenericDiv" style="width: 187mm; border-bottom-width: 1px;border-bottom-style:solid;border-top-width: 1px;border-top-style:solid">
						<div class="styPartName">Part I-B</div>
						<div class="styPartDesc">
							<span class="styNormalText;font-weight:bold;">Complete if the organization is exempt under section 501(c)(3).</span>
						</div>
					</div>
					<!-- Line 1 -->
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-top:1mm">1</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:142mm;border-right-width:0;padding-top:1mm">
Enter the amount of any excise tax incurred by the organization under section 4955
  <span class="IRS990ScheduleC_Dotspacing">.........</span>
							<span style="padding-left:4.5mm">
								<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/>
							</span>
						</div>
						<div style="float:right;align:right;padding-top:1mm">$
  
<span style="width:30mm;clear:none;border-bottom: 1 solid black;text-align:right">
								<xsl:call-template name="PopulateAmount">
									<xsl:with-param name="TargetNode" select="$FormData/AmtOf4955Tax"/>
								</xsl:call-template>
							</span>
						</div>
					</div>
					<!-- Line 2 -->
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-top:1mm">2</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:142mm;border-right-width:0;padding-top:1mm">
Enter the amount of any excise tax incurred by organization managers under section 4955  <span class="IRS990ScheduleC_Dotspacing">......</span>
							<span style="padding-left:4.5mm">
								<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/>
							</span>
						</div>
						<div style="float:right;align:right;padding-top:1mm">$
  
<span style="width:30mm;clear:none;border-bottom: 1 solid black;text-align:right">
								<xsl:call-template name="PopulateAmount">
									<xsl:with-param name="TargetNode" select="$FormData/AmtOf4955TaxOnManagers"/>
								</xsl:call-template>
							</span>
						</div>
					</div>
					<!-- Line 3 -->
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-top:1mm">3</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:155mm;border-right-width:0;padding-top:1mm">
If the organization incurred a section 4955 tax, did it file Form 4720 for this year?
<span class="IRS990ScheduleC_Dotspacing">..............</span>
						</div>
						<span style="padding-top:1mm">
							<xsl:call-template name="PopulateSpan">
								<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed4955Tax"/>
							</xsl:call-template>
							<input type="checkbox" class="styCkbox" onclick="return false;">
								<xsl:call-template name="PopulateYesCheckbox">
									<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed4955Tax"/>
									<xsl:with-param name="BackupName">Form990ScheduleCForm4720Filed4955Tax</xsl:with-param>
								</xsl:call-template>
							</input>
						</span>
						<label style="font-weight:bold;">
							<xsl:call-template name="PopulateLabelYes">
								<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed4955Tax"/>
							</xsl:call-template>            
        Yes
      </label>
						<span style="width:4mm;padding-top:1mm"/>
						<span>
							<xsl:call-template name="PopulateSpan">
								<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed4955Tax"/>
							</xsl:call-template>
							<input type="checkbox" class="styCkbox" onclick="return false;">
								<xsl:call-template name="PopulateNoCheckbox">
									<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed4955Tax"/>
									<xsl:with-param name="BackupName">Form990ScheduleCForm4720Filed4955Tax</xsl:with-param>
								</xsl:call-template>
							</input>
						</span>
						<label style="font-weight:bold;">
							<xsl:call-template name="PopulateLabelNo">
								<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed4955Tax"/>
							</xsl:call-template>            
        No
      </label>
					</div>
					<!-- Line 4 -->
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-top:1mm">4a</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:155mm;border-right-width:0;padding-top:1mm">
 Was a correction made?
 <span class="IRS990ScheduleC_Dotspacing">.........................................</span>
						</div>
						<span style="padding-top:1mm">
							<xsl:call-template name="PopulateSpan">
								<xsl:with-param name="TargetNode" select="$FormData/CorrectionMade"/>
							</xsl:call-template>
							<input type="checkbox" class="styCkbox" onclick="return false;">
								<xsl:call-template name="PopulateYesCheckbox">
									<xsl:with-param name="TargetNode" select="$FormData/CorrectionMade"/>
									<xsl:with-param name="BackupName">Form990ScheduleCCorrectionMade</xsl:with-param>
								</xsl:call-template>
							</input>
						</span>
						<label style="font-weight:bold;">
							<xsl:call-template name="PopulateLabelYes">
								<xsl:with-param name="TargetNode" select="$FormData/CorrectionMade"/>
							</xsl:call-template>            
        Yes
      </label>
						<span style="width:4mm;padding-top:1mm"/>
						<span>
							<xsl:call-template name="PopulateSpan">
								<xsl:with-param name="TargetNode" select="$FormData/CorrectionMade"/>
							</xsl:call-template>
							<input type="checkbox" class="styCkbox" onclick="return false;">
								<xsl:call-template name="PopulateNoCheckbox">
									<xsl:with-param name="TargetNode" select="$FormData/CorrectionMade"/>
									<xsl:with-param name="BackupName">Form990ScheduleCCorrectionMade</xsl:with-param>
								</xsl:call-template>
							</input>
						</span>
						<label style="font-weight:bold;">
							<xsl:call-template name="PopulateLabelNo">
								<xsl:with-param name="TargetNode" select="$FormData/CorrectionMade"/>
							</xsl:call-template>            
        No
      </label>
						
					</div>
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 2.5mm;padding-top:1mm"> b</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:57mm;border-right-width:0;padding-top:1mm">
 If "Yes," describe  in Part IV.
</div>
					</div>
					<!-- Part I-C header-->
					<div class="styGenericDiv" style="width: 187mm; border-bottom-width: 1px;border-bottom-style:solid;border-top-width: 1px;border-top-style:solid">
						<div class="styPartName">Part I-C</div>
						<div class="styPartDesc">
							<span class="styNormalText;font-weight:bold;">Complete if the organization is exempt under section 501(c),
except section 501(c)(3).</span>
						</div>
					</div>
					<!-- Line 1 -->
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-top:1mm">1</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:142mm;border-right-width:0;padding-top:1mm">
Enter the amount directly expended by the filing organization for section 527 exempt function
activities
<span class="IRS990ScheduleC_Dotspacing"/>
							<span style="padding-left:2mm">
								<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/>
							</span>
						</div>
						<div style="float:right;align:right;padding-top:1mm">$
  
<span style="width:30mm;clear:none;border-bottom: 1 solid black;text-align:right">
								<xsl:call-template name="PopulateAmount">
									<xsl:with-param name="TargetNode" select="$FormData/AmtExpendedFor527Activities"/>
								</xsl:call-template>
							</span>
						</div>
					</div>
					<!-- Line 2 -->
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-top:1mm">2</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:142mm;border-right-width:0;padding-top:1mm">
Enter the amount of the filing organization's funds contributed to other organizations for section 527 exempt function activities   <span class="IRS990ScheduleC_Dotspacing">...................................</span>
							<span style="padding-left:3mm">
								<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/>
							</span>
						</div>
						<br/>
						<div style="float:right;align:right;padding-top:1mm">$
  
<span style="width:30mm;clear:none;border-bottom: 1 solid black;text-align:right">
								<xsl:call-template name="PopulateAmount">
									<xsl:with-param name="TargetNode" select="$FormData/AmtOfInternalFundsContributed"/>
								</xsl:call-template>
							</span>
						</div>
					</div>
					<!-- Line 3 -->
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-top:2mm">3</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:142mm;border-right-width:0;padding-top:2mm">
Total exempt function expenditures. Add lines 1 and 2. Enter here and on Form 1120-POL, line 17b<span class="IRS990ScheduleC_Dotspacing">..</span>
							<span style="padding-left:4mm">
								<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/>
							</span>
						</div>
						<br/>
						<div style="float:right;align:right;padding-top:0mm">$
  
<span style="width:30mm;clear:none;border-bottom: 1 solid black;text-align:right;">
								<xsl:call-template name="PopulateAmount">
									<xsl:with-param name="TargetNode" select="$FormData/TotalExmptFunctionExpenditures"/>
								</xsl:call-template>
							</span>
						</div>
					</div>
					<!-- Line 4 -->
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-top:1mm">4</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:155mm;border-right-width:0;padding-top:1mm">
Did the filing organization file<span style="font-weight:bold"> Form 1120-POL</span> for this year?
<span class="IRS990ScheduleC_Dotspacing">..........................</span>
						</div>
						<span style="padding-top:1mm">
							<xsl:call-template name="PopulateSpan">
								<xsl:with-param name="TargetNode" select="$FormData/Form1120PolFiled"/>
							</xsl:call-template>
							<input type="checkbox" class="styCkbox" onclick="return false;">
								<xsl:call-template name="PopulateYesCheckbox">
									<xsl:with-param name="TargetNode" select="$FormData/Form1120PolFiled"/>
									<xsl:with-param name="BackupName">Form990ScheduleCForm1120PolFiled</xsl:with-param>
								</xsl:call-template>
							</input>
						</span>
						<label style="font-weight:bold;">
							<xsl:call-template name="PopulateLabelYes">
								<xsl:with-param name="TargetNode" select="$FormData/Form1120PolFiled"/>
							</xsl:call-template>            
        Yes
      </label>
						<span style="width:4mm;padding-top:1mm"/>
						<span>
							<xsl:call-template name="PopulateSpan">
								<xsl:with-param name="TargetNode" select="$FormData/Form1120PolFiled"/>
							</xsl:call-template>
							<input type="checkbox" class="styCkbox" onclick="return false;">
								<xsl:call-template name="PopulateNoCheckbox">
									<xsl:with-param name="TargetNode" select="$FormData/Form1120PolFiled"/>
									<xsl:with-param name="BackupName">Form990ScheduleCForm1120PolFiled</xsl:with-param>
								</xsl:call-template>
							</input>
						</span>
						<label style="font-weight:bold">
							<xsl:call-template name="PopulateLabelNo">
								<xsl:with-param name="TargetNode" select="$FormData/Form1120PolFiled"/>
							</xsl:call-template>            
        No
      </label>
					</div>
					<!-- Line 5 -->
					<div style=" width: 187mm; ">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-top:1mm">5</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:178mm;border-right-width:0;padding-top:1mm;margin-left:0mm;">
Enter the names, addresses and employer identification number (EIN) of all section 527 political organizations to which  the filing<br/> organization made payments. For each
organization listed, enter the amount paid from the filing organization’s funds. Also
enter the amount of political contributions received that were promptly and directly
delivered to a separate political organization, such as a separate segregated fund or a
political action committee (PAC). If additional space is needed, provide information in Part IV.   </div>
					</div>
					<xsl:variable name="table1RowCount" select="count($FormData/Sec527PolOrgs)"/>
					<div class="styIRS4136NumLine" style="padding-left:2mm;border-top-width: 0px;width:188mm">
						<span style="width:4mm;text-align:right;float:right; clear: none;">
							<xsl:call-template name="SetDynamicTableToggleRowCount">
								<xsl:with-param name="DataRowCount" select="$table1RowCount"/>
								<xsl:with-param name="containerHeight" select="6"/>
								<xsl:with-param name="containerID" select=" 'p1CLn5TbCtnr' "/>
							</xsl:call-template>
						</span>
					</div>
					<!--Part I-C  line 5 table -->
					<div class="IRS990ScheduleCPart1C_TableContainer" id="p1CLn5TbCtnr">
						<!-- print logic -->
						<xsl:call-template name="SetInitialState"/>
						<!-- end -->
						<table cellspacing="0" style="font-size:7pt;margin-left:0mm">
							<thead class="styTableThead">
								<!-- Column a -->
								<tr>
									<th class="IRS990ScheduleC_GenericCell" style="width:50mm;border-top-width:1px;padding-bottom:18mm" scope="col">(a)<span class="styNormalText" style="text-align:center;"> Name</span>
									</th>
									<!-- Column b -->
									<th class="IRS990ScheduleC_GenericCell" style="width:50mm;border-right-width:1px;border-top-width:1px;padding-bottom:18mm" scope="col">(b)<span class="styNormalText" style="text-align:center;"> Address</span>
									</th>
									<!-- Column c -->
									<th class="IRS990ScheduleC_GenericCell" style="width:22mm;border-right-width:1px;border-top-width:1px;padding-bottom:18mm" scope="col">(c) <span class="styNormalText" style="text-align:center;">EIN</span>
									</th>
									<!-- Column d -->
									<th class="IRS990ScheduleC_GenericCell" style="width:33mm;border-right-width:1px;border-top-width:1px;padding-bottom:8mm" scope="col">(d) <span class="styNormalText" style="text-align:center;vertical-align:top;">Amount paid from filing organization's funds. If none, enter -0-.
		 </span>
									</th>
									<!-- Column e -->
									<th class="IRS990ScheduleC_GenericCell" style="width:33mm;border-right-width:0px;border-top-width:1px" scope="col">(e) <span class="styNormalText" style="text-align:center;vertical-align:top;">  Amount of political contributions received and promptly and directly delivered to a separate political organization. If none, enter -0-. </span>
									</th>
								</tr>
							</thead>
							<tfoot/>
							<tbody>
								<xsl:if test="($Print != $Separated) or count($FormData/Sec527PolOrgs) &lt;= 6">
									<xsl:for-each select="$FormData/Sec527PolOrgs">
										<tr>
											<td class="IRS990ScheduleC_GenericCell" style="font-family:verdana;font-size:6pt;vertical-align:top;text-align:left;">(<xsl:number value="position()" format="1"/>)
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="NameOf527Organization/BusinessNameLine1"/>
												</xsl:call-template>
												<br/>
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="NameOf527Organization/BusinessNameLine2"/>
												</xsl:call-template>
											</td>
											<!-- Address -->
											<td class="IRS990ScheduleC_GenericCell" style="text-align:left;vertical-align:top;">
												<xsl:choose>
													<xsl:when test="AddressUS and AddressUS !=''">
														<xsl:call-template name="PopulateUSAddressTemplate">
															<xsl:with-param name="TargetNode" select="AddressUS"/>
														</xsl:call-template>
													</xsl:when>
													<xsl:otherwise>
														<xsl:call-template name="PopulateForeignAddressTemplate">
															<xsl:with-param name="TargetNode" select="AddressForeign"/>
														</xsl:call-template>
													</xsl:otherwise>
												</xsl:choose>
											</td>
											<!-- Employer Identification Number -->
											<td class="IRS990ScheduleC_GenericCell" style="text-align:center;vertical-align:top;">
												<xsl:call-template name="PopulateEIN">
													<xsl:with-param name="TargetNode" select="EIN"/>
												</xsl:call-template>
											</td>
											<!-- Amount Paid from Internal Funds -->
											<td class="IRS990ScheduleC_GenericCell" style="text-align:right;border-right-width:1px;vertical-align:top;">
												<xsl:call-template name="PopulateAmount">
													<xsl:with-param name="TargetNode" select="AmtPdFromInternalFunds"/>
												</xsl:call-template>
											</td>
											<!-- Amount of contributions received and delivered-->
											<td class="IRS990ScheduleC_GenericCell" style="text-align:right;border-right-width:0px;vertical-align:top;">
												<xsl:call-template name="PopulateAmount">
													<xsl:with-param name="TargetNode" select="AmtOfContribsRecdDelivered"/>
												</xsl:call-template>
											</td>
										</tr>
									</xsl:for-each>
								</xsl:if>
								<xsl:if test="count($FormData/Sec527PolOrgs) &lt; 1 or
            (($Print = $Separated) and (count($FormData/Sec527PolOrgs) &gt; 6)) ">
									<tr>
										<td class="IRS990ScheduleC_GenericCell">
											<xsl:call-template name="PopulateAdditionalDataTableMessage">
												<xsl:with-param name="TargetNode" select="$FormData/Sec527PolOrgs"/>
											</xsl:call-template>
											<span style="width:3px"/>
										</td>
										<td class="IRS990ScheduleC_GenericCell">
											<span style="width:3px"/>
										</td>
										<td class="IRS990ScheduleC_GenericCell">
											<span style="width:3px"/>
										</td>
										<td class="IRS990ScheduleC_GenericCell">
											<span style="width:3px"/>
										</td>
										<td class="IRS990ScheduleC_GenericCell" style="border-right-width:0px;">
											<span style="width:3px;border-right-width:0px"/>
										</td>
									</tr>
								</xsl:if>
								<xsl:if test="count($FormData/Sec527PolOrgs) &lt; 2 or ((count($FormData/Sec527PolOrgs) &gt; 6) and ($Print = $Separated))">
									<xsl:call-template name="IRS990SchCTableFillerRow"/>
								</xsl:if>
								<xsl:if test="count($FormData/Sec527PolOrgs) &lt; 3 or ((count($FormData/Sec527PolOrgs) &gt; 6) and ($Print = $Separated))">
									<xsl:call-template name="IRS990SchCTableFillerRow"/>
								</xsl:if>
								<xsl:if test="count($FormData/Sec527PolOrgs) &lt; 4 or ((count($FormData/Sec527PolOrgs) &gt; 6) and ($Print = $Separated))">
									<xsl:call-template name="IRS990SchCTableFillerRow"/>
								</xsl:if>
								<xsl:if test="count($FormData/Sec527PolOrgs) &lt; 5 or ((count($FormData/Sec527PolOrgs) &gt; 6) and ($Print = $Separated))">
									<xsl:call-template name="IRS990SchCTableFillerRow"/>
								</xsl:if>
								<xsl:if test="count($FormData/Sec527PolOrgs) &lt; 6 or ((count($FormData/Sec527PolOrgs) &gt; 6) and ($Print = $Separated))">
									<xsl:call-template name="IRS990SchCTableFillerRow"/>
								</xsl:if>
							</tbody>
						</table>
					</div>
					<xsl:call-template name="SetInitialDynamicTableHeight">
						<xsl:with-param name="TargetNode" select="$FormData/Sec527PolOrgs"/>
						<xsl:with-param name="containerHeight" select="6"/>
						<xsl:with-param name="containerID" select="'p1CLn5TbCtnr'"/>
					</xsl:call-template>
					<!--Page Footer-->
					<div class="pageEnd" style="width:187mm">
						<div style="font-weight:bold;width:116mm;float:left;padding-left:0mm;font-size:6pt">
            For Paperwork Reduction Act Notice, see the instructions for Form 990 or 990-EZ.
          </div>
						<div style="width:20mm;float:left;text-align:center;font-size:6pt;padding-top:.5mm">
            Cat. No. 50084S
          </div>
						<div style="width:50mm;text-align:right;float:left;">
							<span style="font-weight:bold;font-size:6pt">Schedule C (Form 990 or 990-EZ) 2012</span>
						</div>
					</div>
					<br/>
					<!--END Page Footer-->
					<!-- Page Header -->
					<div class="styBB" style="width:187mm; float: none; clear:none">
						<div style="float:left">Schedule C (Form 990 or 990-EZ) 2012</div>
						<div style="float:right">Page <span style="font-weight:bold;font-size:8pt;">2</span>
						</div>
					</div>
					<!-- END Page Header -->
					<!-- Part II_A header -->
					<div class="styGenericDiv" style="width: 187mm">
						<div class="styPartName" style="width:18mm;">Part II-A</div>
						<div class="styPartDesc" style="width:169mm;">
							<span class="styNormalText;font-wight:bold;">
          Complete if the organization is
exempt under section 501(c)(3) and filed Form 5768 (election under section 501(h)).
      </span>
							<xsl:call-template name="SetFormLinkInline">
								<xsl:with-param name="TargetNode" select="$FormData"/>
							</xsl:call-template>
							<br/>
						</div>
					</div>
					<!-- comment line -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_LineDesc" style="width:188mm;border-right-width:0px;border-top-width:1px;">
							<span style="width:4mm;font-weight:bold">A</span>
    Check <span style="width:2mm;"/>
							<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/><span style="width:1mm;"/>
								<input type="checkbox" class="IRS990ScheduleC_Checkbox">
									<xsl:call-template name="PopulateCheckbox">
										<xsl:with-param name="TargetNode" select="$FormData/OrgBelongsToAffiliatedGroup"/>
										<xsl:with-param name="BackupName">Form990ScheduleCOrgBelongsToAffiliatedGroup</xsl:with-param>
									</xsl:call-template>
								</input>
							
							<label>
								<xsl:call-template name="PopulateLabel">
									<xsl:with-param name="TargetNode" select="$FormData/OrgBelongsToAffiliatedGroup"/>
								</xsl:call-template>
								  if the filing organization belongs to an affiliated group (and list in Part IV each affiliated group member's name, address, EIN, 
    </label>
    <span style="width:100mm;padding-left:23mm;">expenses, and share of excess lobbying expenditures).</span>
    
							<xsl:call-template name="SetFormLinkInline">
								<xsl:with-param name="TargetNode" select="$FormData/OrgBelongsToAffiliatedGroup"/>
							</xsl:call-template>
							<br/>
							<span style="width:4mm;font-weight:bold">B</span>
    Check <span style="width:2mm;"/>
							<img src="{$ImagePath}/990SchC_Bullet_Md.gif" alt="SchCMd Bullet"/><span style="width:1mm;"/>
								<input type="checkbox" class="IRS990ScheduleC_Checkbox">
									<xsl:call-template name="PopulateCheckbox">
										<xsl:with-param name="TargetNode" select="$FormData/LimitedControlProvisionsApply"/>
										<xsl:with-param name="BackupName">Form990ScheduleCLimitedControlProvisionsApply</xsl:with-param>
									</xsl:call-template>
								</input>
							
							<label>
								<xsl:call-template name="PopulateLabel">
									<xsl:with-param name="TargetNode" select="$FormData/LimitedControlProvisionsApply"/>
								</xsl:call-template>
      if the filing organization checked box A and "limited control" provisions apply.
    </label>
						</div>
					</div>
					<!-- Part II-A table -->
					<div class="IRS990ScheduleC_TableContainer" style="border-bottom-width:0px;">
						<table cellspacing="0" cellpadding="0" style="font-size:7pt">
							<tr>
								<th class="IRS990ScheduleC_GenericCell" style="width:123mm;height:12mm;text-align:center;font-weight:normal;" scope="col" colspan="4">
									<span style="font-weight:bold;font-size:9pt;">Limits on Lobbying Expenditures</span>
									<br/>
									<span style="font-weight:bold;">(The term "expenditures" means amounts paid or incurred.)</span>
								</th>
								<th class="IRS990ScheduleC_GenericCell" style="width: 32mm; height:12mm; text-align:center; border-left-width: 0px;float: none" scope="col">(a)<span class="styNormalText"> Filing<br/>organization's
<br/>totals</span>
								</th>
								<th class="IRS990ScheduleC_GenericCell" style="width: 32mm; height:12mm; border-right-width:0px;text-align:center; float: none; padding-top: 0px; padding-bottom:0px; " scope="col">(b) <span class="styNormalText">Affiliated group<br/>totals</span>
								</th>
							</tr>
							<!-- line a -->
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">1a</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:126mm;" colspan="3">Total lobbying expenditures to influence public opinion (grass roots lobbying)
    <span class="IRS990ScheduleC_Dotspacing"> ......</span>
								</td>
								<td class="styLNAmountBox" style="border-left:0">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalGrassrootsLobbying/FilingOrganizationsTotals"/>
									</xsl:call-template>
								</td>
								<td class="styLNAmountBox" style="border-right-width:0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalGrassrootsLobbying/AffiliatedGroupTotals"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- line b -->
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">b</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:126mm;" colspan="3">Total lobbying expenditures to influence a legislative body (direct lobbying) 
       <span class="IRS990ScheduleC_Dotspacing"> .......</span>
								</td>
								<td class="styLNAmountBox" style="border-left:0">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalDirectLobbying/FilingOrganizationsTotals"/>
									</xsl:call-template>
								</td>
								<td class="styLNAmountBox" style="border-right-width:0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalDirectLobbying/AffiliatedGroupTotals"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- line c -->
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA"> c</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:126mm;" colspan="3">Total lobbying expenditures (add lines 1a and 1b)
       <span class="IRS990ScheduleC_Dotspacing"> ...................</span>
								</td>
								<td class="styLNAmountBox" style="border-left:0">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalLobbyingExpenditures/FilingOrganizationsTotals"/>
									</xsl:call-template>
								</td>
								<td class="styLNAmountBox" style="border-right-width:0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalLobbyingExpenditures/AffiliatedGroupTotals"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- line d -->
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">d</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:126mm;" colspan="3">Other exempt purpose expenditures
       <span class="IRS990ScheduleC_Dotspacing"> ........................</span>
								</td>
								<td class="styLNAmountBox" style="border-left:0">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/OtherExemptPurposeExpenditures/FilingOrganizationsTotals"/>
									</xsl:call-template>
								</td>
								<td class="styLNAmountBox" style="border-right-width:0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/OtherExemptPurposeExpenditures/AffiliatedGroupTotals"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- line e -->
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">e</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:126mm;" colspan="3">Total exempt purpose expenditures (add lines 1c and 1d)
      <span class="IRS990ScheduleC_Dotspacing"> ...............</span>
								</td>
								<td class="styLNAmountBox" style="border-left:0">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalExemptPurposeExpenditures/FilingOrganizationsTotals"/>
									</xsl:call-template>
								</td>
								<td class="styLNAmountBox" style="border-right-width:0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalExemptPurposeExpenditures/AffiliatedGroupTotals"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- line f -->
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA" style="padding-bottom:2mm">f</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:128mm;padding-top:1mm;padding-bottom:.5mm" colspan="3">Lobbying nontaxable amount. Enter the amount from the following table in both <br/> columns.</td> 
								<td class="styLNAmountBox" style="border-left:0">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/LobbyingNontaxableAmount/FilingOrganizationsTotals"/>
									</xsl:call-template>
								</td>
								<td class="styLNAmountBox" style="border-right-width:0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/LobbyingNontaxableAmount/AffiliatedGroupTotals"/>
									</xsl:call-template>
								</td>
							</tr>
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">&nbsp;</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:123mm; height:4.5mm" colspan="3">
									<span style="width:66mm;font-weight:bold;border-left:1px solid;border-top:1px solid;border-bottom:1px solid;height:4.5mm">If the amount on line 1e, column (a) or (b) is:</span>
									<span style="width:57mm;font-weight:bold;border-right:1px solid;border-left:1px solid;border-top:1px solid;border-bottom:1px solid;height:4.5mm">The lobbying nontaxable amount is:</span>
								</td>
								<td class="styLNAmountBox" style="border-bottom-width:0px;background-color:lightgrey;border-left:0">&nbsp;</td>
								<td class="styLNAmountBox" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey">&nbsp;</td>
							</tr>
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">&nbsp;</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:123mm; height:4.5mm" colspan="3">
									<span style="width:66mm; font-size: 6pt;border-left:1px solid;border-top:0px solid;height:4.5mm">Not over $500,000</span>
									<span style="width:57mm; font-size: 6pt;border-right:1px solid;border-left:1px solid;border-top:0px solid;height:4.5mm">20% of the amount on line 1e.</span>
									<!--<td rowspan="5" style="width: 4mm; border-style: solid; border-color:black; border-top-width: 0px; border-bottom-width: 0px; border-left-width:0px; border-right-width: 1px"><span style="width:1px"></span></td>-->
								</td>
								<td class="styLNAmountBox" style="border-left-width:0px;border-bottom-width:0px;background-color:lightgrey; width: 29mm">&nbsp;</td>
								<td class="styLNAmountBox" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey; width: 29mm">&nbsp;</td>
							</tr>
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">&nbsp;</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:123mm;height:4.5mm " colspan="3">
									<span style="width:66mm; font-size: 6pt;border-left:1px solid;border-top:1px solid;height:4.5mm">Over $500,000 but not over $1,000,000</span>
									<span style="width:57mm; font-size: 6pt;border-right:1px solid;border-left:1px solid;border-top:1px solid;height:4.5mm">$100,000 plus 15% of the excess over $500,000.</span>
								</td>
								<td class="styLNAmountBox" style="border-left-width:0px;border-bottom-width:0px;background-color:lightgrey;b">&nbsp;</td>
								<td class="styLNAmountBox" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey">&nbsp;</td>
							</tr>
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">&nbsp;</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:123mm;height:4.5mm" colspan="3">
									<span style="width:66mm; font-size: 6pt;border-left:1px solid;border-top:1px solid;height:4.5mm">Over $1,000,000 but not over $1,500,000</span>
									<span style="width:57mm; font-size: 6pt;border-right:1px solid;border-left:1px solid;border-top:1px solid;height:4.5mm">$175,000 plus 10% of the excess over $1,000,000.</span>
								</td>
								<td class="styLNAmountBox" style="border-left-width:0px;border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="styLNAmountBox" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey">&nbsp;</td>
							</tr>
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">&nbsp;</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:123mm; height:4.5mm" colspan="3">
									<span style="width:66mm; font-size: 6pt;border-left:1px solid;border-top:1px solid;height:4.5mm">Over $1,500,000 but not over $17,000,000</span>
									<span style="width:57mm; font-size: 6pt;border-right:1px solid;border-left:1px solid;border-top:1px solid;height:4.5mm">$225,000 plus 5% of the excess over $1,500,000.</span>
								</td>
								<td class="styLNAmountBox" style="border-left-width:0px;border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="styLNAmountBox" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey">&nbsp;</td>
							</tr>
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">&nbsp;</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:123mm; height:4.5mm" colspan="3">
									<span style="width:66mm;height:4.5mm; font-size: 6pt;border-left:1px solid;border-top:1px solid;border-bottom:1px solid">Over $17,000,000</span>
									<span style="width:57mm; height:4.5mm;font-size: 6pt;border-bottom:1px solid;border-right:1px solid;border-left:1px solid;border-top:1px solid">$1,000,000.</span>
								</td>
								<td class="styLNAmountBox" style="border-left-width:0px;border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="styLNAmountBox" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
							</tr>
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA" style="border-bottom-width:1px;width:4mm;height:1mm">&nbsp;</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:146mm;border-bottom-width:1px;border-right:0px;height:1mm">
									<span style="width:107mm; font-size: 6pt"/>
									<!--<span style="width:57mm; font-size: 6pt;background-color:red">$1,000,000</span>-->
									<td rowspan="1" style="width: 8mm; border-style: solid; border-color:black; border-top-width: 0px; border-bottom-width: 1px; border-left-width:0px; border-right-width: 0px;height:1mm">
										<span style="width:1px"/>
									</td>
								</td>
								<td class="styLNAmountBox" style="border-right-width:1px;border-left-width:0px;border-bottom-width:1px;height:1mm">&nbsp;</td>
								<td class="styLNAmountBox" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey;border-left-width:0px;height:1mm">&nbsp;</td>
								<td class="styLNAmountBox" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey;height:1mm">&nbsp;</td>
							</tr>
							<!-- line g -->
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">g</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:126mm;" colspan="3">Grassroots nontaxable amount (enter 25% of line 1f)
       <span class="IRS990ScheduleC_Dotspacing"> .................</span>
								</td>
								<td class="styLNAmountBox" style="border-left:0;border-top-width:1px;">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsNontaxableAmount/FilingOrganizationsTotals"/>
									</xsl:call-template>
								</td>
								<td class="styLNAmountBox" style="border-right-width:0px;border-top-width:1px;">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsNontaxableAmount/AffiliatedGroupTotals"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- line h -->
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">h</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:126mm;" colspan="3">Subtract line 1g from line 1a. If zero or less, enter -0-.
        <span class="IRS990ScheduleC_Dotspacing"> ................</span>
								</td>
								<td class="styLNAmountBox" style="border-left:0">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotLobbyingGrassrootMinusNonTx/FilingOrganizationsTotals"/>
									</xsl:call-template>
								</td>
								<td class="styLNAmountBox" style="border-right-width:0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotLobbyingGrassrootMinusNonTx/AffiliatedGroupTotals"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- line i -->
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA">i</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:126mm;" colspan="3">Subtract line 1f from line 1c. If zero or less, enter -0-.
       <span class="IRS990ScheduleC_Dotspacing"> ................</span>
								</td>
								<td class="styLNAmountBox" style="border-left:0">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotLobbyExpendMnsLobbyingNontx/FilingOrganizationsTotals"/>
									</xsl:call-template>
								</td>
								<td class="styLNAmountBox" style="border-right-width:0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotLobbyExpendMnsLobbyingNontx/AffiliatedGroupTotals"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- Notes line -->
							<tr>
								<td class="IRS990ScheduleC_IndexCellIIA" style="padding-bottom:4mm">j</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:155mm;border-right:0px;padding-top:0mm" colspan="4">If there is an amount other than zero on either line 1h or line 1i, did the organization file Form 4720 reporting<br/> section 4911 tax for this year?
<span class="IRS990ScheduleC_Dotspacing"> ......................................</span>
								</td>
								<td class="IRS990ScheduleC_LineDesc" style="width:32mm;border-right:0px;padding-top:0mm" colspan="1">
									<span style="padding-top:1mm">
										<xsl:call-template name="PopulateSpan">
											<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed"/>
										</xsl:call-template>
										<input type="checkbox" class="styCkbox" onclick="return false;">
											<xsl:call-template name="PopulateYesCheckbox">
												<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed"/>
												<xsl:with-param name="BackupName">Form990ScheduleCForm4720Filed</xsl:with-param>
											</xsl:call-template>
										</input>
									</span>
									<label style="font-weight:bold;">
										<xsl:call-template name="PopulateLabelYes">
											<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed"/>
										</xsl:call-template>            
        Yes
      </label>
									<span style="width:2mm;padding-top:1mm"/>
									<span>
										<xsl:call-template name="PopulateSpan">
											<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed"/>
										</xsl:call-template>
										<input type="checkbox" class="styCkbox" onclick="return false;">
											<xsl:call-template name="PopulateNoCheckbox">
												<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed"/>
												<xsl:with-param name="BackupName">Form990ScheduleCForm4720Filed</xsl:with-param>
											</xsl:call-template>
										</input>
									</span>
									<label style="font-weight:bold">
										<xsl:call-template name="PopulateLabelNo">
											<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed"/>
										</xsl:call-template>            
        No
      </label>
								</td>
							</tr>
						</table>
					</div>
					<!--Part II-A table -->
					<div class="IRS990ScheduleC_TableContainer" style="border-top-width: 0px">
						<table cellspacing="0" cellpadding="0" style="font-size:7pt;">
							<tr>
								<th class="IRS990ScheduleC_GenericCell" style="height:16mm;width:188mm;border-right-width:0px;border-top-width:1px;text-align:center;font-weight:normal;" scope="col" colspan="7">
									<span style="font-weight:bold;font-size:8pt;">4-Year Averaging Period Under Section 501(h)
        <br/>
        (Some organizations that made a section 501(h) election do not have to complete all of the five<br/> columns below. See the instructions for lines 2a through 2f on page 4.)</span>
								</th>
							</tr>
							<br/>
							<tr>
								<!--<th class="IRS990ScheduleC_GenericCell" style="width:78mm;height:8mm;text-align:center;font-weight:normal;" scope="col" colspan="2">&nbsp;</th>-->
								<th class="IRS990ScheduleC_GenericCell" style="width:187mm;height:4mm;font-size:8pt;font-weight:bold;border-right-width:0px;text-align:center;" scope="col" colspan="7">Lobbying Expenditures During 4-Year Averaging Period</th>
							</tr>
							<tr>
								<th class="IRS990ScheduleC_IndexCell" style="width:4mm;text-align:center;font-weight:normal;height:8mm;" scope="col" valign="top">&nbsp;</th>
								<th class="IRS990ScheduleC_GenericCell" style="width:74mm;font-weight:normal;text-align:center;height:12mm;" scope="col">
        Calendar year (or fiscal year<br/> beginning in)
       
      </th>
								<th class="IRS990ScheduleC_GenericCell" style="height:12mm;width:21mm;text-align:center;font-weight:normal;" scope="col">
									<span style="font-weight:bold;">(a) </span>2009</th>
								<th class="IRS990ScheduleC_GenericCell" style="height:12mm;width:21mm;text-align:center;font-weight:normal;" scope="col">
									<span style="font-weight:bold;">(b) </span>2010</th>
								<th class="IRS990ScheduleC_GenericCell" style="height:12mm;width:21mm;text-align:center;font-weight:normal;" scope="col">
									<span style="font-weight:bold;">(c) </span>2011</th>
								<th class="IRS990ScheduleC_GenericCell" style="height:12mm;width:21mm;text-align:center;font-weight:normal;" scope="col">
									<span style="font-weight:bold;">(d) </span>2012</th>
								<th class="IRS990ScheduleC_GenericCell" style="height:12mm;width:21mm;border-right-width:0px;text-align:center;font-weight:normal;" scope="col">
									<span style="font-weight:bold;">(e)</span> Total</th>
							</tr>
							<!-- filler row -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="border-bottom-width:0px;" valign="top">&nbsp;</td>
								<td class="IRS990ScheduleC_GenericCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;border-bottom-width:0px;">&nbsp;</td>
							</tr>
							<!-- line 2a -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="vertical-align:top;">2a</td>
								<td class="IRS990ScheduleC_GenericCell">Lobbying nontaxable amount
        
      </td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/LobbyingNontaxableAmount2/CurrentYearMinus3"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/LobbyingNontaxableAmount2/CurrentYearMinus2"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/LobbyingNontaxableAmount2/CurrentYearMinus1"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/LobbyingNontaxableAmount2/CurrentYear"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/LobbyingNontaxableAmount2/Total"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- filler row -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="border-bottom-width:0px;" valign="top">&nbsp;</td>
								<td class="IRS990ScheduleC_GenericCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;border-bottom-width:0px;">&nbsp;</td>
							</tr>
							<!-- line b -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="vertical-align:top;">b</td>
								<td class="IRS990ScheduleC_GenericCell">Lobbying ceiling amount<br/> (150% of line 2a, column(e))
        
      </td>
								<td class="IRS990ScheduleC_MoneyCell" style="background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/LobbyingCeilingAmount"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- filler row -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="border-bottom-width:0px;" valign="top">&nbsp;</td>
								<td class="IRS990ScheduleC_GenericCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;border-bottom-width:0px;">&nbsp;</td>
							</tr>
							<!-- line c -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="vertical-align:top;">c</td>
								<td class="IRS990ScheduleC_GenericCell">Total lobbying expenditures
        
      </td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalLobbyingExpenditures2/CurrentYearMinus3"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalLobbyingExpenditures2/CurrentYearMinus2"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalLobbyingExpenditures2/CurrentYearMinus1"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalLobbyingExpenditures2/CurrentYear"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/TotalLobbyingExpenditures2/Total"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- filler row -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="border-bottom-width:0px;" valign="top">&nbsp;</td>
								<td class="IRS990ScheduleC_GenericCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;border-bottom-width:0px;">&nbsp;</td>
							</tr>
							<!-- line d -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="vertical-align:top;">d</td>
								<td class="IRS990ScheduleC_GenericCell">Grassroots nontaxable amount
        
      </td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsNontaxableAmount2/CurrentYearMinus3"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsNontaxableAmount2/CurrentYearMinus2"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsNontaxableAmount2/CurrentYearMinus1"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsNontaxableAmount2/CurrentYear"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsNontaxableAmount2/Total"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- filler row -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="border-bottom-width:0px;" valign="top">&nbsp;</td>
								<td class="IRS990ScheduleC_GenericCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;border-bottom-width:0px;">&nbsp;</td>
							</tr>
							<!-- line e -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="vertical-align:top;">e</td>
								<td class="IRS990ScheduleC_GenericCell">Grassroots ceiling amount <br/>(150% of line 2d, column (e))</td>
								<td class="IRS990ScheduleC_MoneyCell" style="background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="background-color:lightgrey;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsCeilingAmount"/>
									</xsl:call-template>
								</td>
							</tr>
							<!-- filler row -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="border-bottom-width:0px;" valign="top">&nbsp;</td>
								<td class="IRS990ScheduleC_GenericCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width:0px;">&nbsp;</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;border-bottom-width:0px;">&nbsp;</td>
							</tr>
							<!-- line f -->
							<tr>
								<td class="IRS990ScheduleC_IndexCell" style="vertical-align:top;border-bottom-width: 0px">f</td>
								<td class="IRS990ScheduleC_GenericCell" style="border-bottom-width: 0px">Grassroots lobbying expenditures
       
      </td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width: 0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsLobbyingExpenditures/CurrentYearMinus3"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width: 0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsLobbyingExpenditures/CurrentYearMinus2"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width: 0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsLobbyingExpenditures/CurrentYearMinus1"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-bottom-width: 0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsLobbyingExpenditures/CurrentYear"/>
									</xsl:call-template>
								</td>
								<td class="IRS990ScheduleC_MoneyCell" style="border-right-width:0px;border-bottom-width: 0px">
									<xsl:call-template name="PopulateAmount">
										<xsl:with-param name="TargetNode" select="$FormData/GrassrootsLobbyingExpenditures/Total"/>
									</xsl:call-template>
								</td>
							</tr>
						</table>
					</div>
					<!--Page Footer-->
					<div class="pageEnd" style="width:187mm">
						<div style="float:right;">
							<span style="width:80px;"/>
							<span class="styBoldText"> Schedule C (Form 990 or 990-EZ) 2012</span>
						</div>
					</div>
					<br/>
					<br/>
					<!--END Page Footer-->
					<!-- Page Header -->
					<div class="styBB" style="width:187mm; float: none; clear:none;border-bottom-width:1px">
						<div style="float:left">Schedule C (Form 990 or 990-EZ) 2012</div>
						<div style="float:right">Page <span style="font-weight:bold;font-size:8pt;">3</span>
						</div>
					</div>
					<!-- END Page Header -->
					<!-- Part II_B header -->
					<div class="styGenericDiv" style="width: 187mm">
						<div class="styPartName" style="width:18mm;">Part II-B</div>
						<div class="styPartDesc" style="width:140mm;font-weight:bold"> 
						<span style="float:left;">Complete if the organization is exempt under section 501(c)(3) and has NOT filed Form 5768 (election under section 501(h)).
							
							<xsl:call-template name="SetFormLinkInline">
								<xsl:with-param name="TargetNode" select="$FormData"/>
							</xsl:call-template>
							</span>
						</div>
					</div>
					<!-- header line -->
					<div class="IRS990ScheduleC_LineContainer">
					<div class="IRS990ScheduleC_LineDesc" style="width:146mm;height:12mm;border-top-width:1px;border-bottom-width:1px;padding-top:2mm;">
					<span style="float:left;"><i>For each “Yes” response to lines 1a through 1i below, provide in Part IV a detailed description of the lobbying activity.</i></span>
						</div>
						
						<div class="IRS990ScheduleC_LineIndexMid" style="height:12mm;border-top-width:1px;padding-top:0mm;width:20mm;border-right-width:0px;">(a)
  <div class="IRS990ScheduleC_LineIndexMid" style="height:8.2mm;border-top-width:1px;padding-top:2mm;width:9.9mm;float:right;border-right-width:1px;border-bottom-width:0px">No</div>
							<div class="IRS990ScheduleC_LineIndexMid" style="height:8.2mm;border-top-width:1px;padding-top:2mm;width:9.9mm;float:right;border-right-width:1px;border-bottom-width:0px">Yes</div>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="height:12mm;border-top-width:1px;padding-top:0mm;width:20mm;border-right-width:0px;">(b)
<div class="IRS990ScheduleC_LineIndexMid" style="height:8.2mm;border-right-width:0px;width:20mm;border-top-width:1px;padding-top:2mm;border-bottom-width:0px">Amount </div>
						</div>
						</div>
					<!-- line 1 -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="styLNLeftNumBox" style="padding-left: 1mm;padding-bottom:.5mm">1 </div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;border-right-width:1px;height:10mm;">
   During the year, did the filing organization attempt to influence foreign, national, state or local legislation, including any attempt to influence public opinion on a legislative matter or referendum, through the use of:
   <!-- <span class="IRS990ScheduleC_Dotspacing">.......................</span>-->
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="background-color:lightgrey;border-right-width:0px;height:10mm;width:10mm;border-bottom-width:0px;"/>
						<div class="IRS990ScheduleC_LineIndexMid" style="background-color:lightgrey;height:10mm;width:10mm;border-bottom-width:0px;"/>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey;height:10mm;width:20mm"/>
					</div>
					<!-- line a -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">a</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    Volunteers?
    <span class="IRS990ScheduleC_Dotspacing">.........................................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/Volunteers"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/Volunteers"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey;width:20mm"/>
					</div>
					<!-- line b -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">b</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    Paid staff or management (include  compensation in expenses reported on lines 1c through 1i)?
    <span class="IRS990ScheduleC_Dotspacing">....</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/PaidStaffOrManagement"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/PaidStaffOrManagement"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey;width:20mm">
							
						</div>
					</div>
					<!-- line c -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">c</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    Media advertisements?
    <span class="IRS990ScheduleC_Dotspacing">....................................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/MediaAdvertisements"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/MediaAdvertisements"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;width:20mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/MediaAdvertisementsAmount"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- line d -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">d</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    Mailings to members, legislators, or the public?
    <span class="IRS990ScheduleC_Dotspacing">.........................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/MailingsMembers"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/MailingsMembers"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;width:20mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/MailingsMembersAmount"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- line e -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">e</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    Publications, or published or broadcast statements?
    <span class="IRS990ScheduleC_Dotspacing">.......................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/PublicationsOrBroadcast"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/PublicationsOrBroadcast"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;width:20mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/PublicationsOrBroadcastAmount"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- line f -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">f</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    Grants to other organizations for lobbying purposes?
    <span class="IRS990ScheduleC_Dotspacing">.......................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/GrantsOtherOrganizations"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/GrantsOtherOrganizations"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;width:20mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/GrantsOtherOrganizationsAmount"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- line g -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">g</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    Direct contact with legislators, their staffs, government officials, or a legislative body?
    <span class="IRS990ScheduleC_Dotspacing">........</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/DirectContactLegislators"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/DirectContactLegislators"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px; width:20mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/DirectContactLegislatorsAmount"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- line h -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">h</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    Rallies, demonstrations, seminars, conventions, speeches, lectures, or any similar means?
    <span class="IRS990ScheduleC_Dotspacing">......</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/RalliesDemonstrations"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/RalliesDemonstrations"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;width:20mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/RalliesDemonstrationsAmount"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- line i -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">i</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
  Other activities? 
   <span class="IRS990ScheduleC_Dotspacing">..........................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/OtherActivities"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/OtherActivities"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;width:20mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/OtherActivitiesAmount"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- line j -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">j</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    Total. Add lines 1c through 1i
    <span class="IRS990ScheduleC_Dotspacing">...............................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="background-color:lightgrey;border-right-width:0px;width:10mm;border-bottom-width:0px;"/>
						<div class="IRS990ScheduleC_LineIndexMid" style="background-color:lightgrey;width:10mm;border-bottom-width:0px;"/>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;width:20mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/TotalLobbyingExpendituresIIB"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- line 2a -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_LineIndex" style="padding-right:15px">2a</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    Did the activities in line 1 cause the organization to be not described in section 501(c)(3)?
    <span class="IRS990ScheduleC_Dotspacing">.....</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/NotDescribedIn501c3"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:10mm;">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/NotDescribedIn501c3"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;border-bottom-width:0px;background-color:lightgrey;width:20mm"/>
					</div>
					<!-- line b -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">b</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    If "Yes," enter the amount of any tax incurred under section 4912
    <span class="IRS990ScheduleC_Dotspacing">.................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="background-color:lightgrey;border-right-width:0px;border-bottom-width:0px;width:10mm"/>
						<div class="IRS990ScheduleC_LineIndexMid" style="background-color:lightgrey;border-bottom-width:0px;width:10mm"/>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;width:20mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/AmountOf4912Tax"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- line c -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">c</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:138mm;">
    If "Yes," enter the amount of any tax incurred by organization managers under section 4912
    <span class="IRS990ScheduleC_Dotspacing">.....</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="background-color:lightgrey;border-right-width:0px;width:10mm;border-bottom-width:0px;"/>
						<div class="IRS990ScheduleC_LineIndexMid" style="background-color:lightgrey;width:10mm;border-bottom-width:0px;"/>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;width:20mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/AmountOfManagers4912Tax"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- line d -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex" style="border-bottom-width:1px;">d</div>
						<div class="IRS990ScheduleC_LineDesc" style="border-bottom-width:1px;width:138mm;">
    If the filing organization incurred a section 4912 tax, did it file Form 4720 for this year?
    <span class="IRS990ScheduleC_Dotspacing">.......</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="border-bottom-width:1px;width:10mm">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed4912Tax"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="border-bottom-width:1px;width:10mm">
							<span style="font-weight: normal">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/Form4720Filed4912Tax"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="IRS990ScheduleC_MoneyField" style="border-right-width:0px;border-bottom-width:1px;background-color:lightgrey;width:20mm"/>
					</div>
					<!-- Part III-A header -->
					<div class="styGenericDiv" style="width: 187mm">
						<div class="styPartName" style="width:18mm;">Part III-A</div>
						<div class="styPartDesc" style="width:169mm;font-weight:bold ">
Complete if the organization is exempt under
section 501(c)(4), section 501(c)(5), or section 501(c)(6).
							
							<xsl:call-template name="SetFormLinkInline">
								<xsl:with-param name="TargetNode" select="$FormData"/>
							</xsl:call-template>
						</div>
					</div>
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_LineDesc" style="width:164mm;height:4mm;border-top-width:1px;border-right-width:0px"/>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:1px;padding-top:0mm;border-left-width:0px"/>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:1px;padding-top:0mm;">Yes</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:1px;padding-top:0mm;border-right-width:0px">No</div>
						<!-- Line 1 -->
						<div class="IRS990ScheduleC_LineContainer">
							<div class="IRS990ScheduleC_LineIndex" style="padding-top:0mm;padding-right: 18px;">1</div>
							<div class="IRS990ScheduleC_LineDesc" style="width:156mm;height:4mm;border-top-width:0px;padding-top:0mm;">
    Were substantially all (90% or more) dues received nondeductible by members?
  <span class="IRS990ScheduleC_Dotspacing">................</span>
							</div>
							<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">1</div>
							<div class="IRS990ScheduleC_LineIndexMid" style="font-weight:normal;width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/SubstantiallyAllDuesNondeduct"/>
								</xsl:call-template>
							</div>
							<div class="IRS990ScheduleC_LineIndexMid" style="font-weight:normal;width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;border-right-width:0px">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/SubstantiallyAllDuesNondeduct"/>
								</xsl:call-template>
							</div>
						</div>
						<!-- Line 2 -->
						<div class="IRS990ScheduleC_LineContainer">
							<div class="IRS990ScheduleC_LineIndex" style="padding-top:0mm;padding-right: 18px;">2</div>
							<div class="IRS990ScheduleC_LineDesc" style="width:156mm;height:4mm;border-top-width:0px;padding-top:0mm;">
    Did the organization make only in-house lobbying expenditures of $2,000 or less?
  <span class="IRS990ScheduleC_Dotspacing">................</span>
							</div>
							<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">2</div>
							<div class="IRS990ScheduleC_LineIndexMid" style="font-weight:normal;width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/OnlyInHouseLobbying"/>
								</xsl:call-template>
							</div>
							<div class="IRS990ScheduleC_LineIndexMid" style="font-weight:normal;width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;border-right-width:0px">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/OnlyInHouseLobbying"/>
								</xsl:call-template>
							</div>
						</div>
						<!-- Line 3 -->
						<div class="IRS990ScheduleC_LineContainer">
							<div class="IRS990ScheduleC_LineIndex" style="border-bottom-width:1px;padding-right: 18px;">3</div>
							<div class="IRS990ScheduleC_LineDesc" style="width:156mm;height:4mm;border-bottom-width:1px;padding-top:0mm;">
   Did the organization agree to carry over lobbying and political expenditures from the prior year?
  <span class="IRS990ScheduleC_Dotspacing">..........</span>
							</div>
							<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">3</div>
							<div class="IRS990ScheduleC_LineIndexMid" style="font-weight:normal;width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">
								<xsl:call-template name="PopulateYesBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/AgreeToCarryoverPriorYear"/>
								</xsl:call-template>
							</div>
							<div class="IRS990ScheduleC_LineIndexMid" style="font-weight:normal;width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;border-right-width:0px">
								<xsl:call-template name="PopulateNoBoxText">
									<xsl:with-param name="TargetNode" select="$FormData/AgreeToCarryoverPriorYear"/>
								</xsl:call-template>
							</div>
						</div>
					</div>
					<!-- Part III_B header -->
					<div class="styGenericDiv" style="width: 187mm;border-bottom-width:1px">
						<div class="styPartName" style="width:18mm;">Part III-B</div>
						<div class="styPartDesc" style="width:169mm;font-weight:bold">
Complete if the
organization is exempt under section 501(c)(4), section 501(c)(5), or section 501(c)(6)
and if either (a) BOTH Part III-A, lines 1 and 2, are answered “No” OR (b) Part III-A, line 3, is
answered “Yes."
							<!-- <br />
       <span class="styNormalText">
         (For reporting only by organizations that did not complete Part VI-A) (See page 13 of the instructions.)
         </span>-->
							<xsl:call-template name="SetFormLinkInline">
								<xsl:with-param name="TargetNode" select="$FormData"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- Line 1-->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_LineIndex" style="border-top-width:1px;padding-right: 18px">1</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:140mm;border-top-width:1px;padding-top:0mm;">
   Dues, assessments and similar amounts from members
  <span class="IRS990ScheduleC_Dotspacing">.....................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:1px;padding-top:0mm;">1</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:32mm;height:4mm;border-top-width:1px;padding-left:1mm;border-right-width:0px;text-align:right;font-weight:normal">
							
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/DuesAssessments"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- Line 2 -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_LineIndex" style="padding-top:0mm;padding-right: 18px">2</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:140mm;height:4mm;border-top-width:0px;padding-top:0mm;">
   Section 162(e) nondeductible lobbying and political expenditures <span style="font-weight:bold; ">(do not include amounts of political <br/>expenses for which the section 527(f) tax was paid).</span>
							<!--<span class="IRS990ScheduleC_Dotspacing">..........</span>-->
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:6mm;border-top-width:0px;padding-left:1mm;border-right-width:1px;text-align:left;background:lightgrey;border-bottom:0px"></div>
					</div>
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex" style="padding-top:1mm;">a</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:140mm;height:4mm;border-top-width:0px;padding-top:1mm;">
   Current year
  <span class="IRS990ScheduleC_Dotspacing">.........................................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">2a</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:32mm;height:4mm;border-top-width:0px;padding-left:1mm;border-right-width:0px;text-align:right;padding-top:0mm;font-weight:normal">
							
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/NonDedLobbyPoliticalCurrent"/>
							</xsl:call-template>
						</div>
					</div>
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">b</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:140mm;height:4mm;border-top-width:0px;padding-top:0mm;">
   Carryover from last year
  <span class="IRS990ScheduleC_Dotspacing">....................................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">2b</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:32mm;height:4mm;border-top-width:0px;padding-left:1mm;border-right-width:0px;text-align:right;font-weight:normal">
							
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/NonDedLobbyPoliticalCarryover"/>
							</xsl:call-template>
						</div>
					</div>
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_SubLineIndex">c</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:140mm;height:4mm;border-top-width:0px;padding-top:0mm;">
   Total
  <span class="IRS990ScheduleC_Dotspacing">............................................</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">2c</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:32mm;height:4mm;border-top-width:0px;padding-left:1mm;border-right-width:0px;text-align:right;font-weight:normal">
							
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/NonDedLobbyPoliticalTotal"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- Line 3 -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_LineIndex" style="padding-top:0mm;padding-right: 18px">3</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:140mm;height:4mm;border-top-width:0px;padding-top:0mm;">
  Aggregate amount reported in section 6033(e)(1)(A) notices of nondeductible section 162(e) dues
  <span class="IRS990ScheduleC_Dotspacing">.</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">3</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:32mm;height:4mm;border-top-width:0px;padding-left:1mm;border-right-width:0px;text-align:right;font-weight:normal">
							
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/AggrAmtReportedInDuesNotices"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- Line 4 -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_LineIndex" style="padding-top:0mm;padding-right: 18px">4</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:140mm;height:10mm;border-top-width:0px;padding-top:0mm;">
   If notices were sent and the amount on line 2c exceeds the amount on line 3, what portion of the excess
   does the organization agree to carryover to the reasonable estimate of nondeductible lobbying and political expenditure next year?
  <span class="IRS990ScheduleC_Dotspacing">................................</span>
						</div>
						
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:10mm;border-top-width:0px;padding-top:0mm;valign:bottom;">
						<span style="width:7.5mm;height:6mm;background:lightgrey;"></span>4</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:32mm;height:10mm;border-top-width:0mm;padding-left:1mm;padding-top:6mm;border-right-width:0px;text-align:right;font-weight:normal">
							
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/AmountToBeCarriedOver"/>
							</xsl:call-template>
						</div>
					</div>
					<!-- Line 5 -->
					<div class="IRS990ScheduleC_LineContainer">
						<div class="IRS990ScheduleC_LineIndex" style="padding-top:0mm;padding-right: 18px;border-bottom-width:1px">5</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:140mm;height:4mm;border-top-width:0px;padding-top:0mm;border-bottom-width:1px;">
   Taxable amount of lobbying and political expenditures (see
instructions)
  <span class="IRS990ScheduleC_Dotspacing">..............</span>
						</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:8mm;height:4mm;border-top-width:0px;padding-top:0mm;">5</div>
						<div class="IRS990ScheduleC_LineIndexMid" style="width:32mm;height:4mm;border-top-width:0px;padding-left:1mm;border-right-width:0px;text-align:right;font-weight:normal">
							
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="TargetNode" select="$FormData/TaxableAmount"/>
							</xsl:call-template>
						</div>
					</div>
					<div class="styGenericDiv" style="width: 187mm;">
						<div class="styPartName" style="width:18mm;">Part IV</div>
						<div class="styPartDesc" style="width:169mm;font-weight:bold;">
Supplemental Information
</div>
						<div class="IRS990ScheduleC_LineDesc" style="width:187mm;height:4mm;border-top-width:1px;padding-top:1mm;border-bottom-width:1px;border-right-width:0px;padding-left:2mm">
Complete this part to provide the descriptions required for Part l-A, line 1; Part l-B, line 4; Part l-C, line 5; Part II-A (affiliated group list); Part II-A, line 2; and Part ll-B, line 1. Also, complete this part for any additional information.
</div>
						<span style="float:right">
							<!--  Part II - Additional data from Part I  -->
							
							<xsl:call-template name="SetDynamicTableToggleButton">
								<xsl:with-param name="TargetNode" select="$FormData/Form990ScheduleCPartIV"/>
								<xsl:with-param name="containerHeight" select="5"/>
								<xsl:with-param name="containerID" select="'SUPctn'"/>
							</xsl:call-template>
						</span>
					</div>
					<div class="styTableContainer" style="width: 187mm; border-bottom-width: 2px" id="SUPctn">
						<xsl:call-template name="SetInitialState"/>
						<table class="styTable" style="font-size: 7pt; border-color:black" cellspacing="0">
							<thead>
								<tr class="styDepTblHdr">
									<!--th class="styDepTblCell" scope="col">Item No.</th-->
									<th class="styDepTblCell" scope="col" style="width:50mm;text-align:center;font-size:7pt;font-weight:normal;border-color:black;">Identifier</th>
									<th class="styDepTblCell" scope="col" style="width:50mm;text-align:center;font-size:7pt;font-weight:normal;border-color:black;">Return Reference</th>
									<th class="styDepTblCell" scope="col" style="width:87mm;text-align:center;font-size:7pt;font-weight:normal;border-color:black;">Explanation</th>
								</tr>
							</thead>
							<tfoot/>
							<tbody valign="top">
								<xsl:if test="($Print!=$Separated) or (($Print=$Separated) and (count($FormData/Form990ScheduleCPartIV) &lt;20))">
									<xsl:for-each select="$FormData/Form990ScheduleCPartIV">
										<tr>
											<td class="styTableCell" style="text-align:left;border-right-width: 1px; width:50mm; ">
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="Identifier"/>
												</xsl:call-template>
											</td>
											<td class="styTableCell" style="text-align:left; border-right-width: 1px; width: 50mm;">
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="ReturnReference"/>
												</xsl:call-template>
											</td>
											<td class="styTableCell" style="text-align:left; border-right-width: 0px; width: 86mm">
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="Explanation"/>
												</xsl:call-template>
											</td>
										</tr>
									</xsl:for-each>
									
								</xsl:if>
							</tbody>
						</table>
					</div>
					<xsl:call-template name="SetInitialDynamicTableHeight">
						<xsl:with-param name="TargetNode" select="$FormData/Form990ScheduleCPartIV"/>
						<xsl:with-param name="containerHeight" select="5"/>
						<xsl:with-param name="containerID" select=" 'SUPctn' "/>
					</xsl:call-template>
					<!--Page Footer-->
					<div class="pageEnd" style="width:187mm">
						<div style="float:right;">
							<span style="width:80px;"/>
							<span class="styBoldText"> Schedule C (Form 990 or 990EZ) 2012</span>
						</div>
					</div>
					<!--END Page Footer-->
					<br/>
					<div class="styLeftOverTitleLine" id="LeftoverData">
						<div class="styLeftOverTitle">
          Additional Data        
        </div>
						<div class="styLeftOverButtonContainer">
							<input class="styLeftoverTableBtn" TabIndex="1" type="button" value="Return to Form" onclick="javascript:returnToWriteInImage();"/>
						</div>
					</div>
					<table class="styLeftOverTbl">
						<xsl:call-template name="PopulateCommonLeftover">
							<xsl:with-param name="TargetNode" select="$FormData"/>
							<xsl:with-param name="DescWidth" select="100"/>
						</xsl:call-template>
						<!--<xsl:call-template name="PopulateLeftoverRow">
          <xsl:with-param name="Desc">Form 990, Schedule C, Part 1C, Line  5 </xsl:with-param>
          <xsl:with-param name="TargetNode" select="$FormData/Sec527PolOrgs"/>
          <xsl:with-param name="DescWidth" select="100"/>
        </xsl:call-template>-->
					</table>
					<br/>
					<!-- leftover data table -->
					<xsl:if test="($Print = $Separated) and count($FormData/Sec527PolOrgs) &gt;= 6">
						<span class="styRepeatingDataTitle">Form 990, Schedule C, Part 1-C, Line 5</span>
						<table class="styDepTbl" cellspacing="0" style="font-size:7pt;">
							<thead class="styTableThead">
								<tr class="styDepTblHdr">
									<th class="styDepTblCell" style="width:50mm;border-top-width:1px;padding-bottom:18mm" scope="col">(a)<span class="styNormalText" style="text-align:center;"> Name</span>
									</th>
									<span class="styIRS4136TableCellPad"/>
									<th class="styDepTblCell" style="width:50mm;border-right-width:1px;border-top-width:1px;padding-bottom:18mm" scope="col">(b)<span class="styNormalText" style="text-align:center;"> Address</span>
									</th>
									<th class="styDepTblCell" style="width:22mm;border-right-width:1px;border-top-width:1px;padding-bottom:18mm" scope="col">(c) <span class="styNormalText" style="text-align:center;">EIN</span>
									</th>
									<th class="styDepTblCell" style="width:33mm;border-right-width:1px;border-top-width:1px;padding-bottom:8mm" scope="col">(d) <span class="styNormalText" style="text-align:center;">Amount paid from filing organization's own internal funds. If none, enter -0-. </span>
									</th>
									<th class="styDepTblCell" style="width:33mm;border-right-width:0px;border-top-width:1px" scope="col">(e) <span class="styNormalText" style="text-align:center;">  Amount of political contributions received and promptly and directly delivered to a separate political organization. If none, enter -0-. </span>
									</th>
								</tr>
							</thead>
							<tfoot/>
							<xsl:for-each select="$FormData/Sec527PolOrgs">
								<tr>
									<xsl:attribute name="class"><xsl:choose><xsl:when test="position() mod 2 = 1">styDepTblRow1Cell </xsl:when><xsl:otherwise>styDepTblRow2Cell </xsl:otherwise></xsl:choose></xsl:attribute>
									<td class="styDepTblCell" style="font-family:verdana;font-size:6pt;text-align:left;">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="NameOf527Organization/BusinessNameLine1"/>
										</xsl:call-template>
										<br/>
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="NameOf527Organization/BusinessNameLine2"/>
										</xsl:call-template>
									</td>
									<!-- Address -->
									<td class="styDepTblCell" style="text-align:left;">
										<xsl:choose>
											<xsl:when test="AddressUS and AddressUS !=''">
												<xsl:call-template name="PopulateUSAddressTemplate">
													<xsl:with-param name="TargetNode" select="AddressUS"/>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
												<xsl:call-template name="PopulateForeignAddressTemplate">
													<xsl:with-param name="TargetNode" select="AddressForeign"/>
												</xsl:call-template>
											</xsl:otherwise>
										</xsl:choose>
									</td>
									<!-- Employer Identification Number -->
									<td class="styDepTblCell" style="text-align:center;">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="EIN"/>
										</xsl:call-template>
									</td>
									<!-- Amount Paid from Internal Funds -->
									<td class="styDepTblCell" style="text-align:right;border-right-width:1px">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="AmtPdFromInternalFunds"/>
										</xsl:call-template>
									</td>
									<!-- Amount of contributions received and delivered-->
									<td class="styDepTblCell" style="text-align:right;border-right-width:0px">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="AmtOfContribsRecdDelivered"/>
										</xsl:call-template>
									</td>
								</tr>
							</xsl:for-each>
						</table>
					</xsl:if>
					<!--</div>-->
				</form>
			</body>
		</html>
	</xsl:template>
		<xsl:template name="IRS990SchCTableFillerRow">
		<tr>
			<td class="styTableCellText" >
				<br/>
				<br/>
				<span style="width:4px;"/>
			</td>
			<td class="styTableCell" style="width:50mm;">
				<span style="width:4px"/>
			</td>
			<td class="styTableCell" style="width:22mm;">
				<span style="width:4px"/>
			</td>
			<td class="styTableCell" style="width:33mm;">
				<span style="width:4px"/>
			</td>
				
			
			<td class="styTableCell" style="width:33mm;border-right-width:0px">
				<span style="width:4px;border-right-width:0px;"/>
			</td>
			
		</tr>
	</xsl:template>
</xsl:stylesheet>
