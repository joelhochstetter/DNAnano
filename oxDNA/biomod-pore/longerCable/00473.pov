// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.166552, 34.842464, 34.842915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261427, 35.044807, 35.174664>,  <24.318352, 35.166214, 35.373711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261427, 35.044807, 35.174664>,  <24.166552, 34.842464, 34.842915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.261427, 35.044807, 35.174664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852614, -0.517578, 0.071851,
		0.465609, 0.690089, -0.554063,
		0.237187, 0.505856, 0.829369,
		24.332582, 35.196564, 35.423473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.848787, 35.022034, 34.724380>,  <24.166552, 34.842464, 34.842915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.848787, 35.022034, 34.724380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677410, 34.962933, 35.080944>,  <24.574583, 34.927471, 35.294880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677410, 34.962933, 35.080944>,  <24.848787, 35.022034, 34.724380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677410, 34.962933, 35.080944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778596, -0.560973, 0.281243,
		0.458502, 0.814542, 0.355382,
		-0.428444, -0.147749, 0.891407,
		24.548878, 34.918610, 35.348366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219492, 35.011135, 34.090878>,  <24.848787, 35.022034, 34.724380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219492, 35.011135, 34.090878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352486, 35.380653, 34.014927>,  <25.432281, 35.602364, 33.969357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352486, 35.380653, 34.014927>,  <25.219492, 35.011135, 34.090878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352486, 35.380653, 34.014927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408703, 0.322579, 0.853759,
		0.849950, -0.206259, 0.484811,
		0.332486, 0.923797, -0.189877,
		25.452232, 35.657791, 33.957962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940615, 34.806553, 33.386208>,  <25.219492, 35.011135, 34.090878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940615, 34.806553, 33.386208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668175, 34.545620, 33.253204>,  <24.504711, 34.389061, 33.173401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668175, 34.545620, 33.253204>,  <24.940615, 34.806553, 33.386208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.668175, 34.545620, 33.253204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612913, -0.756398, 0.228471,
		-0.400547, -0.048186, 0.915008,
		-0.681102, -0.652334, -0.332507,
		24.463844, 34.349918, 33.153454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061943, 34.231617, 33.730988>,  <24.940615, 34.806553, 33.386208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061943, 34.231617, 33.730988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312273, 33.919765, 33.740116>,  <25.462471, 33.732655, 33.745594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312273, 33.919765, 33.740116>,  <25.061943, 34.231617, 33.730988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312273, 33.919765, 33.740116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698280, 0.547007, -0.461724,
		0.347489, 0.304895, 0.886730,
		0.625825, -0.779630, 0.022823,
		25.500021, 33.685875, 33.746964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749163, 34.381939, 34.172737>,  <25.061943, 34.231617, 33.730988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749163, 34.381939, 34.172737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739445, 34.142849, 33.852203>,  <25.733614, 33.999393, 33.659885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739445, 34.142849, 33.852203>,  <25.749163, 34.381939, 34.172737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739445, 34.142849, 33.852203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625553, 0.616162, -0.478570,
		0.779804, -0.512902, 0.358940,
		-0.024294, -0.597726, -0.801332,
		25.732157, 33.963531, 33.611805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313095, 34.673389, 33.958164>,  <25.749163, 34.381939, 34.172737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313095, 34.673389, 33.958164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241112, 34.397827, 33.677303>,  <26.197922, 34.232491, 33.508785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241112, 34.397827, 33.677303>,  <26.313095, 34.673389, 33.958164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241112, 34.397827, 33.677303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724219, 0.390258, -0.568512,
		0.665674, -0.610820, 0.428691,
		-0.179959, -0.688910, -0.702152,
		26.187124, 34.191154, 33.466656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938700, 34.569202, 33.546967>,  <26.313095, 34.673389, 33.958164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938700, 34.569202, 33.546967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670490, 34.354195, 33.342426>,  <26.509565, 34.225189, 33.219704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670490, 34.354195, 33.342426>,  <26.938700, 34.569202, 33.546967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670490, 34.354195, 33.342426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399420, 0.319280, -0.859374,
		0.625191, -0.780471, 0.000610,
		-0.670522, -0.537517, -0.511347,
		26.469334, 34.192940, 33.189022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283680, 34.139545, 32.937023>,  <26.938700, 34.569202, 33.546967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283680, 34.139545, 32.937023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897135, 34.137211, 32.834179>,  <26.665207, 34.135811, 32.772472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897135, 34.137211, 32.834179>,  <27.283680, 34.139545, 32.937023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897135, 34.137211, 32.834179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242694, 0.310039, -0.919225,
		0.085074, -0.950706, -0.298196,
		-0.966366, -0.005832, -0.257107,
		26.607225, 34.135460, 32.757046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190897, 33.667656, 32.423649>,  <27.283680, 34.139545, 32.937023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190897, 33.667656, 32.423649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890728, 33.928898, 32.383015>,  <26.710627, 34.085644, 32.358635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890728, 33.928898, 32.383015>,  <27.190897, 33.667656, 32.423649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890728, 33.928898, 32.383015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301567, 0.201554, -0.931898,
		-0.588154, -0.729951, -0.348206,
		-0.750422, 0.653107, -0.101584,
		26.665602, 34.124828, 32.352539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893496, 33.565647, 31.761662>,  <27.190897, 33.667656, 32.423649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893496, 33.565647, 31.761662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794104, 33.942410, 31.852053>,  <26.734468, 34.168468, 31.906288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794104, 33.942410, 31.852053>,  <26.893496, 33.565647, 31.761662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794104, 33.942410, 31.852053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204351, 0.279019, -0.938291,
		-0.946836, -0.186968, -0.261811,
		-0.248481, 0.941909, 0.225978,
		26.719559, 34.224983, 31.919846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470879, 33.897583, 31.262363>,  <26.893496, 33.565647, 31.761662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470879, 33.897583, 31.262363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690710, 34.186535, 31.430237>,  <26.822609, 34.359905, 31.530960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690710, 34.186535, 31.430237>,  <26.470879, 33.897583, 31.262363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690710, 34.186535, 31.430237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230994, 0.351374, -0.907292,
		-0.802872, 0.595574, 0.026244,
		0.549581, 0.722376, 0.419682,
		26.855585, 34.403248, 31.556141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819473, 34.368954, 30.649792>,  <26.470879, 33.897583, 31.262363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819473, 34.368954, 30.649792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016609, 34.716991, 30.652384>,  <27.134890, 34.925816, 30.653938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016609, 34.716991, 30.652384>,  <26.819473, 34.368954, 30.649792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016609, 34.716991, 30.652384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367701, 0.201511, 0.907849,
		0.788611, -0.449804, 0.419248,
		0.492837, 0.870098, 0.006479,
		27.164461, 34.978020, 30.654327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336058, 34.531082, 31.192724>,  <26.819473, 34.368954, 30.649792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336058, 34.531082, 31.192724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161795, 34.866154, 31.060966>,  <27.057238, 35.067196, 30.981911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161795, 34.866154, 31.060966>,  <27.336058, 34.531082, 31.192724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161795, 34.866154, 31.060966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509568, 0.072138, 0.857401,
		0.741987, 0.541381, 0.395426,
		-0.435655, 0.837677, -0.329396,
		27.031097, 35.117458, 30.962147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427299, 35.207680, 31.507812>,  <27.336058, 34.531082, 31.192724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427299, 35.207680, 31.507812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086039, 35.041073, 31.382183>,  <26.881283, 34.941109, 31.306807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086039, 35.041073, 31.382183>,  <27.427299, 35.207680, 31.507812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086039, 35.041073, 31.382183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325764, -0.044848, 0.944387,
		-0.407442, 0.908019, -0.097426,
		-0.853152, -0.416521, -0.314073,
		26.830093, 34.916115, 31.287962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946108, 35.433083, 31.974718>,  <27.427299, 35.207680, 31.507812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946108, 35.433083, 31.974718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790092, 35.108963, 31.799776>,  <26.696484, 34.914490, 31.694811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790092, 35.108963, 31.799776>,  <26.946108, 35.433083, 31.974718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790092, 35.108963, 31.799776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437346, -0.254956, 0.862395,
		-0.810308, 0.527641, -0.254941,
		-0.390037, -0.810304, -0.437355,
		26.673082, 34.865871, 31.668570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264902, 35.361694, 32.237530>,  <26.946108, 35.433083, 31.974718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264902, 35.361694, 32.237530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361164, 34.998119, 32.101341>,  <26.418921, 34.779976, 32.019630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361164, 34.998119, 32.101341>,  <26.264902, 35.361694, 32.237530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361164, 34.998119, 32.101341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469702, -0.416028, 0.778653,
		-0.849391, -0.027468, -0.527049,
		0.240655, -0.908937, -0.340468,
		26.433361, 34.725437, 31.999201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684963, 34.970818, 32.201656>,  <26.264902, 35.361694, 32.237530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684963, 34.970818, 32.201656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982815, 34.706955, 32.242424>,  <26.161526, 34.548637, 32.266884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982815, 34.706955, 32.242424>,  <25.684963, 34.970818, 32.201656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982815, 34.706955, 32.242424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464936, -0.403028, 0.788291,
		-0.478920, -0.634372, -0.606802,
		0.744628, -0.659652, 0.101924,
		26.206203, 34.509060, 32.273003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422478, 34.211700, 32.245777>,  <25.684963, 34.970818, 32.201656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422478, 34.211700, 32.245777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784157, 34.193409, 32.415642>,  <26.001163, 34.182434, 32.517559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784157, 34.193409, 32.415642>,  <25.422478, 34.211700, 32.245777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784157, 34.193409, 32.415642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366217, -0.594671, 0.715717,
		0.219802, -0.802667, -0.554448,
		0.904197, -0.045732, 0.424660,
		26.055416, 34.179688, 32.543041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482456, 33.589169, 32.546276>,  <25.422478, 34.211700, 32.245777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482456, 33.589169, 32.546276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771444, 33.768398, 32.756901>,  <25.944838, 33.875935, 32.883274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771444, 33.768398, 32.756901>,  <25.482456, 33.589169, 32.546276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771444, 33.768398, 32.756901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243176, -0.548247, 0.800182,
		0.647226, -0.706155, -0.287131,
		0.722471, 0.448075, 0.526559,
		25.988186, 33.902821, 32.914867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857853, 33.040485, 32.707535>,  <25.482456, 33.589169, 32.546276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857853, 33.040485, 32.707535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834364, 33.347412, 32.962967>,  <25.820271, 33.531567, 33.116226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834364, 33.347412, 32.962967>,  <25.857853, 33.040485, 32.707535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834364, 33.347412, 32.962967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477732, -0.583275, 0.656934,
		0.876541, -0.266493, 0.400821,
		-0.058721, 0.767314, 0.638577,
		25.816748, 33.577606, 33.154541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110210, 32.846348, 33.462582>,  <25.857853, 33.040485, 32.707535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110210, 32.846348, 33.462582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817202, 33.118263, 33.448151>,  <25.641396, 33.281410, 33.439491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817202, 33.118263, 33.448151>,  <26.110210, 32.846348, 33.462582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817202, 33.118263, 33.448151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381831, -0.366426, 0.848491,
		0.563574, 0.635313, 0.527978,
		-0.732522, 0.679786, -0.036074,
		25.597445, 33.322201, 33.437328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993656, 33.174942, 34.150097>,  <26.110210, 32.846348, 33.462582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993656, 33.174942, 34.150097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636951, 33.174416, 33.969093>,  <25.422930, 33.174099, 33.860493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636951, 33.174416, 33.969093>,  <25.993656, 33.174942, 34.150097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636951, 33.174416, 33.969093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404208, -0.447221, 0.797877,
		-0.203422, 0.894422, 0.398282,
		-0.891760, -0.001317, -0.452508,
		25.369423, 33.174019, 33.833340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341415, 32.457916, 34.062576>,  <25.993656, 33.174942, 34.150097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341415, 32.457916, 34.062576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078758, 32.209251, 33.891766>,  <25.921164, 32.060051, 33.789280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078758, 32.209251, 33.891766>,  <26.341415, 32.457916, 34.062576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078758, 32.209251, 33.891766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749550, 0.600693, 0.278107,
		0.083623, 0.502696, -0.860409,
		-0.656645, -0.621663, -0.427027,
		25.881765, 32.022751, 33.763657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856203, 32.012913, 34.195911>,  <26.341415, 32.457916, 34.062576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856203, 32.012913, 34.195911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166058, 32.212620, 34.040646>,  <27.351971, 32.332443, 33.947487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166058, 32.212620, 34.040646>,  <26.856203, 32.012913, 34.195911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166058, 32.212620, 34.040646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498188, -0.103678, 0.860848,
		0.389546, -0.860225, -0.329040,
		0.774637, 0.499263, -0.388167,
		27.398449, 32.362400, 33.924194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490446, 31.574572, 34.286045>,  <26.856203, 32.012913, 34.195911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490446, 31.574572, 34.286045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558186, 31.967749, 34.257343>,  <27.598829, 32.203655, 34.240124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558186, 31.967749, 34.257343>,  <27.490446, 31.574572, 34.286045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558186, 31.967749, 34.257343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560329, -0.036135, 0.827481,
		0.810773, -0.180335, -0.556890,
		0.169347, 0.982941, -0.071750,
		27.608990, 32.262630, 34.235817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013830, 31.181786, 33.835037>,  <27.490446, 31.574572, 34.286045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013830, 31.181786, 33.835037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922939, 30.852655, 33.626682>,  <27.868404, 30.655176, 33.501671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922939, 30.852655, 33.626682>,  <28.013830, 31.181786, 33.835037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922939, 30.852655, 33.626682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347527, -0.568176, 0.745923,
		-0.909721, -0.011528, 0.415061,
		-0.227229, -0.822826, -0.520888,
		27.854771, 30.605808, 33.470417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582922, 30.703941, 34.254383>,  <28.013830, 31.181786, 33.835037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582922, 30.703941, 34.254383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849937, 30.515415, 34.023819>,  <28.010147, 30.402300, 33.885479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849937, 30.515415, 34.023819>,  <27.582922, 30.703941, 34.254383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849937, 30.515415, 34.023819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272260, -0.566031, 0.778129,
		-0.693012, -0.676366, -0.249528,
		0.667540, -0.471316, -0.576413,
		28.050200, 30.374022, 33.850895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404734, 30.002306, 34.299065>,  <27.582922, 30.703941, 34.254383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404734, 30.002306, 34.299065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791714, 30.041395, 34.205696>,  <28.023903, 30.064850, 34.149673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791714, 30.041395, 34.205696>,  <27.404734, 30.002306, 34.299065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791714, 30.041395, 34.205696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225915, -0.749143, 0.622694,
		-0.114015, -0.655160, -0.746837,
		0.967452, 0.097726, -0.233424,
		28.081949, 30.070713, 34.135670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612516, 29.395716, 34.499306>,  <27.404734, 30.002306, 34.299065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612516, 29.395716, 34.499306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947651, 29.611401, 34.465179>,  <28.148731, 29.740812, 34.444706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947651, 29.611401, 34.465179>,  <27.612516, 29.395716, 34.499306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947651, 29.611401, 34.465179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407495, -0.513716, 0.755012,
		0.363285, -0.667342, -0.650137,
		0.837838, 0.539212, -0.085313,
		28.199001, 29.773165, 34.439587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125994, 28.974279, 34.718330>,  <27.612516, 29.395716, 34.499306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125994, 28.974279, 34.718330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304291, 29.331919, 34.735767>,  <28.411268, 29.546503, 34.746227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304291, 29.331919, 34.735767>,  <28.125994, 28.974279, 34.718330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304291, 29.331919, 34.735767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339636, -0.213974, 0.915895,
		0.828229, -0.393447, -0.399045,
		0.445741, 0.894100, 0.043591,
		28.438013, 29.600149, 34.748844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853456, 28.951649, 34.738861>,  <28.125994, 28.974279, 34.718330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853456, 28.951649, 34.738861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694168, 29.263208, 34.932659>,  <28.598595, 29.450144, 35.048939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694168, 29.263208, 34.932659>,  <28.853456, 28.951649, 34.738861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694168, 29.263208, 34.932659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320486, -0.376756, 0.869105,
		0.859482, 0.501370, -0.099594,
		-0.398221, 0.778899, 0.484497,
		28.574701, 29.496878, 35.078007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210844, 29.072247, 35.357822>,  <28.853456, 28.951649, 34.738861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210844, 29.072247, 35.357822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894356, 29.292936, 35.463329>,  <28.704464, 29.425350, 35.526634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894356, 29.292936, 35.463329>,  <29.210844, 29.072247, 35.357822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894356, 29.292936, 35.463329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148771, -0.244707, 0.958115,
		0.593160, 0.797321, 0.111537,
		-0.791220, 0.551722, 0.263769,
		28.656990, 29.458452, 35.542461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347248, 29.409464, 35.876389>,  <29.210844, 29.072247, 35.357822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347248, 29.409464, 35.876389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948605, 29.403088, 35.908680>,  <28.709419, 29.399261, 35.928055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948605, 29.403088, 35.908680>,  <29.347248, 29.409464, 35.876389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948605, 29.403088, 35.908680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082247, -0.222449, 0.971469,
		0.002470, 0.974814, 0.223006,
		-0.996609, -0.015942, 0.080725,
		28.649622, 29.398306, 35.932896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199162, 29.633356, 36.581848>,  <29.347248, 29.409464, 35.876389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199162, 29.633356, 36.581848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865582, 29.451002, 36.457466>,  <28.665434, 29.341591, 36.382835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865582, 29.451002, 36.457466>,  <29.199162, 29.633356, 36.581848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865582, 29.451002, 36.457466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135806, -0.376618, 0.916360,
		-0.534866, 0.806430, 0.252169,
		-0.833951, -0.455884, -0.310958,
		28.615396, 29.314238, 36.364178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588322, 29.700089, 37.053074>,  <29.199162, 29.633356, 36.581848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588322, 29.700089, 37.053074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552303, 29.366478, 36.835342>,  <28.530693, 29.166311, 36.704704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552303, 29.366478, 36.835342>,  <28.588322, 29.700089, 37.053074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552303, 29.366478, 36.835342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293072, -0.500160, 0.814831,
		-0.951841, 0.232899, -0.199392,
		-0.090045, -0.834025, -0.544328,
		28.525290, 29.116270, 36.672043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927635, 29.356152, 37.198235>,  <28.588322, 29.700089, 37.053074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927635, 29.356152, 37.198235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218155, 29.115009, 37.066143>,  <28.392467, 28.970324, 36.986889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218155, 29.115009, 37.066143>,  <27.927635, 29.356152, 37.198235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218155, 29.115009, 37.066143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087760, -0.557816, 0.825312,
		-0.681754, -0.570441, -0.458048,
		0.726298, -0.602858, -0.330231,
		28.436045, 28.934153, 36.967075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655754, 28.724566, 37.100822>,  <27.927635, 29.356152, 37.198235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655754, 28.724566, 37.100822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046301, 28.706665, 37.185394>,  <28.280628, 28.695925, 37.236137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046301, 28.706665, 37.185394>,  <27.655754, 28.724566, 37.100822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046301, 28.706665, 37.185394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185119, -0.678022, 0.711349,
		0.111525, -0.733678, -0.670283,
		0.976367, -0.044749, 0.211434,
		28.339211, 28.693241, 37.248825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986700, 28.886305, 37.314266>,  <27.655754, 28.724566, 37.100822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986700, 28.886305, 37.314266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743399, 28.787046, 37.012684>,  <26.597418, 28.727491, 36.831734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743399, 28.787046, 37.012684>,  <26.986700, 28.886305, 37.314266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743399, 28.787046, 37.012684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472579, -0.876387, -0.092813,
		-0.637728, -0.412758, 0.650334,
		-0.608254, -0.248144, -0.753957,
		26.560923, 28.712603, 36.786495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554735, 28.195036, 37.391953>,  <26.986700, 28.886305, 37.314266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554735, 28.195036, 37.391953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714869, 28.337696, 37.054306>,  <26.810949, 28.423292, 36.851719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714869, 28.337696, 37.054306>,  <26.554735, 28.195036, 37.391953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714869, 28.337696, 37.054306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642073, -0.766401, -0.019304,
		-0.653816, -0.534256, -0.535812,
		0.400333, 0.356651, -0.844117,
		26.834969, 28.444691, 36.801071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041224, 27.744886, 37.203362>,  <26.554735, 28.195036, 37.391953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041224, 27.744886, 37.203362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140450, 28.007013, 36.917980>,  <27.199986, 28.164289, 36.746750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140450, 28.007013, 36.917980>,  <27.041224, 27.744886, 37.203362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140450, 28.007013, 36.917980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945677, -0.323569, 0.031607,
		-0.210140, -0.682540, -0.699986,
		0.248066, 0.655318, -0.713457,
		27.214869, 28.203609, 36.703941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243589, 27.507607, 36.580700>,  <27.041224, 27.744886, 37.203362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243589, 27.507607, 36.580700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436991, 27.841518, 36.686054>,  <27.553032, 28.041864, 36.749268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436991, 27.841518, 36.686054>,  <27.243589, 27.507607, 36.580700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436991, 27.841518, 36.686054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836590, -0.529220, 0.141577,
		0.257573, 0.151892, -0.954246,
		0.483501, 0.834779, 0.263384,
		27.582041, 28.091951, 36.765068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976055, 27.313787, 36.368774>,  <27.243589, 27.507607, 36.580700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976055, 27.313787, 36.368774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027645, 27.642204, 36.591217>,  <28.058599, 27.839254, 36.724682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027645, 27.642204, 36.591217>,  <27.976055, 27.313787, 36.368774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027645, 27.642204, 36.591217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916952, -0.312267, 0.248371,
		0.377577, 0.477889, -0.793131,
		0.128975, 0.821043, 0.556106,
		28.066338, 27.888517, 36.758049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613382, 27.912878, 36.071880>,  <27.976055, 27.313787, 36.368774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613382, 27.912878, 36.071880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773134, 28.181196, 36.321850>,  <27.868986, 28.342188, 36.471832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773134, 28.181196, 36.321850>,  <27.613382, 27.912878, 36.071880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773134, 28.181196, 36.321850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737470, -0.169886, 0.653664,
		0.544640, -0.721923, 0.426842,
		0.399380, 0.670795, 0.624923,
		27.892948, 28.382435, 36.509327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062588, 28.283222, 35.670895>,  <27.613382, 27.912878, 36.071880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062588, 28.283222, 35.670895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876471, 27.977444, 35.849388>,  <26.764801, 27.793978, 35.956486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876471, 27.977444, 35.849388>,  <27.062588, 28.283222, 35.670895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876471, 27.977444, 35.849388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855878, 0.259953, -0.447099,
		0.225779, -0.589959, -0.775224,
		-0.465292, -0.764443, 0.446241,
		26.736883, 27.748110, 35.983261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545780, 28.860670, 35.921032>,  <27.062588, 28.283222, 35.670895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545780, 28.860670, 35.921032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824409, 29.081224, 36.104664>,  <27.991587, 29.213556, 36.214844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824409, 29.081224, 36.104664>,  <27.545780, 28.860670, 35.921032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824409, 29.081224, 36.104664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180992, 0.484118, -0.856079,
		-0.694280, 0.679414, 0.237428,
		0.696575, 0.551386, 0.459082,
		28.033382, 29.246641, 36.242390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345366, 29.534233, 35.961586>,  <27.545780, 28.860670, 35.921032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345366, 29.534233, 35.961586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744102, 29.502464, 35.961823>,  <27.983345, 29.483402, 35.961964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744102, 29.502464, 35.961823>,  <27.345366, 29.534233, 35.961586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744102, 29.502464, 35.961823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041448, 0.513819, -0.856897,
		0.067754, 0.854214, 0.515488,
		0.996841, -0.079424, 0.000592,
		28.043156, 29.478638, 35.962002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600733, 30.130716, 35.782116>,  <27.345366, 29.534233, 35.961586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600733, 30.130716, 35.782116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941645, 29.933237, 35.712971>,  <28.146191, 29.814749, 35.671482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941645, 29.933237, 35.712971>,  <27.600733, 30.130716, 35.782116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941645, 29.933237, 35.712971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186287, 0.595268, -0.781635,
		0.488793, 0.633968, 0.599304,
		0.852278, -0.493700, -0.172863,
		28.197329, 29.785128, 35.661110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155954, 30.612562, 35.566463>,  <27.600733, 30.130716, 35.782116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155954, 30.612562, 35.566463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285023, 30.256332, 35.438240>,  <28.362465, 30.042595, 35.361305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285023, 30.256332, 35.438240>,  <28.155954, 30.612562, 35.566463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285023, 30.256332, 35.438240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171792, 0.388152, -0.905442,
		0.930790, 0.237092, 0.278240,
		0.322673, -0.890576, -0.320558,
		28.381824, 29.989161, 35.342072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555031, 30.755365, 35.171978>,  <28.155954, 30.612562, 35.566463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555031, 30.755365, 35.171978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515182, 30.387234, 35.020679>,  <28.491274, 30.166355, 34.929901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515182, 30.387234, 35.020679>,  <28.555031, 30.755365, 35.171978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515182, 30.387234, 35.020679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086329, 0.370714, -0.924726,
		0.991273, -0.124776, 0.042520,
		-0.099621, -0.920327, -0.378251,
		28.485296, 30.111135, 34.907204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103659, 30.748562, 34.646137>,  <28.555031, 30.755365, 35.171978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103659, 30.748562, 34.646137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819901, 30.472193, 34.590450>,  <28.649645, 30.306372, 34.557037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819901, 30.472193, 34.590450>,  <29.103659, 30.748562, 34.646137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819901, 30.472193, 34.590450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066798, 0.262546, -0.962605,
		0.701637, -0.673570, -0.232401,
		-0.709397, -0.690923, -0.139219,
		28.607080, 30.264915, 34.548683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316973, 30.210016, 34.102646>,  <29.103659, 30.748562, 34.646137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316973, 30.210016, 34.102646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936214, 30.331331, 34.120144>,  <28.707760, 30.404119, 34.130642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936214, 30.331331, 34.120144>,  <29.316973, 30.210016, 34.102646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936214, 30.331331, 34.120144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063194, 0.333987, -0.940457,
		-0.299837, -0.892452, -0.337087,
		-0.951895, 0.303286, 0.043744,
		28.650646, 30.422318, 34.133266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989716, 29.881092, 33.508823>,  <29.316973, 30.210016, 34.102646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989716, 29.881092, 33.508823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818638, 30.223709, 33.624352>,  <28.715992, 30.429279, 33.693668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818638, 30.223709, 33.624352>,  <28.989716, 29.881092, 33.508823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818638, 30.223709, 33.624352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035045, 0.303561, -0.952167,
		-0.903244, -0.417358, -0.099813,
		-0.427694, 0.856541, 0.288816,
		28.690329, 30.480671, 33.710995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316353, 30.096947, 33.033455>,  <28.989716, 29.881092, 33.508823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316353, 30.096947, 33.033455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500879, 30.424414, 33.170258>,  <28.611595, 30.620893, 33.252338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500879, 30.424414, 33.170258>,  <28.316353, 30.096947, 33.033455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500879, 30.424414, 33.170258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082165, 0.344397, -0.935222,
		-0.883423, 0.459534, 0.091610,
		0.461317, 0.818669, 0.342006,
		28.639275, 30.670013, 33.272858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983978, 30.758039, 32.791565>,  <28.316353, 30.096947, 33.033455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983978, 30.758039, 32.791565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370344, 30.835049, 32.860779>,  <28.602163, 30.881254, 32.902306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370344, 30.835049, 32.860779>,  <27.983978, 30.758039, 32.791565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370344, 30.835049, 32.860779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113375, 0.286287, -0.951413,
		-0.232704, 0.938603, 0.254702,
		0.965917, 0.192521, 0.173035,
		28.660120, 30.892805, 32.912689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243845, 31.437342, 32.531807>,  <27.983978, 30.758039, 32.791565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243845, 31.437342, 32.531807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546852, 31.176308, 32.524837>,  <28.728657, 31.019688, 32.520657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546852, 31.176308, 32.524837>,  <28.243845, 31.437342, 32.531807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546852, 31.176308, 32.524837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161406, 0.213093, -0.963607,
		0.632549, 0.727135, 0.266753,
		0.757516, -0.652584, -0.017428,
		28.774107, 30.980532, 32.519608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800802, 31.869312, 32.117249>,  <28.243845, 31.437342, 32.531807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800802, 31.869312, 32.117249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827452, 31.470800, 32.095398>,  <28.843441, 31.231693, 32.082287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827452, 31.470800, 32.095398>,  <28.800802, 31.869312, 32.117249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827452, 31.470800, 32.095398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046133, 0.057768, -0.997263,
		0.996711, 0.063923, 0.049810,
		0.066625, -0.996281, -0.054629,
		28.847439, 31.171915, 32.079010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472807, 31.658785, 31.795256>,  <28.800802, 31.869312, 32.117249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472807, 31.658785, 31.795256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195135, 31.376837, 31.736919>,  <29.028532, 31.207668, 31.701918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195135, 31.376837, 31.736919>,  <29.472807, 31.658785, 31.795256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195135, 31.376837, 31.736919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212580, -0.007189, -0.977117,
		0.687693, -0.709299, 0.154832,
		-0.694181, -0.704871, -0.145839,
		28.986881, 31.165375, 31.693167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671900, 31.236313, 31.359394>,  <29.472807, 31.658785, 31.795256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671900, 31.236313, 31.359394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280748, 31.161953, 31.321043>,  <29.046057, 31.117336, 31.298033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280748, 31.161953, 31.321043>,  <29.671900, 31.236313, 31.359394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280748, 31.161953, 31.321043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099724, -0.011437, -0.994949,
		0.183866, -0.982502, 0.029723,
		-0.977880, -0.185901, -0.095876,
		28.987385, 31.106182, 31.292280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534550, 30.726740, 30.784653>,  <29.671900, 31.236313, 31.359394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534550, 30.726740, 30.784653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218159, 30.969341, 30.816925>,  <29.028324, 31.114902, 30.836288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218159, 30.969341, 30.816925>,  <29.534550, 30.726740, 30.784653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218159, 30.969341, 30.816925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002701, 0.135327, -0.990797,
		-0.611841, -0.783479, -0.108678,
		-0.790976, 0.606504, 0.080683,
		28.980865, 31.151293, 30.841129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451059, 30.347281, 31.429472>,  <29.534550, 30.726740, 30.784653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451059, 30.347281, 31.429472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588625, 30.284758, 31.059113>,  <29.671164, 30.247244, 30.836897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588625, 30.284758, 31.059113>,  <29.451059, 30.347281, 31.429472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588625, 30.284758, 31.059113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923889, -0.119867, 0.363402,
		-0.167787, -0.980408, 0.103186,
		0.343913, -0.156306, -0.925901,
		29.691799, 30.237865, 30.781342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989161, 29.795048, 31.414488>,  <29.451059, 30.347281, 31.429472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989161, 29.795048, 31.414488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045576, 30.036310, 31.100466>,  <30.079426, 30.181067, 30.912052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045576, 30.036310, 31.100466>,  <29.989161, 29.795048, 31.414488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045576, 30.036310, 31.100466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980859, 0.022404, 0.193427,
		0.134255, -0.797310, -0.588449,
		0.141038, 0.603154, -0.785056,
		30.087887, 30.217257, 30.864948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702585, 29.726370, 31.336020>,  <29.989161, 29.795048, 31.414488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702585, 29.726370, 31.336020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576303, 30.023743, 31.100176>,  <30.500534, 30.202166, 30.958670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576303, 30.023743, 31.100176>,  <30.702585, 29.726370, 31.336020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576303, 30.023743, 31.100176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945854, 0.295980, -0.133254,
		0.075447, -0.599754, -0.796620,
		-0.315703, 0.743432, -0.589610,
		30.481592, 30.246773, 30.923292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907057, 30.447823, 31.330256>,  <30.702585, 29.726370, 31.336020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907057, 30.447823, 31.330256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166071, 30.156563, 31.240374>,  <31.321480, 29.981806, 31.186445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166071, 30.156563, 31.240374>,  <30.907057, 30.447823, 31.330256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166071, 30.156563, 31.240374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025014, 0.315026, -0.948753,
		0.761623, 0.608732, 0.222205,
		0.647537, -0.728151, -0.224705,
		31.360332, 29.938118, 31.172962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608824, 30.720903, 31.067570>,  <30.907057, 30.447823, 31.330256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608824, 30.720903, 31.067570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489006, 30.374947, 30.906454>,  <31.417116, 30.167374, 30.809784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489006, 30.374947, 30.906454>,  <31.608824, 30.720903, 31.067570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489006, 30.374947, 30.906454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127959, 0.381942, -0.915285,
		0.945464, -0.325707, -0.003737,
		-0.299542, -0.864890, -0.402790,
		31.399143, 30.115480, 30.785618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182755, 30.296806, 30.704473>,  <31.608824, 30.720903, 31.067570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182755, 30.296806, 30.704473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806911, 30.269093, 30.570404>,  <31.581406, 30.252464, 30.489964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806911, 30.269093, 30.570404>,  <32.182755, 30.296806, 30.704473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806911, 30.269093, 30.570404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317780, 0.187087, -0.929524,
		0.127104, -0.979897, -0.153773,
		-0.939606, -0.069280, -0.335171,
		31.525030, 30.248308, 30.469852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136909, 29.869223, 30.179295>,  <32.182755, 30.296806, 30.704473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136909, 29.869223, 30.179295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832413, 30.124363, 30.132542>,  <31.649715, 30.277447, 30.104490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832413, 30.124363, 30.132542>,  <32.136909, 29.869223, 30.179295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832413, 30.124363, 30.132542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113872, -0.045959, -0.992432,
		-0.638397, -0.768786, -0.037648,
		-0.761238, 0.637852, -0.116883,
		31.604042, 30.315718, 30.097477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671371, 29.552662, 29.658548>,  <32.136909, 29.869223, 30.179295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671371, 29.552662, 29.658548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680323, 29.952435, 29.668657>,  <31.685694, 30.192297, 29.674723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680323, 29.952435, 29.668657>,  <31.671371, 29.552662, 29.658548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680323, 29.952435, 29.668657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199994, 0.020292, -0.979587,
		-0.979541, 0.026974, -0.199426,
		0.022377, 0.999430, 0.025271,
		31.687037, 30.252264, 29.676239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149570, 29.743362, 29.243631>,  <31.671371, 29.552662, 29.658548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149570, 29.743362, 29.243631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380836, 30.069147, 29.263130>,  <31.519596, 30.264618, 29.274830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380836, 30.069147, 29.263130>,  <31.149570, 29.743362, 29.243631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380836, 30.069147, 29.263130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007741, 0.054267, -0.998497,
		-0.815884, 0.577672, 0.025071,
		0.578164, 0.814463, 0.048747,
		31.554285, 30.313486, 29.277754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872570, 30.081821, 28.806814>,  <31.149570, 29.743362, 29.243631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872570, 30.081821, 28.806814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222317, 30.270344, 28.853041>,  <31.432165, 30.383457, 28.880777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222317, 30.270344, 28.853041>,  <30.872570, 30.081821, 28.806814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222317, 30.270344, 28.853041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050867, 0.147823, -0.987705,
		-0.482595, 0.869493, 0.105277,
		0.874365, 0.471306, 0.115567,
		31.484627, 30.411736, 28.887711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941244, 30.541941, 28.219599>,  <30.872570, 30.081821, 28.806814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941244, 30.541941, 28.219599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311844, 30.494631, 28.362490>,  <31.534203, 30.466246, 28.448225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311844, 30.494631, 28.362490>,  <30.941244, 30.541941, 28.219599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311844, 30.494631, 28.362490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367536, 0.080739, -0.926498,
		0.080739, 0.989693, 0.118275,
		0.926498, -0.118275, 0.357229,
		31.589794, 30.459148, 28.469658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448256, 31.092064, 27.926613>,  <30.941244, 30.541941, 28.219599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448256, 31.092064, 27.926613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690527, 30.786690, 28.016336>,  <31.835890, 30.603464, 28.070171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690527, 30.786690, 28.016336>,  <31.448256, 31.092064, 27.926613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690527, 30.786690, 28.016336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381220, 0.030969, -0.923965,
		0.698443, 0.645138, 0.309795,
		0.605680, -0.763438, 0.224309,
		31.872231, 30.557659, 28.083630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088055, 31.361000, 27.882771>,  <31.448256, 31.092064, 27.926613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088055, 31.361000, 27.882771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164196, 30.968596, 27.867874>,  <32.209881, 30.733152, 27.858936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164196, 30.968596, 27.867874>,  <32.088055, 31.361000, 27.882771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164196, 30.968596, 27.867874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438581, 0.118916, -0.890790,
		0.878301, 0.153232, 0.452888,
		0.190353, -0.981009, -0.037240,
		32.221302, 30.674294, 27.856703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787189, 31.394764, 27.898119>,  <32.088055, 31.361000, 27.882771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787189, 31.394764, 27.898119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694618, 31.036821, 27.745451>,  <32.639076, 30.822056, 27.653851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694618, 31.036821, 27.745451>,  <32.787189, 31.394764, 27.898119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694618, 31.036821, 27.745451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732108, 0.098168, -0.674078,
		0.640672, -0.435420, 0.632414,
		-0.231425, -0.894859, -0.381668,
		32.625191, 30.768364, 27.630951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476860, 30.919559, 27.851515>,  <32.787189, 31.394764, 27.898119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476860, 30.919559, 27.851515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203316, 30.798815, 27.585821>,  <33.039188, 30.726368, 27.426405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203316, 30.798815, 27.585821>,  <33.476860, 30.919559, 27.851515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203316, 30.798815, 27.585821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683144, 0.054776, -0.728227,
		0.256208, -0.951777, 0.168755,
		-0.683866, -0.301861, -0.664235,
		32.998158, 30.708256, 27.386551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918079, 30.584454, 27.467443>,  <33.476860, 30.919559, 27.851515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918079, 30.584454, 27.467443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591129, 30.617708, 27.239414>,  <33.394958, 30.637661, 27.102596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591129, 30.617708, 27.239414>,  <33.918079, 30.584454, 27.467443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591129, 30.617708, 27.239414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575416, 0.166150, -0.800806,
		0.028141, -0.982590, -0.183645,
		-0.817377, 0.083137, -0.570073,
		33.345917, 30.642649, 27.068392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070000, 30.361914, 26.782637>,  <33.918079, 30.584454, 27.467443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070000, 30.361914, 26.782637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737148, 30.564600, 26.692480>,  <33.537437, 30.686213, 26.638386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737148, 30.564600, 26.692480>,  <34.070000, 30.361914, 26.782637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737148, 30.564600, 26.692480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487520, 0.474629, -0.732838,
		-0.264363, -0.719699, -0.641986,
		-0.832128, 0.506716, -0.225393,
		33.487511, 30.716616, 26.624863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981258, 30.352608, 26.030897>,  <34.070000, 30.361914, 26.782637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981258, 30.352608, 26.030897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774784, 30.668985, 26.162327>,  <33.650902, 30.858812, 26.241184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774784, 30.668985, 26.162327>,  <33.981258, 30.352608, 26.030897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774784, 30.668985, 26.162327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351739, 0.545558, -0.760688,
		-0.780919, -0.277081, -0.559813,
		-0.516183, 0.790944, 0.328576,
		33.619930, 30.906269, 26.260900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579308, 30.530958, 25.473961>,  <33.981258, 30.352608, 26.030897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579308, 30.530958, 25.473961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596310, 30.844439, 25.721834>,  <33.606510, 31.032528, 25.870558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596310, 30.844439, 25.721834>,  <33.579308, 30.530958, 25.473961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596310, 30.844439, 25.721834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307561, 0.579858, -0.754434,
		-0.950579, 0.222657, -0.216389,
		0.042505, 0.783702, 0.619681,
		33.609062, 31.079550, 25.907738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360283, 31.097595, 25.052990>,  <33.579308, 30.530958, 25.473961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360283, 31.097595, 25.052990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550343, 31.295048, 25.344349>,  <33.664379, 31.413519, 25.519165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550343, 31.295048, 25.344349>,  <33.360283, 31.097595, 25.052990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550343, 31.295048, 25.344349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121201, 0.783204, -0.609837,
		-0.871519, 0.378045, 0.312308,
		0.475147, 0.493633, 0.728397,
		33.692886, 31.443138, 25.562868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986542, 31.726936, 25.188099>,  <33.360283, 31.097595, 25.052990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986542, 31.726936, 25.188099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355064, 31.779858, 25.334358>,  <33.576176, 31.811611, 25.422113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355064, 31.779858, 25.334358>,  <32.986542, 31.726936, 25.188099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355064, 31.779858, 25.334358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118570, 0.799966, -0.588214,
		-0.370329, 0.585278, 0.721323,
		0.921302, 0.132305, 0.365647,
		33.631454, 31.819550, 25.444052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093250, 32.451321, 25.158823>,  <32.986542, 31.726936, 25.188099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093250, 32.451321, 25.158823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464893, 32.326080, 25.237532>,  <33.687881, 32.250935, 25.284758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464893, 32.326080, 25.237532>,  <33.093250, 32.451321, 25.158823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464893, 32.326080, 25.237532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367577, 0.723651, -0.584137,
		0.040499, 0.615057, 0.787441,
		0.929111, -0.313102, 0.196774,
		33.743626, 32.232151, 25.296564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542053, 33.013477, 25.242544>,  <33.093250, 32.451321, 25.158823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542053, 33.013477, 25.242544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796368, 32.720242, 25.145914>,  <33.948956, 32.544300, 25.087936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796368, 32.720242, 25.145914>,  <33.542053, 33.013477, 25.242544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796368, 32.720242, 25.145914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373746, 0.566223, -0.734646,
		0.675347, 0.376788, 0.633985,
		0.635783, -0.733090, -0.241574,
		33.987103, 32.500313, 25.073442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192345, 33.406441, 25.086723>,  <33.542053, 33.013477, 25.242544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192345, 33.406441, 25.086723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254940, 33.061344, 24.894394>,  <34.292496, 32.854286, 24.778997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254940, 33.061344, 24.894394>,  <34.192345, 33.406441, 25.086723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254940, 33.061344, 24.894394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393765, 0.500953, -0.770711,
		0.905794, -0.068727, 0.418108,
		0.156484, -0.862741, -0.480822,
		34.301884, 32.802521, 24.750147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819149, 33.453682, 24.780106>,  <34.192345, 33.406441, 25.086723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819149, 33.453682, 24.780106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684956, 33.136829, 24.576151>,  <34.604439, 32.946716, 24.453779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684956, 33.136829, 24.576151>,  <34.819149, 33.453682, 24.780106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684956, 33.136829, 24.576151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362407, 0.391076, -0.846003,
		0.869548, -0.468604, 0.155875,
		-0.335482, -0.792130, -0.509885,
		34.584312, 32.899189, 24.423185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335194, 33.283146, 24.383404>,  <34.819149, 33.453682, 24.780106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335194, 33.283146, 24.383404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015503, 33.132538, 24.196011>,  <34.823689, 33.042175, 24.083574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015503, 33.132538, 24.196011>,  <35.335194, 33.283146, 24.383404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015503, 33.132538, 24.196011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328036, 0.379867, -0.864924,
		0.503618, -0.844948, -0.180089,
		-0.799226, -0.376516, -0.468481,
		34.775734, 33.019585, 24.055466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604328, 32.943741, 23.842066>,  <35.335194, 33.283146, 24.383404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604328, 32.943741, 23.842066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217552, 32.980915, 23.747080>,  <34.985485, 33.003220, 23.690088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217552, 32.980915, 23.747080>,  <35.604328, 32.943741, 23.842066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217552, 32.980915, 23.747080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252002, 0.205730, -0.945606,
		-0.039031, -0.974185, -0.222349,
		-0.966939, 0.092940, -0.237467,
		34.927471, 33.008797, 23.675840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495461, 32.534843, 23.226555>,  <35.604328, 32.943741, 23.842066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495461, 32.534843, 23.226555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178791, 32.779121, 23.233513>,  <34.988789, 32.925690, 23.237688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178791, 32.779121, 23.233513>,  <35.495461, 32.534843, 23.226555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178791, 32.779121, 23.233513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086015, 0.139601, -0.986465,
		-0.604861, -0.779461, -0.163047,
		-0.791672, 0.610698, 0.017394,
		34.941288, 32.962330, 23.238731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187908, 32.387184, 22.708210>,  <35.495461, 32.534843, 23.226555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187908, 32.387184, 22.708210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039524, 32.748249, 22.795477>,  <34.950493, 32.964886, 22.847837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039524, 32.748249, 22.795477>,  <35.187908, 32.387184, 22.708210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039524, 32.748249, 22.795477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144430, 0.175994, -0.973738,
		-0.917349, -0.392727, 0.065084,
		-0.370959, 0.902658, 0.218169,
		34.928238, 33.019047, 22.860928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689896, 32.499599, 22.249334>,  <35.187908, 32.387184, 22.708210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689896, 32.499599, 22.249334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732830, 32.874374, 22.382381>,  <34.758591, 33.099239, 22.462210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732830, 32.874374, 22.382381>,  <34.689896, 32.499599, 22.249334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732830, 32.874374, 22.382381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018906, 0.336415, -0.941524,
		-0.994043, 0.094769, 0.053823,
		0.107334, 0.936933, 0.332620,
		34.765030, 33.155453, 22.482168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170704, 32.869026, 21.817621>,  <34.689896, 32.499599, 22.249334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170704, 32.869026, 21.817621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456165, 33.120403, 21.941402>,  <34.627441, 33.271229, 22.015671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456165, 33.120403, 21.941402>,  <34.170704, 32.869026, 21.817621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456165, 33.120403, 21.941402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139672, 0.305229, -0.941980,
		-0.686436, 0.715466, 0.130051,
		0.713651, 0.628445, 0.309451,
		34.670261, 33.308937, 22.034237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095406, 33.619610, 21.550739>,  <34.170704, 32.869026, 21.817621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095406, 33.619610, 21.550739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486549, 33.605972, 21.633326>,  <34.721237, 33.597790, 21.682877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486549, 33.605972, 21.633326>,  <34.095406, 33.619610, 21.550739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486549, 33.605972, 21.633326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203795, 0.379175, -0.902604,
		-0.047513, 0.924696, 0.377728,
		0.977860, -0.034094, 0.206464,
		34.779907, 33.595745, 21.695265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325603, 34.307678, 21.407770>,  <34.095406, 33.619610, 21.550739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325603, 34.307678, 21.407770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651913, 34.076427, 21.414547>,  <34.847698, 33.937675, 21.418613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651913, 34.076427, 21.414547>,  <34.325603, 34.307678, 21.407770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651913, 34.076427, 21.414547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285806, 0.377479, -0.880809,
		0.502823, 0.723381, 0.473168,
		0.815772, -0.578126, 0.016941,
		34.896645, 33.902988, 21.419630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014523, 34.723923, 21.305819>,  <34.325603, 34.307678, 21.407770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014523, 34.723923, 21.305819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114094, 34.345795, 21.221533>,  <35.173836, 34.118916, 21.170961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114094, 34.345795, 21.221533>,  <35.014523, 34.723923, 21.305819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114094, 34.345795, 21.221533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481985, 0.309621, -0.819650,
		0.840074, 0.102474, 0.532704,
		0.248929, -0.945322, -0.210714,
		35.188774, 34.062199, 21.158319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658352, 34.792160, 21.096821>,  <35.014523, 34.723923, 21.305819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658352, 34.792160, 21.096821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560108, 34.418423, 20.993528>,  <35.501163, 34.194180, 20.931553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560108, 34.418423, 20.993528>,  <35.658352, 34.792160, 21.096821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560108, 34.418423, 20.993528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476054, 0.115798, -0.871759,
		0.844423, -0.337040, 0.416357,
		-0.245605, -0.934342, -0.258232,
		35.486427, 34.138119, 20.916059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276829, 34.503586, 21.009539>,  <35.658352, 34.792160, 21.096821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276829, 34.503586, 21.009539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010170, 34.318703, 20.775631>,  <35.850174, 34.207775, 20.635286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010170, 34.318703, 20.775631>,  <36.276829, 34.503586, 21.009539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010170, 34.318703, 20.775631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465735, 0.354233, -0.810932,
		0.581961, -0.812949, -0.020883,
		-0.666643, -0.462205, -0.584768,
		35.810177, 34.180042, 20.600201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733524, 34.167480, 20.635132>,  <36.276829, 34.503586, 21.009539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733524, 34.167480, 20.635132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390709, 34.202980, 20.432110>,  <36.185020, 34.224281, 20.310297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390709, 34.202980, 20.432110>,  <36.733524, 34.167480, 20.635132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390709, 34.202980, 20.432110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510858, 0.274759, -0.814574,
		0.067160, -0.957408, -0.280818,
		-0.857037, 0.088751, -0.507553,
		36.133598, 34.229607, 20.279844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893784, 33.856926, 20.020247>,  <36.733524, 34.167480, 20.635132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893784, 33.856926, 20.020247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569687, 34.076073, 19.936962>,  <36.375229, 34.207561, 19.886992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569687, 34.076073, 19.936962>,  <36.893784, 33.856926, 20.020247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569687, 34.076073, 19.936962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369976, 0.202580, -0.906685,
		-0.454565, -0.811666, -0.366837,
		-0.810240, 0.547868, -0.208212,
		36.326614, 34.240433, 19.874498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652840, 33.590080, 19.367146>,  <36.893784, 33.856926, 20.020247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652840, 33.590080, 19.367146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486031, 33.950386, 19.415672>,  <36.385944, 34.166569, 19.444788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486031, 33.950386, 19.415672>,  <36.652840, 33.590080, 19.367146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486031, 33.950386, 19.415672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163311, 0.205567, -0.964921,
		-0.894103, -0.382583, -0.232831,
		-0.417025, 0.900762, 0.121318,
		36.360924, 34.220615, 19.452068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295868, 33.639797, 18.721529>,  <36.652840, 33.590080, 19.367146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295868, 33.639797, 18.721529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304810, 34.012791, 18.865736>,  <36.310177, 34.236588, 18.952259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304810, 34.012791, 18.865736>,  <36.295868, 33.639797, 18.721529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304810, 34.012791, 18.865736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130136, 0.354824, -0.925832,
		-0.991244, 0.067615, -0.113417,
		0.022356, 0.932485, 0.360517,
		36.311516, 34.292538, 18.973890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936035, 34.053562, 18.287121>,  <36.295868, 33.639797, 18.721529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936035, 34.053562, 18.287121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189537, 34.282024, 18.495787>,  <36.341637, 34.419102, 18.620987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189537, 34.282024, 18.495787>,  <35.936035, 34.053562, 18.287121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189537, 34.282024, 18.495787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205328, 0.525987, -0.825336,
		-0.745788, 0.630170, 0.216070,
		0.633752, 0.571160, 0.521666,
		36.379662, 34.453373, 18.652287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754681, 34.773155, 18.069201>,  <35.936035, 34.053562, 18.287121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754681, 34.773155, 18.069201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127457, 34.782112, 18.213966>,  <36.351124, 34.787487, 18.300827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127457, 34.782112, 18.213966>,  <35.754681, 34.773155, 18.069201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127457, 34.782112, 18.213966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246234, 0.693591, -0.676979,
		-0.266183, 0.720021, 0.640872,
		0.931942, 0.022396, 0.361916,
		36.407040, 34.788830, 18.322540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857712, 35.435863, 17.981430>,  <35.754681, 34.773155, 18.069201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857712, 35.435863, 17.981430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225319, 35.292873, 18.047901>,  <36.445885, 35.207077, 18.087784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225319, 35.292873, 18.047901>,  <35.857712, 35.435863, 17.981430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225319, 35.292873, 18.047901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366039, 0.617308, -0.696381,
		0.146357, 0.700815, 0.698168,
		0.919019, -0.357477, 0.166178,
		36.501026, 35.185631, 18.097755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309227, 35.974495, 18.195860>,  <35.857712, 35.435863, 17.981430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309227, 35.974495, 18.195860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559597, 35.699291, 18.048967>,  <36.709820, 35.534168, 17.960833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559597, 35.699291, 18.048967>,  <36.309227, 35.974495, 18.195860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559597, 35.699291, 18.048967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388351, 0.683315, -0.618275,
		0.676314, 0.244380, 0.694894,
		0.625926, -0.688011, -0.367230,
		36.747375, 35.492889, 17.938799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053356, 36.245319, 18.214867>,  <36.309227, 35.974495, 18.195860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053356, 36.245319, 18.214867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050343, 35.958000, 17.936590>,  <37.048534, 35.785606, 17.769625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050343, 35.958000, 17.936590>,  <37.053356, 36.245319, 18.214867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050343, 35.958000, 17.936590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383691, 0.640383, -0.665350,
		0.923431, -0.271943, 0.270782,
		-0.007533, -0.718301, -0.695692,
		37.048084, 35.742512, 17.727882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645615, 36.336235, 17.947382>,  <37.053356, 36.245319, 18.214867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645615, 36.336235, 17.947382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435581, 36.129940, 17.676590>,  <37.309563, 36.006165, 17.514114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435581, 36.129940, 17.676590>,  <37.645615, 36.336235, 17.947382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435581, 36.129940, 17.676590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331075, 0.609020, -0.720752,
		0.784013, -0.602587, -0.149039,
		-0.525084, -0.515736, -0.676981,
		37.278057, 35.975220, 17.473495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064980, 36.347973, 17.448856>,  <37.645615, 36.336235, 17.947382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064980, 36.347973, 17.448856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711861, 36.254200, 17.286026>,  <37.499989, 36.197937, 17.188328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711861, 36.254200, 17.286026>,  <38.064980, 36.347973, 17.448856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711861, 36.254200, 17.286026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184914, 0.623186, -0.759898,
		0.431830, -0.746110, -0.506797,
		-0.882796, -0.234434, -0.407077,
		37.447021, 36.183868, 17.163902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186249, 36.162586, 16.733475>,  <38.064980, 36.347973, 17.448856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186249, 36.162586, 16.733475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802578, 36.275047, 16.745628>,  <37.572376, 36.342525, 16.752920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802578, 36.275047, 16.745628>,  <38.186249, 36.162586, 16.733475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802578, 36.275047, 16.745628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068297, 0.334577, -0.939891,
		-0.274420, -0.899450, -0.340122,
		-0.959182, 0.281154, 0.030385,
		37.514824, 36.359394, 16.754744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878620, 35.971287, 16.169760>,  <38.186249, 36.162586, 16.733475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878620, 35.971287, 16.169760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628563, 36.263298, 16.280214>,  <37.478527, 36.438503, 16.346487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628563, 36.263298, 16.280214>,  <37.878620, 35.971287, 16.169760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628563, 36.263298, 16.280214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085447, 0.287650, -0.953916,
		-0.775817, -0.619931, -0.117444,
		-0.625145, 0.730029, 0.276135,
		37.441021, 36.482307, 16.363054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311779, 35.950054, 15.623666>,  <37.878620, 35.971287, 16.169760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311779, 35.950054, 15.623666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306992, 36.299644, 15.817994>,  <37.304119, 36.509399, 15.934591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306992, 36.299644, 15.817994>,  <37.311779, 35.950054, 15.623666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306992, 36.299644, 15.817994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033179, 0.485934, -0.873365,
		-0.999378, 0.005667, -0.034813,
		-0.011967, 0.873977, 0.485820,
		37.303402, 36.561836, 15.963740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817600, 36.396091, 15.351090>,  <37.311779, 35.950054, 15.623666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817600, 36.396091, 15.351090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128635, 36.590500, 15.510664>,  <37.315254, 36.707146, 15.606408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128635, 36.590500, 15.510664>,  <36.817600, 36.396091, 15.351090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128635, 36.590500, 15.510664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173259, 0.444283, -0.878974,
		-0.604436, 0.752596, 0.261261,
		0.777585, 0.486017, 0.398934,
		37.361912, 36.736305, 15.630344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781490, 37.195087, 15.097389>,  <36.817600, 36.396091, 15.351090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781490, 37.195087, 15.097389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153496, 37.064293, 15.164517>,  <37.376698, 36.985817, 15.204794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153496, 37.064293, 15.164517>,  <36.781490, 37.195087, 15.097389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153496, 37.064293, 15.164517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320959, 0.500072, -0.804309,
		0.179074, 0.801878, 0.570021,
		0.930009, -0.326984, 0.167820,
		37.432499, 36.966198, 15.214864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225769, 37.737480, 14.938544>,  <36.781490, 37.195087, 15.097389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225769, 37.737480, 14.938544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467319, 37.418892, 14.926091>,  <37.612251, 37.227737, 14.918619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467319, 37.418892, 14.926091>,  <37.225769, 37.737480, 14.938544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467319, 37.418892, 14.926091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498987, 0.408209, -0.764446,
		0.621566, 0.446096, 0.643935,
		0.603877, -0.796469, -0.031133,
		37.648483, 37.179951, 14.916751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261707, 38.200031, 15.485443>,  <37.225769, 37.737480, 14.938544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261707, 38.200031, 15.485443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497978, 38.472965, 15.657735>,  <37.639740, 38.636726, 15.761109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497978, 38.472965, 15.657735>,  <37.261707, 38.200031, 15.485443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497978, 38.472965, 15.657735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223145, 0.374855, -0.899828,
		-0.775441, 0.627622, 0.069159,
		0.590676, 0.682330, 0.430729,
		37.675182, 38.677666, 15.786954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100624, 38.907879, 15.301619>,  <37.261707, 38.200031, 15.485443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100624, 38.907879, 15.301619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481152, 38.948257, 15.418107>,  <37.709469, 38.972485, 15.488000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481152, 38.948257, 15.418107>,  <37.100624, 38.907879, 15.301619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481152, 38.948257, 15.418107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185522, 0.566989, -0.802562,
		-0.246132, 0.817517, 0.520658,
		0.951315, 0.100942, 0.291221,
		37.766544, 38.978539, 15.505473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507965, 38.703125, 14.528456>,  <37.100624, 38.907879, 15.301619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507965, 38.703125, 14.528456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862679, 38.864159, 14.437644>,  <38.075508, 38.960777, 14.383157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862679, 38.864159, 14.437644>,  <37.507965, 38.703125, 14.528456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862679, 38.864159, 14.437644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209917, 0.086799, 0.973859,
		0.411767, -0.911258, -0.007537,
		0.886782, 0.402585, -0.227029,
		38.128712, 38.984936, 14.369535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069221, 38.224598, 14.854948>,  <37.507965, 38.703125, 14.528456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069221, 38.224598, 14.854948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147251, 38.613049, 14.800014>,  <38.194069, 38.846119, 14.767053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147251, 38.613049, 14.800014>,  <38.069221, 38.224598, 14.854948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147251, 38.613049, 14.800014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098515, 0.119917, 0.987884,
		0.975828, -0.206242, -0.072278,
		0.195076, 0.971125, -0.137337,
		38.205772, 38.904385, 14.758813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692894, 38.435703, 15.258870>,  <38.069221, 38.224598, 14.854948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692894, 38.435703, 15.258870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428318, 38.732594, 15.215801>,  <38.269573, 38.910728, 15.189960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428318, 38.732594, 15.215801>,  <38.692894, 38.435703, 15.258870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428318, 38.732594, 15.215801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052689, 0.097223, 0.993867,
		0.748142, 0.663060, -0.025200,
		-0.661443, 0.742226, -0.107673,
		38.229885, 38.955261, 15.183499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968983, 39.019424, 15.790594>,  <38.692894, 38.435703, 15.258870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968983, 39.019424, 15.790594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578442, 39.030407, 15.704815>,  <38.344116, 39.036995, 15.653347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578442, 39.030407, 15.704815>,  <38.968983, 39.019424, 15.790594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578442, 39.030407, 15.704815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214030, 0.017438, 0.976672,
		0.030552, 0.999471, -0.011150,
		-0.976349, 0.027453, -0.214449,
		38.285538, 39.038643, 15.640480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593933, 39.437183, 16.247669>,  <38.968983, 39.019424, 15.790594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593933, 39.437183, 16.247669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282223, 39.213402, 16.134714>,  <38.095196, 39.079132, 16.066942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282223, 39.213402, 16.134714>,  <38.593933, 39.437183, 16.247669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282223, 39.213402, 16.134714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382589, 0.067822, 0.921426,
		-0.496346, 0.826081, -0.266893,
		-0.779273, -0.559456, -0.282386,
		38.048439, 39.045567, 16.049999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909927, 39.674213, 16.520348>,  <38.593933, 39.437183, 16.247669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909927, 39.674213, 16.520348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822819, 39.292084, 16.440422>,  <37.770554, 39.062805, 16.392467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822819, 39.292084, 16.440422>,  <37.909927, 39.674213, 16.520348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822819, 39.292084, 16.440422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463764, -0.078851, 0.882443,
		-0.858777, 0.284840, -0.425874,
		-0.217774, -0.955326, -0.199813,
		37.757488, 39.005486, 16.380478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106667, 39.546925, 16.634518>,  <37.909927, 39.674213, 16.520348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106667, 39.546925, 16.634518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292576, 39.192829, 16.641848>,  <37.404121, 38.980373, 16.646246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292576, 39.192829, 16.641848>,  <37.106667, 39.546925, 16.634518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292576, 39.192829, 16.641848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533858, -0.263658, 0.803418,
		-0.706384, -0.383193, -0.595134,
		0.464776, -0.885239, 0.018327,
		37.432007, 38.927258, 16.647346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605152, 39.188873, 16.778454>,  <37.106667, 39.546925, 16.634518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605152, 39.188873, 16.778454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899090, 38.928555, 16.854845>,  <37.075451, 38.772362, 16.900681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899090, 38.928555, 16.854845>,  <36.605152, 39.188873, 16.778454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899090, 38.928555, 16.854845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465945, -0.279788, 0.839413,
		-0.492854, -0.705820, -0.508835,
		0.734840, -0.650797, 0.190979,
		37.119541, 38.733315, 16.912138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339577, 38.585949, 16.997297>,  <36.605152, 39.188873, 16.778454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339577, 38.585949, 16.997297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709999, 38.582962, 17.148226>,  <36.932251, 38.581169, 17.238783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709999, 38.582962, 17.148226>,  <36.339577, 38.585949, 16.997297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709999, 38.582962, 17.148226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375730, -0.111993, 0.919937,
		0.035392, -0.993681, -0.106516,
		0.926053, -0.007463, 0.377319,
		36.987816, 38.580723, 17.261421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394665, 38.006012, 17.387356>,  <36.339577, 38.585949, 16.997297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394665, 38.006012, 17.387356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671535, 38.245384, 17.548738>,  <36.837658, 38.389008, 17.645569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671535, 38.245384, 17.548738>,  <36.394665, 38.006012, 17.387356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671535, 38.245384, 17.548738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274230, -0.299022, 0.913993,
		0.667602, -0.743283, -0.042868,
		0.692175, 0.598428, 0.403458,
		36.879189, 38.424911, 17.669775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608593, 37.592815, 17.888308>,  <36.394665, 38.006012, 17.387356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608593, 37.592815, 17.888308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785427, 37.927677, 18.017139>,  <36.891529, 38.128593, 18.094439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785427, 37.927677, 18.017139>,  <36.608593, 37.592815, 17.888308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785427, 37.927677, 18.017139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255256, -0.226811, 0.939894,
		0.859885, -0.497729, 0.113417,
		0.442088, 0.837152, 0.322079,
		36.918053, 38.178822, 18.113764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026638, 37.380295, 18.512411>,  <36.608593, 37.592815, 17.888308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026638, 37.380295, 18.512411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008205, 37.776691, 18.562723>,  <36.997147, 38.014530, 18.592911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008205, 37.776691, 18.562723>,  <37.026638, 37.380295, 18.512411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008205, 37.776691, 18.562723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208290, -0.132681, 0.969026,
		0.976981, 0.018458, 0.212527,
		-0.046085, 0.990987, 0.125782,
		36.994381, 38.073986, 18.600458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430313, 37.579063, 19.130163>,  <37.026638, 37.380295, 18.512411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430313, 37.579063, 19.130163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155331, 37.863758, 19.072414>,  <36.990341, 38.034576, 19.037766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155331, 37.863758, 19.072414>,  <37.430313, 37.579063, 19.130163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155331, 37.863758, 19.072414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274667, -0.070780, 0.958931,
		0.672286, 0.698873, 0.244148,
		-0.687451, 0.711735, -0.144373,
		36.949097, 38.077278, 19.029102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540077, 37.927147, 19.737743>,  <37.430313, 37.579063, 19.130163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540077, 37.927147, 19.737743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184891, 38.061726, 19.612320>,  <36.971779, 38.142475, 19.537066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184891, 38.061726, 19.612320>,  <37.540077, 37.927147, 19.737743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184891, 38.061726, 19.612320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320731, 0.035627, 0.946500,
		0.329622, 0.941027, 0.076274,
		-0.887964, 0.336451, -0.313560,
		36.918503, 38.162663, 19.518251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405529, 38.431202, 20.207520>,  <37.540077, 37.927147, 19.737743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405529, 38.431202, 20.207520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058475, 38.305809, 20.053146>,  <36.850243, 38.230572, 19.960522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058475, 38.305809, 20.053146>,  <37.405529, 38.431202, 20.207520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058475, 38.305809, 20.053146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360236, -0.138673, 0.922497,
		-0.342706, 0.939414, 0.007389,
		-0.867631, -0.313483, -0.385934,
		36.798187, 38.211765, 19.937366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903152, 38.703091, 20.670877>,  <37.405529, 38.431202, 20.207520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903152, 38.703091, 20.670877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684452, 38.420341, 20.491369>,  <36.553230, 38.250690, 20.383665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684452, 38.420341, 20.491369>,  <36.903152, 38.703091, 20.670877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684452, 38.420341, 20.491369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416799, -0.235077, 0.878076,
		-0.726183, 0.667136, -0.166095,
		-0.546751, -0.706873, -0.448770,
		36.520428, 38.208279, 20.356739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144653, 38.787834, 20.864935>,  <36.903152, 38.703091, 20.670877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144653, 38.787834, 20.864935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200809, 38.417076, 20.725706>,  <36.234505, 38.194622, 20.642168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200809, 38.417076, 20.725706>,  <36.144653, 38.787834, 20.864935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200809, 38.417076, 20.725706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409567, -0.374435, 0.831897,
		-0.901413, 0.025768, -0.432193,
		0.140392, -0.926895, -0.348074,
		36.242928, 38.139008, 20.621284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551258, 38.478561, 21.008661>,  <36.144653, 38.787834, 20.864935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551258, 38.478561, 21.008661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827675, 38.190689, 20.981781>,  <35.993526, 38.017963, 20.965652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827675, 38.190689, 20.981781>,  <35.551258, 38.478561, 21.008661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827675, 38.190689, 20.981781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427804, -0.482169, 0.764523,
		-0.582617, -0.499570, -0.641083,
		0.691044, -0.719683, -0.067202,
		36.034988, 37.974785, 20.961620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173481, 37.916744, 20.979212>,  <35.551258, 38.478561, 21.008661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173481, 37.916744, 20.979212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532005, 37.794483, 21.107716>,  <35.747120, 37.721127, 21.184818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532005, 37.794483, 21.107716>,  <35.173481, 37.916744, 20.979212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532005, 37.794483, 21.107716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441311, -0.544068, 0.713607,
		-0.043332, -0.781386, -0.622542,
		0.896307, -0.305656, 0.321258,
		35.800896, 37.702785, 21.204094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008957, 37.253510, 21.196257>,  <35.173481, 37.916744, 20.979212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008957, 37.253510, 21.196257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360432, 37.311909, 21.378063>,  <35.571320, 37.346947, 21.487146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360432, 37.311909, 21.378063>,  <35.008957, 37.253510, 21.196257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360432, 37.311909, 21.378063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286956, -0.599359, 0.747279,
		0.381520, -0.787054, -0.484756,
		0.878691, 0.145997, 0.454517,
		35.624039, 37.355709, 21.514418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311962, 36.556267, 21.399334>,  <35.008957, 37.253510, 21.196257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311962, 36.556267, 21.399334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486214, 36.825306, 21.638611>,  <35.590763, 36.986729, 21.782177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486214, 36.825306, 21.638611>,  <35.311962, 36.556267, 21.399334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486214, 36.825306, 21.638611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307075, -0.513651, 0.801166,
		0.846129, -0.532699, -0.017221,
		0.435626, 0.672602, 0.598194,
		35.616901, 37.027088, 21.818069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767536, 36.193573, 21.864275>,  <35.311962, 36.556267, 21.399334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767536, 36.193573, 21.864275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683723, 36.555294, 22.013048>,  <35.633434, 36.772327, 22.102312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683723, 36.555294, 22.013048>,  <35.767536, 36.193573, 21.864275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683723, 36.555294, 22.013048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292061, -0.420894, 0.858807,
		0.933165, 0.071320, 0.352301,
		-0.209532, 0.904302, 0.371934,
		35.620865, 36.826584, 22.124628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162010, 36.198723, 22.454876>,  <35.767536, 36.193573, 21.864275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162010, 36.198723, 22.454876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919609, 36.504158, 22.544044>,  <35.774170, 36.687420, 22.597546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919609, 36.504158, 22.544044>,  <36.162010, 36.198723, 22.454876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919609, 36.504158, 22.544044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184238, -0.407355, 0.894493,
		0.773833, 0.500994, 0.387540,
		-0.606002, 0.763588, 0.222923,
		35.737808, 36.733234, 22.610922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303902, 36.433159, 23.074474>,  <36.162010, 36.198723, 22.454876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303902, 36.433159, 23.074474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932903, 36.578678, 23.040058>,  <35.710304, 36.665989, 23.019409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932903, 36.578678, 23.040058>,  <36.303902, 36.433159, 23.074474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932903, 36.578678, 23.040058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201648, -0.293063, 0.934586,
		0.314783, 0.884176, 0.345174,
		-0.927496, 0.363795, -0.086041,
		35.654655, 36.687817, 23.014246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956177, 36.531971, 23.743280>,  <36.303902, 36.433159, 23.074474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956177, 36.531971, 23.743280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628128, 36.611641, 23.528719>,  <35.431297, 36.659443, 23.399982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628128, 36.611641, 23.528719>,  <35.956177, 36.531971, 23.743280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628128, 36.611641, 23.528719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571746, -0.322190, 0.754520,
		-0.022544, 0.925485, 0.378112,
		-0.820121, 0.199174, -0.536406,
		35.382092, 36.671394, 23.367798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538414, 36.877747, 24.210953>,  <35.956177, 36.531971, 23.743280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538414, 36.877747, 24.210953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288605, 36.709435, 23.947767>,  <35.138718, 36.608448, 23.789856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288605, 36.709435, 23.947767>,  <35.538414, 36.877747, 24.210953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288605, 36.709435, 23.947767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598107, -0.284075, 0.749379,
		-0.502233, 0.861538, -0.074259,
		-0.624524, -0.420777, -0.657964,
		35.101246, 36.583202, 23.750378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913448, 36.956955, 24.443295>,  <35.538414, 36.877747, 24.210953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913448, 36.956955, 24.443295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857273, 36.628101, 24.222616>,  <34.823566, 36.430790, 24.090208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857273, 36.628101, 24.222616>,  <34.913448, 36.956955, 24.443295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857273, 36.628101, 24.222616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561663, -0.392727, 0.728217,
		-0.815359, 0.412140, -0.406608,
		-0.140441, -0.822135, -0.551697,
		34.815140, 36.381462, 24.057108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307739, 36.736065, 24.633106>,  <34.913448, 36.956955, 24.443295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307739, 36.736065, 24.633106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426311, 36.393429, 24.464163>,  <34.497456, 36.187847, 24.362797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426311, 36.393429, 24.464163>,  <34.307739, 36.736065, 24.633106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426311, 36.393429, 24.464163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534054, -0.515298, 0.670264,
		-0.791781, 0.026877, -0.610214,
		0.296427, -0.856589, -0.422357,
		34.515240, 36.136452, 24.337456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688423, 36.298622, 24.565371>,  <34.307739, 36.736065, 24.633106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688423, 36.298622, 24.565371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004478, 36.053509, 24.559925>,  <34.194111, 35.906441, 24.556658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004478, 36.053509, 24.559925>,  <33.688423, 36.298622, 24.565371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004478, 36.053509, 24.559925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464295, -0.612879, 0.639382,
		-0.400144, -0.498877, -0.768769,
		0.790136, -0.612781, -0.013614,
		34.241520, 35.869675, 24.555841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396393, 35.621403, 24.561581>,  <33.688423, 36.298622, 24.565371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396393, 35.621403, 24.561581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769005, 35.586655, 24.702831>,  <33.992573, 35.565807, 24.787580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769005, 35.586655, 24.702831>,  <33.396393, 35.621403, 24.561581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769005, 35.586655, 24.702831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332006, -0.599359, 0.728383,
		0.148377, -0.795753, -0.587163,
		0.931535, -0.086866, 0.353126,
		34.048466, 35.560596, 24.808769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502571, 34.946083, 24.699656>,  <33.396393, 35.621403, 24.561581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502571, 34.946083, 24.699656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783600, 35.133327, 24.914045>,  <33.952217, 35.245674, 25.042679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783600, 35.133327, 24.914045>,  <33.502571, 34.946083, 24.699656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783600, 35.133327, 24.914045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211352, -0.581932, 0.785293,
		0.679504, -0.665003, -0.309912,
		0.702570, 0.468110, 0.535975,
		33.994370, 35.273762, 25.074839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727940, 34.425148, 25.015572>,  <33.502571, 34.946083, 24.699656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727940, 34.425148, 25.015572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848476, 34.733707, 25.239763>,  <33.920799, 34.918842, 25.374277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848476, 34.733707, 25.239763>,  <33.727940, 34.425148, 25.015572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848476, 34.733707, 25.239763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117994, -0.553115, 0.824707,
		0.946187, -0.314653, -0.075657,
		0.301343, 0.771400, 0.560478,
		33.938881, 34.965126, 25.407906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224995, 34.161831, 25.527874>,  <33.727940, 34.425148, 25.015572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224995, 34.161831, 25.527874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095264, 34.506077, 25.684919>,  <34.017426, 34.712624, 25.779146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095264, 34.506077, 25.684919>,  <34.224995, 34.161831, 25.527874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095264, 34.506077, 25.684919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070301, -0.435833, 0.897278,
		0.943328, 0.263413, 0.201856,
		-0.324330, 0.860618, 0.392615,
		33.997967, 34.764263, 25.802704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671227, 34.417625, 26.104345>,  <34.224995, 34.161831, 25.527874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671227, 34.417625, 26.104345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292175, 34.544006, 26.122988>,  <34.064743, 34.619835, 26.134174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292175, 34.544006, 26.122988>,  <34.671227, 34.417625, 26.104345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292175, 34.544006, 26.122988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057697, -0.312901, 0.948032,
		0.314115, 0.895694, 0.314743,
		-0.947630, 0.315951, 0.046608,
		34.007885, 34.638790, 26.136971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649559, 34.525574, 26.724419>,  <34.671227, 34.417625, 26.104345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649559, 34.525574, 26.724419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257942, 34.577484, 26.661634>,  <34.022972, 34.608631, 26.623964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257942, 34.577484, 26.661634>,  <34.649559, 34.525574, 26.724419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257942, 34.577484, 26.661634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194549, -0.367958, 0.909262,
		0.060247, 0.920741, 0.385494,
		-0.979041, 0.129778, -0.156961,
		33.964230, 34.616417, 26.614546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353535, 34.911842, 27.367844>,  <34.649559, 34.525574, 26.724419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353535, 34.911842, 27.367844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023544, 34.787354, 27.179142>,  <33.825550, 34.712662, 27.065922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023544, 34.787354, 27.179142>,  <34.353535, 34.911842, 27.367844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023544, 34.787354, 27.179142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377783, -0.317156, 0.869880,
		-0.420343, 0.895854, 0.144074,
		-0.824980, -0.311220, -0.471753,
		33.776051, 34.693989, 27.037617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810287, 35.198757, 27.702429>,  <34.353535, 34.911842, 27.367844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810287, 35.198757, 27.702429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691265, 34.859623, 27.526867>,  <33.619850, 34.656143, 27.421530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691265, 34.859623, 27.526867>,  <33.810287, 35.198757, 27.702429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691265, 34.859623, 27.526867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337155, -0.336790, 0.879147,
		-0.893190, 0.409574, -0.185638,
		-0.297555, -0.847834, -0.438907,
		33.601997, 34.605274, 27.395195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148365, 35.036514, 28.042067>,  <33.810287, 35.198757, 27.702429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148365, 35.036514, 28.042067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239010, 34.700527, 27.844847>,  <33.293396, 34.498936, 27.726515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239010, 34.700527, 27.844847>,  <33.148365, 35.036514, 28.042067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239010, 34.700527, 27.844847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408889, -0.541491, 0.734573,
		-0.884002, 0.035141, -0.466161,
		0.226608, -0.839972, -0.493048,
		33.306992, 34.448536, 27.696932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562340, 34.627041, 28.155052>,  <33.148365, 35.036514, 28.042067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562340, 34.627041, 28.155052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836517, 34.354916, 28.051258>,  <33.001026, 34.191639, 27.988981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836517, 34.354916, 28.051258>,  <32.562340, 34.627041, 28.155052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836517, 34.354916, 28.051258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338651, -0.613355, 0.713520,
		-0.644578, -0.401203, -0.650812,
		0.685445, -0.680317, -0.259487,
		33.042152, 34.150822, 27.973413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215591, 34.021431, 27.974859>,  <32.562340, 34.627041, 28.155052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215591, 34.021431, 27.974859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582867, 33.911613, 28.089096>,  <32.803230, 33.845722, 28.157639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582867, 33.911613, 28.089096>,  <32.215591, 34.021431, 27.974859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582867, 33.911613, 28.089096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393274, -0.544968, 0.740504,
		-0.047663, -0.792235, -0.608352,
		0.918185, -0.274543, 0.285591,
		32.858322, 33.829250, 28.174774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234413, 33.239670, 28.149609>,  <32.215591, 34.021431, 27.974859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234413, 33.239670, 28.149609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558102, 33.378487, 28.339231>,  <32.752316, 33.461777, 28.453005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558102, 33.378487, 28.339231>,  <32.234413, 33.239670, 28.149609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558102, 33.378487, 28.339231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171001, -0.632834, 0.755169,
		0.562074, -0.692160, -0.452756,
		0.809217, 0.347039, 0.474059,
		32.800865, 33.482597, 28.481449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514725, 32.638943, 28.484461>,  <32.234413, 33.239670, 28.149609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514725, 32.638943, 28.484461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713776, 32.938568, 28.659401>,  <32.833206, 33.118343, 28.764366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713776, 32.938568, 28.659401>,  <32.514725, 32.638943, 28.484461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713776, 32.938568, 28.659401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138631, -0.429049, 0.892579,
		0.856242, -0.504800, -0.109662,
		0.497625, 0.749062, 0.437351,
		32.863064, 33.163288, 28.790606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052963, 32.320301, 28.889894>,  <32.514725, 32.638943, 28.484461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052963, 32.320301, 28.889894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985577, 32.684200, 29.041672>,  <32.945145, 32.902538, 29.132738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985577, 32.684200, 29.041672>,  <33.052963, 32.320301, 28.889894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985577, 32.684200, 29.041672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214032, -0.409522, 0.886838,
		0.962189, 0.068193, 0.263707,
		-0.168470, 0.909748, 0.379442,
		32.935036, 32.957123, 29.155504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348755, 32.292370, 29.380995>,  <33.052963, 32.320301, 28.889894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348755, 32.292370, 29.380995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103016, 32.596935, 29.463778>,  <32.955574, 32.779675, 29.513447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103016, 32.596935, 29.463778>,  <33.348755, 32.292370, 29.380995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103016, 32.596935, 29.463778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095403, -0.332048, 0.938425,
		0.783247, 0.556774, 0.276634,
		-0.614347, 0.761411, 0.206958,
		32.918713, 32.825359, 29.525866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872398, 32.788605, 29.325586>,  <33.348755, 32.292370, 29.380995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872398, 32.788605, 29.325586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234261, 32.644840, 29.417162>,  <34.451378, 32.558582, 29.472107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234261, 32.644840, 29.417162>,  <33.872398, 32.788605, 29.325586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234261, 32.644840, 29.417162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426118, 0.758053, -0.493739,
		0.003911, 0.544220, 0.838933,
		0.904659, -0.359416, 0.228938,
		34.505657, 32.537014, 29.485844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325081, 33.410759, 29.515491>,  <33.872398, 32.788605, 29.325586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325081, 33.410759, 29.515491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578865, 33.116051, 29.422003>,  <34.731136, 32.939224, 29.365910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578865, 33.116051, 29.422003>,  <34.325081, 33.410759, 29.515491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578865, 33.116051, 29.422003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616345, 0.664700, -0.422248,
		0.466456, 0.123846, 0.875832,
		0.634459, -0.736774, -0.233721,
		34.769203, 32.895020, 29.351887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982723, 33.707241, 29.534050>,  <34.325081, 33.410759, 29.515491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982723, 33.707241, 29.534050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038960, 33.374310, 29.319590>,  <35.072701, 33.174549, 29.190914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038960, 33.374310, 29.319590>,  <34.982723, 33.707241, 29.534050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038960, 33.374310, 29.319590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666984, 0.479826, -0.570000,
		0.731688, -0.277468, 0.622610,
		0.140587, -0.832333, -0.536150,
		35.081135, 33.124611, 29.158745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653797, 33.638554, 29.435587>,  <34.982723, 33.707241, 29.534050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653797, 33.638554, 29.435587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514076, 33.392117, 29.153191>,  <35.430244, 33.244255, 28.983753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514076, 33.392117, 29.153191>,  <35.653797, 33.638554, 29.435587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514076, 33.392117, 29.153191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637060, 0.396370, -0.661094,
		0.687127, -0.680679, 0.254033,
		-0.349301, -0.616090, -0.705990,
		35.409286, 33.207291, 28.941393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206482, 33.356358, 29.049162>,  <35.653797, 33.638554, 29.435587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206482, 33.356358, 29.049162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905975, 33.320042, 28.787670>,  <35.725674, 33.298252, 28.630775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905975, 33.320042, 28.787670>,  <36.206482, 33.356358, 29.049162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905975, 33.320042, 28.787670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551201, 0.458492, -0.697110,
		0.363018, -0.884049, -0.294407,
		-0.751263, -0.090786, -0.653729,
		35.680595, 33.292805, 28.591551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536076, 33.158379, 28.434515>,  <36.206482, 33.356358, 29.049162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536076, 33.158379, 28.434515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170448, 33.274548, 28.321281>,  <35.951073, 33.344250, 28.253342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170448, 33.274548, 28.321281>,  <36.536076, 33.158379, 28.434515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170448, 33.274548, 28.321281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385031, 0.402119, -0.830693,
		-0.127422, -0.868304, -0.479386,
		-0.914065, 0.290427, -0.283086,
		35.896229, 33.361675, 28.236355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493931, 32.912544, 27.863258>,  <36.536076, 33.158379, 28.434515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493931, 32.912544, 27.863258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210873, 33.195168, 27.865143>,  <36.041039, 33.364742, 27.866274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210873, 33.195168, 27.865143>,  <36.493931, 32.912544, 27.863258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210873, 33.195168, 27.865143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477210, 0.482843, -0.734257,
		-0.521068, -0.517343, -0.678855,
		-0.707644, 0.706554, 0.004712,
		35.998581, 33.407135, 27.866556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378010, 33.018898, 27.180300>,  <36.493931, 32.912544, 27.863258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378010, 33.018898, 27.180300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183666, 33.340324, 27.317837>,  <36.067062, 33.533180, 27.400358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183666, 33.340324, 27.317837>,  <36.378010, 33.018898, 27.180300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183666, 33.340324, 27.317837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443583, 0.565661, -0.695171,
		-0.753114, -0.185229, -0.631276,
		-0.485854, 0.803566, 0.343842,
		36.037910, 33.581394, 27.420990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063667, 33.307526, 26.576561>,  <36.378010, 33.018898, 27.180300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063667, 33.307526, 26.576561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081955, 33.597683, 26.851288>,  <36.092930, 33.771778, 27.016125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081955, 33.597683, 26.851288>,  <36.063667, 33.307526, 26.576561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081955, 33.597683, 26.851288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432529, 0.605373, -0.668163,
		-0.900460, 0.327618, -0.286073,
		0.045721, 0.725389, 0.686819,
		36.095673, 33.815300, 27.057333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605839, 33.876041, 26.380991>,  <36.063667, 33.307526, 26.576561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605839, 33.876041, 26.380991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911438, 34.000126, 26.607290>,  <36.094799, 34.074577, 26.743071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911438, 34.000126, 26.607290>,  <35.605839, 33.876041, 26.380991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911438, 34.000126, 26.607290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238309, 0.679172, -0.694215,
		-0.599591, 0.665205, 0.444964,
		0.764002, 0.310207, 0.565749,
		36.140640, 34.093189, 26.777016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838184, 34.519787, 26.126789>,  <35.605839, 33.876041, 26.380991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838184, 34.519787, 26.126789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134632, 34.480164, 26.392401>,  <36.312500, 34.456390, 26.551767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134632, 34.480164, 26.392401>,  <35.838184, 34.519787, 26.126789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134632, 34.480164, 26.392401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512976, 0.721626, -0.464878,
		-0.433132, 0.685160, 0.585622,
		0.741116, -0.099056, 0.664029,
		36.356968, 34.450447, 26.591610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063927, 35.195133, 26.360653>,  <35.838184, 34.519787, 26.126789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063927, 35.195133, 26.360653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378948, 34.953690, 26.410332>,  <36.567959, 34.808823, 26.440140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378948, 34.953690, 26.410332>,  <36.063927, 35.195133, 26.360653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378948, 34.953690, 26.410332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594399, 0.690844, -0.411612,
		0.162650, 0.397987, 0.902857,
		0.787550, -0.603606, 0.124197,
		36.615211, 34.772606, 26.447592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526737, 35.577011, 26.677622>,  <36.063927, 35.195133, 26.360653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526737, 35.577011, 26.677622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690441, 35.274036, 26.474133>,  <36.788662, 35.092251, 26.352039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690441, 35.274036, 26.474133>,  <36.526737, 35.577011, 26.677622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690441, 35.274036, 26.474133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555572, 0.649147, -0.519565,
		0.723773, -0.069996, 0.686479,
		0.409258, -0.757436, -0.508723,
		36.813217, 35.046806, 26.321516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251595, 35.784504, 26.661682>,  <36.526737, 35.577011, 26.677622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251595, 35.784504, 26.661682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230259, 35.505348, 26.375998>,  <37.217457, 35.337852, 26.204586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230259, 35.505348, 26.375998>,  <37.251595, 35.784504, 26.661682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230259, 35.505348, 26.375998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420967, 0.632854, -0.649832,
		0.905506, -0.335321, 0.260035,
		-0.053338, -0.697894, -0.714212,
		37.214256, 35.295979, 26.161734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782688, 35.944000, 26.251013>,  <37.251595, 35.784504, 26.661682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782688, 35.944000, 26.251013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568966, 35.710247, 26.006712>,  <37.440735, 35.569996, 25.860132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568966, 35.710247, 26.006712>,  <37.782688, 35.944000, 26.251013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568966, 35.710247, 26.006712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362127, 0.494625, -0.790070,
		0.763796, -0.643306, -0.052658,
		-0.534303, -0.584383, -0.610751,
		37.408676, 35.534931, 25.823486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259312, 35.739635, 25.670671>,  <37.782688, 35.944000, 26.251013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259312, 35.739635, 25.670671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888165, 35.681988, 25.533100>,  <37.665474, 35.647400, 25.450558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888165, 35.681988, 25.533100>,  <38.259312, 35.739635, 25.670671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888165, 35.681988, 25.533100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285832, 0.317462, -0.904167,
		0.239488, -0.937256, -0.253372,
		-0.927871, -0.144115, -0.343926,
		37.609802, 35.638752, 25.429922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414021, 35.353729, 25.009653>,  <38.259312, 35.739635, 25.670671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414021, 35.353729, 25.009653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039825, 35.494423, 24.996126>,  <37.815308, 35.578838, 24.988010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039825, 35.494423, 24.996126>,  <38.414021, 35.353729, 25.009653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039825, 35.494423, 24.996126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167110, 0.356060, -0.919400,
		-0.311344, -0.865739, -0.391868,
		-0.935489, 0.351735, -0.033817,
		37.759178, 35.599945, 24.985981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015850, 35.134544, 24.460390>,  <38.414021, 35.353729, 25.009653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015850, 35.134544, 24.460390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859642, 35.496407, 24.528620>,  <37.765915, 35.713524, 24.569557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859642, 35.496407, 24.528620>,  <38.015850, 35.134544, 24.460390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859642, 35.496407, 24.528620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149992, 0.245339, -0.957763,
		-0.908291, -0.348445, -0.231502,
		-0.390524, 0.904652, 0.170576,
		37.742485, 35.767803, 24.579792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478199, 35.108696, 23.982548>,  <38.015850, 35.134544, 24.460390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478199, 35.108696, 23.982548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544933, 35.491489, 24.077499>,  <37.584972, 35.721165, 24.134470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544933, 35.491489, 24.077499>,  <37.478199, 35.108696, 23.982548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544933, 35.491489, 24.077499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001583, 0.241014, -0.970520,
		-0.985984, 0.161540, 0.041725,
		0.166834, 0.956983, 0.237380,
		37.594982, 35.778584, 24.148714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142452, 35.467480, 23.538885>,  <37.478199, 35.108696, 23.982548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142452, 35.467480, 23.538885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394745, 35.752102, 23.662733>,  <37.546120, 35.922874, 23.737041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394745, 35.752102, 23.662733>,  <37.142452, 35.467480, 23.538885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394745, 35.752102, 23.662733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218758, 0.219776, -0.950707,
		-0.744532, 0.667369, -0.017041,
		0.630727, 0.711560, 0.309622,
		37.583961, 35.965569, 23.755619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943211, 36.053097, 23.180120>,  <37.142452, 35.467480, 23.538885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943211, 36.053097, 23.180120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309299, 36.149616, 23.309202>,  <37.528954, 36.207527, 23.386650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309299, 36.149616, 23.309202>,  <36.943211, 36.053097, 23.180120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309299, 36.149616, 23.309202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187888, 0.452913, -0.871532,
		-0.356452, 0.858281, 0.369182,
		0.915227, 0.241295, 0.322703,
		37.583866, 36.222004, 23.406013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043747, 36.825302, 23.007607>,  <36.943211, 36.053097, 23.180120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043747, 36.825302, 23.007607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383980, 36.618942, 23.048313>,  <37.588120, 36.495125, 23.072737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383980, 36.618942, 23.048313>,  <37.043747, 36.825302, 23.007607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383980, 36.618942, 23.048313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340264, 0.392436, -0.854526,
		0.400916, 0.761470, 0.509342,
		0.850580, -0.515904, 0.101767,
		37.639153, 36.464172, 23.078844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559673, 37.309071, 22.909937>,  <37.043747, 36.825302, 23.007607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559673, 37.309071, 22.909937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720043, 36.955624, 22.813208>,  <37.816265, 36.743557, 22.755171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720043, 36.955624, 22.813208>,  <37.559673, 37.309071, 22.909937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720043, 36.955624, 22.813208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272221, 0.366955, -0.889516,
		0.874730, 0.290803, 0.387662,
		0.400928, -0.883616, -0.241824,
		37.840321, 36.690540, 22.740660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065022, 37.508171, 22.398874>,  <37.559673, 37.309071, 22.909937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065022, 37.508171, 22.398874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024841, 37.112465, 22.356407>,  <38.000732, 36.875042, 22.330927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024841, 37.112465, 22.356407>,  <38.065022, 37.508171, 22.398874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024841, 37.112465, 22.356407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467008, 0.047344, -0.882985,
		0.878530, -0.138274, 0.457237,
		-0.100447, -0.989262, -0.106169,
		37.994709, 36.815685, 22.324556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715950, 37.320236, 22.145508>,  <38.065022, 37.508171, 22.398874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715950, 37.320236, 22.145508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478279, 37.014420, 22.045568>,  <38.335674, 36.830929, 21.985605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478279, 37.014420, 22.045568>,  <38.715950, 37.320236, 22.145508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478279, 37.014420, 22.045568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450833, -0.059321, -0.890635,
		0.666106, -0.641839, 0.379928,
		-0.594182, -0.764541, -0.249849,
		38.300026, 36.785057, 21.970613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180729, 36.732159, 21.834457>,  <38.715950, 37.320236, 22.145508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180729, 36.732159, 21.834457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809261, 36.663799, 21.702784>,  <38.586380, 36.622784, 21.623779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809261, 36.663799, 21.702784>,  <39.180729, 36.732159, 21.834457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809261, 36.663799, 21.702784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363325, -0.240650, -0.900046,
		0.074599, -0.955448, 0.285577,
		-0.928671, -0.170899, -0.329186,
		38.530659, 36.612530, 21.604029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274940, 36.100754, 21.531570>,  <39.180729, 36.732159, 21.834457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274940, 36.100754, 21.531570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947247, 36.279720, 21.388086>,  <38.750629, 36.387100, 21.301996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947247, 36.279720, 21.388086>,  <39.274940, 36.100754, 21.531570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947247, 36.279720, 21.388086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277329, -0.238402, -0.930727,
		-0.501944, -0.861963, 0.071224,
		-0.819232, 0.447420, -0.358711,
		38.701477, 36.413944, 21.280474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094227, 35.649971, 20.986734>,  <39.274940, 36.100754, 21.531570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094227, 35.649971, 20.986734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894051, 35.986362, 20.904457>,  <38.773945, 36.188198, 20.855091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894051, 35.986362, 20.904457>,  <39.094227, 35.649971, 20.986734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894051, 35.986362, 20.904457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185245, -0.128071, -0.974311,
		-0.845718, -0.525693, -0.091694,
		-0.500445, 0.840979, -0.205694,
		38.743916, 36.238655, 20.842749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661617, 35.415733, 20.373732>,  <39.094227, 35.649971, 20.986734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661617, 35.415733, 20.373732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654243, 35.815590, 20.365950>,  <38.649818, 36.055504, 20.361280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654243, 35.815590, 20.365950>,  <38.661617, 35.415733, 20.373732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654243, 35.815590, 20.365950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262342, -0.013940, -0.964874,
		-0.964799, -0.022888, -0.261991,
		-0.018432, 0.999641, -0.019454,
		38.648712, 36.115482, 20.360113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274380, 35.601547, 19.819666>,  <38.661617, 35.415733, 20.373732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274380, 35.601547, 19.819666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538158, 35.898907, 19.864370>,  <38.696426, 36.077320, 19.891193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538158, 35.898907, 19.864370>,  <38.274380, 35.601547, 19.819666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538158, 35.898907, 19.864370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354124, -0.176052, -0.918478,
		-0.663115, 0.645268, -0.379351,
		0.659450, 0.743394, 0.111762,
		38.735992, 36.121925, 19.897900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317650, 35.774532, 19.168203>,  <38.274380, 35.601547, 19.819666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317650, 35.774532, 19.168203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622314, 35.974426, 19.333193>,  <38.805115, 36.094364, 19.432186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622314, 35.974426, 19.333193>,  <38.317650, 35.774532, 19.168203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622314, 35.974426, 19.333193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485874, -0.019300, -0.873816,
		-0.428719, 0.865961, -0.257511,
		0.761660, 0.499739, 0.412474,
		38.850811, 36.124348, 19.456936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378765, 36.359158, 18.764772>,  <38.317650, 35.774532, 19.168203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378765, 36.359158, 18.764772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734135, 36.279434, 18.930168>,  <38.947357, 36.231598, 19.029406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734135, 36.279434, 18.930168>,  <38.378765, 36.359158, 18.764772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734135, 36.279434, 18.930168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448567, 0.185857, -0.874211,
		0.097390, 0.962150, 0.254525,
		0.888427, -0.199311, 0.413488,
		39.000664, 36.219643, 19.054214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764889, 36.592834, 18.214890>,  <38.378765, 36.359158, 18.764772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764889, 36.592834, 18.214890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013748, 36.411766, 18.470392>,  <39.163063, 36.303123, 18.623693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013748, 36.411766, 18.470392>,  <38.764889, 36.592834, 18.214890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013748, 36.411766, 18.470392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723524, 0.020782, -0.689987,
		0.299065, 0.891434, 0.340450,
		0.622153, -0.452674, 0.638758,
		39.200394, 36.275963, 18.662020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288261, 36.995491, 18.339371>,  <38.764889, 36.592834, 18.214890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288261, 36.995491, 18.339371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450184, 36.640453, 18.427294>,  <39.547337, 36.427433, 18.480047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450184, 36.640453, 18.427294>,  <39.288261, 36.995491, 18.339371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450184, 36.640453, 18.427294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648447, 0.109165, -0.753392,
		0.644709, 0.447508, 0.619747,
		0.404803, -0.887592, 0.219806,
		39.571625, 36.374176, 18.493235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980396, 37.122528, 18.346495>,  <39.288261, 36.995491, 18.339371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980396, 37.122528, 18.346495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948067, 36.727097, 18.295614>,  <39.928669, 36.489838, 18.265085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948067, 36.727097, 18.295614>,  <39.980396, 37.122528, 18.346495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948067, 36.727097, 18.295614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679333, 0.038750, -0.732807,
		0.729366, -0.145641, 0.668442,
		-0.080824, -0.988578, -0.127201,
		39.923820, 36.430523, 18.257454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620537, 36.857933, 18.499470>,  <39.980396, 37.122528, 18.346495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620537, 36.857933, 18.499470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428795, 36.619072, 18.242216>,  <40.313747, 36.475754, 18.087864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428795, 36.619072, 18.242216>,  <40.620537, 36.857933, 18.499470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428795, 36.619072, 18.242216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722710, 0.147154, -0.675303,
		0.497900, -0.788513, 0.361029,
		-0.479358, -0.597154, -0.643135,
		40.284988, 36.439926, 18.049276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180573, 36.579582, 18.195925>,  <40.620537, 36.857933, 18.499470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180573, 36.579582, 18.195925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895576, 36.453888, 17.944969>,  <40.724579, 36.378471, 17.794395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895576, 36.453888, 17.944969>,  <41.180573, 36.579582, 18.195925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895576, 36.453888, 17.944969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592630, 0.209255, -0.777819,
		0.375703, -0.925996, 0.037134,
		-0.712487, -0.314236, -0.627390,
		40.681831, 36.359619, 17.756752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578354, 36.289345, 17.566010>,  <41.180573, 36.579582, 18.195925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578354, 36.289345, 17.566010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197536, 36.374020, 17.477644>,  <40.969048, 36.424824, 17.424623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197536, 36.374020, 17.477644>,  <41.578354, 36.289345, 17.566010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197536, 36.374020, 17.477644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279512, 0.308047, -0.909385,
		-0.124453, -0.927521, -0.352443,
		-0.952042, 0.211687, -0.220916,
		40.911922, 36.437527, 17.411369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285671, 36.152012, 17.244787>,  <41.578354, 36.289345, 17.566010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285671, 36.152012, 17.244787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478355, 35.802734, 17.215172>,  <42.593967, 35.593166, 17.197403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478355, 35.802734, 17.215172>,  <42.285671, 36.152012, 17.244787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478355, 35.802734, 17.215172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329904, -0.258968, 0.907799,
		-0.811860, -0.412872, -0.412819,
		0.481712, -0.873197, -0.074038,
		42.622868, 35.540775, 17.192961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957512, 35.400955, 17.309074>,  <42.285671, 36.152012, 17.244787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957512, 35.400955, 17.309074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317390, 35.414341, 17.483166>,  <42.533318, 35.422375, 17.587620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317390, 35.414341, 17.483166>,  <41.957512, 35.400955, 17.309074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317390, 35.414341, 17.483166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399163, -0.340467, 0.851323,
		0.176673, -0.939661, -0.292959,
		0.899698, 0.033467, 0.435229,
		42.587299, 35.424381, 17.613735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795761, 34.849895, 17.770519>,  <41.957512, 35.400955, 17.309074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795761, 34.849895, 17.770519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138458, 35.010281, 17.900272>,  <42.344078, 35.106510, 17.978125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138458, 35.010281, 17.900272>,  <41.795761, 34.849895, 17.770519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138458, 35.010281, 17.900272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210830, -0.301724, 0.929792,
		0.470684, -0.864981, -0.173965,
		0.856742, 0.400961, 0.324381,
		42.395481, 35.130569, 17.997587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957626, 34.468140, 18.355257>,  <41.795761, 34.849895, 17.770519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957626, 34.468140, 18.355257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202202, 34.780205, 18.408157>,  <42.348946, 34.967445, 18.439898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202202, 34.780205, 18.408157>,  <41.957626, 34.468140, 18.355257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202202, 34.780205, 18.408157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275525, 0.053229, 0.959819,
		0.741777, -0.623306, 0.247501,
		0.611435, 0.780164, 0.132252,
		42.385632, 35.014256, 18.447834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454689, 34.314240, 18.837877>,  <41.957626, 34.468140, 18.355257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454689, 34.314240, 18.837877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424919, 34.713131, 18.837929>,  <42.407059, 34.952465, 18.837959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424919, 34.713131, 18.837929>,  <42.454689, 34.314240, 18.837877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424919, 34.713131, 18.837929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081746, -0.006227, 0.996634,
		0.993871, 0.074160, 0.081983,
		-0.074421, 0.997227, 0.000126,
		42.402592, 35.012299, 18.837967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845673, 34.540504, 19.414724>,  <42.454689, 34.314240, 18.837877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845673, 34.540504, 19.414724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590324, 34.834076, 19.321913>,  <42.437115, 35.010220, 19.266226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590324, 34.834076, 19.321913>,  <42.845673, 34.540504, 19.414724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590324, 34.834076, 19.321913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247904, 0.089347, 0.964656,
		0.728716, 0.673329, 0.124906,
		-0.638370, 0.733925, -0.232030,
		42.398815, 35.054253, 19.252304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051483, 34.996513, 19.917318>,  <42.845673, 34.540504, 19.414724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051483, 34.996513, 19.917318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691036, 35.118595, 19.794138>,  <42.474766, 35.191845, 19.720230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691036, 35.118595, 19.794138>,  <43.051483, 34.996513, 19.917318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691036, 35.118595, 19.794138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239097, 0.242698, 0.940176,
		0.361684, 0.920841, -0.145727,
		-0.901120, 0.305204, -0.307951,
		42.420700, 35.210155, 19.701754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896904, 35.473953, 20.489244>,  <43.051483, 34.996513, 19.917318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896904, 35.473953, 20.489244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551548, 35.379627, 20.310831>,  <42.344334, 35.323032, 20.203783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551548, 35.379627, 20.310831>,  <42.896904, 35.473953, 20.489244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551548, 35.379627, 20.310831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443304, -0.067556, 0.893822,
		-0.240910, 0.969447, -0.046211,
		-0.863391, -0.235816, -0.446035,
		42.292530, 35.308884, 20.177021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318436, 35.797562, 20.925678>,  <42.896904, 35.473953, 20.489244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318436, 35.797562, 20.925678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112770, 35.558308, 20.679790>,  <41.989372, 35.414757, 20.532259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112770, 35.558308, 20.679790>,  <42.318436, 35.797562, 20.925678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112770, 35.558308, 20.679790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739129, -0.054601, 0.671347,
		-0.435118, 0.799536, -0.414023,
		-0.514160, -0.598132, -0.614718,
		41.958523, 35.378868, 20.495375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597584, 36.033398, 20.879145>,  <42.318436, 35.797562, 20.925678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597584, 36.033398, 20.879145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635025, 35.642700, 20.801979>,  <41.657490, 35.408283, 20.755680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635025, 35.642700, 20.801979>,  <41.597584, 36.033398, 20.879145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635025, 35.642700, 20.801979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743930, -0.197391, 0.638439,
		-0.661669, 0.083753, -0.745104,
		0.093606, -0.976740, -0.192914,
		41.663105, 35.349678, 20.744104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909489, 35.837082, 20.708599>,  <41.597584, 36.033398, 20.879145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909489, 35.837082, 20.708599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098675, 35.497761, 20.803827>,  <41.212189, 35.294167, 20.860966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098675, 35.497761, 20.803827>,  <40.909489, 35.837082, 20.708599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098675, 35.497761, 20.803827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706875, -0.204042, 0.677269,
		-0.525955, -0.488614, -0.696152,
		0.472968, -0.848306, 0.238072,
		41.240566, 35.243271, 20.875250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397236, 35.393269, 20.905718>,  <40.909489, 35.837082, 20.708599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397236, 35.393269, 20.905718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727684, 35.235321, 21.066519>,  <40.925953, 35.140553, 21.163000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727684, 35.235321, 21.066519>,  <40.397236, 35.393269, 20.905718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727684, 35.235321, 21.066519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524721, -0.279007, 0.804253,
		-0.205404, -0.875352, -0.437685,
		0.826121, -0.394859, 0.402007,
		40.975521, 35.116863, 21.187120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329266, 34.654305, 21.069174>,  <40.397236, 35.393269, 20.905718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329266, 34.654305, 21.069174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598660, 34.822239, 21.312532>,  <40.760296, 34.923000, 21.458548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598660, 34.822239, 21.312532>,  <40.329266, 34.654305, 21.069174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598660, 34.822239, 21.312532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455682, -0.412256, 0.788923,
		0.582037, -0.808566, -0.086336,
		0.673489, 0.419840, 0.608397,
		40.800705, 34.948193, 21.495052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615044, 34.146152, 21.488617>,  <40.329266, 34.654305, 21.069174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615044, 34.146152, 21.488617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657230, 34.491096, 21.686693>,  <40.682545, 34.698063, 21.805538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657230, 34.491096, 21.686693>,  <40.615044, 34.146152, 21.488617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657230, 34.491096, 21.686693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212935, -0.466831, 0.858328,
		0.971357, -0.195970, 0.134390,
		0.105469, 0.862360, 0.495189,
		40.688869, 34.749805, 21.835249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767513, 33.937473, 22.156567>,  <40.615044, 34.146152, 21.488617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767513, 33.937473, 22.156567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704815, 34.326687, 22.224262>,  <40.667194, 34.560215, 22.264879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704815, 34.326687, 22.224262>,  <40.767513, 33.937473, 22.156567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704815, 34.326687, 22.224262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188106, -0.197631, 0.962059,
		0.969560, 0.118964, 0.214011,
		-0.156746, 0.973031, 0.169237,
		40.657791, 34.618595, 22.275034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205772, 34.152878, 22.757545>,  <40.767513, 33.937473, 22.156567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205772, 34.152878, 22.757545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898777, 34.405613, 22.714205>,  <40.714581, 34.557255, 22.688200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898777, 34.405613, 22.714205>,  <41.205772, 34.152878, 22.757545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898777, 34.405613, 22.714205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337889, -0.255070, 0.905963,
		0.544789, 0.731925, 0.409256,
		-0.767486, 0.631842, -0.108350,
		40.668530, 34.595165, 22.681700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280724, 34.559471, 23.338476>,  <41.205772, 34.152878, 22.757545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280724, 34.559471, 23.338476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905346, 34.586922, 23.203056>,  <40.680119, 34.603394, 23.121803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905346, 34.586922, 23.203056>,  <41.280724, 34.559471, 23.338476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905346, 34.586922, 23.203056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345197, -0.149740, 0.926508,
		0.012890, 0.986341, 0.164212,
		-0.938442, 0.068628, -0.338551,
		40.623814, 34.607510, 23.101490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876404, 35.064915, 23.810699>,  <41.280724, 34.559471, 23.338476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876404, 35.064915, 23.810699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621284, 34.810993, 23.636234>,  <40.468212, 34.658638, 23.531555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621284, 34.810993, 23.636234>,  <40.876404, 35.064915, 23.810699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621284, 34.810993, 23.636234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384486, -0.228269, 0.894463,
		-0.667373, 0.738183, -0.098485,
		-0.637796, -0.634806, -0.436162,
		40.429947, 34.620552, 23.505386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390728, 35.108128, 24.226013>,  <40.876404, 35.064915, 23.810699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390728, 35.108128, 24.226013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239086, 34.821407, 23.991926>,  <40.148102, 34.649376, 23.851475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239086, 34.821407, 23.991926>,  <40.390728, 35.108128, 24.226013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239086, 34.821407, 23.991926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648134, -0.245695, 0.720803,
		-0.660455, 0.652559, -0.371437,
		-0.379106, -0.716799, -0.585216,
		40.125355, 34.606369, 23.816362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701416, 35.167564, 24.271482>,  <40.390728, 35.108128, 24.226013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701416, 35.167564, 24.271482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740932, 34.785614, 24.159451>,  <39.764641, 34.556442, 24.092232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740932, 34.785614, 24.159451>,  <39.701416, 35.167564, 24.271482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740932, 34.785614, 24.159451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578536, -0.284113, 0.764575,
		-0.809652, 0.086506, -0.580500,
		0.098788, -0.954880, -0.280080,
		39.770569, 34.499149, 24.075426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092518, 34.841331, 24.336369>,  <39.701416, 35.167564, 24.271482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092518, 34.841331, 24.336369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343807, 34.530235, 24.344854>,  <39.494579, 34.343578, 24.349945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343807, 34.530235, 24.344854>,  <39.092518, 34.841331, 24.336369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343807, 34.530235, 24.344854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657082, -0.515765, 0.549754,
		-0.416624, -0.359310, -0.835057,
		0.628226, -0.777742, 0.021217,
		39.532276, 34.296913, 24.351219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703503, 34.236885, 24.268724>,  <39.092518, 34.841331, 24.336369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703503, 34.236885, 24.268724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037949, 34.088902, 24.430735>,  <39.238617, 34.000111, 24.527941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037949, 34.088902, 24.430735>,  <38.703503, 34.236885, 24.268724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037949, 34.088902, 24.430735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548155, -0.591676, 0.591140,
		0.020946, -0.716276, -0.697503,
		0.836114, -0.369957, 0.405024,
		39.288784, 33.977913, 24.552242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595009, 33.533897, 24.305065>,  <38.703503, 34.236885, 24.268724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595009, 33.533897, 24.305065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867016, 33.639210, 24.578781>,  <39.030220, 33.702396, 24.743011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867016, 33.639210, 24.578781>,  <38.595009, 33.533897, 24.305065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867016, 33.639210, 24.578781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463471, -0.568828, 0.679434,
		0.568126, -0.779178, -0.264791,
		0.680020, 0.263281, 0.684292,
		39.071022, 33.718193, 24.784069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950256, 32.910133, 24.617868>,  <38.595009, 33.533897, 24.305065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950256, 32.910133, 24.617868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994267, 33.208038, 24.881147>,  <39.020672, 33.386780, 25.039114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994267, 33.208038, 24.881147>,  <38.950256, 32.910133, 24.617868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994267, 33.208038, 24.881147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164618, -0.639416, 0.751031,
		0.980202, -0.190983, 0.052250,
		0.110025, 0.744763, 0.658196,
		39.027275, 33.431469, 25.078606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242245, 32.523499, 25.217789>,  <38.950256, 32.910133, 24.617868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242245, 32.523499, 25.217789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140121, 32.873390, 25.382551>,  <39.078846, 33.083324, 25.481409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140121, 32.873390, 25.382551>,  <39.242245, 32.523499, 25.217789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140121, 32.873390, 25.382551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345212, -0.480416, 0.806244,
		0.903131, 0.063648, 0.424622,
		-0.255311, 0.874728, 0.411907,
		39.063530, 33.135807, 25.506123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428673, 32.466599, 25.905333>,  <39.242245, 32.523499, 25.217789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428673, 32.466599, 25.905333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182938, 32.779514, 25.946543>,  <39.035496, 32.967266, 25.971270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182938, 32.779514, 25.946543>,  <39.428673, 32.466599, 25.905333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182938, 32.779514, 25.946543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352755, -0.389090, 0.850983,
		0.705803, 0.486445, 0.514989,
		-0.614334, 0.782291, 0.103025,
		38.998638, 33.014202, 25.977449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605392, 32.874920, 26.483290>,  <39.428673, 32.466599, 25.905333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605392, 32.874920, 26.483290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218052, 32.926872, 26.398027>,  <38.985649, 32.958042, 26.346870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218052, 32.926872, 26.398027>,  <39.605392, 32.874920, 26.483290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218052, 32.926872, 26.398027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243171, -0.298242, 0.922995,
		0.056304, 0.945613, 0.320385,
		-0.968348, 0.129877, -0.213154,
		38.927547, 32.965836, 26.334082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413857, 33.132000, 27.138426>,  <39.605392, 32.874920, 26.483290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413857, 33.132000, 27.138426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075817, 33.028416, 26.951342>,  <38.872993, 32.966263, 26.839092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075817, 33.028416, 26.951342>,  <39.413857, 33.132000, 27.138426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075817, 33.028416, 26.951342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379172, -0.326406, 0.865845,
		-0.376885, 0.909064, 0.177653,
		-0.845096, -0.258963, -0.467709,
		38.822289, 32.950726, 26.811029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853237, 33.510456, 27.516626>,  <39.413857, 33.132000, 27.138426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853237, 33.510456, 27.516626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758839, 33.159779, 27.348953>,  <38.702198, 32.949371, 27.248350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758839, 33.159779, 27.348953>,  <38.853237, 33.510456, 27.516626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758839, 33.159779, 27.348953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559347, -0.230188, 0.796332,
		-0.794630, 0.422401, -0.436052,
		-0.235998, -0.876693, -0.419182,
		38.688038, 32.896770, 27.223198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214417, 33.387573, 27.763346>,  <38.853237, 33.510456, 27.516626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214417, 33.387573, 27.763346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319561, 33.019413, 27.647573>,  <38.382648, 32.798515, 27.578110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319561, 33.019413, 27.647573>,  <38.214417, 33.387573, 27.763346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319561, 33.019413, 27.647573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419561, -0.379174, 0.824740,
		-0.868835, -0.095355, -0.485833,
		0.262859, -0.920399, -0.289432,
		38.398418, 32.743294, 27.560743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757999, 32.904957, 28.023308>,  <38.214417, 33.387573, 27.763346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757999, 32.904957, 28.023308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052761, 32.653008, 27.925131>,  <38.229618, 32.501839, 27.866224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052761, 32.653008, 27.925131>,  <37.757999, 32.904957, 28.023308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052761, 32.653008, 27.925131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054306, -0.417063, 0.907254,
		-0.673818, -0.655225, -0.341540,
		0.736899, -0.629872, -0.245441,
		38.273830, 32.464046, 27.851498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499348, 32.322239, 28.399109>,  <37.757999, 32.904957, 28.023308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499348, 32.322239, 28.399109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883087, 32.256771, 28.307144>,  <38.113331, 32.217491, 28.251966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883087, 32.256771, 28.307144>,  <37.499348, 32.322239, 28.399109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883087, 32.256771, 28.307144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131317, -0.462216, 0.876991,
		-0.249802, -0.871533, -0.421935,
		0.959351, -0.163667, -0.229910,
		38.170891, 32.207672, 28.238171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596867, 31.578241, 28.532072>,  <37.499348, 32.322239, 28.399109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596867, 31.578241, 28.532072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947750, 31.766760, 28.568684>,  <38.158279, 31.879871, 28.590651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947750, 31.766760, 28.568684>,  <37.596867, 31.578241, 28.532072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947750, 31.766760, 28.568684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219140, -0.562681, 0.797099,
		0.427172, -0.679168, -0.596871,
		0.877212, 0.471297, 0.091529,
		38.210915, 31.908150, 28.596142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056759, 31.086842, 28.837919>,  <37.596867, 31.578241, 28.532072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056759, 31.086842, 28.837919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219128, 31.445690, 28.907663>,  <38.316547, 31.660999, 28.949511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219128, 31.445690, 28.907663>,  <38.056759, 31.086842, 28.837919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219128, 31.445690, 28.907663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376127, -0.337873, 0.862769,
		0.832920, -0.284634, -0.474581,
		0.405922, 0.897120, 0.174362,
		38.340904, 31.714827, 28.959972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705605, 30.901314, 29.041861>,  <38.056759, 31.086842, 28.837919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705605, 30.901314, 29.041861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643620, 31.268370, 29.188242>,  <38.606430, 31.488604, 29.276070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643620, 31.268370, 29.188242>,  <38.705605, 30.901314, 29.041861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643620, 31.268370, 29.188242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351482, -0.294979, 0.888509,
		0.923281, 0.266310, -0.276824,
		-0.154961, 0.917642, 0.365952,
		38.597130, 31.543663, 29.298027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228203, 30.954926, 29.417967>,  <38.705605, 30.901314, 29.041861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228203, 30.954926, 29.417967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003395, 31.254820, 29.557701>,  <38.868511, 31.434757, 29.641542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003395, 31.254820, 29.557701>,  <39.228203, 30.954926, 29.417967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003395, 31.254820, 29.557701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260804, -0.240173, 0.935039,
		0.784934, 0.616614, -0.060553,
		-0.562015, 0.749736, 0.349335,
		38.834789, 31.479740, 29.662502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537731, 31.040512, 30.063602>,  <39.228203, 30.954926, 29.417967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537731, 31.040512, 30.063602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182281, 31.216112, 30.116701>,  <38.969009, 31.321472, 30.148560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182281, 31.216112, 30.116701>,  <39.537731, 31.040512, 30.063602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182281, 31.216112, 30.116701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061205, -0.400366, 0.914309,
		0.454528, 0.804355, 0.382645,
		-0.888627, 0.438999, 0.132747,
		38.915695, 31.347813, 30.156525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583191, 31.343506, 30.768738>,  <39.537731, 31.040512, 30.063602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583191, 31.343506, 30.768738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200890, 31.293692, 30.662132>,  <38.971508, 31.263803, 30.598169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200890, 31.293692, 30.662132>,  <39.583191, 31.343506, 30.768738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200890, 31.293692, 30.662132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197141, -0.401292, 0.894483,
		-0.218343, 0.907445, 0.358985,
		-0.955752, -0.124534, -0.266514,
		38.914165, 31.256332, 30.582178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180119, 31.512156, 31.408401>,  <39.583191, 31.343506, 30.768738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180119, 31.512156, 31.408401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927700, 31.282280, 31.199974>,  <38.776249, 31.144354, 31.074917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927700, 31.282280, 31.199974>,  <39.180119, 31.512156, 31.408401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927700, 31.282280, 31.199974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253070, -0.482445, 0.838572,
		-0.733305, 0.661044, 0.159008,
		-0.631046, -0.574689, -0.521070,
		38.738388, 31.109873, 31.043653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461632, 31.622854, 31.668495>,  <39.180119, 31.512156, 31.408401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461632, 31.622854, 31.668495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475571, 31.262476, 31.495483>,  <38.483932, 31.046249, 31.391676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475571, 31.262476, 31.495483>,  <38.461632, 31.622854, 31.668495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475571, 31.262476, 31.495483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459066, -0.398859, 0.793832,
		-0.887719, 0.170898, -0.427492,
		0.034844, -0.900947, -0.432529,
		38.486023, 30.992191, 31.365725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005764, 31.668285, 32.165833>,  <38.461632, 31.622854, 31.668495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005764, 31.668285, 32.165833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634407, 31.801390, 32.231991>,  <37.411594, 31.881252, 32.271687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634407, 31.801390, 32.231991>,  <38.005764, 31.668285, 32.165833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634407, 31.801390, 32.231991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325209, -0.942926, 0.071617,
		0.179791, 0.012699, 0.983623,
		-0.928393, 0.332759, 0.165400,
		37.355888, 31.901217, 32.281612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753464, 31.095545, 32.094345>,  <38.005764, 31.668285, 32.165833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753464, 31.095545, 32.094345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422787, 31.287128, 32.212452>,  <37.224380, 31.402079, 32.283314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422787, 31.287128, 32.212452>,  <37.753464, 31.095545, 32.094345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422787, 31.287128, 32.212452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532039, -0.836171, -0.133239,
		0.183076, -0.267240, 0.946079,
		-0.826691, 0.478958, 0.295264,
		37.174778, 31.430817, 32.301033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368759, 30.647593, 32.569115>,  <37.753464, 31.095545, 32.094345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368759, 30.647593, 32.569115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108109, 30.910067, 32.416901>,  <36.951717, 31.067551, 32.325573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108109, 30.910067, 32.416901>,  <37.368759, 30.647593, 32.569115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108109, 30.910067, 32.416901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677838, -0.728894, -0.096172,
		-0.340475, 0.195272, 0.919753,
		-0.651623, 0.656187, -0.380532,
		36.912621, 31.106922, 32.302742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322475, 31.331165, 32.834454>,  <37.368759, 30.647593, 32.569115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322475, 31.331165, 32.834454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712833, 31.258808, 32.883282>,  <37.947048, 31.215393, 32.912579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712833, 31.258808, 32.883282>,  <37.322475, 31.331165, 32.834454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712833, 31.258808, 32.883282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062631, 0.768006, 0.637373,
		-0.209050, -0.614365, 0.760825,
		0.975898, -0.180894, 0.122073,
		38.005604, 31.204540, 32.919903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567104, 31.258753, 33.510818>,  <37.322475, 31.331165, 32.834454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567104, 31.258753, 33.510818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877457, 31.413008, 33.311104>,  <38.063667, 31.505562, 33.191273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877457, 31.413008, 33.311104>,  <37.567104, 31.258753, 33.510818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877457, 31.413008, 33.311104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168207, 0.636318, 0.752865,
		0.608034, -0.668122, 0.428845,
		0.775888, 0.385632, -0.499286,
		38.110222, 31.528700, 33.161316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030304, 31.338287, 34.003269>,  <37.567104, 31.258753, 33.510818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030304, 31.338287, 34.003269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109566, 31.592110, 33.704453>,  <38.157124, 31.744402, 33.525162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109566, 31.592110, 33.704453>,  <38.030304, 31.338287, 34.003269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109566, 31.592110, 33.704453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006888, 0.763040, 0.646315,
		0.980147, -0.122924, 0.155570,
		0.198153, 0.634555, -0.747045,
		38.169010, 31.782476, 33.480339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685181, 31.371881, 34.346237>,  <38.030304, 31.338287, 34.003269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685181, 31.371881, 34.346237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549969, 31.486626, 34.704777>,  <38.468842, 31.555471, 34.919903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549969, 31.486626, 34.704777>,  <38.685181, 31.371881, 34.346237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549969, 31.486626, 34.704777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355212, 0.920861, -0.160748,
		-0.871529, 0.264059, -0.413171,
		-0.338026, 0.286860, 0.896354,
		38.448563, 31.572683, 34.973682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440941, 32.040852, 34.281086>,  <38.685181, 31.371881, 34.346237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440941, 32.040852, 34.281086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537716, 31.989725, 34.665821>,  <38.595779, 31.959047, 34.896664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537716, 31.989725, 34.665821>,  <38.440941, 32.040852, 34.281086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537716, 31.989725, 34.665821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657033, 0.751015, -0.065462,
		-0.713986, 0.647795, 0.265679,
		0.241935, -0.127821, 0.961836,
		38.610298, 31.951380, 34.954372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310181, 32.639668, 34.711002>,  <38.440941, 32.040852, 34.281086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310181, 32.639668, 34.711002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621704, 32.423901, 34.839050>,  <38.808620, 32.294441, 34.915878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621704, 32.423901, 34.839050>,  <38.310181, 32.639668, 34.711002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621704, 32.423901, 34.839050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603734, 0.783085, -0.149274,
		-0.170161, 0.309525, 0.935543,
		0.778813, -0.539419, 0.320121,
		38.855347, 32.262074, 34.935085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491974, 32.904346, 35.431858>,  <38.310181, 32.639668, 34.711002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491974, 32.904346, 35.431858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781315, 32.777851, 35.186337>,  <38.954922, 32.701954, 35.039024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781315, 32.777851, 35.186337>,  <38.491974, 32.904346, 35.431858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781315, 32.777851, 35.186337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296442, 0.945090, -0.137574,
		0.623603, -0.082442, 0.777382,
		0.723354, -0.316240, -0.613800,
		38.998322, 32.682980, 35.002197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145576, 33.234638, 35.615654>,  <38.491974, 32.904346, 35.431858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145576, 33.234638, 35.615654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154964, 33.119492, 35.232700>,  <39.160599, 33.050404, 35.002930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154964, 33.119492, 35.232700>,  <39.145576, 33.234638, 35.615654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154964, 33.119492, 35.232700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634978, 0.743965, -0.208132,
		0.772174, -0.603032, 0.200250,
		0.023469, -0.287869, -0.957382,
		39.162006, 33.033131, 34.945484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775700, 33.190285, 35.347561>,  <39.145576, 33.234638, 35.615654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775700, 33.190285, 35.347561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559959, 33.265778, 35.019295>,  <39.430515, 33.311073, 34.822334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559959, 33.265778, 35.019295>,  <39.775700, 33.190285, 35.347561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559959, 33.265778, 35.019295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661389, 0.698158, -0.274116,
		0.521217, -0.690621, -0.501373,
		-0.539348, 0.188729, -0.820661,
		39.398155, 33.322395, 34.773098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914581, 32.519489, 34.970966>,  <39.775700, 33.190285, 35.347561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914581, 32.519489, 34.970966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064610, 32.695992, 35.297062>,  <40.154629, 32.801891, 35.492718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064610, 32.695992, 35.297062>,  <39.914581, 32.519489, 34.970966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064610, 32.695992, 35.297062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743017, -0.382760, 0.549018,
		0.554297, -0.811659, 0.184295,
		0.375075, 0.441253, 0.815239,
		40.177132, 32.828369, 35.541634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198265, 33.183056, 34.703705>,  <39.914581, 32.519489, 34.970966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198265, 33.183056, 34.703705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876686, 33.396706, 34.599106>,  <39.683739, 33.524895, 34.536346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876686, 33.396706, 34.599106>,  <40.198265, 33.183056, 34.703705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876686, 33.396706, 34.599106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593922, 0.743551, -0.307229,
		0.030336, -0.402303, -0.915004,
		-0.803950, 0.534121, -0.261493,
		39.635502, 33.556942, 34.520657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428749, 33.512581, 34.157173>,  <40.198265, 33.183056, 34.703705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428749, 33.512581, 34.157173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086189, 33.712788, 34.207859>,  <39.880653, 33.832912, 34.238270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086189, 33.712788, 34.207859>,  <40.428749, 33.512581, 34.157173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086189, 33.712788, 34.207859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430891, 0.828066, -0.358663,
		-0.284450, -0.252557, -0.924826,
		-0.856400, 0.500521, 0.126719,
		39.829269, 33.862946, 34.245876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189083, 33.816708, 33.404335>,  <40.428749, 33.512581, 34.157173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189083, 33.816708, 33.404335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050190, 34.042259, 33.704060>,  <39.966854, 34.177589, 33.883896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050190, 34.042259, 33.704060>,  <40.189083, 33.816708, 33.404335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050190, 34.042259, 33.704060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387425, 0.813912, -0.432954,
		-0.854008, 0.139967, -0.501078,
		-0.347234, 0.563876, 0.749314,
		39.946018, 34.211422, 33.928852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033459, 34.503151, 33.142895>,  <40.189083, 33.816708, 33.404335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033459, 34.503151, 33.142895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048000, 34.577988, 33.535561>,  <40.056725, 34.622890, 33.771160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048000, 34.577988, 33.535561>,  <40.033459, 34.503151, 33.142895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048000, 34.577988, 33.535561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346062, 0.919183, -0.187999,
		-0.937507, 0.346553, -0.031332,
		0.036352, 0.187093, 0.981669,
		40.058907, 34.634117, 33.830063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821476, 35.103485, 33.110451>,  <40.033459, 34.503151, 33.142895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821476, 35.103485, 33.110451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994583, 35.059082, 33.468307>,  <40.098446, 35.032440, 33.683022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994583, 35.059082, 33.468307>,  <39.821476, 35.103485, 33.110451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994583, 35.059082, 33.468307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493757, 0.859492, -0.132201,
		-0.754267, 0.498950, 0.426768,
		0.432765, -0.111005, 0.894646,
		40.124413, 35.025780, 33.736702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865005, 35.764610, 33.211948>,  <39.821476, 35.103485, 33.110451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865005, 35.764610, 33.211948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110516, 35.607105, 33.485661>,  <40.257820, 35.512604, 33.649887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110516, 35.607105, 33.485661>,  <39.865005, 35.764610, 33.211948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110516, 35.607105, 33.485661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504008, 0.862563, 0.044277,
		-0.607668, 0.317706, 0.727875,
		0.613771, -0.393761, 0.684279,
		40.294647, 35.488976, 33.690945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914722, 36.334282, 33.759548>,  <39.865005, 35.764610, 33.211948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914722, 36.334282, 33.759548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224976, 36.083115, 33.733879>,  <40.411125, 35.932415, 33.718479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224976, 36.083115, 33.733879>,  <39.914722, 36.334282, 33.759548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224976, 36.083115, 33.733879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622167, 0.777711, -0.089855,
		0.106326, 0.029770, 0.993885,
		0.775631, -0.627916, -0.064169,
		40.457664, 35.894741, 33.714630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435898, 36.594887, 34.228413>,  <39.914722, 36.334282, 33.759548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435898, 36.594887, 34.228413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570969, 36.387291, 33.914310>,  <40.652012, 36.262733, 33.725849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570969, 36.387291, 33.914310>,  <40.435898, 36.594887, 34.228413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570969, 36.387291, 33.914310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531627, 0.793610, -0.295901,
		0.776754, -0.317542, 0.543894,
		0.337679, -0.518990, -0.785253,
		40.672272, 36.231594, 33.678734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200520, 36.514290, 34.206280>,  <40.435898, 36.594887, 34.228413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200520, 36.514290, 34.206280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036118, 36.526623, 33.841835>,  <40.937477, 36.534023, 33.623169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036118, 36.526623, 33.841835>,  <41.200520, 36.514290, 34.206280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036118, 36.526623, 33.841835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627295, 0.734765, -0.258112,
		0.661495, -0.677621, -0.321332,
		-0.411006, 0.030830, -0.911111,
		40.912815, 36.535873, 33.568501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560848, 36.376564, 33.610161>,  <41.200520, 36.514290, 34.206280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560848, 36.376564, 33.610161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318516, 36.682060, 33.521008>,  <41.173115, 36.865356, 33.467518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318516, 36.682060, 33.521008>,  <41.560848, 36.376564, 33.610161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318516, 36.682060, 33.521008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765014, 0.482296, -0.426785,
		-0.218458, -0.429064, -0.876459,
		-0.605830, 0.763738, -0.222879,
		41.136768, 36.911182, 33.454144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439709, 36.463337, 32.960155>,  <41.560848, 36.376564, 33.610161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439709, 36.463337, 32.960155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434090, 36.806110, 33.166248>,  <41.430717, 37.011776, 33.289902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434090, 36.806110, 33.166248>,  <41.439709, 36.463337, 32.960155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434090, 36.806110, 33.166248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630526, 0.407509, -0.660586,
		-0.776041, 0.315589, -0.546044,
		-0.014044, 0.856937, 0.515230,
		41.429878, 37.063190, 33.320816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174007, 35.799065, 33.175808>,  <41.439709, 36.463337, 32.960155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174007, 35.799065, 33.175808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232311, 35.864681, 33.566059>,  <41.267292, 35.904049, 33.800209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232311, 35.864681, 33.566059>,  <41.174007, 35.799065, 33.175808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232311, 35.864681, 33.566059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672119, -0.707215, 0.219323,
		0.725955, -0.687705, 0.007171,
		0.145758, 0.164038, 0.975626,
		41.276039, 35.913891, 33.858746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364319, 35.128922, 33.685795>,  <41.174007, 35.799065, 33.175808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364319, 35.128922, 33.685795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102470, 35.399609, 33.820572>,  <40.945362, 35.562019, 33.901436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102470, 35.399609, 33.820572>,  <41.364319, 35.128922, 33.685795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102470, 35.399609, 33.820572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651133, -0.731182, 0.203466,
		0.384053, -0.086200, 0.919278,
		-0.654621, 0.676714, 0.336941,
		40.906086, 35.602623, 33.921654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167057, 34.937565, 34.322445>,  <41.364319, 35.128922, 33.685795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167057, 34.937565, 34.322445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858559, 35.157192, 34.193630>,  <40.673458, 35.288967, 34.116341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858559, 35.157192, 34.193630>,  <41.167057, 34.937565, 34.322445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858559, 35.157192, 34.193630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628944, -0.735237, 0.252697,
		-0.098028, 0.397436, 0.912379,
		-0.771245, 0.549064, -0.322039,
		40.627186, 35.321911, 34.097019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756031, 35.065842, 34.891941>,  <41.167057, 34.937565, 34.322445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756031, 35.065842, 34.891941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563053, 35.043800, 34.542263>,  <40.447266, 35.030575, 34.332458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563053, 35.043800, 34.542263>,  <40.756031, 35.065842, 34.891941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563053, 35.043800, 34.542263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487868, -0.811981, 0.320424,
		-0.727486, 0.581077, 0.364848,
		-0.482441, -0.055106, -0.874193,
		40.418320, 35.027267, 34.280006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030823, 34.908192, 35.093048>,  <40.756031, 35.065842, 34.891941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030823, 34.908192, 35.093048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064480, 34.822372, 34.703815>,  <40.084675, 34.770882, 34.470276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064480, 34.822372, 34.703815>,  <40.030823, 34.908192, 35.093048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064480, 34.822372, 34.703815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728098, -0.679936, 0.086951,
		-0.680289, 0.701184, -0.213418,
		0.084142, -0.214541, -0.973084,
		40.089725, 34.758007, 34.411892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424896, 34.983997, 34.774525>,  <40.030823, 34.908192, 35.093048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424896, 34.983997, 34.774525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639862, 34.713268, 34.573288>,  <39.768841, 34.550831, 34.452545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639862, 34.713268, 34.573288>,  <39.424896, 34.983997, 34.774525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639862, 34.713268, 34.573288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786535, -0.617473, -0.009491,
		-0.304223, 0.400801, -0.864180,
		0.537411, -0.676821, -0.503093,
		39.801086, 34.510223, 34.422359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959820, 34.703503, 34.413265>,  <39.424896, 34.983997, 34.774525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959820, 34.703503, 34.413265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223404, 34.403339, 34.392643>,  <39.381554, 34.223240, 34.380272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223404, 34.403339, 34.392643>,  <38.959820, 34.703503, 34.413265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223404, 34.403339, 34.392643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745673, -0.660719, 0.086152,
		-0.098712, -0.018329, -0.994947,
		0.658960, -0.750409, -0.051553,
		39.421093, 34.178215, 34.377178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613541, 34.134861, 34.026493>,  <38.959820, 34.703503, 34.413265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613541, 34.134861, 34.026493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947155, 33.969238, 34.172340>,  <39.147324, 33.869865, 34.259850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947155, 33.969238, 34.172340>,  <38.613541, 34.134861, 34.026493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947155, 33.969238, 34.172340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453108, -0.891119, 0.024508,
		0.314771, -0.185652, -0.930834,
		0.834034, -0.414054, 0.364619,
		39.197365, 33.845020, 34.281727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852428, 33.515247, 33.589382>,  <38.613541, 34.134861, 34.026493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852428, 33.515247, 33.589382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976070, 33.458599, 33.965553>,  <39.050255, 33.424610, 34.191254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976070, 33.458599, 33.965553>,  <38.852428, 33.515247, 33.589382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976070, 33.458599, 33.965553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311060, -0.949516, -0.040752,
		0.898720, -0.279932, -0.337549,
		0.309100, -0.141623, 0.940425,
		39.068802, 33.416111, 34.247681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330181, 32.970020, 33.669800>,  <38.852428, 33.515247, 33.589382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330181, 32.970020, 33.669800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088799, 33.015045, 33.985565>,  <38.943970, 33.042061, 34.175022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088799, 33.015045, 33.985565>,  <39.330181, 32.970020, 33.669800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088799, 33.015045, 33.985565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249034, -0.967072, -0.052472,
		0.757509, -0.228254, 0.611620,
		-0.603458, 0.112567, 0.789409,
		38.907761, 33.048817, 34.222389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828526, 32.409916, 33.344189>,  <39.330181, 32.970020, 33.669800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828526, 32.409916, 33.344189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845322, 32.358875, 32.947815>,  <39.855400, 32.328251, 32.709991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845322, 32.358875, 32.947815>,  <39.828526, 32.409916, 33.344189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845322, 32.358875, 32.947815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250269, 0.961535, -0.113212,
		0.967265, -0.243246, 0.072314,
		0.041994, -0.127604, -0.990936,
		39.857922, 32.320595, 32.650536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525333, 32.654701, 33.002373>,  <39.828526, 32.409916, 33.344189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525333, 32.654701, 33.002373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196594, 32.663212, 32.774647>,  <39.999352, 32.668320, 32.638012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196594, 32.663212, 32.774647>,  <40.525333, 32.654701, 33.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196594, 32.663212, 32.774647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243715, 0.916378, -0.317575,
		0.514947, -0.399747, -0.758309,
		-0.821847, 0.021277, -0.569310,
		39.950039, 32.669594, 32.603855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750351, 32.674801, 32.206055>,  <40.525333, 32.654701, 33.002373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750351, 32.674801, 32.206055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407738, 32.866985, 32.281425>,  <40.202171, 32.982296, 32.326649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407738, 32.866985, 32.281425>,  <40.750351, 32.674801, 32.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407738, 32.866985, 32.281425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241420, 0.695713, -0.676535,
		-0.456144, -0.533984, -0.711894,
		-0.856533, 0.480463, 0.188431,
		40.150776, 33.011124, 32.337955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388107, 32.855328, 31.592655>,  <40.750351, 32.674801, 32.206055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388107, 32.855328, 31.592655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343193, 33.136326, 31.873766>,  <40.316242, 33.304924, 32.042431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343193, 33.136326, 31.873766>,  <40.388107, 32.855328, 31.592655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343193, 33.136326, 31.873766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177119, 0.710074, -0.681486,
		-0.977763, 0.047952, -0.204158,
		-0.112289, 0.702492, 0.702777,
		40.309505, 33.347073, 32.084599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955097, 33.391949, 31.388317>,  <40.388107, 32.855328, 31.592655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955097, 33.391949, 31.388317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237011, 33.501476, 31.650097>,  <40.406158, 33.567192, 31.807165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237011, 33.501476, 31.650097>,  <39.955097, 33.391949, 31.388317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237011, 33.501476, 31.650097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286506, 0.734073, -0.615672,
		-0.648995, 0.621419, 0.438912,
		0.704783, 0.273817, 0.654450,
		40.448444, 33.583622, 31.846432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877293, 34.033470, 31.475307>,  <39.955097, 33.391949, 31.388317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877293, 34.033470, 31.475307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263737, 33.974644, 31.560154>,  <40.495605, 33.939350, 31.611063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263737, 33.974644, 31.560154>,  <39.877293, 34.033470, 31.475307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263737, 33.974644, 31.560154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244575, 0.784241, -0.570218,
		-0.082493, 0.602775, 0.793636,
		0.966115, -0.147064, 0.212118,
		40.553570, 33.930523, 31.623789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279716, 34.646198, 31.733978>,  <39.877293, 34.033470, 31.475307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279716, 34.646198, 31.733978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503868, 34.420601, 31.491362>,  <40.638359, 34.285244, 31.345793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503868, 34.420601, 31.491362>,  <40.279716, 34.646198, 31.733978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503868, 34.420601, 31.491362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188330, 0.799909, -0.569804,
		0.806543, 0.205074, 0.554466,
		0.560375, -0.563995, -0.606540,
		40.671982, 34.251404, 31.309401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882122, 35.083206, 31.570463>,  <40.279716, 34.646198, 31.733978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882122, 35.083206, 31.570463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763481, 34.810394, 31.303072>,  <40.692299, 34.646706, 31.142637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763481, 34.810394, 31.303072>,  <40.882122, 35.083206, 31.570463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763481, 34.810394, 31.303072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011948, 0.702573, -0.711512,
		0.954928, -0.203047, -0.216531,
		-0.296599, -0.682029, -0.668480,
		40.674500, 34.605785, 31.102528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324566, 34.979301, 31.029537>,  <40.882122, 35.083206, 31.570463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324566, 34.979301, 31.029537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938076, 34.924988, 30.941935>,  <40.706181, 34.892399, 30.889374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938076, 34.924988, 30.941935>,  <41.324566, 34.979301, 31.029537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938076, 34.924988, 30.941935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052868, 0.727369, -0.684208,
		0.252202, -0.672680, -0.695626,
		-0.966229, -0.135783, -0.219007,
		40.648209, 34.884254, 30.876232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736965, 34.433079, 31.329977>,  <41.324566, 34.979301, 31.029537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736965, 34.433079, 31.329977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361645, 34.404568, 31.465330>,  <41.136452, 34.387459, 31.546541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361645, 34.404568, 31.465330>,  <41.736965, 34.433079, 31.329977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361645, 34.404568, 31.465330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155747, -0.960769, 0.229490,
		0.308748, 0.268033, 0.912597,
		-0.938306, -0.071280, 0.338381,
		41.080154, 34.383183, 31.566845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801777, 33.967953, 31.696718>,  <41.736965, 34.433079, 31.329977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801777, 33.967953, 31.696718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403709, 33.940426, 31.668701>,  <41.164867, 33.923912, 31.651890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403709, 33.940426, 31.668701>,  <41.801777, 33.967953, 31.696718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403709, 33.940426, 31.668701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046392, -0.958218, 0.282251,
		-0.086540, 0.277637, 0.956780,
		-0.995167, -0.068813, -0.070044,
		41.105160, 33.919781, 31.647688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467823, 33.597321, 32.291538>,  <41.801777, 33.967953, 31.696718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467823, 33.597321, 32.291538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242287, 33.569763, 31.962334>,  <41.106964, 33.553226, 31.764812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242287, 33.569763, 31.962334>,  <41.467823, 33.597321, 32.291538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242287, 33.569763, 31.962334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108252, -0.981752, 0.156347,
		-0.818760, 0.177247, 0.546091,
		-0.563838, -0.068895, -0.823007,
		41.073135, 33.549095, 31.715431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322033, 34.002674, 32.880695>,  <41.467823, 33.597321, 32.291538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322033, 34.002674, 32.880695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345711, 34.079437, 33.272545>,  <41.359917, 34.125496, 33.507656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345711, 34.079437, 33.272545>,  <41.322033, 34.002674, 32.880695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345711, 34.079437, 33.272545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820025, -0.568969, 0.061913,
		0.569258, 0.799653, -0.191050,
		0.059192, 0.191910, 0.979626,
		41.363468, 34.137009, 33.566433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005489, 34.064064, 32.992119>,  <41.322033, 34.002674, 32.880695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005489, 34.064064, 32.992119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817413, 33.942646, 33.323608>,  <41.704567, 33.869797, 33.522503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817413, 33.942646, 33.323608>,  <42.005489, 34.064064, 32.992119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817413, 33.942646, 33.323608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646512, -0.757660, 0.089293,
		0.600788, 0.577766, 0.552486,
		-0.470187, -0.303543, 0.828725,
		41.676357, 33.851582, 33.572227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491203, 33.943176, 33.468952>,  <42.005489, 34.064064, 32.992119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491203, 33.943176, 33.468952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176933, 33.714653, 33.563881>,  <41.988369, 33.577541, 33.620838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176933, 33.714653, 33.563881>,  <42.491203, 33.943176, 33.468952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176933, 33.714653, 33.563881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615903, -0.758373, 0.213384,
		0.058070, 0.313817, 0.947706,
		-0.785679, -0.571304, 0.237320,
		41.941231, 33.543262, 33.635078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522049, 33.664188, 34.191177>,  <42.491203, 33.943176, 33.468952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522049, 33.664188, 34.191177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329266, 33.423431, 33.936481>,  <42.213596, 33.278976, 33.783665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329266, 33.423431, 33.936481>,  <42.522049, 33.664188, 34.191177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329266, 33.423431, 33.936481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718639, -0.687297, 0.105739,
		-0.501275, -0.406626, 0.763792,
		-0.481956, -0.601895, -0.636743,
		42.184677, 33.242863, 33.745457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430489, 32.911716, 34.414017>,  <42.522049, 33.664188, 34.191177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430489, 32.911716, 34.414017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492748, 32.963661, 34.022320>,  <42.530106, 32.994827, 33.787304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492748, 32.963661, 34.022320>,  <42.430489, 32.911716, 34.414017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492748, 32.963661, 34.022320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692354, -0.721414, 0.014380,
		-0.704569, -0.680218, -0.202200,
		0.155652, 0.129863, -0.979239,
		42.539444, 33.002621, 33.728550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441998, 32.293552, 34.166340>,  <42.430489, 32.911716, 34.414017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441998, 32.293552, 34.166340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645859, 32.510456, 33.899143>,  <42.768173, 32.640598, 33.738823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645859, 32.510456, 33.899143>,  <42.441998, 32.293552, 34.166340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645859, 32.510456, 33.899143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638983, -0.758465, -0.128182,
		-0.576158, -0.361510, -0.733043,
		0.509649, 0.542256, -0.667995,
		42.798752, 32.673134, 33.698746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480549, 31.855444, 33.598888>,  <42.441998, 32.293552, 34.166340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480549, 31.855444, 33.598888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780807, 32.114178, 33.545033>,  <42.960964, 32.269417, 33.512718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780807, 32.114178, 33.545033>,  <42.480549, 31.855444, 33.598888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780807, 32.114178, 33.545033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599865, -0.752643, -0.271459,
		-0.276922, 0.123007, -0.952986,
		0.750651, 0.646836, -0.134636,
		43.006004, 32.308228, 33.504642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784115, 31.876518, 32.914631>,  <42.480549, 31.855444, 33.598888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784115, 31.876518, 32.914631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073391, 32.013042, 33.154800>,  <43.246956, 32.094955, 33.298901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073391, 32.013042, 33.154800>,  <42.784115, 31.876518, 32.914631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073391, 32.013042, 33.154800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636657, -0.666423, -0.388006,
		0.267704, 0.662864, -0.699247,
		0.723189, 0.341309, 0.600421,
		43.290348, 32.115437, 33.334927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475288, 31.866121, 32.603943>,  <42.784115, 31.876518, 32.914631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475288, 31.866121, 32.603943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607677, 31.876026, 32.981270>,  <43.687111, 31.881969, 33.207664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607677, 31.876026, 32.981270>,  <43.475288, 31.866121, 32.603943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607677, 31.876026, 32.981270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797195, -0.542225, -0.265468,
		0.504917, 0.839869, -0.199198,
		0.330968, 0.024760, 0.943317,
		43.706966, 31.883453, 33.264263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321167, 32.124840, 32.656521>,  <43.475288, 31.866121, 32.603943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321167, 32.124840, 32.656521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205372, 31.962162, 33.003117>,  <44.135895, 31.864555, 33.211075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205372, 31.962162, 33.003117>,  <44.321167, 32.124840, 32.656521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205372, 31.962162, 33.003117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843454, -0.536361, 0.030052,
		0.452527, 0.739540, 0.498297,
		-0.289491, -0.406691, 0.866486,
		44.118523, 31.840155, 33.263062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914757, 32.216106, 33.146259>,  <44.321167, 32.124840, 32.656521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914757, 32.216106, 33.146259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684650, 31.897711, 33.221596>,  <44.546585, 31.706675, 33.266800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684650, 31.897711, 33.221596>,  <44.914757, 32.216106, 33.146259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684650, 31.897711, 33.221596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817922, -0.562177, 0.122313,
		0.008523, 0.224414, 0.974457,
		-0.575266, -0.795987, 0.188345,
		44.512070, 31.658915, 33.278099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279354, 32.860420, 33.419430>,  <44.914757, 32.216106, 33.146259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279354, 32.860420, 33.419430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137215, 32.930534, 33.786690>,  <45.051929, 32.972603, 34.007046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137215, 32.930534, 33.786690>,  <45.279354, 32.860420, 33.419430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137215, 32.930534, 33.786690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405696, -0.855996, 0.320438,
		0.842103, 0.486358, 0.233064,
		-0.355349, 0.175289, 0.918151,
		45.030609, 32.983120, 34.062134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033806, 33.068710, 33.622494>,  <45.279354, 32.860420, 33.419430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033806, 33.068710, 33.622494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156155, 32.867085, 33.945568>,  <46.229565, 32.746109, 34.139412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156155, 32.867085, 33.945568>,  <46.033806, 33.068710, 33.622494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.156155, 32.867085, 33.945568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446528, 0.825210, 0.345893,
		-0.840865, 0.254856, 0.477488,
		0.305875, -0.504061, 0.807690,
		46.247917, 32.715866, 34.187874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794411, 33.414326, 34.167385>,  <46.033806, 33.068710, 33.622494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794411, 33.414326, 34.167385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109127, 33.213844, 34.311474>,  <46.297955, 33.093555, 34.397926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109127, 33.213844, 34.311474>,  <45.794411, 33.414326, 34.167385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109127, 33.213844, 34.311474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309588, 0.825349, 0.472180,
		-0.533968, -0.259985, 0.804541,
		0.786786, -0.501206, 0.360222,
		46.345161, 33.063484, 34.419540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714214, 33.573776, 35.008377>,  <45.794411, 33.414326, 34.167385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714214, 33.573776, 35.008377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079281, 33.539597, 34.848503>,  <46.298321, 33.519089, 34.752579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079281, 33.539597, 34.848503>,  <45.714214, 33.573776, 35.008377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079281, 33.539597, 34.848503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224670, 0.921791, 0.315949,
		0.341425, -0.378151, 0.860483,
		0.912662, -0.085452, -0.399682,
		46.353081, 33.513962, 34.728600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288544, 33.637493, 35.582928>,  <45.714214, 33.573776, 35.008377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288544, 33.637493, 35.582928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.403687, 33.803162, 35.237537>,  <46.472775, 33.902565, 35.030304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.403687, 33.803162, 35.237537>,  <46.288544, 33.637493, 35.582928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403687, 33.803162, 35.237537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065342, 0.891048, 0.449181,
		0.955441, -0.185722, 0.229435,
		0.287861, 0.414174, -0.863479,
		46.490044, 33.927414, 34.978493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.664471, 34.190807, 35.703762>,  <46.288544, 33.637493, 35.582928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.664471, 34.190807, 35.703762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554192, 34.307091, 35.337269>,  <46.488026, 34.376862, 35.117374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554192, 34.307091, 35.337269>,  <46.664471, 34.190807, 35.703762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554192, 34.307091, 35.337269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170764, 0.952824, 0.250931,
		0.945955, -0.087279, -0.312333,
		-0.275698, 0.290705, -0.916232,
		46.471481, 34.394302, 35.062401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.169395, 34.850792, 35.472088>,  <46.664471, 34.190807, 35.703762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.169395, 34.850792, 35.472088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841518, 34.830696, 35.243851>,  <46.644791, 34.818638, 35.106907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841518, 34.830696, 35.243851>,  <47.169395, 34.850792, 35.472088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.841518, 34.830696, 35.243851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051091, 0.998588, -0.014533,
		0.570517, 0.017240, -0.821105,
		-0.819695, -0.050243, -0.570592,
		46.595612, 34.815624, 35.072674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.063370, 35.571854, 35.662025>,  <47.169395, 34.850792, 35.472088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.063370, 35.571854, 35.662025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456310, 35.588825, 35.589153>,  <47.692074, 35.599007, 35.545429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456310, 35.588825, 35.589153>,  <47.063370, 35.571854, 35.662025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.456310, 35.588825, 35.589153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011438, -0.958495, -0.284880,
		-0.186705, 0.281936, -0.941092,
		0.982349, 0.042424, -0.182180,
		47.751015, 35.601551, 35.534500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.029743, 35.347416, 34.981312>,  <47.063370, 35.571854, 35.662025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.029743, 35.347416, 34.981312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.397682, 35.310909, 35.133911>,  <47.618446, 35.289005, 35.225471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.397682, 35.310909, 35.133911>,  <47.029743, 35.347416, 34.981312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.397682, 35.310909, 35.133911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020120, -0.960297, -0.278253,
		0.391752, 0.263627, -0.881494,
		0.919851, -0.091270, 0.381502,
		47.673637, 35.283527, 35.248363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.583996, 35.078014, 34.463100>,  <47.029743, 35.347416, 34.981312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.583996, 35.078014, 34.463100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672646, 34.985546, 34.842033>,  <47.725834, 34.930065, 35.069393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672646, 34.985546, 34.842033>,  <47.583996, 35.078014, 34.463100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.672646, 34.985546, 34.842033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190989, -0.962969, -0.190300,
		0.956246, -0.138755, -0.257567,
		0.221624, -0.231166, 0.947335,
		47.739132, 34.916195, 35.126236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.551292, 31.023817, 22.558161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.212856, 31.230604, 22.506187>,  <38.009796, 31.354675, 22.475004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.212856, 31.230604, 22.506187>,  <38.551292, 31.023817, 22.558161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212856, 31.230604, 22.506187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340521, -0.336663, 0.877897,
		0.410100, 0.787022, 0.460884,
		-0.846087, 0.516966, -0.129933,
		37.959030, 31.385695, 22.467207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391949, 31.325857, 23.217197>,  <38.551292, 31.023817, 22.558161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391949, 31.325857, 23.217197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.036007, 31.345860, 23.035795>,  <37.822441, 31.357861, 22.926954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.036007, 31.345860, 23.035795>,  <38.391949, 31.325857, 23.217197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036007, 31.345860, 23.035795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447499, -0.289435, 0.846151,
		-0.088947, 0.955891, 0.279932,
		-0.889850, 0.050007, -0.453504,
		37.769051, 31.360861, 22.899744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891113, 31.808016, 23.573421>,  <38.391949, 31.325857, 23.217197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891113, 31.808016, 23.573421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685940, 31.526384, 23.376982>,  <37.562836, 31.357407, 23.259117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685940, 31.526384, 23.376982>,  <37.891113, 31.808016, 23.573421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685940, 31.526384, 23.376982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487348, -0.232118, 0.841792,
		-0.706679, 0.671116, -0.224070,
		-0.512929, -0.704077, -0.491100,
		37.532063, 31.315161, 23.229652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165478, 31.958115, 23.627455>,  <37.891113, 31.808016, 23.573421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165478, 31.958115, 23.627455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142418, 31.566568, 23.548975>,  <37.128582, 31.331640, 23.501886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142418, 31.566568, 23.548975>,  <37.165478, 31.958115, 23.627455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142418, 31.566568, 23.548975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468644, -0.146994, 0.871071,
		-0.881504, 0.142163, -0.450267,
		-0.057647, -0.978868, -0.196200,
		37.125122, 31.272907, 23.490114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444809, 31.897028, 23.726469>,  <37.165478, 31.958115, 23.627455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444809, 31.897028, 23.726469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617847, 31.536808, 23.743790>,  <36.721668, 31.320677, 23.754183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617847, 31.536808, 23.743790>,  <36.444809, 31.897028, 23.726469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617847, 31.536808, 23.743790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624394, -0.264599, 0.734928,
		-0.650380, -0.344964, -0.676761,
		0.432594, -0.900548, 0.043303,
		36.747627, 31.266644, 23.756781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873295, 31.534616, 23.891369>,  <36.444809, 31.897028, 23.726469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873295, 31.534616, 23.891369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.178246, 31.286610, 23.965517>,  <36.361214, 31.137806, 24.010006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.178246, 31.286610, 23.965517>,  <35.873295, 31.534616, 23.891369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178246, 31.286610, 23.965517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478559, -0.347330, 0.806438,
		-0.435620, -0.703520, -0.561511,
		0.762375, -0.620017, 0.185372,
		36.406960, 31.100605, 24.021130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593449, 30.933285, 24.003948>,  <35.873295, 31.534616, 23.891369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593449, 30.933285, 24.003948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948017, 30.871464, 24.178478>,  <36.160759, 30.834372, 24.283195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948017, 30.871464, 24.178478>,  <35.593449, 30.933285, 24.003948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948017, 30.871464, 24.178478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459494, -0.407729, 0.789064,
		0.055951, -0.899928, -0.432433,
		0.886417, -0.154552, 0.436325,
		36.213943, 30.825098, 24.309376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390179, 30.371904, 24.478769>,  <35.593449, 30.933285, 24.003948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390179, 30.371904, 24.478769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742336, 30.487261, 24.629362>,  <35.953632, 30.556475, 24.719717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742336, 30.487261, 24.629362>,  <35.390179, 30.371904, 24.478769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742336, 30.487261, 24.629362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280267, -0.323997, 0.903591,
		0.382567, -0.901030, -0.204418,
		0.880393, 0.288393, 0.376480,
		36.006454, 30.573778, 24.742306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709141, 29.814129, 24.969584>,  <35.390179, 30.371904, 24.478769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709141, 29.814129, 24.969584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.878822, 30.161297, 25.072939>,  <35.980633, 30.369596, 25.134953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.878822, 30.161297, 25.072939>,  <35.709141, 29.814129, 24.969584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878822, 30.161297, 25.072939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083900, -0.246440, 0.965520,
		0.901670, -0.431259, -0.031723,
		0.424207, 0.867919, 0.258390,
		36.006084, 30.421673, 25.150455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198318, 29.681953, 25.523111>,  <35.709141, 29.814129, 24.969584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198318, 29.681953, 25.523111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.119743, 30.072447, 25.559717>,  <36.072598, 30.306744, 25.581680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.119743, 30.072447, 25.559717>,  <36.198318, 29.681953, 25.523111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119743, 30.072447, 25.559717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217368, -0.134369, 0.966797,
		0.956118, 0.170027, 0.238598,
		-0.196442, 0.976235, 0.091514,
		36.060810, 30.365318, 25.587172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630520, 29.891062, 26.047571>,  <36.198318, 29.681953, 25.523111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630520, 29.891062, 26.047571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340637, 30.166521, 26.038147>,  <36.166706, 30.331797, 26.032492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340637, 30.166521, 26.038147>,  <36.630520, 29.891062, 26.047571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340637, 30.166521, 26.038147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107613, -0.079343, 0.991022,
		0.680598, 0.720740, 0.131608,
		-0.724711, 0.688650, -0.023560,
		36.123222, 30.373116, 26.031078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863754, 30.342258, 26.581802>,  <36.630520, 29.891062, 26.047571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863754, 30.342258, 26.581802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471897, 30.391432, 26.518328>,  <36.236782, 30.420937, 26.480242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471897, 30.391432, 26.518328>,  <36.863754, 30.342258, 26.581802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471897, 30.391432, 26.518328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148834, 0.085630, 0.985148,
		0.134698, 0.988713, -0.065590,
		-0.979645, 0.122936, -0.158689,
		36.178005, 30.428312, 26.470720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699051, 30.884781, 27.017803>,  <36.863754, 30.342258, 26.581802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699051, 30.884781, 27.017803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351463, 30.692379, 26.971285>,  <36.142910, 30.576939, 26.943373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351463, 30.692379, 26.971285>,  <36.699051, 30.884781, 27.017803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351463, 30.692379, 26.971285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158044, 0.047048, 0.986311,
		-0.468946, 0.875456, -0.116903,
		-0.868971, -0.481002, -0.116297,
		36.090771, 30.548079, 26.936396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112301, 31.363255, 27.144466>,  <36.699051, 30.884781, 27.017803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112301, 31.363255, 27.144466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931103, 31.013308, 27.213051>,  <35.822384, 30.803339, 27.254202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931103, 31.013308, 27.213051>,  <36.112301, 31.363255, 27.144466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931103, 31.013308, 27.213051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051518, 0.217693, 0.974657,
		-0.890022, 0.432685, -0.143686,
		-0.452998, -0.874868, 0.171460,
		35.795204, 30.750847, 27.264488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586754, 31.518898, 27.549082>,  <36.112301, 31.363255, 27.144466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586754, 31.518898, 27.549082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624908, 31.124376, 27.602911>,  <35.647800, 30.887663, 27.635208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624908, 31.124376, 27.602911>,  <35.586754, 31.518898, 27.549082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624908, 31.124376, 27.602911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151935, 0.119180, 0.981179,
		-0.983777, -0.114036, -0.138486,
		0.095385, -0.986302, 0.134573,
		35.653522, 30.828485, 27.643282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035759, 31.388008, 28.031582>,  <35.586754, 31.518898, 27.549082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035759, 31.388008, 28.031582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247051, 31.048500, 28.041040>,  <35.373825, 30.844795, 28.046715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247051, 31.048500, 28.041040>,  <35.035759, 31.388008, 28.031582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247051, 31.048500, 28.041040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196475, -0.095089, 0.975887,
		-0.826058, -0.520138, -0.216991,
		0.528230, -0.848772, 0.023645,
		35.405521, 30.793869, 28.048134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594913, 30.894545, 28.319574>,  <35.035759, 31.388008, 28.031582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594913, 30.894545, 28.319574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957432, 30.731318, 28.363586>,  <35.174942, 30.633381, 28.389994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957432, 30.731318, 28.363586>,  <34.594913, 30.894545, 28.319574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957432, 30.731318, 28.363586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229131, -0.255637, 0.939228,
		-0.355142, -0.876430, -0.325184,
		0.906296, -0.408069, 0.110030,
		35.229321, 30.608896, 28.396595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554543, 30.132582, 28.510096>,  <34.594913, 30.894545, 28.319574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554543, 30.132582, 28.510096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915848, 30.256905, 28.628429>,  <35.132629, 30.331499, 28.699430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915848, 30.256905, 28.628429>,  <34.554543, 30.132582, 28.510096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915848, 30.256905, 28.628429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165450, -0.383860, 0.908448,
		0.395911, -0.869511, -0.295303,
		0.903261, 0.310807, 0.295835,
		35.186825, 30.350147, 28.717180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951279, 29.478413, 28.784452>,  <34.554543, 30.132582, 28.510096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951279, 29.478413, 28.784452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136971, 29.801537, 28.929743>,  <35.248386, 29.995411, 29.016916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136971, 29.801537, 28.929743>,  <34.951279, 29.478413, 28.784452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136971, 29.801537, 28.929743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089358, -0.365284, 0.926598,
		0.881197, -0.462609, -0.097390,
		0.464227, 0.807812, 0.363225,
		35.276237, 30.043880, 29.038710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268215, 29.274389, 29.378641>,  <34.951279, 29.478413, 28.784452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268215, 29.274389, 29.378641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278046, 29.664366, 29.467081>,  <35.283943, 29.898352, 29.520145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278046, 29.664366, 29.467081>,  <35.268215, 29.274389, 29.378641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278046, 29.664366, 29.467081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087946, -0.222417, 0.970977,
		0.995822, -0.004419, -0.091208,
		0.024577, 0.974941, 0.221099,
		35.285419, 29.956848, 29.533411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908203, 29.464394, 29.744165>,  <35.268215, 29.274389, 29.378641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908203, 29.464394, 29.744165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.637413, 29.748936, 29.819727>,  <35.474941, 29.919661, 29.865063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.637413, 29.748936, 29.819727>,  <35.908203, 29.464394, 29.744165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637413, 29.748936, 29.819727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194013, -0.075106, 0.978120,
		0.709978, 0.698809, -0.087167,
		-0.676972, 0.711355, 0.188902,
		35.434322, 29.962341, 29.876398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518425, 29.177811, 29.999075>,  <35.908203, 29.464394, 29.744165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518425, 29.177811, 29.999075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868595, 29.191025, 30.191961>,  <37.078697, 29.198954, 30.307693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868595, 29.191025, 30.191961>,  <36.518425, 29.177811, 29.999075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868595, 29.191025, 30.191961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453596, 0.288467, -0.843230,
		-0.166960, 0.956920, 0.237548,
		0.875428, 0.033035, 0.482218,
		37.131226, 29.200935, 30.336626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818012, 29.780062, 29.851841>,  <36.518425, 29.177811, 29.999075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818012, 29.780062, 29.851841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.118134, 29.550861, 29.983734>,  <37.298206, 29.413342, 30.062870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.118134, 29.550861, 29.983734>,  <36.818012, 29.780062, 29.851841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118134, 29.550861, 29.983734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567458, 0.302306, -0.765900,
		0.339181, 0.761763, 0.551973,
		0.750299, -0.573000, 0.329731,
		37.343224, 29.378962, 30.082653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457710, 30.225203, 29.766747>,  <36.818012, 29.780062, 29.851841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457710, 30.225203, 29.766747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575687, 29.843060, 29.773695>,  <37.646473, 29.613773, 29.777864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575687, 29.843060, 29.773695>,  <37.457710, 30.225203, 29.766747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575687, 29.843060, 29.773695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519902, 0.145202, -0.841794,
		0.801691, 0.257316, 0.539519,
		0.294946, -0.955356, 0.017372,
		37.664173, 29.556454, 29.778906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102413, 30.321089, 29.625887>,  <37.457710, 30.225203, 29.766747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102413, 30.321089, 29.625887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014938, 29.941263, 29.535992>,  <37.962452, 29.713367, 29.482054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014938, 29.941263, 29.535992>,  <38.102413, 30.321089, 29.625887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014938, 29.941263, 29.535992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604634, 0.048906, -0.795000,
		0.765893, -0.309742, 0.563442,
		-0.218689, -0.949562, -0.224737,
		37.949333, 29.656395, 29.468571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679569, 29.951376, 29.623974>,  <38.102413, 30.321089, 29.625887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679569, 29.951376, 29.623974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420475, 29.748507, 29.396566>,  <38.265018, 29.626785, 29.260122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420475, 29.748507, 29.396566>,  <38.679569, 29.951376, 29.623974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420475, 29.748507, 29.396566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649535, 0.022375, -0.760003,
		0.398175, -0.861553, 0.314934,
		-0.647735, -0.507175, -0.568518,
		38.226154, 29.596354, 29.226011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112000, 29.537348, 29.215546>,  <38.679569, 29.951376, 29.623974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112000, 29.537348, 29.215546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.760120, 29.573273, 29.028751>,  <38.548992, 29.594828, 28.916676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.760120, 29.573273, 29.028751>,  <39.112000, 29.537348, 29.215546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760120, 29.573273, 29.028751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474688, 0.107037, -0.873621,
		-0.028477, -0.990190, -0.136793,
		-0.879693, 0.089812, -0.466984,
		38.496212, 29.600216, 28.888657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210571, 29.064447, 28.618023>,  <39.112000, 29.537348, 29.215546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210571, 29.064447, 28.618023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.872169, 29.272272, 28.570131>,  <38.669128, 29.396967, 28.541397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.872169, 29.272272, 28.570131>,  <39.210571, 29.064447, 28.618023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872169, 29.272272, 28.570131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251228, 0.190382, -0.949020,
		-0.470283, -0.832951, -0.291592,
		-0.846002, 0.519564, -0.119727,
		38.618370, 29.428141, 28.534212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946388, 28.687117, 28.071323>,  <39.210571, 29.064447, 28.618023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946388, 28.687117, 28.071323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811714, 29.063700, 28.078331>,  <38.730911, 29.289650, 28.082535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811714, 29.063700, 28.078331>,  <38.946388, 28.687117, 28.071323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811714, 29.063700, 28.078331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184142, 0.084074, -0.979297,
		-0.923437, -0.326486, -0.201668,
		-0.336682, 0.941455, 0.017517,
		38.710709, 29.346136, 28.083586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507946, 28.741968, 27.474770>,  <38.946388, 28.687117, 28.071323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507946, 28.741968, 27.474770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.618160, 29.112411, 27.577845>,  <38.684288, 29.334679, 27.639690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.618160, 29.112411, 27.577845>,  <38.507946, 28.741968, 27.474770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618160, 29.112411, 27.577845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266914, 0.183818, -0.946027,
		-0.923493, 0.329441, -0.196544,
		0.275532, 0.926110, 0.257687,
		38.700821, 29.390245, 27.655151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611805, 28.968121, 26.804853>,  <38.507946, 28.741968, 27.474770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611805, 28.968121, 26.804853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769398, 29.257147, 27.032070>,  <38.863953, 29.430563, 27.168400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769398, 29.257147, 27.032070>,  <38.611805, 28.968121, 26.804853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769398, 29.257147, 27.032070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431355, 0.400376, -0.808475,
		-0.811608, 0.563556, -0.153940,
		0.393987, 0.722567, 0.568041,
		38.887592, 29.473917, 27.202482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415707, 29.620304, 26.464165>,  <38.611805, 28.968121, 26.804853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415707, 29.620304, 26.464165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732483, 29.676781, 26.701786>,  <38.922546, 29.710667, 26.844358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732483, 29.676781, 26.701786>,  <38.415707, 29.620304, 26.464165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732483, 29.676781, 26.701786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465286, 0.490471, -0.736850,
		-0.395403, 0.859944, 0.322727,
		0.791938, 0.141192, 0.594053,
		38.970066, 29.719139, 26.880003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597565, 30.367329, 26.488134>,  <38.415707, 29.620304, 26.464165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597565, 30.367329, 26.488134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.943321, 30.193890, 26.589970>,  <39.150776, 30.089827, 26.651072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.943321, 30.193890, 26.589970>,  <38.597565, 30.367329, 26.488134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943321, 30.193890, 26.589970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471868, 0.524642, -0.708584,
		0.173671, 0.732629, 0.658098,
		0.864395, -0.433596, 0.254590,
		39.202641, 30.063810, 26.666346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192211, 30.931021, 26.499037>,  <38.597565, 30.367329, 26.488134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192211, 30.931021, 26.499037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.372753, 30.574295, 26.486713>,  <39.481079, 30.360260, 26.479321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.372753, 30.574295, 26.486713>,  <39.192211, 30.931021, 26.499037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372753, 30.574295, 26.486713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678166, 0.365255, -0.637715,
		0.579974, 0.266943, 0.769656,
		0.451354, -0.891813, -0.030807,
		39.508160, 30.306751, 26.477472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850204, 31.199432, 26.432652>,  <39.192211, 30.931021, 26.499037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850204, 31.199432, 26.432652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848988, 30.818192, 26.311600>,  <39.848255, 30.589447, 26.238968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848988, 30.818192, 26.311600>,  <39.850204, 31.199432, 26.432652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848988, 30.818192, 26.311600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634598, 0.232045, -0.737184,
		0.772836, -0.194293, 0.604131,
		-0.003045, -0.953103, -0.302631,
		39.848076, 30.532261, 26.220810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474812, 31.066471, 26.343597>,  <39.850204, 31.199432, 26.432652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474812, 31.066471, 26.343597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285809, 30.776138, 26.143635>,  <40.172405, 30.601938, 26.023657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285809, 30.776138, 26.143635>,  <40.474812, 31.066471, 26.343597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285809, 30.776138, 26.143635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650871, 0.095054, -0.753214,
		0.594224, -0.681274, 0.427509,
		-0.472508, -0.725831, -0.499905,
		40.144054, 30.558390, 25.993664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938488, 30.622463, 26.047283>,  <40.474812, 31.066471, 26.343597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938488, 30.622463, 26.047283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.645580, 30.504387, 25.801796>,  <40.469837, 30.433542, 25.654505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.645580, 30.504387, 25.801796>,  <40.938488, 30.622463, 26.047283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645580, 30.504387, 25.801796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608559, 0.120869, -0.784249,
		0.305682, -0.947763, 0.091131,
		-0.732267, -0.295189, -0.613717,
		40.425900, 30.415831, 25.617682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193741, 30.047506, 25.548046>,  <40.938488, 30.622463, 26.047283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193741, 30.047506, 25.548046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.886581, 30.265387, 25.413214>,  <40.702286, 30.396114, 25.332314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.886581, 30.265387, 25.413214>,  <41.193741, 30.047506, 25.548046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886581, 30.265387, 25.413214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435853, 0.058669, -0.898104,
		-0.469422, -0.836575, -0.282462,
		-0.767903, 0.544702, -0.337083,
		40.656212, 30.428797, 25.312088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993416, 29.707048, 24.951542>,  <41.193741, 30.047506, 25.548046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993416, 29.707048, 24.951542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.843426, 30.066902, 24.862051>,  <40.753433, 30.282814, 24.808355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.843426, 30.066902, 24.862051>,  <40.993416, 29.707048, 24.951542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843426, 30.066902, 24.862051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402058, -0.059638, -0.913670,
		-0.835310, -0.432556, -0.339342,
		-0.374976, 0.899633, -0.223729,
		40.730934, 30.336792, 24.794931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940830, 29.689468, 24.288797>,  <40.993416, 29.707048, 24.951542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940830, 29.689468, 24.288797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.897903, 30.083805, 24.340332>,  <40.872147, 30.320408, 24.371252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.897903, 30.083805, 24.340332>,  <40.940830, 29.689468, 24.288797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897903, 30.083805, 24.340332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577650, 0.167294, -0.798958,
		-0.809199, -0.011321, -0.587425,
		-0.107318, 0.985842, 0.128834,
		40.865707, 30.379559, 24.378983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.107647, 30.121819, 23.757151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.366772, 30.412132, 23.849735>,  <40.522247, 30.586321, 23.905285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.366772, 30.412132, 23.849735>,  <40.107647, 30.121819, 23.757151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366772, 30.412132, 23.849735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102378, 0.384021, -0.917631,
		-0.754888, 0.570758, 0.323079,
		0.647814, 0.725785, 0.231460,
		40.561115, 30.629868, 23.919172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793709, 30.757208, 23.551636>,  <40.107647, 30.121819, 23.757151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793709, 30.757208, 23.551636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.183418, 30.845137, 23.571550>,  <40.417244, 30.897894, 23.583500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.183418, 30.845137, 23.571550>,  <39.793709, 30.757208, 23.551636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183418, 30.845137, 23.571550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048129, 0.418705, -0.906846,
		-0.220190, 0.881115, 0.418511,
		0.974269, 0.219821, 0.049788,
		40.475700, 30.911083, 23.586487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868835, 31.366385, 23.221910>,  <39.793709, 30.757208, 23.551636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868835, 31.366385, 23.221910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.248016, 31.239822, 23.207588>,  <40.475525, 31.163885, 23.198994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.248016, 31.239822, 23.207588>,  <39.868835, 31.366385, 23.221910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248016, 31.239822, 23.207588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131729, 0.492046, -0.860545,
		0.289902, 0.811035, 0.508114,
		0.947948, -0.316407, -0.035808,
		40.532402, 31.144899, 23.196846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405338, 31.970766, 23.175997>,  <39.868835, 31.366385, 23.221910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405338, 31.970766, 23.175997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.557751, 31.635761, 23.019337>,  <40.649197, 31.434757, 22.925341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.557751, 31.635761, 23.019337>,  <40.405338, 31.970766, 23.175997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557751, 31.635761, 23.019337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176152, 0.481604, -0.858503,
		0.907628, 0.258123, 0.331034,
		0.381027, -0.837514, -0.391648,
		40.672058, 31.384506, 22.901842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043255, 32.075394, 22.971846>,  <40.405338, 31.970766, 23.175997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043255, 32.075394, 22.971846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.942509, 31.761480, 22.745335>,  <40.882061, 31.573132, 22.609428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.942509, 31.761480, 22.745335>,  <41.043255, 32.075394, 22.971846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942509, 31.761480, 22.745335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250811, 0.512215, -0.821419,
		0.934695, -0.348919, 0.067821,
		-0.251870, -0.784787, -0.566278,
		40.866947, 31.526045, 22.575451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409023, 32.245728, 22.420555>,  <41.043255, 32.075394, 22.971846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409023, 32.245728, 22.420555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.173916, 31.945719, 22.299229>,  <41.032852, 31.765715, 22.226433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.173916, 31.945719, 22.299229>,  <41.409023, 32.245728, 22.420555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173916, 31.945719, 22.299229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063072, 0.331294, -0.941417,
		0.806568, -0.572465, -0.147418,
		-0.587767, -0.750019, -0.303317,
		40.997585, 31.720713, 22.208233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751945, 31.869839, 21.781441>,  <41.409023, 32.245728, 22.420555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751945, 31.869839, 21.781441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.367771, 31.762810, 21.750547>,  <41.137264, 31.698593, 21.732012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.367771, 31.762810, 21.750547>,  <41.751945, 31.869839, 21.781441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367771, 31.762810, 21.750547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032735, 0.166931, -0.985425,
		0.276566, -0.948967, -0.151568,
		-0.960437, -0.267573, -0.077232,
		41.079639, 31.682539, 21.727377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593281, 31.602600, 21.169973>,  <41.751945, 31.869839, 21.781441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593281, 31.602600, 21.169973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.209023, 31.673683, 21.255375>,  <40.978470, 31.716333, 21.306616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.209023, 31.673683, 21.255375>,  <41.593281, 31.602600, 21.169973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209023, 31.673683, 21.255375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171363, 0.225807, -0.958982,
		-0.218632, -0.957826, -0.186467,
		-0.960643, 0.177711, 0.213504,
		40.920830, 31.726995, 21.319426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245544, 31.265587, 20.562859>,  <41.593281, 31.602600, 21.169973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245544, 31.265587, 20.562859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.014210, 31.538031, 20.742468>,  <40.875408, 31.701496, 20.850233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.014210, 31.538031, 20.742468>,  <41.245544, 31.265587, 20.562859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014210, 31.538031, 20.742468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235733, 0.387403, -0.891262,
		-0.780998, -0.621298, -0.063489,
		-0.578335, 0.681108, 0.449022,
		40.840710, 31.742363, 20.877174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612255, 31.187771, 20.293989>,  <41.245544, 31.265587, 20.562859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612255, 31.187771, 20.293989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.654461, 31.561117, 20.431217>,  <40.679783, 31.785124, 20.513554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.654461, 31.561117, 20.431217>,  <40.612255, 31.187771, 20.293989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654461, 31.561117, 20.431217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422074, 0.270344, -0.865314,
		-0.900400, 0.236104, -0.365424,
		0.105514, 0.933364, 0.343072,
		40.686115, 31.841125, 20.534138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264538, 31.653061, 19.788275>,  <40.612255, 31.187771, 20.293989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264538, 31.653061, 19.788275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.512028, 31.879948, 20.005693>,  <40.660522, 32.016079, 20.136145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.512028, 31.879948, 20.005693>,  <40.264538, 31.653061, 19.788275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512028, 31.879948, 20.005693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253193, 0.510988, -0.821452,
		-0.743690, 0.645874, 0.172544,
		0.618723, 0.567219, 0.543548,
		40.697643, 32.050114, 20.168758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101444, 32.278671, 19.643745>,  <40.264538, 31.653061, 19.788275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101444, 32.278671, 19.643745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.476906, 32.309578, 19.778183>,  <40.702183, 32.328121, 19.858845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.476906, 32.309578, 19.778183>,  <40.101444, 32.278671, 19.643745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476906, 32.309578, 19.778183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259145, 0.484976, -0.835250,
		-0.227534, 0.871107, 0.435201,
		0.938654, 0.077268, 0.336091,
		40.758503, 32.332760, 19.879011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168262, 32.965584, 19.474100>,  <40.101444, 32.278671, 19.643745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168262, 32.965584, 19.474100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.516228, 32.773285, 19.518143>,  <40.725006, 32.657906, 19.544567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.516228, 32.773285, 19.518143>,  <40.168262, 32.965584, 19.474100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516228, 32.773285, 19.518143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304249, 0.347392, -0.886990,
		0.388171, 0.805107, 0.448470,
		0.869917, -0.480751, 0.110106,
		40.777203, 32.629059, 19.551174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540218, 33.368793, 19.187414>,  <40.168262, 32.965584, 19.474100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540218, 33.368793, 19.187414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807938, 33.071728, 19.196194>,  <40.968571, 32.893486, 19.201462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807938, 33.071728, 19.196194>,  <40.540218, 33.368793, 19.187414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807938, 33.071728, 19.196194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431404, 0.364395, -0.825292,
		0.604919, 0.561837, 0.564279,
		0.669301, -0.742667, 0.021949,
		41.008728, 32.848927, 19.202778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226410, 33.627537, 19.132175>,  <40.540218, 33.368793, 19.187414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226410, 33.627537, 19.132175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.250175, 33.248241, 19.007391>,  <41.264435, 33.020664, 18.932520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.250175, 33.248241, 19.007391>,  <41.226410, 33.627537, 19.132175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250175, 33.248241, 19.007391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411442, 0.307995, -0.857820,
		0.909498, -0.077391, 0.408442,
		0.059411, -0.948235, -0.311962,
		41.267998, 32.963772, 18.913803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853848, 33.584419, 18.914930>,  <41.226410, 33.627537, 19.132175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853848, 33.584419, 18.914930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.661732, 33.278221, 18.743656>,  <41.546463, 33.094501, 18.640892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.661732, 33.278221, 18.743656>,  <41.853848, 33.584419, 18.914930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661732, 33.278221, 18.743656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378277, 0.259667, -0.888526,
		0.791347, -0.588721, 0.164854,
		-0.480287, -0.765494, -0.428187,
		41.517647, 33.048573, 18.615200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393047, 33.220562, 18.512436>,  <41.853848, 33.584419, 18.914930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393047, 33.220562, 18.512436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.047806, 33.096886, 18.352711>,  <41.840660, 33.022682, 18.256876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.047806, 33.096886, 18.352711>,  <42.393047, 33.220562, 18.512436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047806, 33.096886, 18.352711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399768, 0.064874, -0.914318,
		0.308600, -0.948786, 0.067609,
		-0.863106, -0.309187, -0.399314,
		41.788876, 33.004131, 18.232916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632904, 32.708176, 17.950876>,  <42.393047, 33.220562, 18.512436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632904, 32.708176, 17.950876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.260582, 32.825829, 17.864082>,  <42.037189, 32.896420, 17.812006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.260582, 32.825829, 17.864082>,  <42.632904, 32.708176, 17.950876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260582, 32.825829, 17.864082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238763, 0.039821, -0.970261,
		-0.276747, -0.954934, -0.107294,
		-0.930808, 0.294135, -0.216983,
		41.981339, 32.914070, 17.798988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538502, 32.538246, 17.156124>,  <42.632904, 32.708176, 17.950876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538502, 32.538246, 17.156124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.254738, 32.801056, 17.258154>,  <42.084480, 32.958740, 17.319372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.254738, 32.801056, 17.258154>,  <42.538502, 32.538246, 17.156124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254738, 32.801056, 17.258154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005030, 0.366625, -0.930355,
		-0.704779, -0.658719, -0.263392,
		-0.709409, 0.657020, 0.255076,
		42.041916, 32.998161, 17.334677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053455, 32.425270, 16.593241>,  <42.538502, 32.538246, 17.156124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053455, 32.425270, 16.593241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.954578, 32.767872, 16.774481>,  <41.895252, 32.973431, 16.883224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.954578, 32.767872, 16.774481>,  <42.053455, 32.425270, 16.593241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954578, 32.767872, 16.774481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146573, 0.429180, -0.891247,
		-0.957817, -0.286721, 0.019450,
		-0.247192, 0.856502, 0.453102,
		41.880421, 33.024822, 16.910412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427235, 32.671902, 16.222559>,  <42.053455, 32.425270, 16.593241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427235, 32.671902, 16.222559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.572025, 32.997005, 16.405159>,  <41.658901, 33.192066, 16.514719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.572025, 32.997005, 16.405159>,  <41.427235, 32.671902, 16.222559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572025, 32.997005, 16.405159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270125, 0.560154, -0.783109,
		-0.892190, 0.160157, 0.422311,
		0.361979, 0.812759, 0.456502,
		41.680618, 33.240833, 16.542110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871197, 33.157024, 16.138809>,  <41.427235, 32.671902, 16.222559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871197, 33.157024, 16.138809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.218166, 33.349712, 16.188650>,  <41.426346, 33.465324, 16.218555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.218166, 33.349712, 16.188650>,  <40.871197, 33.157024, 16.138809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218166, 33.349712, 16.188650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230421, 0.610846, -0.757478,
		-0.441005, 0.628342, 0.640860,
		0.867422, 0.481719, 0.124603,
		41.478394, 33.494228, 16.226030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746037, 33.804420, 16.079967>,  <40.871197, 33.157024, 16.138809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746037, 33.804420, 16.079967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.128990, 33.769913, 15.969719>,  <41.358765, 33.749207, 15.903570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.128990, 33.769913, 15.969719>,  <40.746037, 33.804420, 16.079967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128990, 33.769913, 15.969719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129875, 0.723795, -0.677683,
		0.257958, 0.684601, 0.681747,
		0.957387, -0.086272, -0.275621,
		41.416206, 33.744030, 15.887033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090389, 33.604839, 16.272722>,  <40.746037, 33.804420, 16.079967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090389, 33.604839, 16.272722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.267574, 33.320759, 16.491590>,  <40.373886, 33.150311, 16.622911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.267574, 33.320759, 16.491590>,  <40.090389, 33.604839, 16.272722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267574, 33.320759, 16.491590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828263, 0.090561, -0.552973,
		0.343172, 0.698145, 0.628351,
		0.442960, -0.710205, 0.547170,
		40.400463, 33.107697, 16.655741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197224, 33.805466, 15.488916>,  <40.090389, 33.604839, 16.272722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197224, 33.805466, 15.488916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819286, 33.693966, 15.420137>,  <39.592522, 33.627068, 15.378870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819286, 33.693966, 15.420137>,  <40.197224, 33.805466, 15.488916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819286, 33.693966, 15.420137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200505, 0.077188, 0.976647,
		-0.258966, 0.957257, -0.128821,
		-0.944846, -0.278748, -0.171946,
		39.535831, 33.610340, 15.368553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846367, 34.264198, 15.784851>,  <40.197224, 33.805466, 15.488916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846367, 34.264198, 15.784851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577873, 33.971336, 15.738564>,  <39.416775, 33.795620, 15.710793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577873, 33.971336, 15.738564>,  <39.846367, 34.264198, 15.784851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577873, 33.971336, 15.738564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338472, 0.163862, 0.926599,
		-0.659452, 0.661135, -0.357804,
		-0.671238, -0.732154, -0.115717,
		39.376503, 33.751690, 15.703850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134201, 34.506168, 15.829441>,  <39.846367, 34.264198, 15.784851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134201, 34.506168, 15.829441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.141994, 34.125908, 15.953298>,  <39.146671, 33.897751, 16.027611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.141994, 34.125908, 15.953298>,  <39.134201, 34.506168, 15.829441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141994, 34.125908, 15.953298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459580, 0.266527, 0.847201,
		-0.887923, -0.158810, -0.431709,
		0.019482, -0.950654, 0.309641,
		39.147839, 33.840714, 16.046190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540752, 34.473885, 16.273296>,  <39.134201, 34.506168, 15.829441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540752, 34.473885, 16.273296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.740112, 34.140419, 16.368462>,  <38.859730, 33.940338, 16.425560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.740112, 34.140419, 16.368462>,  <38.540752, 34.473885, 16.273296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740112, 34.140419, 16.368462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405011, 0.018740, 0.914120,
		-0.766528, -0.551952, -0.328303,
		0.498398, -0.833665, 0.237911,
		38.889633, 33.890320, 16.439835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128410, 34.160786, 16.645243>,  <38.540752, 34.473885, 16.273296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128410, 34.160786, 16.645243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459946, 33.971989, 16.765408>,  <38.658867, 33.858711, 16.837507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459946, 33.971989, 16.765408>,  <38.128410, 34.160786, 16.645243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459946, 33.971989, 16.765408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395278, -0.113998, 0.911460,
		-0.395960, -0.874199, -0.281056,
		0.828838, -0.471997, 0.300413,
		38.708595, 33.830391, 16.855532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839893, 33.633385, 17.118681>,  <38.128410, 34.160786, 16.645243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839893, 33.633385, 17.118681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234245, 33.637669, 17.185520>,  <38.470856, 33.640240, 17.225624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234245, 33.637669, 17.185520>,  <37.839893, 33.633385, 17.118681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234245, 33.637669, 17.185520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163356, -0.157583, 0.973901,
		0.036759, -0.987448, -0.153610,
		0.985882, 0.010706, 0.167098,
		38.530010, 33.640881, 17.235649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029556, 33.080540, 17.524971>,  <37.839893, 33.633385, 17.118681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029556, 33.080540, 17.524971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.310188, 33.351288, 17.614082>,  <38.478569, 33.513737, 17.667549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.310188, 33.351288, 17.614082>,  <38.029556, 33.080540, 17.524971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310188, 33.351288, 17.614082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145085, -0.170396, 0.974636,
		0.697663, -0.716109, -0.021343,
		0.701582, 0.676871, 0.222776,
		38.520664, 33.554348, 17.680916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464897, 32.778648, 17.999508>,  <38.029556, 33.080540, 17.524971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464897, 32.778648, 17.999508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.545372, 33.164268, 18.068935>,  <38.593658, 33.395641, 18.110592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.545372, 33.164268, 18.068935>,  <38.464897, 32.778648, 17.999508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545372, 33.164268, 18.068935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085795, -0.193855, 0.977271,
		0.975788, -0.181726, -0.121713,
		0.201190, 0.964052, 0.173570,
		38.605728, 33.453484, 18.121006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055874, 32.830521, 18.359453>,  <38.464897, 32.778648, 17.999508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055874, 32.830521, 18.359453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841633, 33.159122, 18.437698>,  <38.713089, 33.356281, 18.484646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841633, 33.159122, 18.437698>,  <39.055874, 32.830521, 18.359453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841633, 33.159122, 18.437698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142403, -0.140460, 0.979792,
		0.832377, 0.552636, -0.041754,
		-0.535603, 0.821502, 0.195612,
		38.680950, 33.405575, 18.496382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432205, 33.120209, 18.880095>,  <39.055874, 32.830521, 18.359453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432205, 33.120209, 18.880095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.075905, 33.301281, 18.896317>,  <38.862125, 33.409924, 18.906050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.075905, 33.301281, 18.896317>,  <39.432205, 33.120209, 18.880095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075905, 33.301281, 18.896317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017735, -0.123780, 0.992151,
		0.454150, 0.883038, 0.118285,
		-0.890749, 0.452684, 0.040554,
		38.808681, 33.437084, 18.908484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470394, 33.621418, 19.421181>,  <39.432205, 33.120209, 18.880095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470394, 33.621418, 19.421181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077080, 33.577332, 19.363218>,  <38.841091, 33.550880, 19.328442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077080, 33.577332, 19.363218>,  <39.470394, 33.621418, 19.421181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077080, 33.577332, 19.363218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125789, -0.164105, 0.978390,
		-0.131610, 0.980266, 0.147500,
		-0.983288, -0.110212, -0.144904,
		38.782093, 33.544270, 19.319748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291454, 33.981514, 19.959276>,  <39.470394, 33.621418, 19.421181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291454, 33.981514, 19.959276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.984245, 33.753414, 19.842686>,  <38.799919, 33.616554, 19.772732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.984245, 33.753414, 19.842686>,  <39.291454, 33.981514, 19.959276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984245, 33.753414, 19.842686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083236, -0.362390, 0.928302,
		-0.634995, 0.737216, 0.230857,
		-0.768019, -0.570251, -0.291478,
		38.753838, 33.582340, 19.755241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797436, 34.122494, 20.421410>,  <39.291454, 33.981514, 19.959276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797436, 34.122494, 20.421410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.726036, 33.768753, 20.248875>,  <38.683197, 33.556507, 20.145353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.726036, 33.768753, 20.248875>,  <38.797436, 34.122494, 20.421410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726036, 33.768753, 20.248875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066355, -0.426562, 0.902021,
		-0.981701, 0.189628, 0.017458,
		-0.178495, -0.884356, -0.431339,
		38.672489, 33.503445, 20.119473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419357, 33.858620, 20.898233>,  <38.797436, 34.122494, 20.421410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419357, 33.858620, 20.898233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451172, 33.546799, 20.649725>,  <38.470261, 33.359707, 20.500620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451172, 33.546799, 20.649725>,  <38.419357, 33.858620, 20.898233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451172, 33.546799, 20.649725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100040, -0.626340, 0.773104,
		-0.991799, 0.000663, -0.127802,
		0.079535, -0.779549, -0.621270,
		38.475033, 33.312935, 20.463345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900208, 33.500252, 21.009636>,  <38.419357, 33.858620, 20.898233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900208, 33.500252, 21.009636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145561, 33.227238, 20.850689>,  <38.292774, 33.063431, 20.755320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145561, 33.227238, 20.850689>,  <37.900208, 33.500252, 21.009636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145561, 33.227238, 20.850689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329603, -0.678452, 0.656555,
		-0.717719, -0.271746, -0.641119,
		0.613385, -0.682537, -0.397370,
		38.329578, 33.022476, 20.731478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532001, 32.888988, 20.910688>,  <37.900208, 33.500252, 21.009636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532001, 32.888988, 20.910688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915520, 32.776115, 20.923903>,  <38.145630, 32.708393, 20.931831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915520, 32.776115, 20.923903>,  <37.532001, 32.888988, 20.910688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915520, 32.776115, 20.923903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252401, -0.792626, 0.555012,
		-0.130430, -0.540479, -0.831186,
		0.958792, -0.282183, 0.033035,
		38.203156, 32.691460, 20.933813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568699, 32.183712, 20.708952>,  <37.532001, 32.888988, 20.910688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568699, 32.183712, 20.708952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.885281, 32.264877, 20.939581>,  <38.075230, 32.313576, 21.077959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.885281, 32.264877, 20.939581>,  <37.568699, 32.183712, 20.708952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885281, 32.264877, 20.939581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203277, -0.802221, 0.561355,
		0.576442, -0.561488, -0.593671,
		0.791450, 0.202909, 0.576572,
		38.122715, 32.325748, 21.112553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890179, 31.604189, 20.795435>,  <37.568699, 32.183712, 20.708952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890179, 31.604189, 20.795435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.005600, 31.832584, 21.102865>,  <38.074852, 31.969622, 21.287323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.005600, 31.832584, 21.102865>,  <37.890179, 31.604189, 20.795435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005600, 31.832584, 21.102865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206261, -0.746801, 0.632254,
		0.934983, -0.340966, -0.097719,
		0.288554, 0.570991, 0.768574,
		38.092167, 32.003883, 21.333437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053921, 31.188427, 21.309992>,  <37.890179, 31.604189, 20.795435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053921, 31.188427, 21.309992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.051727, 31.515858, 21.539740>,  <38.050411, 31.712317, 21.677589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.051727, 31.515858, 21.539740>,  <38.053921, 31.188427, 21.309992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051727, 31.515858, 21.539740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193009, -0.564445, 0.802590,
		0.981182, -0.106460, 0.161086,
		-0.005480, 0.818577, 0.574371,
		38.050083, 31.761431, 21.712051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536087, 31.044718, 21.835659>,  <38.053921, 31.188427, 21.309992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536087, 31.044718, 21.835659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266033, 31.318314, 21.946190>,  <38.104000, 31.482471, 22.012508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266033, 31.318314, 21.946190>,  <38.536087, 31.044718, 21.835659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266033, 31.318314, 21.946190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244960, -0.561189, 0.790608,
		0.695839, 0.466075, 0.546426,
		-0.675131, 0.683989, 0.276328,
		38.063496, 31.523510, 22.029089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.161907, 29.215744, 26.317904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957802, 29.551228, 26.394009>,  <39.835339, 29.752518, 26.439671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957802, 29.551228, 26.394009>,  <40.161907, 29.215744, 26.317904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957802, 29.551228, 26.394009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351852, -0.405456, 0.843686,
		0.784747, 0.363560, 0.501992,
		-0.510266, 0.838707, 0.190261,
		39.804722, 29.802839, 26.451088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310280, 29.413349, 27.000368>,  <40.161907, 29.215744, 26.317904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310280, 29.413349, 27.000368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973530, 29.608974, 26.909103>,  <39.771481, 29.726349, 26.854343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973530, 29.608974, 26.909103>,  <40.310280, 29.413349, 27.000368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973530, 29.608974, 26.909103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346884, -0.166517, 0.923008,
		0.413417, 0.856206, 0.309836,
		-0.841878, 0.489064, -0.228163,
		39.720966, 29.755693, 26.840654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010780, 29.785259, 27.603897>,  <40.310280, 29.413349, 27.000368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010780, 29.785259, 27.603897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.671276, 29.812109, 27.394096>,  <39.467575, 29.828218, 27.268215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.671276, 29.812109, 27.394096>,  <40.010780, 29.785259, 27.603897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671276, 29.812109, 27.394096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519090, 0.083264, 0.850654,
		0.100772, 0.994264, -0.035827,
		-0.848758, 0.067125, -0.524503,
		39.416649, 29.832247, 27.236746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564732, 30.410582, 27.798347>,  <40.010780, 29.785259, 27.603897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564732, 30.410582, 27.798347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342255, 30.125275, 27.627747>,  <39.208771, 29.954090, 27.525387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342255, 30.125275, 27.627747>,  <39.564732, 30.410582, 27.798347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342255, 30.125275, 27.627747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583159, -0.030674, 0.811779,
		-0.592098, 0.700220, -0.398888,
		-0.556188, -0.713268, -0.426502,
		39.175400, 29.911295, 27.499796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894638, 30.654955, 27.852598>,  <39.564732, 30.410582, 27.798347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894638, 30.654955, 27.852598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854343, 30.260088, 27.803030>,  <38.830166, 30.023169, 27.773289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854343, 30.260088, 27.803030>,  <38.894638, 30.654955, 27.852598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854343, 30.260088, 27.803030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654237, -0.028108, 0.755767,
		-0.749551, 0.157207, -0.643008,
		-0.100738, -0.987166, -0.123919,
		38.824123, 29.963938, 27.765854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293232, 30.539797, 28.101206>,  <38.894638, 30.654955, 27.852598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293232, 30.539797, 28.101206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.398148, 30.154034, 28.087772>,  <38.461098, 29.922577, 28.079712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.398148, 30.154034, 28.087772>,  <38.293232, 30.539797, 28.101206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398148, 30.154034, 28.087772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519178, -0.170363, 0.837514,
		-0.813425, -0.202233, -0.545382,
		0.262286, -0.964406, -0.033583,
		38.476833, 29.864712, 28.077698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700256, 30.244034, 28.257952>,  <38.293232, 30.539797, 28.101206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700256, 30.244034, 28.257952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.995235, 29.991169, 28.353064>,  <38.172222, 29.839449, 28.410130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.995235, 29.991169, 28.353064>,  <37.700256, 30.244034, 28.257952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995235, 29.991169, 28.353064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494672, -0.265837, 0.827424,
		-0.459857, -0.727804, -0.508755,
		0.737449, -0.632164, 0.237777,
		38.216469, 29.801519, 28.424397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328350, 29.581110, 28.312746>,  <37.700256, 30.244034, 28.257952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328350, 29.581110, 28.312746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691456, 29.577074, 28.480488>,  <37.909321, 29.574654, 28.581133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691456, 29.577074, 28.480488>,  <37.328350, 29.581110, 28.312746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691456, 29.577074, 28.480488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379659, -0.444870, 0.811141,
		0.178375, -0.895538, -0.407669,
		0.907767, -0.010087, 0.419353,
		37.963787, 29.574047, 28.606293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327900, 28.908516, 28.607018>,  <37.328350, 29.581110, 28.312746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327900, 28.908516, 28.607018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.631504, 29.102631, 28.780642>,  <37.813667, 29.219099, 28.884815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.631504, 29.102631, 28.780642>,  <37.327900, 28.908516, 28.607018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631504, 29.102631, 28.780642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276254, -0.363650, 0.889630,
		0.589570, -0.795146, -0.141950,
		0.759006, 0.485285, 0.434059,
		37.859207, 29.248217, 28.910860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535320, 28.477484, 29.099634>,  <37.327900, 28.908516, 28.607018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535320, 28.477484, 29.099634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.688290, 28.828581, 29.215097>,  <37.780071, 29.039238, 29.284374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.688290, 28.828581, 29.215097>,  <37.535320, 28.477484, 29.099634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688290, 28.828581, 29.215097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212703, -0.220384, 0.951939,
		0.899171, -0.425443, 0.102418,
		0.382425, 0.877741, 0.288656,
		37.803017, 29.091904, 29.301695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995087, 28.298635, 29.690514>,  <37.535320, 28.477484, 29.099634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995087, 28.298635, 29.690514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.886013, 28.683138, 29.706652>,  <37.820568, 28.913839, 29.716335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.886013, 28.683138, 29.706652>,  <37.995087, 28.298635, 29.690514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886013, 28.683138, 29.706652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184226, -0.093326, 0.978443,
		0.944302, 0.259371, 0.202537,
		-0.272682, 0.961258, 0.040345,
		37.804207, 28.971516, 29.718756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234600, 28.465736, 30.384235>,  <37.995087, 28.298635, 29.690514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234600, 28.465736, 30.384235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979156, 28.756645, 30.283636>,  <37.825890, 28.931190, 30.223276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979156, 28.756645, 30.283636>,  <38.234600, 28.465736, 30.384235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979156, 28.756645, 30.283636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459175, -0.097867, 0.882939,
		0.617522, 0.679337, 0.396444,
		-0.638612, 0.727271, -0.251500,
		37.787575, 28.974827, 30.208187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324722, 29.081070, 30.867983>,  <38.234600, 28.465736, 30.384235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324722, 29.081070, 30.867983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.956738, 29.084215, 30.711212>,  <37.735947, 29.086103, 30.617149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.956738, 29.084215, 30.711212>,  <38.324722, 29.081070, 30.867983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956738, 29.084215, 30.711212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391607, 0.026584, 0.919748,
		0.017652, 0.999616, -0.021376,
		-0.919963, 0.007864, -0.391926,
		37.680748, 29.086575, 30.593634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924110, 29.680143, 31.186012>,  <38.324722, 29.081070, 30.867983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924110, 29.680143, 31.186012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694969, 29.391159, 31.031153>,  <37.557484, 29.217768, 30.938238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694969, 29.391159, 31.031153>,  <37.924110, 29.680143, 31.186012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694969, 29.391159, 31.031153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439092, -0.128347, 0.889228,
		-0.692123, 0.679393, -0.243703,
		-0.572857, -0.722463, -0.387148,
		37.523113, 29.174419, 30.915009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379932, 29.998404, 30.590635>,  <37.924110, 29.680143, 31.186012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379932, 29.998404, 30.590635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401890, 30.303755, 30.848082>,  <38.415066, 30.486965, 31.002548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401890, 30.303755, 30.848082>,  <38.379932, 29.998404, 30.590635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401890, 30.303755, 30.848082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024952, 0.645434, -0.763408,
		-0.998181, 0.025848, 0.054479,
		0.054895, 0.763379, 0.643615,
		38.418358, 30.532768, 31.041166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957954, 30.421011, 30.364059>,  <38.379932, 29.998404, 30.590635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957954, 30.421011, 30.364059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.184368, 30.659357, 30.591936>,  <38.320217, 30.802364, 30.728662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.184368, 30.659357, 30.591936>,  <37.957954, 30.421011, 30.364059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184368, 30.659357, 30.591936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135559, 0.614371, -0.777285,
		-0.813158, 0.517199, 0.266981,
		0.566036, 0.595864, 0.569692,
		38.354179, 30.838116, 30.762844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680294, 31.099169, 30.224047>,  <37.957954, 30.421011, 30.364059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680294, 31.099169, 30.224047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.053070, 31.151852, 30.359188>,  <38.276737, 31.183462, 30.440273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.053070, 31.151852, 30.359188>,  <37.680294, 31.099169, 30.224047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053070, 31.151852, 30.359188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152030, 0.703948, -0.693790,
		-0.329207, 0.697933, 0.636013,
		0.931939, 0.131707, 0.337851,
		38.332653, 31.191364, 30.460543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747086, 31.890146, 30.308195>,  <37.680294, 31.099169, 30.224047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747086, 31.890146, 30.308195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.104218, 31.714626, 30.267584>,  <38.318497, 31.609314, 30.243217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.104218, 31.714626, 30.267584>,  <37.747086, 31.890146, 30.308195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104218, 31.714626, 30.267584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160139, 0.519967, -0.839041,
		0.420961, 0.732864, 0.534512,
		0.892831, -0.438799, -0.101526,
		38.372066, 31.582987, 30.237125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012684, 32.492733, 30.014774>,  <37.747086, 31.890146, 30.308195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012684, 32.492733, 30.014774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.259346, 32.186878, 29.939877>,  <38.407345, 32.003365, 29.894938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.259346, 32.186878, 29.939877>,  <38.012684, 32.492733, 30.014774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259346, 32.186878, 29.939877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224895, 0.399048, -0.888922,
		0.754427, 0.506047, 0.418038,
		0.616654, -0.764642, -0.187245,
		38.444344, 31.957485, 29.883703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612766, 32.731438, 29.795200>,  <38.012684, 32.492733, 30.014774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612766, 32.731438, 29.795200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.602600, 32.364971, 29.635208>,  <38.596500, 32.145092, 29.539213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.602600, 32.364971, 29.635208>,  <38.612766, 32.731438, 29.795200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602600, 32.364971, 29.635208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124664, 0.394083, -0.910581,
		0.991873, -0.073008, 0.104197,
		-0.025417, -0.916170, -0.399982,
		38.594975, 32.090118, 29.515213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050873, 32.782040, 29.224281>,  <38.612766, 32.731438, 29.795200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050873, 32.782040, 29.224281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812145, 32.471939, 29.141529>,  <38.668911, 32.285881, 29.091877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812145, 32.471939, 29.141529>,  <39.050873, 32.782040, 29.224281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812145, 32.471939, 29.141529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097537, 0.185827, -0.977729,
		0.796428, -0.603703, -0.035289,
		-0.596816, -0.775249, -0.206881,
		38.633099, 32.239365, 29.079464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389709, 32.503101, 28.668688>,  <39.050873, 32.782040, 29.224281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389709, 32.503101, 28.668688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025360, 32.341892, 28.633171>,  <38.806751, 32.245167, 28.611860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025360, 32.341892, 28.633171>,  <39.389709, 32.503101, 28.668688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025360, 32.341892, 28.633171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028339, 0.153564, -0.987732,
		0.411716, -0.902213, -0.128456,
		-0.910871, -0.403025, -0.088792,
		38.752098, 32.220985, 28.606533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452469, 32.034962, 28.038235>,  <39.389709, 32.503101, 28.668688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452469, 32.034962, 28.038235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.063240, 32.095730, 28.107586>,  <38.829704, 32.132191, 28.149197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.063240, 32.095730, 28.107586>,  <39.452469, 32.034962, 28.038235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063240, 32.095730, 28.107586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167565, 0.050369, -0.984573,
		-0.158309, -0.987109, -0.023556,
		-0.973067, 0.151919, 0.173379,
		38.771320, 32.141304, 28.159599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026234, 31.514130, 27.598640>,  <39.452469, 32.034962, 28.038235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026234, 31.514130, 27.598640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834663, 31.852503, 27.692471>,  <38.719719, 32.055527, 27.748768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834663, 31.852503, 27.692471>,  <39.026234, 31.514130, 27.598640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834663, 31.852503, 27.692471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143925, 0.187931, -0.971580,
		-0.865975, -0.499078, 0.031745,
		-0.478928, 0.845933, 0.234573,
		38.690987, 32.106281, 27.762842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539978, 31.564417, 27.085236>,  <39.026234, 31.514130, 27.598640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539978, 31.564417, 27.085236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.536217, 31.933332, 27.239792>,  <38.533958, 32.154682, 27.332525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.536217, 31.933332, 27.239792>,  <38.539978, 31.564417, 27.085236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536217, 31.933332, 27.239792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183322, 0.378267, -0.907363,
		-0.983008, -0.079370, 0.165517,
		-0.009408, 0.922288, 0.386390,
		38.533394, 32.210018, 27.355709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969639, 31.977989, 26.665302>,  <38.539978, 31.564417, 27.085236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969639, 31.977989, 26.665302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213150, 32.245361, 26.836227>,  <38.359257, 32.405785, 26.938782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213150, 32.245361, 26.836227>,  <37.969639, 31.977989, 26.665302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213150, 32.245361, 26.836227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028087, 0.520127, -0.853627,
		-0.792846, 0.531669, 0.297866,
		0.608775, 0.668428, 0.427313,
		38.395782, 32.445889, 26.964422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639984, 32.619400, 26.386881>,  <37.969639, 31.977989, 26.665302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639984, 32.619400, 26.386881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016720, 32.682575, 26.505533>,  <38.242764, 32.720482, 26.576725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016720, 32.682575, 26.505533>,  <37.639984, 32.619400, 26.386881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016720, 32.682575, 26.505533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089701, 0.732497, -0.674835,
		-0.323866, 0.662195, 0.675728,
		0.941841, 0.157942, 0.296630,
		38.299271, 32.729958, 26.594522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741653, 33.246105, 26.049259>,  <37.639984, 32.619400, 26.386881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741653, 33.246105, 26.049259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112324, 33.153595, 26.167772>,  <38.334724, 33.098091, 26.238880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112324, 33.153595, 26.167772>,  <37.741653, 33.246105, 26.049259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112324, 33.153595, 26.167772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374041, 0.644894, -0.666487,
		-0.036929, 0.728440, 0.684114,
		0.926677, -0.231274, 0.296281,
		38.390327, 33.084213, 26.256657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571815, 33.887039, 26.587215>,  <37.741653, 33.246105, 26.049259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571815, 33.887039, 26.587215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.284401, 34.163536, 26.556520>,  <37.111954, 34.329433, 26.538103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.284401, 34.163536, 26.556520>,  <37.571815, 33.887039, 26.587215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284401, 34.163536, 26.556520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458894, -0.388295, 0.799152,
		0.522613, 0.609432, 0.596211,
		-0.718535, 0.691245, -0.076736,
		37.068840, 34.370911, 26.533499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439533, 34.208443, 27.286161>,  <37.571815, 33.887039, 26.587215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439533, 34.208443, 27.286161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104473, 34.281559, 27.080276>,  <36.903439, 34.325428, 26.956745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104473, 34.281559, 27.080276>,  <37.439533, 34.208443, 27.286161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104473, 34.281559, 27.080276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546172, -0.291020, 0.785496,
		-0.006213, 0.939093, 0.343606,
		-0.837650, 0.182788, -0.514714,
		36.853180, 34.336395, 26.925861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938541, 34.623211, 27.722870>,  <37.439533, 34.208443, 27.286161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938541, 34.623211, 27.722870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.716183, 34.465363, 27.430225>,  <36.582767, 34.370655, 27.254639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.716183, 34.465363, 27.430225>,  <36.938541, 34.623211, 27.722870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716183, 34.465363, 27.430225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594769, -0.426041, 0.681718,
		-0.580716, 0.814104, 0.002127,
		-0.555895, -0.394620, -0.731612,
		36.549416, 34.346977, 27.210741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299702, 34.717659, 27.960144>,  <36.938541, 34.623211, 27.722870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299702, 34.717659, 27.960144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.212364, 34.435612, 27.690289>,  <36.159962, 34.266384, 27.528376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.212364, 34.435612, 27.690289>,  <36.299702, 34.717659, 27.960144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212364, 34.435612, 27.690289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655118, -0.406477, 0.636864,
		-0.723288, 0.581026, -0.373181,
		-0.218345, -0.705114, -0.674641,
		36.146862, 34.224079, 27.487896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607147, 34.688671, 27.911592>,  <36.299702, 34.717659, 27.960144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607147, 34.688671, 27.911592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.736477, 34.345734, 27.751385>,  <35.814075, 34.139969, 27.655260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.736477, 34.345734, 27.751385>,  <35.607147, 34.688671, 27.911592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736477, 34.345734, 27.751385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625222, -0.511256, 0.589673,
		-0.710323, 0.059756, -0.701335,
		0.323325, -0.857348, -0.400518,
		35.833473, 34.088528, 27.631229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022690, 34.329720, 27.906296>,  <35.607147, 34.688671, 27.911592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022690, 34.329720, 27.906296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.321423, 34.065563, 27.874979>,  <35.500660, 33.907070, 27.856190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.321423, 34.065563, 27.874979>,  <35.022690, 34.329720, 27.906296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321423, 34.065563, 27.874979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526526, -0.659102, 0.536987,
		-0.406222, -0.359816, -0.839950,
		0.746829, -0.660392, -0.078289,
		35.545471, 33.867447, 27.851492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738682, 33.658199, 27.734331>,  <35.022690, 34.329720, 27.906296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738682, 33.658199, 27.734331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.091110, 33.574089, 27.903797>,  <35.302567, 33.523621, 28.005476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.091110, 33.574089, 27.903797>,  <34.738682, 33.658199, 27.734331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091110, 33.574089, 27.903797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443492, -0.678610, 0.585494,
		0.164387, -0.703755, -0.691162,
		0.881074, -0.210277, 0.423665,
		35.355434, 33.511005, 28.030897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740696, 33.006809, 27.776157>,  <34.738682, 33.658199, 27.734331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740696, 33.006809, 27.776157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.019947, 33.117695, 28.040207>,  <35.187500, 33.184227, 28.198637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.019947, 33.117695, 28.040207>,  <34.740696, 33.006809, 27.776157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019947, 33.117695, 28.040207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283643, -0.739474, 0.610512,
		0.657388, -0.613457, -0.437621,
		0.698132, 0.277215, 0.660124,
		35.229385, 33.200859, 28.238245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842045, 32.396149, 28.082655>,  <34.740696, 33.006809, 27.776157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842045, 32.396149, 28.082655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.043926, 32.642422, 28.324715>,  <35.165054, 32.790188, 28.469952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.043926, 32.642422, 28.324715>,  <34.842045, 32.396149, 28.082655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043926, 32.642422, 28.324715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130503, -0.638511, 0.758467,
		0.853372, -0.461775, -0.241910,
		0.504703, 0.615684, 0.605151,
		35.195335, 32.827126, 28.506260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261036, 32.022465, 28.503294>,  <34.842045, 32.396149, 28.082655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261036, 32.022465, 28.503294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.223705, 32.358871, 28.716452>,  <35.201309, 32.560715, 28.844347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.223705, 32.358871, 28.716452>,  <35.261036, 32.022465, 28.503294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223705, 32.358871, 28.716452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262577, -0.537073, 0.801628,
		0.960388, -0.065115, 0.270954,
		-0.093324, 0.841019, 0.532895,
		35.195709, 32.611176, 28.876320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713020, 31.998470, 29.175220>,  <35.261036, 32.022465, 28.503294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713020, 31.998470, 29.175220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.424515, 32.266689, 29.244665>,  <35.251411, 32.427620, 29.286331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.424515, 32.266689, 29.244665>,  <35.713020, 31.998470, 29.175220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424515, 32.266689, 29.244665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268668, -0.501857, 0.822166,
		0.638430, 0.546357, 0.542127,
		-0.721266, 0.670547, 0.173612,
		35.208134, 32.467854, 29.296749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683681, 32.012508, 29.817917>,  <35.713020, 31.998470, 29.175220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683681, 32.012508, 29.817917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.328609, 32.164036, 29.713211>,  <35.115566, 32.254951, 29.650389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.328609, 32.164036, 29.713211>,  <35.683681, 32.012508, 29.817917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328609, 32.164036, 29.713211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457375, -0.659686, 0.596341,
		0.053225, 0.649084, 0.758853,
		-0.887680, 0.378820, -0.261763,
		35.062305, 32.277683, 29.634682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.815018, 36.551014, 23.721970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440517, 36.446888, 23.627592>,  <38.215816, 36.384415, 23.570965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440517, 36.446888, 23.627592>,  <38.815018, 36.551014, 23.721970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440517, 36.446888, 23.627592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265388, 0.083942, 0.960480,
		-0.230219, 0.961868, -0.147675,
		-0.936252, -0.260312, -0.235943,
		38.159641, 36.368793, 23.556808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295216, 37.024078, 23.991560>,  <38.815018, 36.551014, 23.721970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295216, 37.024078, 23.991560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081463, 36.688435, 23.950907>,  <37.953209, 36.487049, 23.926514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081463, 36.688435, 23.950907>,  <38.295216, 37.024078, 23.991560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081463, 36.688435, 23.950907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292991, 0.071105, 0.953468,
		-0.792835, 0.539298, -0.283848,
		-0.534386, -0.839108, -0.101635,
		37.921146, 36.436703, 23.920416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706974, 37.035988, 24.513826>,  <38.295216, 37.024078, 23.991560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706974, 37.035988, 24.513826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695610, 36.647953, 24.417393>,  <37.688793, 36.415131, 24.359533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695610, 36.647953, 24.417393>,  <37.706974, 37.035988, 24.513826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695610, 36.647953, 24.417393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549176, -0.186373, 0.814660,
		-0.835223, 0.155541, -0.527455,
		-0.028410, -0.970089, -0.241083,
		37.687088, 36.356926, 24.345068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043270, 36.806313, 24.736334>,  <37.706974, 37.035988, 24.513826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043270, 36.806313, 24.736334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237236, 36.458252, 24.701239>,  <37.353615, 36.249416, 24.680182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237236, 36.458252, 24.701239>,  <37.043270, 36.806313, 24.736334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237236, 36.458252, 24.701239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370476, -0.295259, 0.880664,
		-0.792215, -0.394543, -0.465544,
		0.484916, -0.870148, -0.087740,
		37.382710, 36.197208, 24.674917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600899, 36.240856, 24.867956>,  <37.043270, 36.806313, 24.736334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600899, 36.240856, 24.867956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963917, 36.082462, 24.923891>,  <37.181728, 35.987427, 24.957453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963917, 36.082462, 24.923891>,  <36.600899, 36.240856, 24.867956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963917, 36.082462, 24.923891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361472, -0.567095, 0.740095,
		-0.213762, -0.722220, -0.657802,
		0.907548, -0.395981, 0.139839,
		37.236183, 35.963669, 24.965843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469711, 35.518391, 24.884823>,  <36.600899, 36.240856, 24.867956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469711, 35.518391, 24.884823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831947, 35.550823, 25.051355>,  <37.049290, 35.570282, 25.151274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831947, 35.550823, 25.051355>,  <36.469711, 35.518391, 24.884823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831947, 35.550823, 25.051355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266292, -0.655314, 0.706861,
		0.330142, -0.750992, -0.571854,
		0.905591, 0.081085, 0.416329,
		37.103626, 35.575150, 25.176254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727993, 34.840229, 24.979681>,  <36.469711, 35.518391, 24.884823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727993, 34.840229, 24.979681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936485, 35.054359, 25.245535>,  <37.061581, 35.182838, 25.405046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936485, 35.054359, 25.245535>,  <36.727993, 34.840229, 24.979681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936485, 35.054359, 25.245535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100184, -0.735028, 0.670595,
		0.847512, -0.416124, -0.329491,
		0.521235, 0.535327, 0.664634,
		37.092857, 35.214958, 25.444925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154221, 34.395290, 25.153740>,  <36.727993, 34.840229, 24.979681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154221, 34.395290, 25.153740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139095, 34.641163, 25.468887>,  <37.130020, 34.788685, 25.657976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139095, 34.641163, 25.468887>,  <37.154221, 34.395290, 25.153740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139095, 34.641163, 25.468887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049208, -0.788622, 0.612906,
		0.998073, -0.015596, 0.060064,
		-0.037809, 0.614680, 0.787870,
		37.127754, 34.825565, 25.705248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453552, 34.074265, 25.733850>,  <37.154221, 34.395290, 25.153740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453552, 34.074265, 25.733850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229404, 34.360218, 25.901148>,  <37.094917, 34.531792, 26.001526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229404, 34.360218, 25.901148>,  <37.453552, 34.074265, 25.733850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229404, 34.360218, 25.901148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434564, -0.683659, 0.586314,
		0.705083, 0.146798, 0.693763,
		-0.560367, 0.714885, 0.418244,
		37.061295, 34.574684, 26.026621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128895, 33.877964, 26.106762>,  <37.453552, 34.074265, 25.733850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128895, 33.877964, 26.106762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424080, 33.610195, 26.072605>,  <38.601189, 33.449535, 26.052111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424080, 33.610195, 26.072605>,  <38.128895, 33.877964, 26.106762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424080, 33.610195, 26.072605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449467, 0.581940, -0.677735,
		0.503383, 0.461761, 0.730331,
		0.737960, -0.669420, -0.085392,
		38.645470, 33.409370, 26.046988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696697, 34.280788, 25.938707>,  <38.128895, 33.877964, 26.106762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696697, 34.280788, 25.938707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839211, 33.923374, 25.829411>,  <38.924717, 33.708927, 25.763832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839211, 33.923374, 25.829411>,  <38.696697, 34.280788, 25.938707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839211, 33.923374, 25.829411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622701, 0.445085, -0.643538,
		0.696640, 0.059131, 0.714980,
		0.356281, -0.893534, -0.273243,
		38.946095, 33.655315, 25.747438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475258, 34.316483, 25.916063>,  <38.696697, 34.280788, 25.938707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475258, 34.316483, 25.916063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334171, 34.033287, 25.671328>,  <39.249519, 33.863369, 25.524487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334171, 34.033287, 25.671328>,  <39.475258, 34.316483, 25.916063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334171, 34.033287, 25.671328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652218, 0.282843, -0.703286,
		0.670970, -0.647115, 0.361997,
		-0.352719, -0.707985, -0.611839,
		39.228355, 33.820892, 25.487776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979946, 33.975529, 25.659887>,  <39.475258, 34.316483, 25.916063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979946, 33.975529, 25.659887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729141, 33.860600, 25.370255>,  <39.578659, 33.791641, 25.196474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729141, 33.860600, 25.370255>,  <39.979946, 33.975529, 25.659887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729141, 33.860600, 25.370255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650402, 0.318494, -0.689593,
		0.428755, -0.903330, -0.012822,
		-0.627014, -0.287327, -0.724083,
		39.541039, 33.774403, 25.153028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391907, 33.677380, 25.129972>,  <39.979946, 33.975529, 25.659887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391907, 33.677380, 25.129972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053543, 33.770149, 24.937868>,  <39.850525, 33.825813, 24.822605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053543, 33.770149, 24.937868>,  <40.391907, 33.677380, 25.129972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053543, 33.770149, 24.937868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527182, 0.227292, -0.818790,
		-0.080742, -0.945805, -0.314537,
		-0.845908, 0.231929, -0.480259,
		39.799770, 33.839729, 24.793791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439743, 33.411182, 24.430838>,  <40.391907, 33.677380, 25.129972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439743, 33.411182, 24.430838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151199, 33.685513, 24.392300>,  <39.978073, 33.850113, 24.369177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151199, 33.685513, 24.392300>,  <40.439743, 33.411182, 24.430838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151199, 33.685513, 24.392300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244373, 0.121891, -0.961990,
		-0.648018, -0.717481, -0.255525,
		-0.721356, 0.685830, -0.096345,
		39.934792, 33.891262, 24.363396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077728, 33.292953, 23.800301>,  <40.439743, 33.411182, 24.430838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077728, 33.292953, 23.800301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968948, 33.671391, 23.870670>,  <39.903683, 33.898453, 23.912893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968948, 33.671391, 23.870670>,  <40.077728, 33.292953, 23.800301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968948, 33.671391, 23.870670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177671, 0.229037, -0.957066,
		-0.945768, -0.229015, -0.230380,
		-0.271948, 0.946094, 0.175926,
		39.887363, 33.955219, 23.923449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706139, 33.493603, 23.239122>,  <40.077728, 33.292953, 23.800301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706139, 33.493603, 23.239122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818783, 33.836758, 23.411043>,  <39.886368, 34.042648, 23.514196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818783, 33.836758, 23.411043>,  <39.706139, 33.493603, 23.239122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818783, 33.836758, 23.411043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387016, 0.308326, -0.868996,
		-0.878017, 0.411059, -0.245187,
		0.281611, 0.857884, 0.429802,
		39.903267, 34.094124, 23.539984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471676, 33.994530, 22.851126>,  <39.706139, 33.493603, 23.239122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471676, 33.994530, 22.851126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754730, 34.180260, 23.064161>,  <39.924564, 34.291698, 23.191982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754730, 34.180260, 23.064161>,  <39.471676, 33.994530, 22.851126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754730, 34.180260, 23.064161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345457, 0.430173, -0.834033,
		-0.616366, 0.774181, 0.144004,
		0.707639, 0.464322, 0.532590,
		39.967022, 34.319557, 23.223938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384239, 34.742062, 22.753298>,  <39.471676, 33.994530, 22.851126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384239, 34.742062, 22.753298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768124, 34.673397, 22.842281>,  <39.998455, 34.632198, 22.895672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768124, 34.673397, 22.842281>,  <39.384239, 34.742062, 22.753298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768124, 34.673397, 22.842281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278379, 0.473237, -0.835794,
		0.038198, 0.864049, 0.501957,
		0.959711, -0.171660, 0.222457,
		40.056038, 34.621899, 22.909018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696644, 35.431728, 22.621140>,  <39.384239, 34.742062, 22.753298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696644, 35.431728, 22.621140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988682, 35.158455, 22.627064>,  <40.163906, 34.994492, 22.630617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988682, 35.158455, 22.627064>,  <39.696644, 35.431728, 22.621140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988682, 35.158455, 22.627064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375785, 0.383303, -0.843721,
		0.570737, 0.621565, 0.536578,
		0.730099, -0.683181, 0.014809,
		40.207710, 34.953499, 22.631506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300217, 35.833023, 22.596331>,  <39.696644, 35.431728, 22.621140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300217, 35.833023, 22.596331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391586, 35.464993, 22.469034>,  <40.446407, 35.244175, 22.392656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391586, 35.464993, 22.469034>,  <40.300217, 35.833023, 22.596331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391586, 35.464993, 22.469034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662748, 0.386406, -0.641448,
		0.713153, -0.064394, 0.698044,
		0.228423, -0.920078, -0.318243,
		40.460114, 35.188969, 22.373562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017300, 35.834873, 22.510359>,  <40.300217, 35.833023, 22.596331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017300, 35.834873, 22.510359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920525, 35.511608, 22.295570>,  <40.862461, 35.317650, 22.166697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920525, 35.511608, 22.295570>,  <41.017300, 35.834873, 22.510359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920525, 35.511608, 22.295570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627161, 0.292020, -0.722076,
		0.740362, -0.511464, 0.436198,
		-0.241937, -0.808164, -0.536970,
		40.847942, 35.269157, 22.134480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603542, 35.723606, 22.120523>,  <41.017300, 35.834873, 22.510359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603542, 35.723606, 22.120523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328461, 35.509262, 21.924599>,  <41.163410, 35.380653, 21.807045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328461, 35.509262, 21.924599>,  <41.603542, 35.723606, 22.120523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328461, 35.509262, 21.924599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330579, 0.369539, -0.868423,
		0.646361, -0.759138, -0.076987,
		-0.687702, -0.535865, -0.489810,
		41.122150, 35.348503, 21.777657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.008636, 33.121010, 20.370012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.190018, 33.432056, 20.544230>,  <35.298847, 33.618683, 20.648760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.190018, 33.432056, 20.544230>,  <35.008636, 33.121010, 20.370012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190018, 33.432056, 20.544230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366473, -0.282782, 0.886415,
		0.812454, -0.561558, 0.156749,
		0.453448, 0.777616, 0.435544,
		35.326054, 33.665340, 20.674892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464546, 32.846771, 20.966482>,  <35.008636, 33.121010, 20.370012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464546, 32.846771, 20.966482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387730, 33.235420, 21.021713>,  <35.341640, 33.468609, 21.054852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387730, 33.235420, 21.021713>,  <35.464546, 32.846771, 20.966482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387730, 33.235420, 21.021713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141117, -0.166576, 0.975878,
		0.971187, 0.167927, 0.169102,
		-0.192045, 0.971624, 0.138079,
		35.330116, 33.526909, 21.063137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950123, 33.069820, 21.451769>,  <35.464546, 32.846771, 20.966482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950123, 33.069820, 21.451769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.641785, 33.324612, 21.448538>,  <35.456783, 33.477486, 21.446600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.641785, 33.324612, 21.448538>,  <35.950123, 33.069820, 21.451769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641785, 33.324612, 21.448538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186098, -0.213045, 0.959156,
		0.609239, 0.740860, 0.282764,
		-0.770841, 0.636977, -0.008077,
		35.410534, 33.515705, 21.446115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997841, 33.439579, 22.105154>,  <35.950123, 33.069820, 21.451769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997841, 33.439579, 22.105154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.628956, 33.501980, 21.963625>,  <35.407627, 33.539421, 21.878708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.628956, 33.501980, 21.963625>,  <35.997841, 33.439579, 22.105154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628956, 33.501980, 21.963625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357182, 0.006908, 0.934009,
		0.148154, 0.987732, 0.049352,
		-0.922210, 0.156005, -0.353824,
		35.352291, 33.548782, 21.857477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641071, 34.060135, 22.446554>,  <35.997841, 33.439579, 22.105154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641071, 34.060135, 22.446554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361626, 33.797600, 22.332600>,  <35.193958, 33.640079, 22.264227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361626, 33.797600, 22.332600>,  <35.641071, 34.060135, 22.446554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361626, 33.797600, 22.332600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350940, -0.032658, 0.935828,
		-0.623526, 0.753758, -0.207521,
		-0.698610, -0.656341, -0.284887,
		35.152042, 33.600697, 22.247133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944237, 34.393829, 22.648619>,  <35.641071, 34.060135, 22.446554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944237, 34.393829, 22.648619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949509, 33.994652, 22.623552>,  <34.952671, 33.755146, 22.608513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949509, 33.994652, 22.623552>,  <34.944237, 34.393829, 22.648619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949509, 33.994652, 22.623552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411936, -0.062526, 0.909065,
		-0.911117, 0.013834, -0.411915,
		0.013179, -0.997948, -0.062668,
		34.953461, 33.695267, 22.604752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567593, 34.174107, 23.221470>,  <34.944237, 34.393829, 22.648619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567593, 34.174107, 23.221470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.649136, 33.813560, 23.068638>,  <34.698063, 33.597233, 22.976938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.649136, 33.813560, 23.068638>,  <34.567593, 34.174107, 23.221470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649136, 33.813560, 23.068638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431280, -0.433050, 0.791496,
		-0.878885, 0.003428, -0.477022,
		0.203861, -0.901363, -0.382080,
		34.710293, 33.543152, 22.954014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918831, 33.749432, 23.229357>,  <34.567593, 34.174107, 23.221470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918831, 33.749432, 23.229357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.237907, 33.508339, 23.221344>,  <34.429352, 33.363682, 23.216536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.237907, 33.508339, 23.221344>,  <33.918831, 33.749432, 23.229357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237907, 33.508339, 23.221344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299056, -0.424197, 0.854765,
		-0.523693, -0.675847, -0.518629,
		0.797691, -0.602733, -0.020033,
		34.477215, 33.327518, 23.215334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732304, 33.086388, 23.243217>,  <33.918831, 33.749432, 23.229357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732304, 33.086388, 23.243217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105156, 33.038521, 23.379929>,  <34.328869, 33.009800, 23.461956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105156, 33.038521, 23.379929>,  <33.732304, 33.086388, 23.243217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105156, 33.038521, 23.379929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338555, -0.622930, 0.705223,
		0.128510, -0.773070, -0.621166,
		0.932130, -0.119671, 0.341779,
		34.384796, 33.002621, 23.482462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790184, 32.412861, 23.459118>,  <33.732304, 33.086388, 23.243217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790184, 32.412861, 23.459118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.084934, 32.603172, 23.651222>,  <34.261784, 32.717361, 23.766485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.084934, 32.603172, 23.651222>,  <33.790184, 32.412861, 23.459118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084934, 32.603172, 23.651222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219191, -0.503889, 0.835494,
		0.639511, -0.720922, -0.267015,
		0.736872, 0.475780, 0.480262,
		34.305996, 32.745907, 23.795301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065777, 31.922445, 23.782270>,  <33.790184, 32.412861, 23.459118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065777, 31.922445, 23.782270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.218819, 32.235607, 23.978504>,  <34.310646, 32.423504, 24.096245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.218819, 32.235607, 23.978504>,  <34.065777, 31.922445, 23.782270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218819, 32.235607, 23.978504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009417, -0.527656, 0.849406,
		0.923862, -0.329611, -0.194513,
		0.382609, 0.782902, 0.490586,
		34.333603, 32.470478, 24.125679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300144, 31.566616, 24.268469>,  <34.065777, 31.922445, 23.782270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300144, 31.566616, 24.268469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.335690, 31.940426, 24.406319>,  <34.357018, 32.164711, 24.489029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.335690, 31.940426, 24.406319>,  <34.300144, 31.566616, 24.268469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335690, 31.940426, 24.406319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114187, -0.334154, 0.935576,
		0.989477, -0.122494, 0.077016,
		0.088867, 0.934525, 0.344625,
		34.362350, 32.220783, 24.509706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910316, 31.763678, 24.636749>,  <34.300144, 31.566616, 24.268469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910316, 31.763678, 24.636749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.618847, 31.991940, 24.788212>,  <34.443966, 32.128899, 24.879089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.618847, 31.991940, 24.788212>,  <34.910316, 31.763678, 24.636749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618847, 31.991940, 24.788212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051146, -0.596700, 0.800833,
		0.682946, 0.564181, 0.463988,
		-0.728676, 0.570656, 0.378658,
		34.400246, 32.163136, 24.901810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016247, 31.739109, 25.339983>,  <34.910316, 31.763678, 24.636749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016247, 31.739109, 25.339983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.637405, 31.867142, 25.330633>,  <34.410103, 31.943962, 25.325024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.637405, 31.867142, 25.330633>,  <35.016247, 31.739109, 25.339983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637405, 31.867142, 25.330633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211383, -0.567350, 0.795884,
		0.241489, 0.758723, 0.604998,
		-0.947101, 0.320083, -0.023372,
		34.353275, 31.963167, 25.323622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709419, 31.636417, 25.627195>,  <35.016247, 31.739109, 25.339983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709419, 31.636417, 25.627195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.818420, 31.251646, 25.635551>,  <35.883820, 31.020782, 25.640566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.818420, 31.251646, 25.635551>,  <35.709419, 31.636417, 25.627195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818420, 31.251646, 25.635551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636619, 0.163981, -0.753543,
		0.721429, 0.218640, 0.657067,
		0.272501, -0.961929, 0.020890,
		35.900169, 30.963068, 25.641819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442818, 31.612999, 25.516962>,  <35.709419, 31.636417, 25.627195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442818, 31.612999, 25.516962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309822, 31.259628, 25.384893>,  <36.230026, 31.047606, 25.305653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309822, 31.259628, 25.384893>,  <36.442818, 31.612999, 25.516962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309822, 31.259628, 25.384893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575057, 0.087576, -0.813413,
		0.747504, -0.460315, 0.478902,
		-0.332486, -0.883425, -0.330171,
		36.210075, 30.994600, 25.285843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992012, 31.325764, 25.182926>,  <36.442818, 31.612999, 25.516962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992012, 31.325764, 25.182926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.699764, 31.084194, 25.055510>,  <36.524414, 30.939253, 24.979059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.699764, 31.084194, 25.055510>,  <36.992012, 31.325764, 25.182926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699764, 31.084194, 25.055510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469774, -0.106077, -0.876390,
		0.495482, -0.789953, 0.361210,
		-0.730623, -0.603923, -0.318540,
		36.480576, 30.903017, 24.959948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270599, 30.613441, 24.950571>,  <36.992012, 31.325764, 25.182926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270599, 30.613441, 24.950571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.939346, 30.720711, 24.753681>,  <36.740597, 30.785072, 24.635548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.939346, 30.720711, 24.753681>,  <37.270599, 30.613441, 24.950571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939346, 30.720711, 24.753681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484369, -0.099603, -0.869176,
		-0.282117, -0.958208, -0.047411,
		-0.828129, 0.268174, -0.492226,
		36.690907, 30.801163, 24.606014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478466, 30.378979, 24.384155>,  <37.270599, 30.613441, 24.950571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478466, 30.378979, 24.384155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.152554, 30.581427, 24.271032>,  <36.957008, 30.702894, 24.203157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.152554, 30.581427, 24.271032>,  <37.478466, 30.378979, 24.384155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152554, 30.581427, 24.271032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396315, 0.130168, -0.908840,
		-0.423168, -0.852584, -0.306640,
		-0.814778, 0.506118, -0.282810,
		36.908119, 30.733263, 24.186190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334007, 30.088110, 23.796999>,  <37.478466, 30.378979, 24.384155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334007, 30.088110, 23.796999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.168907, 30.451899, 23.777000>,  <37.069847, 30.670172, 23.765001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.168907, 30.451899, 23.777000>,  <37.334007, 30.088110, 23.796999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168907, 30.451899, 23.777000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451229, 0.156486, -0.878581,
		-0.791220, -0.385194, -0.474970,
		-0.412750, 0.909471, -0.049996,
		37.045082, 30.724739, 23.762001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071701, 30.011681, 23.195742>,  <37.334007, 30.088110, 23.796999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071701, 30.011681, 23.195742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091042, 30.400974, 23.285610>,  <37.102646, 30.634550, 23.339531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091042, 30.400974, 23.285610>,  <37.071701, 30.011681, 23.195742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091042, 30.400974, 23.285610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232378, 0.207800, -0.950168,
		-0.971423, 0.098150, -0.216111,
		0.048352, 0.973235, 0.224670,
		37.105549, 30.692945, 23.353010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781124, 30.438988, 22.615875>,  <37.071701, 30.011681, 23.195742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781124, 30.438988, 22.615875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004646, 30.717192, 22.796539>,  <37.138760, 30.884115, 22.904938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004646, 30.717192, 22.796539>,  <36.781124, 30.438988, 22.615875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004646, 30.717192, 22.796539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191652, 0.421579, -0.886307,
		-0.806848, 0.581837, 0.102285,
		0.558808, 0.695512, 0.451660,
		37.172287, 30.925846, 22.932037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625038, 31.111393, 22.308064>,  <36.781124, 30.438988, 22.615875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625038, 31.111393, 22.308064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.977119, 31.208164, 22.471384>,  <37.188370, 31.266228, 22.569376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.977119, 31.208164, 22.471384>,  <36.625038, 31.111393, 22.308064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977119, 31.208164, 22.471384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171643, 0.639803, -0.749127,
		-0.442466, 0.729468, 0.521633,
		0.880206, 0.241928, 0.408299,
		37.241180, 31.280743, 22.593874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765999, 31.814394, 22.280506>,  <36.625038, 31.111393, 22.308064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765999, 31.814394, 22.280506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140480, 31.693527, 22.352303>,  <37.365170, 31.621008, 22.395380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140480, 31.693527, 22.352303>,  <36.765999, 31.814394, 22.280506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140480, 31.693527, 22.352303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323528, 0.541442, -0.775997,
		0.137295, 0.784562, 0.604659,
		0.936205, -0.302165, 0.179490,
		37.421341, 31.602879, 22.406149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154503, 32.509945, 22.356184>,  <36.765999, 31.814394, 22.280506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154503, 32.509945, 22.356184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.406406, 32.213211, 22.264025>,  <37.557549, 32.035172, 22.208729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.406406, 32.213211, 22.264025>,  <37.154503, 32.509945, 22.356184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406406, 32.213211, 22.264025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520088, 0.622987, -0.584290,
		0.576981, 0.248136, 0.778152,
		0.629762, -0.741832, -0.230400,
		37.595337, 31.990662, 22.194904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887012, 32.792755, 22.399729>,  <37.154503, 32.509945, 22.356184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887012, 32.792755, 22.399729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963318, 32.456524, 22.196930>,  <38.009102, 32.254787, 22.075251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963318, 32.456524, 22.196930>,  <37.887012, 32.792755, 22.399729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963318, 32.456524, 22.196930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462672, 0.532506, -0.708782,
		0.865762, -0.099364, 0.490492,
		0.190762, -0.840574, -0.506997,
		38.020546, 32.204353, 22.044830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566280, 32.817753, 22.270557>,  <37.887012, 32.792755, 22.399729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566280, 32.817753, 22.270557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.424900, 32.565655, 21.994047>,  <38.340073, 32.414394, 21.828142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.424900, 32.565655, 21.994047>,  <38.566280, 32.817753, 22.270557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424900, 32.565655, 21.994047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509683, 0.489905, -0.707260,
		0.784407, -0.602314, 0.148068,
		-0.353453, -0.630247, -0.691274,
		38.318863, 32.376579, 21.786665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179005, 32.595364, 21.783510>,  <38.566280, 32.817753, 22.270557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179005, 32.595364, 21.783510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851234, 32.507458, 21.571756>,  <38.654572, 32.454716, 21.444704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851234, 32.507458, 21.571756>,  <39.179005, 32.595364, 21.783510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851234, 32.507458, 21.571756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438675, 0.354014, -0.825977,
		0.368939, -0.909051, -0.193676,
		-0.819419, -0.219774, -0.529387,
		38.605408, 32.441528, 21.412941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718674, 32.039074, 21.597128>,  <39.179005, 32.595364, 21.783510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718674, 32.039074, 21.597128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103321, 31.959684, 21.521341>,  <40.334110, 31.912052, 21.475870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103321, 31.959684, 21.521341>,  <39.718674, 32.039074, 21.597128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103321, 31.959684, 21.521341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041140, -0.578413, 0.814706,
		-0.271284, -0.791232, -0.548049,
		0.961620, -0.198470, -0.189465,
		40.391808, 31.900143, 21.464502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782803, 31.342314, 21.640800>,  <39.718674, 32.039074, 21.597128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782803, 31.342314, 21.640800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.165653, 31.451214, 21.680395>,  <40.395363, 31.516554, 21.704151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.165653, 31.451214, 21.680395>,  <39.782803, 31.342314, 21.640800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165653, 31.451214, 21.680395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065440, -0.536067, 0.841635,
		0.282197, -0.799070, -0.530898,
		0.957122, 0.272249, 0.098985,
		40.452789, 31.532888, 21.710091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101318, 30.808136, 21.842175>,  <39.782803, 31.342314, 21.640800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101318, 30.808136, 21.842175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397392, 31.057396, 21.943216>,  <40.575035, 31.206953, 22.003841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397392, 31.057396, 21.943216>,  <40.101318, 30.808136, 21.842175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397392, 31.057396, 21.943216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223468, -0.582294, 0.781662,
		0.634183, -0.522126, -0.570260,
		0.740185, 0.623152, 0.252603,
		40.619450, 31.244341, 22.018997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770626, 30.401217, 21.884504>,  <40.101318, 30.808136, 21.842175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770626, 30.401217, 21.884504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.798733, 30.734312, 22.104179>,  <40.815598, 30.934170, 22.235985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.798733, 30.734312, 22.104179>,  <40.770626, 30.401217, 21.884504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798733, 30.734312, 22.104179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243404, -0.548221, 0.800130,
		0.967376, 0.077449, -0.241216,
		0.070270, 0.832740, 0.549187,
		40.819813, 30.984135, 22.268936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282349, 30.296795, 22.483929>,  <40.770626, 30.401217, 21.884504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282349, 30.296795, 22.483929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.105164, 30.634682, 22.604090>,  <40.998852, 30.837414, 22.676186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.105164, 30.634682, 22.604090>,  <41.282349, 30.296795, 22.483929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105164, 30.634682, 22.604090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001084, -0.334563, 0.942373,
		0.896541, 0.417760, 0.147282,
		-0.442961, 0.844716, 0.300402,
		40.972275, 30.888096, 22.694210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704891, 30.636471, 23.028589>,  <41.282349, 30.296795, 22.483929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704891, 30.636471, 23.028589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341805, 30.796501, 23.079180>,  <41.123955, 30.892519, 23.109535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341805, 30.796501, 23.079180>,  <41.704891, 30.636471, 23.028589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341805, 30.796501, 23.079180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057074, -0.180901, 0.981844,
		0.415692, 0.898451, 0.141372,
		-0.907713, 0.400076, 0.126478,
		41.069492, 30.916523, 23.117123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798641, 31.061838, 23.643835>,  <41.704891, 30.636471, 23.028589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798641, 31.061838, 23.643835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401554, 31.019566, 23.620693>,  <41.163303, 30.994202, 23.606808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401554, 31.019566, 23.620693>,  <41.798641, 31.061838, 23.643835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401554, 31.019566, 23.620693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050673, -0.069430, 0.996299,
		-0.109305, 0.991974, 0.063569,
		-0.992716, -0.105679, -0.057855,
		41.103741, 30.987862, 23.603336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483044, 31.513351, 24.196115>,  <41.798641, 31.061838, 23.643835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483044, 31.513351, 24.196115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.228355, 31.215942, 24.114370>,  <41.075542, 31.037497, 24.065323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.228355, 31.215942, 24.114370>,  <41.483044, 31.513351, 24.196115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228355, 31.215942, 24.114370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199769, -0.096924, 0.975038,
		-0.744771, 0.661649, -0.086820,
		-0.636717, -0.743523, -0.204362,
		41.037342, 30.992886, 24.053062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755249, 31.692232, 24.406548>,  <41.483044, 31.513351, 24.196115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755249, 31.692232, 24.406548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.789009, 31.293680, 24.410549>,  <40.809265, 31.054548, 24.412951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.789009, 31.293680, 24.410549>,  <40.755249, 31.692232, 24.406548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789009, 31.293680, 24.410549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554698, -0.038641, 0.831154,
		-0.827760, -0.075700, -0.555952,
		0.084402, -0.996382, 0.010005,
		40.814331, 30.994766, 24.413551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167915, 31.453012, 24.622707>,  <40.755249, 31.692232, 24.406548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167915, 31.453012, 24.622707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.366692, 31.111254, 24.683441>,  <40.485958, 30.906199, 24.719881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.366692, 31.111254, 24.683441>,  <40.167915, 31.453012, 24.622707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366692, 31.111254, 24.683441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641532, -0.243890, 0.727293,
		-0.584367, -0.458829, -0.669322,
		0.496944, -0.854397, 0.151832,
		40.515774, 30.854935, 24.728991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724529, 30.834034, 24.564072>,  <40.167915, 31.453012, 24.622707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724529, 30.834034, 24.564072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017117, 30.711123, 24.807558>,  <40.192669, 30.637375, 24.953650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017117, 30.711123, 24.807558>,  <39.724529, 30.834034, 24.564072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017117, 30.711123, 24.807558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681785, -0.314837, 0.660338,
		-0.011261, -0.898030, -0.439791,
		0.731466, -0.307279, 0.608718,
		40.236557, 30.618938, 24.990173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433819, 30.319244, 24.832205>,  <39.724529, 30.834034, 24.564072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433819, 30.319244, 24.832205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.747276, 30.343033, 25.079548>,  <39.935349, 30.357306, 25.227955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.747276, 30.343033, 25.079548>,  <39.433819, 30.319244, 24.832205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747276, 30.343033, 25.079548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569962, -0.327082, 0.753765,
		0.247080, -0.943123, -0.222420,
		0.783642, 0.059470, 0.618359,
		39.982368, 30.360874, 25.265057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616020, 29.689732, 25.189056>,  <39.433819, 30.319244, 24.832205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616020, 29.689732, 25.189056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.747650, 29.954750, 25.458200>,  <39.826630, 30.113762, 25.619686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.747650, 29.954750, 25.458200>,  <39.616020, 29.689732, 25.189056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747650, 29.954750, 25.458200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428538, -0.530168, 0.731627,
		0.841466, -0.529106, 0.109462,
		0.329075, 0.662548, 0.672860,
		39.846375, 30.153515, 25.660059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671124, 29.302792, 25.777229>,  <39.616020, 29.689732, 25.189056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671124, 29.302792, 25.777229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740257, 29.668224, 25.924467>,  <39.781738, 29.887484, 26.012810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740257, 29.668224, 25.924467>,  <39.671124, 29.302792, 25.777229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740257, 29.668224, 25.924467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104368, -0.354628, 0.929164,
		0.979405, -0.199010, 0.034056,
		0.172836, 0.913583, 0.368095,
		39.792107, 29.942299, 26.034895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.077820, 34.661385, 21.704363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.720776, 34.759941, 21.553345>,  <41.506550, 34.819077, 21.462734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.720776, 34.759941, 21.553345>,  <42.077820, 34.661385, 21.704363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720776, 34.759941, 21.553345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428217, 0.201471, -0.880931,
		-0.140992, -0.947998, -0.285345,
		-0.892610, 0.246394, -0.377543,
		41.452991, 34.833858, 21.440083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053612, 34.234711, 21.139597>,  <42.077820, 34.661385, 21.704363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053612, 34.234711, 21.139597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.805580, 34.543297, 21.082550>,  <41.656761, 34.728447, 21.048323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.805580, 34.543297, 21.082550>,  <42.053612, 34.234711, 21.139597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805580, 34.543297, 21.082550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419879, 0.172775, -0.890983,
		-0.662722, -0.612364, -0.431056,
		-0.620082, 0.771465, -0.142617,
		41.619556, 34.774734, 21.039764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739391, 34.091343, 20.518461>,  <42.053612, 34.234711, 21.139597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739391, 34.091343, 20.518461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.711735, 34.486008, 20.577415>,  <41.695141, 34.722805, 20.612787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.711735, 34.486008, 20.577415>,  <41.739391, 34.091343, 20.518461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711735, 34.486008, 20.577415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460509, 0.162624, -0.872631,
		-0.884958, 0.007534, -0.465610,
		-0.069145, 0.986659, 0.147385,
		41.690990, 34.782005, 20.621632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370758, 34.345795, 19.965363>,  <41.739391, 34.091343, 20.518461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370758, 34.345795, 19.965363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550602, 34.668976, 20.117716>,  <41.658508, 34.862885, 20.209127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550602, 34.668976, 20.117716>,  <41.370758, 34.345795, 19.965363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550602, 34.668976, 20.117716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237425, 0.302977, -0.922949,
		-0.861094, 0.505395, -0.055607,
		0.449606, 0.807948, 0.380886,
		41.685482, 34.911362, 20.231981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235115, 34.923737, 19.486744>,  <41.370758, 34.345795, 19.965363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235115, 34.923737, 19.486744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.548283, 35.047981, 19.702358>,  <41.736183, 35.122528, 19.831728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.548283, 35.047981, 19.702358>,  <41.235115, 34.923737, 19.486744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548283, 35.047981, 19.702358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410162, 0.393758, -0.822631,
		-0.467771, 0.865144, 0.180878,
		0.782916, 0.310614, 0.539038,
		41.783157, 35.141167, 19.864069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313347, 35.581505, 19.214727>,  <41.235115, 34.923737, 19.486744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313347, 35.581505, 19.214727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.662472, 35.485699, 19.384823>,  <41.871948, 35.428215, 19.486881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.662472, 35.485699, 19.384823>,  <41.313347, 35.581505, 19.214727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662472, 35.485699, 19.384823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478626, 0.249638, -0.841783,
		0.095463, 0.938250, 0.332525,
		0.872814, -0.239515, 0.425240,
		41.924316, 35.413845, 19.512394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708996, 36.178658, 18.979666>,  <41.313347, 35.581505, 19.214727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708996, 36.178658, 18.979666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.917000, 35.854500, 19.087629>,  <42.041801, 35.660004, 19.152407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.917000, 35.854500, 19.087629>,  <41.708996, 36.178658, 18.979666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917000, 35.854500, 19.087629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564303, 0.088730, -0.820785,
		0.641213, 0.579124, 0.503450,
		0.520007, -0.810397, 0.269907,
		42.073002, 35.611382, 19.168602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365185, 36.281654, 18.902716>,  <41.708996, 36.178658, 18.979666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365185, 36.281654, 18.902716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.390640, 35.882603, 18.892206>,  <42.405914, 35.643173, 18.885900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.390640, 35.882603, 18.892206>,  <42.365185, 36.281654, 18.902716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390640, 35.882603, 18.892206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507219, 0.055008, -0.860060,
		0.859464, 0.041410, 0.509516,
		0.063643, -0.997627, -0.026273,
		42.409733, 35.583313, 18.884325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000462, 36.184944, 18.711126>,  <42.365185, 36.281654, 18.902716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000462, 36.184944, 18.711126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.802372, 35.847305, 18.628904>,  <42.683517, 35.644722, 18.579571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.802372, 35.847305, 18.628904>,  <43.000462, 36.184944, 18.711126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802372, 35.847305, 18.628904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571032, -0.137948, -0.809254,
		0.654735, -0.518138, 0.550323,
		-0.495221, -0.844099, -0.205554,
		42.653805, 35.594074, 18.567238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492527, 35.673077, 18.540304>,  <43.000462, 36.184944, 18.711126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492527, 35.673077, 18.540304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.170383, 35.522747, 18.356930>,  <42.977097, 35.432549, 18.246906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.170383, 35.522747, 18.356930>,  <43.492527, 35.673077, 18.540304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170383, 35.522747, 18.356930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501643, -0.020026, -0.864843,
		0.315846, -0.926476, 0.204656,
		-0.805354, -0.375822, -0.458435,
		42.928776, 35.410000, 18.219398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786549, 35.195839, 18.110943>,  <43.492527, 35.673077, 18.540304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786549, 35.195839, 18.110943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.419506, 35.271858, 17.971300>,  <43.199280, 35.317471, 17.887514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.419506, 35.271858, 17.971300>,  <43.786549, 35.195839, 18.110943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419506, 35.271858, 17.971300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358014, 0.013597, -0.933617,
		-0.172687, -0.981680, -0.080517,
		-0.917608, 0.190050, -0.349107,
		43.144222, 35.328873, 17.866568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792343, 34.754463, 17.498552>,  <43.786549, 35.195839, 18.110943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792343, 34.754463, 17.498552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.517532, 35.044044, 17.473656>,  <43.352646, 35.217796, 17.458717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.517532, 35.044044, 17.473656>,  <43.792343, 34.754463, 17.498552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517532, 35.044044, 17.473656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143143, 0.050867, -0.988394,
		-0.712390, -0.687966, -0.138577,
		-0.687031, 0.723958, -0.062240,
		43.311424, 35.261230, 17.454983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301086, 34.476757, 17.014072>,  <43.792343, 34.754463, 17.498552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301086, 34.476757, 17.014072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.340919, 34.874741, 17.009298>,  <43.364819, 35.113529, 17.006433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.340919, 34.874741, 17.009298>,  <43.301086, 34.476757, 17.014072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340919, 34.874741, 17.009298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137286, -0.025617, -0.990200,
		-0.985513, 0.096968, -0.139145,
		0.099582, 0.994958, -0.011934,
		43.370792, 35.173229, 17.005718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828163, 34.728970, 16.546307>,  <43.301086, 34.476757, 17.014072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828163, 34.728970, 16.546307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.143784, 34.973286, 16.572639>,  <43.333157, 35.119877, 16.588440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.143784, 34.973286, 16.572639>,  <42.828163, 34.728970, 16.546307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143784, 34.973286, 16.572639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120731, -0.049104, -0.991470,
		-0.602352, 0.790265, -0.112487,
		0.789048, 0.610794, 0.065832,
		43.380497, 35.156525, 16.592388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684643, 33.955505, 16.538223>,  <42.828163, 34.728970, 16.546307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684643, 33.955505, 16.538223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.305447, 33.857883, 16.456490>,  <42.077930, 33.799313, 16.407450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.305447, 33.857883, 16.456490>,  <42.684643, 33.955505, 16.538223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305447, 33.857883, 16.456490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060582, -0.491878, 0.868554,
		-0.312480, 0.835760, 0.451511,
		-0.947990, -0.244053, -0.204334,
		42.021049, 33.784668, 16.395189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242676, 34.241947, 17.044817>,  <42.684643, 33.955505, 16.538223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242676, 34.241947, 17.044817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.028549, 33.939228, 16.894781>,  <41.900074, 33.757595, 16.804760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.028549, 33.939228, 16.894781>,  <42.242676, 34.241947, 17.044817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028549, 33.939228, 16.894781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051062, -0.414267, 0.908722,
		-0.843105, 0.505610, 0.183122,
		-0.535320, -0.756797, -0.375088,
		41.867954, 33.712189, 16.782255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618320, 34.214851, 17.398823>,  <42.242676, 34.241947, 17.044817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618320, 34.214851, 17.398823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.690113, 33.851887, 17.246824>,  <41.733189, 33.634109, 17.155624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.690113, 33.851887, 17.246824>,  <41.618320, 34.214851, 17.398823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690113, 33.851887, 17.246824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141818, -0.406101, 0.902757,
		-0.973486, -0.108134, -0.201572,
		0.179477, -0.907408, -0.379999,
		41.743958, 33.579666, 17.132824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159096, 33.896454, 17.597721>,  <41.618320, 34.214851, 17.398823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159096, 33.896454, 17.597721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.427883, 33.609539, 17.524006>,  <41.589157, 33.437389, 17.479776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.427883, 33.609539, 17.524006>,  <41.159096, 33.896454, 17.597721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427883, 33.609539, 17.524006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228166, -0.437256, 0.869912,
		-0.704555, -0.542506, -0.457482,
		0.671969, -0.717283, -0.184290,
		41.629475, 33.394356, 17.468719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784599, 33.336014, 17.692081>,  <41.159096, 33.896454, 17.597721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784599, 33.336014, 17.692081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156364, 33.189117, 17.706600>,  <41.379425, 33.100979, 17.715311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156364, 33.189117, 17.706600>,  <40.784599, 33.336014, 17.692081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156364, 33.189117, 17.706600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217419, -0.465448, 0.857955,
		-0.298184, -0.805289, -0.512441,
		0.929417, -0.367243, 0.036295,
		41.435188, 33.078945, 17.717489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702190, 32.555416, 17.669735>,  <40.784599, 33.336014, 17.692081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702190, 32.555416, 17.669735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.030113, 32.694481, 17.851746>,  <41.226868, 32.777920, 17.960953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.030113, 32.694481, 17.851746>,  <40.702190, 32.555416, 17.669735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030113, 32.694481, 17.851746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339099, -0.345578, 0.874979,
		0.461447, -0.871611, -0.165413,
		0.819804, 0.347665, 0.455028,
		41.276054, 32.798779, 17.988255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913223, 31.963522, 18.106026>,  <40.702190, 32.555416, 17.669735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913223, 31.963522, 18.106026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.077446, 32.299397, 18.248220>,  <41.175980, 32.500923, 18.333538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.077446, 32.299397, 18.248220>,  <40.913223, 31.963522, 18.106026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077446, 32.299397, 18.248220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239571, -0.276831, 0.930575,
		0.879802, -0.467215, 0.087511,
		0.410553, 0.839687, 0.355488,
		41.200611, 32.551304, 18.354866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428169, 31.664536, 18.602600>,  <40.913223, 31.963522, 18.106026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428169, 31.664536, 18.602600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.347488, 32.045681, 18.693256>,  <41.299080, 32.274368, 18.747650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.347488, 32.045681, 18.693256>,  <41.428169, 31.664536, 18.602600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347488, 32.045681, 18.693256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173517, -0.262499, 0.949203,
		0.963954, 0.152132, 0.218286,
		-0.201704, 0.952864, 0.226640,
		41.286976, 32.331539, 18.761248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870922, 31.795588, 19.184357>,  <41.428169, 31.664536, 18.602600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870922, 31.795588, 19.184357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609180, 32.095806, 19.221237>,  <41.452137, 32.275936, 19.243366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609180, 32.095806, 19.221237>,  <41.870922, 31.795588, 19.184357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609180, 32.095806, 19.221237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028540, -0.146356, 0.988820,
		0.755651, 0.644405, 0.117189,
		-0.654352, 0.750548, 0.092203,
		41.412876, 32.320969, 19.248898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003399, 32.053841, 19.811237>,  <41.870922, 31.795588, 19.184357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003399, 32.053841, 19.811237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.645889, 32.214787, 19.731972>,  <41.431385, 32.311356, 19.684412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.645889, 32.214787, 19.731972>,  <42.003399, 32.053841, 19.811237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645889, 32.214787, 19.731972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288143, -0.176528, 0.941176,
		0.343716, 0.898298, 0.273715,
		-0.893774, 0.402366, -0.198163,
		41.377758, 32.335495, 19.672523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940723, 32.604050, 20.304728>,  <42.003399, 32.053841, 19.811237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940723, 32.604050, 20.304728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.576714, 32.489693, 20.184650>,  <41.358307, 32.421078, 20.112604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.576714, 32.489693, 20.184650>,  <41.940723, 32.604050, 20.304728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576714, 32.489693, 20.184650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311917, -0.004753, 0.950097,
		-0.273055, 0.958249, -0.084850,
		-0.910027, -0.285895, -0.300193,
		41.303707, 32.403923, 20.094593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497063, 32.893173, 20.737333>,  <41.940723, 32.604050, 20.304728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497063, 32.893173, 20.737333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260101, 32.615921, 20.573078>,  <41.117924, 32.449570, 20.474525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260101, 32.615921, 20.573078>,  <41.497063, 32.893173, 20.737333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260101, 32.615921, 20.573078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468124, -0.118677, 0.875657,
		-0.655679, 0.710974, -0.254166,
		-0.592406, -0.693131, -0.410638,
		41.082378, 32.407982, 20.449886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810730, 33.049309, 21.023180>,  <41.497063, 32.893173, 20.737333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810730, 33.049309, 21.023180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.813576, 32.676327, 20.878691>,  <40.815285, 32.452538, 20.791998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.813576, 32.676327, 20.878691>,  <40.810730, 33.049309, 21.023180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813576, 32.676327, 20.878691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468323, -0.322273, 0.822687,
		-0.883529, 0.163315, -0.438982,
		0.007115, -0.932453, -0.361222,
		40.815712, 32.396591, 20.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182812, 32.796371, 21.310989>,  <40.810730, 33.049309, 21.023180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182812, 32.796371, 21.310989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.402687, 32.476074, 21.215784>,  <40.534615, 32.283897, 21.158661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.402687, 32.476074, 21.215784>,  <40.182812, 32.796371, 21.310989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402687, 32.476074, 21.215784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201737, -0.403734, 0.892357,
		-0.810643, -0.442504, -0.383469,
		0.549691, -0.800743, -0.238015,
		40.567593, 32.235851, 21.144381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505741, 32.559532, 20.969568>,  <40.182812, 32.796371, 21.310989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505741, 32.559532, 20.969568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.106041, 32.574982, 20.970860>,  <38.866222, 32.584251, 20.971634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.106041, 32.574982, 20.970860>,  <39.505741, 32.559532, 20.969568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106041, 32.574982, 20.970860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018731, 0.554111, -0.832232,
		-0.033936, -0.831546, -0.554418,
		-0.999249, 0.038627, 0.003228,
		38.806267, 32.586571, 20.971828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309990, 32.324402, 20.307932>,  <39.505741, 32.559532, 20.969568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309990, 32.324402, 20.307932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.998657, 32.534889, 20.444923>,  <38.811859, 32.661182, 20.527119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.998657, 32.534889, 20.444923>,  <39.309990, 32.324402, 20.307932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998657, 32.534889, 20.444923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078394, 0.459752, -0.884580,
		-0.622941, -0.715344, -0.316586,
		-0.778331, 0.526223, 0.342477,
		38.765160, 32.692757, 20.547667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852383, 32.218292, 19.828617>,  <39.309990, 32.324402, 20.307932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852383, 32.218292, 19.828617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.727360, 32.555157, 20.004379>,  <38.652344, 32.757275, 20.109837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.727360, 32.555157, 20.004379>,  <38.852383, 32.218292, 19.828617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727360, 32.555157, 20.004379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204509, 0.392072, -0.896914,
		-0.927622, -0.370202, 0.049683,
		-0.312560, 0.842158, 0.439404,
		38.633591, 32.807804, 20.136200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224316, 32.468994, 19.507517>,  <38.852383, 32.218292, 19.828617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224316, 32.468994, 19.507517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.366421, 32.793282, 19.693644>,  <38.451683, 32.987854, 19.805319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.366421, 32.793282, 19.693644>,  <38.224316, 32.468994, 19.507517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366421, 32.793282, 19.693644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228164, 0.557940, -0.797900,
		-0.906492, 0.177298, 0.383194,
		0.355266, 0.810721, 0.465315,
		38.473000, 33.036499, 19.833239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632397, 32.969082, 19.477894>,  <38.224316, 32.468994, 19.507517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632397, 32.969082, 19.477894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973938, 33.170662, 19.529993>,  <38.178864, 33.291611, 19.561253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973938, 33.170662, 19.529993>,  <37.632397, 32.969082, 19.477894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973938, 33.170662, 19.529993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206569, 0.557763, -0.803884,
		-0.477762, 0.659498, 0.580350,
		0.853857, 0.503948, 0.130246,
		38.230095, 33.321846, 19.569067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504639, 33.299904, 18.927525>,  <37.632397, 32.969082, 19.477894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504639, 33.299904, 18.927525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874481, 33.374561, 19.060349>,  <38.096386, 33.419357, 19.140043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874481, 33.374561, 19.060349>,  <37.504639, 33.299904, 18.927525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874481, 33.374561, 19.060349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194066, 0.519307, -0.832261,
		-0.327780, 0.833956, 0.443934,
		0.924607, 0.186646, 0.332061,
		38.151863, 33.430553, 19.159967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678516, 34.062996, 18.964724>,  <37.504639, 33.299904, 18.927525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678516, 34.062996, 18.964724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028019, 33.871223, 18.931999>,  <38.237720, 33.756161, 18.912365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028019, 33.871223, 18.931999>,  <37.678516, 34.062996, 18.964724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028019, 33.871223, 18.931999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128739, 0.390203, -0.911684,
		0.469010, 0.786060, 0.402665,
		0.873759, -0.479428, -0.081813,
		38.290146, 33.727394, 18.907455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578979, 34.819225, 18.902781>,  <37.678516, 34.062996, 18.964724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578979, 34.819225, 18.902781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230888, 34.811863, 18.705860>,  <37.022034, 34.807446, 18.587708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230888, 34.811863, 18.705860>,  <37.578979, 34.819225, 18.902781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230888, 34.811863, 18.705860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487233, -0.115534, 0.865596,
		-0.072807, 0.993133, 0.091574,
		-0.870232, -0.018403, -0.492299,
		36.969818, 34.806343, 18.558170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170822, 35.280411, 19.204216>,  <37.578979, 34.819225, 18.902781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170822, 35.280411, 19.204216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.907150, 35.030617, 19.036648>,  <36.748947, 34.880741, 18.936108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.907150, 35.030617, 19.036648>,  <37.170822, 35.280411, 19.204216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907150, 35.030617, 19.036648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310559, -0.281281, 0.907984,
		-0.684858, 0.728626, -0.008524,
		-0.659183, -0.624487, -0.418919,
		36.709396, 34.843269, 18.910973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517883, 35.499359, 19.478121>,  <37.170822, 35.280411, 19.204216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517883, 35.499359, 19.478121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.459305, 35.135406, 19.322857>,  <36.424156, 34.917034, 19.229698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.459305, 35.135406, 19.322857>,  <36.517883, 35.499359, 19.478121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459305, 35.135406, 19.322857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580791, -0.238553, 0.778315,
		-0.800771, 0.339422, -0.493516,
		-0.146447, -0.909882, -0.388160,
		36.415371, 34.862442, 19.206409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846016, 35.390759, 19.569603>,  <36.517883, 35.499359, 19.478121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846016, 35.390759, 19.569603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.996876, 35.024021, 19.517214>,  <36.087391, 34.803978, 19.485781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.996876, 35.024021, 19.517214>,  <35.846016, 35.390759, 19.569603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996876, 35.024021, 19.517214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554516, -0.336806, 0.760969,
		-0.741804, -0.214369, -0.635431,
		0.377146, -0.916847, -0.130973,
		36.110020, 34.748966, 19.477922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324535, 35.010437, 19.584002>,  <35.846016, 35.390759, 19.569603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324535, 35.010437, 19.584002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.625423, 34.762444, 19.673246>,  <35.805958, 34.613647, 19.726793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.625423, 34.762444, 19.673246>,  <35.324535, 35.010437, 19.584002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625423, 34.762444, 19.673246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533635, -0.374595, 0.758230,
		-0.386514, -0.689418, -0.612625,
		0.752224, -0.619984, 0.223111,
		35.851089, 34.576447, 19.740179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939270, 34.323395, 19.680338>,  <35.324535, 35.010437, 19.584002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939270, 34.323395, 19.680338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295860, 34.233154, 19.837500>,  <35.509815, 34.179012, 19.931797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295860, 34.233154, 19.837500>,  <34.939270, 34.323395, 19.680338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295860, 34.233154, 19.837500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452375, -0.491096, 0.744434,
		0.025013, -0.841386, -0.539855,
		0.891477, -0.225596, 0.392905,
		35.563305, 34.165474, 19.955372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097385, 33.537334, 19.804714>,  <34.939270, 34.323395, 19.680338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097385, 33.537334, 19.804714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311432, 33.749405, 20.067793>,  <35.439861, 33.876648, 20.225639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311432, 33.749405, 20.067793>,  <35.097385, 33.537334, 19.804714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311432, 33.749405, 20.067793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502077, -0.426523, 0.752327,
		0.679389, -0.732796, 0.037951,
		0.535115, 0.530177, 0.657695,
		35.471966, 33.908459, 20.265102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.808342, 36.758057, 16.955322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.151539, 36.567581, 17.032352>,  <40.357456, 36.453297, 17.078571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.151539, 36.567581, 17.032352>,  <39.808342, 36.758057, 16.955322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151539, 36.567581, 17.032352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411402, -0.412585, 0.812725,
		-0.307556, -0.776542, -0.549902,
		0.857996, -0.476189, 0.192577,
		40.408936, 36.424725, 17.090126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682720, 36.023914, 16.915310>,  <39.808342, 36.758057, 16.955322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682720, 36.023914, 16.915310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.980064, 36.135376, 17.158545>,  <40.158470, 36.202251, 17.304485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.980064, 36.135376, 17.158545>,  <39.682720, 36.023914, 16.915310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980064, 36.135376, 17.158545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519455, -0.332243, 0.787262,
		0.421407, -0.901091, -0.102227,
		0.743359, 0.278655, 0.608086,
		40.203072, 36.218971, 17.340971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680958, 35.515549, 17.369402>,  <39.682720, 36.023914, 16.915310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680958, 35.515549, 17.369402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.876850, 35.797581, 17.574549>,  <39.994385, 35.966801, 17.697638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.876850, 35.797581, 17.574549>,  <39.680958, 35.515549, 17.369402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876850, 35.797581, 17.574549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358081, -0.373680, 0.855653,
		0.794948, -0.602687, 0.069472,
		0.489731, 0.705076, 0.512867,
		40.023769, 36.009102, 17.728409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924278, 35.165356, 17.948961>,  <39.680958, 35.515549, 17.369402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924278, 35.165356, 17.948961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.932999, 35.550831, 18.055414>,  <39.938229, 35.782116, 18.119286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.932999, 35.550831, 18.055414>,  <39.924278, 35.165356, 17.948961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932999, 35.550831, 18.055414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370826, -0.239415, 0.897312,
		0.928446, -0.118250, 0.352142,
		0.021799, 0.963690, 0.266134,
		39.939537, 35.839939, 18.135254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975510, 35.150002, 18.673641>,  <39.924278, 35.165356, 17.948961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975510, 35.150002, 18.673641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.879715, 35.538074, 18.658718>,  <39.822239, 35.770920, 18.649765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.879715, 35.538074, 18.658718>,  <39.975510, 35.150002, 18.673641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879715, 35.538074, 18.658718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375066, -0.057006, 0.925244,
		0.895528, 0.235580, 0.377534,
		-0.239490, 0.970182, -0.037307,
		39.807869, 35.829128, 18.647526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079166, 35.459496, 19.309446>,  <39.975510, 35.150002, 18.673641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079166, 35.459496, 19.309446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846870, 35.743298, 19.149775>,  <39.707493, 35.913578, 19.053972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846870, 35.743298, 19.149775>,  <40.079166, 35.459496, 19.309446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846870, 35.743298, 19.149775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376353, 0.200809, 0.904452,
		0.721873, 0.675483, 0.150408,
		-0.580739, 0.709506, -0.399179,
		39.672649, 35.956150, 19.030022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101906, 35.975224, 19.781921>,  <40.079166, 35.459496, 19.309446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101906, 35.975224, 19.781921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.787056, 36.071804, 19.554893>,  <39.598145, 36.129753, 19.418676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.787056, 36.071804, 19.554893>,  <40.101906, 35.975224, 19.781921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787056, 36.071804, 19.554893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463074, 0.376503, 0.802376,
		0.407426, 0.894397, -0.184545,
		-0.787125, 0.241451, -0.567569,
		39.550919, 36.144238, 19.384623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951256, 36.737923, 19.982876>,  <40.101906, 35.975224, 19.781921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951256, 36.737923, 19.982876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.622894, 36.569450, 19.828617>,  <39.425877, 36.468369, 19.736061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.622894, 36.569450, 19.828617>,  <39.951256, 36.737923, 19.982876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622894, 36.569450, 19.828617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560873, 0.467606, 0.683203,
		-0.107421, 0.777143, -0.620089,
		-0.820903, -0.421182, -0.385648,
		39.376625, 36.443096, 19.712923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443665, 37.188366, 20.054369>,  <39.951256, 36.737923, 19.982876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443665, 37.188366, 20.054369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.228130, 36.853619, 20.015781>,  <39.098812, 36.652771, 19.992628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.228130, 36.853619, 20.015781>,  <39.443665, 37.188366, 20.054369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228130, 36.853619, 20.015781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545835, 0.259610, 0.796659,
		-0.641657, 0.481922, -0.596680,
		-0.538832, -0.836871, -0.096469,
		39.066483, 36.602558, 19.986841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795685, 37.411419, 20.273222>,  <39.443665, 37.188366, 20.054369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795685, 37.411419, 20.273222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747128, 37.017010, 20.318874>,  <38.717995, 36.780365, 20.346266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747128, 37.017010, 20.318874>,  <38.795685, 37.411419, 20.273222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747128, 37.017010, 20.318874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488534, 0.159441, 0.857854,
		-0.864060, 0.048377, -0.501060,
		-0.121390, -0.986021, 0.114133,
		38.710712, 36.721203, 20.353115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137024, 37.331188, 20.528591>,  <38.795685, 37.411419, 20.273222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137024, 37.331188, 20.528591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.321716, 36.991108, 20.629753>,  <38.432529, 36.787060, 20.690451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.321716, 36.991108, 20.629753>,  <38.137024, 37.331188, 20.528591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321716, 36.991108, 20.629753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443437, 0.025687, 0.895937,
		-0.768225, -0.525827, -0.365152,
		0.461729, -0.850203, 0.252905,
		38.460236, 36.736046, 20.705624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536930, 36.954678, 20.817541>,  <38.137024, 37.331188, 20.528591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536930, 36.954678, 20.817541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877510, 36.794960, 20.953537>,  <38.081860, 36.699131, 21.035135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877510, 36.794960, 20.953537>,  <37.536930, 36.954678, 20.817541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877510, 36.794960, 20.953537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299484, 0.161984, 0.940250,
		-0.430506, -0.902402, 0.018341,
		0.851454, -0.399290, 0.339990,
		38.132946, 36.675175, 21.055534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851318, 36.992779, 20.794573>,  <37.536930, 36.954678, 20.817541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851318, 36.992779, 20.794573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.585342, 37.284718, 20.858046>,  <36.425755, 37.459881, 20.896130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.585342, 37.284718, 20.858046>,  <36.851318, 36.992779, 20.794573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585342, 37.284718, 20.858046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140425, 0.330829, -0.933184,
		-0.733574, -0.598232, -0.322471,
		-0.664944, 0.729843, 0.158680,
		36.385860, 37.503670, 20.905649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380047, 36.930374, 20.230333>,  <36.851318, 36.992779, 20.794573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380047, 36.930374, 20.230333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.348984, 37.309437, 20.354214>,  <36.330345, 37.536873, 20.428541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.348984, 37.309437, 20.354214>,  <36.380047, 36.930374, 20.230333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348984, 37.309437, 20.354214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038427, 0.313253, -0.948892,
		-0.996239, -0.061789, -0.060743,
		-0.077659, 0.947657, 0.309700,
		36.325687, 37.593735, 20.447124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941696, 37.263004, 19.704336>,  <36.380047, 36.930374, 20.230333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941696, 37.263004, 19.704336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.119598, 37.567902, 19.892452>,  <36.226341, 37.750839, 20.005322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.119598, 37.567902, 19.892452>,  <35.941696, 37.263004, 19.704336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119598, 37.567902, 19.892452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112356, 0.473453, -0.873623,
		-0.888576, 0.441390, 0.124929,
		0.444757, 0.762244, 0.470292,
		36.253025, 37.796574, 20.033541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604973, 37.841774, 19.482924>,  <35.941696, 37.263004, 19.704336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604973, 37.841774, 19.482924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.974987, 37.932636, 19.604715>,  <36.196995, 37.987156, 19.677792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.974987, 37.932636, 19.604715>,  <35.604973, 37.841774, 19.482924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974987, 37.932636, 19.604715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160840, 0.491932, -0.855648,
		-0.344152, 0.840477, 0.418518,
		0.925035, 0.227158, 0.304481,
		36.252499, 38.000782, 19.696060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731419, 38.385273, 19.085991>,  <35.604973, 37.841774, 19.482924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731419, 38.385273, 19.085991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.105667, 38.323776, 19.213100>,  <36.330215, 38.286877, 19.289366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.105667, 38.323776, 19.213100>,  <35.731419, 38.385273, 19.085991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105667, 38.323776, 19.213100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352236, 0.346886, -0.869253,
		0.023413, 0.925220, 0.378708,
		0.935618, -0.153746, 0.317774,
		36.386353, 38.277653, 19.308434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047935, 38.955219, 18.844704>,  <35.731419, 38.385273, 19.085991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047935, 38.955219, 18.844704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.334240, 38.683865, 18.911011>,  <36.506023, 38.521053, 18.950796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.334240, 38.683865, 18.911011>,  <36.047935, 38.955219, 18.844704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334240, 38.683865, 18.911011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501405, 0.333997, -0.798147,
		0.486083, 0.654402, 0.579208,
		0.715763, -0.678383, 0.165770,
		36.548969, 38.480350, 18.960741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642429, 39.332027, 18.789089>,  <36.047935, 38.955219, 18.844704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642429, 39.332027, 18.789089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.744518, 38.951546, 18.719727>,  <36.805771, 38.723255, 18.678110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.744518, 38.951546, 18.719727>,  <36.642429, 39.332027, 18.789089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744518, 38.951546, 18.719727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425031, 0.271459, -0.863515,
		0.868454, 0.146682, 0.473574,
		0.255218, -0.951207, -0.173405,
		36.821083, 38.666183, 18.667706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335388, 39.304089, 18.547907>,  <36.642429, 39.332027, 18.789089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335388, 39.304089, 18.547907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.198490, 38.959843, 18.397060>,  <37.116352, 38.753296, 18.306553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.198490, 38.959843, 18.397060>,  <37.335388, 39.304089, 18.547907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198490, 38.959843, 18.397060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625091, 0.091110, -0.775216,
		0.701518, -0.501048, 0.506777,
		-0.342248, -0.860610, -0.377116,
		37.095818, 38.701660, 18.283926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947018, 39.101959, 18.090279>,  <37.335388, 39.304089, 18.547907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947018, 39.101959, 18.090279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.635010, 38.879375, 17.975798>,  <37.447803, 38.745823, 17.907108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.635010, 38.879375, 17.975798>,  <37.947018, 39.101959, 18.090279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635010, 38.879375, 17.975798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361689, -0.027702, -0.931887,
		0.510633, -0.830410, 0.222875,
		-0.780023, -0.556463, -0.286204,
		37.401001, 38.712437, 17.889936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211803, 38.617966, 17.677643>,  <37.947018, 39.101959, 18.090279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211803, 38.617966, 17.677643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.827690, 38.632710, 17.567007>,  <37.597221, 38.641556, 17.500626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.827690, 38.632710, 17.567007>,  <38.211803, 38.617966, 17.677643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827690, 38.632710, 17.567007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278607, 0.181474, -0.943104,
		0.015430, -0.982705, -0.184536,
		-0.960281, 0.036861, -0.276588,
		37.539604, 38.643768, 17.484030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201191, 38.036804, 17.207499>,  <38.211803, 38.617966, 17.677643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201191, 38.036804, 17.207499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.870590, 38.246830, 17.126305>,  <37.672230, 38.372845, 17.077589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.870590, 38.246830, 17.126305>,  <38.201191, 38.036804, 17.207499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870590, 38.246830, 17.126305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229758, -0.014543, -0.973139,
		-0.513918, -0.850935, -0.108619,
		-0.826499, 0.525070, -0.202983,
		37.622639, 38.404350, 17.065411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879822, 37.684227, 16.700068>,  <38.201191, 38.036804, 17.207499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879822, 37.684227, 16.700068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726654, 38.053394, 16.684099>,  <37.634754, 38.274895, 16.674519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726654, 38.053394, 16.684099>,  <37.879822, 37.684227, 16.700068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726654, 38.053394, 16.684099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230630, 0.053666, -0.971560,
		-0.894528, -0.381239, -0.233402,
		-0.382922, 0.922918, -0.039919,
		37.611778, 38.330269, 16.672123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623516, 37.780514, 15.980366>,  <37.879822, 37.684227, 16.700068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623516, 37.780514, 15.980366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.632610, 38.163128, 16.096659>,  <37.638065, 38.392696, 16.166435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.632610, 38.163128, 16.096659>,  <37.623516, 37.780514, 15.980366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632610, 38.163128, 16.096659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244617, 0.276648, -0.929316,
		-0.969353, 0.092243, -0.227696,
		0.022731, 0.956534, 0.290733,
		37.639431, 38.450089, 16.183878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050533, 37.709484, 16.476843>,  <37.623516, 37.780514, 15.980366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050533, 37.709484, 16.476843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.145878, 37.347248, 16.336504>,  <37.203083, 37.129906, 16.252300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.145878, 37.347248, 16.336504>,  <37.050533, 37.709484, 16.476843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145878, 37.347248, 16.336504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204486, -0.399959, 0.893430,
		-0.949405, -0.141216, -0.280515,
		0.238362, -0.905588, -0.350846,
		37.217388, 37.075573, 16.231251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571060, 37.261047, 16.779457>,  <37.050533, 37.709484, 16.476843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571060, 37.261047, 16.779457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.828968, 36.991802, 16.634579>,  <36.983715, 36.830254, 16.547651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.828968, 36.991802, 16.634579>,  <36.571060, 37.261047, 16.779457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828968, 36.991802, 16.634579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167691, -0.586867, 0.792128,
		-0.745753, -0.450007, -0.491271,
		0.644774, -0.673113, -0.362196,
		37.022400, 36.789867, 16.525921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240738, 36.613552, 16.740780>,  <36.571060, 37.261047, 16.779457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240738, 36.613552, 16.740780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.626003, 36.507111, 16.725237>,  <36.857162, 36.443245, 16.715910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.626003, 36.507111, 16.725237>,  <36.240738, 36.613552, 16.740780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626003, 36.507111, 16.725237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152359, -0.659023, 0.736529,
		-0.221601, -0.703476, -0.675289,
		0.963162, -0.266102, -0.038859,
		36.914951, 36.427280, 16.713579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289886, 35.876160, 16.643044>,  <36.240738, 36.613552, 16.740780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289886, 35.876160, 16.643044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.648350, 35.977741, 16.788597>,  <36.863426, 36.038689, 16.875929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.648350, 35.977741, 16.788597>,  <36.289886, 35.876160, 16.643044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648350, 35.977741, 16.788597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081019, -0.712611, 0.696866,
		0.436279, -0.653982, -0.618036,
		0.896156, 0.253955, 0.363882,
		36.917198, 36.053928, 16.897762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651932, 35.231495, 16.579824>,  <36.289886, 35.876160, 16.643044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651932, 35.231495, 16.579824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.805466, 35.470284, 16.861616>,  <36.897587, 35.613556, 17.030691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.805466, 35.470284, 16.861616>,  <36.651932, 35.231495, 16.579824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805466, 35.470284, 16.861616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030974, -0.770812, 0.636310,
		0.922881, -0.222419, -0.314357,
		0.383837, 0.596975, 0.704478,
		36.920616, 35.649376, 17.072960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066383, 34.756725, 16.896751>,  <36.651932, 35.231495, 16.579824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066383, 34.756725, 16.896751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.041290, 35.071732, 17.141987>,  <37.026234, 35.260735, 17.289127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.041290, 35.071732, 17.141987>,  <37.066383, 34.756725, 16.896751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041290, 35.071732, 17.141987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206444, -0.611253, 0.764036,
		0.976445, -0.078637, 0.200925,
		-0.062734, 0.787519, 0.613089,
		37.022469, 35.307987, 17.325914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448479, 34.554203, 17.465614>,  <37.066383, 34.756725, 16.896751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448479, 34.554203, 17.465614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.231827, 34.853081, 17.619675>,  <37.101837, 35.032406, 17.712111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.231827, 34.853081, 17.619675>,  <37.448479, 34.554203, 17.465614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231827, 34.853081, 17.619675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226501, -0.570952, 0.789121,
		0.809529, 0.340172, 0.478483,
		-0.541627, 0.747193, 0.385153,
		37.069340, 35.077240, 17.735220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641689, 34.549301, 18.219210>,  <37.448479, 34.554203, 17.465614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641689, 34.549301, 18.219210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.292679, 34.739330, 18.173599>,  <37.083271, 34.853348, 18.146233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.292679, 34.739330, 18.173599>,  <37.641689, 34.549301, 18.219210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292679, 34.739330, 18.173599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370116, -0.490384, 0.789011,
		0.318925, 0.730634, 0.603706,
		-0.872526, 0.475076, -0.114024,
		37.030922, 34.881855, 18.139393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301701, 34.614300, 18.679474>,  <37.641689, 34.549301, 18.219210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301701, 34.614300, 18.679474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.384705, 34.228291, 18.615377>,  <38.434509, 33.996685, 18.576920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.384705, 34.228291, 18.615377>,  <38.301701, 34.614300, 18.679474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384705, 34.228291, 18.615377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128132, 0.189210, -0.973541,
		0.969804, 0.181491, 0.162914,
		0.207514, -0.965019, -0.160242,
		38.446960, 33.938786, 18.567305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933689, 34.681572, 18.395456>,  <38.301701, 34.614300, 18.679474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933689, 34.681572, 18.395456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.812946, 34.312660, 18.298895>,  <38.740501, 34.091312, 18.240957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.812946, 34.312660, 18.298895>,  <38.933689, 34.681572, 18.395456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812946, 34.312660, 18.298895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308722, 0.145008, -0.940034,
		0.901982, -0.358285, 0.240957,
		-0.301860, -0.922282, -0.241405,
		38.722389, 34.035976, 18.226473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394943, 34.435268, 17.826408>,  <38.933689, 34.681572, 18.395456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394943, 34.435268, 17.826408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096756, 34.169964, 17.799969>,  <38.917843, 34.010780, 17.784105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096756, 34.169964, 17.799969>,  <39.394943, 34.435268, 17.826408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096756, 34.169964, 17.799969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028702, 0.067130, -0.997331,
		0.665927, -0.745372, -0.031006,
		-0.745465, -0.663260, -0.066097,
		38.873116, 33.970985, 17.780140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768173, 33.885578, 17.447737>,  <39.394943, 34.435268, 17.826408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768173, 33.885578, 17.447737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.391533, 33.759689, 17.399847>,  <39.165546, 33.684155, 17.371113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.391533, 33.759689, 17.399847>,  <39.768173, 33.885578, 17.447737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391533, 33.759689, 17.399847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208022, -0.264098, -0.941796,
		0.264787, -0.911702, 0.314145,
		-0.941603, -0.314724, -0.119724,
		39.109051, 33.665272, 17.363930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774811, 33.216015, 17.065439>,  <39.768173, 33.885578, 17.447737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774811, 33.216015, 17.065439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.425922, 33.404373, 17.012554>,  <39.216587, 33.517387, 16.980824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.425922, 33.404373, 17.012554>,  <39.774811, 33.216015, 17.065439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425922, 33.404373, 17.012554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119082, -0.057727, -0.991205,
		-0.474388, -0.880297, -0.005725,
		-0.872225, 0.470897, -0.132213,
		39.164253, 33.545643, 16.972891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502724, 32.759083, 16.675058>,  <39.774811, 33.216015, 17.065439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502724, 32.759083, 16.675058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.328053, 33.113323, 16.611778>,  <39.223251, 33.325867, 16.573811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.328053, 33.113323, 16.611778>,  <39.502724, 32.759083, 16.675058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328053, 33.113323, 16.611778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259455, -0.044402, -0.964734,
		-0.861391, -0.462324, -0.210384,
		-0.436679, 0.885599, -0.158200,
		39.197048, 33.379002, 16.564318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898289, 32.636330, 16.281107>,  <39.502724, 32.759083, 16.675058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898289, 32.636330, 16.281107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.011024, 33.012180, 16.203476>,  <39.078667, 33.237690, 16.156897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.011024, 33.012180, 16.203476>,  <38.898289, 32.636330, 16.281107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011024, 33.012180, 16.203476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179614, -0.250373, -0.951342,
		-0.942499, 0.233269, -0.239336,
		0.281842, 0.939627, -0.194078,
		39.095577, 33.294067, 16.145252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703465, 32.626354, 15.590163>,  <38.898289, 32.636330, 16.281107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703465, 32.626354, 15.590163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.896145, 32.973885, 15.635955>,  <39.011753, 33.182404, 15.663429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.896145, 32.973885, 15.635955>,  <38.703465, 32.626354, 15.590163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896145, 32.973885, 15.635955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031810, 0.113211, -0.993061,
		-0.875760, 0.481997, 0.026896,
		0.481698, 0.868828, 0.114479,
		39.040653, 33.234531, 15.670299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421886, 33.079548, 15.058151>,  <38.703465, 32.626354, 15.590163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421886, 33.079548, 15.058151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.773876, 33.230904, 15.173018>,  <38.985069, 33.321716, 15.241939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.773876, 33.230904, 15.173018>,  <38.421886, 33.079548, 15.058151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773876, 33.230904, 15.173018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220038, 0.211069, -0.952383,
		-0.420979, 0.901263, 0.102477,
		0.879977, 0.378385, 0.287167,
		39.037868, 33.344418, 15.259169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.398209, 30.414907, 30.315767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791592, 30.357498, 30.359962>,  <35.027622, 30.323053, 30.386480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791592, 30.357498, 30.359962>,  <34.398209, 30.414907, 30.315767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791592, 30.357498, 30.359962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150173, 0.305059, -0.940419,
		0.101266, 0.941456, 0.321566,
		0.983460, -0.143523, 0.110490,
		35.086628, 30.314442, 30.393110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710667, 31.064054, 30.165144>,  <34.398209, 30.414907, 30.315767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710667, 31.064054, 30.165144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.929531, 30.737909, 30.089462>,  <35.060852, 30.542223, 30.044054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.929531, 30.737909, 30.089462>,  <34.710667, 31.064054, 30.165144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929531, 30.737909, 30.089462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022551, 0.211600, -0.977096,
		0.836721, 0.538900, 0.097392,
		0.547165, -0.815361, -0.189203,
		35.093681, 30.493301, 30.032701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174538, 31.266367, 29.634563>,  <34.710667, 31.064054, 30.165144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174538, 31.266367, 29.634563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221241, 30.869774, 29.611481>,  <35.249264, 30.631819, 29.597631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221241, 30.869774, 29.611481>,  <35.174538, 31.266367, 29.634563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221241, 30.869774, 29.611481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407082, 0.100778, -0.907815,
		0.905898, 0.082507, 0.415381,
		0.116763, -0.991482, -0.057707,
		35.256271, 30.572329, 29.594168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858852, 31.185160, 29.442255>,  <35.174538, 31.266367, 29.634563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858852, 31.185160, 29.442255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659927, 30.851667, 29.346275>,  <35.540573, 30.651573, 29.288687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659927, 30.851667, 29.346275>,  <35.858852, 31.185160, 29.442255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659927, 30.851667, 29.346275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364458, 0.050223, -0.929865,
		0.787307, -0.549884, 0.278883,
		-0.497311, -0.833730, -0.239950,
		35.510735, 30.601549, 29.274290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375648, 30.746344, 29.141928>,  <35.858852, 31.185160, 29.442255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375648, 30.746344, 29.141928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.010273, 30.643854, 29.015444>,  <35.791050, 30.582361, 28.939554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.010273, 30.643854, 29.015444>,  <36.375648, 30.746344, 29.141928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010273, 30.643854, 29.015444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345439, -0.077286, -0.935253,
		0.215194, -0.963524, 0.159105,
		-0.913435, -0.256222, -0.316207,
		35.736244, 30.566988, 28.920582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526958, 30.232655, 28.651951>,  <36.375648, 30.746344, 29.141928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526958, 30.232655, 28.651951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148632, 30.329550, 28.565456>,  <35.921638, 30.387688, 28.513559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148632, 30.329550, 28.565456>,  <36.526958, 30.232655, 28.651951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148632, 30.329550, 28.565456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228728, 0.024348, -0.973186,
		-0.230478, -0.969911, -0.078435,
		-0.945813, 0.242239, -0.216234,
		35.864887, 30.402222, 28.500586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250900, 29.776512, 28.153618>,  <36.526958, 30.232655, 28.651951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250900, 29.776512, 28.153618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005589, 30.091509, 28.129131>,  <35.858402, 30.280506, 28.114439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005589, 30.091509, 28.129131>,  <36.250900, 29.776512, 28.153618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005589, 30.091509, 28.129131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015360, -0.065598, -0.997728,
		-0.789716, -0.612827, 0.028134,
		-0.613280, 0.787490, -0.061217,
		35.821606, 30.327755, 28.110765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716225, 29.516943, 27.785391>,  <36.250900, 29.776512, 28.153618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716225, 29.516943, 27.785391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669945, 29.911781, 27.741106>,  <35.642178, 30.148684, 27.714535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669945, 29.911781, 27.741106>,  <35.716225, 29.516943, 27.785391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669945, 29.911781, 27.741106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156762, -0.128213, -0.979279,
		-0.980836, -0.095949, 0.169574,
		-0.115702, 0.987094, -0.110714,
		35.635235, 30.207911, 27.707891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159901, 29.650305, 27.410761>,  <35.716225, 29.516943, 27.785391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159901, 29.650305, 27.410761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385746, 29.976925, 27.362671>,  <35.521252, 30.172897, 27.333817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385746, 29.976925, 27.362671>,  <35.159901, 29.650305, 27.410761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385746, 29.976925, 27.362671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093661, -0.081335, -0.992276,
		-0.820023, 0.571514, 0.030556,
		0.564615, 0.816551, -0.120225,
		35.555130, 30.221889, 27.326603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935867, 29.983027, 26.816116>,  <35.159901, 29.650305, 27.410761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935867, 29.983027, 26.816116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290512, 30.165524, 26.846493>,  <35.503300, 30.275023, 26.864717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290512, 30.165524, 26.846493>,  <34.935867, 29.983027, 26.816116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290512, 30.165524, 26.846493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042893, 0.082371, -0.995678,
		-0.460528, 0.886034, 0.053462,
		0.886608, 0.456244, 0.075939,
		35.556496, 30.302397, 26.869274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961460, 30.612978, 26.372637>,  <34.935867, 29.983027, 26.816116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961460, 30.612978, 26.372637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.355442, 30.546526, 26.391685>,  <35.591831, 30.506655, 26.403114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.355442, 30.546526, 26.391685>,  <34.961460, 30.612978, 26.372637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355442, 30.546526, 26.391685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101717, 0.334497, -0.936891,
		0.139714, 0.927639, 0.346362,
		0.984954, -0.166128, 0.047623,
		35.650928, 30.496687, 26.405972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222851, 31.291132, 26.062746>,  <34.961460, 30.612978, 26.372637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222851, 31.291132, 26.062746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479973, 30.984959, 26.050627>,  <35.634247, 30.801254, 26.043356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479973, 30.984959, 26.050627>,  <35.222851, 31.291132, 26.062746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479973, 30.984959, 26.050627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249413, 0.246522, -0.936493,
		0.724292, 0.594424, 0.349374,
		0.642802, -0.765433, -0.030297,
		35.672813, 30.755329, 26.041538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827801, 31.959717, 26.004181>,  <35.222851, 31.291132, 26.062746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827801, 31.959717, 26.004181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473312, 31.914207, 25.824551>,  <34.260620, 31.886902, 25.716772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473312, 31.914207, 25.824551>,  <34.827801, 31.959717, 26.004181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473312, 31.914207, 25.824551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337530, -0.505397, 0.794133,
		-0.317315, 0.855353, 0.409490,
		-0.886219, -0.113775, -0.449077,
		34.207447, 31.880075, 25.689827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281700, 32.104664, 26.526863>,  <34.827801, 31.959717, 26.004181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281700, 32.104664, 26.526863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093361, 31.895361, 26.242748>,  <33.980358, 31.769779, 26.072279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093361, 31.895361, 26.242748>,  <34.281700, 32.104664, 26.526863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093361, 31.895361, 26.242748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357930, -0.622574, 0.695908,
		-0.806345, 0.581897, 0.105846,
		-0.470844, -0.523256, -0.710288,
		33.952106, 31.738384, 26.029661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614986, 32.064198, 26.755438>,  <34.281700, 32.104664, 26.526863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614986, 32.064198, 26.755438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612972, 31.784286, 26.469702>,  <33.611763, 31.616339, 26.298260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612972, 31.784286, 26.469702>,  <33.614986, 32.064198, 26.755438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612972, 31.784286, 26.469702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442173, -0.639162, 0.629249,
		-0.896916, 0.319031, -0.306205,
		-0.005035, -0.699779, -0.714341,
		33.611462, 31.574352, 26.255400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829967, 31.862999, 26.726023>,  <33.614986, 32.064198, 26.755438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829967, 31.862999, 26.726023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062794, 31.589520, 26.549950>,  <33.202488, 31.425432, 26.444305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062794, 31.589520, 26.549950>,  <32.829967, 31.862999, 26.726023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062794, 31.589520, 26.549950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633610, -0.720636, 0.281465,
		-0.509648, 0.115074, -0.852653,
		0.582063, -0.683697, -0.440183,
		33.237411, 31.384411, 26.417894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423847, 31.424511, 26.393782>,  <32.829967, 31.862999, 26.726023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423847, 31.424511, 26.393782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754654, 31.208704, 26.456982>,  <32.953136, 31.079220, 26.494902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754654, 31.208704, 26.456982>,  <32.423847, 31.424511, 26.393782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754654, 31.208704, 26.456982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546174, -0.704511, 0.453165,
		-0.133179, -0.461070, -0.877313,
		0.827017, -0.539517, 0.157998,
		33.002758, 31.046848, 26.504381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309566, 30.763390, 26.228518>,  <32.423847, 31.424511, 26.393782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309566, 30.763390, 26.228518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592888, 30.732206, 26.509155>,  <32.762878, 30.713497, 26.677538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592888, 30.732206, 26.509155>,  <32.309566, 30.763390, 26.228518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592888, 30.732206, 26.509155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654019, -0.446497, 0.610656,
		0.265655, -0.891383, -0.367238,
		0.708299, -0.077957, 0.701595,
		32.805378, 30.708818, 26.719633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181698, 30.082874, 26.643110>,  <32.309566, 30.763390, 26.228518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181698, 30.082874, 26.643110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.461369, 30.261408, 26.866514>,  <32.629169, 30.368528, 27.000557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.461369, 30.261408, 26.866514>,  <32.181698, 30.082874, 26.643110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461369, 30.261408, 26.866514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501750, -0.250173, 0.828046,
		0.509311, -0.859184, 0.049034,
		0.699177, 0.446336, 0.558511,
		32.671124, 30.395309, 27.034067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475796, 29.588160, 27.154198>,  <32.181698, 30.082874, 26.643110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475796, 29.588160, 27.154198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512737, 29.960665, 27.295177>,  <32.534901, 30.184168, 27.379766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512737, 29.960665, 27.295177>,  <32.475796, 29.588160, 27.154198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512737, 29.960665, 27.295177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555644, -0.245527, 0.794340,
		0.826275, -0.269198, 0.494774,
		0.092354, 0.931262, 0.352452,
		32.540443, 30.240044, 27.400913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549973, 29.423409, 27.873535>,  <32.475796, 29.588160, 27.154198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549973, 29.423409, 27.873535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465500, 29.813789, 27.851919>,  <32.414818, 30.048018, 27.838949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465500, 29.813789, 27.851919>,  <32.549973, 29.423409, 27.873535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465500, 29.813789, 27.851919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319071, -0.016573, 0.947586,
		0.923903, 0.217354, 0.314898,
		-0.211181, 0.975952, -0.054039,
		32.402145, 30.106575, 27.835707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835155, 29.781481, 28.437435>,  <32.549973, 29.423409, 27.873535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835155, 29.781481, 28.437435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529140, 30.017807, 28.334944>,  <32.345531, 30.159603, 28.273449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529140, 30.017807, 28.334944>,  <32.835155, 29.781481, 28.437435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529140, 30.017807, 28.334944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257656, 0.083826, 0.962594,
		0.590194, 0.802440, 0.088097,
		-0.765039, 0.590816, -0.256227,
		32.299629, 30.195051, 28.258076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756641, 30.241934, 28.981352>,  <32.835155, 29.781481, 28.437435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756641, 30.241934, 28.981352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406319, 30.316223, 28.803152>,  <32.196125, 30.360798, 28.696232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406319, 30.316223, 28.803152>,  <32.756641, 30.241934, 28.981352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406319, 30.316223, 28.803152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389632, 0.272707, 0.879669,
		0.284866, 0.944001, -0.166475,
		-0.875807, 0.185724, -0.445498,
		32.143578, 30.371941, 28.669502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671715, 30.932772, 29.075148>,  <32.756641, 30.241934, 28.981352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671715, 30.932772, 29.075148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313164, 30.766302, 29.014093>,  <32.098034, 30.666420, 28.977461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313164, 30.766302, 29.014093>,  <32.671715, 30.932772, 29.075148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313164, 30.766302, 29.014093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297621, 0.309851, 0.903003,
		-0.328513, 0.854863, -0.401607,
		-0.896382, -0.416175, -0.152635,
		32.044250, 30.641449, 28.968304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183380, 31.472164, 29.254457>,  <32.671715, 30.932772, 29.075148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183380, 31.472164, 29.254457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.003319, 31.115818, 29.278843>,  <31.895281, 30.902010, 29.293474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.003319, 31.115818, 29.278843>,  <32.183380, 31.472164, 29.254457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003319, 31.115818, 29.278843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172967, 0.153972, 0.972818,
		-0.876038, 0.427375, -0.223401,
		-0.450156, -0.890867, 0.060963,
		31.868273, 30.848558, 29.297132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753035, 31.566025, 29.847565>,  <32.183380, 31.472164, 29.254457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753035, 31.566025, 29.847565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.754776, 31.172222, 29.777443>,  <31.755821, 30.935942, 29.735371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.754776, 31.172222, 29.777443>,  <31.753035, 31.566025, 29.847565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754776, 31.172222, 29.777443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227079, -0.171699, 0.958621,
		-0.973867, 0.035633, -0.224308,
		0.004355, -0.984505, -0.175304,
		31.756083, 30.876871, 29.724852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843925, 32.390099, 30.090574>,  <31.753035, 31.566025, 29.847565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843925, 32.390099, 30.090574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145641, 32.623646, 30.210670>,  <32.326672, 32.763775, 30.282728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145641, 32.623646, 30.210670>,  <31.843925, 32.390099, 30.090574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145641, 32.623646, 30.210670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017916, 0.438829, -0.898392,
		-0.656298, 0.683027, 0.320543,
		0.754289, 0.583870, 0.300240,
		32.371929, 32.798805, 30.300743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834270, 33.142609, 29.800514>,  <31.843925, 32.390099, 30.090574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834270, 33.142609, 29.800514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213093, 33.083668, 29.914619>,  <32.440388, 33.048306, 29.983082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213093, 33.083668, 29.914619>,  <31.834270, 33.142609, 29.800514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213093, 33.083668, 29.914619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320690, 0.390883, -0.862768,
		0.015623, 0.908569, 0.417441,
		0.947055, -0.147348, 0.285262,
		32.497208, 33.039463, 30.000198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110294, 33.814621, 29.646294>,  <31.834270, 33.142609, 29.800514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110294, 33.814621, 29.646294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386032, 33.524937, 29.653505>,  <32.551476, 33.351124, 29.657833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386032, 33.524937, 29.653505>,  <32.110294, 33.814621, 29.646294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386032, 33.524937, 29.653505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369407, 0.329989, -0.868703,
		0.623176, 0.605493, 0.495004,
		0.689340, -0.724213, 0.018032,
		32.592834, 33.307674, 29.658915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655914, 34.109158, 29.664717>,  <32.110294, 33.814621, 29.646294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655914, 34.109158, 29.664717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744148, 33.760075, 29.490490>,  <32.797089, 33.550625, 29.385954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744148, 33.760075, 29.490490>,  <32.655914, 34.109158, 29.664717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744148, 33.760075, 29.490490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459786, 0.486876, -0.742663,
		0.860196, -0.036443, 0.508659,
		0.220590, -0.872710, -0.435565,
		32.810326, 33.498260, 29.359819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444206, 34.161999, 29.427223>,  <32.655914, 34.109158, 29.664717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444206, 34.161999, 29.427223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254852, 33.867172, 29.234291>,  <33.141239, 33.690277, 29.118532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254852, 33.867172, 29.234291>,  <33.444206, 34.161999, 29.427223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254852, 33.867172, 29.234291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362880, 0.335763, -0.869242,
		0.802638, -0.586511, 0.108523,
		-0.473382, -0.737068, -0.482329,
		33.112839, 33.646053, 29.089592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913914, 33.844707, 28.948179>,  <33.444206, 34.161999, 29.427223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913914, 33.844707, 28.948179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557415, 33.734917, 28.803764>,  <33.343517, 33.669044, 28.717115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557415, 33.734917, 28.803764>,  <33.913914, 33.844707, 28.948179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557415, 33.734917, 28.803764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271257, 0.315372, -0.909373,
		0.363463, -0.908407, -0.206620,
		-0.891243, -0.274476, -0.361038,
		33.290043, 33.652576, 28.695454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036430, 33.449562, 28.427412>,  <33.913914, 33.844707, 28.948179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036430, 33.449562, 28.427412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671425, 33.593510, 28.349632>,  <33.452423, 33.679878, 28.302965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671425, 33.593510, 28.349632>,  <34.036430, 33.449562, 28.427412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671425, 33.593510, 28.349632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320327, 0.333067, -0.886824,
		-0.254381, -0.871526, -0.419206,
		-0.912514, 0.359874, -0.194447,
		33.397671, 33.701473, 28.291298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949383, 33.310463, 27.744902>,  <34.036430, 33.449562, 28.427412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949383, 33.310463, 27.744902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664104, 33.582767, 27.811735>,  <33.492939, 33.746151, 27.851835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664104, 33.582767, 27.811735>,  <33.949383, 33.310463, 27.744902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664104, 33.582767, 27.811735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175405, 0.404101, -0.897739,
		-0.678668, -0.610952, -0.407611,
		-0.713192, 0.680764, 0.167086,
		33.450146, 33.786995, 27.861860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565105, 33.329453, 27.122290>,  <33.949383, 33.310463, 27.744902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565105, 33.329453, 27.122290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451027, 33.679054, 27.279652>,  <33.382580, 33.888817, 27.374069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451027, 33.679054, 27.279652>,  <33.565105, 33.329453, 27.122290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451027, 33.679054, 27.279652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253145, 0.464567, -0.848584,
		-0.924434, -0.142427, -0.353745,
		-0.285200, 0.874009, 0.393407,
		33.365467, 33.941257, 27.397675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223358, 33.609966, 26.650562>,  <33.565105, 33.329453, 27.122290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223358, 33.609966, 26.650562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337494, 33.918686, 26.877861>,  <33.405975, 34.103916, 27.014240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337494, 33.918686, 26.877861>,  <33.223358, 33.609966, 26.650562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337494, 33.918686, 26.877861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153766, 0.548351, -0.821990,
		-0.946010, 0.321926, 0.037792,
		0.285343, 0.771800, 0.568247,
		33.423096, 34.150227, 27.048336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803940, 34.160564, 26.465221>,  <33.223358, 33.609966, 26.650562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803940, 34.160564, 26.465221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144806, 34.298233, 26.622885>,  <33.349327, 34.380833, 26.717484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144806, 34.298233, 26.622885>,  <32.803940, 34.160564, 26.465221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144806, 34.298233, 26.622885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108416, 0.620788, -0.776446,
		-0.511918, 0.704394, 0.491700,
		0.852166, 0.344168, 0.394160,
		33.400455, 34.401485, 26.741133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704998, 34.862980, 26.348675>,  <32.803940, 34.160564, 26.465221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704998, 34.862980, 26.348675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091053, 34.801449, 26.433374>,  <33.322685, 34.764530, 26.484194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091053, 34.801449, 26.433374>,  <32.704998, 34.862980, 26.348675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091053, 34.801449, 26.433374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260988, 0.626532, -0.734400,
		-0.019694, 0.764064, 0.644840,
		0.965141, -0.153832, 0.211750,
		33.380596, 34.755299, 26.496899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040516, 35.468399, 26.253252>,  <32.704998, 34.862980, 26.348675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040516, 35.468399, 26.253252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365345, 35.235222, 26.263983>,  <33.560242, 35.095314, 26.270422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365345, 35.235222, 26.263983>,  <33.040516, 35.468399, 26.253252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365345, 35.235222, 26.263983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399275, 0.521507, -0.754063,
		0.425586, 0.623062, 0.656255,
		0.812069, -0.582944, 0.026827,
		33.608967, 35.060337, 26.272032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569080, 35.913067, 26.287476>,  <33.040516, 35.468399, 26.253252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569080, 35.913067, 26.287476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682041, 35.560902, 26.135099>,  <33.749817, 35.349602, 26.043673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682041, 35.560902, 26.135099>,  <33.569080, 35.913067, 26.287476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682041, 35.560902, 26.135099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455495, 0.472549, -0.754468,
		0.844260, 0.039545, 0.534473,
		0.282400, -0.880417, -0.380942,
		33.766762, 35.296776, 26.020817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346813, 35.963581, 26.123247>,  <33.569080, 35.913067, 26.287476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346813, 35.963581, 26.123247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208782, 35.645004, 25.924612>,  <34.125965, 35.453857, 25.805431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208782, 35.645004, 25.924612>,  <34.346813, 35.963581, 26.123247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208782, 35.645004, 25.924612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363269, 0.374519, -0.853095,
		0.865425, -0.474776, 0.160086,
		-0.345074, -0.796444, -0.496589,
		34.105259, 35.406071, 25.775635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943012, 35.860455, 25.701305>,  <34.346813, 35.963581, 26.123247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943012, 35.860455, 25.701305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656143, 35.663204, 25.504330>,  <34.484024, 35.544853, 25.386145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656143, 35.663204, 25.504330>,  <34.943012, 35.860455, 25.701305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656143, 35.663204, 25.504330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389622, 0.302153, -0.869999,
		0.577811, -0.815801, -0.024563,
		-0.717168, -0.493125, -0.492441,
		34.440994, 35.515266, 25.356598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256771, 35.450794, 25.204954>,  <34.943012, 35.860455, 25.701305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256771, 35.450794, 25.204954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871506, 35.490269, 25.104893>,  <34.640347, 35.513954, 25.044855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871506, 35.490269, 25.104893>,  <35.256771, 35.450794, 25.204954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871506, 35.490269, 25.104893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268119, 0.280777, -0.921562,
		-0.020708, -0.954686, -0.296894,
		-0.963163, 0.098687, -0.250155,
		34.582558, 35.519875, 25.029846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212566, 34.968792, 24.600523>,  <35.256771, 35.450794, 25.204954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212566, 34.968792, 24.600523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923023, 35.244465, 24.587463>,  <34.749298, 35.409870, 24.579628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923023, 35.244465, 24.587463>,  <35.212566, 34.968792, 24.600523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923023, 35.244465, 24.587463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291549, 0.262646, -0.919792,
		-0.625328, -0.675313, -0.391047,
		-0.723854, 0.689181, -0.032647,
		34.705868, 35.451218, 24.577669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830280, 34.992748, 23.866001>,  <35.212566, 34.968792, 24.600523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830280, 34.992748, 23.866001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.730808, 35.361122, 23.986031>,  <34.671127, 35.582146, 24.058048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.730808, 35.361122, 23.986031>,  <34.830280, 34.992748, 23.866001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730808, 35.361122, 23.986031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246147, 0.359724, -0.900006,
		-0.936787, -0.149949, -0.316140,
		-0.248678, 0.920931, 0.300075,
		34.656204, 35.637402, 24.076054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552361, 35.333527, 23.285965>,  <34.830280, 34.992748, 23.866001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552361, 35.333527, 23.285965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642422, 35.655773, 23.505159>,  <34.696457, 35.849121, 23.636677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642422, 35.655773, 23.505159>,  <34.552361, 35.333527, 23.285965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642422, 35.655773, 23.505159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313566, 0.472593, -0.823609,
		-0.922487, 0.357269, -0.146208,
		0.225153, 0.805615, 0.547988,
		34.709969, 35.897457, 23.669556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386917, 35.838291, 22.891312>,  <34.552361, 35.333527, 23.285965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386917, 35.838291, 22.891312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612732, 36.055428, 23.140026>,  <34.748222, 36.185711, 23.289255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612732, 36.055428, 23.140026>,  <34.386917, 35.838291, 22.891312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612732, 36.055428, 23.140026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258682, 0.599001, -0.757814,
		-0.783822, 0.588662, 0.197737,
		0.564541, 0.542840, 0.621786,
		34.782093, 36.218281, 23.326563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325039, 36.540165, 22.678114>,  <34.386917, 35.838291, 22.891312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325039, 36.540165, 22.678114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653427, 36.565079, 22.905142>,  <34.850460, 36.580029, 23.041359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653427, 36.565079, 22.905142>,  <34.325039, 36.540165, 22.678114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653427, 36.565079, 22.905142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409186, 0.629094, -0.660914,
		-0.398221, 0.774829, 0.490979,
		0.820967, 0.062288, 0.567568,
		34.899719, 36.583767, 23.075413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462135, 37.239479, 22.844315>,  <34.325039, 36.540165, 22.678114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462135, 37.239479, 22.844315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819424, 37.065800, 22.891014>,  <35.033794, 36.961590, 22.919033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819424, 37.065800, 22.891014>,  <34.462135, 37.239479, 22.844315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819424, 37.065800, 22.891014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430643, 0.751520, -0.499764,
		0.129260, 0.496675, 0.858257,
		0.893218, -0.434202, 0.116748,
		35.087391, 36.935539, 22.926039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896221, 37.757175, 22.736351>,  <34.462135, 37.239479, 22.844315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896221, 37.757175, 22.736351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147522, 37.447674, 22.703835>,  <35.298302, 37.261974, 22.684324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147522, 37.447674, 22.703835>,  <34.896221, 37.757175, 22.736351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147522, 37.447674, 22.703835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556325, 0.519825, -0.648294,
		0.543876, 0.362067, 0.757038,
		0.628253, -0.773750, -0.081294,
		35.335999, 37.215549, 22.679447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692371, 37.874023, 22.928104>,  <34.896221, 37.757175, 22.736351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692371, 37.874023, 22.928104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657364, 37.585243, 22.653549>,  <35.636360, 37.411976, 22.488815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657364, 37.585243, 22.653549>,  <35.692371, 37.874023, 22.928104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657364, 37.585243, 22.653549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540737, 0.544253, -0.641398,
		0.836627, -0.427290, 0.342752,
		-0.087519, -0.721950, -0.686388,
		35.631107, 37.368660, 22.447632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251335, 37.936394, 22.524057>,  <35.692371, 37.874023, 22.928104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251335, 37.936394, 22.524057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059731, 37.655922, 22.312813>,  <35.944767, 37.487640, 22.186066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059731, 37.655922, 22.312813>,  <36.251335, 37.936394, 22.524057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059731, 37.655922, 22.312813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489590, 0.285953, -0.823731,
		0.728596, -0.653132, 0.206315,
		-0.479008, -0.701177, -0.528111,
		35.916027, 37.445568, 22.154379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709190, 37.624058, 22.141691>,  <36.251335, 37.936394, 22.524057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709190, 37.624058, 22.141691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365177, 37.539139, 21.956102>,  <36.158768, 37.488186, 21.844749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365177, 37.539139, 21.956102>,  <36.709190, 37.624058, 22.141691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365177, 37.539139, 21.956102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423301, 0.210836, -0.881116,
		0.284885, -0.954189, -0.091458,
		-0.860034, -0.212302, -0.463973,
		36.107166, 37.475449, 21.816910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921856, 37.125305, 21.575785>,  <36.709190, 37.624058, 22.141691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921856, 37.125305, 21.575785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587399, 37.320648, 21.475895>,  <36.386723, 37.437855, 21.415960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587399, 37.320648, 21.475895>,  <36.921856, 37.125305, 21.575785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587399, 37.320648, 21.475895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416668, 0.269437, -0.868212,
		-0.356716, -0.830004, -0.428774,
		-0.836147, 0.488361, -0.249724,
		36.336555, 37.467155, 21.400978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283581, 36.414566, 21.376284>,  <36.921856, 37.125305, 21.575785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283581, 36.414566, 21.376284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676743, 36.456200, 21.437035>,  <37.912640, 36.481182, 21.473484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676743, 36.456200, 21.437035>,  <37.283581, 36.414566, 21.376284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676743, 36.456200, 21.437035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134188, -0.159836, 0.977981,
		0.126070, -0.981641, -0.143136,
		0.982904, 0.104087, 0.151875,
		37.971615, 36.487427, 21.482597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440842, 35.847176, 21.723513>,  <37.283581, 36.414566, 21.376284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440842, 35.847176, 21.723513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.723995, 36.122589, 21.786539>,  <37.893887, 36.287838, 21.824354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.723995, 36.122589, 21.786539>,  <37.440842, 35.847176, 21.723513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723995, 36.122589, 21.786539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094964, -0.128278, 0.987181,
		0.699918, -0.713771, -0.025420,
		0.707882, 0.688532, 0.157567,
		37.936359, 36.329147, 21.833809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941917, 35.532475, 22.155714>,  <37.440842, 35.847176, 21.723513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941917, 35.532475, 22.155714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.976234, 35.926777, 22.213587>,  <37.996822, 36.163357, 22.248310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.976234, 35.926777, 22.213587>,  <37.941917, 35.532475, 22.155714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976234, 35.926777, 22.213587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087767, -0.137175, 0.986651,
		0.992440, -0.097344, 0.074748,
		0.085791, 0.985752, 0.144681,
		38.001972, 36.222504, 22.256990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423916, 35.572548, 22.651182>,  <37.941917, 35.532475, 22.155714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423916, 35.572548, 22.651182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.257477, 35.935753, 22.670668>,  <38.157616, 36.153675, 22.682358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.257477, 35.935753, 22.670668>,  <38.423916, 35.572548, 22.651182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257477, 35.935753, 22.670668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087110, -0.013519, 0.996107,
		0.905139, 0.418718, -0.073472,
		-0.416094, 0.908016, 0.048711,
		38.132648, 36.208157, 22.685282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871578, 36.031563, 23.126400>,  <38.423916, 35.572548, 22.651182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871578, 36.031563, 23.126400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493309, 36.161610, 23.125355>,  <38.266350, 36.239635, 23.124727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493309, 36.161610, 23.125355>,  <38.871578, 36.031563, 23.126400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493309, 36.161610, 23.125355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004294, 0.020520, 0.999780,
		0.325097, 0.945452, -0.020802,
		-0.945671, 0.325115, -0.002611,
		38.209606, 36.259144, 23.124571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
