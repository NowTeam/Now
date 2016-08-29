local function run(msg)
	return http.request('http://umbrella.shayan-soft.ir/date/ok.php')
end

return {
	description = "Shamsi-Miladi Date",
	usagehtm = '<tr><td align="center">date</td><td align="right">تاریخ شمسی یا جلالی و تاریخ میلادی</td></tr>',
	usage = "date : تاريخ شمسی - میلادی",
	patterns = {
		"^(تاریخ)$",
		}, 
	run = run 
}
