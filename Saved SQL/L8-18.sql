use ap;
SELECT vendor_name, vendor_city,
IF((vendor_city = 'Fresno') OR (vendor_city = 'Sacramento'), 'Yes', 'No') AS is_fresno_or_sac
FROM vendors