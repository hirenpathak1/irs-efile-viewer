<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="PopulateTemplate.xsl"/>
	<xsl:include href="CommonPathRef.xsl"/>
	<xsl:include href="AddHeader.xsl"/>
	<xsl:include href="AddOnTable.xsl"/>
	<xsl:include href="IRS1041ScheduleK1Style.xsl"/>
	<xsl:output method="html" indent="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:param name="FormData" select="$RtnDoc/IRS1041ScheduleK1"/>
	<xsl:template match="/">
	
	<!--<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>-->
	
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
				<meta name="Description" content="IRS Form 1041ScheduleK1"/>
				<!-- javascript include -->
				<script language="JavaScript" src="{$ScriptPath}/FormDisplay.js" type="text/javascript"/>
				<xsl:call-template name="InitJS"/>
				<style type="text/css">
				
				<!--* {box-sizing:border-box;}
                input[type=checkbox] {box-sizing:content-box;}
                span {display:inline-block;} -->
                
					<xsl:if test="not($Print) or $Print=''">
						<xsl:call-template name="IRS1041ScheduleK1Style"/>
						<xsl:call-template name="AddOnStyle"/>
					</xsl:if>
				</style>
				<xsl:call-template name="GlobalStylesForm"/>
			</head>
			<body class="styBodyClass">
				<!-- Standard Header -->
				<xsl:call-template name="DocumentHeader"/>
				<table width="187mm" border="0" cellpadding="0" cellspacing="0" style="font-family:Verdana;font-size:7pt;">
					<tr>
						<td width="187mm" colspan="2" style="width: 186mm;">
							<span style="font-family: Courier New, monospace; font-size:13pt;text-align:right;width: 187mm; font-weight:bold;">661114</span>
						</td>
					</tr>
					<tr>
						<td width="187mm" colspan="2" style="width: 187mm;">
							<span style="width: 93.5mm;float:right;">
								<span style="float:left;">
									<input type="checkbox" class="styCkbox" name="checkbox" id="dummyID1" onclick="return false;">
										<xsl:call-template name="PopulateCheckbox">
											<xsl:with-param name="TargetNode" select="$FormData/FinalK1Ind"/>
										</xsl:call-template>
									</input>
									<label>
										<xsl:call-template name="PopulateLabel">
											<xsl:with-param name="TargetNode" select="$FormData/FinalK1Ind"/>
											<xsl:with-param name="BackupName">IRS1041ScheduleK1FinalK1Ind</xsl:with-param>
										</xsl:call-template>
										<span style="vertical-align: bottom;">Final K-1</span>
									</label>
								</span>
								<span style="float: right; margin-bottom: 0.5mm;">
									<input type="checkbox" class="styCkbox" name="checkbox" id="dummyID2" onclick="return false;">
										<xsl:call-template name="PopulateCheckbox">
											<xsl:with-param name="TargetNode" select="$FormData/AmendedK1Ind"/>
											<xsl:with-param name="BackupName">IRS1041ScheduleK1AmendedK1Ind</xsl:with-param>
										</xsl:call-template>
									</input>
									<label>
										<xsl:call-template name="PopulateLabel">
											<xsl:with-param name="TargetNode" select="$FormData/AmendedK1Ind"/>
											<xsl:with-param name="BackupName">IRS1041ScheduleK1AmendedK1Ind</xsl:with-param>
										</xsl:call-template>
										<span style="vertical-align: bottom;">Amended K-1</span>
									</label>
									<span style="width: 14mm;"/>
                   OMB No. 1545-0092</span>
							</span>
						</td>
					</tr>
					<tr>
						<td style="width: 93mm;" valign="top">
							<table border="0" cellspacing="0" cellpadding="0" style="border-right: 1px solid black;">
								<!-- Inner table - Header, Part I, Part II -->
								<tr>
									<td style="width: 93mm;">
										<div style="width: 93mm;height:8.8mm;">
											<!-- Width necessary to prevent table from shrinking -->
											<span class="styFormNumber" style="font-size: 10pt;padding-top:0mm;float:left;clear: none;">Schedule K-1<br/>(Form 1041)
												<xsl:call-template name="SetFormLinkInline">
													<xsl:with-param name="TargetNode" select="$FormData"/>
												</xsl:call-template>
											</span>
											<span class="styTY" style="float: right; clear: none; padding-right: 10mm;padding-top:0mm;font-size:22pt;">20<span class="styTYColor">14</span>
											</span>
										</div>
									</td>
								</tr>
								<tr>
									<td style="font-size: 7pt;height:12.4mm;">
										<span style="float: left; clear: none;">Department of the Treasury<br/>
										Internal Revenue Service</span>
										<span style="float: right; clear: none; padding-right: 1mm; padding-top:2mm;">
											For calendar year 2014,<br/>or tax year beginning
											<span style="width: 20mm; border-bottom: 1px solid black; text-align: center;">
												<xsl:call-template name="PopulateMonthDayYear">
													<xsl:with-param name="TargetNode" select="$RtnHdrData/TaxPeriodBeginDt"/>
												</xsl:call-template>
											</span>,
											<br/>
											and ending
											 <span style="width: 20mm; border-bottom: 1px solid black; text-align: center;">
												<xsl:call-template name="PopulateMonthDayYear">
													<xsl:with-param name="TargetNode" select="$RtnHdrData/TaxPeriodEndDt"/>
												</xsl:call-template>
											</span>
										</span>
									</td>
								</tr>
								<tr>
									<td style="padding-top:2mm;height:16.2mm;">
										<span class="styMainTitle" style="font-size: 12pt;">Beneficiary's Share of Income, Deductions,
										</span>
										<br/>
										<span class="styMainTitle" style="float: left; clear: none; font-size: 12pt;">Credits, etc.</span>
										<span style="float: right; clear: none; font-weight: bold; font-size: 7pt; padding-right: 1mm;
									  padding-top: 0.5mm;">
											<img src="{$ImagePath}/1041SchK1_Bullet.gif" width="4" height="7" alt="Right arrow image" border="0"/> See back of form and instructions.
										 </span>
									</td>
								</tr>
								<tr>
									<td style="border-left: 2px solid black; border-top: 2px solid black; height: auto; background-color: lightgrey;">
										<!-- Part I header -->
										<span class="IRS1041ScheduleK1_partName" style="margin: 2mm;">Part I</span>
										<span class="IRS1041ScheduleK1_partDesc">Information About the Estate or Trust</span>
									</td>
								</tr>
								<tr>
									<td class="IRS1041ScheduleK1_tdLeft" style="height: 12mm;padding-bottom:0mm;padding-top:0mm;">
										<!-- Line A -->
										<span style="font-weight: bold;">A</span>
										<span style="width: 3mm;"/>
										<span style="width: 80mm;">Estate's or trust's employer identification number</span>
										<br/>
										<span style="width: 5mm;"/>
										<xsl:call-template name="PopulateEIN">
											<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EIN"/>
										</xsl:call-template>
									</td>
								</tr>
								<tr>
									<td class="IRS1041ScheduleK1_tdLeft" style="height: 21mm;padding-top:0mm;">
										<!-- Line B -->
										<span style="font-weight: bold;">B</span>
										<span style="width: 3mm;"/>
										<span style="width: 80mm;">Estate's or trust's name</span>
										<br/>
										<span style="width: 5mm;"/>
										<span style="width: 84mm;">
											<xsl:if test="$RtnHdrData/Filer/EstateOrTrustName">
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EstateOrTrustName/BusinessNameLine1Txt"/>
												</xsl:call-template>
												<br/>
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/EstateOrTrustName/BusinessNameLine2Txt"/>
												</xsl:call-template>
												<br/>
											</xsl:if>
											<xsl:if test="$RtnHdrData/Filer/NationalMortgageAssocCd">
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/NationalMortgageAssocCd"/>
												</xsl:call-template>
											</xsl:if>
										</span>
									</td>
								</tr>
								<tr>
									<td class="IRS1041ScheduleK1_tdLeft" style="height: 33mm;padding-top:0mm;">
										<!-- Line C -->
										<span style="font-weight: bold;">C</span>
										<span style="width: 3mm;"/>
										<span style="width: 80mm;">Fiduciary's name, address, city, state, and ZIP code</span>
										<br/>
										<span style="padding-left: 5mm;height:100%;">
											<xsl:if test="$RtnHdrData/Filer/FiduciaryPersonName">
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/FiduciaryPersonName/PersonFirstNm"/>
												</xsl:call-template>&#160;
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/FiduciaryPersonName/PersonLastNm"/>
												</xsl:call-template>
												<br/>
											</xsl:if>
											<xsl:if test="$RtnHdrData/Filer/FiduciaryBusinessName">
												<xsl:call-template name="PopulateText">
													<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/FiduciaryBusinessName"/>
												</xsl:call-template>
												<br/>
											</xsl:if>
											<xsl:if test="$RtnHdrData/Filer/USAddress">
												<xsl:call-template name="PopulateUSAddressTemplate">
													<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/USAddress"/>
												</xsl:call-template>
												<br/>
											</xsl:if>
											<xsl:if test="$RtnHdrData/Filer/ForeignAddress">
												<xsl:call-template name="PopulateForeignAddressTemplate">
													<xsl:with-param name="TargetNode" select="$RtnHdrData/Filer/ForeignAddress"/>
												</xsl:call-template>
												<br/>
											</xsl:if>
										</span>
									</td>
								</tr>
								<tr>
									<td class="IRS1041ScheduleK1_tdLeft" style="height:25mm; padding-top:4mm;">
										<!-- Line D -->
										<span style="font-weight: bold; width: 2mm;">D</span>
										<span style="width: 1mm;"/>
										<span style="width: 85.6mm;">
											<input type="checkbox" class="styckbox" name="checkbox" id="dummyid">
												<xsl:call-template name="PopulateCheckbox">
													<xsl:with-param name="TargetNode" select="$FormData/Form1041TFiledInd"/>
													<xsl:with-param name="BackupName">Form1041TFiledInd</xsl:with-param>
												</xsl:call-template>
											</input>
											<label>
												<xsl:call-template name="PopulateLabel">
													<xsl:with-param name="TargetNode" select="$FormData/Form1041TFiledInd"/>
													<xsl:with-param name="BackupName">Form1041TFiledInd</xsl:with-param>
												</xsl:call-template>
												<span style="padding-left:1.4mm;">Check if Form 1041-T was filed and enter the date it was filed</span>
											</label>
										</span>
										<br/>
										<div style="width:7mm;float:left;"/>
										<div style="border:black solid 0px; border-bottom-width:1px;height:5mm;width:18mm;padding-top:1mm;text-align:center;">
											<xsl:call-template name="PopulateMonthDayYear">
												<xsl:with-param name="TargetNode" select="$FormData/Form1041TFiledDt"/>
											</xsl:call-template>
										</div>
										<br/>
										<span style="font-weight: bold; width: 2mm;">E</span>
										<span style="width: 1mm;"/>
										<span style="width: 85mm;">
											<input type="checkbox" class="styckbox" name="checkbox" id="dummyid">
												<xsl:call-template name="PopulateCheckbox">
													<xsl:with-param name="TargetNode" select="$FormData/FutureFilingNotRequiredInd"/>
													<xsl:with-param name="BackupName">FutureFilingNotRequiredInd</xsl:with-param>
												</xsl:call-template>
											</input>
											<label>
												<xsl:call-template name="PopulateLabel">
													<xsl:with-param name="TargetNode" select="$FormData/FutureFilingNotRequiredInd"/>
													<xsl:with-param name="BackupName">FutureFilingNotRequiredInd</xsl:with-param>
												</xsl:call-template>
												<span style="width:1.4mm"/>Check if this is the final Form 1041 for the estate or trust
											</label>
										</span>
									</td>
								</tr>
								<tr>
									<td style="border-left: 2px solid black; border-top: 1px solid black; height: auto; background-color: lightgrey;">
										<!-- Part II header -->
										<span class="IRS1041ScheduleK1_partName" style="margin: 2mm;">Part II</span>
										<span class="IRS1041ScheduleK1_partDesc">Information About the Beneficiary</span>
									</td>
								</tr>
								<tr>
									<td class="IRS1041ScheduleK1_tdLeft" style="height: 8mm;padding-bottom:0mm;padding-top:0mm;">
										<!-- PART II Line F -->
										<span style="font-weight: bold;">F</span>
										<span style="width: 3mm;"/>Beneficiary's identifying number<br/>
										<span style="width: 5mm;"/>
										<xsl:if test="$FormData/BeneficiaryDetail/EIN">
											<xsl:call-template name="PopulateEIN">
												<xsl:with-param name="TargetNode" select="$FormData/BeneficiaryDetail/EIN"/>
											</xsl:call-template>
										</xsl:if>
										<xsl:if test="$FormData/BeneficiaryDetail/SSN">
											<xsl:call-template name="PopulateSSN">
												<xsl:with-param name="TargetNode" select="$FormData/BeneficiaryDetail/SSN"/>
											</xsl:call-template>
										</xsl:if>
										<xsl:if test="$FormData/BeneficiaryDetail/MissingSSNEINReasonCd">
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$FormData/BeneficiaryDetail/MissingSSNEINReasonCd"/>
											</xsl:call-template>
										</xsl:if>
										<xsl:if test="$FormData/BeneficiaryDetail/Form1042SCd">
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$FormData/BeneficiaryDetail/Form1042SCd"/>
											</xsl:call-template>
										</xsl:if>
										<br/>
									</td>
								</tr>
								<tr>
									<td class="IRS1041ScheduleK1_tdLeft" style="height: 86mm;padding-top:0mm;">
										<!-- PART II Line G -->
										<span style="font-weight: bold;">G</span>
										<span style="width: 3mm;"/>Beneficiary’s name, address, city, state, and ZIP code<br/>
										<span style="width: 5mm;"/>
										<span style="width: 84mm;">
											<xsl:choose>
												<xsl:when test="$FormData/BeneficiaryDetail/BeneficiaryBusinessName">
													<xsl:call-template name="PopulateText">
														<xsl:with-param name="TargetNode" select="$FormData/BeneficiaryDetail/BeneficiaryBusinessName/BusinessNameLine1Txt"/>
													</xsl:call-template><br/>
													<xsl:call-template name="PopulateText">
														<xsl:with-param name="TargetNode" select="$FormData/BeneficiaryDetail/BeneficiaryBusinessName/BusinessNameLine2Txt"/>
													</xsl:call-template><br/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:call-template name="PopulateText">
														<xsl:with-param name="TargetNode" select="$FormData/BeneficiaryDetail/BeneficiaryPersonNm"/>
													</xsl:call-template><br/>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:call-template name="PopulateText">
												<xsl:with-param name="TargetNode" select="$FormData/BeneficiaryDetail/InCareOfNm"/>
											</xsl:call-template><br/>		
											<xsl:if test="$FormData/BeneficiaryDetail/USAddress and $FormData/BeneficiaryDetail/USAddress !=''">
												<xsl:call-template name="PopulateUSAddressTemplate">
													<xsl:with-param name="TargetNode" select="$FormData/BeneficiaryDetail/USAddress"/>
												</xsl:call-template>
											</xsl:if>
											<xsl:if test="$FormData/BeneficiaryDetail/ForeignAddress and $FormData/BeneficiaryDetail/ForeignAddress !=''">
												<xsl:call-template name="PopulateForeignAddressTemplate">
													<xsl:with-param name="TargetNode" select="$FormData/BeneficiaryDetail/ForeignAddress"/>
												</xsl:call-template>
											</xsl:if>
										</span>
									</td>
								</tr>
								<tr>
									<td class="IRS1041ScheduleK1_tdLeft" style="height:8mm;border:black solid 1px; border-left-width:2px;border-right-width:0px;">
										<!-- PART II Line H -->
										<div style="float:left;padding-top:1mm;">
											<span style="font-weight: bold; width: 2mm;">H</span>
											<span style="width: 3mm;"/>
											<span style="width: 40mm;">
												<input type="checkbox" class="styckbox" name="checkbox" id="dummyid">
													<xsl:call-template name="PopulateCheckbox">
														<xsl:with-param name="TargetNode" select="$FormData/DomesticBeneficiaryInd"/>
														<xsl:with-param name="BackupName">DomesticBeneficiaryInd</xsl:with-param>
													</xsl:call-template>
												</input>
												<label>
													<xsl:call-template name="PopulateLabel">
														<xsl:with-param name="TargetNode" select="$FormData/DomesticBeneficiaryInd"/>
														<xsl:with-param name="BackupName">DomesticBeneficiaryInd</xsl:with-param>
													</xsl:call-template>
													Domestic beneficiary
												</label>
											</span>
										</div>
										<div style="float:right;padding-top:1mm;">
											<span style="width: 40mm;">
												<input type="checkbox" class="styckbox" name="checkbox" id="dummyid">
													<xsl:call-template name="PopulateCheckbox">
														<xsl:with-param name="TargetNode" select="$FormData/ForeignBeneficiaryInd"/>
														<xsl:with-param name="BackupName">ForeignBeneficiaryInd</xsl:with-param>
													</xsl:call-template>
												</input>
												<label>
													<xsl:call-template name="PopulateLabel">
														<xsl:with-param name="TargetNode" select="$FormData/ForeignBeneficiaryInd"/>
														<xsl:with-param name="BackupName">ForeignBeneficiaryInd</xsl:with-param>
													</xsl:call-template>
													Foreign beneficiary
												</label>
											</span>
										</div>
									</td>
								</tr>
							</table>
						</td>
						<td width="93mm" style="width: 93mm;" valign="top">
							<table width="93mm" border="0" cellpadding="0" cellspacing="0" style="border-top: 2px solid black; border-bottom: 0px; border-left: 1px solid black;
						  border-right: 2px solid black;">
								<!-- Inner table - Part III -->
								<tr>
									<td colspan="2">
										<!-- Part III header -->
										<table cellpadding="0" cellspacing="0">
											<tr style="padding-left:1mm;">
												<td class="IRS1041ScheduleK1_tdPartName" style="width: 15mm;">
													<span class="IRS1041ScheduleK1_partName" style="vertical-align: top;">
												  Part III</span>
												</td>
												<td class="IRS1041ScheduleK1_tdPartDesc">
													<b>Beneficiary’s Share of Current Year Income, Deductions, Credits, and Other Items</b>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td valign="top" style="border-right:1px solid black;">
										<table width="46.5mm" border="0" cellpadding="0" cellspacing="0" style="">
											<!-- Part III columns 1-10 -->
											<!-- Line 1 -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm;height:8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">1</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Interest income
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/InterestIncomeAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/InterestIncomeAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 2a -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height:8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">2a</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Ordinary dividends
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/OrdinaryDividendsAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/OrdinaryDividendsAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 2b -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height:8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">2b</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Qualified dividends
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/QualifiedDividendsAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/QualifiedDividendsAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 3 -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height: 8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">3</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Net short-term capital gain
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/NetSTCapitalGainAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/NetSTCapitalGainAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 4a -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height:8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">4a</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Net long-term capital gain
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/NetLTCapitalGainAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/NetLTCapitalGainAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 4b -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height:8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">4b</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													28% rate gain
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/Collectibles28PercentGainAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/Collectibles28PercentGainAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 4c -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height:8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">4c</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Unrecaptured section 1250 gain
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/UnrecapturedSection1250GainAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/UnrecapturedSection1250GainAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 5 -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height:12mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">5</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Other portfolio and<br/>nonbusiness income
																	<div style="padding-top:3mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/OtherPortfolioIncomeLossAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/OtherPortfolioIncomeLossAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 6 -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height:8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">6</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Ordinary business income
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/OrdinaryBusinessIncomeAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/OrdinaryBusinessIncomeAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 7 -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height:8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">7</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Net rental real estate income
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/NetRentalIncomeRealEstateAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/NetRentalIncomeRealEstateAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 8 -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height:8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">8</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Other rental income
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/OtherRentalIncomeAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/OtherRentalIncomeAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Line 9 -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<div class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;height:4mm;border-right:gray dotted 1px;width:25px;">9</div>
													<div style="float:left;font-size:6pt;vertical-align:top;height:4mm;padding-left:1mm;">
														<span style="float:left;">Directly apportioned deductions</span>
														<span style="float:right">
															<xsl:call-template name="SetDynamicTableToggleButton">
																<xsl:with-param name="TargetNode" select="$FormData/BenefDirectlyApprtnDedGrp"/>
																<xsl:with-param name="headerHeight" select="0"/>
																<xsl:with-param name="containerHeight" select="3"/>
																<xsl:with-param name="containerID" select=" 'SchK9Ctn' "/>
															</xsl:call-template>
														</span>
													</div>
													<div style="float:none;clear:both;overflow-y:auto;" id="SchK9Ctn">
														<table cellpadding="0" cellspacing="0" style="auto">
															<tbody>
																<!-- Display 3 blank lines if there are no data elements -->
																<xsl:if test="count($FormData/BenefDirectlyApprtnDedGrp/DirectlyApprtnDeductionsAmt) = 0 ">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;
													  float:left;border-top:0px solid; border-right:gray dotted 1px;font-size:6pt;width:25px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
													  float:left;border-top:0px solid; width:41.40mm;font-size:6pt;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:gray dotted 1px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1x dotted gray; width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:gray dotted 1px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<xsl:if test="($Print != $Separated) or 
													  (count($FormData/BenefDirectlyApprtnDedGrp) &lt;=3)">
																	<xsl:for-each select="$FormData/BenefDirectlyApprtnDedGrp">
																		<xsl:choose>
																			<xsl:when test="position() = 1">
																				<tr>
																					<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;float:left;border-top:0px solid; border-right:gray dotted 1px; font-size:6pt;" valign="bottom">
																						<div style="width:24px;">
																							<xsl:call-template name="PopulateText">
																								<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsCd"/>
																							</xsl:call-template>
																						</div>
																					</td>
																					<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
															  border-top:0px solid; width:41.40mm;font-size:6pt;padding-left:1mm;" valign="bottom">
																						<div style="text-align:right;padding-right:1mm;height:4mm;">
																							<xsl:call-template name="PopulateAmount">
																								<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsAmt"/>
																							</xsl:call-template>
																							<xsl:call-template name="SetFormLinkInline">
																								<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsAmt"/>
																							</xsl:call-template>
																						</div>
																					</td>
																				</tr>
																			</xsl:when>
																			<xsl:otherwise>
																				<tr>
																					<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
															  float:left;border-top:1px dotted gray; border-right:gray dotted 1px; font-size:6pt;" valign="bottom">
																						<xsl:call-template name="PopulateText">
																							<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsCd"/>
																						</xsl:call-template>
																					</td>
																					<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													 border-top:gray dotted 1px; width:41.40mm;font-size:6pt;padding-left:1mm;" valign="bottom">
																						<div style="text-align:right;padding-right:1mm;height:8mm;padding-top:4mm;">
																							<xsl:call-template name="PopulateAmount">
																								<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsAmt"/>
																							</xsl:call-template>
																							<xsl:call-template name="SetFormLinkInline">
																								<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsAmt"/>
																							</xsl:call-template>
																						</div>
																					</td>
																				</tr>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:for-each>
																</xsl:if>
																<!-- Display 2 blank lines if there is 1 data element -->
																<xsl:if test="count($FormData/BenefDirectlyApprtnDedGrp) = 1 ">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px gray dotted; border-right:gray dotted 1px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px gray dotted; width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:gray dotted 1px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1x dotted gray; width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- Display 1 blank line if there are 2 data elements -->
																<xsl:if test="count($FormData/BenefDirectlyApprtnDedGrp) = 2 ">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm; float:left;border-top:1px gray dotted; border-right:gray dotted 1px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px gray dotted; width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- See Additional Table message for > 3 rows -->
																<xsl:if test="(($Print = $Separated)  and  
												  (count($FormData/BenefDirectlyApprtnDedGrp) &gt;3))">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;
													  float:left;border-top:0px solid black;border-right:1px dotted gray;font-size:6pt;">
																			<div style="width:24px;">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</div>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
													  float:left;border-top:0px solid black;width:41.40mm;font-size:6pt;padding-left:1mm;">
																			<div style="height:4mm;padding-top:1mm;">
																				<xsl:call-template name="PopulateAdditionalDataTableMessage">
																					<xsl:with-param name="TargetNode" select="$FormData/BenefDirectlyApprtnDedGrp/DirectlyApprtnDeductionsCd"/>
																				</xsl:call-template>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm; float:left;border-top:1px dotted gray;border-right:1px dotted gray;" valign="bottom">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;" valign="bottom">
																			<div style="height:8mm;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm; float:left;border-top:1px dotted gray; border-right:1px dotted gray;" valign="bottom">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;" valign="bottom">
																			<div style="height:7.8mm;"/>
																		</td>
																	</tr>
																</xsl:if>
															</tbody>
														</table>
													</div>
												</td>
											</tr>
											<!-- Line 10 -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid black;">
													<table cellpadding="0" cellspacing="0" style="width:46.5mm; height:8mm;">
														<tbody>
															<tr>
																<td class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													float:left;vertical-align:top;border-right:gray dotted 1px;">10</td>
																<td style="float:left;font-size:6pt;vertical-align:top;padding-left:1mm;">
													Estate tax deduction
																	<div style="padding-top:1.5mm;text-align:right;padding-right:1mm;">
																		<xsl:call-template name="PopulateAmount">
																			<xsl:with-param name="TargetNode" select="$FormData/EstateTaxDeductionAmt"/>
																		</xsl:call-template>
																		<xsl:call-template name="SetFormLinkInline">
																			<xsl:with-param name="TargetNode" select="$FormData/EstateTaxDeductionAmt"/>
																		</xsl:call-template>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<!-- Blank Region -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom-width:0px;background-color:lightgrey;height:29mm;">
													<br/>
												</td>
											</tr>
										</table>
									</td>
									<!-- Part III columns 11-14 -->
									<!-- Line 11 -->
									<td valign="top">
										<table width="46.5mm" border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight">
													<div class="IRS1041ScheduleK1_itemLabel" style="text-align:center;vertical-align:top;float:left;border-right:gray dotted 1px;height:4mm;width:25px;">11</div>
													<div style="float:left;font-size:6pt;height:4mm;vertical-align:top;">
														<span style="padding-left:1mm;float:left;">Final year deductions</span>
														<span style="float:right;">
															<xsl:call-template name="SetDynamicTableToggleButton">
																<xsl:with-param name="TargetNode" select="$FormData/BenefFinalYearDeductionGrp"/>
																<xsl:with-param name="headerHeight" select="0"/>
																<xsl:with-param name="containerHeight" select="5"/>
																<xsl:with-param name="containerID" select="'SchK11Ctn'"/>
															</xsl:call-template>
														</span>
													</div>
													<div style="float:none;clear:both;overflow-y:auto;" id="SchK11Ctn">
														<table cellpadding="0" cellspacing="0" style="width:auto;">
															<tbody>
																<!-- Display blank lines if there are no data elements -->
																<xsl:if test="count($FormData/BenefFinalYearDeductionGrp) = 0">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;
													  float:left;border-top:0px solid; border-right:1px dotted gray;font-size:6pt;width:25px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
													  float:left;border-top:0px solid;width:41.40mm;font-size:6pt;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<xsl:for-each select="$FormData/BenefFinalYearDeductionGrp">
																	<xsl:if test="($Print != $Separated) or 
											                (count($FormData/BenefFinalYearDeductionGrp) &lt;=5)">
																		<xsl:choose>
																			<xsl:when test="position() = 1">
																				<tr>
																					<td class="IRS1041ScheduleK1_codeBox" style="height:4mm; float:left;border-top:0px solid;border-right:gray dotted 1px;font-size:6pt;" valign="bottom">
																						<div style="width:24px;">
																							<xsl:call-template name="PopulateText">
																								<xsl:with-param name="TargetNode" select="FinalYearDeductionsCd"/>
																							</xsl:call-template>
																						</div>
																					</td>
																					<td class="IRS1041ScheduleK1_amountBox" style="height:4mm; float:left;border-top:0px solid;width:41.40mm; font-size:6pt;padding-left:1mm;" valign="bottom">
																						<div style="text-align:right;padding-right:1mm;height:4mm;">
																							<xsl:call-template name="PopulateAmount">
																								<xsl:with-param name="TargetNode" select="FinalYearDeductionsAmt"/>
																							</xsl:call-template>
																							<xsl:call-template name="SetFormLinkInline">
																								<xsl:with-param name="TargetNode" select="FinalYearDeductionsAmt"/>
																							</xsl:call-template>
																						</div>
																					</td>
																				</tr>
																			</xsl:when>
																			<xsl:otherwise>
																				<tr>
																					<td class="IRS1041ScheduleK1_codeBox" style="height:8.3mm; float:left;border-top:1px dotted gray;border-right:1px dotted gray;font-size:6pt;" valign="bottom">
																						<xsl:call-template name="PopulateText">
																							<xsl:with-param name="TargetNode" select="FinalYearDeductionsCd"/>
																						</xsl:call-template>
																					</td>
																					<td class="IRS1041ScheduleK1_amountBox" style="height:8.3mm; float:left;border-top:1px dotted gray;width:41.40mm;font-size:6pt;padding-left:1mm;" valign="bottom">
																						<div style="text-align:right;padding-right:1mm;height:8mm;padding-top:4mm;">
																							<xsl:call-template name="PopulateAmount">
																								<xsl:with-param name="TargetNode" select="FinalYearDeductionsAmt"/>
																							</xsl:call-template>
																							<xsl:call-template name="SetFormLinkInline">
																								<xsl:with-param name="TargetNode" select="FinalYearDeductionsAmt"/>
																							</xsl:call-template>
																						</div>
																					</td>
																				</tr>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:if>
																</xsl:for-each>
																<!-- If there is only 1 element, add 4 rows -->
																<xsl:if test="count($FormData/BenefFinalYearDeductionGrp) = 1">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
													  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
													  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
													  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
													  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there are only 2 elements, add 3 rows -->
																<xsl:if test="count($FormData/BenefFinalYearDeductionGrp) = 2">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
													  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
													  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
													  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there are only 3 elements, add 2 rows -->
																<xsl:if test="count($FormData/BenefFinalYearDeductionGrp) = 3">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
													  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
													  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there are only 4 elements, add 1 row -->
																<xsl:if test="count($FormData/BenefFinalYearDeductionGrp) = 4">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
													  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- See Additional Table message for > 5 rows -->
																<xsl:if test="(($Print = $Separated)  and  
												  (count($FormData/BenefFinalYearDeductionGrp) &gt;5))">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;
													  float:left;border-top:0px solid;border-right:1px dotted gray;font-size:6pt;">
																			<div style="width:24px;">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</div>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
													  float:left;border-top:0px solid black;width:41.40mm;font-size:6pt;padding-left:1mm;">
																			<div style="height:4mm;padding-top:1mm;">
																				<xsl:call-template name="PopulateAdditionalDataTableMessage">
																					<xsl:with-param name="TargetNode" select="$FormData/BenefFinalYearDeductionGrp"/>
																				</xsl:call-template>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm; float:left;border-top:1px dotted gray;border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<div style="height:8mm;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm; float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<div style="height:8mm;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														float:left;border-top:1px dotted gray;border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm;">
																			<div style="height:8mm;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm; float:left; border-top:1px dotted gray;border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;float:left; border-top:1px dotted gray;width:41.40mm;">
																			<div style="height:7.8mm;"/>
																		</td>
																	</tr>
																</xsl:if>
															</tbody>
														</table>
													</div>
												</td>
											</tr>
											<!-- Line 12 -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<div class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
												    float:left;border-right:gray dotted 1px;height:4mm;width:25px;" valign="top">12</div>
													<div style="font-size:5pt;vertical-align:top;height:4mm;float:left;">
														<span style="padding-left:1mm;float:left;">Alternative minimum tax adjustment</span>
														<span style="float:right;">
															<xsl:call-template name="SetDynamicTableToggleButton">
																<xsl:with-param name="TargetNode" select="$FormData/AMTAdjustmentGrp"/>
																<xsl:with-param name="headerHeight" select="0"/>
																<xsl:with-param name="containerHeight" select="5"/>
																<xsl:with-param name="containerID" select="'SchK12Ctn'"/>
															</xsl:call-template>
														</span>
													</div>
													<div style="float:none;clear:both;overflow-y:auto;" id="SchK12Ctn">
														<table cellpadding="0" cellspacing="0" style="width:auto">
															<tbody>
																<!-- Display 5 blank lines if there are no data elements -->
																<xsl:if test="count($FormData/AMTAdjustmentGrp) = 0 ">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;
													  float:left;border-top:0px solid; border-right:1px dotted gray;font-size:6pt;width:25px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
													  float:left;border-top:0px solid;width:41.40mm;font-size:6pt;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
													  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<xsl:for-each select="$FormData/AMTAdjustmentGrp">
																	<xsl:if test="($Print != $Separated) or (count($FormData/AMTAdjustmentGrp) &lt;=5)">
																		<xsl:choose>
																			<xsl:when test="position() = 1">
																				<tr>
																					<td class="IRS1041ScheduleK1_codeBox" style="height:4mm; float:left;border-top:0px solid; border-right:1px dotted gray;font-size:6pt;" valign="bottom">
																						<div style="width:24px;">
																							<xsl:call-template name="PopulateText">
																								<xsl:with-param name="TargetNode" select="AMTAdjustmentCd"/>
																							</xsl:call-template>
																						</div>
																					</td>
																					<td class="IRS1041ScheduleK1_amountBox" style="height:4mm; float:left;border-top:0px solid;width:41.40mm;font-size:6pt;padding-left:1mm;" valign="bottom">
																						<div style="text-align:right;padding-right:1mm;height:4mm;">
																							<xsl:call-template name="PopulateAmount">
																								<xsl:with-param name="TargetNode" select="AMTAdjustmentAmt"/>
																							</xsl:call-template>
																							<xsl:call-template name="SetFormLinkInline">
																								<xsl:with-param name="TargetNode" select="AMTAdjustmentAmt"/>
																							</xsl:call-template>
																						</div>
																					</td>
																				</tr>
																			</xsl:when>
																			<xsl:otherwise>
																				<tr>
																					<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm; float:left;border-top:1px dotted gray; border-right:1px dotted gray;font-size:6pt;" valign="bottom">
																						<xsl:call-template name="PopulateText">
																							<xsl:with-param name="TargetNode" select="AMTAdjustmentCd"/>
																						</xsl:call-template>
																					</td>
																					<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left;border-top:1px dotted gray;width:41.40mm; font-size:6pt;padding-left:1mm;" valign="bottom">
																						<div style="text-align:right;padding-right:1mm;height:8mm;padding-top:4mm;">
																							<xsl:call-template name="PopulateAmount">
																								<xsl:with-param name="TargetNode" select="AMTAdjustmentAmt"/>
																							</xsl:call-template>
																							<xsl:call-template name="SetFormLinkInline">
																								<xsl:with-param name="TargetNode" select="AMTAdjustmentAmt"/>
																							</xsl:call-template>
																						</div>
																					</td>
																				</tr>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:if>
																</xsl:for-each>
																<!-- If there is only 1 element, add 4 rows -->
																<xsl:if test="count($FormData/AMTAdjustmentGrp) = 1">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left; border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;float:left; border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there are only 2 elements, add 3 rows -->
																<xsl:if test="count($FormData/AMTAdjustmentGrp) = 2">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray;border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left; border-top:1px dotted gray; width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left; border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;float:left; border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there are only 3 elements, add 2 rows -->
																<xsl:if test="count($FormData/AMTAdjustmentGrp) = 3">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm; float:left; border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;float:left; border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there are only 4 elements, add 1 row -->
																<xsl:if test="count($FormData/AMTAdjustmentGrp) = 4">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;float:left; border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- See Additional Table message for > 5 rows -->
																<xsl:if test="((count($FormData/AMTAdjustmentGrp) &gt;5)  and  
													  ($Print = $Separated))">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;float:left; border-top:0px solid; border-right:1px dotted gray;font-size:6pt">
																			<div style="width:24px;">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</div>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
													float:left;border-top:0px solid black;width:41.40mm;font-size:6pt;padding-left:1mm;">
																			<div style="height:4mm;padding-top:1mm;">
																				<xsl:call-template name="PopulateAdditionalDataTableMessage">
																					<xsl:with-param name="TargetNode" select="$FormData/AMTAdjustmentGrp"/>
																				</xsl:call-template>
																			</div>
																		</td>
																		<tr>
																			<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														      float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</td>
																			<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;float:left; border-top:1px dotted gray;width:41.40mm;">
																				<div style="height:8mm;"/>
																			</td>
																		</tr>
																		<tr>
																			<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														      float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</td>
																			<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;float:left; border-top:1px dotted gray;width:41.40mm;">
																				<div style="height:8mm;"/>
																			</td>
																		</tr>
																		<tr>
																			<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														      float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</td>
																			<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;float:left; border-top:1px dotted gray;width:41.40mm;">
																				<div style="height:8mm;"/>
																			</td>
																		</tr>
																		<tr>
																			<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														      float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</td>
																			<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;float:left; border-top:1px dotted gray;width:41.40mm;">
																				<div style="height:7.8mm;"/>
																			</td>
																		</tr>
																	</tr>
																</xsl:if>
															</tbody>
														</table>
													</div>
												</td>
											</tr>
											<tr>
												<!-- Line 13 -->
												<td colspan="3" class="IRS1041ScheduleK1_tdRight">
													<div class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													    float:left;border-right:gray dotted 1px;height:4mm;width:25px;vertical-align:top">13</div>
													<div style="font-size:6pt; vertical-align:top;height:4mm;float:left;">
														<span style="padding-left:1mm;float:left;">Credits and credit recapture</span>
														<span style="float:right;">
															<xsl:call-template name="SetDynamicTableToggleButton">
																<xsl:with-param name="TargetNode" select="$FormData/BenefCrAndCreditRecaptureGrp"/>
																<xsl:with-param name="headerHeight" select="0"/>
																<xsl:with-param name="containerHeight" select="3"/>
																<xsl:with-param name="containerID" select="'SchK13Ctn'"/>
															</xsl:call-template>
														</span>
													</div>
													<div style="float:none;clear:both;overflow-y:auto;" id="SchK13Ctn">
														<table cellpadding="0" cellspacing="0" style="width:auto;">
															<tbody>
																<!-- Display 3 blank lines if there are no data elements -->
																<xsl:if test="count($FormData/BenefCrAndCreditRecaptureGrp) = 0 ">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;
														  float:left;border-top:0px solid; border-right:gray dotted 1px;font-size:6pt;width:25px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
														  float:left;border-top:0px solid;width:41.40mm;font-size:6pt;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														  float:left;border-top:1px gray dotted; border-right:gray dotted 1px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray; border-right:gray dotted 1px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<xsl:for-each select="$FormData/BenefCrAndCreditRecaptureGrp">
																	<xsl:if test="($Print != $Separated) or 
													                      (count($FormData/BenefCrAndCreditRecaptureGrp) &lt;=3)">
																		<xsl:choose>
																			<xsl:when test="position() = 1">
																				<tr>
																					<td class="IRS1041ScheduleK1_codeBox" style="height:4mm; float:left;border-top:0px solid; border-right:1px dotted gray;font-size:6pt;" valign="bottom">
																						<div style="width:24px;">
																							<xsl:call-template name="PopulateText">
																								<xsl:with-param name="TargetNode" select="CreditsAndRecaptureCd"/>
																							</xsl:call-template>
																						</div>
																					</td>
																					<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
													float:left;border-top:0px solid;width:41.40mm; font-size:6pt;padding-left:1mm;" valign="bottom">
																						<div style="text-align:right;padding-right:1mm;height:4mm;">
																							<xsl:call-template name="PopulateAmount">
																								<xsl:with-param name="TargetNode" select="CreditsAndRecaptureAmt"/>
																							</xsl:call-template>
																							<xsl:call-template name="SetFormLinkInline">
																								<xsl:with-param name="TargetNode" select="CreditsAndRecaptureAmt"/>
																							</xsl:call-template>
																						</div>
																					</td>
																				</tr>
																			</xsl:when>
																			<xsl:otherwise>
																				<tr>
																					<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
float:left;border-top:1px dotted gray;border-right:1px dotted gray;font-size:6pt;" valign="bottom">
																						<xsl:call-template name="PopulateText">
																							<xsl:with-param name="TargetNode" select="CreditsAndRecaptureCd"/>
																						</xsl:call-template>
																					</td>
																					<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
float:left;border-top:1px dotted gray;width:41.40mm;font-size:6pt;padding-left:1mm;" valign="bottom">
																						<div style="text-align:right;padding-right:1mm;height:8mm;padding-top:4mm;">
																							<xsl:call-template name="PopulateAmount">
																								<xsl:with-param name="TargetNode" select="CreditsAndRecaptureAmt"/>
																							</xsl:call-template>
																							<xsl:call-template name="SetFormLinkInline">
																								<xsl:with-param name="TargetNode" select="CreditsAndRecaptureAmt"/>
																							</xsl:call-template>
																						</div>
																					</td>
																				</tr>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:if>
																</xsl:for-each>
																<!-- If there are only 2 elements, add 1 row -->
																<xsl:if test="count($FormData/BenefCrAndCreditRecaptureGrp) = 2">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there is only 1 element, add 2 rows -->
																<xsl:if test="count($FormData/BenefCrAndCreditRecaptureGrp) = 1">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- See Additional Table message for > 3 rows -->
																<xsl:if test="((count($FormData/BenefCrAndCreditRecaptureGrp) &gt;3)  and  
													                    ($Print = $Separated))">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;
														  float:left;border-top:0px solid black; border-right:1px dotted gray;font-size:6pt;">
																			<div style="width:24px;">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</div>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
										float:left;border-top:0px;width:41.40mm;font-size:6pt;padding-left:1mm;">
																			<div style="height:4mm; padding-top:1mm;">
																				<xsl:call-template name="PopulateAdditionalDataTableMessage">
																					<xsl:with-param name="TargetNode" select="$FormData/BenefCrAndCreditRecaptureGrp"/>
																				</xsl:call-template>
																			</div>
																		</td>
																		<tr>
																			<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray;border-right:1px dotted gray;" valign="bottom">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</td>
																			<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray;width:41.40mm;" valign="bottom">
																				<div style="height:8mm;"/>
																			</td>
																		</tr>
																		<tr>
																			<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray;border-right:1px dotted gray;" valign="bottom">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</td>
																			<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray;width:41.40mm;" valign="bottom">
																				<div style="height:7.8mm;"/>
																			</td>
																		</tr>
																	</tr>
																</xsl:if>
															</tbody>
														</table>
													</div>
												</td>
											</tr>
											<!-- Line 14 -->
											<tr>
												<td colspan="3" class="IRS1041ScheduleK1_tdRight" style="border-bottom:0px solid lightgrey;">
													<div style="width:46.5mm;">
														<div class="IRS1041ScheduleK1_itemLabel" style="text-align:center;
													    float:left;vertical-align:top;border-right:gray dotted 1px;height:4mm;width:25px;">14</div>
														<div style="font-size:6pt;vertical-align:top;height:4mm;float:left;">
															<span style="padding-left:1mm;float:left;">Other information</span>
															<span style="float:right">
																<xsl:call-template name="SetDynamicTableToggleButton">
																	<xsl:with-param name="TargetNode" select="$FormData/BenefOtherInformationGrp"/>
																	<xsl:with-param name="headerHeight" select="0"/>
																	<xsl:with-param name="containerHeight" select="6"/>
																	<xsl:with-param name="containerID" select="'SchK14Ctn'"/>
																</xsl:call-template>
															</span>
														</div>
													</div>
													<div style="float:none;clear:both;overflow-y:auto;" id="SchK14Ctn">
														<table cellpadding="0" cellspacing="0" style="width:auto;">
															<tbody>
																<!-- Display 6 blank lines if there are no data elements -->
																<xsl:if test="count($FormData/BenefOtherInformationGrp) = 0 ">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;float:left;
														  border-top:0px solid;border-right:1px dotted gray;font-size:6pt;width:25px;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
														  float:left;border-top:0px solid;width:41.40mm;font-size:6pt;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray;border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray;border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray;border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray;border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray;border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<xsl:for-each select="$FormData/BenefOtherInformationGrp">
																	<xsl:if test="($Print != $Separated) or 
													      (count($FormData/BenefOtherInformationGrp) &lt;=6)">
																		<xsl:choose>
																			<xsl:when test="position() = 1">
																				<tr>
																					<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;
															float:left;border-top:0px solid; border-right:1px dotted gray;font-size:6pt;" valign="bottom">
																						<div style="width:24px;">
																							<xsl:call-template name="PopulateText">
																								<xsl:with-param name="TargetNode" select="F1041K1OtherCd"/>
																							</xsl:call-template>
																						</div>
																					</td>
																					<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
															    border-top:0px solid;width:auto;font-size:6pt;padding-left:1mm;" valign="bottom">
																						<div style="text-align:right;padding-right:1mm;height:4mm;">
																							<xsl:call-template name="PopulateAmount">
																								<xsl:with-param name="TargetNode" select="F1041K1OtherAmt"/>
																							</xsl:call-template>
																							<xsl:call-template name="SetFormLinkInline">
																								<xsl:with-param name="TargetNode" select="F1041K1OtherAmt"/>
																							</xsl:call-template>
																						</div>
																					</td>
																				</tr>
																			</xsl:when>
																			<xsl:otherwise>
																				<tr>
																					<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
											float:left;border-top:1px dotted gray; border-right:1px dotted gray;font-size:6pt;" valign="bottom">
																						<xsl:call-template name="PopulateText">
																							<xsl:with-param name="TargetNode" select="F1041K1OtherCd"/>
																						</xsl:call-template>
																					</td>
																					<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
											float:left;border-top:1px dotted gray;width:41.40mm; font-size:6pt;padding-left:1mm;" valign="bottom">
																						<div style="text-align:right;padding-right:1mm;height:8mm;padding-top:4mm;">
																							<xsl:call-template name="PopulateAmount">
																								<xsl:with-param name="TargetNode" select="F1041K1OtherAmt"/>
																							</xsl:call-template>
																							<xsl:call-template name="SetFormLinkInline">
																								<xsl:with-param name="TargetNode" select="F1041K1OtherAmt"/>
																							</xsl:call-template>
																						</div>
																					</td>
																				</tr>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:if>
																</xsl:for-each>
																<!-- If there is only 1 element, add 5 rows-->
																<xsl:if test="count($FormData/BenefOtherInformationGrp) = 1">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there are only 2 elements, add 4 rows-->
																<xsl:if test="count($FormData/BenefOtherInformationGrp) = 2">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there are only 3 elements, add 3 rows-->
																<xsl:if test="count($FormData/BenefOtherInformationGrp) = 3">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there are only 4 elements, add 2 rows-->
																<xsl:if test="count($FormData/BenefOtherInformationGrp) = 4">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- If there are only 5 elements, add 1 row-->
																<xsl:if test="count($FormData/BenefOtherInformationGrp) = 5">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;float:left;
														  border-top:1px dotted gray; border-right:1px dotted gray;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
														  float:left;border-top:1px dotted gray;width:41.40mm;">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																	</tr>
																</xsl:if>
																<!-- See Additional Table message for > 6 rows -->
																<xsl:if test="(($Print = $Separated) and 
													      (count($FormData/BenefOtherInformationGrp) &gt;6))">
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:4mm;
														  float:left;border-top:0px solid black; border-right:1px dotted gray;font-size:6pt;">
																			<div style="width:24px;">
																				<span style="vertical-align:baseline;height:100%;"/>
																			</div>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:4mm;
														  float:left;border-top:0px solid black;width:41.40mm;font-size:6pt;padding-left:1mm;">
																			<div style="height:4mm;padding-top:1mm;">
																				<xsl:call-template name="PopulateAdditionalDataTableMessage">
																					<xsl:with-param name="TargetNode" select="$FormData/BenefOtherInformationGrp"/>
																				</xsl:call-template>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray; border-right:1px dotted gray;" valign="bottom">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray;width:41.40mm;" valign="bottom">
																			<div style="height:8mm;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray; border-right:1px dotted gray;" valign="bottom">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray;width:41.40mm;" valign="bottom">
																			<div style="height:8mm;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray; border-right:1px dotted gray;" valign="bottom">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray;width:41.40mm;" valign="bottom">
																			<div style="height:8mm;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray; border-right:1px dotted gray;" valign="bottom">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray;width:41.40mm;" valign="bottom">
																			<div style="height:8mm;"/>
																		</td>
																	</tr>
																	<tr>
																		<td class="IRS1041ScheduleK1_codeBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray; border-right:1px dotted gray;" valign="bottom">
																			<span style="vertical-align:baseline;height:100%;"/>
																		</td>
																		<td class="IRS1041ScheduleK1_amountBox" style="height:8.1mm;
															float:left;border-top:1px dotted gray;width:41.40mm;" valign="bottom">
																			<div style="height:7.8mm;"/>
																		</td>
																	</tr>
																</xsl:if>
															</tbody>
														</table>
													</div>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td colspan="2" style="font-family: Verdana; font-size: 8pt;text-align: left; padding-left:2mm; 
										padding-right:7mm; border-top: 2px solid black; border-bottom:1px solid black; height:24mm;">
										<div style="padding-bottom:2mm;">*See attached statement for additional information.</div>
										<b>Note. </b>A statement must be attached showing the beneficiary's share of income and 
                                        directly apportioned deductions from each business, rental real estate, and other rental activity.
                                    </td>
								</tr>
								<tr>
									<td colspan="2" style="height:49mm;border-bottom:1px solid black;padding-top:2mm;">
										<!-- IRS Use Only box -->
										<img src="{$ImagePath}/1041SchK1_For_IRS_Use_Only.gif" width="22" height="124" alt="For IRS Use Only"/>
									</td>
								</tr>
							</table>
							<!-- End inner table - Part III -->
						</td>
					</tr>
					<tr>
						<td width="187mm" colspan="2" style="width: 187mm; font-family: Verdana; font-size: 6pt; 
						font-weight: bold; border-top: 1px solid black;">
							<span style="width: 95mm;">For Paperwork Reduction Act Notice, see the Instructions for Form 1041.
						</span>
							<span style="font-weight: normal; width: 51mm;">IRS.gov/form1041<span style="width:7mm;"/>Cat. No. 11380D</span>
							<span style="width: 41mm;text-align:right;">Schedule K-1 (Form 1041) 2014</span>
						</td>
					</tr>
				</table>
				<!-- FORM DISPLAY ENDS  HERE -->
				<div class="pageEnd" style="width:187mm"/>
				<xsl:call-template name="SetInitialDynamicTableHeight">
					<xsl:with-param name="TargetNode" select="$FormData/BenefDirectlyApprtnDedGrp"/>
					<xsl:with-param name="headerHeight" select="0"/>
					<xsl:with-param name="containerHeight" select="3"/>
					<xsl:with-param name="containerID" select=" 'SchK9Ctn' "/>
				</xsl:call-template>
				<xsl:call-template name="SetInitialDynamicTableHeight">
					<xsl:with-param name="TargetNode" select="$FormData/BenefFinalYearDeductionGrp"/>
					<xsl:with-param name="headerHeight" select="0"/>
					<xsl:with-param name="containerHeight" select="5"/>
					<xsl:with-param name="containerID" select="'SchK11Ctn'"/>
				</xsl:call-template>
				<xsl:call-template name="SetInitialDynamicTableHeight">
					<xsl:with-param name="TargetNode" select="$FormData/AMTAdjustmentGrp"/>
					<xsl:with-param name="headerHeight" select="0"/>
					<xsl:with-param name="containerHeight" select="5"/>
					<xsl:with-param name="containerID" select="'SchK12Ctn'"/>
				</xsl:call-template>
				<xsl:call-template name="SetInitialDynamicTableHeight">
					<xsl:with-param name="TargetNode" select="$FormData/BenefCrAndCreditRecaptureGrp"/>
					<xsl:with-param name="headerHeight" select="0"/>
					<xsl:with-param name="containerHeight" select="3"/>
					<xsl:with-param name="containerID" select="'SchK13Ctn'"/>
				</xsl:call-template>
				<xsl:call-template name="SetInitialDynamicTableHeight">
					<xsl:with-param name="TargetNode" select="$FormData/BenefOtherInformationGrp"/>
					<xsl:with-param name="headerHeight" select="0"/>
					<xsl:with-param name="containerHeight" select="6"/>
					<xsl:with-param name="containerID" select="'SchK14Ctn'"/>
				</xsl:call-template>
				<!-- BEGIN Left Over Table -->
				<div class="styLeftOverTitleLine" id="LeftoverData">
					<div class="styLeftOverTitle">Additional Data </div>
					<div class="styLeftOverButtonContainer">
						<input class="styLeftoverTableBtn" TabIndex="1" type="button" value="Return to Form" onclick="javascript:returnToWriteInImage();"/>
					</div>
				</div>
				<table class="styLeftOverTbl">
					<xsl:call-template name="PopulateCommonLeftover">
						<xsl:with-param name="TargetNode" select="$FormData"/>
						<xsl:with-param name="DescWidth" select="100"/>
					</xsl:call-template>
				</table>
				<!-- End Left Over Table -->
				<!-- Additional Data Table -->
				<div style="width:187mm">
					<!-- Separated Data for Part III Line 9 -->
					<xsl:if test="($Print = $Separated) and  (count($FormData/BenefDirectlyApprtnDedGrp) &gt;3)">
						<div style="float:left">
							<br/>
							<span class="styRepeatingDataTitle" style="width:60mm">Form 1041 Schedule K1,</span>
							<br/>
							<span class="styRepeatingDataTitle" style="width:60mm">Part III, Line 9</span>
							<table class="styDepTbl" style="width:50mm;font-size:7pt;">
								<thead class="styTableThead">
									<!-- Label the Column Headers -->
									<tr class="styDepTblHdr">
										<th class="styDepTblCell" scope="col" valign="middle">9</th>
										<th class="styDepTblCell" scope="col" valign="middle">Directly apportioned deductions</th>
									</tr>
								</thead>
								<tfoot/>
								<tbody>
									<xsl:for-each select="$FormData/BenefDirectlyApprtnDedGrp">
										<xsl:choose>
											<xsl:when test="position() = 1">
												<tr style="border-color:black;">
													<!-- Define background colors to the rows -->
													<xsl:attribute name="class">
														<xsl:choose>
															<xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
															<xsl:otherwise>styDepTblRow2</xsl:otherwise>
														</xsl:choose>
													</xsl:attribute>
													<!-- First Column -->
													<td class="styDepTblCell" align="center">
														<div style="width:5mm;">
															<xsl:call-template name="PopulateText">
																<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsCd"/>
															</xsl:call-template>
														</div>
													</td>
													<!-- Second Column -->
													<td class="styDepTblCell" align="right">
														<div style="width:40mm;">
															<xsl:call-template name="PopulateAmount">
																<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsAmt"/>
															</xsl:call-template>
															<xsl:call-template name="SetFormLinkInline">
																<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsAmt"/>
															</xsl:call-template>
														</div>
													</td>
												</tr>
											</xsl:when>
											<xsl:otherwise>
												<tr style="border-color:black;">
													<!-- Define background colors to the rows -->
													<xsl:attribute name="class">
														<xsl:choose>
															<xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
															<xsl:otherwise>styDepTblRow2</xsl:otherwise>
														</xsl:choose>
													</xsl:attribute>
													<!-- First Column -->
													<td class="styDepTblCell" align="center">
														<div style="width:5mm;">
															<xsl:call-template name="PopulateText">
																<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsCd"/>
															</xsl:call-template>
														</div>
													</td>
													<!-- Second Column -->
													<td class="styDepTblCell" align="right">
														<div style="width:40mm;">
															<xsl:call-template name="PopulateAmount">
																<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsAmt"/>
															</xsl:call-template>
															<xsl:call-template name="SetFormLinkInline">
																<xsl:with-param name="TargetNode" select="DirectlyApprtnDeductionsAmt"/>
															</xsl:call-template>
														</div>
													</td>
												</tr>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:for-each>
								</tbody>
							</table>
						</div>
					</xsl:if>
					<!-- End Separated Data for Form 1041 Schedule K1, Part III, Line 9 -->
					<!-- Separated Data for Part III Line 11 -->
					<xsl:if test="($Print = $Separated) and  (count($FormData/BenefFinalYearDeductionGrp) &gt;5)">
						<div style="float:left"><br/>
							<span class="styRepeatingDataTitle" style="width:60mm">Form 1041 Schedule K1,</span>
							<br/>
							<span class="styRepeatingDataTitle" style="width:60mm">Part III, Line 11</span>
							<table class="styDepTbl" style="width:50mm;font-size:7pt;">
								<thead class="styTableThead">
									<!-- Label the Column Headers -->
									<tr class="styDepTblHdr">
										<th class="styDepTblCell" scope="col" valign="middle">11</th>
										<th class="styDepTblCell" scope="col" valign="middle">Final year deductions</th>
									</tr>
								</thead>
								<tfoot/>
								<tbody>
									<xsl:for-each select="$FormData/BenefFinalYearDeductionGrp">
										<xsl:choose>
											<xsl:when test="position() = 1">
												<tr style="border-color:black;">
													<!-- Define background colors to the rows -->
													<xsl:attribute name="class">
														<xsl:choose>
															<xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
															<xsl:otherwise>styDepTblRow2</xsl:otherwise>
														</xsl:choose>
													</xsl:attribute>
													<!-- First Column -->
													<td class="styDepTblCell" align="center">
														<div style="width:5mm;">
															<xsl:call-template name="PopulateText">
																<xsl:with-param name="TargetNode" select="FinalYearDeductionsCd"/>
															</xsl:call-template>
														</div>
													</td>
													<!-- Second Column -->
													<td class="styDepTblCell" align="right">
														<div style="width:40mm;">
															<xsl:call-template name="PopulateAmount">
																<xsl:with-param name="TargetNode" select="FinalYearDeductionsAmt"/>
															</xsl:call-template>
															<xsl:call-template name="SetFormLinkInline">
																<xsl:with-param name="TargetNode" select="FinalYearDeductionsAmt"/>
															</xsl:call-template>
														</div>
													</td>
												</tr>
											</xsl:when>
											<xsl:otherwise>
												<tr style="border-color:black;">
													<!-- Define background colors to the rows -->
													<xsl:attribute name="class">
														<xsl:choose>
															<xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
															<xsl:otherwise>styDepTblRow2</xsl:otherwise>
														</xsl:choose>
													</xsl:attribute>
													<!-- First Column -->
													<td class="styDepTblCell" align="center">
														<div style="width:5mm;">
															<xsl:call-template name="PopulateText">
																<xsl:with-param name="TargetNode" select="FinalYearDeductionsCd"/>
															</xsl:call-template>
														</div>
													</td>
													<!-- Second Column -->
													<td class="styDepTblCell" align="right">
														<div style="width:40mm;">
															<xsl:call-template name="PopulateAmount">
																<xsl:with-param name="TargetNode" select="FinalYearDeductionsAmt"/>
															</xsl:call-template>
															<xsl:call-template name="SetFormLinkInline">
																<xsl:with-param name="TargetNode" select="FinalYearDeductionsAmt"/>
															</xsl:call-template>
														</div>
													</td>
												</tr>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:for-each>
								</tbody>
							</table>
						</div>
					</xsl:if>
					<!-- End Separated Data for Form 1041 Schedule K1, Part III, Line 11 -->
					<!-- Separated Data for Part III Line 12 -->
					<xsl:if test="($Print = $Separated) and  (count($FormData/AMTAdjustmentGrp) &gt;5)">
						<div style="float:left">
							<br/>
							<span class="styRepeatingDataTitle" style="width:60mm">Form 1041 Schedule K1,</span>
							<br/>
							<span class="styRepeatingDataTitle" style="width:60mm">Part III, Line 12</span>
							<table class="styDepTbl" style="width:50mm;font-size:7pt;">
								<thead class="styTableThead">
									<!-- Label the Column Headers -->
									<tr class="styDepTblHdr">
										<th class="styDepTblCell" scope="col" valign="middle">12</th>
										<th class="styDepTblCell" scope="col" valign="middle">Alternative minimum tax adjustment</th>
									</tr>
								</thead>
								<tfoot/>
								<tbody>
									<xsl:for-each select="$FormData/AMTAdjustmentGrp">
										<xsl:choose>
											<xsl:when test="position() = 1">
												<tr style="border-color:black;">
													<!-- Define background colors to the rows -->
													<xsl:attribute name="class">
														<xsl:choose>
															<xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
															<xsl:otherwise>styDepTblRow2</xsl:otherwise>
														</xsl:choose>
													</xsl:attribute>
													<!-- First Column -->
													<td class="styDepTblCell" align="center">
														<div style="width:5mm;">
															<xsl:call-template name="PopulateText">
																<xsl:with-param name="TargetNode" select="AMTAdjustmentCd"/>
															</xsl:call-template>
														</div>
													</td>
													<!-- Second Column -->
													<td class="styDepTblCell" align="right">
														<div style="width:40mm;">
															<xsl:call-template name="PopulateAmount">
																<xsl:with-param name="TargetNode" select="AMTAdjustmentAmt"/>
															</xsl:call-template>
															<xsl:call-template name="SetFormLinkInline">
																<xsl:with-param name="TargetNode" select="AMTAdjustmentAmt"/>
															</xsl:call-template>
														</div>
													</td>
												</tr>
											</xsl:when>
											<xsl:otherwise>
												<tr style="border-color:black;">
													<!-- Define background colors to the rows -->
													<xsl:attribute name="class">
														<xsl:choose>
															<xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
															<xsl:otherwise>styDepTblRow2</xsl:otherwise>
														</xsl:choose>
													</xsl:attribute>
													<!-- First Column -->
													<td class="styDepTblCell" align="center">
														<div style="width:5mm;">
															<xsl:call-template name="PopulateText">
																<xsl:with-param name="TargetNode" select="AMTAdjustmentCd"/>
															</xsl:call-template>
														</div>
													</td>
													<!-- Second Column -->
													<td class="styDepTblCell" align="right">
														<div style="width:40mm;">
															<xsl:call-template name="PopulateAmount">
																<xsl:with-param name="TargetNode" select="AMTAdjustmentAmt"/>
															</xsl:call-template>
															<xsl:call-template name="SetFormLinkInline">
																<xsl:with-param name="TargetNode" select="AMTAdjustmentAmt"/>
															</xsl:call-template>
														</div>
													</td>
												</tr>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:for-each>
								</tbody>
							</table>
						</div>
					</xsl:if>
					<!-- Separated Data for Part III Line 13 -->
					<xsl:if test="($Print = $Separated) and  (count($FormData/BenefCrAndCreditRecaptureGrp) &gt;3)">
						<div style="float:left">
							<br/>
							<span class="styRepeatingDataTitle" style="width:60mm">Form 1041 Schedule K1,</span>
							<br/>
							<span class="styRepeatingDataTitle" style="width:60mm">Part III, Line 13</span>
							<table class="styDepTbl" style="width:50mm;font-size:7pt;">
								<thead class="styTableThead">
									<!-- Label the Column Headers -->
									<tr class="styDepTblHdr">
										<th class="styDepTblCell" scope="col" valign="middle">13</th>
										<th class="styDepTblCell" scope="col" valign="middle">Credits and credit recapture</th>
									</tr>
								</thead>
								<tfoot/>
								<tbody>
									<xsl:for-each select="$FormData/BenefCrAndCreditRecaptureGrp">
										<xsl:choose>
											<xsl:when test="position() = 1">
												<tr style="border-color:black;">
													<!-- Define background colors to the rows -->
													<xsl:attribute name="class">
														<xsl:choose>
															<xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
															<xsl:otherwise>styDepTblRow2</xsl:otherwise>
														</xsl:choose>
													</xsl:attribute>
													<!-- First Column -->
													<td class="styDepTblCell" align="center">
														<div style="width:5mm;">
															<xsl:call-template name="PopulateText">
																<xsl:with-param name="TargetNode" select="CreditsAndRecaptureCd"/>
															</xsl:call-template>
														</div>
													</td>
													<!-- Second Column -->
													<td class="styDepTblCell" align="right">
														<div style="width:40mm;">
															<xsl:call-template name="PopulateAmount">
																<xsl:with-param name="TargetNode" select="CreditsAndRecaptureAmt"/>
															</xsl:call-template>
															<xsl:call-template name="SetFormLinkInline">
																<xsl:with-param name="TargetNode" select="CreditsAndRecaptureAmt"/>
															</xsl:call-template>
														</div>
													</td>
												</tr>
											</xsl:when>
											<xsl:otherwise>
												<tr style="border-color:black;">
													<!-- Define background colors to the rows -->
													<xsl:attribute name="class">
														<xsl:choose>
															<xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
															<xsl:otherwise>styDepTblRow2</xsl:otherwise>
														</xsl:choose>
													</xsl:attribute>
													<!-- First Column -->
													<td class="styDepTblCell" align="center">
														<div style="width:5mm;">
															<xsl:call-template name="PopulateText">
																<xsl:with-param name="TargetNode" select="CreditsAndRecaptureCd"/>
															</xsl:call-template>
														</div>
													</td>
													<!-- Second Column -->
													<td class="styDepTblCell" align="right">
														<div style="width:40mm;">
															<xsl:call-template name="PopulateAmount">
																<xsl:with-param name="TargetNode" select="CreditsAndRecaptureAmt"/>
															</xsl:call-template>
															<xsl:call-template name="SetFormLinkInline">
																<xsl:with-param name="TargetNode" select="CreditsAndRecaptureAmt"/>
															</xsl:call-template>
														</div>
													</td>
												</tr>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:for-each>
								</tbody>
							</table>
						</div>
					</xsl:if>
					<!-- End Separated Data for Form 1041 Schedule K1, Part III, Line 13 -->
					<!-- Separated Data for Part III Line 14 -->
					<xsl:if test="($Print = $Separated) and  (count($FormData/BenefOtherInformationGrp) &gt;6)">
						<div style="float:left">
							<br/>
							<span class="styRepeatingDataTitle" style="width:60mm">Form 1041 Schedule K1,</span>
							<br/>
							<span class="styRepeatingDataTitle" style="width:60mm">Part III, Line 14</span>
							<table class="styDepTbl" style="width:55mm;font-size:7pt;">
								<thead class="styTableThead">
									<!-- Label the Column Headers -->
									<tr class="styDepTblHdr">
										<th class="styDepTblCell" scope="col" valign="middle">14</th>
										<th class="styDepTblCell" scope="col" valign="middle">Other information</th>
									</tr>
								</thead>
								<tfoot/>
								<tbody>
									<xsl:for-each select="$FormData/BenefOtherInformationGrp">
										<xsl:choose>
											<xsl:when test="position() = 1">
												<tr style="border-color:black;">
													<!-- Define background colors to the rows -->
													<xsl:attribute name="class">
														<xsl:choose>
															<xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
															<xsl:otherwise>styDepTblRow2</xsl:otherwise>
														</xsl:choose>
													</xsl:attribute>
													<!-- First Column -->
													<td class="styDepTblCell" align="center">
														<div style="width:5mm;">
															<xsl:call-template name="PopulateText">
																<xsl:with-param name="TargetNode" select="F1041K1OtherCd"/>
															</xsl:call-template>
														</div>
													</td>
													<!-- Second Column -->
													<td class="styDepTblCell" align="right">
														<div style="width:40mm;">
															<xsl:call-template name="PopulateAmount">
																<xsl:with-param name="TargetNode" select="F1041K1OtherAmt"/>
															</xsl:call-template>
															<xsl:call-template name="SetFormLinkInline">
																<xsl:with-param name="TargetNode" select="F1041K1OtherAmt"/>
															</xsl:call-template>
														</div>
													</td>
												</tr>
											</xsl:when>
											<xsl:otherwise>
												<tr style="border-color:black;">
													<!-- Define background colors to the rows -->
													<xsl:attribute name="class">
														<xsl:choose>
															<xsl:when test="position() mod 2 = 1">styDepTblRow1</xsl:when>
															<xsl:otherwise>styDepTblRow2</xsl:otherwise>
														</xsl:choose>
													</xsl:attribute>
													<!-- First Column -->
													<td class="styDepTblCell" align="center">
														<div style="width:5mm;">
															<xsl:call-template name="PopulateText">
																<xsl:with-param name="TargetNode" select="F1041K1OtherCd"/>
															</xsl:call-template>
														</div>
													</td>
													<!-- Second Column -->
													<td class="styDepTblCell" align="right">
														<div style="width:40mm;">
															<xsl:call-template name="PopulateAmount">
																<xsl:with-param name="TargetNode" select="F1041K1OtherAmt"/>
															</xsl:call-template>
															<xsl:call-template name="SetFormLinkInline">
																<xsl:with-param name="TargetNode" select="F1041K1OtherAmt"/>
															</xsl:call-template>
														</div>
													</td>
												</tr>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:for-each>
								</tbody>
							</table>
						</div>
					</xsl:if>
					<!-- End Separated Data for Form 1041 Schedule K1, Part III, Line 14 -->
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
