<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_Items.xsl"/>
<xsl:import href="Template_Items.xsl"/>
<xsl:import href="Template_Currency.xsl"/>
<xsl:import href="Template_FormatDate.xsl"/>
<xsl:import href="Template_ThisDelivery.xsl"/>
<xsl:import href="Template_OrderTotals.xsl"/>
<xsl:import href="Template_AbandonedDeliveryGroupId.xsl"/>

<xsl:template match="/">

<html><body>

<xsl:call-template name="AbandonedDeliveryGroupId"/>

<table class="row" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; padding: 0px;">
	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px;" align="left" valign="top">
			<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;">
				<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
					<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 0px 0px;" align="left" valign="top">
						<h6 class="yourOrder" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: 100; text-align: center; line-height: 21px; word-break: normal; font-size: 18px; letter-spacing: 2px; border-top-style: solid; border-top-color: #e7e7e7; border-top-width: 1px; border-bottom-style: solid; border-bottom-color: #e7e7e7; border-bottom-width: 1px; Margin: 0; padding: 10px;" align="center">Item(s) Cancelled</h6>
					</td>
					<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

	<xsl:variable name="currentDelivery" select="SFEmailMessages/EmailDataArea/AbandonedDeliveryGroupId" />

	<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Items/Item">
		<xsl:call-template name="item"/>
	</xsl:for-each>

</table>

<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

	<!-- show this delivery -->
	<xsl:call-template name="thisdelivery" />
	<!-- end show this delivery -->

</table>

<!-- show despatched subtotal -->
<xsl:call-template name="orderTotals" />
<!-- end show despatched subtotal -->

</body></html>

</xsl:template>


</xsl:stylesheet>