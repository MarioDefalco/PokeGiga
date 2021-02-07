TILESETGFXDIR := data/tilesets
FONTGFXDIR := graphics/fonts
INTERFACEGFXDIR := graphics/interface
BTLANMSPRGFXDIR := graphics/battle_anims/sprites
UNUSEDGFXDIR := graphics/unused
UNKNOWNGFXDIR := graphics/unknown
BATINTGFXDIR := graphics/battle_interface
MASKSGFXDIR := graphics/battle_anims/masks
BATTRANSGFXDIR := graphics/battle_transitions
TYPESGFXDIR := graphics/types
RAYQUAZAGFXDIR := graphics/rayquaza_scene
ROULETTEGFXDIR := graphics/roulette
SLOTMACHINEGFXDIR := graphics/slot_machine
PKNAVGFXDIR := graphics/pokenav
PKNAVOPTIONSGFXDIR := graphics/pokenav/options
PSSGFXDIR := graphics/pokemon_storage
OBJEVENTGFXDIR := graphics/object_events
MISCGFXDIR := graphics/misc

types := normal fight flying poison ground rock bug ghost steel mystery fire water grass electric psychic ice dragon dark fairy
contest_types := cool beauty cute smart tough



### Tilesets ###

SOOTOPOLISANIMDIR := $(TILESETGFXDIR)/secondary/sootopolis/anim

$(SOOTOPOLISANIMDIR)/stormy_water/0.4bpp: $(SOOTOPOLISANIMDIR)/stormy_water/0_kyogre.4bpp \
                                          $(SOOTOPOLISANIMDIR)/stormy_water/0_groudon.4bpp 
	@cat $^ >$@

$(SOOTOPOLISANIMDIR)/stormy_water/1.4bpp: $(SOOTOPOLISANIMDIR)/stormy_water/1_kyogre.4bpp \
                                          $(SOOTOPOLISANIMDIR)/stormy_water/1_groudon.4bpp 
	@cat $^ >$@

$(SOOTOPOLISANIMDIR)/stormy_water/2.4bpp: $(SOOTOPOLISANIMDIR)/stormy_water/2_kyogre.4bpp \
                                          $(SOOTOPOLISANIMDIR)/stormy_water/2_groudon.4bpp 
	@cat $^ >$@

$(SOOTOPOLISANIMDIR)/stormy_water/3.4bpp: $(SOOTOPOLISANIMDIR)/stormy_water/3_kyogre.4bpp \
                                          $(SOOTOPOLISANIMDIR)/stormy_water/3_groudon.4bpp 
	@cat $^ >$@

$(SOOTOPOLISANIMDIR)/stormy_water/4.4bpp: $(SOOTOPOLISANIMDIR)/stormy_water/4_kyogre.4bpp \
                                          $(SOOTOPOLISANIMDIR)/stormy_water/4_groudon.4bpp 
	@cat $^ >$@

$(SOOTOPOLISANIMDIR)/stormy_water/5.4bpp: $(SOOTOPOLISANIMDIR)/stormy_water/5_kyogre.4bpp \
                                          $(SOOTOPOLISANIMDIR)/stormy_water/5_groudon.4bpp 
	@cat $^ >$@

$(SOOTOPOLISANIMDIR)/stormy_water/6.4bpp: $(SOOTOPOLISANIMDIR)/stormy_water/6_kyogre.4bpp \
                                          $(SOOTOPOLISANIMDIR)/stormy_water/6_groudon.4bpp 
	@cat $^ >$@

$(SOOTOPOLISANIMDIR)/stormy_water/7.4bpp: $(SOOTOPOLISANIMDIR)/stormy_water/7_kyogre.4bpp \
                                          $(SOOTOPOLISANIMDIR)/stormy_water/7_groudon.4bpp 
	@cat $^ >$@

### Fonts ###

$(FONTGFXDIR)/font0.latfont: $(FONTGFXDIR)/font0_latin.png
	$(GFX) $< $@

$(FONTGFXDIR)/font1.latfont: $(FONTGFXDIR)/font1_latin.png
	$(GFX) $< $@

$(FONTGFXDIR)/font2.latfont: $(FONTGFXDIR)/font2_latin.png
	$(GFX) $< $@

$(FONTGFXDIR)/font7.latfont: $(FONTGFXDIR)/font7_latin.png
	$(GFX) $< $@

$(FONTGFXDIR)/font8.latfont: $(FONTGFXDIR)/font8_latin.png
	$(GFX) $< $@

$(FONTGFXDIR)/font0.hwjpnfont: $(FONTGFXDIR)/font0_japanese.png
	$(GFX) $< $@

$(FONTGFXDIR)/font1.hwjpnfont: $(FONTGFXDIR)/font1_japanese.png
	$(GFX) $< $@

$(FONTGFXDIR)/font9.hwjpnfont: $(FONTGFXDIR)/font9_japanese.png
	$(GFX) $< $@

$(FONTGFXDIR)/font2.fwjpnfont: $(FONTGFXDIR)/font2_japanese.png
	$(GFX) $< $@

$(FONTGFXDIR)/font6.fwjpnfont: $(FONTGFXDIR)/font6_braille.png
	$(GFX) $< $@

$(FONTGFXDIR)/unused_frlg_male.fwjpnfont: $(FONTGFXDIR)/unused_japanese_frlg_male_font.png
	$(GFX) $< $@

$(FONTGFXDIR)/unused_frlg_female.fwjpnfont: $(FONTGFXDIR)/unused_japanese_frlg_female_font.png
	$(GFX) $< $@

$(FONTGFXDIR)/down_arrow.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(FONTGFXDIR)/down_arrow_rs.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(FONTGFXDIR)/unused_frlg_blanked_down_arrow.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(FONTGFXDIR)/unused_frlg_down_arrow.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(FONTGFXDIR)/keypad_icons.4bpp: %.4bpp: %.png
	$(GFX) $< $@



### Miscellaneous ###
graphics/title_screen/pokemon_logo.gbapal: %.gbapal: %.pal
	$(GFX) $< $@ -num_colors 224

graphics/link_games/pkmnjump_bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 63

graphics/pokenav/region_map.8bpp: %.8bpp: %.png
	$(GFX) $< $@ -num_tiles 233

$(MISCGFXDIR)/japanese_hof.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 29

$(BATINTGFXDIR)/textbox.gbapal: $(BATINTGFXDIR)/textbox_0.gbapal \
								$(BATINTGFXDIR)/textbox_1.gbapal
	@cat $^ >$@

$(BTLANMSPRGFXDIR)/ice_cube.4bpp: $(BTLANMSPRGFXDIR)/ice_cube_0.4bpp \
						 	 $(BTLANMSPRGFXDIR)/ice_cube_1.4bpp \
						 	 $(BTLANMSPRGFXDIR)/ice_cube_2.4bpp \
						 	 $(BTLANMSPRGFXDIR)/ice_cube_3.4bpp
	@cat $^ >$@

$(UNUSEDGFXDIR)/obi_palpak1.gbapal: $(UNUSEDGFXDIR)/old_pal1.gbapal \
									$(UNUSEDGFXDIR)/old_pal2.gbapal \
									$(UNUSEDGFXDIR)/old_pal3.gbapal
	@cat $^ >$@

$(UNUSEDGFXDIR)/obi_palpak3.gbapal: $(UNUSEDGFXDIR)/old_pal5.gbapal \
									$(UNUSEDGFXDIR)/old_pal6.gbapal \
									$(UNUSEDGFXDIR)/old_pal7.gbapal
	@cat $^ >$@

$(UNUSEDGFXDIR)/obi1.4bpp: $(UNUSEDGFXDIR)/old_bulbasaur.4bpp \
						   $(UNUSEDGFXDIR)/old_charizard.4bpp
	@cat $^ >$@

$(UNUSEDGFXDIR)/obi2.4bpp: $(UNUSEDGFXDIR)/old_bulbasaur2.4bpp \
						   $(UNUSEDGFXDIR)/old_battle_interface_1.4bpp \
						   $(UNUSEDGFXDIR)/old_battle_interface_2.4bpp \
						   $(UNUSEDGFXDIR)/old_battle_interface_3.4bpp
	@cat $^ >$@

$(INTERFACEGFXDIR)/hp_numbers.4bpp: $(INTERFACEGFXDIR)/hpbar_anim.4bpp \
									$(INTERFACEGFXDIR)/numbers1.4bpp \
									$(INTERFACEGFXDIR)/numbers2.4bpp
	@cat $^ >$@

$(UNUSEDGFXDIR)/redyellowgreen_frame.bin: $(UNUSEDGFXDIR)/red_frame.bin \
                                          $(UNUSEDGFXDIR)/yellow_frame.bin \
                                          $(UNUSEDGFXDIR)/green_frame.bin \
                                          $(UNUSEDGFXDIR)/blank_frame.bin
	@cat $^ >$@

$(UNUSEDGFXDIR)/color_frames.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 353

$(BATINTGFXDIR)/unused_window2bar.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 5

$(UNUSEDGFXDIR)/old_contest.4bpp: $(UNUSEDGFXDIR)/old_contest_frame_1.4bpp \
								  $(UNUSEDGFXDIR)/old_contest_floor.4bpp \
								  $(UNUSEDGFXDIR)/old_contest_frame_2.4bpp \
								  $(UNUSEDGFXDIR)/old_contest_symbols.4bpp \
								  $(UNUSEDGFXDIR)/old_contest_meter.4bpp \
								  $(UNUSEDGFXDIR)/old_contest_classes.4bpp \
								  $(UNUSEDGFXDIR)/old_contest_numbers.4bpp
	@cat $^ >$@

$(UNUSEDGFXDIR)/old_contest_2.4bpp: $(UNUSEDGFXDIR)/old_contest_2_1.4bpp \
									$(UNUSEDGFXDIR)/old_contest_2_2.4bpp
	@cat $^ >$@

$(UNKNOWNGFXDIR)/unknown_C19470.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 36

$(BTLANMSPRGFXDIR)/ice_crystals.4bpp: $(BTLANMSPRGFXDIR)/ice_crystals_0.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_crystals_1.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_crystals_2.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_crystals_3.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_crystals_4.4bpp
	@cat $^ >$@

$(BTLANMSPRGFXDIR)/mud_sand.4bpp: $(BTLANMSPRGFXDIR)/mud_sand_0.4bpp \
						  $(BTLANMSPRGFXDIR)/mud_sand_1.4bpp
	@cat $^ >$@

$(BTLANMSPRGFXDIR)/flower.4bpp: $(BTLANMSPRGFXDIR)/flower_0.4bpp \
						  $(BTLANMSPRGFXDIR)/flower_1.4bpp
	@cat $^ >$@

$(BTLANMSPRGFXDIR)/spark.4bpp: $(BTLANMSPRGFXDIR)/spark_0.4bpp \
						  $(BTLANMSPRGFXDIR)/spark_1.4bpp
	@cat $^ >$@

$(MASKSGFXDIR)/unknown_C2EA50.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 14

$(BATTRANSGFXDIR)/vs_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 16

$(INTERFACEGFXDIR)/party_menu_bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 62

$(TYPESGFXDIR)/move_types.4bpp: $(types:%=$(TYPESGFXDIR)/%.4bpp) $(contest_types:%=$(TYPESGFXDIR)/contest_%.4bpp)
	@cat $^ >$@

$(TYPESGFXDIR)/move_types.gbapal: $(TYPESGFXDIR)/move_types_1.gbapal \
							   $(TYPESGFXDIR)/move_types_2.gbapal \
							   $(TYPESGFXDIR)/move_types_3.gbapal
	@cat $^ >$@

$(INTERFACEGFXDIR)/bag_screen.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 53

$(RAYQUAZAGFXDIR)/scene_2/rayquaza.8bpp: %.8bpp: %.png
	$(GFX) $< $@ -num_tiles 227

$(RAYQUAZAGFXDIR)/scene_2/bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 313

$(RAYQUAZAGFXDIR)/scene_3/rayquaza.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 124

$(RAYQUAZAGFXDIR)/scene_3/rayquaza_tail_fix.4bpp: $(RAYQUAZAGFXDIR)/scene_3/rayquaza_tail.4bpp
	cp $< $@
	head -c 12 /dev/zero >> $@

$(RAYQUAZAGFXDIR)/scene_4/streaks.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 19

$(RAYQUAZAGFXDIR)/scene_4/rayquaza.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 155

graphics/picture_frame/frame5.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 86

$(ROULETTEGFXDIR)/roulette_tilt.4bpp: $(ROULETTEGFXDIR)/shroomish.4bpp \
									  $(ROULETTEGFXDIR)/tailow.4bpp
	@cat $^ >$@

$(ROULETTEGFXDIR)/wheel_icons.4bpp: $(ROULETTEGFXDIR)/wynaut.4bpp \
									$(ROULETTEGFXDIR)/azurill.4bpp \
									$(ROULETTEGFXDIR)/skitty.4bpp \
									$(ROULETTEGFXDIR)/makuhita.4bpp
	@cat $^ >$@

$(BATTRANSGFXDIR)/regis.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 53

$(BATTRANSGFXDIR)/rayquaza.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 938

$(BATTRANSGFXDIR)/frontier_square_1.4bpp: $(BATTRANSGFXDIR)/frontier_squares_blanktiles.4bpp \
										 $(BATTRANSGFXDIR)/frontier_squares_1.4bpp
	@cat $^ >$@

$(BATTRANSGFXDIR)/frontier_square_2.4bpp: $(BATTRANSGFXDIR)/frontier_squares_blanktiles.4bpp \
										 $(BATTRANSGFXDIR)/frontier_squares_2.4bpp
	@cat $^ >$@
 
$(BATTRANSGFXDIR)/frontier_square_3.4bpp: $(BATTRANSGFXDIR)/frontier_squares_blanktiles.4bpp \
										 $(BATTRANSGFXDIR)/frontier_squares_3.4bpp
	@cat $^ >$@

$(BATTRANSGFXDIR)/frontier_square_4.4bpp: $(BATTRANSGFXDIR)/frontier_squares_blanktiles.4bpp \
										 $(BATTRANSGFXDIR)/frontier_squares_4.4bpp
	@cat $^ >$@

$(SLOTMACHINEGFXDIR)/reel_time_gfx.4bpp: $(SLOTMACHINEGFXDIR)/reel_time_pikachu.4bpp \
										 $(SLOTMACHINEGFXDIR)/reel_time_machine.4bpp
	@cat $^ >$@

$(UNUSEDGFXDIR)/intro_birch_beauty.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 822



### PSS ###

$(PSSGFXDIR)/forest_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 55

$(PSSGFXDIR)/forest.4bpp: $(PSSGFXDIR)/forest_frame.4bpp $(PSSGFXDIR)/forest_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/city_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 52

$(PSSGFXDIR)/city.4bpp: $(PSSGFXDIR)/city_frame.4bpp $(PSSGFXDIR)/city_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/desert.4bpp: $(PSSGFXDIR)/desert_frame.4bpp $(PSSGFXDIR)/desert_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/savanna_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 45

$(PSSGFXDIR)/savanna_bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 23

$(PSSGFXDIR)/savanna.4bpp: $(PSSGFXDIR)/savanna_frame.4bpp $(PSSGFXDIR)/savanna_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/crag_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 49

$(PSSGFXDIR)/crag.4bpp: $(PSSGFXDIR)/crag_frame.4bpp $(PSSGFXDIR)/crag_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/volcano_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 56

$(PSSGFXDIR)/volcano.4bpp: $(PSSGFXDIR)/volcano_frame.4bpp $(PSSGFXDIR)/volcano_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/snow_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 57

$(PSSGFXDIR)/snow.4bpp: $(PSSGFXDIR)/snow_frame.4bpp $(PSSGFXDIR)/snow_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/cave_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 55

$(PSSGFXDIR)/cave.4bpp: $(PSSGFXDIR)/cave_frame.4bpp $(PSSGFXDIR)/cave_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/beach_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 46

$(PSSGFXDIR)/beach_bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 23

$(PSSGFXDIR)/beach.4bpp: $(PSSGFXDIR)/beach_frame.4bpp $(PSSGFXDIR)/beach_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/seafloor_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 54

$(PSSGFXDIR)/seafloor.4bpp: $(PSSGFXDIR)/seafloor_frame.4bpp $(PSSGFXDIR)/seafloor_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/river_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 51

$(PSSGFXDIR)/river_bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 11

$(PSSGFXDIR)/river.4bpp: $(PSSGFXDIR)/river_frame.4bpp $(PSSGFXDIR)/river_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/sky_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 45

$(PSSGFXDIR)/sky.4bpp: $(PSSGFXDIR)/sky_frame.4bpp $(PSSGFXDIR)/sky_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/polkadot_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 54

$(PSSGFXDIR)/polkadot.4bpp: $(PSSGFXDIR)/polkadot_frame.4bpp $(PSSGFXDIR)/polkadot_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/pokecenter_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 35

$(PSSGFXDIR)/pokecenter.4bpp: $(PSSGFXDIR)/pokecenter_frame.4bpp $(PSSGFXDIR)/pokecenter_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/machine_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 33

$(PSSGFXDIR)/machine.4bpp: $(PSSGFXDIR)/machine_frame.4bpp $(PSSGFXDIR)/machine_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/plain_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 18

$(PSSGFXDIR)/plain.4bpp: $(PSSGFXDIR)/plain_frame.4bpp $(PSSGFXDIR)/plain_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/friends_frame1.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 57

$(PSSGFXDIR)/friends_frame2.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 57

$(PSSGFXDIR)/zigzagoon.4bpp: $(PSSGFXDIR)/friends_frame1.4bpp $(PSSGFXDIR)/zigzagoon_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/screen.4bpp: $(PSSGFXDIR)/friends_frame1.4bpp $(PSSGFXDIR)/screen_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/horizontal.4bpp: $(PSSGFXDIR)/friends_frame1.4bpp $(PSSGFXDIR)/horizontal_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/diagonal.4bpp: $(PSSGFXDIR)/friends_frame1.4bpp $(PSSGFXDIR)/diagonal_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/block.4bpp: $(PSSGFXDIR)/friends_frame1.4bpp $(PSSGFXDIR)/block_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/ribbon.4bpp: $(PSSGFXDIR)/friends_frame1.4bpp $(PSSGFXDIR)/ribbon_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/pokecenter2.4bpp: $(PSSGFXDIR)/friends_frame1.4bpp $(PSSGFXDIR)/pokecenter2_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/frame.4bpp: $(PSSGFXDIR)/friends_frame1.4bpp $(PSSGFXDIR)/frame_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/blank.4bpp: $(PSSGFXDIR)/friends_frame1.4bpp $(PSSGFXDIR)/blank_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/circles.4bpp: $(PSSGFXDIR)/friends_frame1.4bpp $(PSSGFXDIR)/circles_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/azumarill.4bpp: $(PSSGFXDIR)/friends_frame2.4bpp $(PSSGFXDIR)/azumarill_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/pikachu.4bpp: $(PSSGFXDIR)/friends_frame2.4bpp $(PSSGFXDIR)/pikachu_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/legendary.4bpp: $(PSSGFXDIR)/friends_frame2.4bpp $(PSSGFXDIR)/legendary_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/dusclops.4bpp: $(PSSGFXDIR)/friends_frame2.4bpp $(PSSGFXDIR)/dusclops_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/ludicolo.4bpp: $(PSSGFXDIR)/friends_frame2.4bpp $(PSSGFXDIR)/ludicolo_bg.4bpp
	@cat $^ >$@

$(PSSGFXDIR)/whiscash.4bpp: $(PSSGFXDIR)/friends_frame2.4bpp $(PSSGFXDIR)/whiscash_bg.4bpp
	@cat $^ >$@

$(OBJEVENTGFXDIR)/pics/effects/unknown_4F6D38/0.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 11

$(INTERFACEGFXDIR)/selector_outline.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 8
	
$(BATTRANSGFXDIR)/frontier_logo_center.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 43



### Pokenav ###

$(PKNAVOPTIONSGFXDIR)/options.4bpp: $(PKNAVOPTIONSGFXDIR)/hoenn_map.4bpp \
								$(PKNAVOPTIONSGFXDIR)/condition.4bpp \
								$(PKNAVOPTIONSGFXDIR)/match_call.4bpp \
								$(PKNAVOPTIONSGFXDIR)/ribbons.4bpp \
								$(PKNAVOPTIONSGFXDIR)/switch_off.4bpp \
								$(PKNAVOPTIONSGFXDIR)/party.4bpp \
								$(PKNAVOPTIONSGFXDIR)/search.4bpp \
								$(PKNAVOPTIONSGFXDIR)/cool.4bpp \
								$(PKNAVOPTIONSGFXDIR)/beauty.4bpp \
								$(PKNAVOPTIONSGFXDIR)/cute.4bpp \
								$(PKNAVOPTIONSGFXDIR)/smart.4bpp \
								$(PKNAVOPTIONSGFXDIR)/tough.4bpp \
								$(PKNAVOPTIONSGFXDIR)/cancel.4bpp
	@cat $^ >$@

$(PKNAVGFXDIR)/header.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 53

$(PKNAVGFXDIR)/device_outline.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 53
	
$(PKNAVGFXDIR)/ui_matchcall.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 13

$(INTERFACEGFXDIR)/region_map.8bpp: %.8bpp: %.png
	$(GFX) $< $@ -num_tiles 232

$(INTERFACEGFXDIR)/region_map_affine.8bpp: %.8bpp: %.png
	$(GFX) $< $@ -num_tiles 233

$(MISCGFXDIR)/birch_help.4bpp: $(MISCGFXDIR)/birch_bag.4bpp $(MISCGFXDIR)/birch_grass.4bpp
	@cat $^ >$@
