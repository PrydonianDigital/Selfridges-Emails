<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_SumPrice.xsl"/>
<xsl:import href="Template_Currency.xsl"/>
<xsl:import href="Template_Items.xsl"/>
<xsl:import href="Template_OrderTotals.xsl"/>

<xsl:template match="/">

	<!-- common accented/foreign characters -->
	<xsl:variable name="special" select="àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß" />

	<xsl:variable name="translated" select="&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;" />

<html><body>

<table class="row content" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; Margin: 10px 0; padding: 0px;">
	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top">

			<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;">
				<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
					<td class="text-pad autolink mainText" style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">

						<p class="name" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 18px; padding: 0;" align="left"><strong style="font-weight: bold;">Dear <xsl:value-of select="translate(SFEmailMessages/Recipient/FirstName, $special, $translated)"/>,</strong></p>

						<xsl:choose>

							<xsl:when test="SFEmailMessages/EmailDataArea/RefundType='ALL'">

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">We've processed a refund for your order <strong style="font-weight: bold;"><xsl:value-of select="SFEmailMessages/EmailDataArea/ReturnDetails/OrderId" /></strong>.</p>

							</xsl:when>

							<xsl:when test="SFEmailMessages/EmailDataArea/RefundType='MIX'">

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Thank you for returning your order <strong style="font-weight: bold;"><xsl:value-of select="SFEmailMessages/EmailDataArea/ReturnDetails/OrderId" /></strong>. We've processed a refund for some of your items, please see the details below.</p>

							</xsl:when>

							<xsl:otherwise>

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Thank you for returning your order <strong style="font-weight: bold;"><xsl:value-of select="SFEmailMessages/EmailDataArea/ReturnDetails/OrderId" /></strong>. Unfortunately, we have been unable to process a refund. Our Customer Services team will be in touch shortly to explain why.</p>

							</xsl:otherwise>

						</xsl:choose>

						<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">

							<xsl:if test="(SFEmailMessages/EmailDataArea/RefundPaymentMethods/RefundPaymentMethod/TenderType != 'eVoucher') and (SFEmailMessages/EmailDataArea/RefundPaymentMethods/RefundPaymentMethod/TenderType != 'EVoucher') and (SFEmailMessages/EmailDataArea/RefundPaymentMethods/RefundPaymentMethod/TenderType != 'GiftCard')">
								It will usually take 5 days for your original payment method to be credited, however some payment providers can take longer.
							</xsl:if>

							<xsl:if test="(SFEmailMessages/EmailDataArea/RefundPaymentMethods/RefundPaymentMethod/TenderType = 'eVoucher') or (SFEmailMessages/EmailDataArea/RefundPaymentMethods/RefundPaymentMethod/TenderType = 'GiftCard') or (SFEmailMessages/EmailDataArea/RefundPaymentMethods/RefundPaymentMethod/TenderType = 'EVoucher')">
								As you paid with a Gift Card or eVoucher, the payment will be refunded with an eVoucher in a separate email.
							</xsl:if>

						</p>

						<xsl:if test="SFEmailMessages/EmailDataArea/RefundType='MIX'">
						<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Unfortunately, we have been unable to process a refund for some of the items in your order. Our Customer Services team will be in touch shortly to explain why.</p>
						</xsl:if>

						<p class="signoff" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0; padding: 4px 0 0 0;" align="left">Thank you,<br /><strong style="font-weight: bold;">Selfridges</strong></p>

					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem[StockState='True']">

	<table class="row" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; padding: 0px;">
		<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
			<td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px;" align="left" valign="top">
				<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;">
					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
						<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 0px 0px;" align="left" valign="top">
							<h6 class="yourOrder" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: 100; text-align: center; line-height: 21px; word-break: normal; font-size: 14px; letter-spacing: 2px; background: #f5f5f5; Margin: 0; padding: 10px;" align="center">Item(s) Refunded</h6>
						</td>
						<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

		<!-- show refunded items -->
		<xsl:for-each select="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem[StockState='True']">
			<xsl:call-template name="item"/>
		</xsl:for-each>
		<!-- end show refunded items -->

	</table>

</xsl:if>

<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem[StockState='False']">

	<table class="row" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; padding: 0px;">
		<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
			<td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px;" align="left" valign="top">
				<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;">
					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
						<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 0px 0px;" align="left" valign="top">
							<h6 class="yourOrder" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: 100; text-align: center; line-height: 21px; word-break: normal; font-size: 14px; letter-spacing: 2px; background: #f5f5f5; Margin: 40px 0 0 0; padding: 10px;" align="center">Item(s) Not Refunded</h6>
						</td>
						<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

		<!-- show refunded items -->
		<xsl:for-each select="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem[StockState='False']">
			<xsl:call-template name="item"/>
		</xsl:for-each>
		<!-- end show refunded items -->

	</table>

</xsl:if>

<xsl:if test="SFEmailMessages/EmailDataArea/RefundType!='NONE'">
	<xsl:call-template name="orderTotals"/>
</xsl:if>

</body></html>

</xsl:template>

</xsl:stylesheet>