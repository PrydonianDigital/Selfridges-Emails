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

<table class="row content" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; Margin: 10px 0; padding: 0px;">
	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top">

			<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;">
				<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
					<td class="text-pad autolink mainText" style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">

						<p class="name" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 18px; padding: 0;" align="left"><strong style="font-weight: bold;">Dear <xsl:value-of select="translate(SFEmailMessages/Recipient/FirstName, $special, $translated)"/>,</strong></p>

						<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">We are sorry to tell you that part of your order <strong style="font-weight: bold;"><xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderHeader/OrderId"/></strong> has been cancelled. Unfortunately, when we tried to locate the stock for your order, the item(s) listed below could not be found.  At this point we don’t know if or when more stock will arrive.</p>

						<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">We appreciate that this is really disappointing for you. Please know that we really value your custom and are constantly monitoring our standards to prevent this from happening again.</p>

						<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Don't worry, if you paid with a debit or credit card, you won’t be charged for the cancelled item(s). If you paid via Gift Card, eVoucher or Paypal, you will be refunded with an eVoucher in a separate email.</p>

						<xsl:variable name="currentDelivery" select="SFEmailMessages/EmailDataArea/AbandonedDeliveryGroupId" />

						<xsl:if test="count(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Items/Item[Status='X']) &lt; 2">

							<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">We'll send you another email when the rest of your order has been dispatched.</p>

						</xsl:if>


						<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Apologies again for the inconvenience caused.</p>

						<p class="signoff" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0; padding: 4px 0 0 0;" align="left">Thank you,<br /><strong style="font-weight: bold;">Selfridges</strong></p>

					</td>
					<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<xsl:call-template name="AbandonedDeliveryGroupId"/>

<table class="row" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; padding: 0px;">
	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px;" align="left" valign="top">
			<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;">
				<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
					<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 0px 0px;" align="left" valign="top">
						<h6 class="yourOrder" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: 100; text-align: center; line-height: 21px; word-break: normal; font-size: 18px; letter-spacing: 2px; background:#f5f5f5; Margin: 0; padding: 10px;" align="center">Item(s) Cancelled</h6>
					</td>
					<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

	<xsl:variable name="currentDelivery" select="SFEmailMessages/EmailDataArea/AbandonedDeliveryGroupId" />

	<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Items/Item[Status='X']">
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