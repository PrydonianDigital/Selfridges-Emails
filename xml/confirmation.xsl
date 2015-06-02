<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes" encoding="utf-8" doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN" doctype-system="_http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" ></xsl:output>

<xsl:template match="/">

<html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
<head>
<title>You found something extraordinary</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<!--[if gte mso 9]><xml>
<o:OfficeDocumentSettings>
<o:AllowPNG/>
<o:PixelsPerInch>96</o:PixelsPerInch>
</o:OfficeDocumentSettings>
</xml><![endif]-->
<link rel="stylesheet" href="selfridges.css" /> <!-- For testing only -->
<style>

</style>
</head>
<body>
<table class="body">
	<tr>
		<td class="center" align="center" valign="top">
			<center>
				<table class="container">
					<tr>
						<td>

							<table class="row" id="logo">
								<tr>
									<td class="wrapper last">

										<table class="twelve columns">
											<tr>
												<td>
													<a href="https://www.selfridges.com/"><img src="https://gallery.mailchimp.com/26a7f5ec19457cdc4b06aac4f/images/b751ae45-3f64-462e-a223-15ee35bb3123.png" alt="selfridges-logo" width="145" height="23" /></a>
												</td>
												<td class="expander"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>

							<table class="row">
								<tr>
									<td class="wrapper last">

										<table class="twelve columns">
											<tr>
												<td class="center">
													<center>
														<h5>You found something extraordinary</h5>
													</center>
												</td>
												<td class="expander"></td>
											</tr>
										</table>

									</td>
								</tr>
							</table>

							<table class="row">
								<tr>
									<td class="wrapper">

										<table class="seven columns">
											<tr>
												<td>

<p><strong>
<xsl:for-each select="//Recipient">
Dear <xsl:value-of select="Title" /><xsl:text> </xsl:text><xsl:value-of select="FirstName" /><xsl:text> </xsl:text><xsl:value-of select="Surname" />
</xsl:for-each>
</strong></p>
<p>You fell for something extraordinary at <a href="#">selfridges.com</a> - and now you have an order confirmation number to prove it.</p>

<p>Your order number is <strong>
<xsl:for-each select="//EmailDataArea">
<xsl:value-of select="Order/OrderHeader/OrderId" />
</xsl:for-each>
</strong>. Please quote this if you have any queries. </p>

												</td>
												<td class="expander"></td>
											</tr>
										</table>

									</td>
									<td class="wrapper last">

										<table class="five columns hide-for-small">
											<tr>
												<td>

													<img width="230" height="258" src="http://images.selfridges.com/is/image/selfridges/140506_welcome_email_bag?scl=1&amp;qlt=91,1" />

												</td>
												<td class="expander"></td>
											</tr>
										</table>

									</td>
								</tr>
							</table>

							<table cass="row">
								<tr>
									<td class="wrapper last">
										<table class="twelve columns">
											<tr>
												<td>
													<h6 class="yourOrder">Your Order</h6>
												</td>
												<td class="expander"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>

							<table class="row">
								<tr>
									<td class="wrapper last">

										<table class="twelve columns">
											<tr>
												<td class="panel center" style="text-transform: capitalize;">
													Delivery to:

<xsl:for-each select="//EmailDataArea">

<xsl:value-of select="Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/DeliveryName" /><xsl:text> </xsl:text><xsl:value-of select="Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address1" /><xsl:text>, </xsl:text><xsl:value-of select="Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address2" /><xsl:text>, </xsl:text><xsl:value-of select="Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/Address3" /><xsl:text>, </xsl:text><xsl:value-of select="Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/City" /><xsl:text>, </xsl:text><xsl:value-of select="Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/County" /><xsl:text>&#10;</xsl:text><xsl:value-of select="Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/PostCode" /><xsl:text>, </xsl:text><xsl:value-of select="Order/OrderDeliveryGroups/OrderDeliveryGroup/DeliveryAddress/CountryCode" />

</xsl:for-each>

												</td>
												<td class="expander"></td>
											</tr>
										</table>

									</td>
								</tr>
							</table>

							<table class="row orderHeader hide-for-small">
								<tr>
									<td class="wrapper">
										<table class="eight column">
											<tr>
												<td class="four sub-columns text-pad">
													<strong>Item</strong>
												</td>
												<td class="eight sub-columns text-pad">
													<strong>Details</strong>
												</td>
											</tr>
										</table>
									</td>
									<td class="wrapper last">
										<table class="four column">
											<tr>
												<td class="four sub-columns text-pad textright">
													<strong>Total</strong>
												</td>
												<td class="expander"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>

							<xsl:for-each select="//EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item">
							<table class="row itemDetails">
								<tr>
									<td class="wrapper">
										<table class="eight columns">
											<tr>
												<td class="text-pad four sub-columns">
													<img src='{thumbnail}' />
												</td>
												<td class="text-pad eight sub-columns last">
													<strong><xsl:value-of select="Brand" /></strong><br />
													<xsl:value-of select="Description" /><br />
													<small>Product code: <xsl:value-of select="SkuCode" /></small><br /><br />
													<strong><xsl:value-of select="Colour" /></strong><br />
													<strong><xsl:value-of select="Size" /></strong><br />
													<strong><xsl:value-of select="Qty" /></strong><br />
													<strong>£<xsl:value-of select="UnitPrice" /></strong><br />
												</td>
												<td class="expander"></td>
											</tr>
										</table>
									</td>
									<td class="wrapper last">
										<table class="four column">
											<tr>
												<td class="text-pad textright">
													<strong>£<xsl:value-of select="TotalPrice" /></strong>
												</td>
												<td class="expander"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							</xsl:for-each>

							<table class="row">
								<tr>
									<td class="wrapper last">
										<table class="twelve columns">
											<tr>
												<td>
													<p>[EMV DYN]sign off message[EMV /DYN],<br /><strong>Selfridges &amp; Co.</strong></p>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>

							<table class="row">
								<tr>
									<td class="wrapper last">
										<table class="twelve columns">
											<tr>
												<td class="panel">
													<p>If you would like to get in touch with our Customer Services team, please contact us <a href="http://www.selfridges.com/en/StaticPage/ContactUs">here</a> or call <a href="tel:0800 123 400">0800 123 400</a> (<a href="tel:+44 113 369 8040">+44 113 369 8040</a> from overseas)</p>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>

						</td>
					</tr>
				</table>

			</center>
		</td>
	</tr>
</table>


</body>
</html>


</xsl:template>

</xsl:stylesheet>