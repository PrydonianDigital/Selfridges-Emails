<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_SumPrice.xsl"/>
<xsl:import href="Template_Currency.xsl"/>

<xsl:template name="orderTotalsDespatch">

	<xsl:variable name="currentDelivery" select="SFEmailMessages/EmailDataArea/DespatchedDeliveryGroupId" />

<table class="block-grid two-up orderTotals" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; max-width: 600px; padding: 0; border-top-style: solid; border-top-width: 1px; border-top-color: #E7E7E7;">

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
		Subtotal
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
			<xsl:call-template name="currency"/>
			<strong style="font-weight: bold;">
				<xsl:call-template name="sumPrice">
					<xsl:with-param name="pList" select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Items/Item[Status='S']"/>
				</xsl:call-template>
			</strong>
		</td>
	</tr>

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Delivery
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
			<xsl:call-template name="currency"/>
			<strong style="font-weight: bold;">
				<xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/ShippingPrice"/>
			</strong>
		</td>
	</tr>

<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Discount != '0.00'">
	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Discount
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
			-<xsl:call-template name="currency"/>
			<strong style="font-weight: bold;">
				<xsl:variable name="OD" select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Discount"/>
				<xsl:value-of select="translate($OD, '-', '')"/>
			</strong>
		</td>
	</tr>
</xsl:if>

<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeductedVAT != '0.00'">
	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Deducted VAT
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
			<xsl:call-template name="currency"/>
			<strong style="font-weight: bold;">
				<xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/DeductedVAT"/>
			</strong>
		</td>
	</tr>
</xsl:if>

<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Tax != '0.00'">
	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Import Duties
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
			<xsl:call-template name="currency"/>
			<strong style="font-weight: bold;">
				<xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Tax"/>
			</strong>
		</td>
	</tr>
</xsl:if>

<xsl:choose>

	<xsl:when test="position() != last()">
		<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
			<td class="total" style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: bold; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px 10px 0 10px;" align="left" valign="top">
				<strong style="font-weight: bold;">Total</strong>
			</td><td class="textright total" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px;" align="right" valign="top">
			<xsl:call-template name="currency"/>
			<strong style="font-weight: bold;">
				<xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Price"/>
			</strong>
			</td>
		</tr>
	</xsl:when>
	<xsl:otherwise>
		<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
			<td class="total" style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: bold; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px 10px 0 10px;" align="left" valign="top">
				<strong style="font-weight: bold;">Total</strong>
			</td><td class="textright total" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px 10px 0 10px;" align="right" valign="top">
			<xsl:call-template name="currency"/>
			<strong style="font-weight: bold;">
				<xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Price"/>
			</strong>
			</td>
		</tr>
	</xsl:otherwise>

</xsl:choose>

</table>

</xsl:template>
</xsl:stylesheet>