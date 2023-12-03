-- changelog tab -- 
local Tabs = require 'comfy_panel.main'

local function add_changelog(player, element)
	local changelog_scrollpanel = element.add { type = "scroll-pane", name = "scroll_pane", direction = "vertical", horizontal_scroll_policy = "never", vertical_scroll_policy = "auto"}
	changelog_scrollpanel.style.maximal_height = 530
	
	local changelog_change = {}
	local function add_entry(date, who, what)
		table.insert(changelog_change, date)
		table.insert(changelog_change, what)
		table.insert(changelog_change, who)
	end

	add_entry("2023-11-29", "cliff_build", "Add /spectator-chat command")
	add_entry("2023-11-29", "cliff_build", "Add a spectator-force log message about which team completed a research")
	add_entry("2023-11-27", "Ragnarok77", "Decreased red /green and increased mil/blue science values")
	add_entry("2023-11-27", "BigFatDuck", "fix boss units not traveling with the pack")
	add_entry("2023-11-16", "Ragnarok77", "Bugfix : ignore works now even if different forces or /sth , /nth or /s used")
	add_entry("2023-11-16", "Ragnarok77", "Bugfix : total playtime is now logged")
	add_entry("2023-11-16", "Ragnarok77", "New feature : Add /save-quickbar and /load-quickbar commands")
	add_entry("2023-11-03", "DrButtons", "Add instant map reset command with optional seed argument")
	add_entry("2023-11-03", "developer-8", "Fix server crash on debug_getinfo with nil handler")
	add_entry("2023-11-03", "TheBigZet", "Remove more unused modules")
	add_entry("2023-10-27", "cogito123", "perf : optim dmg event, refresh delay for healthbar of bosses increased")
	add_entry("2023-10-27", "DrButtons", "perf : Increase refresh threat min delay and optim on code")
	add_entry("2023-10-27", "cogito123", "perf : Biter terrain tiles optimization")
	add_entry("2023-10-27", "Ragnarok77", "Reveal map at start")
	add_entry("2023-10-27", "DrButtons", "Add info.json file")
	add_entry("2023-10-19", "developer-8", "Special game Mixed ore map")
	add_entry("2023-10-19", "BigFatDuck", "bugfix : NaN propagation in strike code generating desynch")
	add_entry("2023-10-07", "Ragnarok77", "Update changelog script to have it ordered")
	add_entry("2023-10-03", "PlayerNoon", "Introduce map reroll")
	add_entry("2023-10-03", "PlayerNoon", "Special game disable sciences from sending")
	add_entry("2023-09-29", "penguinencounter", "Improved /inventory performance")
	add_entry("2023-07-20", "developer-8", "Allow change_active_item_group_for_filters for spectators")
	add_entry("2023-07-14", "developer-8", "Allows group name and description to include spaces and punctuation characters")
	add_entry("2023-07-14", "Ragnarok77", "Set permission selected_tab_changed to true even when frozen so ui not broken anymore for special/groups")
	add_entry("2023-07-13", "DrButtons", "Remove Unused Module and terrain code")
	add_entry("2023-07-13", "TheBigZet", "Clear area of rocks for placing silo's turret pair (redo)")
	add_entry("2023-06-29", "gabrielchl", "feat: add send to server in admin gui")
	add_entry("2023-06-17", "Ragnarok77", "Refined concrete within starting area walls")
	add_entry("2023-06-17", "Ragnarok77", "Bugfix special-events : Prevent bots from placing disabled entities")
	add_entry("2023-05-07", "BigFatDuck", "refactor out existing AI functions cleanly into 'Strikes' and 'Targets'")
	add_entry("2023-01-29", "PlayerNoon", "fix autounlock uranium ammo after sulfur reaserch")
	add_entry("2023-01-27", "Ragnarok77", "Special event shared evo and throws")
	add_entry("2023-01-26", "Ragnarok77", "Bugfix to avoid spam of error in log when decon")
	add_entry("2023-01-26", "voski", "Do not allow players to create a new group with the name of an existing group")
	add_entry("2023-01-26", "gabrielchl", "feat(gui): show game speed next to game time")
	add_entry("2023-01-26", "PlayerNoon", "fix team name on biters spotted")
	add_entry("2023-01-26", "PlayerNoon", "difficulty_vote: prevent voting same difficulty.")
	add_entry("2022-12-18", "developer-8", "Change river function")
	add_entry("2022-12-18", "developer-8", "Add New Year Island decorations")
	add_entry("2022-12-18", "developer-8", "Fix Limited lives desync")
	add_entry("2022-12-18", "developer-8", "Perf: Improve river check function")
	add_entry("2022-11-22", "TheBigZet", "Replaced element_style() with gui_style()")
	add_entry("2022-11-22", "Ragnarok77", "New feature : show amount of votes of diff in gui")
	add_entry("2022-11-22", "developer-8", "Special game: Limited lives")
	add_entry("2022-11-18", "TheBigZet", "Enable profiler")
	add_entry("2022-10-25", "Ragnarok77", "French translation of welcome message")
	add_entry("2022-09-12", "TheBigZet", "Develop to master")
	add_entry("2022-09-11", "TheBigZet", "Dev backport")
	add_entry("2022-09-11", "Ragnarok77", "Fix threat boss issue going negative too often (waves were oversized) and frozen boss bug and added boss announce")
	add_entry("2022-08-27", "TheBigZet", "New histories")
	add_entry("2022-08-06", "TheBigZet", "Added path to errors from event_core")
	add_entry("2022-08-06", "Ragnarok77", "Show big threat value with k or m at end of text")
	add_entry("2022-08-06", "TheBigZet", "Enabled editor and config in spectator")
	add_entry("2022-08-05", "developer-8", "Fix spectator in vehicle")
	add_entry("2022-08-05", "developer-8", "Fix ghost rotation by spectator")
	add_entry("2022-08-05", "Ragnarok77", "Ura ammo and kovarex researched when ura processing is researched, same for gate with wall")
	add_entry("2022-07-30", "Ragnarok77", "Prevent pathfinder crossing river(made by developer-8, not Ragnarok77)")
	add_entry("2022-07-30", "AwesomePatrol", "perf: Small improvements to biter reanimation logic")
	add_entry("2022-07-30", "TheBigZet", "Disabled polls")
	add_entry("2022-06-25", "Ragnarok77", "Perf : No find entities used when defense are built are far from nest")
	add_entry("2022-06-25", "TheBigZet", "Added mixed send functionality")
	add_entry("2022-06-25", "Ragnarok77", "Anti afk system")
	add_entry("2022-06-25", "Ragnarok77", "Global speaker won't nuke speakers in jail and jail speaker heard by all forces")
	add_entry("2022-06-09", "Ragnarok77", "Implementation of boss")
	add_entry("2022-06-09", "mysticamber", "Backport")
	add_entry("2022-05-31", "Ragnarok77", "added launch silo sentence in welcome message")
	add_entry("2022-05-31", "mysticamber", "Dev backport")
	add_entry("2022-05-31", "Ragnarok77", "Increase ura frequency by 10%, copper frequency by 15%")
	add_entry("2022-05-31", "Ragnarok77", "Added uranium ammo research researched by default")
	add_entry("2022-05-15", "Ragnarok77", "Fix messing research queue exploit in jail")
	add_entry("2022-05-15", "TheBigZet", "Special games gui tweaks")
	add_entry("2022-05-15", "TheBigZet", "Removed auto research of silo")
	add_entry("2022-05-15", "TheBigZet", "Disabled manual rocket launch")
	add_entry("2022-05-15", "Ragnarok77", "Fixed exploit landfill enemy side and no decon on enemy side")
	add_entry("2022-05-12", "TheBigZet", "Changed yellow sci mutagen from 1200 to 1600")
	add_entry("2022-05-06", "TheBigZet", "Revert 'Admin panel redo'")
	add_entry("2022-04-30", "TheBigZet", "Admin panel redo")
	add_entry("2022-04-22", "mysticamber", "Welcome message")
	add_entry("2022-04-20", "TheBigZet", "Special game disabled research")
	add_entry("2022-04-20", "TheBigZet", "Added auto-shouting after game ending")
	add_entry("2022-04-20", "TheBigZet", "Changed jail_song variables to local")
	add_entry("2022-04-20", "TheBigZet", "Special game: Disabled entities")
	add_entry("2022-04-13", "Ragnarok77", "Fix an exploit with landfill")
	add_entry("2022-04-13", "gsquaredxc", "Change GitHub link to this GitHub")
	add_entry("2022-04-13", "TheBigZet", "Fixed double printing shouts for admins")
	add_entry("2022-02-01", "developer-8", "Revert 'Add holiday decorations to the island'")
	add_entry("2021-12-28", "Ragnarok77", "Cancel crafting queue when going to spectate")
	add_entry("2021-12-28", "Ragnarok77", "Renamed autotag to just East or West for shorter name instead")
	add_entry("2021-12-25", "1pulse", "holidays")
	add_entry("2021-12-25", "Ragnarok77", "Create troll song at map init in jail")
	add_entry("2021-12-25", "developer-8", "Add holiday decorations to the island")
	add_entry("2021-12-19", "developer-8", "Mirror decoratives to south")
	add_entry("2021-12-17", "Ragnarok77", "Auto tagging outpost")
	add_entry("2021-12-15", "Ragnarok77", "Increased copper and stone size by 10%")
	add_entry("2021-12-15", "Ragnarok77", "Add changelog tab")
	add_entry("2021-12-15", "AwesomePatrol", "Set path_finder settings")
	add_entry("2021-12-15", "AwesomePatrol", "Add more threat to compensate revive")
	add_entry("2021-12-15", "AwesomePatrol", "Clear clipboard on game join")
	add_entry("2021-12-12", "Ragnarok77", "Update/prevent landfilling by untrusted user")
	add_entry("2021-12-12", "Ragnarok77", "Removed trust check on clear-corpses command")
	add_entry("2021-12-12", "Ragnarok77", "Fix silo grief (mirroring)")
	add_entry("2021-12-09", "DrButtons", "fix antigrief inconsistency")
	add_entry("2021-12-09", "Ragnarok77", "Limited threshold of biters reviving to 90% chance")
	add_entry("2021-12-09", "developer-8", "Do not allow ghosts on enemy side")
	add_entry("2021-12-09", "AwesomePatrol", "Fix difficulty GUI lag spikes")
	add_entry("2021-12-09", "Ragnarok77", "Added infinite spy when white science is thrown")
	add_entry("2021-12-06", "TheBigZet", "Added special_games system")
	add_entry("2021-12-06", "AwesomePatrol", "Improve biter performance")
	add_entry("2021-11-25", "developer-8", "Remove vehicle from silo")
	add_entry("2021-11-21", "TheBigZet", "Ban improvements")
	add_entry("2021-11-21", "TheBigZet", "First join gui minor tweaks")
	add_entry("2021-11-19", "TheBigZet", "Quick and dirty way to fix desync")
	add_entry("2021-11-10", "Tomab", "Improved readme")
	add_entry("2021-11-08", "Tomab", "Change text warning to accurately reflect mechanics")
	add_entry("2021-10-30", "mysticamber", "shout-fix: fix shout logging so that non admin shouts get logged too")
	add_entry("2021-10-30", "mysticamber", "mutes - make mute great again")
	add_entry("2021-10-11", "TheBigZet", "Top gui visual cleanup")
	add_entry("2021-10-11", "TheBigZet", "Add join_random_button")
	add_entry("2021-09-19", "gabrielchl", "Print msg to admin upon offshore pump mining")
	add_entry("2021-09-19", "mysticamber", "spying-fix: if you've chosen a team, remove space sci button")
	add_entry("2021-09-14", "mysticamber", "discord-log-shout: log shout messages to discord")
	add_entry("2021-08-31", "mysticamber", "we-survivor: automate sending ppl to spec. Make the delay to return to team configurable")
	add_entry("2021-08-13", "AwesomePatrol", "Fix evo reset when admins change difficulty")
	add_entry("2021-08-13", "mysticamber", "Add comment to clear_copy_history")
	add_entry("2021-07-24", "mysticamber", "clear-bp-history: overwrite copy history with miner")
	add_entry("2021-07-18", "mysticamber", "inverse-game: disable friendly_fire")
	add_entry("2021-07-17", "mysticamber", "inverse-game")
	add_entry("2021-06-27", "mysticamber", "Pixie dust")
	add_entry("2021-06-20", "cogito123", "Remove all turrets from target pool")
	add_entry("2021-06-16", "cogito123", "Fix truncated ores around spawn area")
	add_entry("2021-06-08", "cogito123", "Add support for configurable spawn area ore patches")
	add_entry("2021-06-08", "AwesomePatrol", "2nd attempt at increasing difficulty")
	add_entry("2021-06-05", "cogito123", "Rework unit reanimation system")
	add_entry("2021-05-23", "1pulse", "Revert 'few commands for WE. no need revert after event end. (i think so :D )'")
	add_entry("2021-05-23", "ghost", "few commands for WE. no need revert after event end. (i think so :D )")
	add_entry("2021-05-23", "cogito123", "Biters bugfixes")
	add_entry("2021-05-22", "cogito123", "Remove additional teleport during game over phase")
	add_entry("2021-05-20", "cogito123", "Force chunk replication into lockstep")
	add_entry("2021-05-17", "cogito123", "Improvement to map generation performance")
	add_entry("2021-05-15", "AwesomePatrol", "Always use a standard team name in post-game discord message (and more QoL stuff)")
	add_entry("2021-05-15", "AwesomePatrol", "Add two wood to inventory like in vanilla")
	add_entry("2021-05-09", "1pulse", "More improvements 1")
	add_entry("2021-05-09", "Hornwitser", "Revert #140")
	add_entry("2021-05-09", "1pulse", "Laser and mutagen suggestions")
	add_entry("2021-05-01", "derkachdaniil", "Update feeding.lua - buff endgame biters")
	add_entry("2021-04-26", "1pulse", "Balance update 1")
	add_entry("2021-04-24", "ghost", "fix revive biters")
	add_entry("2021-04-24", "AwesomePatrol", "Fix revive buff not applying")
	add_entry("2021-03-23", "mysticamber", "update-discord-link: update chatbot.lua with correct discord link,")
	add_entry("2021-03-23", "mysticamber", "update-discord-link: free biter battles")
	add_entry("2021-03-18", "kajendra", "Revert 'Revert 'Disabled mines temporarily until better fix is found''")
	add_entry("2021-03-16", "kajendra", "Revert 'Disabled mines temporarily until better fix is found'")
	add_entry("2021-03-15", "guppyfaced", "Revert 'Difficulty voting by average'")
	add_entry("2021-03-15", "guppyfaced", "Fix ai pathfinding v2")
	add_entry("2021-03-15", "St4telyRaven", "flamer upgrades buff")
	add_entry("2021-03-15", "derkachdaniil", "Limit mines")
	add_entry("2021-03-15", "guymaor86", "Difficulty voting by average")
	add_entry("2021-03-14", "St4telyRaven", "fix difficulty reversion glitch for 480 min games")
	add_entry("2021-03-12", "St4telyRaven", "stone copper buff")
	add_entry("2021-03-12", "mysticamber", "DashCee: Reducing DashCee's PR. Removing unused maps")
	add_entry("2021-03-07", "St4telyRaven", "Laser Buff")
	add_entry("2021-03-07", "derkachdaniil", "changeable projectile_damage_upgrade")
	add_entry("2021-03-07", "derkachdaniil", "damage updates customizable")
	add_entry("2021-03-06", "kajendra", "Disabled mines temporarily until better fix is found")
	add_entry("2021-03-06", "St4telyRaven", "Reduced Voting Options")
	add_entry("2021-03-06", "St4telyRaven", "Update Peace Periods (slower increase)")
	add_entry("2021-03-06", "St4telyRaven", "Add Peace Periods")
	add_entry("2021-03-06", "St4telyRaven", "Reduced Difficulty for Choices below Normal")
	add_entry("2021-03-06", "St4telyRaven", "Update ai.lua")
	add_entry("2021-03-06", "St4telyRaven", "Disabled Science Feeding before Voting Ends")
	add_entry("2021-03-06", "St4telyRaven", "Update difficulty_vote.lua ????")
	add_entry("2021-03-01", "kajendra", "Updated Readme to include TOC and new URL to git repo")
	add_entry("2021-02-26", "kajendra", "Fixed a bug that displays the seconds as a decimal")
	add_entry("2021-02-26", "guymaor86", "Revert 'Improve biter pathfinding'")
	add_entry("2021-02-25", "AwesomePatrol", "Improve biter pathfinding")
	add_entry("2021-02-17", "mysticamber", "torunament-feb21: removing free silo")
	add_entry("2021-01-26", "AwesomePatrol", "Fix lag in long games")
	add_entry("2021-01-25", "kajendra", "Updated endgame message upon Raven's request")
	add_entry("2021-01-25", "St4telyRaven", "Update tables.lua")
	add_entry("2021-01-25", "St4telyRaven", "Update init.lua")
	add_entry("2021-01-25", "St4telyRaven", "Removed update_difficulty() in ai.lua")
	add_entry("2021-01-25", "St4telyRaven", "Revert Blocking Science Sent before Voting Ends")
	add_entry("2021-01-25", "St4telyRaven", "Update init.lua")
	add_entry("2021-01-25", "St4telyRaven", "Update ai.lua")
	add_entry("2021-01-25", "St4telyRaven", "Update main.lua")
	add_entry("2021-01-23", "derkachdaniil", "Fix mines")
	add_entry("2021-01-18", "guymaor86", "Update PR template")
	add_entry("2021-01-17", "AwesomePatrol", "Fixup silo research changes")
	add_entry("2021-01-16", "St4telyRaven", "Revert 'Update tables.lua'")
	add_entry("2021-01-16", "St4telyRaven", "Revert 'Update tables.lua'")
	add_entry("2021-01-16", "St4telyRaven", "Revert 'Update tables.lua'")
	add_entry("2021-01-16", "St4telyRaven", "Revert 'Update tables.lua'")
	add_entry("2021-01-16", "kajendra", "Chat cmd updates")
	add_entry("2021-01-15", "mysticamber", "Additional commands")
	add_entry("2021-01-15", "guymaor86", "tournament mode - admin can send message as a spectator")
	add_entry("2021-01-15", "ghost", "vote fix. now will round to higher difficulty.")
	add_entry("2021-01-15", "kajendra", "Added 10 burner miner drills when player spawns")
	add_entry("2021-01-15", "guymaor86", "Added 2 turrets around silo")
	add_entry("2021-01-15", "AwesomePatrol", "Refactor free silo")
	add_entry("2021-01-15", "St4telyRaven", "Update tables.lua")
	add_entry("2021-01-15", "St4telyRaven", "Update tables.lua")
	add_entry("2021-01-13", "mysticamber", "difficulty-votes: clear vote table on revote")
	add_entry("2021-01-13", "St4telyRaven", "Update tables.lua")
	add_entry("2021-01-12", "St4telyRaven", "Update tables.lua")
	add_entry("2021-01-11", "kajendra", "Notifies both teams when a new level of biter spawns")
	add_entry("2021-01-11", "kajendra", "Added options to send more fish at a time, updated tooltip")
	add_entry("2020-12-29", "thePiedPiper13", "Updated discord link to never expire and put at top of info")
	add_entry("2020-12-27", "mysticamber", "Centralize ammo modifier values")
	add_entry("2020-12-27", "kajendra", "Fixed typos & unused variables")
	add_entry("2020-12-27", "kajendra", "Updated Readme File with formatting, added Testing Instructions & modified text on PR's")
	add_entry("2020-12-27", "guymaor86", "Pull request template")
	add_entry("2020-12-27", "St4telyRaven", "Update init.lua")
	add_entry("2020-12-27", "mysticamber", "Prevent bots from tiling")
	add_entry("2020-12-22", "mysticamber", "Difficulty vote commands")
	add_entry("2020-12-22", "St4telyRaven", "Update init.lua")
	add_entry("2020-12-22", "St4telyRaven", "Update difficulty_vote.lua")
	add_entry("2020-12-22", "St4telyRaven", "Update tables.lua")
	add_entry("2020-12-22", "St4telyRaven", "Update difficulty_vote.lua")
	add_entry("2020-12-21", "mysticamber", "issue-36: chatbot - on_console_chat - remove get server time as it causes problems")
	add_entry("2020-12-20", "St4telyRaven", "Update ai.lua")
	add_entry("2020-12-20", "1pulse", "put back normal values for nades")
	add_entry("2020-12-20", "mysticamber", "bb: adding evo threat and player list to end of game messages")
	add_entry("2020-12-20", "guymaor86", "Make river wider against rocket launchers")
	add_entry("2020-12-18", "St4telyRaven", "Update tables.lua")
	add_entry("2020-12-17", "mysticamber", "biter battle: send chat to discord even during tournament")
	add_entry("2020-12-17", "guymaor86", "mirror map-not mirror reverse")
	add_entry("2020-12-17", "mysticamber", "biter-battles: mvp stats only get sent once")
	add_entry("2020-12-17", "guymaor86", "New guide in readme")
	add_entry("2020-12-15", "1pulse", "add mysticamber link for discord bot")
	add_entry("2020-12-14", "St4telyRaven", "Update init.lua")
	add_entry("2020-12-14", "DashCee", "File text updates")
	add_entry("2020-12-11", "mysticamber", "biter-battles: adding north-chat and south-chat commands")
	add_entry("2020-12-11", "mysticamber", "Contributing to repo")
	add_entry("2020-12-11", "thePiedPiper13", "Updated Biter battles map info (?) description to include 2 guides and the discord server links")
	add_entry("2020-12-10", "DashCee", "Updating readme")
	add_entry("2020-12-10", "1pulse", "default bbv2")
	add_entry("2020-12-10", "1pulse", "Update control.lua")
	add_entry("2020-12-10", "DashCee", "Updating the oil yield value from 0.27 to 0.5. ")
	add_entry("2020-12-10", "thePiedPiper13", "Update init.lua")
	add_entry("2020-12-10", "ghost", "change vote system from average to median")
	add_entry("2020-12-10", "DashCee", "Compress difficulty values upwards")
	add_entry("2020-12-10", "mysticamber", "mixed ore patches: adding multiplier")
	add_entry("2020-12-10", "mysticamber", "Chat")
	add_entry("2020-12-10", "mysticamber", "biter-battles: adding option to only send msg to a specific team as a spectator")
	add_entry("2020-12-07", "mysticamber", "biter-battles: difficulty vote - removing hard coded 7 in difficulties")
	add_entry("2020-11-28", "St4telyRaven", "Update init.lua")
	add_entry("2020-11-28", "St4telyRaven", "Update terrain.lua")
	add_entry("2020-11-28", "St4telyRaven", "Update difficulty_vote.lua")
	add_entry("2020-11-28", "St4telyRaven", "Update main.lua")
	add_entry("2020-11-28", "St4telyRaven", "Update init.lua")
	add_entry("2020-11-27", "St4telyRaven", "Update functions.lua")
	add_entry("2020-11-27", "St4telyRaven", "Update tables.lua")
	add_entry("2020-11-27", "St4telyRaven", "Update ai.lua")
	
	local t = changelog_scrollpanel.add { type = "table", name = "changelog_header_table", column_count = 3 }
	local column_widths = {tonumber(115), tonumber(435), tonumber(230)}
	local headers = {
		[1] = "Date",
		[2] = "Change",
		[3] = "Author",
	}
	for _, w in ipairs(column_widths) do
	local label = t.add { type = "label", caption = headers[_] }
	label.style.minimal_width = w
	label.style.maximal_width = w
	label.style.font = "default-bold"
	label.style.font_color = { r=0.98, g=0.66, b=0.22 }
	end
	changelog_panel_table = changelog_scrollpanel.add { type = "table", column_count = 3 }
	if changelog_change then
		for i = 1, #changelog_change, 3 do
			local label = changelog_panel_table.add { type = "label", name = "changelog_date" .. i, caption = changelog_change[i] }
			label.style.minimal_width = column_widths[1]
			label.style.maximal_width = column_widths[1]
			local label = changelog_panel_table.add { type = "label", name = "changelog_change" .. i, caption = changelog_change[i+1] }
			label.style.minimal_width = column_widths[2]
			label.style.maximal_width = column_widths[2]
			local label = changelog_panel_table.add { type = "label", name = "changelog_author" .. i, caption = changelog_change[i+2] }
			label.style.minimal_width = column_widths[3]
			label.style.maximal_width = column_widths[3]
		end
	end
end

function comfy_panel_get_active_frame(player)
	if not player.gui.left.comfy_panel then return false end
	if not player.gui.left.comfy_panel.tabbed_pane.selected_tab_index then return player.gui.left.comfy_panel.tabbed_pane.tabs[1].content end
	return player.gui.left.comfy_panel.tabbed_pane.tabs[player.gui.left.comfy_panel.tabbed_pane.selected_tab_index].content 
end

local build_config_gui = (function (player, frame)		
	local frame_changelog = comfy_panel_get_active_frame(player)
	if not frame_changelog then
		return
	end
	frame_changelog.clear()
	add_changelog(player, frame_changelog)
end)

comfy_panel_tabs["Changelog"] = {gui = build_config_gui, admin = false}