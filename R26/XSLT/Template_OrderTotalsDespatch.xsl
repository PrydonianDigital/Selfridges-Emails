<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_SumPrice.xsl"/>
<xsl:import href="Template_Currency.xsl"/>

<xsl:template name="orderTotalsDespatch">

	<xsl:variable name="currentDelivery" select="SFEmailMessages/EmailDataArea/DespatchedDeliveryGroupId" />

	<table class="block-grid two-up orderTotals" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; border-bottom-width: 1px; border-bottom-color: #E7E7E7; border-bottom-style: solid; max-width: 600px; padding: 0;">

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 18px; margin: 0; padding: 10px;" align="left" valign="top">
	<strong style="font-weight: bold;">Subtotal</strong>
	</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 18px; margin: 0; padding: 10px;" align="right" valign="top">
	<xsl:call-template name="currency"/>
	<strong style="font-weight: bold;">
	<xsl:call-template name="sumPrice">
		<xsl:with-param name="pList" select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Items/Item[Status='S']"/>
	</xsl:call-template>
	</strong>
	</td></tr>

	</table>

</xsl:template>
</xsl:stylesheet>