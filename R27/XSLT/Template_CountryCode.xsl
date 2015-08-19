<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="CountryCode">

	<xsl:param name="CountryName" />

	<xsl:variable name="ccode">
		<xsl:value-of select="$CountryName" />
	</xsl:variable>

	<xsl:choose>
		<xsl:when test="$ccode = 'AF'">Afghanistan</xsl:when>
		<xsl:when test="$ccode = 'AX'">Aland Islands</xsl:when>
		<xsl:when test="$ccode = 'AL'">Albania</xsl:when>
		<xsl:when test="$ccode = 'DZ'">Algeria</xsl:when>
		<xsl:when test="$ccode = 'AS'">American Samoa</xsl:when>
		<xsl:when test="$ccode = 'AD'">Andorra</xsl:when>
		<xsl:when test="$ccode = 'AO'">Angola</xsl:when>
		<xsl:when test="$ccode = 'AI'">Anguilla</xsl:when>
		<xsl:when test="$ccode = 'AQ'">Antarctica</xsl:when>
		<xsl:when test="$ccode = 'AG'">Antigua and Barbuda</xsl:when>
		<xsl:when test="$ccode = 'AR'">Argentina</xsl:when>
		<xsl:when test="$ccode = 'AM'">Armenia</xsl:when>
		<xsl:when test="$ccode = 'AW'">Aruba</xsl:when>
		<xsl:when test="$ccode = 'AU'">Australia</xsl:when>
		<xsl:when test="$ccode = 'AT'">Austria</xsl:when>
		<xsl:when test="$ccode = 'AZ'">Azerbaijan</xsl:when>
		<xsl:when test="$ccode = 'BS'">Bahamas</xsl:when>
		<xsl:when test="$ccode = 'BH'">Bahrain</xsl:when>
		<xsl:when test="$ccode = 'BD'">Bangladesh</xsl:when>
		<xsl:when test="$ccode = 'BB'">Barbados</xsl:when>
		<xsl:when test="$ccode = 'BY'">Belarus</xsl:when>
		<xsl:when test="$ccode = 'BE'">Belgium</xsl:when>
		<xsl:when test="$ccode = 'BZ'">Belize</xsl:when>
		<xsl:when test="$ccode = 'BJ'">Benin</xsl:when>
		<xsl:when test="$ccode = 'BM'">Bermuda</xsl:when>
		<xsl:when test="$ccode = 'BT'">Bhutan</xsl:when>
		<xsl:when test="$ccode = 'BO'">Bolivia</xsl:when>
		<xsl:when test="$ccode = 'BQ'">Bonaire, Sint Eustatius and Saba</xsl:when>
		<xsl:when test="$ccode = 'BA'">Bosnia and Herzegovina</xsl:when>
		<xsl:when test="$ccode = 'BW'">Botswana</xsl:when>
		<xsl:when test="$ccode = 'BV'">Bouvet Island</xsl:when>
		<xsl:when test="$ccode = 'BR'">Brazil</xsl:when>
		<xsl:when test="$ccode = 'IO'">British Indian Ocean Territory</xsl:when>
		<xsl:when test="$ccode = 'BN'">Brunei</xsl:when>
		<xsl:when test="$ccode = 'BG'">Bulgaria</xsl:when>
		<xsl:when test="$ccode = 'BF'">Burkina Faso</xsl:when>
		<xsl:when test="$ccode = 'BI'">Burundi</xsl:when>
		<xsl:when test="$ccode = 'KH'">Cambodia</xsl:when>
		<xsl:when test="$ccode = 'CM'">Cameroon</xsl:when>
		<xsl:when test="$ccode = 'CA'">Canada</xsl:when>
		<xsl:when test="$ccode = 'CV'">Cape Verde</xsl:when>
		<xsl:when test="$ccode = 'KY'">Cayman Islands</xsl:when>
		<xsl:when test="$ccode = 'CF'">Central African Republic</xsl:when>
		<xsl:when test="$ccode = 'TD'">Chad</xsl:when>
		<xsl:when test="$ccode = 'CL'">Chile</xsl:when>
		<xsl:when test="$ccode = 'CN'">China</xsl:when>
		<xsl:when test="$ccode = 'CX'">Christmas Island</xsl:when>
		<xsl:when test="$ccode = 'CC'">Cocos Islands</xsl:when>
		<xsl:when test="$ccode = 'CO'">Colombia</xsl:when>
		<xsl:when test="$ccode = 'KM'">Comoros</xsl:when>
		<xsl:when test="$ccode = 'CG'">Congo</xsl:when>
		<xsl:when test="$ccode = 'CD'">Congo, Democratic Republic of the</xsl:when>
		<xsl:when test="$ccode = 'CK'">Cook Islands</xsl:when>
		<xsl:when test="$ccode = 'CR'">Costa Rica</xsl:when>
		<xsl:when test="$ccode = 'IC'">Spain - Canary Islands</xsl:when>
		<xsl:when test="$ccode = 'CI'">Côvoire</xsl:when>
		<xsl:when test="$ccode = 'HR'">Croatia</xsl:when>
		<xsl:when test="$ccode = 'CU'">Cuba</xsl:when>
		<xsl:when test="$ccode = 'CW'">Curacao</xsl:when>
		<xsl:when test="$ccode = 'CY'">Cyprus</xsl:when>
		<xsl:when test="$ccode = 'CZ'">Czech Republic</xsl:when>
		<xsl:when test="$ccode = 'DK'">Denmark</xsl:when>
		<xsl:when test="$ccode = 'DJ'">Djibouti</xsl:when>
		<xsl:when test="$ccode = 'DM'">Dominica</xsl:when>
		<xsl:when test="$ccode = 'DO'">Dominican Republic</xsl:when>
		<xsl:when test="$ccode = 'TL'">East Timor</xsl:when>
		<xsl:when test="$ccode = 'EC'">Ecuador</xsl:when>
		<xsl:when test="$ccode = 'EG'">Egypt</xsl:when>
		<xsl:when test="$ccode = 'SV'">El Salvador</xsl:when>
		<xsl:when test="$ccode = 'GQ'">Equatorial Guinea</xsl:when>
		<xsl:when test="$ccode = 'ER'">Eritrea</xsl:when>
		<xsl:when test="$ccode = 'EE'">Estonia</xsl:when>
		<xsl:when test="$ccode = 'ET'">Ethiopia</xsl:when>
		<xsl:when test="$ccode = 'FK'">Falkland Islands</xsl:when>
		<xsl:when test="$ccode = 'FO'">Faroe Islands</xsl:when>
		<xsl:when test="$ccode = 'FJ'">Fiji</xsl:when>
		<xsl:when test="$ccode = 'FI'">Finland</xsl:when>
		<xsl:when test="$ccode = 'FR'">France</xsl:when>
		<xsl:when test="$ccode = 'GF'">French Guiana</xsl:when>
		<xsl:when test="$ccode = 'PF'">French Polynesia</xsl:when>
		<xsl:when test="$ccode = 'TF'">French Southern Territories</xsl:when>
		<xsl:when test="$ccode = 'GA'">Gabon</xsl:when>
		<xsl:when test="$ccode = 'GM'">Gambia</xsl:when>
		<xsl:when test="$ccode = 'GE'">Georgia</xsl:when>
		<xsl:when test="$ccode = 'DE'">Germany</xsl:when>
		<xsl:when test="$ccode = 'GH'">Ghana</xsl:when>
		<xsl:when test="$ccode = 'GI'">Gibraltar</xsl:when>
		<xsl:when test="$ccode = 'GR'">Greece</xsl:when>
		<xsl:when test="$ccode = 'GL'">Greenland</xsl:when>
		<xsl:when test="$ccode = 'GD'">Grenada</xsl:when>
		<xsl:when test="$ccode = 'GP'">Guadeloupe</xsl:when>
		<xsl:when test="$ccode = 'GU'">Guam</xsl:when>
		<xsl:when test="$ccode = 'GT'">Guatemala</xsl:when>
		<xsl:when test="$ccode = 'GN'">Guinea</xsl:when>
		<xsl:when test="$ccode = 'GW'">Guinea-Bissau</xsl:when>
		<xsl:when test="$ccode = 'GY'">Guyana</xsl:when>
		<xsl:when test="$ccode = 'HT'">Haiti</xsl:when>
		<xsl:when test="$ccode = 'HM'">Heard Island and McDonald Islands</xsl:when>
		<xsl:when test="$ccode = 'VA'">Holy See</xsl:when>
		<xsl:when test="$ccode = 'HN'">Honduras</xsl:when>
		<xsl:when test="$ccode = 'HK'">Hong Kong</xsl:when>
		<xsl:when test="$ccode = 'HU'">Hungary</xsl:when>
		<xsl:when test="$ccode = 'IS'">Iceland</xsl:when>
		<xsl:when test="$ccode = 'IN'">India</xsl:when>
		<xsl:when test="$ccode = 'ID'">Indonesia</xsl:when>
		<xsl:when test="$ccode = 'IR'">Iran</xsl:when>
		<xsl:when test="$ccode = 'IQ'">Iraq</xsl:when>
		<xsl:when test="$ccode = 'IE'">Ireland</xsl:when>
		<xsl:when test="$ccode = 'IL'">Israel</xsl:when>
		<xsl:when test="$ccode = 'IT'">Italy</xsl:when>
		<xsl:when test="$ccode = 'JM'">Jamaica</xsl:when>
		<xsl:when test="$ccode = 'JP'">Japan</xsl:when>
		<xsl:when test="$ccode = 'JO'">Jordan</xsl:when>
		<xsl:when test="$ccode = 'KZ'">Kazakhstan</xsl:when>
		<xsl:when test="$ccode = 'KE'">Kenya</xsl:when>
		<xsl:when test="$ccode = 'KI'">Kiribati</xsl:when>
		<xsl:when test="$ccode = 'KW'">Kuwait</xsl:when>
		<xsl:when test="$ccode = 'KG'">Kyrgyzstan</xsl:when>
		<xsl:when test="$ccode = 'LA'">Laos</xsl:when>
		<xsl:when test="$ccode = 'LV'">Latvia</xsl:when>
		<xsl:when test="$ccode = 'LB'">Lebanon</xsl:when>
		<xsl:when test="$ccode = 'LS'">Lesotho</xsl:when>
		<xsl:when test="$ccode = 'LR'">Liberia</xsl:when>
		<xsl:when test="$ccode = 'LY'">Libya</xsl:when>
		<xsl:when test="$ccode = 'LI'">Liechtenstein</xsl:when>
		<xsl:when test="$ccode = 'LT'">Lithuania</xsl:when>
		<xsl:when test="$ccode = 'LU'">Luxembourg</xsl:when>
		<xsl:when test="$ccode = 'MO'">Macau</xsl:when>
		<xsl:when test="$ccode = 'MK'">Macedonia</xsl:when>
		<xsl:when test="$ccode = 'MG'">Madagascar</xsl:when>
		<xsl:when test="$ccode = 'MW'">Malawi</xsl:when>
		<xsl:when test="$ccode = 'MY'">Malaysia</xsl:when>
		<xsl:when test="$ccode = 'MV'">Maldives</xsl:when>
		<xsl:when test="$ccode = 'ML'">Mali</xsl:when>
		<xsl:when test="$ccode = 'MT'">Malta</xsl:when>
		<xsl:when test="$ccode = 'MH'">Marshall Islands</xsl:when>
		<xsl:when test="$ccode = 'MQ'">Martinique</xsl:when>
		<xsl:when test="$ccode = 'MR'">Mauritania</xsl:when>
		<xsl:when test="$ccode = 'MU'">Mauritius</xsl:when>
		<xsl:when test="$ccode = 'YT'">Mayotte</xsl:when>
		<xsl:when test="$ccode = 'MX'">Mexico</xsl:when>
		<xsl:when test="$ccode = 'FM'">Micronesia</xsl:when>
		<xsl:when test="$ccode = 'MD'">Moldova</xsl:when>
		<xsl:when test="$ccode = 'MC'">Monaco</xsl:when>
		<xsl:when test="$ccode = 'MN'">Mongolia</xsl:when>
		<xsl:when test="$ccode = 'ME'">Montenegro</xsl:when>
		<xsl:when test="$ccode = 'MS'">Montserrat</xsl:when>
		<xsl:when test="$ccode = 'MA'">Morocco</xsl:when>
		<xsl:when test="$ccode = 'MZ'">Mozambique</xsl:when>
		<xsl:when test="$ccode = 'MM'">Myanmar</xsl:when>
		<xsl:when test="$ccode = 'NA'">Namibia</xsl:when>
		<xsl:when test="$ccode = 'NR'">Nauru</xsl:when>
		<xsl:when test="$ccode = 'NP'">Nepal</xsl:when>
		<xsl:when test="$ccode = 'NL'">Netherlands</xsl:when>
		<xsl:when test="$ccode = 'NC'">New Caledonia</xsl:when>
		<xsl:when test="$ccode = 'NZ'">New Zealand</xsl:when>
		<xsl:when test="$ccode = 'NI'">Nicaragua</xsl:when>
		<xsl:when test="$ccode = 'NE'">Niger</xsl:when>
		<xsl:when test="$ccode = 'NG'">Nigeria</xsl:when>
		<xsl:when test="$ccode = 'NU'">Niue</xsl:when>
		<xsl:when test="$ccode = 'NF'">Norfolk Island</xsl:when>
		<xsl:when test="$ccode = 'KP'">North Korea</xsl:when>
		<xsl:when test="$ccode = 'MP'">Northern Mariana Islands</xsl:when>
		<xsl:when test="$ccode = 'NO'">Norway</xsl:when>
		<xsl:when test="$ccode = 'OM'">Oman</xsl:when>
		<xsl:when test="$ccode = 'PK'">Pakistan</xsl:when>
		<xsl:when test="$ccode = 'PW'">Palau</xsl:when>
		<xsl:when test="$ccode = 'PS'">Palestinian Territory</xsl:when>
		<xsl:when test="$ccode = 'PA'">Panama</xsl:when>
		<xsl:when test="$ccode = 'PG'">Papua New Guinea</xsl:when>
		<xsl:when test="$ccode = 'PY'">Paraguay</xsl:when>
		<xsl:when test="$ccode = 'PE'">Peru</xsl:when>
		<xsl:when test="$ccode = 'PH'">Philippines</xsl:when>
		<xsl:when test="$ccode = 'PN'">Pitcairn</xsl:when>
		<xsl:when test="$ccode = 'PL'">Poland</xsl:when>
		<xsl:when test="$ccode = 'PT'">Portugal</xsl:when>
		<xsl:when test="$ccode = 'PR'">Puerto Rico</xsl:when>
		<xsl:when test="$ccode = 'QA'">Qatar</xsl:when>
		<xsl:when test="$ccode = 'RE'">Reunion</xsl:when>
		<xsl:when test="$ccode = 'RO'">Romania</xsl:when>
		<xsl:when test="$ccode = 'RU'">Russian Federation</xsl:when>
		<xsl:when test="$ccode = 'RW'">Rwanda</xsl:when>
		<xsl:when test="$ccode = 'BL'">Saint Barthelemy</xsl:when>
		<xsl:when test="$ccode = 'SH'">Saint Helena</xsl:when>
		<xsl:when test="$ccode = 'KN'">Saint Kitts and Nevis</xsl:when>
		<xsl:when test="$ccode = 'LC'">Saint Lucia</xsl:when>
		<xsl:when test="$ccode = 'MF'">Saint Martin (French part)</xsl:when>
		<xsl:when test="$ccode = 'PM'">Saint Pierre and Miquelon</xsl:when>
		<xsl:when test="$ccode = 'VC'">Saint Vincent and the Grenadines</xsl:when>
		<xsl:when test="$ccode = 'WS'">Samoa</xsl:when>
		<xsl:when test="$ccode = 'SM'">San Marino</xsl:when>
		<xsl:when test="$ccode = 'ST'">Sao Tome and Principe</xsl:when>
		<xsl:when test="$ccode = 'SA'">Saudi Arabia</xsl:when>
		<xsl:when test="$ccode = 'SN'">Senegal</xsl:when>
		<xsl:when test="$ccode = 'RS'">Serbia</xsl:when>
		<xsl:when test="$ccode = 'SC'">Seychelles</xsl:when>
		<xsl:when test="$ccode = 'SL'">Sierra Leone</xsl:when>
		<xsl:when test="$ccode = 'SG'">Singapore</xsl:when>
		<xsl:when test="$ccode = 'SX'">Sint Maarten (Dutch part)</xsl:when>
		<xsl:when test="$ccode = 'SK'">Slovakia</xsl:when>
		<xsl:when test="$ccode = 'SI'">Slovenia</xsl:when>
		<xsl:when test="$ccode = 'SB'">Solomon Islands</xsl:when>
		<xsl:when test="$ccode = 'SO'">Somalia</xsl:when>
		<xsl:when test="$ccode = 'ZA'">South Africa</xsl:when>
		<xsl:when test="$ccode = 'GS'">South Georgia and the South Sandwich Islands</xsl:when>
		<xsl:when test="$ccode = 'KR'">South Korea</xsl:when>
		<xsl:when test="$ccode = 'SS'">South Sudan</xsl:when>
		<xsl:when test="$ccode = 'ES'">Spain</xsl:when>
		<xsl:when test="$ccode = 'LK'">Sri Lanka</xsl:when>
		<xsl:when test="$ccode = 'SD'">Sudan</xsl:when>
		<xsl:when test="$ccode = 'SR'">Suriname</xsl:when>
		<xsl:when test="$ccode = 'SJ'">Svalbard and Jan Mayen</xsl:when>
		<xsl:when test="$ccode = 'SZ'">Swaziland</xsl:when>
		<xsl:when test="$ccode = 'SE'">Sweden</xsl:when>
		<xsl:when test="$ccode = 'CH'">Switzerland</xsl:when>
		<xsl:when test="$ccode = 'SY'">Syria</xsl:when>
		<xsl:when test="$ccode = 'TW'">Taiwan</xsl:when>
		<xsl:when test="$ccode = 'TJ'">Tajikistan</xsl:when>
		<xsl:when test="$ccode = 'TZ'">Tanzania</xsl:when>
		<xsl:when test="$ccode = 'TH'">Thailand</xsl:when>
		<xsl:when test="$ccode = 'TG'">Togo</xsl:when>
		<xsl:when test="$ccode = 'TK'">Tokelau</xsl:when>
		<xsl:when test="$ccode = 'TO'">Tonga</xsl:when>
		<xsl:when test="$ccode = 'TT'">Trinidad and Tobago</xsl:when>
		<xsl:when test="$ccode = 'TN'">Tunisia</xsl:when>
		<xsl:when test="$ccode = 'TR'">Turkey</xsl:when>
		<xsl:when test="$ccode = 'TM'">Turkmenistan</xsl:when>
		<xsl:when test="$ccode = 'TC'">Turks and Caicos Islands</xsl:when>
		<xsl:when test="$ccode = 'TV'">Tuvalu</xsl:when>
		<xsl:when test="$ccode = 'UG'">Uganda</xsl:when>
		<xsl:when test="$ccode = 'UA'">Ukraine</xsl:when>
		<xsl:when test="$ccode = 'AE'">United Arab Emirates</xsl:when>
		<xsl:when test="$ccode = 'GB'">United Kingdom</xsl:when>
		<xsl:when test="$ccode = 'US'">United States</xsl:when>
		<xsl:when test="$ccode = 'UM'">United States Minor Outlying Islands</xsl:when>
		<xsl:when test="$ccode = 'UY'">Uruguay</xsl:when>
		<xsl:when test="$ccode = 'UZ'">Uzbekistan</xsl:when>
		<xsl:when test="$ccode = 'VU'">Vanuatu</xsl:when>
		<xsl:when test="$ccode = 'VE'">Venezuela</xsl:when>
		<xsl:when test="$ccode = 'VN'">Viet Nam</xsl:when>
		<xsl:when test="$ccode = 'VG'">Virgin Islands, British</xsl:when>
		<xsl:when test="$ccode = 'VI'">Virgin Islands, US</xsl:when>
		<xsl:when test="$ccode = 'WF'">Wallis and Futuna</xsl:when>
		<xsl:when test="$ccode = 'EH'">Western Sahara</xsl:when>
		<xsl:when test="$ccode = 'YE'">Yemen</xsl:when>
		<xsl:when test="$ccode = 'ZM'">Zambia</xsl:when>
		<xsl:when test="$ccode = 'ZW'">Zimbabwe</xsl:when>
	</xsl:choose>

</xsl:template>

</xsl:stylesheet>