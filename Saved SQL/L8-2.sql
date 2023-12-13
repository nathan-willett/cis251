use ap;
SELECT vendor_name, concat_ws(' ', vendor_contact_last_name, vendor_contact_first_name) AS contact_name,
	vendor_city, vendor_state, vendor_zip_code
FROM vendors
WHERE LEFT(vendor_zip_code, 2) = '20'
ORDER BY contact_name