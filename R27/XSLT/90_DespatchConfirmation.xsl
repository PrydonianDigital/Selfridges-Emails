<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_Currency.xsl"/>
<xsl:import href="Template_Items.xsl"/>
<xsl:import href="Template_SumPrice.xsl"/>
<xsl:import href="Template_ThisDelivery.xsl"/>
<xsl:import href="Template_ToFollow.xsl"/>
<xsl:import href="Template_CountryCode.xsl"/>
<xsl:import href="Template_OrderTotals.xsl"/>
<xsl:import href="Template_DespatchedDeliveryGroupId.xsl"/>

<xsl:template match="/">

	<xsl:variable name="special" select="àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß" />

	<xsl:variable name="translated" select="&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;" />

	<xsl:variable name="currentDelivery" select="SFEmailMessages/EmailDataArea/DespatchedDeliveryGroupId" />

<html><body>

<xsl:if test="SFEmailMessages/emailHeader/emailType = 'ORDER_DESPATCHED'">

	<table class="row content" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; Margin: 10px 0; padding: 0px;">
		<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
			<td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top">

				<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;">
					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
						<td class="text-pad autolink mainText" style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 0;" align="left" valign="top">

							<p class="name" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 18px; padding: 0;" align="left"><strong style="font-weight: bold; text-transform: capitalize;">Dear <xsl:value-of select="translate(SFEmailMessages/Recipient/FirstName, $special, $translated)"/>,</strong></p>

							<xsl:choose>

								<xsl:when test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Items/Item[Status='r']">

									<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Part of your order <strong style="font-weight: bold;"><xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderHeader/OrderId"/></strong> has left the building and is on its way.</p>

									<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Your order is being delivered in more than one parcel. You'll receive another email when we've dispatched the remaining items.</p>
								</xsl:when>

								<xsl:otherwise>

									<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Your order <strong style="font-weight: bold;"><xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderHeader/OrderId"/></strong> has left the building and is on its way.</p>

								</xsl:otherwise>

							</xsl:choose>

							<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">
								<xsl:choose>

									<xsl:when test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Items/Item/TrackingURL!=''">
										Want to keep an eye on it? Find your <a href="{SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Items/Item/TrackingURL}" style="color: #545454 !important; text-decoration: underline !important;" target="_blank">tracking information here ›</a>
									</xsl:when>
									<xsl:otherwise>
										If you have an account with us, tracking information is available for most orders. Simply sign in to <a href="https://www.selfridges.com/GB/en/cat/MyAccount/" style="color: #545454 !important; text-decoration: underline !important;" target="_blank">My Account</a> and go to My Orders.
									</xsl:otherwise>
								</xsl:choose>
							</p>

						<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item/Personalization!=''">

							<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Please note that personalised items cannot be returned or refunded.</p>

						</xsl:if>

							<p class="signoff" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0; padding: 4px 0 0 0;" align="left">Thank you,<br /><strong style="font-weight: bold;">Selfridges</strong></p>

						</td>
						<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<xsl:call-template name="deliveryGroupCurrent"/>

	<table class="row" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; padding: 0px;">
		<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
			<td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px;" align="left" valign="top">
				<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;">
					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
						<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px;" align="left" valign="top">
							<h6 class="yourOrder" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: 100; text-align: center; line-height: 21px; word-break: normal; font-size: 14px; letter-spacing: 2px; background: #F5F5F5; border-bottom-width: 1px; Margin: 0; padding: 10px;" align="center">On Its Way Now</h6>
						</td>
						<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

		<!-- show this delivery -->
		<xsl:call-template name="thisdelivery" />
		<!-- end show this delivery -->

	</table>

	<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

		<!-- show pending items -->
		<xsl:call-template name="tofollow" />
		<!-- end show pending items -->

	</table>

	<!-- show despatched subtotal -->
	<xsl:call-template name="orderTotals" />
	<!-- end show despatched subtotal -->

</xsl:if>

</body></html>
</xsl:template>

</xsl:stylesheet>