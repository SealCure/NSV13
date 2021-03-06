/**
 * Common information used by both the hero ship and the fighters/AIs
 */

//The big mac. Coaxial railguns fired by the pilot.

/datum/ship_weapon/mac
	name = "Magnetic Accelerators"
	default_projectile_type = /obj/item/projectile/bullet/mac_round
	burst_size = 1
	fire_delay = 0.35 SECONDS
	range_modifier = 30
	select_alert = "<span class='notice'>Coaxial MAC ready...</span>"
	failure_alert = "<span class='warning'>DANGER: Launch failure! MAC systems are not loaded.</span>"
	overmap_firing_sounds = list('nsv13/sound/effects/ship/mac_fire.ogg')
	overmap_select_sound = 'nsv13/sound/effects/ship/mac_ready.ogg'
	screen_shake = 2

//Coaxial railguns

/datum/ship_weapon/railgun
	name = "Coaxial railguns"
	default_projectile_type = /obj/item/projectile/bullet/railgun_slug
	burst_size = 1
	fire_delay = 1.5 SECONDS
	range_modifier = 30
	select_alert = "<span class='notice'>Charging railgun hardpoints...</span>"
	failure_alert = "<span class='warning'>DANGER: Launch failure! Railgun systems are not loaded.</span>"
	overmap_firing_sounds = list('nsv13/sound/effects/ship/railgun_fire.ogg')
	overmap_select_sound = 'nsv13/sound/effects/ship/mac_hold.ogg'
	screen_shake = 1
	selectable = FALSE
	lateral = FALSE

/datum/ship_weapon/torpedo_launcher
	name = "Torpedo tubes"
	default_projectile_type = /obj/item/projectile/guided_munition/torpedo
	burst_size = 1
	fire_delay = 5
	range_modifier = 30
	select_alert = "<span class='notice'>Torpedo target acquisition systems: online.</span>"
	failure_alert = "<span class='warning'>DANGER: Launch failure! Torpedo tubes are not loaded.</span>"
	overmap_firing_sounds = list(
		'nsv13/sound/effects/ship/torpedo.ogg',
		'nsv13/sound/effects/ship/freespace2/m_shrike.wav',
		'nsv13/sound/effects/ship/freespace2/m_stiletto.wav',
		'nsv13/sound/effects/ship/freespace2/m_tsunami.wav',
		'nsv13/sound/effects/ship/freespace2/m_wasp.wav')
	overmap_select_sound = 'nsv13/sound/effects/ship/reload.ogg'

/datum/ship_weapon/pdc_mount
	name = "Point defense batteries"
	default_projectile_type = /obj/item/projectile/bullet/pdc_round/heavy
	burst_size = 3
	fire_delay = 0.25 SECONDS
	range_modifier = 0
	overmap_select_sound = 'nsv13/sound/effects/ship/pdc_start.ogg'
	overmap_firing_sounds = list('nsv13/sound/effects/fighters/autocannon.ogg')
	select_alert = "<span class='notice'>Activating point defense emplacements..</span>"
	failure_alert = "<span class='warning'>DANGER: Point defense emplacements are unable to fire due to lack of ammunition.</span>"

/datum/ship_weapon/pdc_mount/aa_guns
	name = "Anti air guns"
	default_projectile_type = /obj/item/projectile/bullet/pdc_round
	burst_size = 7
	fire_delay = 10 SECONDS
	range_modifier = 0
	overmap_firing_sounds = list('nsv13/sound/weapons/pdc_single.ogg')
	select_alert = "<span class='notice'>Activating anti-air guns..</span>"
	failure_alert = "<span class='warning'>DANGER: Anti-air guns are unable to fire due to lack of ammunition.</span>"

/datum/ship_weapon/missile_launcher
	default_projectile_type = /obj/item/projectile/guided_munition/missile
	burst_size = 1
	fire_delay = 5
	range_modifier = 30
	select_alert = "<span class='notice'>Missile target acquisition systems: online.</span>"
	failure_alert = "<span class='warning'>DANGER: Launch failure! Missile racks are not loaded.</span>"
	overmap_firing_sounds = list(
		'nsv13/sound/effects/ship/torpedo.ogg',
		'nsv13/sound/effects/ship/freespace2/m_shrike.wav',
		'nsv13/sound/effects/ship/freespace2/m_stiletto.wav',
		'nsv13/sound/effects/ship/freespace2/m_tsunami.wav',
		'nsv13/sound/effects/ship/freespace2/m_wasp.wav')
	overmap_select_sound = 'nsv13/sound/effects/ship/reload.ogg'

/datum/ship_weapon/light_cannon
	name = "light autocannon"
	default_projectile_type = /obj/item/projectile/bullet/light_cannon_round
	burst_size = 2
	fire_delay = 0.25 SECONDS
	range_modifier = 0
	overmap_select_sound = 'nsv13/sound/effects/ship/pdc_start.ogg'
	overmap_firing_sounds = list('nsv13/sound/effects/fighters/autocannon.ogg')
	select_alert = "<span class='notice'>Cannon selected. DRADIS assisted targeting: online.</span>"
	failure_alert = "<span class='warning'>DANGER: Cannon ammunition reserves are depleted.</span>"
	lateral = FALSE

/datum/ship_weapon/heavy_cannon
	name = ".30 cal heavy cannon"
	default_projectile_type = /obj/item/projectile/bullet/heavy_cannon_round
	burst_size = 3
	fire_delay = 0.5 SECONDS
	range_modifier = 0
	overmap_select_sound = 'nsv13/sound/effects/ship/pdc_start.ogg'
	overmap_firing_sounds = list('nsv13/sound/effects/fighters/BRRTTTTTT.ogg')
	select_alert = "<span class='notice'>Cannon selected. DRADIS assisted targeting: online..</span>"
	failure_alert = "<span class='warning'>DANGER: Cannon ammunition reserves are depleted.</span>"
	lateral = FALSE

/datum/ship_weapon/search_rescue_scoop //not currently enabled
	default_projectile_type = /obj/item/projectile/bullet/pdc_round
	burst_size = 0
	fire_delay = 0
	range_modifier = 0
	overmap_select_sound = 'nsv13/sound/effects/ship/pdc_start.ogg'
	overmap_firing_sounds = list('nsv13/sound/effects/ship/pdc.ogg',
		'nsv13/sound/effects/ship/pdc2.ogg',
		'nsv13/sound/effects/ship/pdc3.ogg')
	select_alert = "<span class='warning'>Feature Not Currently Enabled.</span>"
	failure_alert = "<span class='warning'>Feature Not Currently Enabled.</span>"

/datum/ship_weapon/search_rescue_extractor //not currently enabled
	default_projectile_type = /obj/item/projectile/bullet/pdc_round
	burst_size = 0
	fire_delay = 0
	range_modifier = 0
	overmap_select_sound = 'nsv13/sound/effects/ship/pdc_start.ogg'
	overmap_firing_sounds = list('nsv13/sound/effects/ship/pdc.ogg',
		'nsv13/sound/effects/ship/pdc2.ogg',
		'nsv13/sound/effects/ship/pdc3.ogg')
	select_alert = "<span class='warning'>Feature Not Currently Enabled.</span>"
	failure_alert = "<span class='warning'>Feature Not Currently Enabled.</span>"

/datum/ship_weapon/rapid_breach_sealing_welder //not currently enabled
	default_projectile_type = /obj/item/projectile/bullet/pdc_round
	burst_size = 0
	fire_delay = 0
	range_modifier = 0
	overmap_select_sound = 'nsv13/sound/effects/ship/pdc_start.ogg'
	overmap_firing_sounds = list('nsv13/sound/effects/ship/pdc.ogg',
		'nsv13/sound/effects/ship/pdc2.ogg',
		'nsv13/sound/effects/ship/pdc3.ogg')
	select_alert = "<span class='warning'>Feature Not Currently Enabled.</span>"
	failure_alert = "<span class='warning'>Feature Not Currently Enabled.</span>"

/datum/ship_weapon/rapid_breach_sealing_foam //not currently enabled
	default_projectile_type = /obj/item/projectile/bullet/pdc_round
	burst_size = 0
	fire_delay = 0
	range_modifier = 0
	overmap_select_sound = 'nsv13/sound/effects/ship/pdc_start.ogg'
	overmap_firing_sounds = list('nsv13/sound/effects/ship/pdc.ogg',
		'nsv13/sound/effects/ship/pdc2.ogg',
		'nsv13/sound/effects/ship/pdc3.ogg')
	select_alert = "<span class='warning'>Feature Not Currently Enabled.</span>"
	failure_alert = "<span class='warning'>Feature Not Currently Enabled.</span>"

/datum/ship_weapon/refueling_system //not currently enabled
	default_projectile_type = /obj/item/projectile/bullet/pdc_round
	burst_size = 0
	fire_delay = 0
	range_modifier = 0
	overmap_select_sound = 'nsv13/sound/effects/ship/pdc_start.ogg'
	overmap_firing_sounds = list('nsv13/sound/effects/ship/pdc.ogg',
		'nsv13/sound/effects/ship/pdc2.ogg',
		'nsv13/sound/effects/ship/pdc3.ogg')
	select_alert = "<span class='warning'>Feature Not Currently Enabled.</span>"
	failure_alert = "<span class='warning'>Feature Not Currently Enabled.</span>"

//You don't ever actually select this. Crew act as gunners.

/datum/ship_weapon/gauss
	name = "Gauss guns"
	default_projectile_type = /obj/item/projectile/bullet/gauss_slug
	burst_size = 2
	fire_delay = 10
	range_modifier = 20
	select_alert = "<span class='notice'>Activating gauss weapon systems...</span>"
	failure_alert = "<span class='warning'>DANGER: Gauss gun systems not loaded.</span>"
	overmap_firing_sounds = list('nsv13/sound/effects/ship/gauss.ogg')
	overmap_select_sound = 'nsv13/sound/effects/ship/mac_hold.ogg'
	selectable = FALSE

/datum/ship_weapon/flak
	name = "Flak cannon"
	default_projectile_type = /obj/item/projectile/bullet/gauss_slug
	burst_size = 1
	fire_delay = 0
	range_modifier = 30
	overmap_select_sound = 'nsv13/sound/effects/ship/freespace2/computer/escape.wav'
	overmap_firing_sounds = list('nsv13/sound/effects/ship/flak/flakhit1.ogg','nsv13/sound/effects/ship/flak/flakhit2.ogg','nsv13/sound/effects/ship/flak/flakhit3.ogg')
	select_alert = "<span class='notice'>Defensive flak screens: <b>OFFLINE</b>. Activating manual flak control.</span>"
	failure_alert = "<span class='warning'>DANGER: flak guns unable to fire due to lack of ammunition.</span>"
	special_fire_proc = /obj/structure/overmap/proc/fire_flak
	selectable = FALSE