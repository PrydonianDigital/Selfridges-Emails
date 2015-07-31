<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="deliveryGroupCurrent">

	<xsl:variable name="currentDelivery" select="SFEmailMessages/EmailDataArea/DespatchedDeliveryGroupId" />

	<xsl:variable name="delivered" select="SFEmailMessages/EmailDataArea/DeliveryDetails/DeliveryGroupId" />

	<xsl:variable name="special" select="àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß" />

	<xsl:variable name="translated" select="&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;" />

	<table class="row deliveryGroup" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; letter-spacing: 1px; padding: 0px;"><tr class="header" style="vertical-align: top; text-align: left; width: 100%; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 16px; font-size: 11px; margin: 0; padding: 10px 0px 0px;" align="left" valign="top"><table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; margin: 0 auto; padding: 0;"><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad autolink mainText" style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 16px; font-size: 11px; margin: 0; padding: 0px 10px 0px;" align="left" valign="top">
		<h6 style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: bold; text-align: left; line-height: 21px; word-break: normal; font-size: 18px; letter-spacing: 2px; margin: 0; padding: 0;" align="left">
			<span>Delivery Address</span>
		</h6>
	</td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 16px; font-size: 11px; margin: 0; padding: 0;" align="left" valign="top"></td></tr></table></td></tr><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; margin: 0; padding: 10px 0px 0px;" align="left" valign="top"><table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; margin: 0 auto; padding: 0;"><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad autolink mainText" style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; margin: 0; padding: 0px 10px 10px;" align="left" valign="top">
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/DeliveryName !=''"><strong style="font-weight:bold; text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/DeliveryName, $special, $translated)"/></strong><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/Address1 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/Address1, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/Address2 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/Address2, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/Address3 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/Address3, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/City !=''"><span style="text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/City, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/County !=''"><span style="text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/County, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/PostCode !=''"><span style="text-transform: uppercase;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/PostCode, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/DeliveryInstruction !=''"><small>Delivery instructions: <xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeliveryAddress/DeliveryInstruction, $special, $translated)"/></small></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/DeliveryName !=''"><strong style="font-weight:bold; text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/DeliveryName, $special, $translated)"/></strong><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/Address1 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/Address1, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/Address2 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/Address2, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/Address3 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/Address3, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/City !=''"><span style="text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/City, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/County !=''"><span style="text-transform: capitalize;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/County, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/PostCode !=''"><span style="text-transform: uppercase;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/PostCode, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/DeliveryInstruction !=''"><small>Delivery instructions: <xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$delivered]/DeliveryAddress/DeliveryInstruction, $special, $translated)"/></small></xsl:if>
	</td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; margin: 0; padding: 0;" align="left" valign="top"></td></tr></table></td></tr></table>

</xsl:template>

</xsl:stylesheet>