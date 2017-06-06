<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:include href="PopulateTemplate.xsl"/>
	<xsl:include href="CommonPathRef.xsl"/>
	<xsl:include href="AddHeader.xsl"/>
	<xsl:include href="AddOnTable.xsl"/>
	<xsl:include href="IRS5471ScheduleJStyle.xsl"/>
	<xsl:output method="html" indent="yes"/>
	<xsl:strip-space elements="*"/>
	<!-- Defines the stage of the data, e.g. original or latest -->
	<xsl:param name="IRS5471ScheduleJData" select="$RtnDoc/IRS5471ScheduleJ"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>
					<xsl:call-template name="FormTitle">
						<xsl:with-param name="RootElement" select="local-name($IRS5471ScheduleJData)"/>
					</xsl:call-template>
				</title>
				<meta http-equiv="Pragma" content="no-cache"/>
				<meta http-equiv="Cache-Control" content="no-cache"/>
				<meta http-equiv="Expires" content="0"/>
				<meta http-equiv="Cache-Control" content="private"/>
				<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
				<meta name="Description" content="IRS Schedule J (Form 5471)"/>
				<META name="GENERATOR" content="IBM WebSphere Studio"/>
				<script language="JavaScript" src="{$ScriptPath}/FormDisplay.js" type="text/javascript"/>
				<xsl:call-template name="InitJS"/>
				<style type="text/css">
					<xsl:if test="not($Print) or $Print=''">
						<!-- Form 5471ScheduleJ CSS Styles are located in the template called below -->
						<xsl:call-template name="IRS5471ScheduleJStyle"/>
						<xsl:call-template name="AddOnStyle"/>
					</xsl:if>
				</style>
				<xsl:call-template name="GlobalStylesForm"/>
			</head>
			<body class="styBodyClass">
				<form name="IRS5471ScheduleJ">
					<!--   BEGIN WARNING LINE  -->
					<xsl:call-template name="DocumentHeaderLandscape"/>
					<!--   END WARNING LINE   -->
					<!--   BEGIN FORM HEADER   -->
					<div class="styBB" style="width:256mm;height: 25mm;border-bottom-width:2px;">
						<div class="styFNBox" style="width:40mm;font-size:8pt;height:25mm;border-right-width:2px;">
							<div class="styFormNumber" style="font-size:10pt;font-weight:bold;">SCHEDULE J</div>
							<span class="sty5471ScheduleJFNum2">(Form 5471)</span>
							<xsl:call-template name="LinkToLeftoverDataTableInline">
								<xsl:with-param name="Desc">Return Software ID</xsl:with-param>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/softwareId"/>
								<xsl:with-param name="Style">padding-left:3mm;</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="LinkToLeftoverDataTableInline">
								<xsl:with-param name="Desc">Return Software Version</xsl:with-param>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/softwareVersion"/>
								<xsl:with-param name="Style">padding-left:3mm;</xsl:with-param>
							</xsl:call-template>
							<div class="sty5471ScheduleJRev">(Rev. December 2012)</div>
							<xsl:call-template name="SetFormLinkInline">
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData"/>
							</xsl:call-template>
							<div class="styAgency" style="padding-top:1.7mm;">Department of the Treasury</div>
							<div class="styAgency" style="padding-bottom:.1mm;">Internal Revenue Service</div>
						</div>
						<div class="styFTBox" style="height: 25mm;width:175mm;padding-top:1mm;border-left-width:1px;border-right-width:1px;">
							<div class="styMainTitle" style="font-weight:bold;">Accumulated Earnings and Profits (E&amp;P)<br/> of Controlled Foreign Corporation</div>
							<div style="height:3.5mm;font-size:7pt;padding-top:5mm;border:0px;" class="styFST">
								<img src="{$ImagePath}/5471SchJ_Bullet.gif" alt="Bullet Image"/>Information about Schedule J (Form 5471) and its instructions is at
								<a href="http://www.irs.gov/form5471" title="Link to IRS.gov">
									<i>www.irs.gov/form5471.</i>
								</a>
							</div>
							<div class="styFST" style="font-size:6pt;margin-left:3mm;font-weight:bold;">
								<div style="margin-left: 1.5mm;;">
									<img src="{$ImagePath}/5471SchJ_Bullet.gif" alt="bullet"/>
									 Attach to Form 5471.
								</div>
							</div>
						</div>
						<div class="styTYBox" style="width:40mm;height:25mm;border-left-width: 2px">
							<div class="styOMB" style="padding-top:10mm;height:2mm;border-bottom:0;text-align:middle;">OMB No. 1545-0704</div>
						</div>
					</div>
					<!--   END FORM HEADER   -->
					<!--   BEGIN TAXPAYER INFO   -->
					<div class="styBB" style="width:256mm;">
						<div class="sty5471ScheduleJBusinessName" style="width:184mm;height:30px;border-right-width: 0px;">Name of person filing Form 5471
					  <br/>
							<span style="font-family: verdana, arial, sans-serif;font-size: 7pt;">
								<xsl:choose>
									<xsl:when test="$IRS5471ScheduleJData/PersonNm != '' ">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/PersonNm"/>
										</xsl:call-template>
									</xsl:when>
									<xsl:when test="$IRS5471ScheduleJData/BusinessName/BusinessNameLine1Txt != '' ">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BusinessName/BusinessNameLine1Txt"/>
										</xsl:call-template>
										<xsl:choose>
											<xsl:when test="$IRS5471ScheduleJData/BusinessName/BusinessNameLine2Txt != '' ">
												<br/>
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BusinessName/BusinessNameLine2Txt"/>
												</xsl:call-template>
											</xsl:when>
										</xsl:choose>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="$RtnHdrData/ReturnTypeCd='1040'">
												<br/>
												<xsl:call-template name="PopulateReturnHeaderFiler">
													<xsl:with-param name="TargetNode">Name</xsl:with-param>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
												<xsl:call-template name="PopulateReturnHeaderFiler">
													<xsl:with-param name="TargetNode">BusinessNameLine1Txt</xsl:with-param>
												</xsl:call-template>
												<br/>
												<xsl:call-template name="PopulateReturnHeaderFiler">
													<xsl:with-param name="TargetNode">BusinessNameLine2Txt</xsl:with-param>
												</xsl:call-template>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
							</span>
						</div>
						<div class="sty5471ScheduleJIN" style="width:72mm;height:30px;border-left-width: 1px;">
							<span style="font-weight:bold;float:left; clear: none; margin-left: 1mm">Identifying number</span>
							<br/>
							<span class="sty5471ScheduleJINBox" style="font-weight:normal; height:4mm; margin-left: 1mm; padding-top:2mm;">
								<xsl:choose>
									<xsl:when test="$IRS5471ScheduleJData/SSN != '' ">
										<xsl:call-template name="PopulateSSN">
											<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/SSN"/>
										</xsl:call-template>
									</xsl:when>
									<xsl:when test="$IRS5471ScheduleJData/EIN != '' ">
										<xsl:call-template name="PopulateEIN">
											<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/EIN"/>
										</xsl:call-template>
									</xsl:when>
									<xsl:when test="$IRS5471ScheduleJData/MissingSSNEINReasonCd != '' ">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/MissingSSNEINReasonCd"/>
										</xsl:call-template>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="$RtnHdrData/ReturnTypeCd='1040'">
												<xsl:call-template name="PopulateReturnHeaderFiler">
													<xsl:with-param name="TargetNode">PrimarySSN</xsl:with-param>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
												<xsl:call-template name="PopulateReturnHeaderFiler">
													<xsl:with-param name="TargetNode">EIN</xsl:with-param>
												</xsl:call-template>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
							</span>
						</div>
					</div>
					<!--   END TAXPAYER INFO   -->
					<!--   BEGIN NAME OF FOREIGN CORPORATION   -->
					<!-- May 24, 2012 place holder for new line -->
					<div class="styBB" style="width:256mm;">
						<div class="sty5471ScheduleJBusinessName" style="width:120mm;height:12mm; ">Name of foreign corporation
							<br/>
							<span style="font-family: verdana, arial, sans-serif;">
								<xsl:call-template name="PopulateText">
									<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/ForeignCorporationName/BusinessNameLine1Txt"/>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateText">
									<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/ForeignCorporationName/BusinessNameLine2Txt"/>
								</xsl:call-template>
							</span>
						</div>
						<div class="sty5471ScheduleJBusinessName" style="width:64mm;height:12mm;width-right:0;">
							<span style="float:left; clear: none; margin-left: 1mm">EIN (if any)</span>
							<br/>
							<span class="sty5471ScheduleJINBox" style="font-weight:normal; margin-left: 1mm; padding-top: 4mm;">
								<xsl:choose>
									<xsl:when test="$IRS5471ScheduleJData/ForeignCorporationEIN != '' ">
										<xsl:call-template name="PopulateEIN">
											<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/ForeignCorporationEIN"/>
										</xsl:call-template>
									</xsl:when>
									<xsl:when test="$IRS5471ScheduleJData/MissingEINReasonCd != '' ">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/MissingEINReasonCd"/>
										</xsl:call-template>
									</xsl:when>
									<xsl:otherwise>
									</xsl:otherwise>
								</xsl:choose>
							</span>
						</div>
						<div class="sty5471ScheduleJIN" style="width:72mm;height:12mm;boarder-left:0;">
							<span style="float:left; clear: none; margin-left: 1mm">Reference ID number (see instructions)</span>
							<br/>
							<span class="sty5471ScheduleJINBox" style="font-weight:normal; loat:left; margin-left: 1mm; padding-top:4mm;">
								<xsl:choose>
									<xsl:when test="((count($IRS5471ScheduleJData/ForeignEntityIdentificationGrp) &gt; 1)) ">
									See Additional Data Table
									</xsl:when>
									<xsl:otherwise>
										<span style="font-size:8px;">
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/ForeignEntityIdentificationGrp/ForeignEntityReferenceIdNum"/>
											</xsl:call-template>
										</span>
									</xsl:otherwise>
								</xsl:choose>
							</span>
						</div>
					</div>
					<!--   BEGIN HEADER   -->
					<div style="width: 256mm;">
						<span class="sty5471ScheduleJCellGeneric" style="width:62mm;text-align: center; height: 22.5mm;  padding-top: 1.5mm">
							<br/>
							<b>Important:</b> Enter amounts in<br/>functional currency.
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="width:32mm;text-align: center; height: 22.5mm;  padding-top: 2mm;">
							<b>(a)</b> Post-1986<br/>Undistributed Earnings<br/>(post-86 section<br/>	959(c)(3) balance)
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="width:35mm;text-align: center; height: 22.5mm;  padding-top: 2mm;">
							<b>(b)</b> Pre-1987 E&amp;P<br/>Not Previously Taxed<br/>(pre-87 section<br/>959(c)(3) balance)
						</span>
						<span style="width:95mm;">
							<span class="sty5471ScheduleJCellGeneric" style="width:95mm;text-align: center; height: 10.5mm; ">
								<b>(c)</b>Previously Taxed E&amp;P (see instructions)<br/>(sections 959(c)(1) and (2) balances)
							</span>
							<span class="sty5471ScheduleJCellGeneric" style="width:31mm;text-align: center;height: 12mm;">
								<br/>
								<i>(i)</i> Earnings Invested<br/>in U.S. Property
							</span>
							<span class="sty5471ScheduleJCellGeneric" style="width:31mm;text-align: center; height: 12mm;">
								<i>(ii)</i> Earnings Invested<br/>in Excess Passive<br/>Assets
							</span>
							<span class="sty5471ScheduleJCellGeneric" style="width:33mm;text-align: center; height: 12mm;">
								<br/>
								<i>(iii)</i> Subpart F Income
							</span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="width:32mm;text-align: center; border-right: 0;height: 22.5mm; padding-top: 2mm; ">
							<b>(d)</b> Total Section<br/>964(a) E&amp;P<br/>(combine columns<br/>(a), (b), and (c))
						</span>
					</div>
					<!--   END HEADER   -->
					<!--   BEGIN LINE 1   -->
					<div class="sty5471ScheduleJDescLine">
						<span class="sty5471ScheduleJLNCol" style="width:62mm;height:8.5mm;">
							<span class="sty5471ScheduleJLN" style="padding-top: 1.5mm">1</span>
							<span class="sty5471ScheduleJLine" style="margin-left: 4.5mm; padding-top: 1.5mm">Balance at beginning of year</span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="width:32mm; height:8.5mm;padding-top: 5mm;">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalBOYPost1986UndistrEarnAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="width:35mm; height:8.5mm;padding-top: 5mm;">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalBOYPre1987EPNotPrevTxdAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="width:31mm;height:8.5mm; padding-top: 5mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalBOYEarnInvstUSPropAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="width:31mm;height:8.5mm; padding-top: 5mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalBOYEarnInvstExPassiveAstAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="width:33 mm;height:8.5mm; padding-top: 5mm">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalBOYSubpartFIncomeAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="width:32mm;height:8.5mm;  padding-top: 5mm; border-right:0;">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalBOYTotalSection964aEPAmt"/>
							</xsl:call-template>
						</span>
					</div>
					<!--   END LINE 1   -->
					<!--   BEGIN LINE 2a   -->
					<div class="sty5471ScheduleJDescLine">
						<span class="sty5471ScheduleJLNCol" style="width:62mm;">
							<span class="sty5471ScheduleJLN" style="padding-top: 1.5mm">2a</span>
							<span class="sty5471ScheduleJLine" style="padding-top: 1.5mm">Current year E&amp;P</span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="padding-top: 4.5mm; width:32mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/CYEPPost1986UndistrEarnAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="background-color: lightgrey; width:35mm; "/>
						<span class="sty5471ScheduleJCellGeneric" style="background-color: lightgrey; width:31mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="background-color: lightgrey; width:31mm; "/>
						<span class="sty5471ScheduleJCellGeneric" style="background-color: lightgrey; width:33mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="background-color: lightgrey; width:32mm;  border-right:0;"/>
					</div>
					<!--   END LINE 2a   -->
					<!--   BEGIN LINE 2b   -->
					<div class="sty5471ScheduleJDescLine">
						<span class="sty5471ScheduleJLNCol" style="width:62mm;">
							<span class="sty5471ScheduleJLN" style="margin-left: 2.5mm; padding-top: 1.5mm">b</span>
							<span class="sty5471ScheduleJLine" style="padding-top: 1.5mm">Current year deficit in E&amp;P</span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="padding-top: 4mm; width:32mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/CYDfctEPPost1986UndistrEarnAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="background-color: lightgrey; width:35mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="background-color: lightgrey;  width:31mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="background-color: lightgrey;   width:31mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="background-color: lightgrey;  width:33mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="background-color: lightgrey;  width:32mm; border-right:0;"/>
					</div>
					<!--   END LINE 2b   -->
					<!--   BEGIN LINE 3   -->
					<div class="sty5471ScheduleJDescLine">
						<span class="sty5471ScheduleJLNCol" style="width:62mm;height:13.5mm;">
							<span class="sty5471ScheduleJLN" style="padding-top: 1mm">3</span>
							<span class="sty5471ScheduleJLine" style="margin-left: 4.5mm; padding-top: 1mm">Total current and accumulated<br/>
								<span style="width: .5mm"/>E&amp;P not previously taxed (line 1<br/>
								<span style="width: .5mm"/>plus line 2a <b>or</b> line 1 minus line 2b)
							</span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm;padding-top: 10mm; width:32mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/Total1986UndistrEarnAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm;padding-top: 10mm; width:35mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/TotalPre1987EPNotPrevTxdAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey;width:31mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm;background-color: lightgrey;width:31mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm;background-color: lightgrey;width:33mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm;background-color: lightgrey;width:32mm; border-right:0;"/>
					</div>
					<!--   END LINE 3   -->
					<!--   BEGIN LINE 4   -->
					<div class="sty5471ScheduleJDescLine">
						<span class="sty5471ScheduleJLNCol" style="width:62mm;height:13.5mm;">
							<span class="sty5471ScheduleJLN" style="padding-top: 1.5mm">4</span>
							<span class="sty5471ScheduleJLine" style="height: 13mm; margin-left: 4.5mm; padding-top: 1.5mm">Amounts included under section<br/>
								<span style="width: .5mm"/>951(a) or reclassified under<br/>
								<span style="width: .5mm"/>section 959(c) in current year
						    </span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm;padding-top: 10mm; width:32mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/IncldCYPost1986UndistrEarnAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm;padding-top: 10mm; width:35mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/IncldCYPre1987EPNotPrevTxdAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm;padding-top:10mm; width:31mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/IncldCYEarnInvstUSPropAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm;padding-top: 10mm; width:31mm;">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/IncldCYEarnInvstExPssvAstAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm;padding-top:10mm; width:33mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/IncldCYSubpartFIncomeAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm;padding-top:9mm; background-color: lightgrey; width:32mm; border-right:0;"/>
					</div>
					<!--   END LINE 4   -->
					<!--   BEGIN LINE 5a   -->
					<div class="sty5471ScheduleJDescLine">
						<span class="sty5471ScheduleJLNCol" style="width:62mm;height:13.5mm;">
							<span class="sty5471ScheduleJLN" style="padding-top: 1.5mm">5a</span>
							<span class="sty5471ScheduleJLine" style="height: 13mm; padding-top: 1.5mm">Actual distributions or<br/>
								<span style="width: .5mm"/>reclassifications of<br/>
								<span style="width: .5mm"/>previously taxed E&amp;P
						   </span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey; padding-top: 9mm; width:32mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey; padding-top: 9mm; width:35mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; padding-top: 10mm; width:31mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/ActlDistrEarnInvstUSPropAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm; padding-top: 10mm; width:31mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/ActlDistrEarnInvstExPssvAstAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm; padding-top: 10mm; width:33mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/ActlDistrSubpartFIncomeAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey; padding-top: 9mm; width:32mm; border-right:0;"/>
					</div>
					<!--   END LINE 5a   -->
					<!--   BEGIN LINE 5b   -->
					<div class="sty5471ScheduleJDescLine">
						<span class="sty5471ScheduleJLNCol" style="width:62mm;height:10.5mm;">
							<span class="sty5471ScheduleJLN" style="margin-left: 2.5mm; padding-top: 2mm ">b</span>
							<span class="sty5471ScheduleJLine" style="height: 10mm; padding-top: 2mm">Actual distributions of<br/>
								<span style="width: .5mm"/>nonpreviously taxed E&amp;P
						    </span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 10.5mm; padding-top: 7mm; width:32mm;">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/ActlDstrPost1986UndistrEarnAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 10.5mm; padding-top: 7mm; width:35mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/ActlDstrPre1987EPNotPrevTxdAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 10.5mm; background-color: lightgrey; padding-top: 7mm; width:31mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 10.5mm; background-color: lightgrey; padding-top: 7mm; width:31mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 10.5mm; background-color: lightgrey; padding-top: 7mm; width:33mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 10.5mm; background-color: lightgrey; padding-top: 7mm; width:32mm; border-right:0;"/>
					</div>
					<!--   END LINE 5b   -->
					<!--   BEGIN LINE 6a   -->
					<div class="sty5471ScheduleJDescLine">
						<span class="sty5471ScheduleJLNCol" style="width:62mm;">
							<span class="sty5471ScheduleJLN" style="padding-top: 1mm">6a</span>
							<span class="sty5471ScheduleJLine" style="height: 13mm;padding-top: 1mm">Balance of previously taxed<br/>
								<span style="width: .5mm"/>E&amp;P at end of year (line 1 plus<br/>
								<span style="width: .5mm"/>line 4, minus line 5a)
						    </span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey; padding-top: 9mm; width:32mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey; padding-top: 9mm; width:35mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; padding-top: 10mm; width:31mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalTxdEarnInvstUSPropAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm; padding-top: 10mm; width:31mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalTxdEarnInvstExPassiveAstAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm; padding-top: 10mm; width:33mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalTxdSubpartFIncomeAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey; padding-top: 9mm; width:32mm; border-right:0;"/>
					</div>
					<!--   END LINE 6a   -->
					<!--   BEGIN LINE 6b   -->
					<div class="sty5471ScheduleJDescLine">
						<span class="sty5471ScheduleJLNCol" style="width:62mm;height:13.5mm;">
							<span class="sty5471ScheduleJLN" style="margin-left: 2.5mm; padding-top:1mm">b</span>
							<span class="sty5471ScheduleJLine" style="height: 13mm; padding-top: 1mm">Balance of E&amp;P not previously<br/>
								<span style="width: .5mm"/>taxed at end of year (line 3<br/>
								<span style="width: .5mm"/>minus line 4, minus line 5b)
						    </span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm; padding-top: 10mm; width:32mm;">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalNoTxPost1986UndistrEarnAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm; padding-top: 10mm; width:35mm; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalNoTxPre1987EPNotPrevTxdAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey; padding-top: 9mm; width:31mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey; padding-top: 9mm; width:31mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey; padding-top: 9mm; width:33mm;"/>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13.5mm; background-color: lightgrey; padding-top: 9mm; width:32mm; border-right:0;"/>
					</div>
					<!--   END LINE 6b   -->
					<!--   BEGIN LINE 7   -->
					<div class="sty5471ScheduleJDescLine">
						<span class="sty5471ScheduleJLNCol" style="width:62mm;height:13.5mm;border-bottom-width:2px;">
							<span class="sty5471ScheduleJLN" style="padding-top: 1mm;b">7</span>
							<span class="sty5471ScheduleJLine" style="height: 13mm; margin-left: 4.5mm;padding-top: 1mm;">Balance at end of year. (Enter<br/>
								<span style="width: .5mm"/>amount from line 6a or line 6b,<br/>
								<span style="width: .5mm"/>whichever is applicable.)
						    </span>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height:13mm; padding-top: 10mm; width:32mm;border-bottom-width:2px;">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalEOYPost1986UndistrEarnAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm;padding-top: 10mm; width:35mm;border-bottom-width:2px; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalEOYPre1987EPNotPrevTxdAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm;padding-top: 10mm; width:31mm;border-bottom-width:2px; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalEOYEarnInvstUSPropAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm;padding-top: 10mm; width:31mm;border-bottom-width:2px; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalEOYEarnInvstExPassiveAstAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm;padding-top:10mm; width:33mm;border-bottom-width:2px; ">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalEOYSubpartFIncomeAmt"/>
							</xsl:call-template>
						</span>
						<span class="sty5471ScheduleJCellGeneric" style="height: 13mm;padding-top: 10mm; width:32mm; border-right:0;border-bottom-width:2px;">
							<xsl:call-template name="PopulateAmount">
								<xsl:with-param name="MaxSize" select="17"/>
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData/BalEOYTotalSection964aEPAmt"/>
							</xsl:call-template>
						</span>
					</div>
					<!--   END LINE 7   -->
					<!--   BEGIN FORM FOOTER  -->
					<div class="sty5471ScheduleJFormFooter">
						<div style="width:130mm;font-weight:bold; float: left; clear: none;">For Paperwork Reduction Act Notice, see the Instructions for Form 5471.</div>
						<div style="width:29mm;font-weight:normal; float: left; clear: none">Cat. No. 21111K</div>
						<div style="width:55mm;text-align:right;font-weight:bold; text-align: right; float: right; clear: none">Schedule J(Form 5471)
						<span style="font-weight: normal"> (Rev. 12-2012)</span>
						</div>
					</div>
					<!--     END FORM FOOTER   -->
					<div class="pageEnd"/>
					<br/>
					<div class="styLeftOverTitleLineLandscape" id="LeftoverData">
						<div class="styLeftOverTitle">
						  Additional Data        
						</div>
						<div class="styLeftOverButtonContainerLandscape" style="float:right;">
							<input class="styLeftoverTableBtn" TabIndex="1" type="button" value="Return to Form" onclick="javascript:returnToWriteInImage();"/>
						</div>
					</div>
					<table class="styLeftOverTblLandscape">
							<xsl:call-template name="PopulateCommonLeftoverLandscape">
								<xsl:with-param name="TargetNode" select="$IRS5471ScheduleJData"/>
								<xsl:with-param name="DescWidth" select="100"/>
							</xsl:call-template>
						</table>
						<!-- END Left Over Table -->
						<xsl:if test="((count($IRS5471ScheduleJData/ForeignEntityIdentificationGrp) &gt; 1))">
							<span class="styRepeatingDataTitle">
								<br/>
							</span>
							<table class="styDepTbl" style="font-size:7pt">
								<thead class="styTableHead">
									<tr class="styDepTblHdr">
										<th class="styDepTblCell" style="text-align:left">
										Reference ID number (see instructions)
                                     </th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="$IRS5471ScheduleJData/ForeignEntityIdentificationGrp">
										<tr>
											<!--Define background colors to the rows -->
											<xsl:attribute name="class"><xsl:choose><xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
											<xsl:otherwise>styDepTblRow2</xsl:otherwise></xsl:choose></xsl:attribute>
											<td class="styDepTblCell" style="text-align:left;">
												<span style="font-family:verdana;font-size:6pt;">
													<xsl:call-template name="PopulateText">
														<xsl:with-param name="TargetNode" select="ForeignEntityReferenceIdNum"/>
													</xsl:call-template>
												</span>
												<br/>
											</td>
										</tr>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:if>
					<!--</div>-->
				</form>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>