GROUP_TYPE = 'Group'
GROUP_CREATOR = 'Host'

TIMEZONES = [
["(GMT-06:00) Central Time (US & Canada)", "America/Chicago"],
["(GMT-08:00) Pacific Time (US & Canada)", "America/Los_Angeles"],
["(GMT-07:00) Mountain Time (US & Canada)", "America/Denver"],
["(GMT-05:00) Eastern Time (US & Canada)", "America/New_York"],
["---------------------------------------------------------------------------------------", "disable"],
["(GMT-11:00) Midway Island, Samoa", "Pacific/Midway"],
["(GMT-10:00) Hawaii-Aleutian", "America/Adak"],
["(GMT-10:00) Hawaii", "Etc/GMT+10"],
["(GMT-09:30) Marquesas Islands", "Pacific/Marquesas"],
["(GMT-09:00) Gambier Islands", "Pacific/Gambier"],
["(GMT-09:00) Alaska", "America/Anchorage"],
["(GMT-08:00) Tijuana, Baja California", "America/Ensenada"],
["(GMT-08:00) Pitcairn Islands", "Etc/GMT+8"],
["(GMT-08:00) Pacific Time (US & Canada)", "America/Los_Angeles"],
["(GMT-07:00) Mountain Time (US & Canada)", "America/Denver"],
["(GMT-07:00) Chihuahua, La Paz, Mazatlan", "America/Chihuahua"],
["(GMT-07:00) Arizona", "America/Dawson_Creek"],
["(GMT-06:00) Saskatchewan, Central America", "America/Belize"],
["(GMT-06:00) Guadalajara, Mexico City, Monterrey", "America/Cancun"],
["(GMT-06:00) Easter Island", "Chile/EasterIsland"],
["(GMT-06:00) Central Time (US & Canada)", "America/Chicago"],
["(GMT-05:00) Eastern Time (US & Canada)", "America/New_York"],
["(GMT-05:00) Cuba", "America/Havana"],
["(GMT-05:00) Bogota, Lima, Quito, Rio Branco", "America/Bogota"],
["(GMT-04:30) Caracas", "America/Caracas"],
["(GMT-04:00) Santiago", "America/Santiago"],
["(GMT-04:00) La Paz", "America/La_Paz"],
["(GMT-04:00) Faukland Islands", "Atlantic/Stanley"],
["(GMT-04:00) Brazil", "America/Campo_Grande"],
["(GMT-04:00) Atlantic Time (Goose Bay)", "America/Goose_Bay"],
["(GMT-04:00) Atlantic Time (Canada)", "America/Glace_Bay"],
["(GMT-03:30) Newfoundland", "America/St_Johns"],
["(GMT-03:00) UTC-3", "America/Araguaina"],
["(GMT-03:00) Montevideo", "America/Montevideo"],
["(GMT-03:00) Miquelon, St. Pierre", "America/Miquelon"],
["(GMT-03:00) Greenland", "America/Godthab"],
["(GMT-03:00) Buenos Aires", "America/Argentina/Buenos_Aires"],
["(GMT-03:00) Brasilia", "America/Sao_Paulo"],
["(GMT-02:00) Mid-Atlantic", "America/Noronha"],
["(GMT-01:00) Cape Verde Is.", "Atlantic/Cape_Verde"],
["(GMT-01:00) Azores", "Atlantic/Azores"],
["(GMT) Greenwich Mean Time : Belfast", "Europe/Belfast"],
["(GMT) Greenwich Mean Time : Dublin", "Europe/Dublin"],
["(GMT) Greenwich Mean Time : Lisbon", "Europe/Lisbon"],
["(GMT) Greenwich Mean Time : London", "Europe/London"],
["(GMT) Monrovia, Reykjavik", "Africa/Abidjan"],
["(GMT+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna", "Europe/Amsterdam"],
["(GMT+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague", "Europe/Belgrade"],
["(GMT+01:00) Brussels, Copenhagen, Madrid, Paris", "Europe/Brussels"],
["(GMT+01:00) West Central Africa", "Africa/Algiers"],
["(GMT+01:00) Windhoek", "Africa/Windhoek"],
["(GMT+02:00) Beirut", "Asia/Beirut"],
["(GMT+02:00) Cairo", "Africa/Cairo"],
["(GMT+02:00) Gaza", "Asia/Gaza"],
["(GMT+02:00) Harare, Pretoria", "Africa/Blantyre"],
["(GMT+02:00) Jerusalem", "Asia/Jerusalem"],
["(GMT+02:00) Minsk", "Europe/Minsk"],
["(GMT+02:00) Syria", "Asia/Damascus"],
["(GMT+03:00) Moscow, St. Petersburg, Volgograd", "Europe/Moscow"],
["(GMT+03:00) Nairobi", "Africa/Addis_Ababa"],
["(GMT+03:30) Tehran", "Asia/Tehran"],
["(GMT+04:00) Abu Dhabi, Muscat", "Asia/Dubai"],
["(GMT+04:00) Yerevan", "Asia/Yerevan"],
["(GMT+04:30) Kabul", "Asia/Kabul"],
["(GMT+05:00) Ekaterinburg", "Asia/Yekaterinburg"],
["(GMT+05:00) Tashkent", "Asia/Tashkent"],
["(GMT+05:30) Chennai, Kolkata, Mumbai, New Delhi", "Asia/Kolkata"],
["(GMT+05:45) Kathmandu", "Asia/Katmandu"],
["(GMT+06:00) Astana, Dhaka", "Asia/Dhaka"],
["(GMT+06:00) Novosibirsk", "Asia/Novosibirsk"],
["(GMT+06:30) Yangon (Rangoon)", "Asia/Rangoon"],
["(GMT+07:00) Bangkok, Hanoi, Jakarta", "Asia/Bangkok"],
["(GMT+07:00) Krasnoyarsk", "Asia/Krasnoyarsk"],
["(GMT+08:00) Beijing, Chongqing, Hong Kong, Urumqi", "Asia/Hong_Kong"],
["(GMT+08:00) Irkutsk, Ulaan Bataar", "Asia/Irkutsk"],
["(GMT+08:00) Perth", "Australia/Perth"],
["(GMT+08:45) Eucla", "Australia/Eucla"],
["(GMT+09:00) Osaka, Sapporo, Tokyo", "Asia/Tokyo"],
["(GMT+09:00) Seoul", "Asia/Seoul"],
["(GMT+09:00) Yakutsk", "Asia/Yakutsk"],
["(GMT+09:30) Adelaide", "Australia/Adelaide"],
["(GMT+09:30) Darwin", "Australia/Darwin"],
["(GMT+10:00) Brisbane", "Australia/Brisbane"],
["(GMT+10:00) Hobart", "Australia/Hobart"],
["(GMT+10:00) Vladivostok", "Asia/Vladivostok"],
["(GMT+10:30) Lord Howe Island", "Australia/Lord_Howe"],
["(GMT+11:00) Solomon Is., New Caledonia", "Etc/GMT-11"],
["(GMT+11:00) Magadan", "Asia/Magadan"],
["(GMT+11:30) Norfolk Island", "Pacific/Norfolk"],
["(GMT+12:00) Anadyr, Kamchatka", "Asia/Anadyr"],
["(GMT+12:00) Auckland, Wellington", "Pacific/Auckland"],
["(GMT+12:00) Fiji, Kamchatka, Marshall Is.", "Etc/GMT-12"],
["(GMT+12:45) Chatham Islands", "Pacific/Chatham"],
["(GMT+13:00) Nuku Alofa", "Pacific/Tongatapu"],
["(GMT+14:00) Kiritimat", "Pacific/Kiritimati"]
]
DIARY_SNIPPET_DESC = %(In iKONVERSE, you can have any kind of #{ GROUP_TYPE }, even one with yourself. A personal diary is great place to reflect privately and jot down your own thoughts, resolutions for the year, ideas, philosophies, feelings and more. Soon you will also be able to attach images, links and files.

We have already set up a diary for you, which is a #{ GROUP_TYPE } in which you are the only participant and observer. No one else can see it. Any day that you feel like making an entry, simply start a new topic with that day's date as the topic and write down your thoughts in the snippets below. It is as simple as that. Now you can read and write your diary anywhere and not have to worry about someone accidentally discovering your little black book!

And of course if you do not want a personal diary #{ GROUP_TYPE }, simply click on the settings wheel on the right of the page and select "Delete #{ GROUP_TYPE }." It is so easy!)

UPDATES_SNIPPET_DESC = %(In iKONVERSE, you can easily update your connections on your most current news and happenings. "Updates" is great way to let your friends follow you and get their reactions to your news. Soon you will also be able to attach images, links and files.

We have already set up this "Updates" #{ GROUP_TYPE } for you in which anything you say will also be seen by your friends automatically. They in turn can write their reactions to your posts right here. Any day that you feel like making an ent...)

STATELIST = [
["AL","Alabama"],
["AK","Alaska"],
["AZ","Arizona"],
["AR","Arkansas"],
["CA","California"],
["CO","Colorado"],
["CT","Connecticut"],
["DE","Delaware"],
["DC","District of Columbia"],
["FL""Florida"],
["GA","Georgia"],
["HI","Hawaii"],
["ID","Idaho"],
["IL","Illinois"],
["IN","Indiana"],
["IA","Iowa"],
["KS","Kansas"],
["KY","Kentucky"],
["LA","Louisiana"],
["ME","Maine"],
["MD","Maryland"],
["MA","Massachutsetts"],
["MI","Michigan"],
["MN","Minnesota"],
["MS","Mississippi"],
["MO","Missouri"],
["MT","Montana"],
["NE","Nebraska"],
["NV","Nevada"],
["NH","New Hampshire"],
["NJ","New Jersey"],
["NM","New Mexico"],
["NY","New York"],
["NC","North Carolina"],
["ND","North Dakota"],
["OH","Ohio"],
["OK","Oklahoma"],
["OR","Oregon"],
["PA","Pennsylvania"],
["RI","Rhode Island"],
["SC","South Carolina"],
["SD","South Dakota"],
["TN","Tennessee"],
["TX","Texas"],
["UT","Utah"],
["VT","Vermont"],
["VA","Virginia"],
["WA","Washington"],
["WV","West Virginia"],
["WI","Wisconsin"],
["WY","Wyoming"],
]

TAB_NAME = {
  "dashboard" => "Groups",
  "connections_dashboard" => "Followed",
  "open_dashboard" => "Public",
  "user_notifications" => "Notifications"
}

BULLET_POINTS = <<-END
  Work with the world's easiest to use enterprise social network
  Set up new team rooms and invite members in seconds
  Add team files, calendars and to-do lists
  Automatically organize your #{ GROUP_TYPE.pluralize } and files by topic
  Use for private, public and panel discussions or even focus groups
END

SIGN_UP_HEADER = "Welcome To iKONVERSE Team Works"

SIGN_UP_TEXT = "Try It Now For Free!"

PLANS = {
  enterprise: { amount: 15, interval: 'month' }
}

domain_pattern = %r(@[\w|\d]+([\.|\-][\w|\d]+)+$)
DOMAIN_PATTERN = %r(^#{ domain_pattern.source })i
EMAIL_PATTERN = %r(^.*?[\w|\d]#{ domain_pattern.source })i

DEFAULT_SUBDOMAIN = 'www'
PROMO_CUSTOMER_ID = 'free'
