<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_Currency.xsl"/>
<xsl:import href="Template_Items.xsl"/>
<xsl:import href="Template_WonderRoomBrands.xsl"/>
<xsl:import href="Template_SumPrice.xsl"/>
<xsl:import href="Template_OrderTotals.xsl"/>

<xsl:template match="/">

	<!-- common accented/foreign characters -->
	<xsl:variable name="special" select="àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß" />

	<xsl:variable name="translated" select="&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;" />

<html><body>

<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/hasWonderRoomItems='True'">
	<xsl:call-template name="WonderRoomBrand" />
</xsl:if>

<table class="row content" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; Margin: 10px 0; padding: 0px;">
	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top">

			<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;">
				<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
					<td class="text-pad autolink mainText" style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">

						<p class="name" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 18px; padding: 0;" align="left"><strong style="font-weight: bold;">Dear <xsl:value-of select="translate(SFEmailMessages/Recipient/FirstName, $special, $translated)"/>,</strong></p>

						<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Your

						<xsl:choose>

							<!-- if has Wonder Room Items -->

							<xsl:when test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/hasWonderRoomItems='True'">

								<strong class="name" style="font-weight: bold;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item[WonderRoomItem='True']/Brand, $special, $translated)"/></strong>

							</xsl:when>

							<!-- end if has Wonder Room Items -->

							<xsl:otherwise><!-- nothing for no Wonder Room items --></xsl:otherwise>

						</xsl:choose>

									 order <strong class="name" style="font-weight: bold;"><xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderHeader/OrderId"/></strong> is now ready and waiting for you at <strong style="font-weight: bold;">Selfridges <xsl:value-of select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/StoreAddress/storeNickName"/></strong>.</p>

								<p><strong style="font-weight: bold;">What next?</strong></p>

									<xsl:choose>

										<!-- if has Wonder Room Items -->

										<xsl:when test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/hasWonderRoomItems='True'">

											<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Bring this email – either as a print out or on your phone, the card you paid with and a valid passport <strong style="font-weight: bold;">or</strong> photo driving licence to the <strong class="name" style="font-weight: bold;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item[WonderRoomItem='True']/WonderRoomBrand, $special, $translated)"/></strong> boutique in <strong class="name" style="font-weight: bold;">The Wonder Room on G at Selfridges Oxford Street, London</strong>. Please do not go to the Click &amp; Collect point.</p>

										</xsl:when>

										<!-- end if has Wonder Room Items -->

										<!-- if no Wonder Room Items -->

										<xsl:otherwise>

											<ul style="padding: 0 0 0 15px;">
												<li style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px 20px; padding: 0;" align="left">Bring this email – either as a print out or on your phone - to the in-store Click &amp; Collect point (<a href="http://www.selfridges.com/content/dispatch-and-delivery" target="_blank" style="color: #545454; text-decoration: underline;">see map</a>). </li>

												<li style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px 20px; padding: 0;" align="left">Bring the card you paid with <strong style="font-weight: bold;">or</strong> a valid passport or photo driving licence. If you paid via PayPal or Gift Card, you'll need your passport or photo driving licence.</li>

												<li style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px 20px; padding: 0;" align="left">If you'd like somebody to collect the order on your behalf, they'll need a copy of this email and their passport or photo driving licence. Unfortunately, if you paid via PayPal, you'll need to collect the order yourself.</li>

											</ul>

										</xsl:otherwise>

										<!-- end if no Wonder Room Items -->

									</xsl:choose>

								<xsl:choose>

									<!-- if has Wonder Room Items -->

									<xsl:when test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/hasWonderRoomItems='True'">

										<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">We will be happy to hold this item for you for five days. Please note that you must collect the order yourself in person – we apologise for any inconvenience this may cause.</p>

						<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item/Personalization!=''">

							<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Please note that personalised items cannot be returned or refunded.</p>

						</xsl:if>

										<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0; padding: 4px 0 0 0;" align="left">Thank you for choosing <strong class="name" style="font-weight: bold;"><xsl:value-of select="translate(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item/WonderRoomBrand, $special, $translated)"/></strong> at Selfridges.</p>

									</xsl:when>

									<!-- end if has Wonder Room Items -->

									<!-- if no Wonder Room Items -->

									<xsl:otherwise>

										<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px 0; padding: 0;" align="left">We'll keep your order in store for 14 days. If your order isn't collected within 14 days it will be cancelled and you'll be refunded.</p>

						<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item/Personalization!=''">

							<p style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0 0 14px; padding: 0;" align="left">Please note that personalised items cannot be returned or refunded.</p>

						</xsl:if>

										<p class="signoff" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; text-align: left; line-height: 21px; font-size: 14px; Margin: 0; padding: 4px 0 0 0;" align="left">Thank you,<br /><strong style="font-weight: bold;">Selfridges</strong></p>

									</xsl:otherwise>

									<!-- end if no Wonder Room Items -->

								</xsl:choose>

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

			<xsl:choose>

				<!-- if has Wonder Room Items -->

				<xsl:when test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/hasWonderRoomItems='True'">

					<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

						<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item[WonderRoomItem='True']">
							<xsl:call-template name="item"/>
						</xsl:for-each>

					</table>

				</xsl:when>

				<!-- end if has Wonder Room Items -->

				<!-- if no Wonder Room Items -->

				<xsl:otherwise>

					<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

						<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item[WonderRoomItem='false']">
							<xsl:call-template name="item"/>
						</xsl:for-each>

					</table>

				</xsl:otherwise>

				<!-- end if no Wonder Room Items -->

			</xsl:choose>

		</td>
	</tr>
</table>

<xsl:call-template name="orderTotals"/>


</body></html>

</xsl:template>

</xsl:stylesheet>