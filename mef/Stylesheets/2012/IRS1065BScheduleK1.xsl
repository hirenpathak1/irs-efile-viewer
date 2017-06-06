<?xml version="1.0" encoding="UTF-8"?>
<!-- Last Modified by James Ganzy on 8/01/2012 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:include href="PopulateTemplate.xsl"/>
	<xsl:include href="AddHeader.xsl"/>
	<xsl:include href="CommonPathRef.xsl"/>
	<xsl:include href="AddOnTable.xsl"/>
	<xsl:include href="IRS1065BScheduleK1Style.xsl"/>
	<xsl:output method="html" indent="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:param name="Form1065BSchK1Data" select="$RtnDoc/IRS1065BScheduleK1"/>
	<xsl:template match="/">
		<html lang="EN-US">
			<head>
				<title>
					<xsl:call-template name="FormTitle">
						<xsl:with-param name="RootElement" select="local-name($Form1065BSchK1Data)"/>
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
				<meta name="Description" content="IRS Form 1065-B Schedule K-1"/>
				<script language="JavaScript" src="{$ScriptPath}/FormDisplay.js" type="text/javascript"/>
				<xsl:call-template name="InitJS"/>
				<style type="text/css">
					<xsl:if test="not($Print) or $Print=''">
						<xsl:call-template name="IRS1065BScheduleK1Style"/>
						<xsl:call-template name="AddOnStyle"/>
					</xsl:if>
				</style>
				<xsl:call-template name="GlobalStylesForm"/>
			</head>
			<body class="styBodyClass">
				<form name="Form1065BSchK1">
					<!-- WARNING LINE -->
					<xsl:call-template name="DocumentHeader"/>
					<!-- Begin Void and Corrected Check Boxes -->
					<div class="styBB" style="width:187mm;border-bottom:none;">
						<span style="width:2mm;"/>
						<input type="checkbox" class="styCkbox" style="height:4mm;width:4mm;">
							<xsl:call-template name="PopulateCheckbox">
								<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Corrected"/>
								<xsl:with-param name="BackupName">IRS1065BSchK1Corrected</xsl:with-param>
							</xsl:call-template>
						</input>
						<span style="width:4px;"/>
						<span style="width:30mm;font-size: 10pt;">
							<label>
								<xsl:call-template name="PopulateLabel">
									<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Corrected"/>
									<xsl:with-param name="BackupName">IRS1065BSchK1Corrected</xsl:with-param>
								</xsl:call-template>CORRECTED
                            </label>
						</span>
						<span style="width:19mm;"/>
						<input type="checkbox" class="styCkbox" style="height:4mm;width:4mm;">
							<xsl:call-template name="PopulateCheckbox">
								<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PubliclyTradedPartnership"/>
								<xsl:with-param name="BackupName">IRS1065BSchK1PubliclyTradedPartnership</xsl:with-param>
							</xsl:call-template>
						</input>
						<span style="width:4px;"/>
						<span style="width:61mm;font-size: 10pt;">
							<label>
								<xsl:call-template name="PopulateLabel">
									<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PubliclyTradedPartnership"/>
									<xsl:with-param name="BackupName">IRS1065BSchK1PubliclyTradedPartnership</xsl:with-param>
								</xsl:call-template> PUBLICLY TRADED PARTNERSHIP
                            </label>
						</span>
						<!--<span style="font-size: 6pt;">(99)</span>-->
					</div>
					<!-- End Void and Corrected Check Boxes -->
					<!--copy start-->
					<div class="" style="width:187mm;border-style:solid;border-color:black;border-width: 0px 0px 1px 0px;">
						<div class="styBB" style="width:187mm;">
							<!-- Name and address box -->
							<div class="styIRS1065BSchK1leftBox" style="height:25mm;width:83mm;padding-left:1mm;border-top:1px solid black;">
								<div style="font-size: 6pt;padding-bottom:.8mm;">PARTNERSHIP’S name, street address, city, state, and ZIP code.</div>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">BusinessNameLine1</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">BusinessNameLine2</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">AddressLine1</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">AddressLine2</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">CityStateInfo</xsl:with-param>
								</xsl:call-template>,
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">Country</xsl:with-param>
								</xsl:call-template>
							</div>
							<!-- Form Title and Info box -->
							<div class="styIRS1065BSchK1leftBox" style="height:25mm;width:37.5mm;border-top:1px solid black;">
								<span class="styIRS1065BSchK1leftBoxWithBottom" style="border-left:none;width:100%;">
									<span style="width:4px;"/>
									<span style="font-size: 6pt;font-weight:bold;">1</span>
									<span style="width:4px;"/>
									<span style="width:31mm;font-size: 6pt;">Taxable income (loss) from</span>
									<span style="padding-left:4mm;font-size: 6pt;">passive activities</span>
									<br/><br/>
									<span style="vertical-align:baseline;height:25%;"/>
									<span style="width:33mm;text-align:right;">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/TaxableIncomeLossPassiveActy"/>
										</xsl:call-template>
									</span>
								</span>
								<br/>
								<span style="height:4mm;width:100%;">
									<span style="width:4px;"/>
									<span style="font-size: 6pt;font-weight:bold;">2</span>
									<span style="width:4px;"/>
									<span style="width:31mm;font-size: 6pt;">Taxable income (loss) from</span>
									<span style="padding-left:4mm;font-size: 6pt;">other activities</span>
									<br/><br/>
									<span style="vertical-align:baseline;height:25%;"/>
									<span style="width:33mm;text-align:right;">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/TaxableIncomeLossOtherActy"/>
										</xsl:call-template>
									</span>
								</span>
							</div>
							<!-- Year and Form Box -->
							<div class="styLNDesc" style="width:29mm;padding-top:0mm;padding-bottom:0mm;">
								<div class="styIRS1065BSchK1rightBox" style="width:29mm;text-align:center;border-top:1px solid black;">
									<span style="font-size: 6pt">OMB No. 1545-1626</span>
									<br/>
									<div class="styTY" style="padding-top:3mm;font-size:26;">20<span class="styTYColor">12                       
                                 </span>
									</div>
									<br/>
									<div class="styFN" style="padding-top:1.5mm;font-size:7pt;">Schedule K-1 <br/>(Form 1065-B)
										<xsl:call-template name="SetFormLinkInline">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data"/>
										</xsl:call-template>
									</div>
								</div>
							</div>
							<div class="styIRS1065BSchK1rightBox" style="height:25mm;width:37mm;text-align:right;border-right:none;border-top:none;border-left:none;">
								<br/>
								<div style="font-size:10pt;font-weight:bold;">
								Partner’s Share<br/>
								of Income (Loss)<br/>
								From an Electing<br/>
								Large Partnership
							</div>
							</div>
						</div>
						<div style="width:187mm;height:61mm;">
							<!-- Left boxes (Identification Number, Shareholder's ID, Shareholder's Name and Info) -->
							<div style="width:83mm;height:38mm;float:left;">
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:43mm;padding-left:1mm;">
									<div style="font-size: 6pt;padding-bottom:1.5mm;">PARTNERSHIP’S Employer I.D. number</div>
									<br/>
									<xsl:call-template name="PopulateReturnHeaderFiler">
										<xsl:with-param name="EINChanged">true</xsl:with-param>
										<xsl:with-param name="TargetNode">EIN</xsl:with-param>
									</xsl:call-template>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:39.8mm;padding-left:1mm;">
									<div style="font-size: 6pt;padding-bottom:1.5mm;">PARTNER’S identifying number</div>
									<br/>
									<xsl:if test="$Form1065BSchK1Data/PartnerSSN!=''">
										<xsl:call-template name="PopulateSSN">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerSSN"/>
										</xsl:call-template>
									</xsl:if>
									<xsl:if test="$Form1065BSchK1Data/PartnerEIN!=''">
										<xsl:call-template name="PopulateEIN">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerEIN"/>
										</xsl:call-template>
									</xsl:if>
									<xsl:if test="$Form1065BSchK1Data/MissingSSNEINReason!=''">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/MissingSSNEINReason"/>
										</xsl:call-template>
									</xsl:if>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.3mm;width:83mm;padding-left:1mm;">
									<span style="font-size: 6pt">PARTNER’S name</span>
									<br/>
									<div class="styLNDesc" style="width:81mm;">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerName/BusinessNameLine1"/>
										</xsl:call-template>
										<br/>
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerName/BusinessNameLine2"/>
										</xsl:call-template>
									</div>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.5mm;width:83mm;padding-left:1mm;">
									<span style="font-size: 6pt">Street address (including apt. no.)</span>
									<br/>
									<div class="styLNDesc" style="width:81mm;padding-top:1mm;">
										<xsl:if test="$Form1065BSchK1Data/PartnerUSAddress">
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerUSAddress/AddressLine1"/>
											</xsl:call-template>
											<br/>
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerUSAddress/AddressLine2"/>
											</xsl:call-template>
										</xsl:if>
										<xsl:if test="$Form1065BSchK1Data/PartnerForeignAddress">
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress/AddressLine1"/>
											</xsl:call-template>
											<br/>
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress/AddressLine2"/>
											</xsl:call-template>
										</xsl:if>
									</div>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:83mm;padding-left:1mm;">
									<span style="font-size: 6pt">City, state, and ZIP code</span>
									<br/>
									<div class="styLNDesc" style="width:81mm;">
										<xsl:call-template name="PopulateCityStateInfo">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerUSAddress"/>
											<xsl:with-param name="ForeignAddressTargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress"/>
										</xsl:call-template>
										<xsl:if test="$Form1065BSchK1Data/PartnerForeignAddress">
											<span style="width:8px;"/>
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress/Country"/>
											</xsl:call-template>
										</xsl:if>
									</div>
								</div>
								<!--Partner’s share of liabilities Box-->
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:21mm;width:83mm;padding-bottom:.5mm;padding-left:4px;border-bottom:none;">
									<span style="font-size: 6pt">Partner’s share of liabilities:</span>
									<br/>
									<br/>
									<span style="width:48mm">
										<b>a</b>
										<span style="width:4px;"/>Nonrecourse
										<span class="styDotLn" style="float:none;padding-left:.5mm;">.......</span>
									</span> 
									$
									<span style="border-bottom:solid black 1;text-align:right;width:29mm">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Nonrecourse"/>
										</xsl:call-template>
									</span>
									<span style="width:48.5mm">
										<b>b</b>
										<span style="width:4px;padding-bottom:2mm;"/>Qualified nonrecourse financing
								</span> 
									$
								<span style="border-bottom:solid black 1;width:29mm;text-align:right;">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/QualifiedNonrecourseFinancing"/>
										</xsl:call-template>
								</span>
									<span style="width:48mm;">
										<b>c</b>
										<span style="width:4px;padding-bottom:2mm;"/>Other
										<span class="styDotLn" style="float:none;padding-left:1mm;">.........</span>
									</span>
									$ 
								<span style="border-bottom:solid black 1;width:29mm;text-align:right">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/ShareOfLiabilitiesOther"/>
										</xsl:call-template>
									</span>
								</div>
							</div>
							<!-- Middle Boxes (1a, 1b, 1c,...) -->
							<!-- Tanuja - Removed two elements PostMay5Gain, Qualified5YearGain as part of CR-80 Schema updates and also renumbered the fields accordingly-->
							<div style="width:75mm;height:40mm;float:left;">
								<div style="width:75mm;">
									<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">3</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Qualified dividends</span>
										<span style="padding-top:4mm;width:32mm;float:bottom;text-align:right">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/QualifiedDividends"/>
											</xsl:call-template>
										</span>
									</div>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;background-color:gray;width:37.4mm;border-right-width:1"/>
								</div>
								<div style="width:75mm;">
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.3mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">4a</span>
										<span style="width:4px;"/>
										<span style="width:31mm;font-size: 6pt;">Net capital gain (loss) from</span>
										<span style="padding-left:4mm;font-size: 6pt;">passive activities</span>
										<span style="width:32mm;text-align:right;padding-top:7.5mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetCapitalGainLossPassiveActy"/>
											</xsl:call-template>
										</span>
									</span>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.3mm;width:37.4mm;border-right-width:1;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">4b</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Net capital gain (loss)</span>
										<span style="font-size: 6pt;padding-left:4mm;">from other activities</span>
										<span style="width:32mm;text-align:right;padding-top:7.5mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetCapitalGainLossOtherActy"/>
											</xsl:call-template>
										</span>
									</span>
								</div>
								<div style="width:75mm;">
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">5</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Net passive AMT adjustment</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetPassiveAMTAdjustment"/>
											</xsl:call-template>
										</span>
									</span>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.4mm;border-right-width:1;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">6</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Net other AMT adjustment</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetOtherAMTAdjustment"/>
											</xsl:call-template>
										</span>
									</span>
								</div>
								<div style="width:75mm;">
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">7</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">General credits</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/GeneralCredits"/>
											</xsl:call-template>
										</span>
									</span>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.4mm;border-right-width:1;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">8</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Low-income housing credit</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/LowIncomeHousingCredit"/>
											</xsl:call-template>
										</span>
									</span>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:32.2mm;width:75mm;float:left;border-right-width:1;padding-left:1mm;border-bottom:none;">
									<span style="font-size: 6pt;font-weight:bold;">9</span>
									<span style="width:4px;"/>
									<span style="font-size: 6pt;">Other 
									<xsl:call-template name="SetFormLinkInline">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Other"/>
										</xsl:call-template>
									</span>
									<br/>
									<!--James  change &gt;=10 to 11-->
									<xsl:choose>
										<xsl:when test="($Print = $Separated) or (count($Form1065BSchK1Data/Other/Item) &gt; 8)">
											<div style="width:50mm;padding-top:2mm;padding-left:2mm;">See Additional Data Table</div>
										</xsl:when>
										<xsl:otherwise>
											<xsl:for-each select="$Form1065BSchK1Data/Other/Item">
												<br/>
												<span style="width:68mm;padding-left:1mm">
													<span style="width:33mm;">
														<xsl:call-template name="PopulateText">
															<xsl:with-param name="TargetNode" select="Code"/>
														</xsl:call-template>
													</span>
													<span style="width:33mm;text-align:right">
														<xsl:call-template name="PopulateAmount">
															<xsl:with-param name="TargetNode" select="Amount"/>
														</xsl:call-template>
													</span>
												</span>
											</xsl:for-each>
										</xsl:otherwise>
									</xsl:choose>
								</div>
							</div>
							<!-- copy end-->
							<!-- Stylesheet will always show only Copy B box as per customer request -->
							<div style="width:29mm;height:69mm;float:left;text-align:right;padding-bottom:0mm">
								<span class="styIRS1065BSchK1rightBoxWithBottom" style="height:69mm;width:29mm;float:left;padding-bottom:0mm;border-left-width:0;border-right-width:0;border-bottom:none;">
									<div style="font-size: 9pt;font-weight:bold;height:6mm;padding-top:1mm;padding-bottom:3mm">Copy A</div>
									<span class="styBoldText" style="font-size: 7.5pt;">For 
								<br>Internal Revenue</br>
								Service Center
								</span>
									<br/><br/>
								<span class="styBoldText" style="font-size:6pt;">File with Form 1065-B.</span>
									<div style="font-size:6.5pt;text-align:right;padding-top:8mm;">
										For  Paperwork<br/>
										Reduction Act<br/>
										Notice and<br/>
										instructions for<br/>
										completing this<br/>
										form, see the<br/>
										<b>2012 Instructions<br/>for Form 1065-B,</b><br/>	
										U.S. Return of<br/>
										Income for Electing<br/>
										Large Partnerships.
							        </div>
								</span>
							</div>
						</div>
					</div>
					<div style="width:187mm;">
						<span style="font-weight:bold;width:62mm;font-size:8pt;">Schedule K-1 (Form 1065-B)</span>
						<span style="width:30mm;font-size: 6pt;text-align:center;">Cat. No. 25437H</span>
						<span style="width:30mm;font-size: 6pt;text-align:center;">IRS.gov/form1065b</span>
						<span style="width:65mm;font-size: 6pt;text-align:right;">Department of the Treasury - Internal Revenue Service</span>
						<br/>
						<span style="width:187mm;text-align:center;font-size:8pt;padding-top:1mm;" class="StyBoldText">Do NOT Cut or Separate Forms on This Page</span>
					</div>
					<br/>
					<div class="pageEnd" style="width:187mm;"/>
				</form>
			</body>
			<!--	End of A	-->
			<!--Begin Part B-->
			<body class="styBodyClass">
				<form name="Form1065BSchK1">
					<!-- WARNING LINE -->
					<xsl:call-template name="DocumentHeader"/>
					<!-- Begin Void and Corrected Check Boxes -->
					<div class="styBB" style="width:187mm;border-bottom:none;">
						<span style="width:2mm;"/>
						<!--correctedID is generated because the ID for the following input conflicts with an ID from form A-->
						<xsl:variable name="correctedID">
							<xsl:call-template name="PopulateID">
								<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Corrected"/>
							</xsl:call-template>
						</xsl:variable>
						<input type="checkbox" alt="alt" class="styCkbox" style="height:4mm;width:4mm;">
							<xsl:call-template name="PopulateCheckbox">
								<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Corrected"/>
								<xsl:with-param name="BackupName">IRS1065BSchK1Corrected</xsl:with-param>
							</xsl:call-template>
							<xsl:attribute name="id">
								<xsl:value-of select="concat($correctedID, '[2]')"/>
							</xsl:attribute>
						</input>
						<span style="width:4px;"/>
						<span style="width:40mm;font-size: 10pt;">
							<label>
								<xsl:call-template name="PopulateLabel">
									<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Corrected"/>
									<xsl:with-param name="BackupName">IRS1065BSchK1Corrected</xsl:with-param>
								</xsl:call-template>
								<xsl:attribute name="for">
									<xsl:value-of select="concat($correctedID, '[2]')"/>
								</xsl:attribute>CORRECTED<span style="font-size: 8pt;"> (if checked)</span>
							</label>
						</span>
						<span style="width:15mm;"/>
						<!--publiclyTradedPartnershipID is generated because the ID for the following input conflicts with an ID from form A-->
						<xsl:variable name="publiclyTradedPartnershipID">
							<xsl:call-template name="PopulateID">
								<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PubliclyTradedPartnership"/>
							</xsl:call-template>
						</xsl:variable>
						<input type="checkbox" class="styCkbox" style="height:4mm;width:4mm;">
							<xsl:call-template name="PopulateCheckbox">
								<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PubliclyTradedPartnership"/>
								<xsl:with-param name="BackupName">IRS1065BSchK1PubliclyTradedPartnership</xsl:with-param>
							</xsl:call-template>
							<xsl:attribute name="id">
								<xsl:value-of select="concat($publiclyTradedPartnershipID, '[2]')"/>
							</xsl:attribute>
						</input>
						<span style="width:4px;"/>
						<span style="width:85mm;font-size: 10pt;">
							<label>
								<xsl:call-template name="PopulateLabel">
									<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PubliclyTradedPartnership"/>
									<xsl:with-param name="BackupName">IRS1065BSchK1PubliclyTradedPartnership</xsl:with-param>
								</xsl:call-template>
								<xsl:attribute name="for">
									<xsl:value-of select="concat($publiclyTradedPartnershipID, '[2]')"/>
								</xsl:attribute> PUBLICLY TRADED PARTNERSHIP<span style="font-size: 8pt;"> (if checked)</span>
							</label>
						</span>
						<!--<span style="font-size: 6pt;">(99)</span>-->
					</div>
					<!-- End Void and Corrected Check Boxes -->
					<!--copy start-->
					<div class="" style="width:187mm;border-style:solid;border-color:black;border-width: 0px 0px 1px 0px;">
						<div class="styBB" style="width:187mm;">
							<!-- Name and address box -->
							<div class="styIRS1065BSchK1leftBox" style="height:25mm;width:83mm;padding-left:1mm;border-top:1px solid black;">
								<div style="font-size: 6pt;padding-bottom:.8mm;">PARTNERSHIP’S name, street address, city, state, and ZIP code.</div>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">BusinessNameLine1</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">BusinessNameLine2</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">AddressLine1</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">AddressLine2</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">CityStateInfo</xsl:with-param>
								</xsl:call-template>,
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">Country</xsl:with-param>
								</xsl:call-template>
							</div>
							<!-- Form Title and Info box -->
							<div class="styIRS1065BSchK1leftBox" style="height:25mm;width:37.5mm;border-top:1px solid black;">
								<span class="styIRS1065BSchK1leftBoxWithBottom" style="border-left:none;width:100%;">
									<span style="width:4px;"/>
									<span style="font-size: 6pt;font-weight:bold;">1</span>
									<span style="width:4px;"/>
									<span style="width:31mm;font-size: 6pt;">Taxable income (loss) from</span>
									<span style="padding-left:4mm;font-size: 6pt;">passive activities</span>
									<br/><br/>
									<span style="vertical-align:baseline;height:25%;"/>
									<span style="width:33mm;text-align:right;">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/TaxableIncomeLossPassiveActy"/>
										</xsl:call-template>
									</span>
								</span>
								<br/>
								<span style="height:4mm;width:100%;">
									<span style="width:4px;"/>
									<span style="font-size: 6pt;font-weight:bold;">2</span>
									<span style="width:4px;"/>
									<span style="width:31mm;font-size: 6pt;">Taxable income (loss) from</span>
									<span style="padding-left:4mm;font-size: 6pt;">other activities</span>
									<br/><br/>
									<span style="vertical-align:baseline;height:25%;"/>
									<span style="width:33mm;text-align:right;">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/TaxableIncomeLossOtherActy"/>
										</xsl:call-template>
									</span>
								</span>
							</div>
							<!-- Year and Form Box -->
							<div class="styLNDesc" style="width:29mm;padding-top:0mm;padding-bottom:0mm;">
								<div class="styIRS1065BSchK1rightBox" style="width:29mm;text-align:center;border-top:1px solid black;">
									<span style="font-size: 6pt">OMB No. 1545-1626</span>
									<br/>
									<div class="styTY" style="padding-top:3mm;font-size:26;">20<span class="styTYColor">12                       
                                 </span>
									</div>
									<br/>
									<div class="styFN" style="padding-top:1.5mm;font-size:7pt;">Schedule K-1 <br/>(Form 1065-B)
                             <xsl:call-template name="SetFormLinkInline">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data"/>
										</xsl:call-template>
									</div>
								</div>
							</div>
							<div class="styIRS1065BSchK1rightBox" style="height:25mm;width:37mm;text-align:right;border-right:none;border-top:none;border-left:none;">
								<br/>
								<div style="font-size:10pt;font-weight:bold;">
								Partner’s Share<br/>
								of Income (Loss)<br/>
								From an Electing<br/>
								Large Partnership
							</div>
							</div>
						</div>
						<div style="width:187mm;height:61mm;">
							<!-- Left boxes (Identification Number, Shareholder's ID, Shareholder's Name and Info) -->
							<div style="width:83mm;height:38mm;float:left;">
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:43mm;padding-left:1mm;">
									<div style="font-size: 6pt;padding-bottom:1.5mm;">PARTNERSHIP’S Employer I.D. number</div>
									<br/>
									<xsl:call-template name="PopulateReturnHeaderFiler">
										<xsl:with-param name="EINChanged">true</xsl:with-param>
										<xsl:with-param name="TargetNode">EIN</xsl:with-param>
									</xsl:call-template>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:39.8mm;padding-left:1mm;">
									<div style="font-size: 6pt;padding-bottom:1.5mm;">PARTNER’S identifying number</div>
									<br/>
									<xsl:if test="$Form1065BSchK1Data/PartnerSSN!=''">
										<xsl:call-template name="PopulateSSN">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerSSN"/>
										</xsl:call-template>
									</xsl:if>
									<xsl:if test="$Form1065BSchK1Data/PartnerEIN!=''">
										<xsl:call-template name="PopulateEIN">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerEIN"/>
										</xsl:call-template>
									</xsl:if>
									<xsl:if test="$Form1065BSchK1Data/MissingSSNEINReason!=''">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/MissingSSNEINReason"/>
										</xsl:call-template>
									</xsl:if>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.3mm;width:83mm;padding-left:1mm;">
									<span style="font-size: 6pt">PARTNER’S name</span>
									<br/>
									<div class="styLNDesc" style="width:81mm;">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerName/BusinessNameLine1"/>
										</xsl:call-template>
										<br/>
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerName/BusinessNameLine2"/>
										</xsl:call-template>
									</div>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.5mm;width:83mm;padding-left:1mm;">
									<span style="font-size: 6pt">Street address (including apt. no.)</span>
									<br/>
									<div class="styLNDesc" style="width:81mm;padding-top:1mm;">
										<xsl:if test="$Form1065BSchK1Data/PartnerUSAddress">
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerUSAddress/AddressLine1"/>
											</xsl:call-template>
											<br/>
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerUSAddress/AddressLine2"/>
											</xsl:call-template>
										</xsl:if>
										<xsl:if test="$Form1065BSchK1Data/PartnerForeignAddress">
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress/AddressLine1"/>
											</xsl:call-template>
											<br/>
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress/AddressLine2"/>
											</xsl:call-template>
										</xsl:if>
									</div>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:83mm;padding-left:1mm;">
									<span style="font-size: 6pt">City, state, and ZIP code</span>
									<br/>
									<div class="styLNDesc" style="width:81mm;">
										<xsl:call-template name="PopulateCityStateInfo">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerUSAddress"/>
											<xsl:with-param name="ForeignAddressTargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress"/>
										</xsl:call-template>
										<xsl:if test="$Form1065BSchK1Data/PartnerForeignAddress">
											<span style="width:8px;"/>
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress/Country"/>
											</xsl:call-template>
										</xsl:if>
									</div>
								</div>
								<!--Partner’s share of liabilities Box-->
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:21mm;width:83mm;padding-bottom:.5mm;padding-left:4px;border-bottom:none;">
									<span style="font-size: 6pt">Partner’s share of liabilities:</span>
									<br/>
									<br/>
									<span style="width:48mm">
										<b>a</b>
										<span style="width:4px;"/>Nonrecourse
										<span class="styDotLn" style="float:none;padding-left:.5mm;">.......</span>
									</span> 
									$
									<span style="border-bottom:solid black 1;text-align:right;width:29mm">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Nonrecourse"/>
										</xsl:call-template>
									</span>
									<span style="width:48.5mm">
										<b>b</b>
										<span style="width:4px;padding-bottom:2mm;"/>Qualified nonrecourse financing
								</span> 
									$
								<span style="border-bottom:solid black 1;width:29mm;text-align:right;">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/QualifiedNonrecourseFinancing"/>
										</xsl:call-template>
								</span>
									<span style="width:48mm;">
										<b>c</b>
										<span style="width:4px;padding-bottom:2mm;"/>Other
										<span class="styDotLn" style="float:none;padding-left:1mm;">.........</span>
									</span>
									$ 
								<span style="border-bottom:solid black 1;width:29mm;text-align:right">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/ShareOfLiabilitiesOther"/>
										</xsl:call-template>
									</span>
								</div>
							</div>
							<!-- Middle Boxes (1a, 1b, 1c,...) -->
							<!-- Tanuja - Removed two elements PostMay5Gain, Qualified5YearGain as part of CR-80 Schema updates and also renumbered the fields accordingly-->
							<div style="width:75mm;height:40mm;float:left;">
								<div style="width:75mm;">
									<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">3</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Qualified dividends</span>
										<span style="padding-top:4mm;width:32mm;float:bottom;text-align:right">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/QualifiedDividends"/>
											</xsl:call-template>
										</span>
									</div>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;background-color:gray;width:37.4mm;border-right-width:1"/>
								</div>
								<div style="width:75mm;">
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.3mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">4a</span>
										<span style="width:4px;"/>
										<span style="width:31mm;font-size: 6pt;">Net capital gain (loss) from</span>
										<span style="padding-left:4mm;font-size: 6pt;">passive activities</span>
										<span style="width:32mm;text-align:right;padding-top:7.5mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetCapitalGainLossPassiveActy"/>
											</xsl:call-template>
										</span>
									</span>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.3mm;width:37.4mm;border-right-width:1;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">4b</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Net capital gain (loss)</span>
										<span style="font-size: 6pt;padding-left:4mm;">from other activities</span>
										<span style="width:32mm;text-align:right;padding-top:7.5mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetCapitalGainLossOtherActy"/>
											</xsl:call-template>
										</span>
									</span>
								</div>
								<div style="width:75mm;">
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">5</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Net passive AMT adjustment</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetPassiveAMTAdjustment"/>
											</xsl:call-template>
										</span>
									</span>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.4mm;border-right-width:1;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">6</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Net other AMT adjustment</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetOtherAMTAdjustment"/>
											</xsl:call-template>
										</span>
									</span>
								</div>
								<div style="width:75mm;">
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">7</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">General credits</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/GeneralCredits"/>
											</xsl:call-template>
										</span>
									</span>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.4mm;border-right-width:1;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">8</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Low-income housing credit</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/LowIncomeHousingCredit"/>
											</xsl:call-template>
										</span>
									</span>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:32.2mm;width:75mm;float:left;border-right-width:1;padding-left:1mm;border-bottom:none;">
									<span style="font-size: 6pt;font-weight:bold;">9</span>
									<span style="width:4px;"/>
									<span style="font-size: 6pt;">Other 
									<xsl:call-template name="SetFormLinkInline">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Other"/>
										</xsl:call-template>
									</span>
									<br/>
									<!--James  change &gt;=10 to 11-->
									<xsl:choose>
										<xsl:when test="($Print = $Separated) or (count($Form1065BSchK1Data/Other/Item) &gt; 8)">
											<div style="width:50mm;padding-top:2mm;padding-left:2mm;">See Additional Data Table</div>
										</xsl:when>
										<xsl:otherwise>
											<xsl:for-each select="$Form1065BSchK1Data/Other/Item">
												<br/>
												<span style="width:68mm;padding-left:1mm">
													<span style="width:33mm;">
														<xsl:call-template name="PopulateText">
															<xsl:with-param name="TargetNode" select="Code"/>
														</xsl:call-template>
													</span>
													<span style="width:33mm;text-align:right">
														<xsl:call-template name="PopulateAmount">
															<xsl:with-param name="TargetNode" select="Amount"/>
														</xsl:call-template>
													</span>
												</span>
											</xsl:for-each>
										</xsl:otherwise>
									</xsl:choose>
								</div>
							</div>
							<!-- copy end-->
							<!-- Stylesheet will always show only Copy B box as per customer request -->
							<div style="width:29mm;height:69mm;float:left;text-align:right;padding-bottom:0mm">
								<div class="styIRS1065BSchK1rightBoxWithBottom" style="height:69mm;width:29mm;float:left;padding-bottom:0mm;border-left-width:0;border-right-width:0;border-bottom:none;">
									<div style="font-size: 9pt;font-weight:bold;padding-top:1mm;">Copy B</div>
									<br/>
									<b>         For Partner</b>
									<br/>
									<br/>
								See the separate
								<div class="styBoldText" style="font-size:6pt;">Partner's
								<br>Instructions for</br>
								Schedule K-1
								<br>(Form 1065-B).</br>
									</div>
									<span style="font-size:6pt;">
								<br>This is important tax</br>
								information and is
								<br>being furnished to the</br>
								Internal Revenue
								<br>Service. If you are</br>
								required to file a return,
								<br>a negligence penalty or</br>
								other sanction may be
								<br>imposed on you if this</br>
								income is taxable and
								<br>the IRS determines that</br><br/>
								it has not been
								<br>reported.</br>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div style="width:187mm;">
						<span style="font-weight:bold;width:60mm;font-size:8pt;">Schedule K-1 (Form 1065-B)</span>
						<span style="width:32mm;font-size: 6pt;text-align:center;">(Keep for your records.)</span>
						<span style="width:30mm;font-size: 6pt;text-align:center;">IRS.gov/form1065b</span>
						<span style="width:65mm;font-size: 6pt;text-align:right;">Department of the Treasury - Internal Revenue Service</span>
					</div>
					<br/>
					<div class="pageEnd" style="width:187mm;"/>
				</form>
			</body>
			<!--	End of B	-->
			<!--Begin Part C-->
			<body class="styBodyClass">
				<form name="Form1065BSchK1">
					<!-- WARNING LINE -->
					<xsl:call-template name="DocumentHeader"/>
					<!-- Begin Void and Corrected Check Boxes -->
					<div class="styBB" style="width:187mm;border-bottom:none;">
						<span style="width:5mm;"/>
						<!--correctedID is generated because the ID for the following input conflicts with an ID from form A-->
						<xsl:variable name="correctedID">
							<xsl:call-template name="PopulateID">
								<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Corrected"/>
							</xsl:call-template>
						</xsl:variable>
						<input type="checkbox" class="styCkbox" style="height:4mm;width:4mm;">
							<xsl:call-template name="PopulateCheckbox">
								<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Corrected"/>
								<xsl:with-param name="BackupName">IRS1065BSchK1Corrected</xsl:with-param>
							</xsl:call-template>
							<xsl:attribute name="id">
								<xsl:value-of select="concat($correctedID, '[3]')"/>
							</xsl:attribute>
						</input>
						<span style="width:4px;"/>
						<span style="width:36mm;font-size: 10pt;">
							<label>
								<xsl:call-template name="PopulateLabel">
									<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Corrected"/>
									<xsl:with-param name="BackupName">IRS1065BSchK1Corrected</xsl:with-param>
								</xsl:call-template>
								<xsl:attribute name="for">
									<xsl:value-of select="concat($correctedID, '[3]')"/>
								</xsl:attribute>CORRECTED
                            </label>
						</span>
						<span style="width:19mm;"/>
						<!--publiclyTradedPartnershipID is generated because the ID for the following input conflicts with an ID from form A-->
						<xsl:variable name="publiclyTradedPartnershipID">
							<xsl:call-template name="PopulateID">
								<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PubliclyTradedPartnership"/>
							</xsl:call-template>
						</xsl:variable>
						<input type="checkbox" class="styCkbox" style="height:4mm;width:4mm;">
							<xsl:call-template name="PopulateCheckbox">
								<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PubliclyTradedPartnership"/>
								<xsl:with-param name="BackupName">IRS1065BSchK1PubliclyTradedPartnership</xsl:with-param>
							</xsl:call-template>
							<xsl:attribute name="id">
								<xsl:value-of select="concat($publiclyTradedPartnershipID, '[3]')"/>
							</xsl:attribute>
						</input>
						<span style="width:4px;"/>
						<span style="width:61mm;font-size: 10pt;">
							<label>
								<xsl:call-template name="PopulateLabel">
									<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PubliclyTradedPartnership"/>
									<xsl:with-param name="BackupName">IRS1065BSchK1PubliclyTradedPartnership</xsl:with-param>
								</xsl:call-template>
								<xsl:attribute name="for">
									<xsl:value-of select="concat($publiclyTradedPartnershipID, '[3]')"/>
								</xsl:attribute> PUBLICLY TRADED PARTNERSHIP
                            </label>
						</span>
						<!--<span style="font-size: 6pt;">(99)</span>-->
					</div>
					<!-- End Void and Corrected Check Boxes -->
					<!--copy start-->
					<div class="" style="width:187mm;border-style:solid;border-color:black;border-width: 0px 0px 1px 0px;">
						<div class="styBB" style="width:187mm;">
							<div class="styIRS1065BSchK1leftBox" style="height:25mm;width:83mm;padding-left:1mm;border-top:1px solid black;">
								<div style="font-size: 6pt;padding-bottom:.8mm;">PARTNERSHIP’S name, street address, city, state, and ZIP code.</div>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">BusinessNameLine1</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">BusinessNameLine2</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">AddressLine1</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">AddressLine2</xsl:with-param>
								</xsl:call-template>
								<br/>
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">CityStateInfo</xsl:with-param>
								</xsl:call-template>,
								<xsl:call-template name="PopulateReturnHeaderFiler">
									<xsl:with-param name="TargetNode">Country</xsl:with-param>
								</xsl:call-template>
							</div>
							<!-- Form Title and Info box -->
							<div class="styIRS1065BSchK1leftBox" style="height:25mm;width:37.5mm;border-top:1px solid black;">
								<span class="styIRS1065BSchK1leftBoxWithBottom" style="border-left:none;width:100%;">
									<span style="width:4px;"/>
									<span style="font-size: 6pt;font-weight:bold;">1</span>
									<span style="width:4px;"/>
									<span style="width:31mm;font-size: 6pt;">Taxable income (loss) from</span>
									<span style="padding-left:4mm;font-size: 6pt;">passive activities</span>
									<br/><br/>
									<span style="vertical-align:baseline;height:25%;"/>
									<span style="width:33mm;text-align:right;">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/TaxableIncomeLossPassiveActy"/>
										</xsl:call-template>
									</span>
								</span>
								<br/>
								<span style="height:4mm;width:100%;">
									<span style="width:4px;"/>
									<span style="font-size: 6pt;font-weight:bold;">2</span>
									<span style="width:4px;"/>
									<span style="width:31mm;font-size: 6pt;">Taxable income (loss) from</span>
									<span style="padding-left:4mm;font-size: 6pt;">other activities</span>
									<br/><br/>
									<span style="vertical-align:baseline;height:25%;"/>
									<span style="width:33mm;text-align:right;">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/TaxableIncomeLossOtherActy"/>
										</xsl:call-template>
									</span>
								</span>
							</div>
							<!-- Year and Form Box -->
							<div class="styLNDesc" style="width:29mm;padding-top:0mm;padding-bottom:0mm;">
								<div class="styIRS1065BSchK1rightBox" style="width:29mm;text-align:center;border-top:1px solid black;">
									<span style="font-size: 6pt">OMB No. 1545-1626</span>
									<br/>
									<div class="styTY" style="padding-top:3mm;font-size:26;">20<span class="styTYColor">12                       
                                 </span>
									</div>
									<br/>
									<div class="styFN" style="padding-top:1.5mm;font-size:7pt;">Schedule K-1 <br/>(Form 1065-B)
                             <xsl:call-template name="SetFormLinkInline">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data"/>
										</xsl:call-template>
									</div>
								</div>
							</div>
							<div class="styIRS1065BSchK1rightBox" style="height:25mm;width:37mm;text-align:right;border-right:none;border-top:none;border-left:none;">
								<br/>
								<div style="font-size:10pt;font-weight:bold;">
								Partner’s Share<br/>
								of Income (Loss)<br/>
								From an Electing<br/>
								Large Partnership
							</div>
							</div>
						</div>
						<div style="width:187mm;height:61mm;">
							<!-- Left boxes (Identification Number, Shareholder's ID, Shareholder's Name and Info) -->
							<div style="width:83mm;height:38mm;float:left;">
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:43mm;padding-left:1mm;">
									<div style="font-size: 6pt;padding-bottom:1.5mm;">PARTNERSHIP’S Employer I.D. number</div>
									<br/>
									<xsl:call-template name="PopulateReturnHeaderFiler">
										<xsl:with-param name="EINChanged">true</xsl:with-param>
										<xsl:with-param name="TargetNode">EIN</xsl:with-param>
									</xsl:call-template>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:39.8mm;padding-left:1mm;">
									<div style="font-size: 6pt;padding-bottom:1.5mm;">PARTNER’S identifying number</div>
									<br/>
									<xsl:if test="$Form1065BSchK1Data/PartnerSSN!=''">
										<xsl:call-template name="PopulateSSN">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerSSN"/>
										</xsl:call-template>
									</xsl:if>
									<xsl:if test="$Form1065BSchK1Data/PartnerEIN!=''">
										<xsl:call-template name="PopulateEIN">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerEIN"/>
										</xsl:call-template>
									</xsl:if>
									<xsl:if test="$Form1065BSchK1Data/MissingSSNEINReason!=''">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/MissingSSNEINReason"/>
										</xsl:call-template>
									</xsl:if>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.3mm;width:83mm;padding-left:1mm;">
									<span style="font-size: 6pt">PARTNER’S name</span>
									<br/>
									<div class="styLNDesc" style="width:81mm;">
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerName/BusinessNameLine1"/>
										</xsl:call-template>
										<br/>
										<xsl:call-template name="PopulateText">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerName/BusinessNameLine2"/>
										</xsl:call-template>
									</div>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.5mm;width:83mm;padding-left:1mm;">
									<span style="font-size: 6pt">Street address (including apt. no.)</span>
									<br/>
									<div class="styLNDesc" style="width:81mm;padding-top:1mm;">
										<xsl:if test="$Form1065BSchK1Data/PartnerUSAddress">
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerUSAddress/AddressLine1"/>
											</xsl:call-template>
											<br/>
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerUSAddress/AddressLine2"/>
											</xsl:call-template>
										</xsl:if>
										<xsl:if test="$Form1065BSchK1Data/PartnerForeignAddress">
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress/AddressLine1"/>
											</xsl:call-template>
											<br/>
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress/AddressLine2"/>
											</xsl:call-template>
										</xsl:if>
									</div>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:83mm;padding-left:1mm;">
									<span style="font-size: 6pt">City, state, and ZIP code</span>
									<br/>
									<div class="styLNDesc" style="width:81mm;">
										<xsl:call-template name="PopulateCityStateInfo">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerUSAddress"/>
											<xsl:with-param name="ForeignAddressTargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress"/>
										</xsl:call-template>
										<xsl:if test="$Form1065BSchK1Data/PartnerForeignAddress">
											<span style="width:8px;"/>
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/PartnerForeignAddress/Country"/>
											</xsl:call-template>
										</xsl:if>
									</div>
								</div>
								<!--Partner’s share of liabilities Box-->
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:21mm;width:83mm;padding-bottom:.5mm;padding-left:4px;border-bottom:none;">
									<span style="font-size: 6pt">Partner’s share of liabilities:</span>
									<br/>
									<br/>
									<span style="width:48mm">
										<b>a</b>
										<span style="width:4px;"/>Nonrecourse
										<span class="styDotLn" style="float:none;padding-left:.5mm;">.......</span>
									</span> 
									$
									<span style="border-bottom:solid black 1;text-align:right;width:29mm">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Nonrecourse"/>
										</xsl:call-template>
									</span>
									<span style="width:48.5mm">
										<b>b</b>
										<span style="width:4px;padding-bottom:2mm;"/>Qualified nonrecourse financing
								</span> 
									$
								<span style="border-bottom:solid black 1;width:29mm;text-align:right;">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/QualifiedNonrecourseFinancing"/>
										</xsl:call-template>
								</span>
									<span style="width:48mm;">
										<b>c</b>
										<span style="width:4px;padding-bottom:2mm;"/>Other
										<span class="styDotLn" style="float:none;padding-left:1mm;">.........</span>
									</span>
									$ 
								<span style="border-bottom:solid black 1;width:29mm;text-align:right">
										<xsl:call-template name="PopulateAmount">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/ShareOfLiabilitiesOther"/>
										</xsl:call-template>
									</span>
								</div>
							</div>
							<!-- Middle Boxes (1a, 1b, 1c,...) -->
							<!-- Tanuja - Removed two elements PostMay5Gain, Qualified5YearGain as part of CR-80 Schema updates and also renumbered the fields accordingly-->
							<div style="width:75mm;height:40mm;float:left;">
								<div style="width:75mm;">
									<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">3</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Qualified dividends</span>
										<span style="padding-top:4mm;width:32mm;float:bottom;text-align:right">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/QualifiedDividends"/>
											</xsl:call-template>
										</span>
									</div>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:11mm;background-color:gray;width:37.4mm;border-right-width:1"/>
								</div>
								<div style="width:75mm;">
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.3mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">4a</span>
										<span style="width:4px;"/>
										<span style="width:31mm;font-size: 6pt;">Net capital gain (loss) from</span>
										<span style="padding-left:4mm;font-size: 6pt;">passive activities</span>
										<span style="width:32mm;text-align:right;padding-top:7.5mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetCapitalGainLossPassiveActy"/>
											</xsl:call-template>
										</span>
									</span>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:17.3mm;width:37.4mm;border-right-width:1;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">4b</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Net capital gain (loss)</span>
										<span style="font-size: 6pt;padding-left:4mm;">from other activities</span>
										<span style="width:32mm;text-align:right;padding-top:7.5mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetCapitalGainLossOtherActy"/>
											</xsl:call-template>
										</span>
									</span>
								</div>
								<div style="width:75mm;">
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">5</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Net passive AMT adjustment</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetPassiveAMTAdjustment"/>
											</xsl:call-template>
										</span>
									</span>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.4mm;border-right-width:1;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">6</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Net other AMT adjustment</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/NetOtherAMTAdjustment"/>
											</xsl:call-template>
										</span>
									</span>
								</div>
								<div style="width:75mm;">
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.5mm;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">7</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">General credits</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/GeneralCredits"/>
											</xsl:call-template>
										</span>
									</span>
									<span class="styIRS1065BSchK1leftBoxWithBottom" style="height:8.8mm;width:37.4mm;border-right-width:1;padding-left:1mm;">
										<span style="font-size: 6pt;font-weight:bold;">8</span>
										<span style="width:4px;"/>
										<span style="font-size: 6pt;">Low-income housing credit</span>
										<span style="width:32mm;text-align:right;padding-top:2mm;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/LowIncomeHousingCredit"/>
											</xsl:call-template>
										</span>
									</span>
								</div>
								<div class="styIRS1065BSchK1leftBoxWithBottom" style="height:32.2mm;width:75mm;float:left;border-right-width:1;padding-left:1mm;border-bottom:none;">
									<span style="font-size: 6pt;font-weight:bold;">9</span>
									<span style="width:4px;"/>
									<span style="font-size: 6pt;">Other 
									<xsl:call-template name="SetFormLinkInline">
											<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data/Other"/>
										</xsl:call-template>
									</span>
									<br/>
									<!--James  change &gt;=10 to 11-->
									<xsl:choose>
										<xsl:when test="($Print = $Separated) or (count($Form1065BSchK1Data/Other/Item) &gt; 8)">
											<div style="width:50mm;padding-top:2mm;padding-left:2mm;">See Additional Data Table</div>
										</xsl:when>
										<xsl:otherwise>
											<xsl:for-each select="$Form1065BSchK1Data/Other/Item">
												<br/>
												<span style="width:68mm;padding-left:1mm">
													<span style="width:33mm;">
														<xsl:call-template name="PopulateText">
															<xsl:with-param name="TargetNode" select="Code"/>
														</xsl:call-template>
													</span>
													<span style="width:33mm;text-align:right">
														<xsl:call-template name="PopulateAmount">
															<xsl:with-param name="TargetNode" select="Amount"/>
														</xsl:call-template>
													</span>
												</span>
											</xsl:for-each>
										</xsl:otherwise>
									</xsl:choose>
								</div>
							</div>
							<!-- copy end-->
							<!-- Stylesheet will always show only Copy B box as per customer request -->
							<div style="width:29mm;height:69mm;float:left;text-align:right;padding-bottom:0mm">
								<span class="styIRS1065BSchK1rightBoxWithBottom" style="height:69mm;width:29mm;float:left;padding-bottom:0mm;border-left-width:0;border-right-width:0;border-bottom:none;">
									<div style="font-size: 9pt;font-weight:bold;height:6mm;padding-top:1mm;padding-bottom:3mm">Copy C</div>
									<b>For Electing<br/>Large Partnership</b>
									<div style="font-size:7pt;padding-top:12mm;">
										For Paperwork<br/>
										Reduction Act<br/>
										Notice and<br/>
										instructions for<br/>
										completing this<br/>
										form, see the<br/>
										<b>2012 Instructions<br/>for Form 1065-B,</b><br/>
										U.S. Return of<br/>
										Income for Electing<br/>
										Large Partnerships.
									</div>
								</span>
							</div>
						</div>
					</div>
					<div style="width:187mm;">
						<span style="font-weight:bold;width:62mm;font-size:8pt;">Schedule K-1 (Form 1065-B)</span>
						<span style="width:60mm;font-size: 6pt;text-align:center;">IRS.gov/form1065b</span>
						<span style="width:65mm;font-size: 6pt;text-align:right;">Department of the Treasury - Internal Revenue Service</span>
					</div>
					<!--End of Part C-->
					<!-- BEGIN Left Over Table -->
					<!-- Additonal Data Title Bar and Button -->
					<div class="pageEnd" style="width:187mm;"/>
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
							<xsl:with-param name="TargetNode" select="$Form1065BSchK1Data"/>
							<xsl:with-param name="DescWidth" select="100"/>
						</xsl:call-template>
					</table>
					<!-- END Left Over Table -->
					<!-- Begin Separated Repeating data table for Copy A -->
					<xsl:if test="($Print = $Separated) or (count($Form1065BSchK1Data/Other/Item) &gt; 8)">
						<div class="pageEnd"/>
						<span class="styRepeatingDataTitle">Form 1065B Schedule K1 Copy A Line 9 - Other</span>
						<table class="styDepTbl" cellspacing="0" style="font-size:7pt;">
							<thead class="styTableThead">
								<tr class="styDepTblHdr">
									<th class="styDepTblCell" scope="col" rowspan="2" style="width:91.5mm;">Code
                        </th>
									<th class="styDepTblCell" scope="col" rowspan="2" style="width:91.5mm;">Amount
                        </th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="$Form1065BSchK1Data/Other/Item">
									<tr style="border-color:black;height:6mm;">
										<xsl:attribute name="class"><xsl:choose><xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when><xsl:otherwise>styDepTblRow2</xsl:otherwise></xsl:choose></xsl:attribute>
										<td class="styTableCellText" style="width:91.5mm;">
											<div style="width:6.5mm;" class="styGenericDiv">
												<div style="width:6mm;font-weight:bold;float:right;clear:none;">
													<span class="styBoldText" style="float:right;text-align:right;padding-right:2mm;">
														<xsl:value-of select="position()"/>
													</span>
												</div>
											</div>
											<div style="width:80mm;float:none;clear:none;">
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="Code"/>
													<xsl:with-param name="BackupName">Form1065BSchK1DataOtherItemCode</xsl:with-param>
												</xsl:call-template>
											</div>
										</td>
										<td class="styTableCellText" style="width:91.5mm;float:right;clear:none;text-align:right;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="Amount"/>
												<xsl:with-param name="BackupName">Form1065BSchK1DataOtherItemAmount</xsl:with-param>
											</xsl:call-template>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
					</xsl:if>
					<br/>
					<!-- End Separated Repeating data table for Copy A -->
					<!-- Begin Separated Repeating data table for Copy B -->
					<xsl:if test="($Print = $Separated) or (count($Form1065BSchK1Data/Other/Item) &gt; 8)">
						<div class="pageEnd"/>
						<span class="styRepeatingDataTitle">Form 1065B Schedule K1 Copy B Line 9 - Other</span>
						<table class="styDepTbl" cellspacing="0" style="font-size:7pt;">
							<thead class="styTableThead">
								<tr class="styDepTblHdr">
									<th class="styDepTblCell" scope="col" rowspan="2" style="width:91.5mm;">Code
                        </th>
									<th class="styDepTblCell" scope="col" rowspan="2" style="width:91.5mm;">Amount
                        </th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="$Form1065BSchK1Data/Other/Item">
									<tr style="border-color:black;height:6mm;">
										<xsl:attribute name="class"><xsl:choose><xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when><xsl:otherwise>styDepTblRow2</xsl:otherwise></xsl:choose></xsl:attribute>
										<td class="styTableCellText" style="width:91.5mm;">
											<div style="width:6.5mm;" class="styGenericDiv">
												<div style="width:6mm;font-weight:bold;float:right;clear:none;">
													<span class="styBoldText" style="float:right;text-align:right;padding-right:2mm;">
														<xsl:value-of select="position()"/>
													</span>
												</div>
											</div>
											<div style="width:80mm;float:none;clear:none;">
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="Code"/>
													<xsl:with-param name="BackupName">Form1065BSchK1DataOtherItemCode</xsl:with-param>
												</xsl:call-template>
											</div>
										</td>
										<td class="styTableCellText" style="width:91.5mm;float:right;clear:none;text-align:right;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="Amount"/>
												<xsl:with-param name="BackupName">Form1065BSchK1DataOtherItemAmount</xsl:with-param>
											</xsl:call-template>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
					</xsl:if>
					<br/>
					<!-- End Separated Repeating data table for Copy B -->
					<!-- Begin Separated Repeating data table for Copy C -->
					<xsl:if test="($Print = $Separated) or (count($Form1065BSchK1Data/Other/Item) &gt; 8)">
						<div class="pageEnd"/>
						<span class="styRepeatingDataTitle">Form 1065B Schedule K1 Copy C Line 9 - Other</span>
						<table class="styDepTbl" cellspacing="0" style="font-size:7pt;">
							<thead class="styTableThead">
								<tr class="styDepTblHdr">
									<th class="styDepTblCell" scope="col" rowspan="2" style="width:91.5mm;">Code
                        </th>
									<th class="styDepTblCell" scope="col" rowspan="2" style="width:91.5mm;">Amount
                        </th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="$Form1065BSchK1Data/Other/Item">
									<tr style="border-color:black;height:6mm;">
										<xsl:attribute name="class"><xsl:choose><xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when><xsl:otherwise>styDepTblRow2</xsl:otherwise></xsl:choose></xsl:attribute>
										<td class="styTableCellText" style="width:91.5mm;">
											<div style="width:6.5mm;" class="styGenericDiv">
												<div style="width:6mm;font-weight:bold;float:right;clear:none;">
													<span class="styBoldText" style="float:right;text-align:right;padding-right:2mm;">
														<xsl:value-of select="position()"/>
													</span>
												</div>
											</div>
											<div style="width:80mm;float:none;clear:none;">
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="Code"/>
													<xsl:with-param name="BackupName">Form1065BSchK1DataOtherItemCode</xsl:with-param>
												</xsl:call-template>
											</div>
										</td>
										<td class="styTableCellText" style="width:91.5mm;float:right;clear:none;text-align:right;">
											<xsl:call-template name="PopulateAmount">
												<xsl:with-param name="TargetNode" select="Amount"/>
												<xsl:with-param name="BackupName">Form1065BSchK1DataOtherItemAmount</xsl:with-param>
											</xsl:call-template>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
					</xsl:if>
					<br/>
					<!-- End Separated Repeating data table for Copy C -->
				</form>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>