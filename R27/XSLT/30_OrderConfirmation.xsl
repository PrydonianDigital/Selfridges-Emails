<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_Currency.xsl"/>
<xsl:import href="Template_SumPrice.xsl"/>
<xsl:import href="Template_Items.xsl"/>
<xsl:import href="Template_FormatDate.xsl"/>
<xsl:import href="Template_OrderTotals.xsl"/>

<xsl:template match="/">

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

							<!-- if UK, EU or INT delivery -->

							<xsl:when test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryMethod != 'UKSTORE'">

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">You fell for something extraordinary at Selfridges.</p>

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Your order number is <strong style="font-weight: bold;"><xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderHeader/OrderId"/></strong>.</p>

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">We'll send you another email when your order has been dispatched.</p>

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left"><strong style="font-weight: bold;">Delivery Address:</strong><br />
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/DeliveryName!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/DeliveryName, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address1!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address1, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address2!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address2, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address3!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address3, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/City!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/City, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/PostCode!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/PostCode, $special, $translated)"/><br /></xsl:if>
								</p>

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left"><strong style="font-weight: bold;">Your order will be delivered by:</strong><br />
								<xsl:call-template name="formatdate">
									<xsl:with-param name="datestr" select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/LatestDeliveryDate"/>
								</xsl:call-template>
								</p>

							</xsl:when>

							<!-- end if UK, EU or INT delivery -->

							<!-- otherwise, if C&C -->

							<xsl:otherwise>

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">You fell for something extraordinary at Selfridges.</p>

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Your order number is <strong style="font-weight: bold;"><xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderHeader/OrderId"/></strong>.</p>

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Please wait for your <strong style="font-weight: bold;">'Ready to Collect'</strong> email which will tell you all the information you need to collect your order.</p>

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left"><strong style="font-weight: bold;">Collect from:</strong><br />
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/City!=''">Selfridges <xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/City, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/DeliveryName!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/DeliveryName, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address1!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address1, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address2!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address2, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address3!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address3, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/City!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/City, $special, $translated)"/><br /></xsl:if>
									<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/PostCode!=''"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/PostCode, $special, $translated)"/><br /></xsl:if>
								</p>

								<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left"><strong style="font-weight: bold;">Selected collection date:</strong><br />
								<xsl:call-template name="formatdate">
									<xsl:with-param name="datestr" select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/LatestDeliveryDate"/>
								</xsl:call-template>
								</p>

								<xsl:choose>

									<!-- if has Wonder Room Items -->

									<xsl:when test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/hasWonderRoomItems='True'">

										<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">The items in your order will be available to collect from different locations in store. Please look out for separate <strong style="font-weight: bold;">'Ready to Collect'</strong> emails with your collection instructions.</p>

									</xsl:when>

									<!-- end if has Wonder Room Items -->

									<xsl:otherwise><!-- nothing for no Wonder Room items --></xsl:otherwise>

								</xsl:choose>

							</xsl:otherwise>

							<!-- end otherwise, if C&C -->

						</xsl:choose>

						<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item/Personalization!=''">

							<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Please note that personalised items cannot be returned or refunded.</p>

						</xsl:if>

						<p class="signoff" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0; padding: 4px 0 0 0;" align="left">Thank you,<br /><strong style="font-weight: bold;">Selfridges</strong></p>

					</td>
					<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
				</tr>
			</table>

			<table class="row" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; padding: 0px;">
				<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
					<td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px;" align="left" valign="top">
						<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;">
							<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
								<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 0px 0px;" align="left" valign="top">
									<h6 class="yourOrder" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: 100; text-align: center; line-height: 21px; word-break: normal; font-size: 14px; letter-spacing: 2px; background: #f5f5f5; border-bottom-width: 1px; Margin: 0; padding: 10px;" align="center">Your Order</h6>
								</td>
								<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

			<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

				<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item">
					<xsl:call-template name="item"/>
				</xsl:for-each>

			</table>

		</td>
	</tr>
</table>

<xsl:call-template name="orderTotals"/>


</body></html>

</xsl:template>

</xsl:stylesheet>