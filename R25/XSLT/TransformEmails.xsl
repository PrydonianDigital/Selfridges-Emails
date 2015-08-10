<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

	<table><tr><td>

	<xsl:choose>

		<!-- if not Return Refunded -->

		<xsl:when test="SFEmailMessages/emailHeader/emailType != 'RETURN_REFUNDED'">

			<!-- if not Abandoned -->

				<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Status!='X'">

					<xsl:variable name="set" select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[Status!='X']" />

					<xsl:variable name="count" select="count($set)" />

					<!-- if not Abandoned Delivery Group -->

					<xsl:if test="SFEmailMessages/emailHeader/emailType != 'ABANDONED_DELIVERY_GROUP'">

						<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup">

							<xsl:choose>

								<!-- if NOT abandoned -->

								<xsl:when test="Status != 'X'">

									<!-- if Click & Collect, do NOT show Delivery Address info -->

									<xsl:if test="DeliveryMethod != 'UKSTORE'">

										<table class="row deliveryGroup" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; border-bottom-style: solid; border-bottom-color: #e7e7e7; border-bottom-width: 1px; Margin-bottom: 10px; letter-spacing: 1px; padding: 0px;"><tr class="header" style="vertical-align: top; text-align: left; width: 100%; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 16px; font-size: 11px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top"><table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;"><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad autolink mainText" style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 16px; font-size: 11px; Margin: 0; padding: 0px 10px 0px;" align="left" valign="top">

										<h6 style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: bold; text-align: left; line-height: 21px; word-break: normal; font-size: 18px; letter-spacing: 2px; Margin: 0; padding: 10px 0 10px;" align="left">

										<xsl:choose>
										<xsl:when test="count($set) > 1">
											<xsl:if test="DeliveryGroupId !=''"><span>Delivery Group <xsl:value-of select="concat(position(), ' of ', count($set), '&#xa;')" /></span><br /></xsl:if>
										</xsl:when>
										<xsl:otherwise>
										<span>Delivery Address</span>
										</xsl:otherwise>
										</xsl:choose>
										</h6>
										</td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 16px; font-size: 11px; Margin: 0; padding: 0;" align="left" valign="top"></td></tr></table></td></tr><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 0px 0px;" align="left" valign="top"><table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;"><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad autolink mainText" style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">

											<xsl:if test="DeliveryAddress/DeliveryName !=''"><strong style="text-transform: capitalize; font-weight: normal;"><xsl:value-of select="DeliveryAddress/DeliveryName"/></strong><br /></xsl:if>
											<xsl:if test="DeliveryAddress/Address1 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="DeliveryAddress/Address1"/></span><br /></xsl:if>
											<xsl:if test="DeliveryAddress/Address2 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="DeliveryAddress/Address2"/></span><br /></xsl:if>
											<xsl:if test="DeliveryAddress/Address3 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="DeliveryAddress/Address3"/></span><br /></xsl:if>
											<xsl:if test="DeliveryAddress/City !=''"><span style="text-transform: capitalize;"><xsl:value-of select="DeliveryAddress/City"/></span><br /></xsl:if>
											<xsl:if test="DeliveryAddress/County !=''"><span style="text-transform: capitalize;"><xsl:value-of select="DeliveryAddress/County"/></span><br /></xsl:if>
											<xsl:if test="DeliveryAddress/PostCode !=''"><span style="text-transform: uppercase;"><xsl:value-of select="DeliveryAddress/PostCode"/></span><br /></xsl:if>
											<xsl:if test="DeliveryAddress/DeliveryInstruction !=''"><small>Delivery instructions: <xsl:value-of select="DeliveryAddress/DeliveryInstruction"/></small></xsl:if>

											</td>
											<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
											</tr></table></td></tr></table>

									</xsl:if>

									<!-- end if Click & Collect, do NOT show Delivery Address info -->

									<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

										<xsl:for-each select="Items/Item[Status!='X']">

											<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top">
												<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0; border-bottom-style: solid; border-bottom-color: #E7E7E7; border-bottom-width: 1px; "><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad three sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 25%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top"><xsl:if test="thumbnail !=''"><img src="{thumbnail}" style="outline: none; text-decoration: none; image-rendering: auto; -ms-interpolation-mode: nearest-neighbor; width: auto; max-width: 100%; float: none; clear: both; display: inline-block; Margin: 20px auto;" align="none" /></xsl:if></td><td class="text-pad five sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 41.666666%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">
											<xsl:if test="Brand !=''"><strong><xsl:value-of select="translate(Brand,
'àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß','&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;')"/></strong><br /></xsl:if>
											<xsl:if test="Description !=''"><span><xsl:value-of select="translate(Description,
'àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß','&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;')"/></span><br /></xsl:if>
											<xsl:if test="giftMessage !=''">Message: <span> "</span><em><xsl:value-of select="translate(giftMessage,
'àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß','&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;')"/></em><span>"</span><br /></xsl:if>
											<xsl:if test="SkuCode !=''"><small style="font-size: 12px; color: #898989; line-height: 13px;">Product code: <xsl:value-of select="SkuCode"/></small><br /></xsl:if><br />
									<span style="font-size: 12px; line-height: 18px;">
										<xsl:if test="Colour !=''">Colour: <span> <xsl:value-of select="Colour"/></span><br /> </xsl:if>
										<xsl:if test="Size !=''">Size: <span> <xsl:value-of select="Size"/></span><br /></xsl:if>
										<xsl:if test="Qty !=''">Qty: <span> <xsl:value-of select="Qty"/> x <xsl:if test="../../Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="../../Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(../../Currency='USD') or (../../Currency='CAD') or (../../Currency='AUD') or (../../Currency='SGD') or (../../Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="../../Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="UnitPrice"/></span><br /></xsl:if>
										</span>
											</td><td class="text-pad four sub-columns last textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; min-width: 0px; width: 33.333333%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 0 10px;" align="right" valign="top"><xsl:if test="UnitPrice !=''"><strong><xsl:if test="../../Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="../../Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(../../Currency='USD') or (../../Currency='CAD') or (../../Currency='AUD') or (../../Currency='SGD') or (../../Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="../../Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="format-number(Qty * UnitPrice,'###,###,###.00')"/></strong><br /></xsl:if></td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td></tr></table></td></tr>

										</xsl:for-each>

									</table>

								</xsl:when>

								<!-- end if NOT abandoned -->

								<!-- if abandoned -->

								<xsl:otherwise>

								</xsl:otherwise>

								<!-- end if abandoned -->

							</xsl:choose>

						</xsl:for-each>

					</xsl:if>

					<!-- end if not Abandoned Delivery Group -->

				</xsl:if>

			<!-- end if not Abandoned -->

			<!-- if  Abandoned -->

				<xsl:if test="SFEmailMessages/emailHeader/emailType = 'ABANDONED_DELIVERY_GROUP'">

					<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Status='X'">

					<xsl:variable name="set" select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[Status='X']" />

					<xsl:variable name="count" select="count($set)" />

					<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup">

						<xsl:choose>

							<!-- if NOT abandoned -->

							<xsl:when test="Status = 'X'">
								<!-- if Click & Collect, do NOT show Delivery Address info -->

								<xsl:if test="DeliveryMethod != 'UKSTORE'">

									<table class="row deliveryGroup" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; border-bottom-style: solid; border-bottom-color: #e7e7e7; border-bottom-width: 1px; Margin-bottom: 10px; letter-spacing: 1px; padding: 0px;"><tr class="header" style="vertical-align: top; text-align: left; border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #e7e7e7; width: 100%; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 16px; font-size: 11px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top"><table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;"><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad autolink mainText" style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 16px; font-size: 11px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">

									<h6 style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: bold; text-align: left; line-height: 21px; word-break: normal; font-size: 18px; letter-spacing: 2px; Margin: 0; padding: 20px 0 20px;" align="left">

									<xsl:choose>
										<xsl:when test="count($set) > 1">
											<xsl:if test="DeliveryGroupId !=''"><span>Delivery Group <xsl:value-of select="concat(position(), ' of ', count($set), '&#xa;')" /></span><br /></xsl:if>
										</xsl:when>
										<xsl:otherwise>
											<span>Delivery Address</span>
										</xsl:otherwise>
									</xsl:choose>
									</h6>
									</td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 16px; font-size: 11px; Margin: 0; padding: 0;" align="left" valign="top"></td></tr></table></td></tr><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top"><table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;"><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad autolink mainText" style="border-collapse: collapse !important; vertical-align: top; text-align: left; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">

										<xsl:if test="DeliveryAddress/DeliveryName !=''"><strong style="text-transform: capitalize; font-weight: normal;"><xsl:value-of select="DeliveryAddress/DeliveryName"/></strong><br /></xsl:if>
										<xsl:if test="DeliveryAddress/Address1 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="DeliveryAddress/Address1"/></span><br /></xsl:if>
										<xsl:if test="DeliveryAddress/Address2 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="DeliveryAddress/Address2"/></span><br /></xsl:if>
										<xsl:if test="DeliveryAddress/Address3 !=''"><span style="text-transform: capitalize;"><xsl:value-of select="DeliveryAddress/Address3"/></span><br /></xsl:if>
										<xsl:if test="DeliveryAddress/City !=''"><span style="text-transform: capitalize;"><xsl:value-of select="DeliveryAddress/City"/></span><br /></xsl:if>
										<xsl:if test="DeliveryAddress/County !=''"><span style="text-transform: capitalize;"><xsl:value-of select="DeliveryAddress/County"/></span><br /></xsl:if>
										<xsl:if test="DeliveryAddress/PostCode !=''"><span style="text-transform: uppercase;"><xsl:value-of select="DeliveryAddress/PostCode"/></span><br /></xsl:if>
										<xsl:if test="DeliveryAddress/DeliveryInstruction !=''"><small>Delivery instructions: <xsl:value-of select="DeliveryAddress/DeliveryInstruction"/></small></xsl:if>

										</td>
										<td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
										</tr></table></td></tr></table>

								</xsl:if>

								<!-- end if Click & Collect, do NOT show Delivery Address info -->

								<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

									<xsl:for-each select="Items/Item[Status!='X']">

										<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top">
											<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0; border-bottom-style: solid; border-bottom-color: #E7E7E7; border-bottom-width: 1px; "><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad three sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 25%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top"><xsl:if test="thumbnail !=''"><img src="{thumbnail}" style="outline: none; text-decoration: none; image-rendering: auto; -ms-interpolation-mode: nearest-neighbor; width: auto; max-width: 100%; float: none; clear: both; display: inline-block; Margin: 20px auto;" align="none" /></xsl:if></td><td class="text-pad five sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 41.666666%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">
										<xsl:if test="Brand !=''"><strong><xsl:value-of select="translate(Brand,
'àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß','&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;')"/></strong><br /></xsl:if>
										<xsl:if test="Description !=''"><span><xsl:value-of select="translate(Description,
'àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß','&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;')"/></span><br /></xsl:if>
										<xsl:if test="giftMessage !=''">Message: <span> "</span><em><xsl:value-of select="translate(giftMessage,
'àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß','&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;')"/></em><span>"</span><br /></xsl:if>
										<xsl:if test="SkuCode !=''"><small style="font-size: 12px; color: #898989; line-height: 13px;">Product code: <xsl:value-of select="SkuCode"/></small><br /></xsl:if><br />
										<span style="font-size: 12px; line-height: 18px;">
										<xsl:if test="Colour !=''">Colour: <span> <xsl:value-of select="Colour"/></span><br /> </xsl:if>
										<xsl:if test="Size !=''">Size: <span> <xsl:value-of select="Size"/></span><br /></xsl:if>
										<xsl:if test="Qty !=''">Qty: <span> <xsl:value-of select="Qty"/> x <xsl:if test="../../Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="../../Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(../../Currency='USD') or (../../Currency='CAD') or (../../Currency='AUD') or (../../Currency='SGD') or (../../Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="../../Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="UnitPrice"/></span><br /></xsl:if>
										</span>
										</td><td class="text-pad four sub-columns last textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; min-width: 0px; width: 33.333333%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 0 10px;" align="right" valign="top"><xsl:if test="UnitPrice !=''"><strong><xsl:if test="../../Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="../../Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(../../Currency='USD') or (../../Currency='CAD') or (../../Currency='AUD') or (../../Currency='SGD') or (../../Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="../../Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="format-number(Qty * UnitPrice,'###,###,###.00')"/></strong><br /></xsl:if></td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td></tr></table></td></tr>

									</xsl:for-each>

									</table>

							</xsl:when>

							<!-- end if NOT abandoned -->

							<!-- if abandoned -->

							<xsl:otherwise>

							</xsl:otherwise>

							<!-- end if abandoned -->

						</xsl:choose>

					</xsl:for-each>

				</xsl:if>

			</xsl:if>

			<!-- end if Abandoned -->

			<!-- do not display Order Totals for Abandoned -->

			<xsl:if test="SFEmailMessages/emailHeader/emailType != 'ABANDONED_DELIVERY_GROUP'">

				<table class="block-grid two-up orderTotals" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; max-width: 600px; padding: 0;">

				<xsl:if test="SFEmailMessages/emailHeader/emailType != 'ORDER_RECEIVED'">

					<xsl:for-each select="SFEmailMessages/EmailDataArea/PaymentMethods/PaymentMethod">

						<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Payment method
			</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

				<xsl:if test="TenderType !=''"><span><xsl:value-of select="TenderType"/></span> </xsl:if>
				<xsl:choose>
					<xsl:when test="Last4Digits !=''">
						<span> (<xsl:value-of select="Last4Digits"/>)</span>
					</xsl:when>
					<xsl:otherwise>
						<span><xsl:if test="../../Order/OrderHeader/Currency='GBP'"> <span> &#xa3;</span></xsl:if><xsl:if test="../../Order/OrderHeader/Currency='EUR'"><span> &#x20AC;</span></xsl:if><xsl:if test="(../../Order/OrderHeader/Currency='USD') or (../../Order/OrderHeader/Currency='CAD') or (../../Order/OrderHeader/Currency='AUD') or (../../Order/OrderHeader/Currency='SGD') or (../../Order/OrderHeader/Currency='HKD')"><span> &#x24;</span></xsl:if><xsl:if test="../../Order/OrderHeader/Currency='CNY'"><span> &#xa5;</span></xsl:if><xsl:value-of select="Value"/></span>
					</xsl:otherwise>
				</xsl:choose>

			</td></tr>

					</xsl:for-each>

				</xsl:if>

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
							Subtotal
						</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

		<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='USD') or (SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='CAD') or (SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='AUD') or (SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='SGD') or (SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='CNY'"><span>&#xa5;</span></xsl:if>
		<!--<xsl:value-of select="format-number(sum(SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item/UnitPrice), '###,###,###.00')"/> -->

		<xsl:call-template name="sumPrice">
			<xsl:with-param name="pList" select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item[Status!='X']"/>
		</xsl:call-template>



					</td>
					</tr>

				<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderHeader">

		<xsl:if test="OrderDiscount !='0.00'">

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">

		Discount

		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

		<xsl:if test="OrderDiscount !=''"><xsl:variable name="OD" select="OrderDiscount"/><span>-<xsl:if test="../OrderHeader/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="../OrderHeader/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(../OrderHeader/Currency='USD') or (../OrderHeader/Currency='CAD') or (../OrderHeader/Currency='AUD') or (../OrderHeader/Currency='SGD') or (../OrderHeader/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="../OrderHeader/Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:apply-templates select="currency" /><xsl:value-of select="translate($OD, '-', '')"/></span></xsl:if>

		</td></tr>

		</xsl:if>

		<xsl:if test="StaffDiscount !='0.00'">

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">

		Staff Discount

		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

		<xsl:if test="StaffDiscount !=''"><xsl:variable name="SD" select="StaffDiscount"/><span>-<xsl:if test="../OrderHeader/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="../OrderHeader/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(../OrderHeader/Currency='USD') or (../OrderHeader/Currency='CAD') or (../OrderHeader/Currency='AUD') or (../OrderHeader/Currency='SGD') or (../OrderHeader/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="../OrderHeader/Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:apply-templates select="currency" /><xsl:value-of select="translate($SD, '-', '')"/></span></xsl:if>

		</td></tr>

		</xsl:if>

		<xsl:if test="OrderTax !='0.00'">

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">

		Tax

		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

		<xsl:if test="OrderTax !=''"><span><xsl:if test="../OrderHeader/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="../OrderHeader/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(../OrderHeader/Currency='USD') or (../OrderHeader/Currency='CAD') or (../OrderHeader/Currency='AUD') or (../OrderHeader/Currency='SGD') or (../OrderHeader/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="../OrderHeader/Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="OrderTax"/></span> </xsl:if>

		</td></tr>

		</xsl:if>

		<xsl:if test="DeductedVAT !='0.00'">

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">

		Deducted VAT

		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

		<xsl:if test="DeductedVAT !=''"><xsl:variable name="DV" select="DeductedVAT"/><span>-<xsl:if test="../OrderHeader/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="../OrderHeader/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(../OrderHeader/Currency='USD') or (../OrderHeader/Currency='CAD') or (../OrderHeader/Currency='AUD') or (../OrderHeader/Currency='SGD') or (../OrderHeader/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="../OrderHeader/Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:apply-templates select="currency" /><xsl:value-of select="translate($DV, '-', '')"/></span></xsl:if>

		</td></tr>

		</xsl:if>

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">

		Delivery

		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

		<xsl:if test="ShippingPrice !=''"><span><xsl:if test="../OrderHeader/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="../OrderHeader/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(../OrderHeader/Currency='USD') or (../OrderHeader/Currency='CAD') or (../OrderHeader/Currency='AUD') or (../OrderHeader/Currency='SGD') or (../OrderHeader/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="../OrderHeader/Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="ShippingPrice"/></span> </xsl:if>

		</td></tr>

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="total" style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: bold; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px;" align="left" valign="top">
		<strong style="font-weight: bold;">Total</strong>
		</td><td class="textright total" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px;" align="right" valign="top">

		<xsl:if test="OrderPrice !=''"><span><xsl:if test="../OrderHeader/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="../OrderHeader/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(../OrderHeader/Currency='USD') or (../OrderHeader/Currency='CAD') or (../OrderHeader/Currency='AUD') or (../OrderHeader/Currency='SGD') or (../OrderHeader/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="../OrderHeader/Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="format-number(OrderPrice, '###,###,###.00')"/></span> </xsl:if>

		</td></tr>

				</xsl:for-each>

				</table>

			</xsl:if>

			<!-- end do not display Order Totals for Abandoned -->

		</xsl:when>

		<!-- end if not Return Refunded -->

		<!-- if Return Refunded -->

		<xsl:otherwise>

			<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

				<xsl:for-each select="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem">

<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top"><table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0; border-bottom-style: solid; border-bottom-color: #E7E7E7; border-bottom-width: 1px; "><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad three sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 25%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top"><xsl:if test="thumbnail !=''"><img src="{thumbnail}" style="outline: none; text-decoration: none; image-rendering: auto; -ms-interpolation-mode: nearest-neighbor; width: auto; max-width: 100%; float: none; clear: both; display: inline-block; Margin: 20px auto;" align="none" /></xsl:if></td><td class="text-pad five sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 41.666666%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">
								<xsl:if test="Brand !=''"><strong><xsl:value-of select="translate(Brand,
'àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß','&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;')"/></strong><br /></xsl:if>
								<xsl:if test="Description !=''"><span><xsl:value-of select="translate(Description,
'àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß','&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;')"/></span><br /></xsl:if>
								<xsl:if test="giftMessage !=''">Message: <span> "</span><em><xsl:value-of select="translate(giftMessage,
'àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß','&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;')"/></em><span>"</span><br /></xsl:if>
								<xsl:if test="SkuCode !=''"><small style="font-size: 12px; color: #898989; line-height: 13px;">Product code: <xsl:value-of select="SkuCode"/></small><br /></xsl:if><br />
								<xsl:if test="Colour !=''"><strong>Colour: </strong><span> <xsl:value-of select="Colour"/></span><br /> </xsl:if>
								<xsl:if test="Size !=''"><strong>Size: </strong><span> <xsl:value-of select="Size"/></span><br /></xsl:if>
								</td><td class="text-pad four sub-columns last textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; min-width: 0px; width: 33.333333%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 0 10px;" align="right" valign="top"><xsl:if test="RefundedValue !=''"><strong><xsl:if test="Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(Currency='USD') or (Currency='CAD') or (Currency='AUD') or (Currency='SGD') or (Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="RefundedValue"/></strong><br /></xsl:if></td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td></tr></table></td></tr>

				</xsl:for-each>

			</table>

				<table class="block-grid two-up orderTotals" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; border-bottom-width: 1px; border-bottom-color: #E7E7E7; border-bottom-style: solid; max-width: 600px; padding: 0;">

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
							Subtotal
						</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

		<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='USD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CAD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='AUD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='SGD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="format-number(sum(SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/RefundedValue), '###,###,###.00')"/>
					</td>
					</tr>

		<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ShippingRefundValue !='0.00'">

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">

		Delivery

		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

		<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='USD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CAD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='AUD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='SGD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="SFEmailMessages/EmailDataArea/ReturnDetails/ShippingRefundValue"/>

		</td></tr>

		</xsl:if>

		<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/GiftboxRefundValue !='0.00'">

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">

		GiftBox

		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

		<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='USD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CAD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='AUD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='SGD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="SFEmailMessages/EmailDataArea/ReturnDetails/GiftboxRefundValue"/>

		</td></tr>

		</xsl:if>

					<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="total" style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: bold; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px;" align="left" valign="top">
		<strong style="font-weight: bold;">Total</strong>
		</td><td class="textright total" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px;" align="right" valign="top">

		<span><xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='GBP'"><span>&#xa3;</span></xsl:if><xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='EUR'"><span>&#x20AC;</span></xsl:if><xsl:if test="(SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='USD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CAD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='AUD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='SGD') or (SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='HKD')"><span>&#x24;</span></xsl:if><xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CNY'"><span>&#xa5;</span></xsl:if><xsl:value-of select="format-number(sum(SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/RefundedValue | SFEmailMessages/EmailDataArea/ReturnDetails/ShippingRefundValue | SFEmailMessages/EmailDataArea/ReturnDetails/GiftboxRefundValue), '###,###,###.00')"/></span>

		</td></tr>

				</table>
		</xsl:otherwise>

		<!-- end if Return Refunded -->

	</xsl:choose>

	</td></tr></table>

</xsl:template>

	<xsl:template name="sumPrice">
		<xsl:param name="pList"/>
		<xsl:param name="pAccum" select="0"/>
		<xsl:choose>
			<xsl:when test="$pList">
				<xsl:variable name="vHead" select="$pList[1]"/>
				<xsl:call-template name="sumPrice">
					<xsl:with-param name="pList" select="$pList[position() > 1]"/>
					<xsl:with-param name="pAccum" select="$pAccum + $vHead/UnitPrice * $vHead/Qty"/>

				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="format-number($pAccum, '###,###,###.00')"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>