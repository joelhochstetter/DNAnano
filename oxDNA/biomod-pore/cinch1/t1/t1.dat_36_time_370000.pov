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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.813763, 31.629871, 22.969856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497284, 31.850960, 23.074551>,  <43.307396, 31.983612, 23.137367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497284, 31.850960, 23.074551>,  <43.813763, 31.629871, 22.969856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497284, 31.850960, 23.074551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043310, 0.376265, -0.925499,
		-0.610024, -0.743589, -0.273762,
		-0.791198, 0.552720, 0.261735,
		43.259926, 32.016777, 23.153070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255314, 31.456078, 22.572287>,  <43.813763, 31.629871, 22.969856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255314, 31.456078, 22.572287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208561, 31.842194, 22.665710>,  <43.180508, 32.073864, 22.721764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208561, 31.842194, 22.665710>,  <43.255314, 31.456078, 22.572287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208561, 31.842194, 22.665710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207060, 0.206316, -0.956326,
		-0.971321, -0.160140, 0.175758,
		-0.116885, 0.965292, 0.233558,
		43.173496, 32.131783, 22.735777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970570, 31.775774, 22.030930>,  <43.255314, 31.456078, 22.572287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970570, 31.775774, 22.030930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114952, 32.096088, 22.222118>,  <43.201580, 32.288277, 22.336832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114952, 32.096088, 22.222118>,  <42.970570, 31.775774, 22.030930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114952, 32.096088, 22.222118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122571, 0.548813, -0.826911,
		-0.924493, 0.239892, 0.296250,
		0.360955, 0.800785, 0.477970,
		43.223240, 32.336323, 22.365509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465305, 32.368023, 22.034351>,  <42.970570, 31.775774, 22.030930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465305, 32.368023, 22.034351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843224, 32.498940, 22.040665>,  <43.069973, 32.577488, 22.044453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843224, 32.498940, 22.040665>,  <42.465305, 32.368023, 22.034351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843224, 32.498940, 22.040665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176416, 0.548681, -0.817206,
		-0.276122, 0.769306, 0.576129,
		0.944793, 0.327287, 0.015785,
		43.126663, 32.597126, 22.045401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967785, 32.511909, 21.322531>,  <42.465305, 32.368023, 22.034351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967785, 32.511909, 21.322531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648861, 32.606125, 21.100246>,  <41.457504, 32.662655, 20.966875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648861, 32.606125, 21.100246>,  <41.967785, 32.511909, 21.322531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648861, 32.606125, 21.100246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427677, 0.870152, -0.244800,
		0.425894, -0.432847, -0.794517,
		-0.797312, 0.235538, -0.555711,
		41.409668, 32.676785, 20.933533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224098, 32.576801, 20.510899>,  <41.967785, 32.511909, 21.322531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224098, 32.576801, 20.510899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919479, 32.796673, 20.648243>,  <41.736706, 32.928596, 20.730650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919479, 32.796673, 20.648243>,  <42.224098, 32.576801, 20.510899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919479, 32.796673, 20.648243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564607, 0.822802, -0.064938,
		-0.318214, 0.144411, -0.936955,
		-0.761551, 0.549675, 0.343362,
		41.691013, 32.961575, 20.751251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190083, 33.107861, 20.058973>,  <42.224098, 32.576801, 20.510899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190083, 33.107861, 20.058973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008659, 33.244198, 20.388363>,  <41.899803, 33.326000, 20.585997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008659, 33.244198, 20.388363>,  <42.190083, 33.107861, 20.058973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008659, 33.244198, 20.388363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554836, 0.831073, -0.038391,
		-0.697452, 0.439480, -0.566055,
		-0.453561, 0.340844, 0.823473,
		41.872593, 33.346451, 20.635405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950798, 33.858883, 19.903494>,  <42.190083, 33.107861, 20.058973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950798, 33.858883, 19.903494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982563, 33.815628, 20.299877>,  <42.001621, 33.789677, 20.537708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982563, 33.815628, 20.299877>,  <41.950798, 33.858883, 19.903494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982563, 33.815628, 20.299877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514889, 0.855671, 0.052112,
		-0.853570, 0.506096, 0.123630,
		0.079413, -0.108137, 0.990959,
		42.006386, 33.783188, 20.597164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899471, 34.488007, 20.161457>,  <41.950798, 33.858883, 19.903494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899471, 34.488007, 20.161457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068428, 34.280857, 20.459019>,  <42.169804, 34.156567, 20.637556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068428, 34.280857, 20.459019>,  <41.899471, 34.488007, 20.161457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068428, 34.280857, 20.459019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630337, 0.757593, 0.169494,
		-0.651352, 0.397317, 0.646436,
		0.422393, -0.517873, 0.743903,
		42.195145, 34.125496, 20.682190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984711, 34.983749, 20.699286>,  <41.899471, 34.488007, 20.161457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984711, 34.983749, 20.699286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213047, 34.673595, 20.807308>,  <42.350048, 34.487503, 20.872122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213047, 34.673595, 20.807308>,  <41.984711, 34.983749, 20.699286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213047, 34.673595, 20.807308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711963, 0.631274, 0.307576,
		-0.408968, 0.016694, 0.912396,
		0.570837, -0.775381, 0.270057,
		42.384296, 34.440983, 20.888325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068596, 35.073647, 21.426512>,  <41.984711, 34.983749, 20.699286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068596, 35.073647, 21.426512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369263, 34.857479, 21.275280>,  <42.549664, 34.727779, 21.184542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369263, 34.857479, 21.275280>,  <42.068596, 35.073647, 21.426512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369263, 34.857479, 21.275280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659437, 0.626202, 0.415950,
		0.011965, -0.561974, 0.827069,
		0.751665, -0.540423, -0.378078,
		42.594761, 34.695351, 21.161856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529701, 35.046787, 22.008039>,  <42.068596, 35.073647, 21.426512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529701, 35.046787, 22.008039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725636, 34.931824, 21.678806>,  <42.843197, 34.862846, 21.481266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725636, 34.931824, 21.678806>,  <42.529701, 35.046787, 22.008039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725636, 34.931824, 21.678806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842106, 0.400345, 0.361360,
		0.225660, -0.870128, 0.438127,
		0.489832, -0.287405, -0.823082,
		42.872585, 34.845604, 21.431881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137192, 34.829548, 22.235491>,  <42.529701, 35.046787, 22.008039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137192, 34.829548, 22.235491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217606, 34.901512, 21.850323>,  <43.265854, 34.944691, 21.619223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217606, 34.901512, 21.850323>,  <43.137192, 34.829548, 22.235491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217606, 34.901512, 21.850323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824203, 0.500183, 0.265529,
		0.529408, -0.847024, -0.047727,
		0.201038, 0.179910, -0.962921,
		43.277916, 34.955486, 21.561447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865021, 34.557899, 22.135567>,  <43.137192, 34.829548, 22.235491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865021, 34.557899, 22.135567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812519, 34.812866, 21.831863>,  <43.781017, 34.965847, 21.649641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812519, 34.812866, 21.831863>,  <43.865021, 34.557899, 22.135567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812519, 34.812866, 21.831863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827197, 0.492526, 0.270487,
		0.546366, -0.592551, -0.591918,
		-0.131258, 0.637418, -0.759256,
		43.773140, 35.004093, 21.604086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520119, 34.731716, 21.847303>,  <43.865021, 34.557899, 22.135567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520119, 34.731716, 21.847303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319416, 35.041363, 21.692909>,  <44.198994, 35.227150, 21.600273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319416, 35.041363, 21.692909>,  <44.520119, 34.731716, 21.847303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319416, 35.041363, 21.692909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798266, 0.586263, 0.138080,
		0.333180, -0.238837, -0.912112,
		-0.501759, 0.774114, -0.385987,
		44.168888, 35.273598, 21.577114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063934, 35.074932, 21.358107>,  <44.520119, 34.731716, 21.847303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063934, 35.074932, 21.358107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782593, 35.353977, 21.412708>,  <44.613789, 35.521404, 21.445469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782593, 35.353977, 21.412708>,  <45.063934, 35.074932, 21.358107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782593, 35.353977, 21.412708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710315, 0.682346, 0.172792,
		0.027400, 0.218493, -0.975453,
		-0.703351, 0.697614, 0.136503,
		44.571587, 35.563263, 21.453659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348503, 35.679405, 21.169502>,  <45.063934, 35.074932, 21.358107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348503, 35.679405, 21.169502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042393, 35.811317, 21.390625>,  <44.858727, 35.890465, 21.523298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042393, 35.811317, 21.390625>,  <45.348503, 35.679405, 21.169502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042393, 35.811317, 21.390625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505501, 0.839582, 0.198925,
		-0.398526, 0.431678, -0.809216,
		-0.765275, 0.329783, 0.552809,
		44.812809, 35.910252, 21.556467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159157, 36.316399, 20.946642>,  <45.348503, 35.679405, 21.169502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159157, 36.316399, 20.946642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059742, 36.303112, 21.333862>,  <45.000092, 36.295139, 21.566195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059742, 36.303112, 21.333862>,  <45.159157, 36.316399, 20.946642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059742, 36.303112, 21.333862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629157, 0.754345, 0.187417,
		-0.736471, 0.655638, -0.166585,
		-0.248540, -0.033219, 0.968052,
		44.985180, 36.293148, 21.624277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110008, 37.071838, 21.172739>,  <45.159157, 36.316399, 20.946642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110008, 37.071838, 21.172739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136791, 36.867733, 21.515701>,  <45.152863, 36.745270, 21.721479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136791, 36.867733, 21.515701>,  <45.110008, 37.071838, 21.172739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136791, 36.867733, 21.515701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593236, 0.711303, 0.376986,
		-0.802239, 0.483401, 0.350338,
		0.066961, -0.510266, 0.857406,
		45.156879, 36.714653, 21.772923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968353, 37.598217, 21.681419>,  <45.110008, 37.071838, 21.172739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968353, 37.598217, 21.681419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141819, 37.294540, 21.875557>,  <45.245899, 37.112335, 21.992041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141819, 37.294540, 21.875557>,  <44.968353, 37.598217, 21.681419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141819, 37.294540, 21.875557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480396, 0.650492, 0.588286,
		-0.762338, -0.021958, 0.646807,
		0.433660, -0.759196, 0.485346,
		45.271915, 37.066780, 22.021160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972134, 37.720158, 22.450096>,  <44.968353, 37.598217, 21.681419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972134, 37.720158, 22.450096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269989, 37.455391, 22.415756>,  <45.448704, 37.296532, 22.395153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269989, 37.455391, 22.415756>,  <44.972134, 37.720158, 22.450096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.269989, 37.455391, 22.415756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574909, 0.570711, 0.586317,
		-0.339100, -0.485952, 0.805520,
		0.744641, -0.661921, -0.085850,
		45.493382, 37.256813, 22.390001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313251, 37.798256, 23.108799>,  <44.972134, 37.720158, 22.450096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313251, 37.798256, 23.108799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580482, 37.604256, 22.883076>,  <45.740822, 37.487854, 22.747641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580482, 37.604256, 22.883076>,  <45.313251, 37.798256, 23.108799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580482, 37.604256, 22.883076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731247, 0.287638, 0.618500,
		-0.137657, -0.825856, 0.546821,
		0.668078, -0.485002, -0.564309,
		45.780907, 37.458755, 22.713783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697433, 37.419529, 23.579931>,  <45.313251, 37.798256, 23.108799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697433, 37.419529, 23.579931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930183, 37.449047, 23.255962>,  <46.069832, 37.466759, 23.061581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930183, 37.449047, 23.255962>,  <45.697433, 37.419529, 23.579931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930183, 37.449047, 23.255962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736195, 0.375397, 0.563111,
		0.345596, -0.923922, 0.164109,
		0.581877, 0.073793, -0.809922,
		46.104748, 37.471188, 23.012985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335575, 36.972118, 23.618500>,  <45.697433, 37.419529, 23.579931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335575, 36.972118, 23.618500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398361, 37.285252, 23.377655>,  <46.436035, 37.473129, 23.233149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398361, 37.285252, 23.377655>,  <46.335575, 36.972118, 23.618500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398361, 37.285252, 23.377655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704483, 0.338521, 0.623784,
		0.692145, -0.522091, -0.498354,
		0.156969, 0.782831, -0.602110,
		46.445454, 37.520100, 23.197021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053082, 37.020828, 23.664944>,  <46.335575, 36.972118, 23.618500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053082, 37.020828, 23.664944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920910, 37.360828, 23.500835>,  <46.841606, 37.564827, 23.402370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920910, 37.360828, 23.500835>,  <47.053082, 37.020828, 23.664944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920910, 37.360828, 23.500835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735738, 0.504243, 0.452138,
		0.591192, -0.152451, -0.791992,
		-0.330428, 0.849998, -0.410269,
		46.821781, 37.615829, 23.377754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.649124, 37.175144, 23.415598>,  <47.053082, 37.020828, 23.664944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.649124, 37.175144, 23.415598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.410942, 37.495583, 23.439854>,  <47.268032, 37.687847, 23.454407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.410942, 37.495583, 23.439854>,  <47.649124, 37.175144, 23.415598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.410942, 37.495583, 23.439854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700163, 0.480454, 0.528142,
		0.393958, 0.356943, -0.846988,
		-0.595456, 0.801096, 0.060640,
		47.232304, 37.735912, 23.458046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.136124, 37.568398, 23.602835>,  <47.649124, 37.175144, 23.415598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.136124, 37.568398, 23.602835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788235, 37.754208, 23.669521>,  <47.579502, 37.865696, 23.709534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788235, 37.754208, 23.669521>,  <48.136124, 37.568398, 23.602835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.788235, 37.754208, 23.669521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433825, 0.558498, 0.707019,
		0.235319, 0.687237, -0.687263,
		-0.869725, 0.464527, 0.166715,
		47.527317, 37.893566, 23.719536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.215874, 38.310642, 23.479486>,  <48.136124, 37.568398, 23.602835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.215874, 38.310642, 23.479486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.940620, 38.238163, 23.760525>,  <47.775467, 38.194675, 23.929148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.940620, 38.238163, 23.760525>,  <48.215874, 38.310642, 23.479486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.940620, 38.238163, 23.760525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591485, 0.420765, 0.687824,
		-0.420259, 0.888889, -0.182367,
		-0.688134, -0.181197, 0.702595,
		47.734180, 38.183804, 23.971304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.955566, 38.948078, 23.860079>,  <48.215874, 38.310642, 23.479486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.955566, 38.948078, 23.860079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.030224, 38.589031, 24.019802>,  <48.075016, 38.373604, 24.115637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.030224, 38.589031, 24.019802>,  <47.955566, 38.948078, 23.860079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.030224, 38.589031, 24.019802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547203, 0.432548, 0.716569,
		-0.815926, 0.084764, 0.571909,
		0.186639, -0.897618, 0.399310,
		48.086216, 38.319744, 24.139595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.914696, 38.967037, 24.608313>,  <47.955566, 38.948078, 23.860079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.914696, 38.967037, 24.608313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.176392, 38.696964, 24.472019>,  <48.333408, 38.534920, 24.390244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.176392, 38.696964, 24.472019>,  <47.914696, 38.967037, 24.608313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.176392, 38.696964, 24.472019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746831, 0.505758, 0.431802,
		-0.119215, -0.536973, 0.835133,
		0.654241, -0.675181, -0.340734,
		48.372665, 38.494411, 24.369799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.432716, 39.582989, 24.435175>,  <47.914696, 38.967037, 24.608313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.432716, 39.582989, 24.435175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414082, 39.568249, 24.834469>,  <47.402901, 39.559402, 25.074045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414082, 39.568249, 24.834469>,  <47.432716, 39.582989, 24.435175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.414082, 39.568249, 24.834469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587422, 0.809277, 0.002460,
		-0.807939, -0.586270, -0.059351,
		-0.046589, -0.036852, 0.998234,
		47.400105, 39.557194, 25.133940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.718296, 39.397526, 24.701469>,  <47.432716, 39.582989, 24.435175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.718296, 39.397526, 24.701469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.953537, 39.633427, 24.922855>,  <47.094681, 39.774967, 25.055687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.953537, 39.633427, 24.922855>,  <46.718296, 39.397526, 24.701469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.953537, 39.633427, 24.922855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634667, 0.760693, -0.136176,
		-0.501327, -0.271179, 0.821665,
		0.588107, 0.589752, 0.553465,
		47.129971, 39.810352, 25.088894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.319122, 39.752441, 25.248575>,  <46.718296, 39.397526, 24.701469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.319122, 39.752441, 25.248575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.644291, 39.977242, 25.187496>,  <46.839394, 40.112122, 25.150848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.644291, 39.977242, 25.187496>,  <46.319122, 39.752441, 25.248575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.644291, 39.977242, 25.187496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544678, 0.826502, 0.142200,
		0.206123, -0.032425, 0.977989,
		0.812920, 0.561999, -0.152700,
		46.888168, 40.145840, 25.141685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982552, 39.007320, 25.322641>,  <46.319122, 39.752441, 25.248575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982552, 39.007320, 25.322641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825363, 39.304581, 25.539272>,  <45.731049, 39.482937, 25.669250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825363, 39.304581, 25.539272>,  <45.982552, 39.007320, 25.322641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825363, 39.304581, 25.539272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886025, -0.148426, -0.439238,
		-0.246035, -0.652457, 0.716775,
		-0.392972, 0.743149, 0.541575,
		45.707470, 39.527527, 25.701744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458073, 38.781277, 25.870134>,  <45.982552, 39.007320, 25.322641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458073, 38.781277, 25.870134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408634, 39.132252, 25.684734>,  <45.378971, 39.342834, 25.573494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408634, 39.132252, 25.684734>,  <45.458073, 38.781277, 25.870134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408634, 39.132252, 25.684734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820663, -0.352969, -0.449361,
		-0.557886, 0.324840, 0.763703,
		-0.123593, 0.877435, -0.463501,
		45.371555, 39.395481, 25.545685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710258, 38.969193, 26.141056>,  <45.458073, 38.781277, 25.870134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710258, 38.969193, 26.141056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880962, 39.064629, 25.792126>,  <44.983383, 39.121891, 25.582767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880962, 39.064629, 25.792126>,  <44.710258, 38.969193, 26.141056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880962, 39.064629, 25.792126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660473, -0.576685, -0.480843,
		-0.617781, 0.781352, -0.088523,
		0.426757, 0.238589, -0.872327,
		45.008991, 39.136204, 25.530428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188980, 39.340324, 25.712210>,  <44.710258, 38.969193, 26.141056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188980, 39.340324, 25.712210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476898, 39.139584, 25.520359>,  <44.649651, 39.019138, 25.405249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476898, 39.139584, 25.520359>,  <44.188980, 39.340324, 25.712210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476898, 39.139584, 25.520359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677611, -0.658018, -0.328412,
		-0.150789, 0.561390, -0.813698,
		0.719795, -0.501850, -0.479626,
		44.692837, 38.989029, 25.376471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868984, 39.190193, 25.207888>,  <44.188980, 39.340324, 25.712210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868984, 39.190193, 25.207888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194309, 38.958279, 25.188389>,  <44.389503, 38.819130, 25.176689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194309, 38.958279, 25.188389>,  <43.868984, 39.190193, 25.207888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194309, 38.958279, 25.188389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528069, -0.700384, -0.480214,
		0.244280, 0.416304, -0.875796,
		0.813309, -0.579787, -0.048747,
		44.438301, 38.784344, 25.173765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839626, 38.920658, 24.528975>,  <43.868984, 39.190193, 25.207888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839626, 38.920658, 24.528975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051319, 38.650558, 24.734482>,  <44.178333, 38.488499, 24.857786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051319, 38.650558, 24.734482>,  <43.839626, 38.920658, 24.528975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051319, 38.650558, 24.734482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527406, -0.736129, -0.424213,
		0.664649, -0.046459, -0.745710,
		0.529230, -0.675245, 0.513770,
		44.210087, 38.447987, 24.888613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105572, 38.487572, 24.037552>,  <43.839626, 38.920658, 24.528975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105572, 38.487572, 24.037552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082664, 38.289497, 24.384312>,  <44.068920, 38.170654, 24.592367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082664, 38.289497, 24.384312>,  <44.105572, 38.487572, 24.037552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082664, 38.289497, 24.384312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564949, -0.699850, -0.437085,
		0.823136, -0.514786, -0.239671,
		-0.057272, -0.495183, 0.866899,
		44.065483, 38.140942, 24.644381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231911, 37.760944, 23.903700>,  <44.105572, 38.487572, 24.037552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231911, 37.760944, 23.903700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023926, 37.798336, 24.243324>,  <43.899136, 37.820770, 24.447098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023926, 37.798336, 24.243324>,  <44.231911, 37.760944, 23.903700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023926, 37.798336, 24.243324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643165, -0.696964, -0.317143,
		0.562118, -0.710988, 0.422515,
		-0.519963, 0.093475, 0.849059,
		43.867935, 37.826378, 24.498041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040936, 37.042805, 24.061132>,  <44.231911, 37.760944, 23.903700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040936, 37.042805, 24.061132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791767, 37.271465, 24.274742>,  <43.642265, 37.408661, 24.402908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791767, 37.271465, 24.274742>,  <44.040936, 37.042805, 24.061132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791767, 37.271465, 24.274742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696428, -0.716168, -0.045738,
		0.356306, -0.400402, 0.844230,
		-0.622924, 0.571649, 0.534026,
		43.604889, 37.442959, 24.434950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603981, 36.585712, 24.359673>,  <44.040936, 37.042805, 24.061132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603981, 36.585712, 24.359673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393627, 36.921619, 24.413696>,  <43.267414, 37.123165, 24.446110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393627, 36.921619, 24.413696>,  <43.603981, 36.585712, 24.359673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393627, 36.921619, 24.413696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850144, -0.523908, -0.052681,
		0.026518, -0.142522, 0.989436,
		-0.525882, 0.839766, 0.135058,
		43.235863, 37.173550, 24.454214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134426, 36.413666, 24.910555>,  <43.603981, 36.585712, 24.359673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134426, 36.413666, 24.910555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975025, 36.723740, 24.714478>,  <42.879383, 36.909782, 24.596832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975025, 36.723740, 24.714478>,  <43.134426, 36.413666, 24.910555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975025, 36.723740, 24.714478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840651, -0.522425, -0.142750,
		-0.366746, 0.355194, 0.859846,
		-0.398501, 0.775183, -0.490192,
		42.855476, 36.956295, 24.567419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367580, 36.410503, 25.078999>,  <43.134426, 36.413666, 24.910555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367580, 36.410503, 25.078999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374760, 36.640240, 24.751629>,  <42.379066, 36.778080, 24.555208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374760, 36.640240, 24.751629>,  <42.367580, 36.410503, 25.078999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374760, 36.640240, 24.751629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897069, -0.352222, -0.266848,
		-0.441527, 0.738970, 0.508898,
		0.017947, 0.574337, -0.818423,
		42.380142, 36.812542, 24.506102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751076, 36.656921, 25.017527>,  <42.367580, 36.410503, 25.078999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751076, 36.656921, 25.017527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906242, 36.672318, 24.649170>,  <41.999344, 36.681553, 24.428156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906242, 36.672318, 24.649170>,  <41.751076, 36.656921, 25.017527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906242, 36.672318, 24.649170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867202, -0.323207, -0.378811,
		-0.312216, 0.945546, -0.092003,
		0.387919, 0.038486, -0.920889,
		42.022617, 36.683865, 24.372904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123463, 36.778553, 24.567427>,  <41.751076, 36.656921, 25.017527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123463, 36.778553, 24.567427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408432, 36.669777, 24.308659>,  <41.579414, 36.604511, 24.153399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408432, 36.669777, 24.308659>,  <41.123463, 36.778553, 24.567427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408432, 36.669777, 24.308659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694816, -0.402635, -0.595915,
		-0.098418, 0.874032, -0.475796,
		0.712421, -0.271942, -0.646918,
		41.622158, 36.588196, 24.114584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939568, 37.048016, 23.834446>,  <41.123463, 36.778553, 24.567427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939568, 37.048016, 23.834446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183292, 36.733639, 23.792431>,  <41.329529, 36.545013, 23.767221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183292, 36.733639, 23.792431>,  <40.939568, 37.048016, 23.834446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183292, 36.733639, 23.792431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679191, -0.448958, -0.580635,
		0.409187, 0.425130, -0.807360,
		0.609315, -0.785940, -0.105036,
		41.366089, 36.497856, 23.760920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819042, 36.882103, 23.117178>,  <40.939568, 37.048016, 23.834446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819042, 36.882103, 23.117178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995541, 36.561138, 23.277897>,  <41.101440, 36.368561, 23.374329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995541, 36.561138, 23.277897>,  <40.819042, 36.882103, 23.117178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995541, 36.561138, 23.277897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480494, -0.589404, -0.649406,
		0.757912, 0.093484, -0.645624,
		0.441242, -0.802411, 0.401798,
		41.127914, 36.320415, 23.398436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231895, 36.553974, 22.584404>,  <40.819042, 36.882103, 23.117178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231895, 36.553974, 22.584404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189274, 36.273693, 22.866585>,  <41.163700, 36.105526, 23.035892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189274, 36.273693, 22.866585>,  <41.231895, 36.553974, 22.584404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189274, 36.273693, 22.866585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282921, -0.658798, -0.697095,
		0.953206, -0.273866, -0.128045,
		-0.106555, -0.700702, 0.705453,
		41.157307, 36.063484, 23.078220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506371, 35.974529, 22.287855>,  <41.231895, 36.553974, 22.584404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506371, 35.974529, 22.287855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265007, 35.819950, 22.566868>,  <41.120190, 35.727203, 22.734276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265007, 35.819950, 22.566868>,  <41.506371, 35.974529, 22.287855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265007, 35.819950, 22.566868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343793, -0.663184, -0.664825,
		0.719516, -0.640969, 0.267312,
		-0.603409, -0.386452, 0.697532,
		41.083984, 35.704014, 22.776127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532753, 35.232639, 22.200558>,  <41.506371, 35.974529, 22.287855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532753, 35.232639, 22.200558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208023, 35.297703, 22.424873>,  <41.013184, 35.336739, 22.559464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208023, 35.297703, 22.424873>,  <41.532753, 35.232639, 22.200558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208023, 35.297703, 22.424873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528569, -0.612808, -0.587436,
		0.248108, -0.773311, 0.583466,
		-0.811823, 0.162654, 0.560791,
		40.964478, 35.346500, 22.593111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279545, 34.598625, 22.430782>,  <41.532753, 35.232639, 22.200558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279545, 34.598625, 22.430782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955872, 34.828743, 22.478546>,  <40.761669, 34.966812, 22.507204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955872, 34.828743, 22.478546>,  <41.279545, 34.598625, 22.430782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955872, 34.828743, 22.478546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543781, -0.656290, -0.523054,
		-0.222542, -0.488180, 0.843893,
		-0.809183, 0.575295, 0.119411,
		40.713116, 35.001331, 22.514370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707394, 34.127052, 22.651091>,  <41.279545, 34.598625, 22.430782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707394, 34.127052, 22.651091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550125, 34.458885, 22.492489>,  <40.455765, 34.657986, 22.397327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550125, 34.458885, 22.492489>,  <40.707394, 34.127052, 22.651091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550125, 34.458885, 22.492489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632305, -0.557026, -0.538435,
		-0.667537, 0.039014, 0.743554,
		-0.393172, 0.829578, -0.396504,
		40.432175, 34.707760, 22.373537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884060, 33.990421, 22.719776>,  <40.707394, 34.127052, 22.651091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884060, 33.990421, 22.719776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931328, 34.287262, 22.455860>,  <39.959690, 34.465366, 22.297510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931328, 34.287262, 22.455860>,  <39.884060, 33.990421, 22.719776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931328, 34.287262, 22.455860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774250, -0.347177, -0.529156,
		-0.621751, 0.573374, 0.533543,
		0.118170, 0.742099, -0.659792,
		39.966778, 34.509892, 22.257923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327003, 34.335091, 22.824198>,  <39.884060, 33.990421, 22.719776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327003, 34.335091, 22.824198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453007, 34.427380, 22.455952>,  <39.528610, 34.482754, 22.235004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453007, 34.427380, 22.455952>,  <39.327003, 34.335091, 22.824198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453007, 34.427380, 22.455952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845307, -0.372842, -0.382682,
		-0.431537, 0.898753, 0.077580,
		0.315012, 0.230720, -0.920617,
		39.547512, 34.496597, 22.179766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798588, 34.607796, 22.531687>,  <39.327003, 34.335091, 22.824198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798588, 34.607796, 22.531687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027504, 34.494949, 22.223686>,  <39.164852, 34.427242, 22.038887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027504, 34.494949, 22.223686>,  <38.798588, 34.607796, 22.531687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027504, 34.494949, 22.223686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769516, -0.509277, -0.385334,
		-0.283434, 0.813048, -0.508546,
		0.572286, -0.282117, -0.769999,
		39.199188, 34.410313, 21.992687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468277, 34.757870, 21.806664>,  <38.798588, 34.607796, 22.531687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468277, 34.757870, 21.806664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716640, 34.444496, 21.796051>,  <38.865658, 34.256474, 21.789684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716640, 34.444496, 21.796051>,  <38.468277, 34.757870, 21.806664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716640, 34.444496, 21.796051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740457, -0.575068, -0.347879,
		0.257283, 0.235646, -0.937164,
		0.620909, -0.783433, -0.026531,
		38.902912, 34.209465, 21.788092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129333, 35.106308, 21.175564>,  <38.468277, 34.757870, 21.806664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129333, 35.106308, 21.175564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045540, 34.849747, 21.470783>,  <37.995262, 34.695808, 21.647915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045540, 34.849747, 21.470783>,  <38.129333, 35.106308, 21.175564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045540, 34.849747, 21.470783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941649, -0.071038, -0.329015,
		0.263462, -0.763905, -0.589098,
		-0.209488, -0.641406, 0.738046,
		37.982693, 34.657326, 21.692198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821396, 34.483788, 20.916477>,  <38.129333, 35.106308, 21.175564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821396, 34.483788, 20.916477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681931, 34.549500, 21.285572>,  <37.598251, 34.588928, 21.507029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681931, 34.549500, 21.285572>,  <37.821396, 34.483788, 20.916477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681931, 34.549500, 21.285572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931614, -0.168537, -0.322009,
		0.102615, -0.971909, 0.211809,
		-0.348661, 0.164281, 0.922739,
		37.577332, 34.598785, 21.562393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177532, 34.031860, 21.120298>,  <37.821396, 34.483788, 20.916477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177532, 34.031860, 21.120298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145634, 34.340416, 21.372837>,  <37.126495, 34.525551, 21.524361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145634, 34.340416, 21.372837>,  <37.177532, 34.031860, 21.120298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145634, 34.340416, 21.372837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988543, 0.020221, -0.149578,
		-0.128150, -0.636041, 0.760940,
		-0.079750, 0.771390, 0.631345,
		37.121708, 34.571835, 21.562241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572517, 33.896221, 21.430368>,  <37.177532, 34.031860, 21.120298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572517, 33.896221, 21.430368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654480, 34.287304, 21.412025>,  <36.703659, 34.521954, 21.401020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654480, 34.287304, 21.412025>,  <36.572517, 33.896221, 21.430368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654480, 34.287304, 21.412025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952536, 0.188420, -0.239108,
		-0.225136, 0.092679, 0.969909,
		0.204911, 0.977706, -0.045860,
		36.715954, 34.580616, 21.398268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991562, 34.392471, 21.614679>,  <36.572517, 33.896221, 21.430368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991562, 34.392471, 21.614679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195705, 34.665386, 21.405293>,  <36.318192, 34.829136, 21.279659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195705, 34.665386, 21.405293>,  <35.991562, 34.392471, 21.614679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195705, 34.665386, 21.405293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852634, 0.322184, -0.411355,
		-0.112008, 0.656267, 0.746169,
		0.510362, 0.682283, -0.523469,
		36.348816, 34.870071, 21.248251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841476, 35.240242, 21.556349>,  <35.991562, 34.392471, 21.614679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841476, 35.240242, 21.556349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003311, 35.062710, 21.236519>,  <36.100414, 34.956188, 21.044621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003311, 35.062710, 21.236519>,  <35.841476, 35.240242, 21.556349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003311, 35.062710, 21.236519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596839, 0.534298, -0.598588,
		0.692884, 0.719401, -0.048725,
		0.404592, -0.443833, -0.799574,
		36.124687, 34.929562, 20.996647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309441, 34.858753, 21.703161>,  <35.841476, 35.240242, 21.556349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309441, 34.858753, 21.703161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077415, 35.122971, 21.893826>,  <34.938198, 35.281502, 22.008224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077415, 35.122971, 21.893826>,  <35.309441, 34.858753, 21.703161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077415, 35.122971, 21.893826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281354, -0.711625, 0.643762,
		0.764436, 0.239315, 0.598637,
		-0.580067, 0.660543, 0.476660,
		34.903397, 35.321133, 22.036823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515198, 34.796650, 22.407759>,  <35.309441, 34.858753, 21.703161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515198, 34.796650, 22.407759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146591, 34.951893, 22.402424>,  <34.925426, 35.045040, 22.399223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146591, 34.951893, 22.402424>,  <35.515198, 34.796650, 22.407759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146591, 34.951893, 22.402424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253150, -0.574322, 0.778504,
		0.294487, 0.720781, 0.627497,
		-0.921517, 0.388110, -0.013335,
		34.870136, 35.068325, 22.398424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483307, 34.873985, 23.098612>,  <35.515198, 34.796650, 22.407759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483307, 34.873985, 23.098612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110447, 34.923634, 22.962559>,  <34.886730, 34.953423, 22.880926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110447, 34.923634, 22.962559>,  <35.483307, 34.873985, 23.098612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110447, 34.923634, 22.962559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354666, -0.502038, 0.788777,
		-0.072859, 0.855893, 0.511995,
		-0.932150, 0.124118, -0.340134,
		34.830803, 34.960869, 22.860518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062057, 34.959419, 23.688972>,  <35.483307, 34.873985, 23.098612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062057, 34.959419, 23.688972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806332, 34.857224, 23.398869>,  <34.652897, 34.795906, 23.224808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806332, 34.857224, 23.398869>,  <35.062057, 34.959419, 23.688972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806332, 34.857224, 23.398869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422511, -0.671327, 0.608937,
		-0.642463, 0.695733, 0.321243,
		-0.639317, -0.255491, -0.725257,
		34.614536, 34.780575, 23.181292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438271, 34.966194, 23.951075>,  <35.062057, 34.959419, 23.688972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438271, 34.966194, 23.951075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386726, 34.716629, 23.642757>,  <34.355801, 34.566891, 23.457767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386726, 34.716629, 23.642757>,  <34.438271, 34.966194, 23.951075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386726, 34.716629, 23.642757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483548, -0.639074, 0.598135,
		-0.865780, 0.449794, -0.219340,
		-0.128863, -0.623915, -0.770795,
		34.348068, 34.529453, 23.411518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771862, 34.838192, 24.021711>,  <34.438271, 34.966194, 23.951075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771862, 34.838192, 24.021711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942375, 34.548454, 23.804970>,  <34.044685, 34.374611, 23.674925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942375, 34.548454, 23.804970>,  <33.771862, 34.838192, 24.021711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942375, 34.548454, 23.804970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481799, -0.688779, 0.541713,
		-0.765606, 0.030143, -0.642603,
		0.426283, -0.724344, -0.541857,
		34.070259, 34.331150, 23.642414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319485, 34.351841, 23.859192>,  <33.771862, 34.838192, 24.021711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319485, 34.351841, 23.859192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660069, 34.144032, 23.830578>,  <33.864418, 34.019344, 23.813410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660069, 34.144032, 23.830578>,  <33.319485, 34.351841, 23.859192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660069, 34.144032, 23.830578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406463, -0.739951, 0.535966,
		-0.331380, -0.427275, -0.841203,
		0.851455, -0.519526, -0.071533,
		33.915504, 33.988174, 23.809118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105278, 33.758175, 23.832634>,  <33.319485, 34.351841, 23.859192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105278, 33.758175, 23.832634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490929, 33.690365, 23.914345>,  <33.722317, 33.649677, 23.963371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490929, 33.690365, 23.914345>,  <33.105278, 33.758175, 23.832634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490929, 33.690365, 23.914345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260959, -0.746382, 0.612221,
		0.048680, -0.643564, -0.763843,
		0.964122, -0.169528, 0.204278,
		33.780167, 33.639507, 23.975628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234867, 33.028801, 23.762545>,  <33.105278, 33.758175, 23.832634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234867, 33.028801, 23.762545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533871, 33.153778, 23.997017>,  <33.713272, 33.228764, 24.137701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533871, 33.153778, 23.997017>,  <33.234867, 33.028801, 23.762545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533871, 33.153778, 23.997017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169428, -0.763595, 0.623070,
		0.642280, -0.565066, -0.517858,
		0.747509, 0.312446, 0.586180,
		33.758125, 33.247513, 24.172871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599541, 32.410019, 24.081007>,  <33.234867, 33.028801, 23.762545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599541, 32.410019, 24.081007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763950, 32.680538, 24.325523>,  <33.862598, 32.842850, 24.472233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763950, 32.680538, 24.325523>,  <33.599541, 32.410019, 24.081007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763950, 32.680538, 24.325523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084197, -0.639523, 0.764147,
		0.907726, -0.365555, -0.205920,
		0.411029, 0.676298, 0.611291,
		33.887260, 32.883427, 24.508911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172134, 32.037231, 24.498585>,  <33.599541, 32.410019, 24.081007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172134, 32.037231, 24.498585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049152, 32.361874, 24.697289>,  <33.975365, 32.556660, 24.816511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049152, 32.361874, 24.697289>,  <34.172134, 32.037231, 24.498585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049152, 32.361874, 24.697289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008591, -0.524393, 0.851433,
		0.951525, 0.257506, 0.168197,
		-0.307451, 0.811605, 0.496761,
		33.956917, 32.605354, 24.846317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693237, 32.066036, 24.952324>,  <34.172134, 32.037231, 24.498585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693237, 32.066036, 24.952324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370697, 32.253250, 25.096958>,  <34.177174, 32.365578, 25.183739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370697, 32.253250, 25.096958>,  <34.693237, 32.066036, 24.952324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370697, 32.253250, 25.096958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011931, -0.598367, 0.801133,
		0.591321, 0.650306, 0.476908,
		-0.806348, 0.468037, 0.361586,
		34.128792, 32.393661, 25.205435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715588, 32.017117, 25.649700>,  <34.693237, 32.066036, 24.952324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715588, 32.017117, 25.649700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336411, 32.135792, 25.603428>,  <34.108906, 32.206997, 25.575665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336411, 32.135792, 25.603428>,  <34.715588, 32.017117, 25.649700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336411, 32.135792, 25.603428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274201, -0.575741, 0.770283,
		0.161934, 0.761903, 0.627122,
		-0.947940, 0.296693, -0.115682,
		34.052029, 32.224800, 25.568724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524487, 32.200157, 26.317965>,  <34.715588, 32.017117, 25.649700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524487, 32.200157, 26.317965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181675, 32.111919, 26.131702>,  <33.975986, 32.058979, 26.019945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181675, 32.111919, 26.131702>,  <34.524487, 32.200157, 26.317965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181675, 32.111919, 26.131702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194203, -0.698790, 0.688460,
		-0.477265, 0.680464, 0.556046,
		-0.857031, -0.220592, -0.465657,
		33.924564, 32.045742, 25.992006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049026, 32.104595, 26.869057>,  <34.524487, 32.200157, 26.317965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049026, 32.104595, 26.869057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878990, 31.904476, 26.567329>,  <33.776966, 31.784405, 26.386293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878990, 31.904476, 26.567329>,  <34.049026, 32.104595, 26.869057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878990, 31.904476, 26.567329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292641, -0.712645, 0.637573,
		-0.856537, 0.491774, 0.156534,
		-0.425095, -0.500296, -0.754320,
		33.751461, 31.754387, 26.341034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498421, 31.806351, 27.183954>,  <34.049026, 32.104595, 26.869057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498421, 31.806351, 27.183954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540714, 31.609337, 26.838417>,  <33.566090, 31.491127, 26.631094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540714, 31.609337, 26.838417>,  <33.498421, 31.806351, 27.183954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540714, 31.609337, 26.838417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200060, -0.861488, 0.466706,
		-0.974062, 0.123476, -0.189622,
		0.105730, -0.492537, -0.863845,
		33.572433, 31.461576, 26.579264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789768, 31.478777, 27.056950>,  <33.498421, 31.806351, 27.183954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789768, 31.478777, 27.056950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088982, 31.284943, 26.875565>,  <33.268509, 31.168642, 26.766733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088982, 31.284943, 26.875565>,  <32.789768, 31.478777, 27.056950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088982, 31.284943, 26.875565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244922, -0.836607, 0.490001,
		-0.616818, -0.255472, -0.744493,
		0.748030, -0.484585, -0.453463,
		33.313389, 31.139566, 26.739525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517719, 30.765440, 27.090437>,  <32.789768, 31.478777, 27.056950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517719, 30.765440, 27.090437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889091, 30.701561, 26.956268>,  <33.111916, 30.663233, 26.875767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889091, 30.701561, 26.956268>,  <32.517719, 30.765440, 27.090437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889091, 30.701561, 26.956268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005863, -0.896479, 0.443046,
		-0.371453, -0.413305, -0.831385,
		0.928433, -0.159697, -0.335423,
		33.167622, 30.653652, 26.855640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486492, 30.108032, 26.850946>,  <32.517719, 30.765440, 27.090437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486492, 30.108032, 26.850946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870724, 30.189716, 26.926399>,  <33.101265, 30.238726, 26.971672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870724, 30.189716, 26.926399>,  <32.486492, 30.108032, 26.850946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870724, 30.189716, 26.926399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070554, -0.835401, 0.545094,
		0.268898, -0.510299, -0.816878,
		0.960581, 0.204208, 0.188634,
		33.158897, 30.250978, 26.982990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891449, 29.532150, 26.819586>,  <32.486492, 30.108032, 26.850946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891449, 29.532150, 26.819586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141117, 29.746422, 27.047081>,  <33.290916, 29.874985, 27.183578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141117, 29.746422, 27.047081>,  <32.891449, 29.532150, 26.819586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141117, 29.746422, 27.047081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137938, -0.792066, 0.594646,
		0.769017, -0.292709, -0.568274,
		0.624169, 0.535680, 0.568736,
		33.328369, 29.907125, 27.217701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559647, 29.211388, 26.855831>,  <32.891449, 29.532150, 26.819586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559647, 29.211388, 26.855831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546524, 29.435097, 27.187164>,  <33.538651, 29.569323, 27.385965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546524, 29.435097, 27.187164>,  <33.559647, 29.211388, 26.855831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546524, 29.435097, 27.187164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377710, -0.760382, 0.528352,
		0.925343, 0.330203, -0.186298,
		-0.032805, 0.559273, 0.828334,
		33.536682, 29.602879, 27.435665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183624, 29.073647, 27.231277>,  <33.559647, 29.211388, 26.855831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183624, 29.073647, 27.231277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925541, 29.238064, 27.488880>,  <33.770691, 29.336714, 27.643442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925541, 29.238064, 27.488880>,  <34.183624, 29.073647, 27.231277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925541, 29.238064, 27.488880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413839, -0.520534, 0.746848,
		0.642215, 0.748390, 0.165749,
		-0.645211, 0.411043, 0.644008,
		33.731979, 29.361378, 27.682083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546654, 29.389687, 27.821268>,  <34.183624, 29.073647, 27.231277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546654, 29.389687, 27.821268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171333, 29.332600, 27.947266>,  <33.946140, 29.298347, 28.022865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171333, 29.332600, 27.947266>,  <34.546654, 29.389687, 27.821268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171333, 29.332600, 27.947266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345217, -0.440241, 0.828863,
		0.020383, 0.886465, 0.462346,
		-0.938302, -0.142715, 0.314996,
		33.889843, 29.289785, 28.041765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629036, 29.418329, 28.647959>,  <34.546654, 29.389687, 27.821268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629036, 29.418329, 28.647959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263977, 29.278084, 28.563919>,  <34.044941, 29.193937, 28.513494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263977, 29.278084, 28.563919>,  <34.629036, 29.418329, 28.647959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263977, 29.278084, 28.563919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008081, -0.529395, 0.848337,
		-0.408663, 0.772536, 0.485985,
		-0.912649, -0.350612, -0.210101,
		33.990181, 29.172901, 28.500889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274387, 29.331627, 29.274384>,  <34.629036, 29.418329, 28.647959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274387, 29.331627, 29.274384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072617, 29.070042, 29.048859>,  <33.951553, 28.913090, 28.913544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072617, 29.070042, 29.048859>,  <34.274387, 29.331627, 29.274384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072617, 29.070042, 29.048859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084509, -0.612447, 0.785981,
		-0.859308, 0.444118, 0.253669,
		-0.504428, -0.653963, -0.563813,
		33.921288, 28.873852, 28.879715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659443, 29.254318, 29.552748>,  <34.274387, 29.331627, 29.274384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659443, 29.254318, 29.552748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744194, 28.924152, 29.343445>,  <33.795044, 28.726053, 29.217863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744194, 28.924152, 29.343445>,  <33.659443, 29.254318, 29.552748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744194, 28.924152, 29.343445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338932, -0.564247, 0.752829,
		-0.916642, 0.017841, -0.399310,
		0.211878, -0.825414, -0.523259,
		33.807758, 28.676529, 29.186466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189644, 28.733097, 29.694490>,  <33.659443, 29.254318, 29.552748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189644, 28.733097, 29.694490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474995, 28.491753, 29.551914>,  <33.646206, 28.346947, 29.466368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474995, 28.491753, 29.551914>,  <33.189644, 28.733097, 29.694490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474995, 28.491753, 29.551914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273368, -0.707933, 0.651231,
		-0.645263, -0.367133, -0.669962,
		0.713376, -0.603361, -0.356441,
		33.689007, 28.310743, 29.444983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850590, 28.077368, 29.567411>,  <33.189644, 28.733097, 29.694490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850590, 28.077368, 29.567411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235218, 27.979733, 29.617683>,  <33.465996, 27.921152, 29.647846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235218, 27.979733, 29.617683>,  <32.850590, 28.077368, 29.567411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235218, 27.979733, 29.617683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268942, -0.745439, 0.609911,
		-0.055184, -0.620275, -0.782441,
		0.961574, -0.244088, 0.125681,
		33.523689, 27.906506, 29.655388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917694, 27.398220, 29.466728>,  <32.850590, 28.077368, 29.567411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917694, 27.398220, 29.466728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245827, 27.476494, 29.681675>,  <33.442707, 27.523458, 29.810644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245827, 27.476494, 29.681675>,  <32.917694, 27.398220, 29.466728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245827, 27.476494, 29.681675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187140, -0.796052, 0.575569,
		0.540404, -0.572720, -0.616405,
		0.820330, 0.195686, 0.537369,
		33.491924, 27.535200, 29.842886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247368, 26.768118, 29.613136>,  <32.917694, 27.398220, 29.466728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247368, 26.768118, 29.613136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397614, 27.006191, 29.897297>,  <33.487762, 27.149036, 30.067793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397614, 27.006191, 29.897297>,  <33.247368, 26.768118, 29.613136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397614, 27.006191, 29.897297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227029, -0.684081, 0.693174,
		0.898537, -0.421650, -0.121829,
		0.375617, 0.595184, 0.710400,
		33.510300, 27.184746, 30.110416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635540, 26.372551, 30.039248>,  <33.247368, 26.768118, 29.613136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635540, 26.372551, 30.039248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559662, 26.695602, 30.262585>,  <33.514133, 26.889433, 30.396587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559662, 26.695602, 30.262585>,  <33.635540, 26.372551, 30.039248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559662, 26.695602, 30.262585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247977, -0.589643, 0.768654,
		0.950012, 0.007354, 0.312126,
		-0.189696, 0.807631, 0.558345,
		33.502754, 26.937891, 30.430088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941467, 26.197878, 30.620335>,  <33.635540, 26.372551, 30.039248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941467, 26.197878, 30.620335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693871, 26.494476, 30.723896>,  <33.545311, 26.672436, 30.786034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693871, 26.494476, 30.723896>,  <33.941467, 26.197878, 30.620335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693871, 26.494476, 30.723896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256243, -0.502272, 0.825871,
		0.742419, 0.444867, 0.500906,
		-0.618994, 0.741496, 0.258903,
		33.508171, 26.716925, 30.801567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084137, 26.371206, 31.308130>,  <33.941467, 26.197878, 30.620335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084137, 26.371206, 31.308130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706375, 26.485851, 31.243690>,  <33.479717, 26.554638, 31.205027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706375, 26.485851, 31.243690>,  <34.084137, 26.371206, 31.308130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706375, 26.485851, 31.243690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289654, -0.493464, 0.820118,
		0.155560, 0.821187, 0.549049,
		-0.944406, 0.286611, -0.161097,
		33.423054, 26.571835, 31.195362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777348, 26.323322, 32.028133>,  <34.084137, 26.371206, 31.308130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777348, 26.323322, 32.028133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446651, 26.382500, 31.811024>,  <33.248234, 26.418007, 31.680758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446651, 26.382500, 31.811024>,  <33.777348, 26.323322, 32.028133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446651, 26.382500, 31.811024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551983, -0.399683, 0.731825,
		-0.108670, 0.904636, 0.412097,
		-0.826744, 0.147943, -0.542777,
		33.198627, 26.426882, 31.648191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170452, 26.733030, 32.411465>,  <33.777348, 26.323322, 32.028133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170452, 26.733030, 32.411465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002232, 26.514469, 32.121754>,  <32.901299, 26.383331, 31.947927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002232, 26.514469, 32.121754>,  <33.170452, 26.733030, 32.411465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002232, 26.514469, 32.121754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716695, -0.289427, 0.634492,
		-0.556316, 0.785922, -0.269887,
		-0.420549, -0.546405, -0.724280,
		32.876068, 26.350548, 31.904470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483238, 26.938122, 32.489910>,  <33.170452, 26.733030, 32.411465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483238, 26.938122, 32.489910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508411, 26.603477, 32.272243>,  <32.523518, 26.402691, 32.141644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508411, 26.603477, 32.272243>,  <32.483238, 26.938122, 32.489910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508411, 26.603477, 32.272243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658654, -0.444465, 0.607146,
		-0.749809, 0.320208, -0.579010,
		0.062937, -0.836611, -0.544170,
		32.527294, 26.352493, 32.108994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780081, 26.779011, 32.339157>,  <32.483238, 26.938122, 32.489910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780081, 26.779011, 32.339157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991140, 26.443317, 32.286579>,  <32.117775, 26.241901, 32.255032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991140, 26.443317, 32.286579>,  <31.780081, 26.779011, 32.339157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991140, 26.443317, 32.286579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601480, -0.478377, 0.639825,
		-0.599840, -0.258544, -0.757197,
		0.527649, -0.839232, -0.131440,
		32.149433, 26.191547, 32.247147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205462, 26.060541, 32.194359>,  <31.780081, 26.779011, 32.339157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205462, 26.060541, 32.194359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553381, 25.891140, 32.295624>,  <31.762133, 25.789499, 32.356384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553381, 25.891140, 32.295624>,  <31.205462, 26.060541, 32.194359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553381, 25.891140, 32.295624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463371, -0.524849, 0.714017,
		-0.169513, -0.738363, -0.652752,
		0.869800, -0.423502, 0.253167,
		31.814322, 25.764090, 32.371574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039078, 25.339876, 32.361027>,  <31.205462, 26.060541, 32.194359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039078, 25.339876, 32.361027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386763, 25.420357, 32.541687>,  <31.595373, 25.468645, 32.650085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386763, 25.420357, 32.541687>,  <31.039078, 25.339876, 32.361027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386763, 25.420357, 32.541687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273454, -0.565427, 0.778149,
		0.411940, -0.799882, -0.436456,
		0.869211, 0.201200, 0.451653,
		31.647526, 25.480717, 32.677181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093861, 24.760788, 32.739494>,  <31.039078, 25.339876, 32.361027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093861, 24.760788, 32.739494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338211, 25.022747, 32.917454>,  <31.484821, 25.179922, 33.024231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338211, 25.022747, 32.917454>,  <31.093861, 24.760788, 32.739494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338211, 25.022747, 32.917454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308381, -0.320743, 0.895558,
		0.729200, -0.684274, 0.006024,
		0.610875, 0.654899, 0.444903,
		31.521473, 25.219217, 33.050926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376686, 24.391073, 33.264339>,  <31.093861, 24.760788, 32.739494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376686, 24.391073, 33.264339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443731, 24.771343, 33.368740>,  <31.483957, 24.999506, 33.431381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443731, 24.771343, 33.368740>,  <31.376686, 24.391073, 33.264339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443731, 24.771343, 33.368740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381210, -0.181657, 0.906466,
		0.909168, -0.251431, 0.331959,
		0.167611, 0.950675, 0.261004,
		31.494015, 25.056545, 33.447041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668087, 24.328979, 33.834076>,  <31.376686, 24.391073, 33.264339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668087, 24.328979, 33.834076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500591, 24.691994, 33.846981>,  <31.400093, 24.909801, 33.854725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500591, 24.691994, 33.846981>,  <31.668087, 24.328979, 33.834076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500591, 24.691994, 33.846981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247752, -0.148345, 0.957399,
		0.873657, 0.392908, 0.286961,
		-0.418739, 0.907534, 0.032259,
		31.374969, 24.964254, 33.856659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988489, 24.658342, 34.384827>,  <31.668087, 24.328979, 33.834076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988489, 24.658342, 34.384827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627111, 24.819626, 34.326572>,  <31.410284, 24.916395, 34.291618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627111, 24.819626, 34.326572>,  <31.988489, 24.658342, 34.384827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627111, 24.819626, 34.326572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264905, -0.257951, 0.929132,
		0.337066, 0.878000, 0.339856,
		-0.903444, 0.403209, -0.145640,
		31.356077, 24.940588, 34.282879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865307, 25.144644, 34.874985>,  <31.988489, 24.658342, 34.384827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865307, 25.144644, 34.874985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496901, 25.033653, 34.765633>,  <31.275856, 24.967058, 34.700020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496901, 25.033653, 34.765633>,  <31.865307, 25.144644, 34.874985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496901, 25.033653, 34.765633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195744, -0.277087, 0.940695,
		-0.336772, 0.919907, 0.200886,
		-0.921015, -0.277478, -0.273381,
		31.220596, 24.950411, 34.683617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550892, 25.363155, 35.443012>,  <31.865307, 25.144644, 34.874985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550892, 25.363155, 35.443012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350954, 25.074730, 35.251087>,  <31.230991, 24.901674, 35.135933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350954, 25.074730, 35.251087>,  <31.550892, 25.363155, 35.443012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350954, 25.074730, 35.251087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185800, -0.451816, 0.872548,
		-0.845952, 0.525287, 0.091864,
		-0.499843, -0.721066, -0.479813,
		31.201000, 24.858410, 35.107143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976719, 25.185684, 35.918018>,  <31.550892, 25.363155, 35.443012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976719, 25.185684, 35.918018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096535, 24.896133, 35.669415>,  <31.168425, 24.722403, 35.520252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096535, 24.896133, 35.669415>,  <30.976719, 25.185684, 35.918018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096535, 24.896133, 35.669415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254150, -0.567346, 0.783279,
		-0.919610, -0.392582, 0.014030,
		0.299541, -0.723877, -0.621512,
		31.186398, 24.678970, 35.482960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477873, 25.021633, 36.526417>,  <30.976719, 25.185684, 35.918018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477873, 25.021633, 36.526417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100937, 24.889374, 36.505775>,  <29.874775, 24.810019, 36.493389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100937, 24.889374, 36.505775>,  <30.477873, 25.021633, 36.526417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100937, 24.889374, 36.505775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257620, 0.815178, -0.518764,
		0.213595, -0.475559, -0.853359,
		-0.942342, -0.330648, -0.051605,
		29.818233, 24.790180, 36.490295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281002, 24.889399, 35.805538>,  <30.477873, 25.021633, 36.526417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281002, 24.889399, 35.805538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983698, 25.015636, 36.041492>,  <29.805315, 25.091379, 36.183064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983698, 25.015636, 36.041492>,  <30.281002, 24.889399, 35.805538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983698, 25.015636, 36.041492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118347, 0.805805, -0.580234,
		-0.658452, -0.501076, -0.561573,
		-0.743260, 0.315596, 0.589885,
		29.760719, 25.110315, 36.218456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677538, 25.105837, 35.440525>,  <30.281002, 24.889399, 35.805538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677538, 25.105837, 35.440525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748322, 25.281868, 35.792664>,  <29.790791, 25.387487, 36.003948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748322, 25.281868, 35.792664>,  <29.677538, 25.105837, 35.440525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748322, 25.281868, 35.792664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037403, 0.890813, -0.452829,
		-0.983508, 0.113059, 0.141176,
		0.176958, 0.440080, 0.880350,
		29.801409, 25.413893, 36.056770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288015, 25.690973, 35.354694>,  <29.677538, 25.105837, 35.440525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288015, 25.690973, 35.354694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580610, 25.730984, 35.624485>,  <29.756166, 25.754990, 35.786362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580610, 25.730984, 35.624485>,  <29.288015, 25.690973, 35.354694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580610, 25.730984, 35.624485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240388, 0.887838, -0.392373,
		-0.638077, 0.449152, 0.625396,
		0.731486, 0.100027, 0.674480,
		29.800056, 25.760992, 35.826828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235096, 26.299122, 35.844234>,  <29.288015, 25.690973, 35.354694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235096, 26.299122, 35.844234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619596, 26.270664, 35.737698>,  <29.850296, 26.253590, 35.673775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619596, 26.270664, 35.737698>,  <29.235096, 26.299122, 35.844234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619596, 26.270664, 35.737698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109603, 0.787865, -0.606016,
		0.252954, 0.611725, 0.749538,
		0.961250, -0.071143, -0.266341,
		29.907972, 26.249321, 35.657795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600723, 26.909941, 35.974358>,  <29.235096, 26.299122, 35.844234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600723, 26.909941, 35.974358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722862, 26.727478, 35.640007>,  <29.796144, 26.618000, 35.439396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722862, 26.727478, 35.640007>,  <29.600723, 26.909941, 35.974358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722862, 26.727478, 35.640007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043066, 0.870282, -0.490667,
		0.951267, 0.185821, 0.246093,
		0.305346, -0.456157, -0.835873,
		29.814466, 26.590631, 35.389244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990486, 26.669842, 36.546753>,  <29.600723, 26.909941, 35.974358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990486, 26.669842, 36.546753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154942, 26.558552, 36.199524>,  <30.253614, 26.491777, 35.991184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154942, 26.558552, 36.199524>,  <29.990486, 26.669842, 36.546753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154942, 26.558552, 36.199524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032811, 0.947150, -0.319108,
		0.910982, 0.159680, 0.380281,
		0.411138, -0.278225, -0.868076,
		30.278282, 26.475084, 35.939102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475674, 27.112309, 36.406178>,  <29.990486, 26.669842, 36.546753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475674, 27.112309, 36.406178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438522, 26.966270, 36.035648>,  <30.416231, 26.878647, 35.813332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438522, 26.966270, 36.035648>,  <30.475674, 27.112309, 36.406178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438522, 26.966270, 36.035648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107514, 0.921230, -0.373866,
		0.989856, -0.134318, -0.046310,
		-0.092879, -0.365095, -0.926326,
		30.410658, 26.856743, 35.757751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948713, 27.445036, 36.025780>,  <30.475674, 27.112309, 36.406178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948713, 27.445036, 36.025780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704214, 27.315468, 35.736935>,  <30.557514, 27.237726, 35.563625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704214, 27.315468, 35.736935>,  <30.948713, 27.445036, 36.025780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704214, 27.315468, 35.736935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137269, 0.855190, -0.499808,
		0.779442, -0.404632, -0.478271,
		-0.611250, -0.323919, -0.722115,
		30.520840, 27.218292, 35.520302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321400, 27.503553, 35.373089>,  <30.948713, 27.445036, 36.025780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321400, 27.503553, 35.373089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926485, 27.498104, 35.309742>,  <30.689537, 27.494835, 35.271732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926485, 27.498104, 35.309742>,  <31.321400, 27.503553, 35.373089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926485, 27.498104, 35.309742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058903, 0.894031, -0.444117,
		0.147635, -0.447799, -0.881862,
		-0.987286, -0.013623, -0.158367,
		30.630299, 27.494017, 35.262230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287737, 27.593523, 34.674946>,  <31.321400, 27.503553, 35.373089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287737, 27.593523, 34.674946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914274, 27.696175, 34.774887>,  <30.690197, 27.757767, 34.834850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914274, 27.696175, 34.774887>,  <31.287737, 27.593523, 34.674946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914274, 27.696175, 34.774887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003623, 0.704313, -0.709881,
		-0.358151, -0.661880, -0.658516,
		-0.933657, 0.256631, 0.249852,
		30.634178, 27.773165, 34.849842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071957, 27.858137, 34.085785>,  <31.287737, 27.593523, 34.674946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071957, 27.858137, 34.085785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765123, 27.951611, 34.324776>,  <30.581024, 28.007694, 34.468170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765123, 27.951611, 34.324776>,  <31.071957, 27.858137, 34.085785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765123, 27.951611, 34.324776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321929, 0.665357, -0.673544,
		-0.554931, -0.709008, -0.435154,
		-0.767081, 0.233683, 0.597477,
		30.535000, 28.021715, 34.504021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496225, 27.850964, 33.676327>,  <31.071957, 27.858137, 34.085785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496225, 27.850964, 33.676327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425074, 28.089661, 33.989315>,  <30.382383, 28.232880, 34.177109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425074, 28.089661, 33.989315>,  <30.496225, 27.850964, 33.676327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425074, 28.089661, 33.989315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159577, 0.767133, -0.621323,
		-0.971028, -0.235383, -0.041229,
		-0.177877, 0.596743, 0.782469,
		30.371710, 28.268684, 34.224056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907370, 28.295938, 33.453758>,  <30.496225, 27.850964, 33.676327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907370, 28.295938, 33.453758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082005, 28.466061, 33.770870>,  <30.186787, 28.568134, 33.961140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082005, 28.466061, 33.770870>,  <29.907370, 28.295938, 33.453758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082005, 28.466061, 33.770870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262022, 0.903112, -0.340196,
		-0.860659, -0.059201, 0.505728,
		0.436589, 0.425305, 0.792784,
		30.212982, 28.593653, 34.008705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408360, 28.744078, 33.780979>,  <29.907370, 28.295938, 33.453758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408360, 28.744078, 33.780979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773817, 28.878819, 33.872005>,  <29.993092, 28.959663, 33.926620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773817, 28.878819, 33.872005>,  <29.408360, 28.744078, 33.780979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773817, 28.878819, 33.872005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214039, 0.874531, -0.435181,
		-0.345607, 0.348892, 0.871109,
		0.913643, 0.336853, 0.227568,
		30.047911, 28.979874, 33.940277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320789, 29.388018, 33.836559>,  <29.408360, 28.744078, 33.780979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320789, 29.388018, 33.836559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718176, 29.379482, 33.791714>,  <29.956608, 29.374361, 33.764809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718176, 29.379482, 33.791714>,  <29.320789, 29.388018, 33.836559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718176, 29.379482, 33.791714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039621, 0.856769, -0.514176,
		0.107024, 0.515259, 0.850326,
		0.993467, -0.021338, -0.112110,
		30.016216, 29.373081, 33.758080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513134, 30.198811, 33.748745>,  <29.320789, 29.388018, 33.836559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513134, 30.198811, 33.748745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800028, 29.964527, 33.597736>,  <29.972164, 29.823957, 33.507130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800028, 29.964527, 33.597736>,  <29.513134, 30.198811, 33.748745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800028, 29.964527, 33.597736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121279, 0.638423, -0.760071,
		0.686198, 0.499363, 0.528932,
		0.717233, -0.585707, -0.377523,
		30.015198, 29.788815, 33.484478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261744, 30.595469, 33.650677>,  <29.513134, 30.198811, 33.748745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261744, 30.595469, 33.650677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237978, 30.292133, 33.391018>,  <30.223719, 30.110132, 33.235222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237978, 30.292133, 33.391018>,  <30.261744, 30.595469, 33.650677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237978, 30.292133, 33.391018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236274, 0.621134, -0.747240,
		0.969869, -0.197774, 0.142271,
		-0.059415, -0.758340, -0.649147,
		30.220154, 30.064632, 33.196274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678246, 30.681692, 33.159164>,  <30.261744, 30.595469, 33.650677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678246, 30.681692, 33.159164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488726, 30.413132, 32.931221>,  <30.375013, 30.251995, 32.794456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488726, 30.413132, 32.931221>,  <30.678246, 30.681692, 33.159164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488726, 30.413132, 32.931221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338150, 0.458786, -0.821687,
		0.813124, -0.582011, 0.009662,
		-0.473798, -0.671401, -0.569857,
		30.346586, 30.211712, 32.760265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106262, 30.571764, 32.576183>,  <30.678246, 30.681692, 33.159164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106262, 30.571764, 32.576183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770956, 30.407219, 32.433025>,  <30.569773, 30.308491, 32.347130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770956, 30.407219, 32.433025>,  <31.106262, 30.571764, 32.576183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770956, 30.407219, 32.433025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261870, 0.271996, -0.925982,
		0.478263, -0.869941, -0.120281,
		-0.838266, -0.411364, -0.357897,
		30.519476, 30.283810, 32.325657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284834, 30.311747, 31.892887>,  <31.106262, 30.571764, 32.576183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284834, 30.311747, 31.892887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891693, 30.385483, 31.894470>,  <30.655807, 30.429726, 31.895420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891693, 30.385483, 31.894470>,  <31.284834, 30.311747, 31.892887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891693, 30.385483, 31.894470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015410, 0.103510, -0.994509,
		-0.183739, -0.977396, -0.104576,
		-0.982854, 0.184342, 0.003957,
		30.596836, 30.440784, 31.895657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995741, 30.077497, 31.248287>,  <31.284834, 30.311747, 31.892887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995741, 30.077497, 31.248287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720612, 30.331520, 31.388916>,  <30.555534, 30.483932, 31.473293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720612, 30.331520, 31.388916>,  <30.995741, 30.077497, 31.248287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720612, 30.331520, 31.388916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096084, 0.400425, -0.911278,
		-0.719490, -0.660580, -0.214403,
		-0.687824, 0.635054, 0.351573,
		30.514265, 30.522036, 31.494389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574154, 30.207867, 30.677780>,  <30.995741, 30.077497, 31.248287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574154, 30.207867, 30.677780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472111, 30.500801, 30.930321>,  <30.410885, 30.676561, 31.081844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472111, 30.500801, 30.930321>,  <30.574154, 30.207867, 30.677780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472111, 30.500801, 30.930321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017926, 0.649260, -0.760355,
		-0.966747, -0.205290, -0.152503,
		-0.255107, 0.732337, 0.631350,
		30.395578, 30.720503, 31.119726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209986, 30.566904, 30.301863>,  <30.574154, 30.207867, 30.677780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209986, 30.566904, 30.301863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289845, 30.834904, 30.587868>,  <30.337761, 30.995703, 30.759472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289845, 30.834904, 30.587868>,  <30.209986, 30.566904, 30.301863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289845, 30.834904, 30.587868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006499, 0.728783, -0.684714,
		-0.979846, 0.141349, 0.141146,
		0.199649, 0.669997, 0.715014,
		30.349739, 31.035902, 30.802372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694761, 31.106422, 30.170843>,  <30.209986, 30.566904, 30.301863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694761, 31.106422, 30.170843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999073, 31.267895, 30.374119>,  <30.181660, 31.364779, 30.496084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999073, 31.267895, 30.374119>,  <29.694761, 31.106422, 30.170843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999073, 31.267895, 30.374119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200114, 0.598963, -0.775369,
		-0.617390, 0.691580, 0.374896,
		0.760779, 0.403683, 0.508189,
		30.227306, 31.389000, 30.526575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688551, 31.851007, 30.124598>,  <29.694761, 31.106422, 30.170843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688551, 31.851007, 30.124598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069109, 31.753429, 30.199795>,  <30.297443, 31.694883, 30.244913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069109, 31.753429, 30.199795>,  <29.688551, 31.851007, 30.124598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069109, 31.753429, 30.199795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300672, 0.603560, -0.738453,
		0.066677, 0.759083, 0.647570,
		0.951394, -0.243944, 0.187991,
		30.354527, 31.680246, 30.256191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013393, 32.472294, 30.050777>,  <29.688551, 31.851007, 30.124598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013393, 32.472294, 30.050777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308004, 32.202164, 30.035507>,  <30.484772, 32.040085, 30.026344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308004, 32.202164, 30.035507>,  <30.013393, 32.472294, 30.050777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308004, 32.202164, 30.035507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522886, 0.604258, -0.601218,
		0.429089, 0.422851, 0.798173,
		0.736527, -0.675329, -0.038177,
		30.528963, 31.999565, 30.024054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630053, 32.855556, 30.204296>,  <30.013393, 32.472294, 30.050777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630053, 32.855556, 30.204296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726158, 32.525810, 29.999279>,  <30.783821, 32.327965, 29.876268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726158, 32.525810, 29.999279>,  <30.630053, 32.855556, 30.204296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726158, 32.525810, 29.999279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512620, 0.556130, -0.654171,
		0.824314, -0.105566, 0.556203,
		0.240264, -0.824363, -0.512541,
		30.798237, 32.278500, 29.845516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276503, 33.010178, 30.050808>,  <30.630053, 32.855556, 30.204296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276503, 33.010178, 30.050808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185921, 32.705971, 29.807388>,  <31.131571, 32.523445, 29.661337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185921, 32.705971, 29.807388>,  <31.276503, 33.010178, 30.050808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185921, 32.705971, 29.807388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581973, 0.395347, -0.710639,
		0.781041, -0.515088, 0.353071,
		-0.226457, -0.760516, -0.608550,
		31.117983, 32.477818, 29.624823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907724, 32.745022, 29.799868>,  <31.276503, 33.010178, 30.050808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907724, 32.745022, 29.799868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621719, 32.646408, 29.538185>,  <31.450117, 32.587242, 29.381176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621719, 32.646408, 29.538185>,  <31.907724, 32.745022, 29.799868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621719, 32.646408, 29.538185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521456, 0.435228, -0.733935,
		0.465669, -0.865908, -0.182634,
		-0.715007, -0.246535, -0.654206,
		31.407217, 32.572449, 29.341925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293449, 32.457977, 29.201487>,  <31.907724, 32.745022, 29.799868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293449, 32.457977, 29.201487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927843, 32.574654, 29.088711>,  <31.708479, 32.644661, 29.021046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927843, 32.574654, 29.088711>,  <32.293449, 32.457977, 29.201487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927843, 32.574654, 29.088711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399895, 0.530924, -0.747130,
		-0.068242, -0.795636, -0.601919,
		-0.914017, 0.291690, -0.281940,
		31.653639, 32.662159, 29.004129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242596, 32.466965, 28.450848>,  <32.293449, 32.457977, 29.201487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242596, 32.466965, 28.450848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951826, 32.720024, 28.557690>,  <31.777365, 32.871861, 28.621794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951826, 32.720024, 28.557690>,  <32.242596, 32.466965, 28.450848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951826, 32.720024, 28.557690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155648, 0.530618, -0.833197,
		-0.668849, -0.564094, -0.484188,
		-0.726921, 0.632647, 0.267104,
		31.733749, 32.909817, 28.637821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005722, 32.648170, 27.861153>,  <32.242596, 32.466965, 28.450848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005722, 32.648170, 27.861153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870470, 32.935040, 28.104900>,  <31.789318, 33.107162, 28.251148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870470, 32.935040, 28.104900>,  <32.005722, 32.648170, 27.861153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870470, 32.935040, 28.104900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274646, 0.694520, -0.664990,
		-0.900131, -0.057494, -0.431809,
		-0.338133, 0.717173, 0.609368,
		31.769030, 33.150192, 28.287710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852825, 33.102829, 27.454210>,  <32.005722, 32.648170, 27.861153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852825, 33.102829, 27.454210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858763, 33.313568, 27.794144>,  <31.862326, 33.440010, 27.998104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858763, 33.313568, 27.794144>,  <31.852825, 33.102829, 27.454210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858763, 33.313568, 27.794144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240999, 0.822984, -0.514409,
		-0.970412, 0.212443, -0.114754,
		0.014842, 0.526844, 0.849832,
		31.863214, 33.471622, 28.049093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431047, 33.747471, 27.339420>,  <31.852825, 33.102829, 27.454210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431047, 33.747471, 27.339420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693869, 33.853279, 27.621784>,  <31.851562, 33.916763, 27.791203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693869, 33.853279, 27.621784>,  <31.431047, 33.747471, 27.339420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693869, 33.853279, 27.621784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436684, 0.629746, -0.642438,
		-0.614480, 0.730377, 0.298268,
		0.657055, 0.264516, 0.705910,
		31.890985, 33.932632, 27.833557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520487, 34.485081, 27.323130>,  <31.431047, 33.747471, 27.339420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520487, 34.485081, 27.323130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866255, 34.384312, 27.497169>,  <32.073715, 34.323849, 27.601593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866255, 34.384312, 27.497169>,  <31.520487, 34.485081, 27.323130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866255, 34.384312, 27.497169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483290, 0.654914, -0.580964,
		-0.138592, 0.712476, 0.687874,
		0.864421, -0.251925, 0.435098,
		32.125580, 34.308735, 27.627699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799917, 35.125282, 27.459080>,  <31.520487, 34.485081, 27.323130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799917, 35.125282, 27.459080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094837, 34.855267, 27.469711>,  <32.271790, 34.693256, 27.476091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094837, 34.855267, 27.469711>,  <31.799917, 35.125282, 27.459080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094837, 34.855267, 27.469711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531726, 0.555599, -0.639200,
		0.416718, 0.485417, 0.768581,
		0.737302, -0.675040, 0.026581,
		32.316029, 34.652756, 27.477686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398827, 35.457535, 27.586578>,  <31.799917, 35.125282, 27.459080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398827, 35.457535, 27.586578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502434, 35.113468, 27.410839>,  <32.564598, 34.907028, 27.305395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502434, 35.113468, 27.410839>,  <32.398827, 35.457535, 27.586578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502434, 35.113468, 27.410839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588606, 0.501221, -0.634287,
		0.765801, -0.094310, 0.636124,
		0.259020, -0.860164, -0.439347,
		32.580139, 34.855419, 27.279036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089661, 35.626740, 27.423998>,  <32.398827, 35.457535, 27.586578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089661, 35.626740, 27.423998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993851, 35.306286, 27.204613>,  <32.936367, 35.114014, 27.072983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993851, 35.306286, 27.204613>,  <33.089661, 35.626740, 27.423998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993851, 35.306286, 27.204613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520676, 0.370807, -0.769024,
		0.819467, -0.469769, 0.328316,
		-0.239522, -0.801136, -0.548462,
		32.921993, 35.065945, 27.040073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750134, 35.480598, 26.988483>,  <33.089661, 35.626740, 27.423998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750134, 35.480598, 26.988483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444038, 35.297398, 26.807529>,  <33.260384, 35.187477, 26.698957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444038, 35.297398, 26.807529>,  <33.750134, 35.480598, 26.988483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444038, 35.297398, 26.807529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440538, 0.139841, -0.886775,
		0.469407, -0.877883, 0.094756,
		-0.765234, -0.458003, -0.452383,
		33.214470, 35.159996, 26.671814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048058, 35.218227, 26.487953>,  <33.750134, 35.480598, 26.988483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048058, 35.218227, 26.487953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665337, 35.235157, 26.372890>,  <33.435703, 35.245316, 26.303854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665337, 35.235157, 26.372890>,  <34.048058, 35.218227, 26.487953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665337, 35.235157, 26.372890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287651, 0.281908, -0.915306,
		0.042353, -0.958507, -0.281903,
		-0.956799, 0.042324, -0.287655,
		33.378296, 35.247852, 26.286594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174324, 35.072636, 25.787247>,  <34.048058, 35.218227, 26.487953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174324, 35.072636, 25.787247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800972, 35.211845, 25.822327>,  <33.576962, 35.295372, 25.843374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800972, 35.211845, 25.822327>,  <34.174324, 35.072636, 25.787247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800972, 35.211845, 25.822327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128268, 0.551683, -0.824132,
		-0.335198, -0.757975, -0.559568,
		-0.933375, 0.348021, 0.087699,
		33.520958, 35.316254, 25.848637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841953, 35.055317, 25.066851>,  <34.174324, 35.072636, 25.787247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841953, 35.055317, 25.066851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615891, 35.305702, 25.281799>,  <33.480251, 35.455933, 25.410769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615891, 35.305702, 25.281799>,  <33.841953, 35.055317, 25.066851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615891, 35.305702, 25.281799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093860, 0.695930, -0.711949,
		-0.819626, -0.351926, -0.452064,
		-0.565158, 0.625962, 0.537371,
		33.446342, 35.493492, 25.443010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389931, 35.124409, 24.573757>,  <33.841953, 35.055317, 25.066851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389931, 35.124409, 24.573757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410210, 35.420403, 24.842041>,  <33.422379, 35.598000, 25.003012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410210, 35.420403, 24.842041>,  <33.389931, 35.124409, 24.573757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410210, 35.420403, 24.842041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050067, 0.672613, -0.738299,
		-0.997458, 0.003852, 0.071151,
		0.050700, 0.739984, 0.670711,
		33.425419, 35.642399, 25.043255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780163, 35.428596, 24.561699>,  <33.389931, 35.124409, 24.573757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780163, 35.428596, 24.561699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024666, 35.707466, 24.711533>,  <33.171368, 35.874786, 24.801434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024666, 35.707466, 24.711533>,  <32.780163, 35.428596, 24.561699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024666, 35.707466, 24.711533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095884, 0.535052, -0.839360,
		-0.785600, 0.477150, 0.393903,
		0.611260, 0.697171, 0.374586,
		33.208042, 35.916618, 24.823908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466080, 36.020130, 24.282423>,  <32.780163, 35.428596, 24.561699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466080, 36.020130, 24.282423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840500, 36.107685, 24.392624>,  <33.065151, 36.160217, 24.458744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840500, 36.107685, 24.392624>,  <32.466080, 36.020130, 24.282423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840500, 36.107685, 24.392624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073493, 0.644073, -0.761426,
		-0.344111, 0.732979, 0.586796,
		0.936049, 0.218889, 0.275501,
		33.121315, 36.173351, 24.475275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741028, 36.201984, 24.032953>,  <32.466080, 36.020130, 24.282423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741028, 36.201984, 24.032953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451319, 35.975521, 23.875526>,  <31.277493, 35.839645, 23.781071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451319, 35.975521, 23.875526>,  <31.741028, 36.201984, 24.032953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451319, 35.975521, 23.875526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253488, -0.312187, 0.915578,
		-0.641226, 0.762894, 0.082596,
		-0.724274, -0.566155, -0.393567,
		31.234035, 35.805676, 23.757456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201662, 36.258392, 24.499701>,  <31.741028, 36.201984, 24.032953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201662, 36.258392, 24.499701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102961, 35.920639, 24.309490>,  <31.043739, 35.717987, 24.195364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102961, 35.920639, 24.309490>,  <31.201662, 36.258392, 24.499701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102961, 35.920639, 24.309490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453671, -0.332953, 0.826635,
		-0.856327, 0.419706, -0.300917,
		-0.246752, -0.844387, -0.475525,
		31.028934, 35.667324, 24.166832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439363, 36.116318, 24.738508>,  <31.201662, 36.258392, 24.499701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439363, 36.116318, 24.738508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588583, 35.774525, 24.593899>,  <30.678114, 35.569450, 24.507133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588583, 35.774525, 24.593899>,  <30.439363, 36.116318, 24.738508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588583, 35.774525, 24.593899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513187, -0.514651, 0.686857,
		-0.772965, -0.070700, -0.630497,
		0.373047, -0.854480, -0.361525,
		30.700497, 35.518181, 24.485441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841507, 35.609119, 24.552572>,  <30.439363, 36.116318, 24.738508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841507, 35.609119, 24.552572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181768, 35.410999, 24.623081>,  <30.385925, 35.292130, 24.665386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181768, 35.410999, 24.623081>,  <29.841507, 35.609119, 24.552572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181768, 35.410999, 24.623081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472019, -0.571894, 0.670921,
		-0.231494, -0.653926, -0.720272,
		0.850652, -0.495296, 0.176275,
		30.436964, 35.262409, 24.675964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608608, 35.002811, 24.712883>,  <29.841507, 35.609119, 24.552572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608608, 35.002811, 24.712883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981169, 34.987865, 24.857712>,  <30.204704, 34.978897, 24.944609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981169, 34.987865, 24.857712>,  <29.608608, 35.002811, 24.712883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981169, 34.987865, 24.857712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358524, -0.265973, 0.894829,
		0.062863, -0.963256, -0.261125,
		0.931401, -0.037368, 0.362071,
		30.260590, 34.976654, 24.966333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547897, 34.412018, 25.116791>,  <29.608608, 35.002811, 24.712883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547897, 34.412018, 25.116791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885508, 34.582165, 25.247440>,  <30.088074, 34.684254, 25.325830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885508, 34.582165, 25.247440>,  <29.547897, 34.412018, 25.116791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885508, 34.582165, 25.247440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117152, -0.448080, 0.886284,
		0.523354, -0.786309, -0.328357,
		0.844024, 0.425372, 0.326622,
		30.138716, 34.709778, 25.345427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068012, 33.890720, 25.229895>,  <29.547897, 34.412018, 25.116791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068012, 33.890720, 25.229895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154152, 34.219090, 25.441444>,  <30.205835, 34.416111, 25.568375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154152, 34.219090, 25.441444>,  <30.068012, 33.890720, 25.229895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154152, 34.219090, 25.441444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080312, -0.524859, 0.847392,
		0.973229, -0.224961, -0.047098,
		0.215350, 0.820923, 0.528876,
		30.218758, 34.465366, 25.600107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399248, 33.661282, 25.876156>,  <30.068012, 33.890720, 25.229895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399248, 33.661282, 25.876156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316048, 34.035130, 25.991543>,  <30.266129, 34.259438, 26.060776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316048, 34.035130, 25.991543>,  <30.399248, 33.661282, 25.876156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316048, 34.035130, 25.991543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123970, -0.317729, 0.940042,
		0.970241, 0.159767, 0.181953,
		-0.207999, 0.934624, 0.288468,
		30.253649, 34.315517, 26.078083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719795, 33.762466, 26.429440>,  <30.399248, 33.661282, 25.876156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719795, 33.762466, 26.429440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440950, 34.046803, 26.466816>,  <30.273643, 34.217403, 26.489241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440950, 34.046803, 26.466816>,  <30.719795, 33.762466, 26.429440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440950, 34.046803, 26.466816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222659, -0.338533, 0.914231,
		0.681509, 0.616519, 0.394272,
		-0.697115, 0.710845, 0.093440,
		30.231815, 34.260056, 26.494848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820551, 34.115650, 27.101999>,  <30.719795, 33.762466, 26.429440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820551, 34.115650, 27.101999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447617, 34.176647, 26.970852>,  <30.223856, 34.213245, 26.892162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447617, 34.176647, 26.970852>,  <30.820551, 34.115650, 27.101999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447617, 34.176647, 26.970852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351899, -0.174055, 0.919713,
		0.083178, 0.972858, 0.215938,
		-0.932335, 0.152488, -0.327870,
		30.167915, 34.222393, 26.872490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261551, 34.288330, 27.696602>,  <30.820551, 34.115650, 27.101999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261551, 34.288330, 27.696602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964264, 34.232121, 27.434952>,  <29.785892, 34.198395, 27.277962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964264, 34.232121, 27.434952>,  <30.261551, 34.288330, 27.696602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964264, 34.232121, 27.434952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609606, -0.260647, 0.748628,
		-0.275698, 0.955152, 0.108052,
		-0.743217, -0.140526, -0.654127,
		29.741299, 34.189964, 27.238714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662254, 34.506725, 27.981527>,  <30.261551, 34.288330, 27.696602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662254, 34.506725, 27.981527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485374, 34.298061, 27.689682>,  <29.379248, 34.172863, 27.514574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485374, 34.298061, 27.689682>,  <29.662254, 34.506725, 27.981527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485374, 34.298061, 27.689682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700602, -0.307019, 0.644125,
		-0.560017, 0.795999, -0.229710,
		-0.442198, -0.521656, -0.729614,
		29.352715, 34.141563, 27.470798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944555, 34.676811, 28.074194>,  <29.662254, 34.506725, 27.981527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944555, 34.676811, 28.074194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969379, 34.328735, 27.878674>,  <28.984274, 34.119892, 27.761362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969379, 34.328735, 27.878674>,  <28.944555, 34.676811, 28.074194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969379, 34.328735, 27.878674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800955, -0.335627, 0.495808,
		-0.595499, 0.360736, -0.717809,
		0.062061, -0.870186, -0.488799,
		28.987997, 34.067680, 27.732035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353483, 34.558132, 27.837389>,  <28.944555, 34.676811, 28.074194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353483, 34.558132, 27.837389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546223, 34.208733, 27.865143>,  <28.661867, 33.999092, 27.881796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546223, 34.208733, 27.865143>,  <28.353483, 34.558132, 27.837389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546223, 34.208733, 27.865143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787372, -0.396867, 0.471743,
		-0.384528, -0.281949, -0.879001,
		0.481854, -0.873500, 0.069392,
		28.690779, 33.946682, 27.885958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827629, 34.030647, 27.765476>,  <28.353483, 34.558132, 27.837389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827629, 34.030647, 27.765476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125046, 33.809536, 27.915989>,  <28.303495, 33.676868, 28.006296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125046, 33.809536, 27.915989>,  <27.827629, 34.030647, 27.765476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125046, 33.809536, 27.915989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666136, -0.563152, 0.489001,
		-0.058404, -0.614247, -0.786950,
		0.743540, -0.552775, 0.376281,
		28.348108, 33.643703, 28.028873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675943, 33.241058, 27.813303>,  <27.827629, 34.030647, 27.765476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675943, 33.241058, 27.813303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965237, 33.295258, 28.084175>,  <28.138813, 33.327778, 28.246698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965237, 33.295258, 28.084175>,  <27.675943, 33.241058, 27.813303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965237, 33.295258, 28.084175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444494, -0.659134, 0.606603,
		0.528545, -0.739719, -0.416481,
		0.723233, 0.135494, 0.677182,
		28.182207, 33.335907, 28.287331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675901, 32.528244, 28.139515>,  <27.675943, 33.241058, 27.813303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675901, 32.528244, 28.139515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891920, 32.733601, 28.406281>,  <28.021532, 32.856815, 28.566339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891920, 32.733601, 28.406281>,  <27.675901, 32.528244, 28.139515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891920, 32.733601, 28.406281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063381, -0.765347, 0.640489,
		0.839245, -0.388164, -0.380784,
		0.540046, 0.513393, 0.666916,
		28.053934, 32.887619, 28.606356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175526, 32.067730, 28.408081>,  <27.675901, 32.528244, 28.139515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175526, 32.067730, 28.408081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171827, 32.353985, 28.687447>,  <28.169607, 32.525738, 28.855066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171827, 32.353985, 28.687447>,  <28.175526, 32.067730, 28.408081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171827, 32.353985, 28.687447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022572, -0.698114, 0.715630,
		0.999702, 0.022382, -0.009698,
		-0.009247, 0.715636, 0.698412,
		28.169054, 32.568676, 28.896971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706192, 31.801819, 28.923613>,  <28.175526, 32.067730, 28.408081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706192, 31.801819, 28.923613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451839, 32.061283, 29.090897>,  <28.299229, 32.216961, 29.191267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451839, 32.061283, 29.090897>,  <28.706192, 31.801819, 28.923613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451839, 32.061283, 29.090897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243377, -0.682752, 0.688925,
		0.732409, 0.336292, 0.592018,
		-0.635881, 0.648658, 0.418208,
		28.261076, 32.255882, 29.216358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053289, 31.995487, 29.471884>,  <28.706192, 31.801819, 28.923613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053289, 31.995487, 29.471884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662994, 32.059784, 29.531342>,  <28.428818, 32.098362, 29.567017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662994, 32.059784, 29.531342>,  <29.053289, 31.995487, 29.471884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662994, 32.059784, 29.531342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017379, -0.619938, 0.784458,
		0.218245, 0.768010, 0.602104,
		-0.975739, 0.160740, 0.148646,
		28.370272, 32.108006, 29.575935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978247, 31.938984, 30.165157>,  <29.053289, 31.995487, 29.471884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978247, 31.938984, 30.165157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599571, 31.876038, 30.052719>,  <28.372366, 31.838270, 29.985256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599571, 31.876038, 30.052719>,  <28.978247, 31.938984, 30.165157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599571, 31.876038, 30.052719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113703, -0.653185, 0.748612,
		-0.301413, 0.740665, 0.600471,
		-0.946690, -0.157366, -0.281094,
		28.315565, 31.828827, 29.968391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575863, 31.958084, 30.797239>,  <28.978247, 31.938984, 30.165157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575863, 31.958084, 30.797239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368864, 31.756931, 30.520309>,  <28.244665, 31.636240, 30.354153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368864, 31.756931, 30.520309>,  <28.575863, 31.958084, 30.797239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368864, 31.756931, 30.520309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086026, -0.774410, 0.626808,
		-0.851351, 0.383928, 0.357492,
		-0.517495, -0.502880, -0.692323,
		28.213615, 31.606068, 30.312613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998720, 31.715958, 31.148762>,  <28.575863, 31.958084, 30.797239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998720, 31.715958, 31.148762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054651, 31.484703, 30.827213>,  <28.088209, 31.345951, 30.634285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054651, 31.484703, 30.827213>,  <27.998720, 31.715958, 31.148762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054651, 31.484703, 30.827213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076241, -0.815722, 0.573397,
		-0.987236, -0.018888, -0.158138,
		0.139828, -0.578135, -0.803871,
		28.096600, 31.311262, 30.586052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580912, 31.129812, 31.264400>,  <27.998720, 31.715958, 31.148762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580912, 31.129812, 31.264400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849518, 31.009113, 30.993694>,  <28.010681, 30.936693, 30.831270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849518, 31.009113, 30.993694>,  <27.580912, 31.129812, 31.264400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849518, 31.009113, 30.993694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001113, -0.913739, 0.406300,
		-0.740988, -0.272084, -0.613927,
		0.671517, -0.301747, -0.676767,
		28.050972, 30.918589, 30.790665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284143, 30.585691, 30.954645>,  <27.580912, 31.129812, 31.264400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284143, 30.585691, 30.954645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674414, 30.517345, 30.899708>,  <27.908575, 30.476337, 30.866745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674414, 30.517345, 30.899708>,  <27.284143, 30.585691, 30.954645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674414, 30.517345, 30.899708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100006, -0.904430, 0.414736,
		-0.195082, -0.390912, -0.899517,
		0.975675, -0.170864, -0.137344,
		27.967115, 30.466085, 30.858505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278109, 29.952642, 30.763222>,  <27.284143, 30.585691, 30.954645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278109, 29.952642, 30.763222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668543, 30.020794, 30.817226>,  <27.902803, 30.061686, 30.849630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668543, 30.020794, 30.817226>,  <27.278109, 29.952642, 30.763222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668543, 30.020794, 30.817226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078600, -0.855655, 0.511543,
		0.202681, -0.488698, -0.848584,
		0.976085, 0.170379, 0.135013,
		27.961369, 30.071907, 30.857731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627617, 29.371733, 30.545046>,  <27.278109, 29.952642, 30.763222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627617, 29.371733, 30.545046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843801, 29.569786, 30.817146>,  <27.973513, 29.688618, 30.980408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843801, 29.569786, 30.817146>,  <27.627617, 29.371733, 30.545046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843801, 29.569786, 30.817146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056833, -0.828145, 0.557626,
		0.839447, -0.262715, -0.475721,
		0.540462, 0.495134, 0.680252,
		28.005939, 29.718327, 31.021221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222202, 28.983892, 30.665945>,  <27.627617, 29.371733, 30.545046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222202, 28.983892, 30.665945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150364, 29.201706, 30.993660>,  <28.107260, 29.332394, 31.190289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150364, 29.201706, 30.993660>,  <28.222202, 28.983892, 30.665945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150364, 29.201706, 30.993660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182127, -0.800025, 0.571656,
		0.966734, 0.251882, 0.044509,
		-0.179598, 0.544533, 0.819285,
		28.096485, 29.365067, 31.239445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794079, 28.825764, 31.116573>,  <28.222202, 28.983892, 30.665945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794079, 28.825764, 31.116573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508913, 28.993698, 31.341248>,  <28.337812, 29.094460, 31.476051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508913, 28.993698, 31.341248>,  <28.794079, 28.825764, 31.116573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508913, 28.993698, 31.341248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122196, -0.714345, 0.689042,
		0.690520, 0.559865, 0.457966,
		-0.712916, 0.419836, 0.561683,
		28.295038, 29.119648, 31.509752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942535, 28.720661, 31.812206>,  <28.794079, 28.825764, 31.116573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942535, 28.720661, 31.812206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556103, 28.812565, 31.859356>,  <28.324244, 28.867708, 31.887646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556103, 28.812565, 31.859356>,  <28.942535, 28.720661, 31.812206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556103, 28.812565, 31.859356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073623, -0.682585, 0.727088,
		0.247517, 0.693749, 0.676349,
		-0.966082, 0.229761, 0.117875,
		28.266277, 28.881493, 31.894718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884346, 28.733595, 32.591740>,  <28.942535, 28.720661, 31.812206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884346, 28.733595, 32.591740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519974, 28.685043, 32.434017>,  <28.301352, 28.655912, 32.339386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519974, 28.685043, 32.434017>,  <28.884346, 28.733595, 32.591740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519974, 28.685043, 32.434017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125617, -0.828759, 0.545325,
		-0.392974, 0.546283, 0.739693,
		-0.910929, -0.121380, -0.394303,
		28.246695, 28.648630, 32.315727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365633, 28.743723, 33.129169>,  <28.884346, 28.733595, 32.591740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365633, 28.743723, 33.129169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204645, 28.552868, 32.816669>,  <28.108051, 28.438354, 32.629169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204645, 28.552868, 32.816669>,  <28.365633, 28.743723, 33.129169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204645, 28.552868, 32.816669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209612, -0.782717, 0.586017,
		-0.891111, 0.399615, 0.215008,
		-0.402472, -0.477138, -0.781252,
		28.083904, 28.409727, 32.582294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815676, 28.473797, 33.367119>,  <28.365633, 28.743723, 33.129169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815676, 28.473797, 33.367119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864834, 28.252468, 33.037579>,  <27.894329, 28.119671, 32.839855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864834, 28.252468, 33.037579>,  <27.815676, 28.473797, 33.367119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864834, 28.252468, 33.037579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275666, -0.816509, 0.507269,
		-0.953365, 0.164766, -0.252878,
		0.122897, -0.553323, -0.823851,
		27.901703, 28.086472, 32.790424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205183, 27.998539, 33.357246>,  <27.815676, 28.473797, 33.367119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205183, 27.998539, 33.357246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452906, 27.831905, 33.091038>,  <27.601540, 27.731926, 32.931313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452906, 27.831905, 33.091038>,  <27.205183, 27.998539, 33.357246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452906, 27.831905, 33.091038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250924, -0.908196, 0.334987,
		-0.743972, -0.040465, -0.666984,
		0.619308, -0.416584, -0.665519,
		27.638699, 27.706930, 32.891380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798685, 27.483557, 32.923367>,  <27.205183, 27.998539, 33.357246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798685, 27.483557, 32.923367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184914, 27.388969, 32.966728>,  <27.416651, 27.332216, 32.992744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184914, 27.388969, 32.966728>,  <26.798685, 27.483557, 32.923367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184914, 27.388969, 32.966728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258363, -0.920300, 0.293762,
		0.030298, -0.311656, -0.949712,
		0.965573, -0.236470, 0.108404,
		27.474585, 27.318029, 32.999249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960751, 26.910837, 32.554497>,  <26.798685, 27.483557, 32.923367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960751, 26.910837, 32.554497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261602, 26.927292, 32.817589>,  <27.442114, 26.937164, 32.975445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261602, 26.927292, 32.817589>,  <26.960751, 26.910837, 32.554497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261602, 26.927292, 32.817589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252013, -0.904238, 0.344737,
		0.608927, -0.425044, -0.669736,
		0.752129, 0.041137, 0.657731,
		27.487242, 26.939632, 33.014908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180532, 26.304014, 32.537029>,  <26.960751, 26.910837, 32.554497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180532, 26.304014, 32.537029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329277, 26.447334, 32.879570>,  <27.418524, 26.533327, 33.085094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329277, 26.447334, 32.879570>,  <27.180532, 26.304014, 32.537029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329277, 26.447334, 32.879570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263196, -0.843957, 0.467402,
		0.890195, -0.399197, -0.219532,
		0.371861, 0.358300, 0.856353,
		27.440836, 26.554825, 33.136475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393377, 25.796650, 32.790459>,  <27.180532, 26.304014, 32.537029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393377, 25.796650, 32.790459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421892, 26.021080, 33.120335>,  <27.439001, 26.155739, 33.318260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421892, 26.021080, 33.120335>,  <27.393377, 25.796650, 32.790459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421892, 26.021080, 33.120335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365991, -0.754412, 0.544897,
		0.927884, -0.340672, 0.151570,
		0.071285, 0.561075, 0.824690,
		27.443277, 26.189402, 33.367741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925085, 25.119717, 32.680515>,  <27.393377, 25.796650, 32.790459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925085, 25.119717, 32.680515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932123, 24.796154, 32.445446>,  <27.936346, 24.602016, 32.304405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932123, 24.796154, 32.445446>,  <27.925085, 25.119717, 32.680515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932123, 24.796154, 32.445446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002527, 0.587798, -0.809004,
		0.999842, 0.012751, 0.012388,
		0.017597, -0.808908, -0.587672,
		27.937403, 24.553482, 32.269146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559395, 25.027664, 32.245884>,  <27.925085, 25.119717, 32.680515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559395, 25.027664, 32.245884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265696, 24.822384, 32.068115>,  <28.089476, 24.699217, 31.961454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265696, 24.822384, 32.068115>,  <28.559395, 25.027664, 32.245884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265696, 24.822384, 32.068115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083549, 0.581346, -0.809356,
		0.673723, -0.631397, -0.383973,
		-0.734245, -0.513201, -0.444419,
		28.045422, 24.668425, 31.934790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916193, 24.729174, 31.640749>,  <28.559395, 25.027664, 32.245884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916193, 24.729174, 31.640749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519314, 24.732800, 31.591019>,  <28.281185, 24.734976, 31.561180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519314, 24.732800, 31.591019>,  <28.916193, 24.729174, 31.640749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519314, 24.732800, 31.591019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101690, 0.635735, -0.765180,
		0.072102, -0.771854, -0.631699,
		-0.992200, 0.009066, -0.124327,
		28.221653, 24.735519, 31.553720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825661, 24.603863, 30.967321>,  <28.916193, 24.729174, 31.640749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825661, 24.603863, 30.967321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489954, 24.792881, 31.074902>,  <28.288530, 24.906292, 31.139450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489954, 24.792881, 31.074902>,  <28.825661, 24.603863, 30.967321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489954, 24.792881, 31.074902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117536, 0.640624, -0.758806,
		-0.530867, -0.605228, -0.593194,
		-0.839265, 0.472547, 0.268951,
		28.238174, 24.934645, 31.155586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579796, 24.928749, 30.333977>,  <28.825661, 24.603863, 30.967321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579796, 24.928749, 30.333977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359203, 25.094425, 30.623615>,  <28.226847, 25.193830, 30.797398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359203, 25.094425, 30.623615>,  <28.579796, 24.928749, 30.333977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359203, 25.094425, 30.623615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012439, 0.863847, -0.503600,
		-0.834093, -0.286734, -0.471245,
		-0.551483, 0.414188, 0.724096,
		28.193758, 25.218681, 30.840843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055481, 25.190519, 30.025995>,  <28.579796, 24.928749, 30.333977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055481, 25.190519, 30.025995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132072, 25.396656, 30.360123>,  <28.178028, 25.520338, 30.560600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132072, 25.396656, 30.360123>,  <28.055481, 25.190519, 30.025995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132072, 25.396656, 30.360123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009231, 0.850085, -0.526566,
		-0.981453, 0.108538, 0.158017,
		0.191480, 0.515341, 0.835320,
		28.189516, 25.551258, 30.610718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647787, 25.770407, 30.008482>,  <28.055481, 25.190519, 30.025995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647787, 25.770407, 30.008482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931709, 25.861099, 30.275246>,  <28.102062, 25.915514, 30.435305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931709, 25.861099, 30.275246>,  <27.647787, 25.770407, 30.008482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931709, 25.861099, 30.275246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070563, 0.919131, -0.387582,
		-0.700855, 0.322167, 0.636405,
		0.709805, 0.226732, 0.666911,
		28.144651, 25.929119, 30.475319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451405, 26.451752, 30.337820>,  <27.647787, 25.770407, 30.008482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451405, 26.451752, 30.337820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843224, 26.397491, 30.397266>,  <28.078316, 26.364935, 30.432934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843224, 26.397491, 30.397266>,  <27.451405, 26.451752, 30.337820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843224, 26.397491, 30.397266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188154, 0.879272, -0.437582,
		-0.071316, 0.456595, 0.886812,
		0.979547, -0.135651, 0.148616,
		28.137087, 26.356796, 30.441851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735397, 27.059347, 30.581608>,  <27.451405, 26.451752, 30.337820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735397, 27.059347, 30.581608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071211, 26.886677, 30.449646>,  <28.272699, 26.783075, 30.370468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071211, 26.886677, 30.449646>,  <27.735397, 27.059347, 30.581608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071211, 26.886677, 30.449646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265048, 0.855470, -0.444883,
		0.474269, 0.286055, 0.832612,
		0.839535, -0.431676, -0.329904,
		28.323071, 26.757174, 30.350676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239355, 27.551558, 30.621513>,  <27.735397, 27.059347, 30.581608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239355, 27.551558, 30.621513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457050, 27.307545, 30.391151>,  <28.587667, 27.161137, 30.252935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457050, 27.307545, 30.391151>,  <28.239355, 27.551558, 30.621513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457050, 27.307545, 30.391151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255553, 0.774400, -0.578789,
		0.799060, 0.167826, 0.577354,
		0.544240, -0.610031, -0.575904,
		28.620321, 27.124535, 30.218380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929417, 27.844522, 30.619804>,  <28.239355, 27.551558, 30.621513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929417, 27.844522, 30.619804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871010, 27.599396, 30.309158>,  <28.835966, 27.452320, 30.122770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871010, 27.599396, 30.309158>,  <28.929417, 27.844522, 30.619804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871010, 27.599396, 30.309158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370232, 0.694133, -0.617340,
		0.917392, -0.377670, 0.125531,
		-0.146016, -0.612818, -0.776617,
		28.827206, 27.415550, 30.076174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524675, 27.908709, 30.341280>,  <28.929417, 27.844522, 30.619804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524675, 27.908709, 30.341280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267544, 27.795116, 30.056709>,  <29.113266, 27.726961, 29.885967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267544, 27.795116, 30.056709>,  <29.524675, 27.908709, 30.341280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267544, 27.795116, 30.056709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357528, 0.710147, -0.606519,
		0.677454, -0.644243, -0.354975,
		-0.642830, -0.283975, -0.711427,
		29.074696, 27.709923, 29.843281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909094, 27.992947, 29.683460>,  <29.524675, 27.908709, 30.341280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909094, 27.992947, 29.683460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527571, 27.957745, 29.568562>,  <29.298656, 27.936623, 29.499622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527571, 27.957745, 29.568562>,  <29.909094, 27.992947, 29.683460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527571, 27.957745, 29.568562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144990, 0.702565, -0.696692,
		0.263121, -0.706157, -0.657351,
		-0.953806, -0.088005, -0.287245,
		29.241428, 27.931343, 29.482388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866150, 27.928177, 28.882349>,  <29.909094, 27.992947, 29.683460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866150, 27.928177, 28.882349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512642, 28.052826, 29.021973>,  <29.300537, 28.127615, 29.105747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512642, 28.052826, 29.021973>,  <29.866150, 27.928177, 28.882349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512642, 28.052826, 29.021973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069795, 0.649843, -0.756857,
		-0.462687, -0.693251, -0.552562,
		-0.883770, 0.311622, 0.349059,
		29.247511, 28.146313, 29.126690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548084, 27.897308, 28.262840>,  <29.866150, 27.928177, 28.882349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548084, 27.897308, 28.262840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322592, 28.128529, 28.498829>,  <29.187296, 28.267262, 28.640423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322592, 28.128529, 28.498829>,  <29.548084, 27.897308, 28.262840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322592, 28.128529, 28.498829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396434, 0.437273, -0.807238,
		-0.724603, -0.688948, -0.017344,
		-0.563729, 0.578051, 0.589971,
		29.153473, 28.301945, 28.675819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841768, 27.958147, 28.008986>,  <29.548084, 27.897308, 28.262840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841768, 27.958147, 28.008986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886446, 28.289230, 28.228958>,  <28.913252, 28.487881, 28.360943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886446, 28.289230, 28.228958>,  <28.841768, 27.958147, 28.008986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886446, 28.289230, 28.228958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533204, 0.516905, -0.669703,
		-0.838581, -0.218426, 0.499071,
		0.111692, 0.827707, 0.549933,
		28.919954, 28.537542, 28.393938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138697, 28.382290, 27.931850>,  <28.841768, 27.958147, 28.008986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138697, 28.382290, 27.931850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392292, 28.649837, 28.087116>,  <28.544449, 28.810366, 28.180275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392292, 28.649837, 28.087116>,  <28.138697, 28.382290, 27.931850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392292, 28.649837, 28.087116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312790, 0.680825, -0.662299,
		-0.707263, 0.298477, 0.640852,
		0.633989, 0.668871, 0.388162,
		28.582489, 28.850498, 28.203566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777252, 29.006672, 27.929783>,  <28.138697, 28.382290, 27.931850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777252, 29.006672, 27.929783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158047, 29.118862, 27.978863>,  <28.386524, 29.186176, 28.008310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158047, 29.118862, 27.978863>,  <27.777252, 29.006672, 27.929783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158047, 29.118862, 27.978863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185360, 0.847062, -0.498124,
		-0.243646, 0.451463, 0.858381,
		0.951987, 0.280475, 0.122700,
		28.443644, 29.203005, 28.015673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820347, 29.681738, 28.112436>,  <27.777252, 29.006672, 27.929783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820347, 29.681738, 28.112436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196648, 29.633049, 27.985836>,  <28.422428, 29.603836, 27.909876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196648, 29.633049, 27.985836>,  <27.820347, 29.681738, 28.112436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196648, 29.633049, 27.985836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045491, 0.879617, -0.473502,
		0.336036, 0.459845, 0.821963,
		0.940750, -0.121722, -0.316501,
		28.478872, 29.596533, 27.890886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111404, 30.328938, 28.141571>,  <27.820347, 29.681738, 28.112436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111404, 30.328938, 28.141571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348166, 30.133049, 27.885502>,  <28.490223, 30.015516, 27.731859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348166, 30.133049, 27.885502>,  <28.111404, 30.328938, 28.141571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348166, 30.133049, 27.885502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026332, 0.805578, -0.591903,
		0.805578, 0.333492, 0.489720,
		0.591903, -0.489720, -0.640175,
		28.525736, 29.986134, 27.693449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532236, 30.793249, 27.982109>,  <28.111404, 30.328938, 28.141571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532236, 30.793249, 27.982109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549580, 30.520569, 27.689972>,  <28.559986, 30.356960, 27.514688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549580, 30.520569, 27.689972>,  <28.532236, 30.793249, 27.982109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549580, 30.520569, 27.689972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029473, 0.729841, -0.682981,
		0.998625, 0.051139, 0.011555,
		0.043360, -0.681701, -0.730344,
		28.562588, 30.316059, 27.470869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153471, 30.884672, 27.653967>,  <28.532236, 30.793249, 27.982109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153471, 30.884672, 27.653967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891806, 30.704258, 27.411106>,  <28.734806, 30.596008, 27.265388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891806, 30.704258, 27.411106>,  <29.153471, 30.884672, 27.653967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891806, 30.704258, 27.411106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130687, 0.723262, -0.678096,
		0.744975, -0.522934, -0.414189,
		-0.654166, -0.451035, -0.607153,
		28.695557, 30.568947, 27.228960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445164, 30.914778, 26.988077>,  <29.153471, 30.884672, 27.653967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445164, 30.914778, 26.988077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060810, 30.849445, 26.898609>,  <28.830198, 30.810246, 26.844929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060810, 30.849445, 26.898609>,  <29.445164, 30.914778, 26.988077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060810, 30.849445, 26.898609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050221, 0.691452, -0.720675,
		0.272365, -0.703717, -0.656201,
		-0.960882, -0.163331, -0.223669,
		28.772545, 30.800446, 26.831509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386524, 30.853613, 26.243511>,  <29.445164, 30.914778, 26.988077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386524, 30.853613, 26.243511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018393, 30.928810, 26.380714>,  <28.797514, 30.973928, 26.463037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018393, 30.928810, 26.380714>,  <29.386524, 30.853613, 26.243511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018393, 30.928810, 26.380714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155948, 0.627863, -0.762541,
		-0.358716, -0.755279, -0.548522,
		-0.920327, 0.187995, 0.343009,
		28.742294, 30.985209, 26.483618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952066, 30.799969, 25.669088>,  <29.386524, 30.853613, 26.243511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952066, 30.799969, 25.669088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739830, 31.020443, 25.926666>,  <28.612488, 31.152727, 26.081213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739830, 31.020443, 25.926666>,  <28.952066, 30.799969, 25.669088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739830, 31.020443, 25.926666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107051, 0.797195, -0.594155,
		-0.840842, -0.246317, -0.481989,
		-0.530590, 0.551187, 0.643946,
		28.580652, 31.185799, 26.119850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408575, 31.115728, 25.306576>,  <28.952066, 30.799969, 25.669088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408575, 31.115728, 25.306576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416134, 31.335636, 25.640617>,  <28.420670, 31.467581, 25.841042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416134, 31.335636, 25.640617>,  <28.408575, 31.115728, 25.306576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416134, 31.335636, 25.640617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048431, 0.834775, -0.548458,
		-0.998648, -0.030082, 0.042399,
		0.018895, 0.549770, 0.835103,
		28.421803, 31.500566, 25.891148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802879, 31.458632, 25.354988>,  <28.408575, 31.115728, 25.306576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802879, 31.458632, 25.354988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070906, 31.679047, 25.553932>,  <28.231722, 31.811296, 25.673300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070906, 31.679047, 25.553932>,  <27.802879, 31.458632, 25.354988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070906, 31.679047, 25.553932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276577, 0.807114, -0.521605,
		-0.688852, 0.211951, 0.693224,
		0.670066, 0.551039, 0.497361,
		28.271925, 31.844358, 25.703140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433857, 32.054901, 25.558664>,  <27.802879, 31.458632, 25.354988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433857, 32.054901, 25.558664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817316, 32.164013, 25.591125>,  <28.047392, 32.229481, 25.610603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817316, 32.164013, 25.591125>,  <27.433857, 32.054901, 25.558664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817316, 32.164013, 25.591125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185193, 0.814433, -0.549912,
		-0.216100, 0.512142, 0.831271,
		0.958647, 0.272781, 0.081154,
		28.104910, 32.245846, 25.615471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318674, 32.699829, 25.691048>,  <27.433857, 32.054901, 25.558664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318674, 32.699829, 25.691048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685354, 32.645790, 25.540630>,  <27.905363, 32.613365, 25.450380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685354, 32.645790, 25.540630>,  <27.318674, 32.699829, 25.691048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685354, 32.645790, 25.540630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147320, 0.760535, -0.632363,
		0.371423, 0.635087, 0.677281,
		0.916701, -0.135098, -0.376041,
		27.960365, 32.605259, 25.427818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541443, 33.395660, 25.600513>,  <27.318674, 32.699829, 25.691048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541443, 33.395660, 25.600513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786207, 33.186916, 25.362782>,  <27.933065, 33.061668, 25.220142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786207, 33.186916, 25.362782>,  <27.541443, 33.395660, 25.600513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786207, 33.186916, 25.362782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210435, 0.616928, -0.758365,
		0.762418, 0.589120, 0.267687,
		0.611911, -0.521860, -0.594328,
		27.969780, 33.030357, 25.184483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904661, 33.913162, 25.323364>,  <27.541443, 33.395660, 25.600513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904661, 33.913162, 25.323364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009253, 33.603107, 25.093307>,  <28.072008, 33.417072, 24.955273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009253, 33.603107, 25.093307>,  <27.904661, 33.913162, 25.323364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009253, 33.603107, 25.093307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322425, 0.491498, -0.808994,
		0.909764, 0.396975, -0.121408,
		0.261479, -0.775139, -0.575142,
		28.087696, 33.370567, 24.920765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358942, 34.115280, 24.818926>,  <27.904661, 33.913162, 25.323364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358942, 34.115280, 24.818926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156889, 33.796261, 24.687012>,  <28.035658, 33.604851, 24.607862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156889, 33.796261, 24.687012>,  <28.358942, 34.115280, 24.818926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156889, 33.796261, 24.687012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276290, 0.511449, -0.813685,
		0.817623, -0.319900, -0.478703,
		-0.505130, -0.797549, -0.329787,
		28.005350, 33.556995, 24.588076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638798, 34.015808, 24.185471>,  <28.358942, 34.115280, 24.818926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638798, 34.015808, 24.185471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278866, 33.843510, 24.213093>,  <28.062906, 33.740131, 24.229666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278866, 33.843510, 24.213093>,  <28.638798, 34.015808, 24.185471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278866, 33.843510, 24.213093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348579, 0.614768, -0.707498,
		0.262296, -0.660698, -0.703334,
		-0.899829, -0.430742, 0.069054,
		28.008917, 33.714287, 24.233809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357903, 34.074272, 23.528427>,  <28.638798, 34.015808, 24.185471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357903, 34.074272, 23.528427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030491, 33.989964, 23.742188>,  <27.834044, 33.939381, 23.870443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030491, 33.989964, 23.742188>,  <28.357903, 34.074272, 23.528427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030491, 33.989964, 23.742188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550323, 0.554534, -0.624208,
		-0.164780, -0.805027, -0.569894,
		-0.818530, -0.210769, 0.534401,
		27.784931, 33.926731, 23.902508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803425, 33.702435, 23.046944>,  <28.357903, 34.074272, 23.528427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803425, 33.702435, 23.046944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625116, 33.880417, 23.357632>,  <27.518131, 33.987206, 23.544044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625116, 33.880417, 23.357632>,  <27.803425, 33.702435, 23.046944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625116, 33.880417, 23.357632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612088, 0.481633, -0.627199,
		-0.653174, -0.755010, 0.057657,
		-0.445772, 0.444961, 0.776722,
		27.491385, 34.013905, 23.590649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136765, 33.778908, 22.839479>,  <27.803425, 33.702435, 23.046944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136765, 33.778908, 22.839479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134224, 34.003086, 23.170746>,  <27.132700, 34.137592, 23.369505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134224, 34.003086, 23.170746>,  <27.136765, 33.778908, 22.839479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134224, 34.003086, 23.170746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755943, 0.539453, -0.370864,
		-0.654606, -0.628401, 0.420241,
		-0.006351, 0.560448, 0.828165,
		27.132318, 34.171219, 23.419195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475618, 33.766556, 23.200035>,  <27.136765, 33.778908, 22.839479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475618, 33.766556, 23.200035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647470, 34.120502, 23.272068>,  <26.750582, 34.332870, 23.315289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647470, 34.120502, 23.272068>,  <26.475618, 33.766556, 23.200035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647470, 34.120502, 23.272068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795689, 0.465261, -0.387828,
		-0.426962, 0.023331, 0.903968,
		0.429630, 0.884866, 0.180084,
		26.776360, 34.385963, 23.326094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946018, 34.180737, 23.060043>,  <26.475618, 33.766556, 23.200035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946018, 34.180737, 23.060043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232063, 34.451981, 23.127903>,  <26.403690, 34.614727, 23.168619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232063, 34.451981, 23.127903>,  <25.946018, 34.180737, 23.060043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232063, 34.451981, 23.127903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510196, 0.672244, -0.536458,
		-0.477822, 0.297075, 0.826700,
		0.715112, 0.678111, 0.169647,
		26.446596, 34.655415, 23.178797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663523, 34.795189, 23.223114>,  <25.946018, 34.180737, 23.060043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663523, 34.795189, 23.223114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023521, 34.932861, 23.116123>,  <26.239521, 35.015465, 23.051928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023521, 34.932861, 23.116123>,  <25.663523, 34.795189, 23.223114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023521, 34.932861, 23.116123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426196, 0.823552, -0.374325,
		0.091446, 0.450890, 0.887883,
		0.899997, 0.344182, -0.267478,
		26.293520, 35.036118, 23.035879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573521, 35.558800, 23.276310>,  <25.663523, 34.795189, 23.223114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573521, 35.558800, 23.276310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866539, 35.433281, 23.034679>,  <26.042351, 35.357967, 22.889702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866539, 35.433281, 23.034679>,  <25.573521, 35.558800, 23.276310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866539, 35.433281, 23.034679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301054, 0.646559, -0.700948,
		0.610528, 0.695335, 0.379163,
		0.732545, -0.313799, -0.604076,
		26.086302, 35.339142, 22.853456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998953, 35.852547, 23.749685>,  <25.573521, 35.558800, 23.276310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998953, 35.852547, 23.749685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918343, 35.661919, 24.091976>,  <24.869976, 35.547543, 24.297352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918343, 35.661919, 24.091976>,  <24.998953, 35.852547, 23.749685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918343, 35.661919, 24.091976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953394, -0.104855, -0.282922,
		0.224559, -0.872862, -0.433226,
		-0.201526, -0.476568, 0.855728,
		24.857885, 35.518948, 24.348694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168388, 36.211590, 23.039192>,  <24.998953, 35.852547, 23.749685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168388, 36.211590, 23.039192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322002, 36.072971, 22.696865>,  <25.414171, 35.989799, 22.491468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322002, 36.072971, 22.696865>,  <25.168388, 36.211590, 23.039192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322002, 36.072971, 22.696865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022901, 0.923034, -0.384035,
		0.923034, 0.167082, 0.346542,
		0.384035, -0.346542, -0.855819,
		25.437214, 35.969009, 22.440119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671850, 35.910248, 22.555048>,  <25.168388, 36.211590, 23.039192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671850, 35.910248, 22.555048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739233, 36.001999, 22.171589>,  <24.779663, 36.057049, 21.941513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739233, 36.001999, 22.171589>,  <24.671850, 35.910248, 22.555048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739233, 36.001999, 22.171589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984001, 0.096369, -0.149853,
		0.058011, 0.968554, 0.241945,
		0.168456, 0.229381, -0.958648,
		24.789770, 36.070812, 21.883995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460007, 36.549530, 22.346296>,  <24.671850, 35.910248, 22.555048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460007, 36.549530, 22.346296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442511, 36.311272, 22.025475>,  <24.432013, 36.168316, 21.832981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442511, 36.311272, 22.025475>,  <24.460007, 36.549530, 22.346296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.442511, 36.311272, 22.025475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998914, 0.038947, 0.025555,
		0.016016, 0.802301, -0.596704,
		-0.043742, -0.595647, -0.802054,
		24.429388, 36.132576, 21.784859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.959606, 36.796005, 21.746183>,  <24.460007, 36.549530, 22.346296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.959606, 36.796005, 21.746183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.959347, 36.396088, 21.754314>,  <23.959192, 36.156136, 21.759193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.959347, 36.396088, 21.754314>,  <23.959606, 36.796005, 21.746183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.959347, 36.396088, 21.754314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999429, -0.000041, -0.033796,
		0.033790, -0.020337, -0.999222,
		-0.000646, -0.999793, 0.020327,
		23.959152, 36.096149, 21.760412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.588299, 36.605434, 21.069462>,  <23.959606, 36.796005, 21.746183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.588299, 36.605434, 21.069462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.569954, 36.328636, 21.357639>,  <23.558947, 36.162556, 21.530546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.569954, 36.328636, 21.357639>,  <23.588299, 36.605434, 21.069462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.569954, 36.328636, 21.357639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979238, -0.111412, -0.169352,
		0.197457, -0.713252, -0.672520,
		-0.045864, -0.691997, 0.720442,
		23.556194, 36.121037, 21.573772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.934126, 36.174511, 21.017263>,  <23.588299, 36.605434, 21.069462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.934126, 36.174511, 21.017263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.088903, 35.887985, 21.249527>,  <23.181770, 35.716068, 21.388885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.088903, 35.887985, 21.249527>,  <22.934126, 36.174511, 21.017263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.088903, 35.887985, 21.249527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915337, 0.374527, -0.147946,
		-0.111498, 0.588747, 0.800590,
		0.386945, -0.716314, 0.580661,
		23.204987, 35.673092, 21.423725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.443550, 35.691978, 20.636732>,  <22.934126, 36.174511, 21.017263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.443550, 35.691978, 20.636732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129513, 35.670986, 20.883591>,  <22.941090, 35.658390, 21.031706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129513, 35.670986, 20.883591>,  <23.443550, 35.691978, 20.636732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.129513, 35.670986, 20.883591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472093, -0.594300, -0.651103,
		0.400941, -0.802529, 0.441807,
		-0.785095, -0.052480, 0.617147,
		22.893984, 35.655243, 21.068735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.315945, 34.989323, 20.665955>,  <23.443550, 35.691978, 20.636732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.315945, 34.989323, 20.665955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.992971, 35.209743, 20.750237>,  <22.799189, 35.341995, 20.800806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.992971, 35.209743, 20.750237>,  <23.315945, 34.989323, 20.665955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.992971, 35.209743, 20.750237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543927, -0.557016, -0.627596,
		-0.228471, -0.621350, 0.749483,
		-0.807431, 0.551051, 0.210707,
		22.750742, 35.375057, 20.813448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.727430, 34.513435, 20.773216>,  <23.315945, 34.989323, 20.665955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.727430, 34.513435, 20.773216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.573648, 34.876507, 20.705910>,  <22.481380, 35.094349, 20.665525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.573648, 34.876507, 20.705910>,  <22.727430, 34.513435, 20.773216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.573648, 34.876507, 20.705910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750674, -0.413478, -0.515291,
		-0.537294, -0.071791, 0.840334,
		-0.384453, 0.907680, -0.168267,
		22.458313, 35.148811, 20.655430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.868776, 34.481602, 20.860565>,  <22.727430, 34.513435, 20.773216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.868776, 34.481602, 20.860565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.905016, 34.800537, 20.621887>,  <21.926760, 34.991898, 20.478680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.905016, 34.800537, 20.621887>,  <21.868776, 34.481602, 20.860565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.905016, 34.800537, 20.621887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874188, -0.223343, -0.431177,
		-0.477060, 0.560689, 0.676787,
		0.090601, 0.797337, -0.596696,
		21.932196, 35.039738, 20.442879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262512, 34.746075, 20.778366>,  <21.868776, 34.481602, 20.860565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262512, 34.746075, 20.778366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431725, 34.908062, 20.454132>,  <21.533251, 35.005253, 20.259592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431725, 34.908062, 20.454132>,  <21.262512, 34.746075, 20.778366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.431725, 34.908062, 20.454132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855707, -0.115672, -0.504367,
		-0.298015, 0.906984, 0.297602,
		0.423029, 0.404969, -0.810584,
		21.558634, 35.029552, 20.210957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.811207, 35.346783, 20.413004>,  <21.262512, 34.746075, 20.778366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.811207, 35.346783, 20.413004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.051018, 35.238899, 20.111588>,  <21.194904, 35.174168, 19.930738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.051018, 35.238899, 20.111588>,  <20.811207, 35.346783, 20.413004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.051018, 35.238899, 20.111588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780785, 0.009829, -0.624722,
		0.175900, 0.962892, -0.204692,
		0.599528, -0.269709, -0.753541,
		21.230877, 35.157986, 19.885525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.687450, 35.831745, 19.784206>,  <20.811207, 35.346783, 20.413004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.687450, 35.831745, 19.784206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882875, 35.526867, 19.614330>,  <21.000130, 35.343941, 19.512405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882875, 35.526867, 19.614330>,  <20.687450, 35.831745, 19.784206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882875, 35.526867, 19.614330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633921, 0.024377, -0.773014,
		0.599542, 0.646885, -0.471263,
		0.488563, -0.762198, -0.424689,
		21.029444, 35.298206, 19.486923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.758856, 36.003925, 19.124996>,  <20.687450, 35.831745, 19.784206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.758856, 36.003925, 19.124996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783363, 35.605007, 19.141262>,  <20.798069, 35.365658, 19.151022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783363, 35.605007, 19.141262>,  <20.758856, 36.003925, 19.124996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783363, 35.605007, 19.141262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647061, -0.070709, -0.759153,
		0.759973, 0.020200, -0.649641,
		0.061270, -0.997293, 0.040666,
		20.801744, 35.305820, 19.153461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.763014, 35.710423, 18.432041>,  <20.758856, 36.003925, 19.124996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.763014, 35.710423, 18.432041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.685820, 35.374531, 18.635063>,  <20.639503, 35.172997, 18.756876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.685820, 35.374531, 18.635063>,  <20.763014, 35.710423, 18.432041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.685820, 35.374531, 18.635063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546359, -0.337701, -0.766453,
		0.815015, -0.425220, -0.393623,
		-0.192984, -0.839730, 0.507554,
		20.627924, 35.122612, 18.787329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.732391, 35.187027, 17.942867>,  <20.763014, 35.710423, 18.432041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.732391, 35.187027, 17.942867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.542828, 35.028591, 18.257454>,  <20.429090, 34.933529, 18.446205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.542828, 35.028591, 18.257454>,  <20.732391, 35.187027, 17.942867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542828, 35.028591, 18.257454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710625, -0.355409, -0.607203,
		0.520023, -0.846640, -0.113039,
		-0.473908, -0.396088, 0.786464,
		20.400656, 34.909763, 18.493393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.717216, 34.476189, 17.829250>,  <20.732391, 35.187027, 17.942867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.717216, 34.476189, 17.829250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.429638, 34.535000, 18.100986>,  <20.257092, 34.570286, 18.264029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.429638, 34.535000, 18.100986>,  <20.717216, 34.476189, 17.829250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.429638, 34.535000, 18.100986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656610, -0.464257, -0.594414,
		0.227995, -0.873413, 0.430313,
		-0.718945, 0.147024, 0.679340,
		20.213955, 34.579105, 18.304789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.284309, 33.816654, 17.814928>,  <20.717216, 34.476189, 17.829250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.284309, 33.816654, 17.814928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.061361, 34.095345, 17.995556>,  <19.927591, 34.262558, 18.103931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.061361, 34.095345, 17.995556>,  <20.284309, 33.816654, 17.814928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061361, 34.095345, 17.995556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802723, -0.313291, -0.507430,
		-0.212065, -0.645313, 0.733894,
		-0.557373, 0.696721, 0.451570,
		19.894150, 34.304359, 18.131025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731462, 33.468773, 18.032835>,  <20.284309, 33.816654, 17.814928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.731462, 33.468773, 18.032835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.632292, 33.856140, 18.022320>,  <19.572790, 34.088562, 18.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.632292, 33.856140, 18.022320>,  <19.731462, 33.468773, 18.032835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.632292, 33.856140, 18.022320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875164, -0.235524, -0.422631,
		-0.415477, -0.081774, 0.905920,
		-0.247926, 0.968422, -0.026289,
		19.557915, 34.146667, 18.014433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.029980, 33.543613, 18.238556>,  <19.731462, 33.468773, 18.032835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.029980, 33.543613, 18.238556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.115950, 33.886166, 18.050758>,  <19.167532, 34.091698, 17.938080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.115950, 33.886166, 18.050758>,  <19.029980, 33.543613, 18.238556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.115950, 33.886166, 18.050758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944783, 0.060554, -0.322052,
		-0.247369, 0.512787, 0.822106,
		0.214925, 0.856378, -0.469493,
		19.180428, 34.143078, 17.909910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480495, 33.944427, 18.132263>,  <19.029980, 33.543613, 18.238556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.480495, 33.944427, 18.132263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698612, 34.145714, 17.864105>,  <18.829481, 34.266487, 17.703211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698612, 34.145714, 17.864105>,  <18.480495, 33.944427, 18.132263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698612, 34.145714, 17.864105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837038, 0.369824, -0.403234,
		0.045013, 0.781025, 0.622875,
		0.545290, 0.503219, -0.670395,
		18.862200, 34.296680, 17.662987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.297724, 34.594097, 18.076305>,  <18.480495, 33.944427, 18.132263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.297724, 34.594097, 18.076305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.449451, 34.515511, 17.714638>,  <18.540487, 34.468357, 17.497637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.449451, 34.515511, 17.714638>,  <18.297724, 34.594097, 18.076305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.449451, 34.515511, 17.714638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832122, 0.354861, -0.426201,
		0.404588, 0.914043, -0.028880,
		0.379318, -0.196468, -0.904167,
		18.563248, 34.456570, 17.443388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.156116, 35.126633, 17.701519>,  <18.297724, 34.594097, 18.076305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.156116, 35.126633, 17.701519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.238520, 34.861298, 17.413757>,  <18.287962, 34.702095, 17.241100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.238520, 34.861298, 17.413757>,  <18.156116, 35.126633, 17.701519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.238520, 34.861298, 17.413757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871488, 0.209993, -0.443184,
		0.445051, 0.718250, -0.534833,
		0.206006, -0.663339, -0.719404,
		18.300322, 34.662296, 17.197937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.187412, 35.455215, 17.136280>,  <18.156116, 35.126633, 17.701519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.187412, 35.455215, 17.136280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121265, 35.082024, 17.008408>,  <18.081577, 34.858109, 16.931684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121265, 35.082024, 17.008408>,  <18.187412, 35.455215, 17.136280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121265, 35.082024, 17.008408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825404, 0.308337, -0.472903,
		0.539780, 0.185664, -0.821076,
		-0.165367, -0.932983, -0.319682,
		18.071655, 34.802128, 16.912502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.093626, 35.487053, 16.335297>,  <18.187412, 35.455215, 17.136280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.093626, 35.487053, 16.335297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.933727, 35.143654, 16.463787>,  <17.837788, 34.937614, 16.540880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.933727, 35.143654, 16.463787>,  <18.093626, 35.487053, 16.335297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.933727, 35.143654, 16.463787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864364, 0.236409, -0.443830,
		0.305086, -0.455075, -0.836558,
		-0.399746, -0.858497, 0.321225,
		17.813803, 34.886105, 16.560154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899532, 35.218769, 15.747818>,  <18.093626, 35.487053, 16.335297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.899532, 35.218769, 15.747818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686436, 35.036125, 16.032829>,  <17.558578, 34.926540, 16.203836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686436, 35.036125, 16.032829>,  <17.899532, 35.218769, 15.747818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.686436, 35.036125, 16.032829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846080, 0.269138, -0.460124,
		0.018326, -0.847984, -0.529705,
		-0.532741, -0.456605, 0.712529,
		17.526613, 34.899143, 16.246588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299433, 34.821041, 15.351103>,  <17.899532, 35.218769, 15.747818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.299433, 34.821041, 15.351103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.162888, 34.825912, 15.727044>,  <17.080959, 34.828835, 15.952609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.162888, 34.825912, 15.727044>,  <17.299433, 34.821041, 15.351103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162888, 34.825912, 15.727044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910323, 0.244709, -0.333810,
		-0.234056, -0.969520, -0.072446,
		-0.341364, 0.012181, 0.939852,
		17.060478, 34.829567, 16.008999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573223, 34.449986, 15.471929>,  <17.299433, 34.821041, 15.351103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573223, 34.449986, 15.471929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.647772, 34.741692, 15.735274>,  <16.692501, 34.916714, 15.893282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.647772, 34.741692, 15.735274>,  <16.573223, 34.449986, 15.471929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.647772, 34.741692, 15.735274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872555, 0.430854, -0.230244,
		-0.451567, -0.531548, 0.716620,
		0.186373, 0.729261, 0.658364,
		16.703684, 34.960468, 15.932783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.067574, 34.560059, 16.073332>,  <16.573223, 34.449986, 15.471929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.067574, 34.560059, 16.073332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229156, 34.898418, 15.934035>,  <16.326107, 35.101433, 15.850457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229156, 34.898418, 15.934035>,  <16.067574, 34.560059, 16.073332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229156, 34.898418, 15.934035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907067, 0.321072, -0.272289,
		-0.118519, 0.425871, 0.896988,
		0.403958, 0.845900, -0.348241,
		16.350344, 35.152187, 15.829563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.917549, 35.202538, 16.442949>,  <16.067574, 34.560059, 16.073332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.917549, 35.202538, 16.442949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.938215, 35.227821, 16.044285>,  <15.950615, 35.242992, 15.805086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.938215, 35.227821, 16.044285>,  <15.917549, 35.202538, 16.442949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938215, 35.227821, 16.044285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975194, 0.218287, -0.036707,
		0.215239, 0.973835, 0.072921,
		0.051665, 0.063211, -0.996662,
		15.953714, 35.246784, 15.745286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698429, 35.845787, 16.193478>,  <15.917549, 35.202538, 16.442949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698429, 35.845787, 16.193478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.633051, 35.567608, 15.913583>,  <15.593824, 35.400700, 15.745646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.633051, 35.567608, 15.913583>,  <15.698429, 35.845787, 16.193478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633051, 35.567608, 15.913583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983398, 0.058178, 0.171880,
		-0.078825, 0.716215, -0.693414,
		-0.163445, -0.695451, -0.699739,
		15.584018, 35.358974, 15.703661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319551, 36.092144, 15.622383>,  <15.698429, 35.845787, 16.193478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319551, 36.092144, 15.622383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.242061, 35.706314, 15.694009>,  <15.195567, 35.474815, 15.736984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.242061, 35.706314, 15.694009>,  <15.319551, 36.092144, 15.622383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.242061, 35.706314, 15.694009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959527, 0.224318, 0.170260,
		-0.204396, -0.138834, -0.968993,
		-0.193724, -0.964576, 0.179065,
		15.183944, 35.416943, 15.747728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.899465, 35.858868, 15.185149>,  <15.319551, 36.092144, 15.622383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.899465, 35.858868, 15.185149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.782990, 36.204556, 15.021037>,  <14.713106, 36.411968, 14.922569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.782990, 36.204556, 15.021037>,  <14.899465, 35.858868, 15.185149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.782990, 36.204556, 15.021037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785266, 0.460872, 0.413467,
		0.546414, -0.201784, -0.812844,
		-0.291186, 0.864222, -0.410281,
		14.695635, 36.463821, 14.897953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.504698, 36.133263, 14.865902>,  <14.899465, 35.858868, 15.185149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.504698, 36.133263, 14.865902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.279891, 36.439518, 14.991084>,  <15.145007, 36.623272, 15.066194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.279891, 36.439518, 14.991084>,  <15.504698, 36.133263, 14.865902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279891, 36.439518, 14.991084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784537, 0.373602, 0.494896,
		0.261989, 0.523664, -0.810640,
		-0.562016, 0.765635, 0.312954,
		15.111286, 36.669209, 15.084970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.008640, 36.845142, 14.903038>,  <15.504698, 36.133263, 14.865902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.008640, 36.845142, 14.903038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.698596, 36.827171, 15.155128>,  <15.512568, 36.816387, 15.306381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.698596, 36.827171, 15.155128>,  <16.008640, 36.845142, 14.903038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.698596, 36.827171, 15.155128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605906, 0.229894, 0.761595,
		-0.179103, 0.972178, -0.150971,
		-0.775113, -0.044930, 0.630223,
		15.466062, 36.813694, 15.344194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002123, 37.386314, 15.238058>,  <16.008640, 36.845142, 14.903038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002123, 37.386314, 15.238058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.788853, 37.133469, 15.462972>,  <15.660892, 36.981762, 15.597919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.788853, 37.133469, 15.462972>,  <16.002123, 37.386314, 15.238058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.788853, 37.133469, 15.462972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517576, 0.282021, 0.807824,
		-0.669210, 0.721734, 0.176799,
		-0.533173, -0.632111, 0.562283,
		15.628901, 36.943836, 15.631657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.676891, 37.665493, 15.835422>,  <16.002123, 37.386314, 15.238058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.676891, 37.665493, 15.835422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776640, 37.284382, 15.904733>,  <15.836489, 37.055714, 15.946320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776640, 37.284382, 15.904733>,  <15.676891, 37.665493, 15.835422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776640, 37.284382, 15.904733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387002, 0.262068, 0.884053,
		-0.887718, -0.153398, 0.434080,
		0.249370, -0.952780, 0.173278,
		15.851451, 36.998547, 15.956716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.521727, 37.476910, 16.591600>,  <15.676891, 37.665493, 15.835422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.521727, 37.476910, 16.591600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.819654, 37.260872, 16.434864>,  <15.998411, 37.131248, 16.340822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.819654, 37.260872, 16.434864>,  <15.521727, 37.476910, 16.591600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.819654, 37.260872, 16.434864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530028, 0.122136, 0.839138,
		-0.405355, -0.832695, 0.377235,
		0.744820, -0.540094, -0.391843,
		16.043100, 37.098843, 16.317310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663083, 36.970257, 17.058447>,  <15.521727, 37.476910, 16.591600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.663083, 36.970257, 17.058447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.005600, 37.010288, 16.855766>,  <16.211111, 37.034306, 16.734158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.005600, 37.010288, 16.855766>,  <15.663083, 36.970257, 17.058447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.005600, 37.010288, 16.855766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502650, 0.064118, 0.862109,
		0.118766, -0.992912, 0.004600,
		0.856293, 0.100077, -0.506702,
		16.262487, 37.040310, 16.703756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176161, 36.493950, 17.379919>,  <15.663083, 36.970257, 17.058447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176161, 36.493950, 17.379919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451103, 36.697754, 17.172867>,  <16.616068, 36.820038, 17.048635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451103, 36.697754, 17.172867>,  <16.176161, 36.493950, 17.379919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451103, 36.697754, 17.172867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641528, -0.091722, 0.761596,
		0.340562, -0.855563, -0.389910,
		0.687357, 0.509509, -0.517631,
		16.657310, 36.850605, 17.017578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868711, 36.091667, 17.383291>,  <16.176161, 36.493950, 17.379919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.868711, 36.091667, 17.383291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.920399, 36.479187, 17.298695>,  <16.951410, 36.711700, 17.247936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.920399, 36.479187, 17.298695>,  <16.868711, 36.091667, 17.383291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.920399, 36.479187, 17.298695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742184, 0.046954, 0.668550,
		0.657622, -0.243354, -0.712961,
		0.129218, 0.968801, -0.211491,
		16.959164, 36.769829, 17.235247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570440, 36.094761, 17.392231>,  <16.868711, 36.091667, 17.383291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.570440, 36.094761, 17.392231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.438236, 36.469105, 17.441109>,  <17.358913, 36.693710, 17.470436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.438236, 36.469105, 17.441109>,  <17.570440, 36.094761, 17.392231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.438236, 36.469105, 17.441109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710709, 0.161596, 0.684675,
		0.621013, 0.313136, -0.718533,
		-0.330508, 0.935859, 0.122196,
		17.339085, 36.749863, 17.477768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.191240, 36.466152, 17.401562>,  <17.570440, 36.094761, 17.392231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.191240, 36.466152, 17.401562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.935242, 36.733509, 17.553169>,  <17.781643, 36.893925, 17.644135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.935242, 36.733509, 17.553169>,  <18.191240, 36.466152, 17.401562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.935242, 36.733509, 17.553169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640138, 0.190965, 0.744148,
		0.425005, 0.718875, -0.550081,
		-0.639995, 0.668395, 0.379018,
		17.743244, 36.934029, 17.666874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612801, 36.937027, 17.586521>,  <18.191240, 36.466152, 17.401562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.612801, 36.937027, 17.586521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.281281, 37.019909, 17.794426>,  <18.082367, 37.069637, 17.919168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.281281, 37.019909, 17.794426>,  <18.612801, 36.937027, 17.586521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281281, 37.019909, 17.794426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559291, 0.278996, 0.780612,
		0.016734, 0.937671, -0.347120,
		-0.828803, 0.207204, 0.519762,
		18.032640, 37.082069, 17.950356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690668, 37.536579, 17.741892>,  <18.612801, 36.937027, 17.586521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690668, 37.536579, 17.741892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.420137, 37.401756, 18.003876>,  <18.257818, 37.320862, 18.161066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.420137, 37.401756, 18.003876>,  <18.690668, 37.536579, 17.741892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.420137, 37.401756, 18.003876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619043, 0.221806, 0.753384,
		-0.399206, 0.914984, 0.058637,
		-0.676329, -0.337054, 0.654961,
		18.217239, 37.300640, 18.200363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.669361, 38.082886, 18.273951>,  <18.690668, 37.536579, 17.741892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.669361, 38.082886, 18.273951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.529251, 37.755493, 18.456116>,  <18.445185, 37.559059, 18.565414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.529251, 37.755493, 18.456116>,  <18.669361, 38.082886, 18.273951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.529251, 37.755493, 18.456116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584942, 0.188592, 0.788845,
		-0.731541, 0.542700, 0.412705,
		-0.350273, -0.818480, 0.455411,
		18.424170, 37.509949, 18.592739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715778, 38.180630, 18.986105>,  <18.669361, 38.082886, 18.273951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715778, 38.180630, 18.986105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.688843, 37.781860, 18.970070>,  <18.672682, 37.542599, 18.960449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.688843, 37.781860, 18.970070>,  <18.715778, 38.180630, 18.986105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688843, 37.781860, 18.970070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591729, -0.072256, 0.802892,
		-0.803319, 0.030346, 0.594775,
		-0.067340, -0.996924, -0.040088,
		18.668640, 37.482784, 18.958044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674469, 38.044422, 19.662678>,  <18.715778, 38.180630, 18.986105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.674469, 38.044422, 19.662678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.830175, 37.742535, 19.451443>,  <18.923599, 37.561401, 19.324701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.830175, 37.742535, 19.451443>,  <18.674469, 38.044422, 19.662678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.830175, 37.742535, 19.451443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541068, -0.276627, 0.794181,
		-0.745465, -0.594878, 0.300671,
		0.389267, -0.754717, -0.528085,
		18.946955, 37.516121, 19.293016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513214, 37.483173, 20.111473>,  <18.674469, 38.044422, 19.662678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.513214, 37.483173, 20.111473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795340, 37.356659, 19.857704>,  <18.964615, 37.280750, 19.705442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795340, 37.356659, 19.857704>,  <18.513214, 37.483173, 20.111473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.795340, 37.356659, 19.857704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627710, -0.137212, 0.766259,
		-0.329410, -0.938688, 0.101760,
		0.705315, -0.316289, -0.634423,
		19.006933, 37.261772, 19.667377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694368, 36.889637, 20.309090>,  <18.513214, 37.483173, 20.111473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694368, 36.889637, 20.309090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.023180, 36.990543, 20.104881>,  <19.220467, 37.051086, 19.982357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.023180, 36.990543, 20.104881>,  <18.694368, 36.889637, 20.309090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.023180, 36.990543, 20.104881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567020, -0.279945, 0.774673,
		0.052507, -0.926278, -0.373164,
		0.822029, 0.252267, -0.510520,
		19.269789, 37.066223, 19.951725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134497, 36.389832, 20.413389>,  <18.694368, 36.889637, 20.309090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.134497, 36.389832, 20.413389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.371141, 36.698158, 20.318871>,  <19.513128, 36.883156, 20.262159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.371141, 36.698158, 20.318871>,  <19.134497, 36.389832, 20.413389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.371141, 36.698158, 20.318871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623456, -0.251572, 0.740280,
		0.511175, -0.585278, -0.629404,
		0.591610, 0.770818, -0.236298,
		19.548624, 36.929405, 20.247982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.889332, 36.224987, 20.315804>,  <19.134497, 36.389832, 20.413389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.889332, 36.224987, 20.315804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.895306, 36.611961, 20.416870>,  <19.898890, 36.844147, 20.477510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.895306, 36.611961, 20.416870>,  <19.889332, 36.224987, 20.315804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895306, 36.611961, 20.416870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611627, -0.208743, 0.763111,
		0.791005, 0.143140, -0.594829,
		0.014935, 0.967438, 0.252665,
		19.899786, 36.902191, 20.492670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.573114, 36.337021, 20.505796>,  <19.889332, 36.224987, 20.315804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.573114, 36.337021, 20.505796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393616, 36.672062, 20.630402>,  <20.285915, 36.873089, 20.705164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393616, 36.672062, 20.630402>,  <20.573114, 36.337021, 20.505796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393616, 36.672062, 20.630402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591036, 0.016713, 0.806472,
		0.670300, 0.546018, -0.502556,
		-0.448748, 0.837606, 0.311514,
		20.258991, 36.923344, 20.723856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.213699, 36.722576, 20.745127>,  <20.573114, 36.337021, 20.505796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.213699, 36.722576, 20.745127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.874393, 36.844921, 20.918053>,  <20.670811, 36.918327, 21.021809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.874393, 36.844921, 20.918053>,  <21.213699, 36.722576, 20.745127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.874393, 36.844921, 20.918053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470190, 0.059378, 0.880566,
		0.243660, 0.950223, -0.194181,
		-0.848264, 0.305861, 0.432317,
		20.619915, 36.936680, 21.047749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.425280, 37.171883, 21.195324>,  <21.213699, 36.722576, 20.745127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.425280, 37.171883, 21.195324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.067938, 37.048569, 21.326092>,  <20.853533, 36.974579, 21.404552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.067938, 37.048569, 21.326092>,  <21.425280, 37.171883, 21.195324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067938, 37.048569, 21.326092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386046, -0.154214, 0.909498,
		-0.229971, 0.938710, 0.256781,
		-0.893354, -0.308287, 0.326921,
		20.799932, 36.956081, 21.424168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.083044, 37.633556, 21.769396>,  <21.425280, 37.171883, 21.195324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.083044, 37.633556, 21.769396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.861969, 37.308395, 21.842846>,  <20.729324, 37.113297, 21.886915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.861969, 37.308395, 21.842846>,  <21.083044, 37.633556, 21.769396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.861969, 37.308395, 21.842846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156935, 0.114873, 0.980905,
		-0.818478, 0.570953, 0.064085,
		-0.552689, -0.812906, 0.183624,
		20.696163, 37.064522, 21.897934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.562954, 37.766670, 22.357933>,  <21.083044, 37.633556, 21.769396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.562954, 37.766670, 22.357933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631439, 37.372654, 22.365826>,  <20.672531, 37.136246, 22.370562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631439, 37.372654, 22.365826>,  <20.562954, 37.766670, 22.357933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.631439, 37.372654, 22.365826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277879, 0.067492, 0.958242,
		-0.945235, -0.158581, 0.285276,
		0.171213, -0.985037, 0.019729,
		20.682802, 37.077145, 22.371744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.314840, 37.586430, 23.014322>,  <20.562954, 37.766670, 22.357933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.314840, 37.586430, 23.014322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.533098, 37.277138, 22.885082>,  <20.664053, 37.091564, 22.807539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.533098, 37.277138, 22.885082>,  <20.314840, 37.586430, 23.014322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.533098, 37.277138, 22.885082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358431, -0.133169, 0.924009,
		-0.757495, -0.619990, 0.204485,
		0.545646, -0.773226, -0.323099,
		20.696793, 37.045170, 22.788153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.887764, 36.828636, 23.225111>,  <20.314840, 37.586430, 23.014322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.887764, 36.828636, 23.225111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.755671, 36.928944, 23.589104>,  <19.676414, 36.989128, 23.807499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.755671, 36.928944, 23.589104>,  <19.887764, 36.828636, 23.225111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755671, 36.928944, 23.589104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935357, 0.042473, -0.351146,
		-0.126705, -0.967116, 0.220529,
		-0.330232, 0.250766, 0.909980,
		19.656601, 37.004173, 23.862097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.246565, 36.414555, 23.460825>,  <19.887764, 36.828636, 23.225111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.246565, 36.414555, 23.460825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.275883, 36.772213, 23.637520>,  <19.293474, 36.986809, 23.743538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.275883, 36.772213, 23.637520>,  <19.246565, 36.414555, 23.460825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.275883, 36.772213, 23.637520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995010, 0.095631, -0.028476,
		-0.067705, -0.437448, 0.896691,
		0.073295, 0.894144, 0.441739,
		19.297871, 37.040455, 23.770042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810238, 36.572475, 23.976866>,  <19.246565, 36.414555, 23.460825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810238, 36.572475, 23.976866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.870115, 36.934875, 23.818501>,  <18.906042, 37.152317, 23.723482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.870115, 36.934875, 23.818501>,  <18.810238, 36.572475, 23.976866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.870115, 36.934875, 23.818501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983268, 0.094373, -0.155810,
		-0.103801, 0.412613, 0.904973,
		0.149694, 0.906005, -0.395913,
		18.915024, 37.206676, 23.699726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.392580, 37.111286, 24.348003>,  <18.810238, 36.572475, 23.976866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.392580, 37.111286, 24.348003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487514, 37.132462, 23.960011>,  <18.544476, 37.145164, 23.727215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487514, 37.132462, 23.960011>,  <18.392580, 37.111286, 24.348003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487514, 37.132462, 23.960011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923357, 0.322510, -0.208326,
		0.301802, 0.945085, 0.125422,
		0.237336, 0.052936, -0.969984,
		18.558716, 37.148342, 23.669016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045895, 37.711060, 24.003471>,  <18.392580, 37.111286, 24.348003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.045895, 37.711060, 24.003471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.151955, 37.486816, 23.689678>,  <18.215591, 37.352272, 23.501402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.151955, 37.486816, 23.689678>,  <18.045895, 37.711060, 24.003471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.151955, 37.486816, 23.689678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905000, 0.136012, -0.403083,
		0.332670, 0.816836, -0.471284,
		0.265152, -0.560606, -0.784484,
		18.231501, 37.318634, 23.454332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.128994, 27.025293, 25.802769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.410776, 27.139946, 26.062489>,  <31.579845, 27.208736, 26.218321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.410776, 27.139946, 26.062489>,  <31.128994, 27.025293, 25.802769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410776, 27.139946, 26.062489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202312, 0.795780, -0.570793,
		-0.680305, 0.533458, 0.502601,
		0.704454, 0.286631, 0.649298,
		31.622112, 27.225935, 26.257278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909775, 27.677027, 25.950645>,  <31.128994, 27.025293, 25.802769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909775, 27.677027, 25.950645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.300179, 27.646008, 26.032024>,  <31.534420, 27.627396, 26.080853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.300179, 27.646008, 26.032024>,  <30.909775, 27.677027, 25.950645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300179, 27.646008, 26.032024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181325, 0.806761, -0.562368,
		-0.120522, 0.585767, 0.801468,
		0.976010, -0.077549, 0.203447,
		31.592981, 27.622744, 26.093058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177162, 28.271736, 26.454769>,  <30.909775, 27.677027, 25.950645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177162, 28.271736, 26.454769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.486408, 28.129848, 26.244450>,  <31.671957, 28.044716, 26.118258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.486408, 28.129848, 26.244450>,  <31.177162, 28.271736, 26.454769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486408, 28.129848, 26.244450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125323, 0.898081, -0.421598,
		0.621759, 0.260049, 0.738776,
		0.773117, -0.354718, -0.525800,
		31.718344, 28.023434, 26.086710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694132, 28.786079, 26.572712>,  <31.177162, 28.271736, 26.454769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694132, 28.786079, 26.572712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.831076, 28.580528, 26.258076>,  <31.913242, 28.457197, 26.069294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.831076, 28.580528, 26.258076>,  <31.694132, 28.786079, 26.572712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831076, 28.580528, 26.258076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152827, 0.856488, -0.493023,
		0.927057, 0.048579, 0.371761,
		0.342359, -0.513875, -0.786589,
		31.933783, 28.426365, 26.022099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345089, 28.916666, 26.451778>,  <31.694132, 28.786079, 26.572712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345089, 28.916666, 26.451778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.187256, 28.787201, 26.107792>,  <32.092556, 28.709522, 25.901400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.187256, 28.787201, 26.107792>,  <32.345089, 28.916666, 26.451778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187256, 28.787201, 26.107792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257352, 0.859523, -0.441578,
		0.882084, -0.395555, -0.255859,
		-0.394585, -0.323663, -0.859968,
		32.068882, 28.690102, 25.849802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800777, 29.196884, 25.965916>,  <32.345089, 28.916666, 26.451778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800777, 29.196884, 25.965916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.486855, 29.085484, 25.744461>,  <32.298500, 29.018642, 25.611588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.486855, 29.085484, 25.744461>,  <32.800777, 29.196884, 25.965916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486855, 29.085484, 25.744461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043314, 0.866505, -0.497286,
		0.618225, -0.414254, -0.667976,
		-0.784807, -0.278502, -0.553638,
		32.251411, 29.001932, 25.578369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010303, 29.247837, 25.348288>,  <32.800777, 29.196884, 25.965916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010303, 29.247837, 25.348288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.618759, 29.269463, 25.269394>,  <32.383831, 29.282438, 25.222057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.618759, 29.269463, 25.269394>,  <33.010303, 29.247837, 25.348288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618759, 29.269463, 25.269394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161028, 0.798280, -0.580362,
		0.126071, -0.599856, -0.790114,
		-0.978865, 0.054064, -0.197234,
		32.325100, 29.285681, 25.210224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026646, 29.376726, 24.652874>,  <33.010303, 29.247837, 25.348288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026646, 29.376726, 24.652874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.678532, 29.485329, 24.817257>,  <32.469662, 29.550489, 24.915886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.678532, 29.485329, 24.817257>,  <33.026646, 29.376726, 24.652874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678532, 29.485329, 24.817257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000305, 0.834056, -0.551680,
		-0.492544, -0.480246, -0.725785,
		-0.870288, 0.271505, 0.410956,
		32.417446, 29.566780, 24.940544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480801, 29.630552, 24.141104>,  <33.026646, 29.376726, 24.652874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480801, 29.630552, 24.141104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.313713, 29.802662, 24.461197>,  <32.213459, 29.905928, 24.653254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.313713, 29.802662, 24.461197>,  <32.480801, 29.630552, 24.141104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313713, 29.802662, 24.461197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293789, 0.769475, -0.567095,
		-0.859766, -0.471987, -0.195015,
		-0.417721, 0.430276, 0.800233,
		32.188396, 29.931746, 24.701267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861160, 29.892496, 23.917021>,  <32.480801, 29.630552, 24.141104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861160, 29.892496, 23.917021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929602, 30.092113, 24.256828>,  <31.970667, 30.211884, 24.460712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929602, 30.092113, 24.256828>,  <31.861160, 29.892496, 23.917021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929602, 30.092113, 24.256828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271315, 0.852763, -0.446301,
		-0.947159, -0.154122, 0.281310,
		0.171106, 0.499041, 0.849518,
		31.980934, 30.241825, 24.511684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180439, 30.152130, 24.148651>,  <31.861160, 29.892496, 23.917021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180439, 30.152130, 24.148651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.466827, 30.392899, 24.290115>,  <31.638660, 30.537359, 24.374994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.466827, 30.392899, 24.290115>,  <31.180439, 30.152130, 24.148651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466827, 30.392899, 24.290115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383147, 0.762261, -0.521687,
		-0.583594, 0.238010, 0.776382,
		0.715972, 0.601922, 0.353658,
		31.681620, 30.573475, 24.396214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832382, 30.834232, 24.353302>,  <31.180439, 30.152130, 24.148651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832382, 30.834232, 24.353302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.222038, 30.915745, 24.314270>,  <31.455832, 30.964653, 24.290850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.222038, 30.915745, 24.314270>,  <30.832382, 30.834232, 24.353302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222038, 30.915745, 24.314270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225920, 0.872530, -0.433187,
		-0.003133, 0.444031, 0.896006,
		0.974141, 0.203783, -0.097582,
		31.514280, 30.976879, 24.284996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950661, 31.481291, 24.573782>,  <30.832382, 30.834232, 24.353302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950661, 31.481291, 24.573782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.246674, 31.393459, 24.319496>,  <31.424282, 31.340759, 24.166925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.246674, 31.393459, 24.319496>,  <30.950661, 31.481291, 24.573782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246674, 31.393459, 24.319496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215273, 0.818146, -0.533193,
		0.637186, 0.531433, 0.558186,
		0.740034, -0.219580, -0.635715,
		31.468683, 31.327585, 24.128782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248310, 32.085045, 24.575550>,  <30.950661, 31.481291, 24.573782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248310, 32.085045, 24.575550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.400274, 31.884346, 24.264702>,  <31.491453, 31.763926, 24.078194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.400274, 31.884346, 24.264702>,  <31.248310, 32.085045, 24.575550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400274, 31.884346, 24.264702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042523, 0.829748, -0.556517,
		0.924046, 0.244471, 0.293893,
		0.379909, -0.501750, -0.777121,
		31.514248, 31.733822, 24.031567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836266, 32.487915, 24.277462>,  <31.248310, 32.085045, 24.575550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836266, 32.487915, 24.277462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.727526, 32.234947, 23.987320>,  <31.662281, 32.083168, 23.813234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.727526, 32.234947, 23.987320>,  <31.836266, 32.487915, 24.277462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727526, 32.234947, 23.987320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061653, 0.740749, -0.668947,
		0.960363, -0.226573, -0.162381,
		-0.271849, -0.632421, -0.725357,
		31.645971, 32.045219, 23.769712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246765, 32.701450, 23.645960>,  <31.836266, 32.487915, 24.277462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246765, 32.701450, 23.645960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.952581, 32.471951, 23.501793>,  <31.776070, 32.334251, 23.415293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.952581, 32.471951, 23.501793>,  <32.246765, 32.701450, 23.645960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952581, 32.471951, 23.501793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245243, 0.721281, -0.647772,
		0.631624, -0.388023, -0.671185,
		-0.735464, -0.573752, -0.360419,
		31.731943, 32.299824, 23.393667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396099, 32.569969, 22.908825>,  <32.246765, 32.701450, 23.645960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396099, 32.569969, 22.908825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.001221, 32.523594, 22.952656>,  <31.764294, 32.495770, 22.978954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.001221, 32.523594, 22.952656>,  <32.396099, 32.569969, 22.908825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001221, 32.523594, 22.952656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159481, 0.700868, -0.695233,
		0.003807, -0.703805, -0.710383,
		-0.987194, -0.115939, 0.109576,
		31.705063, 32.488811, 22.985529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152134, 32.749210, 22.269188>,  <32.396099, 32.569969, 22.908825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152134, 32.749210, 22.269188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.813688, 32.767223, 22.481625>,  <31.610620, 32.778030, 22.609087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.813688, 32.767223, 22.481625>,  <32.152134, 32.749210, 22.269188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813688, 32.767223, 22.481625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275844, 0.815606, -0.508622,
		-0.456068, -0.576852, -0.677675,
		-0.846116, 0.045034, 0.531094,
		31.559855, 32.780735, 22.640953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553907, 32.758514, 21.782665>,  <32.152134, 32.749210, 22.269188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553907, 32.758514, 21.782665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437258, 32.921284, 22.128929>,  <31.367268, 33.018948, 22.336687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437258, 32.921284, 22.128929>,  <31.553907, 32.758514, 21.782665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437258, 32.921284, 22.128929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337064, 0.803230, -0.491130,
		-0.895179, -0.435007, -0.097079,
		-0.291622, 0.406927, 0.865660,
		31.349771, 33.043362, 22.388626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914711, 32.879204, 21.556978>,  <31.553907, 32.758514, 21.782665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914711, 32.879204, 21.556978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.019785, 33.110367, 21.866047>,  <31.082829, 33.249065, 22.051489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.019785, 33.110367, 21.866047>,  <30.914711, 32.879204, 21.556978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019785, 33.110367, 21.866047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246440, 0.814420, -0.525345,
		-0.932879, -0.052417, 0.356355,
		0.262685, 0.577903, 0.772673,
		31.098591, 33.283737, 22.097849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365204, 33.384792, 21.522799>,  <30.914711, 32.879204, 21.556978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365204, 33.384792, 21.522799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.651320, 33.533180, 21.759693>,  <30.822989, 33.622211, 21.901829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.651320, 33.533180, 21.759693>,  <30.365204, 33.384792, 21.522799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651320, 33.533180, 21.759693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198179, 0.920358, -0.337143,
		-0.670138, 0.123786, 0.731841,
		0.715290, 0.370968, 0.592236,
		30.865906, 33.644470, 21.937365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059488, 33.935013, 21.711916>,  <30.365204, 33.384792, 21.522799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059488, 33.935013, 21.711916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.449406, 33.987480, 21.784111>,  <30.683355, 34.018959, 21.827429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.449406, 33.987480, 21.784111>,  <30.059488, 33.935013, 21.711916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449406, 33.987480, 21.784111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047421, 0.912267, -0.406841,
		-0.218018, 0.388026, 0.895491,
		0.974792, 0.131164, 0.180490,
		30.741844, 34.026829, 21.838259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612429, 33.367935, 21.661249>,  <30.059488, 33.935013, 21.711916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612429, 33.367935, 21.661249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.278442, 33.453789, 21.458561>,  <29.078051, 33.505299, 21.336948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.278442, 33.453789, 21.458561>,  <29.612429, 33.367935, 21.661249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278442, 33.453789, 21.458561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219235, -0.974315, -0.051440,
		-0.504744, 0.068140, 0.860576,
		-0.834967, 0.214632, -0.506718,
		29.027952, 33.518177, 21.306545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123163, 33.043808, 22.031050>,  <29.612429, 33.367935, 21.661249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123163, 33.043808, 22.031050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.963854, 33.112389, 21.670609>,  <28.868267, 33.153538, 21.454344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.963854, 33.112389, 21.670609>,  <29.123163, 33.043808, 22.031050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963854, 33.112389, 21.670609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223082, -0.970986, -0.086146,
		-0.889726, 0.166709, 0.424966,
		-0.398275, 0.171449, -0.901100,
		28.844372, 33.163822, 21.400278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520973, 32.715282, 22.056917>,  <29.123163, 33.043808, 22.031050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520973, 32.715282, 22.056917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.547707, 32.759045, 21.660217>,  <28.563747, 32.785301, 21.422197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.547707, 32.759045, 21.660217>,  <28.520973, 32.715282, 22.056917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547707, 32.759045, 21.660217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168445, -0.978466, -0.119290,
		-0.983443, 0.175027, -0.046966,
		0.066833, 0.109404, -0.991748,
		28.567757, 32.791866, 21.362694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859253, 32.457043, 21.819010>,  <28.520973, 32.715282, 22.056917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859253, 32.457043, 21.819010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.124094, 32.448982, 21.519352>,  <28.282999, 32.444145, 21.339558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.124094, 32.448982, 21.519352>,  <27.859253, 32.457043, 21.819010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124094, 32.448982, 21.519352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255838, -0.945662, -0.200676,
		-0.704393, 0.324527, -0.631279,
		0.662101, -0.020150, -0.749143,
		28.322725, 32.442936, 21.294609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562979, 32.036709, 21.326185>,  <27.859253, 32.457043, 21.819010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562979, 32.036709, 21.326185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.942244, 32.015244, 21.200897>,  <28.169804, 32.002365, 21.125725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.942244, 32.015244, 21.200897>,  <27.562979, 32.036709, 21.326185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942244, 32.015244, 21.200897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039833, -0.997935, 0.050394,
		-0.315276, -0.035306, -0.948343,
		0.948164, -0.053664, -0.313218,
		28.226692, 31.999144, 21.106932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584045, 31.338039, 20.980259>,  <27.562979, 32.036709, 21.326185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584045, 31.338039, 20.980259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.975609, 31.402729, 21.030190>,  <28.210546, 31.441542, 21.060148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.975609, 31.402729, 21.030190>,  <27.584045, 31.338039, 20.980259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975609, 31.402729, 21.030190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126161, -0.959137, 0.253258,
		0.160683, -0.232168, -0.959312,
		0.978910, 0.161722, 0.124826,
		28.269281, 31.451246, 21.067636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919384, 30.720726, 20.752092>,  <27.584045, 31.338039, 20.980259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919384, 30.720726, 20.752092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.195393, 30.892307, 20.985287>,  <28.360998, 30.995256, 21.125202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.195393, 30.892307, 20.985287>,  <27.919384, 30.720726, 20.752092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195393, 30.892307, 20.985287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261805, -0.898842, 0.351486,
		0.674782, -0.089904, -0.732521,
		0.690020, 0.428954, 0.582985,
		28.402399, 31.020994, 21.160183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582745, 30.341999, 20.657869>,  <27.919384, 30.720726, 20.752092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582745, 30.341999, 20.657869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.570015, 30.524181, 21.013744>,  <28.562378, 30.633492, 21.227270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.570015, 30.524181, 21.013744>,  <28.582745, 30.341999, 20.657869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570015, 30.524181, 21.013744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482632, -0.772483, 0.412718,
		0.875245, 0.442527, -0.195235,
		-0.031824, 0.455456, 0.889689,
		28.560469, 30.660818, 21.280651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108051, 29.879612, 21.042347>,  <28.582745, 30.341999, 20.657869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108051, 29.879612, 21.042347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.930454, 30.122272, 21.306118>,  <28.823896, 30.267870, 21.464380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.930454, 30.122272, 21.306118>,  <29.108051, 29.879612, 21.042347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930454, 30.122272, 21.306118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262570, -0.615547, 0.743074,
		0.856696, 0.503065, 0.114010,
		-0.443993, 0.606653, 0.659426,
		28.797256, 30.304268, 21.503946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632803, 30.002367, 21.617878>,  <29.108051, 29.879612, 21.042347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632803, 30.002367, 21.617878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268305, 30.090183, 21.757267>,  <29.049606, 30.142874, 21.840900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268305, 30.090183, 21.757267>,  <29.632803, 30.002367, 21.617878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268305, 30.090183, 21.757267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142666, -0.625451, 0.767110,
		0.386366, 0.748740, 0.538618,
		-0.911245, 0.219543, 0.348473,
		28.994932, 30.156046, 21.861809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671528, 30.185329, 22.417791>,  <29.632803, 30.002367, 21.617878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671528, 30.185329, 22.417791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.286310, 30.097237, 22.355766>,  <29.055180, 30.044380, 22.318552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.286310, 30.097237, 22.355766>,  <29.671528, 30.185329, 22.417791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286310, 30.097237, 22.355766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004811, -0.589673, 0.807627,
		-0.269304, 0.777034, 0.568941,
		-0.963043, -0.220234, -0.155063,
		28.997396, 30.031166, 22.309248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407810, 30.240507, 23.042751>,  <29.671528, 30.185329, 22.417791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407810, 30.240507, 23.042751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.158224, 29.994324, 22.850136>,  <29.008472, 29.846615, 22.734566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.158224, 29.994324, 22.850136>,  <29.407810, 30.240507, 23.042751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158224, 29.994324, 22.850136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037209, -0.638911, 0.768380,
		-0.780565, 0.461526, 0.421560,
		-0.623966, -0.615457, -0.481538,
		28.971035, 29.809687, 22.705675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982847, 30.151831, 23.523249>,  <29.407810, 30.240507, 23.042751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982847, 30.151831, 23.523249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.918919, 29.858459, 23.258965>,  <28.880562, 29.682436, 23.100393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.918919, 29.858459, 23.258965>,  <28.982847, 30.151831, 23.523249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918919, 29.858459, 23.258965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036019, -0.664537, 0.746386,
		-0.986489, 0.143087, 0.079790,
		-0.159821, -0.733428, -0.660712,
		28.870972, 29.638432, 23.060751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359619, 29.716528, 23.740623>,  <28.982847, 30.151831, 23.523249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359619, 29.716528, 23.740623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.587822, 29.484196, 23.508362>,  <28.724745, 29.344797, 23.369005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.587822, 29.484196, 23.508362>,  <28.359619, 29.716528, 23.740623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587822, 29.484196, 23.508362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182675, -0.779032, 0.599783,
		-0.800723, -0.236106, -0.550542,
		0.570502, -0.580831, -0.580658,
		28.758974, 29.309948, 23.334166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934563, 29.220455, 23.900694>,  <28.359619, 29.716528, 23.740623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934563, 29.220455, 23.900694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.276560, 29.096489, 23.734352>,  <28.481758, 29.022108, 23.634548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.276560, 29.096489, 23.734352>,  <27.934563, 29.220455, 23.900694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276560, 29.096489, 23.734352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119596, -0.662397, 0.739545,
		-0.504657, -0.682043, -0.529282,
		0.854996, -0.309917, -0.415853,
		28.533058, 29.003513, 23.609596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929056, 28.472692, 23.772697>,  <27.934563, 29.220455, 23.900694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929056, 28.472692, 23.772697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.320841, 28.551762, 23.788609>,  <28.555912, 28.599203, 23.798155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.320841, 28.551762, 23.788609>,  <27.929056, 28.472692, 23.772697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320841, 28.551762, 23.788609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131633, -0.776295, 0.616473,
		0.152738, -0.598575, -0.786371,
		0.979461, 0.197671, 0.039778,
		28.614679, 28.611063, 23.800541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176237, 27.857014, 23.789024>,  <27.929056, 28.472692, 23.772697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176237, 27.857014, 23.789024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.471222, 28.103905, 23.898701>,  <28.648212, 28.252039, 23.964506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.471222, 28.103905, 23.898701>,  <28.176237, 27.857014, 23.789024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471222, 28.103905, 23.898701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371373, -0.709677, 0.598699,
		0.564119, -0.339692, -0.752581,
		0.737463, 0.617227, 0.274190,
		28.692461, 28.289072, 23.980957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786469, 27.401968, 23.830177>,  <28.176237, 27.857014, 23.789024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786469, 27.401968, 23.830177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.842140, 27.733822, 24.046448>,  <28.875544, 27.932934, 24.176210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.842140, 27.733822, 24.046448>,  <28.786469, 27.401968, 23.830177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842140, 27.733822, 24.046448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427491, -0.542834, 0.722899,
		0.893241, 0.130522, -0.430214,
		0.139180, 0.829636, 0.540679,
		28.883894, 27.982712, 24.208651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.588940, 27.519993, 23.995758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.389647, 27.732796, 24.269615>,  <29.270071, 27.860477, 24.433929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.389647, 27.732796, 24.269615>,  <29.588940, 27.519993, 23.995758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389647, 27.732796, 24.269615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401052, -0.558671, 0.725978,
		0.768715, 0.636282, 0.064985,
		-0.498232, 0.532008, 0.684640,
		29.240177, 27.892399, 24.475008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004272, 27.606522, 24.573689>,  <29.588940, 27.519993, 23.995758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004272, 27.606522, 24.573689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.674353, 27.712807, 24.773327>,  <29.476400, 27.776579, 24.893110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.674353, 27.712807, 24.773327>,  <30.004272, 27.606522, 24.573689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674353, 27.712807, 24.773327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292662, -0.554632, 0.778931,
		0.483788, 0.788530, 0.379696,
		-0.824802, 0.265715, 0.499097,
		29.426912, 27.792521, 24.923056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204370, 27.708313, 25.225742>,  <30.004272, 27.606522, 24.573689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204370, 27.708313, 25.225742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.817423, 27.632687, 25.293209>,  <29.585255, 27.587311, 25.333689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.817423, 27.632687, 25.293209>,  <30.204370, 27.708313, 25.225742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817423, 27.632687, 25.293209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250446, -0.612772, 0.749525,
		-0.038355, 0.767310, 0.640128,
		-0.967370, -0.189066, 0.168667,
		29.527212, 27.575968, 25.343809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129391, 27.702152, 25.912809>,  <30.204370, 27.708313, 25.225742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129391, 27.702152, 25.912809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.798349, 27.497467, 25.820530>,  <29.599724, 27.374655, 25.765162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.798349, 27.497467, 25.820530>,  <30.129391, 27.702152, 25.912809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798349, 27.497467, 25.820530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146767, -0.593974, 0.790983,
		-0.541787, 0.620761, 0.566677,
		-0.827603, -0.511714, -0.230700,
		29.550068, 27.343952, 25.751320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724142, 27.685822, 26.515011>,  <30.129391, 27.702152, 25.912809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724142, 27.685822, 26.515011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.544752, 27.376591, 26.335579>,  <29.437119, 27.191053, 26.227919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.544752, 27.376591, 26.335579>,  <29.724142, 27.685822, 26.515011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544752, 27.376591, 26.335579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065283, -0.528875, 0.846185,
		-0.891409, 0.350207, 0.287655,
		-0.448474, -0.773076, -0.448581,
		29.410210, 27.144669, 26.201004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163780, 27.457304, 26.908384>,  <29.724142, 27.685822, 26.515011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163780, 27.457304, 26.908384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.241489, 27.123497, 26.702145>,  <29.288115, 26.923214, 26.578402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.241489, 27.123497, 26.702145>,  <29.163780, 27.457304, 26.908384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241489, 27.123497, 26.702145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124532, -0.542340, 0.830878,
		-0.973011, -0.097209, -0.209286,
		0.194273, -0.834516, -0.515597,
		29.299772, 26.873142, 26.547466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638603, 27.127836, 27.071758>,  <29.163780, 27.457304, 26.908384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638603, 27.127836, 27.071758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.897255, 26.854012, 26.937149>,  <29.052446, 26.689716, 26.856382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.897255, 26.854012, 26.937149>,  <28.638603, 27.127836, 27.071758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897255, 26.854012, 26.937149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290308, -0.628819, 0.721323,
		-0.705403, -0.368733, -0.605346,
		0.646629, -0.684560, -0.336525,
		29.091244, 26.648643, 26.836191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274944, 26.488173, 27.055443>,  <28.638603, 27.127836, 27.071758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274944, 26.488173, 27.055443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.654875, 26.366356, 27.026909>,  <28.882833, 26.293266, 27.009789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.654875, 26.366356, 27.026909>,  <28.274944, 26.488173, 27.055443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654875, 26.366356, 27.026909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194549, -0.753791, 0.627654,
		-0.244917, -0.582283, -0.775217,
		0.949824, -0.304541, -0.071334,
		28.939821, 26.274994, 27.005508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220499, 25.790039, 27.088388>,  <28.274944, 26.488173, 27.055443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220499, 25.790039, 27.088388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.603222, 25.868408, 27.174309>,  <28.832855, 25.915430, 27.225861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.603222, 25.868408, 27.174309>,  <28.220499, 25.790039, 27.088388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603222, 25.868408, 27.174309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003503, -0.731003, 0.682365,
		0.290709, -0.653643, -0.698741,
		0.956805, 0.195922, 0.214799,
		28.890263, 25.927185, 27.238749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606619, 25.143456, 27.038031>,  <28.220499, 25.790039, 27.088388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606619, 25.143456, 27.038031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.826141, 25.366009, 27.287590>,  <28.957855, 25.499540, 27.437326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.826141, 25.366009, 27.287590>,  <28.606619, 25.143456, 27.038031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826141, 25.366009, 27.287590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148447, -0.799337, 0.582257,
		0.822663, -0.226931, -0.521275,
		0.548807, 0.556383, 0.623898,
		28.990784, 25.532925, 27.474760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073559, 24.735670, 27.224442>,  <28.606619, 25.143456, 27.038031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073559, 24.735670, 27.224442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.091606, 25.012241, 27.512856>,  <29.102434, 25.178185, 27.685904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.091606, 25.012241, 27.512856>,  <29.073559, 24.735670, 27.224442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091606, 25.012241, 27.512856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077976, -0.722003, 0.687482,
		0.995934, 0.025205, -0.086491,
		0.045119, 0.691430, 0.721033,
		29.105143, 25.219671, 27.729166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697392, 24.632029, 27.583429>,  <29.073559, 24.735670, 27.224442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697392, 24.632029, 27.583429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.434538, 24.814648, 27.823341>,  <29.276825, 24.924219, 27.967289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.434538, 24.814648, 27.823341>,  <29.697392, 24.632029, 27.583429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434538, 24.814648, 27.823341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110746, -0.728592, 0.675936,
		0.745593, 0.510604, 0.428223,
		-0.657135, 0.456549, 0.599780,
		29.237398, 24.951612, 28.003275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995546, 24.611025, 28.174417>,  <29.697392, 24.632029, 27.583429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995546, 24.611025, 28.174417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.626818, 24.711792, 28.292252>,  <29.405581, 24.772253, 28.362951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.626818, 24.711792, 28.292252>,  <29.995546, 24.611025, 28.174417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626818, 24.711792, 28.292252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077802, -0.624275, 0.777321,
		0.379724, 0.739471, 0.555871,
		-0.921822, 0.251920, 0.294584,
		29.350271, 24.787369, 28.380627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086342, 24.789394, 28.926882>,  <29.995546, 24.611025, 28.174417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086342, 24.789394, 28.926882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.709641, 24.673370, 28.858807>,  <29.483620, 24.603756, 28.817963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.709641, 24.673370, 28.858807>,  <30.086342, 24.789394, 28.926882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709641, 24.673370, 28.858807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003944, -0.515545, 0.856853,
		-0.336276, 0.806275, 0.486661,
		-0.941755, -0.290059, -0.170186,
		29.427114, 24.586353, 28.807751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710348, 24.905989, 29.542557>,  <30.086342, 24.789394, 28.926882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710348, 24.905989, 29.542557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484041, 24.645889, 29.339745>,  <29.348257, 24.489830, 29.218058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484041, 24.645889, 29.339745>,  <29.710348, 24.905989, 29.542557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484041, 24.645889, 29.339745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012955, -0.607823, 0.793967,
		-0.824462, 0.455771, 0.335464,
		-0.565769, -0.650250, -0.507031,
		29.314310, 24.450815, 29.187635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176708, 24.682390, 30.004740>,  <29.710348, 24.905989, 29.542557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176708, 24.682390, 30.004740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201925, 24.399845, 29.722725>,  <29.217054, 24.230318, 29.553516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201925, 24.399845, 29.722725>,  <29.176708, 24.682390, 30.004740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201925, 24.399845, 29.722725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121950, -0.706599, 0.697026,
		-0.990532, 0.042038, -0.130686,
		0.063041, -0.706364, -0.705036,
		29.220837, 24.187937, 29.511213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621685, 24.135584, 30.193356>,  <29.176708, 24.682390, 30.004740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621685, 24.135584, 30.193356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889431, 23.975948, 29.942699>,  <29.050079, 23.880167, 29.792305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889431, 23.975948, 29.942699>,  <28.621685, 24.135584, 30.193356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889431, 23.975948, 29.942699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012598, -0.849443, 0.527530,
		-0.742826, -0.345215, -0.573616,
		0.669366, -0.399090, -0.626640,
		29.090240, 23.856222, 29.754707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355650, 23.388605, 30.213213>,  <28.621685, 24.135584, 30.193356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355650, 23.388605, 30.213213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.717018, 23.388081, 30.041710>,  <28.933838, 23.387766, 29.938808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.717018, 23.388081, 30.041710>,  <28.355650, 23.388605, 30.213213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717018, 23.388081, 30.041710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153094, -0.933090, 0.325431,
		-0.400497, -0.359640, -0.842770,
		0.903418, -0.001311, -0.428758,
		28.988043, 23.387688, 29.913082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410748, 22.789864, 29.974419>,  <28.355650, 23.388605, 30.213213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410748, 22.789864, 29.974419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.787596, 22.912182, 30.029408>,  <29.013704, 22.985573, 30.062401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.787596, 22.912182, 30.029408>,  <28.410748, 22.789864, 29.974419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787596, 22.912182, 30.029408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215816, -0.866909, 0.449325,
		0.256579, -0.393649, -0.882727,
		0.942120, 0.305794, 0.137475,
		29.070232, 23.003920, 30.070650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865263, 22.234610, 29.859066>,  <28.410748, 22.789864, 29.974419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865263, 22.234610, 29.859066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125614, 22.463490, 30.058643>,  <29.281824, 22.600817, 30.178391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125614, 22.463490, 30.058643>,  <28.865263, 22.234610, 29.859066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125614, 22.463490, 30.058643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425183, -0.819217, 0.384841,
		0.628951, -0.038340, -0.776499,
		0.650876, 0.572200, 0.498946,
		29.320877, 22.635149, 30.208326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481419, 21.805824, 29.928110>,  <28.865263, 22.234610, 29.859066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481419, 21.805824, 29.928110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.463192, 22.086761, 30.212261>,  <29.452255, 22.255323, 30.382751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.463192, 22.086761, 30.212261>,  <29.481419, 21.805824, 29.928110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463192, 22.086761, 30.212261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228936, -0.684849, 0.691788,
		0.972374, 0.194154, -0.129584,
		-0.045568, 0.702343, 0.710378,
		29.449522, 22.297464, 30.425375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084272, 21.635918, 30.448685>,  <29.481419, 21.805824, 29.928110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084272, 21.635918, 30.448685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.809790, 21.878860, 30.608803>,  <29.645100, 22.024626, 30.704874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.809790, 21.878860, 30.608803>,  <30.084272, 21.635918, 30.448685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809790, 21.878860, 30.608803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043866, -0.514752, 0.856216,
		0.726083, 0.605101, 0.326584,
		-0.686207, 0.607358, 0.400296,
		29.603928, 22.061068, 30.728891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096262, 21.413303, 31.095583>,  <30.084272, 21.635918, 30.448685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096262, 21.413303, 31.095583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.839407, 21.716080, 31.144081>,  <29.685295, 21.897745, 31.173180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.839407, 21.716080, 31.144081>,  <30.096262, 21.413303, 31.095583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839407, 21.716080, 31.144081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073374, -0.218121, 0.973159,
		0.763072, 0.616004, 0.195604,
		-0.642135, 0.756943, 0.121244,
		29.646767, 21.943163, 31.180454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231487, 21.344618, 31.862589>,  <30.096262, 21.413303, 31.095583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231487, 21.344618, 31.862589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.216259, 20.963951, 31.984493>,  <30.207123, 20.735550, 32.057636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.216259, 20.963951, 31.984493>,  <30.231487, 21.344618, 31.862589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216259, 20.963951, 31.984493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088221, -0.306992, -0.947614,
		0.995373, -0.009190, 0.095644,
		-0.038070, -0.951668, 0.304761,
		30.204838, 20.678452, 32.075920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590185, 22.003969, 31.921160>,  <30.231487, 21.344618, 31.862589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590185, 22.003969, 31.921160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.962265, 22.030666, 32.065533>,  <31.185513, 22.046684, 32.152157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.962265, 22.030666, 32.065533>,  <30.590185, 22.003969, 31.921160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962265, 22.030666, 32.065533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195877, 0.741346, -0.641902,
		-0.310417, 0.667797, 0.676527,
		0.930201, 0.066741, 0.360932,
		31.241325, 22.050688, 32.173813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707775, 22.606842, 32.104881>,  <30.590185, 22.003969, 31.921160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707775, 22.606842, 32.104881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079313, 22.469662, 32.048840>,  <31.302237, 22.387354, 32.015217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079313, 22.469662, 32.048840>,  <30.707775, 22.606842, 32.104881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079313, 22.469662, 32.048840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185062, 0.757145, -0.626485,
		0.320931, 0.555981, 0.766739,
		0.928846, -0.342952, -0.140101,
		31.357967, 22.366776, 32.006809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145773, 23.129980, 32.111835>,  <30.707775, 22.606842, 32.104881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145773, 23.129980, 32.111835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.401575, 22.883236, 31.928307>,  <31.555058, 22.735189, 31.818190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.401575, 22.883236, 31.928307>,  <31.145773, 23.129980, 32.111835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401575, 22.883236, 31.928307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244301, 0.728936, -0.639507,
		0.728936, 0.296879, 0.616859,
		0.639507, -0.616859, -0.458820,
		31.593428, 22.698177, 31.790661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764154, 23.481794, 32.089176>,  <31.145773, 23.129980, 32.111835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764154, 23.481794, 32.089176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.757917, 23.200413, 31.804947>,  <31.754175, 23.031584, 31.634409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.757917, 23.200413, 31.804947>,  <31.764154, 23.481794, 32.089176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757917, 23.200413, 31.804947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270768, 0.681133, -0.680252,
		0.962518, -0.203006, 0.179852,
		-0.015593, -0.703453, -0.710571,
		31.753241, 22.989376, 31.591776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408146, 23.653601, 31.709301>,  <31.764154, 23.481794, 32.089176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408146, 23.653601, 31.709301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.186947, 23.434647, 31.458042>,  <32.054230, 23.303274, 31.307287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.186947, 23.434647, 31.458042>,  <32.408146, 23.653601, 31.709301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186947, 23.434647, 31.458042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232588, 0.622522, -0.747241,
		0.800063, -0.559320, -0.216936,
		-0.552994, -0.547383, -0.628148,
		32.021049, 23.270432, 31.269598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878761, 23.598331, 31.015316>,  <32.408146, 23.653601, 31.709301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878761, 23.598331, 31.015316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.496853, 23.512207, 30.933292>,  <32.267708, 23.460533, 30.884079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.496853, 23.512207, 30.933292>,  <32.878761, 23.598331, 31.015316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496853, 23.512207, 30.933292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009321, 0.667646, -0.744421,
		0.297187, -0.712665, -0.635444,
		-0.954774, -0.215309, -0.205058,
		32.210423, 23.447615, 30.871775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882683, 23.565039, 30.278454>,  <32.878761, 23.598331, 31.015316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882683, 23.565039, 30.278454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494656, 23.598965, 30.369469>,  <32.261841, 23.619320, 30.424078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494656, 23.598965, 30.369469>,  <32.882683, 23.565039, 30.278454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494656, 23.598965, 30.369469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098613, 0.718685, -0.688308,
		-0.221904, -0.690144, -0.688811,
		-0.970069, 0.084813, 0.227536,
		32.203636, 23.624409, 30.437729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410553, 23.548258, 29.588358>,  <32.882683, 23.565039, 30.278454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410553, 23.548258, 29.588358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.187000, 23.696075, 29.885300>,  <32.052868, 23.784765, 30.063465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.187000, 23.696075, 29.885300>,  <32.410553, 23.548258, 29.588358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187000, 23.696075, 29.885300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301854, 0.743140, -0.597183,
		-0.772360, -0.557835, -0.303777,
		-0.558878, 0.369544, 0.742356,
		32.019337, 23.806938, 30.108007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833040, 23.723518, 29.231827>,  <32.410553, 23.548258, 29.588358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833040, 23.723518, 29.231827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884058, 23.963409, 29.547817>,  <31.914669, 24.107344, 29.737411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884058, 23.963409, 29.547817>,  <31.833040, 23.723518, 29.231827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884058, 23.963409, 29.547817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306486, 0.781331, -0.543681,
		-0.943291, -0.172772, 0.283463,
		0.127545, 0.599727, 0.789975,
		31.922321, 24.143328, 29.784809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068087, 24.052683, 29.367081>,  <31.833040, 23.723518, 29.231827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068087, 24.052683, 29.367081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.321356, 24.286472, 29.570049>,  <31.473318, 24.426746, 29.691832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.321356, 24.286472, 29.570049>,  <31.068087, 24.052683, 29.367081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321356, 24.286472, 29.570049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221095, 0.764840, -0.605092,
		-0.741759, 0.270940, 0.613502,
		0.633175, 0.584475, 0.507424,
		31.511309, 24.461815, 29.722277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710331, 24.606739, 29.572443>,  <31.068087, 24.052683, 29.367081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710331, 24.606739, 29.572443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.091841, 24.726784, 29.566139>,  <31.320747, 24.798809, 29.562357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.091841, 24.726784, 29.566139>,  <30.710331, 24.606739, 29.572443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091841, 24.726784, 29.566139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261230, 0.802000, -0.537174,
		-0.148570, 0.516460, 0.843325,
		0.953775, 0.300109, -0.015761,
		31.377974, 24.816816, 29.561411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684122, 25.263693, 29.292170>,  <30.710331, 24.606739, 29.572443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684122, 25.263693, 29.292170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079515, 25.204643, 29.305485>,  <31.316751, 25.169214, 29.313473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079515, 25.204643, 29.305485>,  <30.684122, 25.263693, 29.292170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079515, 25.204643, 29.305485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140663, 0.815179, -0.561870,
		0.055811, 0.560081, 0.826556,
		0.988483, -0.147624, 0.033287,
		31.376060, 25.160357, 29.315472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062120, 25.907766, 29.415236>,  <30.684122, 25.263693, 29.292170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062120, 25.907766, 29.415236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318178, 25.666534, 29.224865>,  <31.471813, 25.521795, 29.110643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318178, 25.666534, 29.224865>,  <31.062120, 25.907766, 29.415236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318178, 25.666534, 29.224865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185489, 0.722493, -0.666031,
		0.745524, 0.338078, 0.574367,
		0.640147, -0.603081, -0.475926,
		31.510221, 25.485611, 29.082087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690546, 26.292610, 29.229330>,  <31.062120, 25.907766, 29.415236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690546, 26.292610, 29.229330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646393, 25.980549, 28.983021>,  <31.619902, 25.793312, 28.835236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646393, 25.980549, 28.983021>,  <31.690546, 26.292610, 29.229330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646393, 25.980549, 28.983021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206224, 0.588098, -0.782057,
		0.972259, -0.213313, 0.095971,
		-0.110383, -0.780153, -0.615773,
		31.613277, 25.746504, 28.798288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224731, 26.388477, 28.799997>,  <31.690546, 26.292610, 29.229330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224731, 26.388477, 28.799997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.995401, 26.132805, 28.594963>,  <31.857803, 25.979401, 28.471943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.995401, 26.132805, 28.594963>,  <32.224731, 26.388477, 28.799997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995401, 26.132805, 28.594963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037507, 0.604488, -0.795730,
		0.818469, -0.475438, -0.322595,
		-0.573325, -0.639181, -0.512587,
		31.823404, 25.941051, 28.441187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581341, 26.306108, 28.174355>,  <32.224731, 26.388477, 28.799997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581341, 26.306108, 28.174355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.205494, 26.205879, 28.081112>,  <31.979986, 26.145741, 28.025167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.205494, 26.205879, 28.081112>,  <32.581341, 26.306108, 28.174355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205494, 26.205879, 28.081112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020460, 0.638777, -0.769120,
		0.341624, -0.727445, -0.595077,
		-0.939614, -0.250575, -0.233105,
		31.923611, 26.130707, 28.011181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604179, 26.028326, 27.513086>,  <32.581341, 26.306108, 28.174355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604179, 26.028326, 27.513086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.221905, 26.138981, 27.553368>,  <31.992540, 26.205374, 27.577536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.221905, 26.138981, 27.553368>,  <32.604179, 26.028326, 27.513086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221905, 26.138981, 27.553368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045661, 0.477215, -0.877600,
		-0.290832, -0.834110, -0.468698,
		-0.955684, 0.276635, 0.100703,
		31.935200, 26.221972, 27.583578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450493, 25.962627, 26.858347>,  <32.604179, 26.028326, 27.513086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450493, 25.962627, 26.858347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.171391, 26.188889, 27.034153>,  <32.003929, 26.324646, 27.139637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.171391, 26.188889, 27.034153>,  <32.450493, 25.962627, 26.858347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171391, 26.188889, 27.034153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004683, 0.609944, -0.792431,
		-0.716320, -0.554982, -0.422943,
		-0.697757, 0.565653, 0.439514,
		31.962063, 26.358585, 27.166006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820143, 25.960480, 26.368587>,  <32.450493, 25.962627, 26.858347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820143, 25.960480, 26.368587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.767191, 26.276165, 26.608459>,  <31.735420, 26.465576, 26.752382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.767191, 26.276165, 26.608459>,  <31.820143, 25.960480, 26.368587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767191, 26.276165, 26.608459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039513, 0.608727, -0.792395,
		-0.990411, -0.081202, -0.111768,
		-0.132381, 0.789214, 0.599681,
		31.727476, 26.512930, 26.788364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149540, 26.383951, 26.141098>,  <31.820143, 25.960480, 26.368587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149540, 26.383951, 26.141098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.419092, 26.633835, 26.298893>,  <31.580824, 26.783766, 26.393570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.419092, 26.633835, 26.298893>,  <31.149540, 26.383951, 26.141098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419092, 26.633835, 26.298893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101268, 0.606986, -0.788234,
		-0.731866, 0.491227, 0.472300,
		0.673881, 0.624711, 0.394487,
		31.621256, 26.821249, 26.417238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.523951, 34.948887, 17.130590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.698483, 34.847980, 16.785110>,  <16.803202, 34.787437, 16.577822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.698483, 34.847980, 16.785110>,  <16.523951, 34.948887, 17.130590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698483, 34.847980, 16.785110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705937, -0.499211, 0.502436,
		-0.557916, -0.828946, -0.039737,
		0.436330, -0.252265, -0.863701,
		16.829382, 34.772301, 16.526001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.845980, 34.353802, 17.238636>,  <16.523951, 34.948887, 17.130590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.845980, 34.353802, 17.238636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.042236, 34.491367, 16.918388>,  <17.159990, 34.573906, 16.726240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.042236, 34.491367, 16.918388>,  <16.845980, 34.353802, 17.238636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.042236, 34.491367, 16.918388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845173, -0.411397, 0.341227,
		-0.212019, -0.844082, -0.492519,
		0.490644, 0.343917, -0.800619,
		17.189430, 34.594543, 16.678204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232809, 33.762005, 16.938267>,  <16.845980, 34.353802, 17.238636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.232809, 33.762005, 16.938267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.419279, 34.095451, 16.819771>,  <17.531162, 34.295521, 16.748672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.419279, 34.095451, 16.819771>,  <17.232809, 33.762005, 16.938267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419279, 34.095451, 16.819771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846701, -0.323329, 0.422559,
		0.256471, -0.447813, -0.856555,
		0.466177, 0.833619, -0.296239,
		17.559132, 34.345539, 16.730900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.902931, 33.588810, 16.526352>,  <17.232809, 33.762005, 16.938267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.902931, 33.588810, 16.526352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.930893, 33.959644, 16.673664>,  <17.947670, 34.182144, 16.762053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.930893, 33.959644, 16.673664>,  <17.902931, 33.588810, 16.526352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.930893, 33.959644, 16.673664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831594, -0.258064, 0.491787,
		0.550967, 0.271884, -0.788996,
		0.069902, 0.927083, 0.368281,
		17.951864, 34.237770, 16.784149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595104, 33.774441, 16.312840>,  <17.902931, 33.588810, 16.526352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.595104, 33.774441, 16.312840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.506409, 34.054325, 16.584496>,  <18.453192, 34.222256, 16.747490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.506409, 34.054325, 16.584496>,  <18.595104, 33.774441, 16.312840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506409, 34.054325, 16.584496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920049, -0.080587, 0.383425,
		0.323017, 0.709865, -0.625901,
		-0.221740, 0.699712, 0.679142,
		18.439886, 34.264240, 16.788239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.170986, 34.174469, 16.322134>,  <18.595104, 33.774441, 16.312840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.170986, 34.174469, 16.322134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.975000, 34.233742, 16.665756>,  <18.857409, 34.269306, 16.871929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.975000, 34.233742, 16.665756>,  <19.170986, 34.174469, 16.322134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.975000, 34.233742, 16.665756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871318, 0.113987, 0.477296,
		-0.027193, 0.982369, -0.184967,
		-0.489964, 0.148186, 0.859055,
		18.828011, 34.278198, 16.923473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.617262, 34.690849, 16.687513>,  <19.170986, 34.174469, 16.322134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.617262, 34.690849, 16.687513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.369656, 34.578110, 16.980740>,  <19.221092, 34.510468, 17.156675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.369656, 34.578110, 16.980740>,  <19.617262, 34.690849, 16.687513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369656, 34.578110, 16.980740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693563, 0.241773, 0.678613,
		-0.368500, 0.928498, 0.045818,
		-0.619013, -0.281846, 0.733065,
		19.183952, 34.493557, 17.200659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578405, 35.172260, 17.209179>,  <19.617262, 34.690849, 16.687513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578405, 35.172260, 17.209179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.455278, 34.866112, 17.435261>,  <19.381403, 34.682423, 17.570910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.455278, 34.866112, 17.435261>,  <19.578405, 35.172260, 17.209179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.455278, 34.866112, 17.435261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505264, 0.371866, 0.778732,
		-0.806199, 0.525284, 0.272249,
		-0.307815, -0.765371, 0.565205,
		19.362934, 34.636501, 17.604822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.154039, 35.361984, 17.871929>,  <19.578405, 35.172260, 17.209179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.154039, 35.361984, 17.871929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.268808, 34.989716, 17.962730>,  <19.337669, 34.766354, 18.017212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.268808, 34.989716, 17.962730>,  <19.154039, 35.361984, 17.871929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268808, 34.989716, 17.962730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353693, 0.323144, 0.877769,
		-0.890268, -0.171562, 0.421889,
		0.286923, -0.930669, 0.227004,
		19.354885, 34.710514, 18.030832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.145472, 35.297367, 18.583778>,  <19.154039, 35.361984, 17.871929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.145472, 35.297367, 18.583778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.374237, 34.991379, 18.465294>,  <19.511496, 34.807785, 18.394203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.374237, 34.991379, 18.465294>,  <19.145472, 35.297367, 18.583778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.374237, 34.991379, 18.465294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592405, 0.135373, 0.794185,
		-0.567427, -0.629681, 0.530592,
		0.571912, -0.764968, -0.296212,
		19.545811, 34.761887, 18.376431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.242670, 34.884380, 19.193972>,  <19.145472, 35.297367, 18.583778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.242670, 34.884380, 19.193972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.533875, 34.797630, 18.933830>,  <19.708597, 34.745579, 18.777744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.533875, 34.797630, 18.933830>,  <19.242670, 34.884380, 19.193972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.533875, 34.797630, 18.933830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677578, 0.083255, 0.730723,
		-0.104330, -0.972643, 0.207560,
		0.728013, -0.216875, -0.650356,
		19.752279, 34.732567, 18.738724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843517, 34.404865, 19.540480>,  <19.242670, 34.884380, 19.193972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.843517, 34.404865, 19.540480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.007946, 34.555183, 19.208263>,  <20.106604, 34.645374, 19.008934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.007946, 34.555183, 19.208263>,  <19.843517, 34.404865, 19.540480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.007946, 34.555183, 19.208263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848152, 0.176295, 0.499558,
		0.334153, -0.909778, -0.246264,
		0.411072, 0.375798, -0.830539,
		20.131268, 34.667923, 18.959101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.424822, 34.069012, 19.530382>,  <19.843517, 34.404865, 19.540480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.424822, 34.069012, 19.530382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.499437, 34.378906, 19.288727>,  <20.544207, 34.564842, 19.143734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.499437, 34.378906, 19.288727>,  <20.424822, 34.069012, 19.530382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.499437, 34.378906, 19.288727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840846, 0.192141, 0.506023,
		0.508115, -0.602379, -0.615596,
		0.186537, 0.774740, -0.604138,
		20.555399, 34.611328, 19.107485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.031904, 34.021126, 19.192921>,  <20.424822, 34.069012, 19.530382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.031904, 34.021126, 19.192921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.955875, 34.413536, 19.208176>,  <20.910257, 34.648983, 19.217329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.955875, 34.413536, 19.208176>,  <21.031904, 34.021126, 19.192921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.955875, 34.413536, 19.208176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810883, 0.134969, 0.569432,
		0.553482, 0.139159, -0.821153,
		-0.190072, 0.981029, 0.038138,
		20.898853, 34.707844, 19.219618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.669212, 34.228642, 19.001312>,  <21.031904, 34.021126, 19.192921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.669212, 34.228642, 19.001312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.480587, 34.549980, 19.146782>,  <21.367413, 34.742783, 19.234064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.480587, 34.549980, 19.146782>,  <21.669212, 34.228642, 19.001312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.480587, 34.549980, 19.146782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734679, 0.129811, 0.665880,
		0.487725, 0.581189, -0.651417,
		-0.471563, 0.803349, 0.363675,
		21.339119, 34.790985, 19.255884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.145962, 34.851192, 19.011240>,  <21.669212, 34.228642, 19.001312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.145962, 34.851192, 19.011240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.864645, 34.941338, 19.280933>,  <21.695856, 34.995426, 19.442749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.864645, 34.941338, 19.280933>,  <22.145962, 34.851192, 19.011240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.864645, 34.941338, 19.280933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709313, 0.159078, 0.686709,
		0.047504, 0.961200, -0.271732,
		-0.703291, 0.225365, 0.674235,
		21.653658, 35.008945, 19.483204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.249365, 35.531952, 19.180441>,  <22.145962, 34.851192, 19.011240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.249365, 35.531952, 19.180441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.040394, 35.356480, 19.472916>,  <21.915012, 35.251198, 19.648399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.040394, 35.356480, 19.472916>,  <22.249365, 35.531952, 19.180441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.040394, 35.356480, 19.472916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637882, 0.367980, 0.676534,
		-0.565843, 0.819848, 0.087583,
		-0.522426, -0.438679, 0.731185,
		21.883665, 35.224876, 19.692270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.090103, 36.180412, 19.718433>,  <22.249365, 35.531952, 19.180441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.090103, 36.180412, 19.718433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.035839, 35.835285, 19.913219>,  <22.003281, 35.628208, 20.030090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.035839, 35.835285, 19.913219>,  <22.090103, 36.180412, 19.718433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.035839, 35.835285, 19.913219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494456, 0.366962, 0.787942,
		-0.858551, 0.347675, 0.376845,
		-0.135660, -0.862821, 0.486966,
		21.995142, 35.576439, 20.059309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.903038, 36.327713, 20.350004>,  <22.090103, 36.180412, 19.718433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.903038, 36.327713, 20.350004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.059242, 35.971733, 20.444225>,  <22.152966, 35.758144, 20.500759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.059242, 35.971733, 20.444225>,  <21.903038, 36.327713, 20.350004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.059242, 35.971733, 20.444225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335516, 0.375858, 0.863805,
		-0.857280, -0.258294, 0.445370,
		0.390511, -0.889952, 0.235554,
		22.176395, 35.704746, 20.514891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.633743, 36.007767, 21.053295>,  <21.903038, 36.327713, 20.350004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.633743, 36.007767, 21.053295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.995031, 35.850861, 20.983643>,  <22.211803, 35.756718, 20.941851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.995031, 35.850861, 20.983643>,  <21.633743, 36.007767, 21.053295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.995031, 35.850861, 20.983643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314915, 0.330087, 0.889871,
		-0.291591, -0.858584, 0.421673,
		0.903218, -0.392270, -0.174130,
		22.265997, 35.733181, 20.931404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.783852, 35.703770, 21.687275>,  <21.633743, 36.007767, 21.053295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.783852, 35.703770, 21.687275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.133793, 35.716301, 21.493927>,  <22.343758, 35.723820, 21.377918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.133793, 35.716301, 21.493927>,  <21.783852, 35.703770, 21.687275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.133793, 35.716301, 21.493927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458831, 0.266243, 0.847696,
		0.155246, -0.963397, 0.218552,
		0.874856, 0.031323, -0.483370,
		22.396250, 35.725700, 21.348915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367937, 35.911961, 22.367380>,  <21.783852, 35.703770, 21.687275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367937, 35.911961, 22.367380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.141716, 36.212059, 22.504368>,  <21.005983, 36.392117, 22.586561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.141716, 36.212059, 22.504368>,  <21.367937, 35.911961, 22.367380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.141716, 36.212059, 22.504368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528682, -0.011099, -0.848747,
		-0.632965, -0.661070, 0.402916,
		-0.565554, 0.750242, 0.342470,
		20.972050, 36.437130, 22.607109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.588232, 35.790016, 22.190275>,  <21.367937, 35.911961, 22.367380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.588232, 35.790016, 22.190275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.641605, 36.182114, 22.248688>,  <20.673630, 36.417370, 22.283735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.641605, 36.182114, 22.248688>,  <20.588232, 35.790016, 22.190275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.641605, 36.182114, 22.248688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398044, 0.187948, -0.897907,
		-0.907610, 0.061687, 0.415257,
		0.133435, 0.980240, 0.146029,
		20.681637, 36.476185, 22.292496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970619, 36.053749, 22.082159>,  <20.588232, 35.790016, 22.190275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970619, 36.053749, 22.082159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.232851, 36.347305, 22.011040>,  <20.390190, 36.523441, 21.968369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.232851, 36.347305, 22.011040>,  <19.970619, 36.053749, 22.082159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.232851, 36.347305, 22.011040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506868, 0.253146, -0.824016,
		-0.559732, 0.630329, 0.537945,
		0.655580, 0.733895, -0.177801,
		20.429525, 36.567474, 21.957699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.648771, 36.794006, 21.936409>,  <19.970619, 36.053749, 22.082159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.648771, 36.794006, 21.936409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.015648, 36.838970, 21.783504>,  <20.235773, 36.865948, 21.691763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.015648, 36.838970, 21.783504>,  <19.648771, 36.794006, 21.936409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.015648, 36.838970, 21.783504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395077, 0.381063, -0.835886,
		0.051704, 0.917690, 0.393918,
		0.917192, 0.112410, -0.382260,
		20.290806, 36.872692, 21.668827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.579693, 37.487297, 21.663700>,  <19.648771, 36.794006, 21.936409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.579693, 37.487297, 21.663700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.892935, 37.326149, 21.474197>,  <20.080879, 37.229462, 21.360497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.892935, 37.326149, 21.474197>,  <19.579693, 37.487297, 21.663700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.892935, 37.326149, 21.474197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394562, 0.266977, -0.879229,
		0.480698, 0.875453, 0.050113,
		0.783103, -0.402871, -0.473756,
		20.127865, 37.205288, 21.332071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.753422, 38.009033, 21.146627>,  <19.579693, 37.487297, 21.663700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.753422, 38.009033, 21.146627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.892935, 37.651596, 21.033604>,  <19.976643, 37.437134, 20.965790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.892935, 37.651596, 21.033604>,  <19.753422, 38.009033, 21.146627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.892935, 37.651596, 21.033604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356103, 0.152523, -0.921915,
		0.866915, 0.422169, -0.265015,
		0.348783, -0.893594, -0.282560,
		19.997570, 37.383518, 20.948835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061525, 38.172497, 20.460899>,  <19.753422, 38.009033, 21.146627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061525, 38.172497, 20.460899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.025805, 37.774151, 20.467632>,  <20.004372, 37.535145, 20.471672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.025805, 37.774151, 20.467632>,  <20.061525, 38.172497, 20.460899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025805, 37.774151, 20.467632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489613, 0.029176, -0.871452,
		0.867355, -0.086063, -0.490193,
		-0.089301, -0.995862, 0.016832,
		19.999014, 37.475391, 20.472681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.305378, 37.873882, 19.762669>,  <20.061525, 38.172497, 20.460899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.305378, 37.873882, 19.762669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.059565, 37.597073, 19.914169>,  <19.912075, 37.430988, 20.005070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.059565, 37.597073, 19.914169>,  <20.305378, 37.873882, 19.762669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.059565, 37.597073, 19.914169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383358, -0.157644, -0.910047,
		0.689480, -0.704453, -0.168414,
		-0.614536, -0.692022, 0.378750,
		19.875204, 37.389465, 20.027794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308311, 37.267971, 19.282978>,  <20.305378, 37.873882, 19.762669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.308311, 37.267971, 19.282978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.970406, 37.224152, 19.492500>,  <19.767662, 37.197861, 19.618214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.970406, 37.224152, 19.492500>,  <20.308311, 37.267971, 19.282978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970406, 37.224152, 19.492500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499214, -0.191264, -0.845106,
		0.192767, -0.975406, 0.106883,
		-0.844764, -0.109551, 0.523805,
		19.716976, 37.191288, 19.649641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.968592, 36.790165, 18.934256>,  <20.308311, 37.267971, 19.282978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.968592, 36.790165, 18.934256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.687521, 36.940323, 19.176022>,  <19.518879, 37.030418, 19.321081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.687521, 36.940323, 19.176022>,  <19.968592, 36.790165, 18.934256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687521, 36.940323, 19.176022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678396, -0.097354, -0.728218,
		-0.214529, -0.921737, 0.323077,
		-0.702678, 0.375398, 0.604417,
		19.476717, 37.052940, 19.357347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390505, 36.321602, 18.856445>,  <19.968592, 36.790165, 18.934256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.390505, 36.321602, 18.856445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.249756, 36.674068, 18.982769>,  <19.165306, 36.885548, 19.058563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.249756, 36.674068, 18.982769>,  <19.390505, 36.321602, 18.856445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249756, 36.674068, 18.982769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793210, -0.101558, -0.600420,
		-0.496996, -0.461773, 0.734684,
		-0.351871, 0.881164, 0.315809,
		19.144194, 36.938419, 19.077513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.657570, 36.217342, 19.017099>,  <19.390505, 36.321602, 18.856445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.657570, 36.217342, 19.017099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.679344, 36.614887, 18.978561>,  <18.692410, 36.853413, 18.955439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.679344, 36.614887, 18.978561>,  <18.657570, 36.217342, 19.017099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679344, 36.614887, 18.978561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865165, -0.001227, -0.501485,
		-0.498523, 0.110654, 0.859785,
		0.054436, 0.993858, -0.096345,
		18.695675, 36.913044, 18.949657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016169, 36.459858, 19.209513>,  <18.657570, 36.217342, 19.017099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016169, 36.459858, 19.209513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.161940, 36.776825, 19.013851>,  <18.249403, 36.967003, 18.896454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.161940, 36.776825, 19.013851>,  <18.016169, 36.459858, 19.209513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161940, 36.776825, 19.013851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872658, 0.107245, -0.476409,
		-0.325054, 0.600482, 0.730590,
		0.364427, 0.792414, -0.489155,
		18.271267, 37.014549, 18.867105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432400, 36.914783, 19.145905>,  <18.016169, 36.459858, 19.209513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.432400, 36.914783, 19.145905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.688822, 37.026409, 18.859921>,  <17.842674, 37.093384, 18.688330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.688822, 37.026409, 18.859921>,  <17.432400, 36.914783, 19.145905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.688822, 37.026409, 18.859921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754934, 0.061432, -0.652918,
		-0.138287, 0.958304, 0.250059,
		0.641055, 0.279068, -0.714961,
		17.881138, 37.110130, 18.645432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021990, 37.233582, 18.747166>,  <17.432400, 36.914783, 19.145905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021990, 37.233582, 18.747166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.330713, 37.215801, 18.493446>,  <17.515947, 37.205135, 18.341215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.330713, 37.215801, 18.493446>,  <17.021990, 37.233582, 18.747166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330713, 37.215801, 18.493446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628099, 0.102030, -0.771415,
		0.099005, 0.993788, 0.050830,
		0.771809, -0.044448, -0.634299,
		17.562256, 37.202469, 18.303156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.838589, 37.681004, 18.247656>,  <17.021990, 37.233582, 18.747166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.838589, 37.681004, 18.247656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.105864, 37.436398, 18.078148>,  <17.266228, 37.289635, 17.976444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.105864, 37.436398, 18.078148>,  <16.838589, 37.681004, 18.247656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.105864, 37.436398, 18.078148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552531, -0.026433, -0.833073,
		0.498233, 0.790794, -0.355542,
		0.668187, -0.611512, -0.423768,
		17.306320, 37.252945, 17.951017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085693, 37.977852, 17.601450>,  <16.838589, 37.681004, 18.247656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085693, 37.977852, 17.601450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.157223, 37.585693, 17.568371>,  <17.200140, 37.350399, 17.548523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.157223, 37.585693, 17.568371>,  <17.085693, 37.977852, 17.601450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157223, 37.585693, 17.568371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446314, -0.005923, -0.894857,
		0.876827, 0.196930, -0.438625,
		0.178822, -0.980400, -0.082699,
		17.210869, 37.291573, 17.543560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402010, 37.975338, 17.037184>,  <17.085693, 37.977852, 17.601450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402010, 37.975338, 17.037184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.254622, 37.607883, 17.094215>,  <17.166187, 37.387409, 17.128435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.254622, 37.607883, 17.094215>,  <17.402010, 37.975338, 17.037184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254622, 37.607883, 17.094215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470477, 0.051993, -0.880879,
		0.801797, -0.391660, -0.451357,
		-0.368473, -0.918640, 0.142579,
		17.144079, 37.332291, 17.136990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.354900, 37.671749, 16.369415>,  <17.402010, 37.975338, 17.037184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.354900, 37.671749, 16.369415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.142437, 37.401199, 16.573528>,  <17.014959, 37.238869, 16.695995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.142437, 37.401199, 16.573528>,  <17.354900, 37.671749, 16.369415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142437, 37.401199, 16.573528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510063, -0.225637, -0.830014,
		0.676539, -0.701145, -0.225145,
		-0.531160, -0.676376, 0.510281,
		16.983089, 37.198288, 16.726612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.377737, 36.985157, 16.078192>,  <17.354900, 37.671749, 16.369415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.377737, 36.985157, 16.078192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.033413, 36.987209, 16.281754>,  <16.826818, 36.988441, 16.403891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.033413, 36.987209, 16.281754>,  <17.377737, 36.985157, 16.078192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.033413, 36.987209, 16.281754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486243, -0.303518, -0.819417,
		0.150254, -0.952812, 0.263768,
		-0.860808, 0.005134, 0.508903,
		16.775171, 36.988750, 16.434425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043941, 36.232204, 16.010822>,  <17.377737, 36.985157, 16.078192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043941, 36.232204, 16.010822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.761427, 36.503597, 16.091640>,  <16.591919, 36.666431, 16.140131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.761427, 36.503597, 16.091640>,  <17.043941, 36.232204, 16.010822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.761427, 36.503597, 16.091640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568616, -0.373686, -0.732827,
		-0.421712, -0.632468, 0.649726,
		-0.706282, 0.678486, 0.202044,
		16.549541, 36.707142, 16.152254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.103895, 29.116007, 22.011168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398920, 29.309750, 22.199379>,  <28.575935, 29.425995, 22.312305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398920, 29.309750, 22.199379>,  <28.103895, 29.116007, 22.011168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398920, 29.309750, 22.199379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180848, 0.813023, -0.553432,
		-0.650611, 0.323097, 0.687251,
		0.737563, 0.484357, 0.470530,
		28.620190, 29.455057, 22.340538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739794, 29.756908, 22.222057>,  <28.103895, 29.116007, 22.011168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739794, 29.756908, 22.222057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135418, 29.815464, 22.229347>,  <28.372791, 29.850597, 22.233721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135418, 29.815464, 22.229347>,  <27.739794, 29.756908, 22.222057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135418, 29.815464, 22.229347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111446, 0.822420, -0.557858,
		-0.096653, 0.549723, 0.829736,
		0.989059, 0.146390, 0.018225,
		28.432137, 29.859381, 22.234816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833857, 30.378910, 22.358746>,  <27.739794, 29.756908, 22.222057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833857, 30.378910, 22.358746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203718, 30.316113, 22.219971>,  <28.425636, 30.278435, 22.136705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203718, 30.316113, 22.219971>,  <27.833857, 30.378910, 22.358746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203718, 30.316113, 22.219971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067131, 0.829594, -0.554317,
		0.374841, 0.535842, 0.756550,
		0.924655, -0.156993, -0.346938,
		28.481115, 30.269014, 22.115889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239843, 30.991146, 22.427471>,  <27.833857, 30.378910, 22.358746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239843, 30.991146, 22.427471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412146, 30.778507, 22.135757>,  <28.515526, 30.650923, 21.960730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412146, 30.778507, 22.135757>,  <28.239843, 30.991146, 22.427471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412146, 30.778507, 22.135757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133611, 0.836757, -0.531023,
		0.892524, 0.131300, 0.431464,
		0.430754, -0.531599, -0.729283,
		28.541372, 30.619028, 21.916973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777582, 31.428501, 22.306267>,  <28.239843, 30.991146, 22.427471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777582, 31.428501, 22.306267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701160, 31.188595, 21.995453>,  <28.655308, 31.044651, 21.808966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701160, 31.188595, 21.995453>,  <28.777582, 31.428501, 22.306267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701160, 31.188595, 21.995453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112119, 0.773101, -0.624295,
		0.975155, -0.206394, -0.080459,
		-0.191054, -0.599764, -0.777034,
		28.643845, 31.008665, 21.762342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310741, 31.628933, 21.864042>,  <28.777582, 31.428501, 22.306267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310741, 31.628933, 21.864042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041073, 31.422543, 21.652660>,  <28.879272, 31.298708, 21.525831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041073, 31.422543, 21.652660>,  <29.310741, 31.628933, 21.864042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041073, 31.422543, 21.652660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008939, 0.721151, -0.692720,
		0.738530, -0.462281, -0.490785,
		-0.674162, -0.515982, -0.528459,
		28.838821, 31.267750, 21.494125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564678, 31.527472, 21.175953>,  <29.310741, 31.628933, 21.864042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564678, 31.527472, 21.175953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166468, 31.528488, 21.138180>,  <28.927542, 31.529099, 21.115517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166468, 31.528488, 21.138180>,  <29.564678, 31.527472, 21.175953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166468, 31.528488, 21.138180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054242, 0.833807, -0.549384,
		0.077343, -0.552050, -0.830217,
		-0.995528, 0.002542, -0.094433,
		28.867809, 31.529251, 21.109850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436386, 32.005096, 20.622442>,  <29.564678, 31.527472, 21.175953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436386, 32.005096, 20.622442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065126, 32.017941, 20.770767>,  <28.842369, 32.025646, 20.859762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065126, 32.017941, 20.770767>,  <29.436386, 32.005096, 20.622442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065126, 32.017941, 20.770767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061654, 0.969244, -0.238254,
		-0.367061, -0.243998, -0.897625,
		-0.928151, 0.032111, 0.370815,
		28.786680, 32.027573, 20.882011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092459, 32.289562, 20.214695>,  <29.436386, 32.005096, 20.622442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092459, 32.289562, 20.214695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878487, 32.338081, 20.549152>,  <28.750103, 32.367191, 20.749826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878487, 32.338081, 20.549152>,  <29.092459, 32.289562, 20.214695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878487, 32.338081, 20.549152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010417, 0.988619, -0.150080,
		-0.844831, -0.088993, -0.527580,
		-0.534932, 0.121296, 0.836143,
		28.718006, 32.374470, 20.799995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794489, 32.892262, 20.103630>,  <29.092459, 32.289562, 20.214695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794489, 32.892262, 20.103630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727055, 32.862354, 20.496769>,  <28.686594, 32.844410, 20.732653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727055, 32.862354, 20.496769>,  <28.794489, 32.892262, 20.103630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727055, 32.862354, 20.496769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029696, 0.996281, 0.080882,
		-0.985240, 0.042823, -0.165739,
		-0.168586, -0.074767, 0.982847,
		28.676479, 32.839924, 20.791622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393866, 33.509556, 20.219883>,  <28.794489, 32.892262, 20.103630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393866, 33.509556, 20.219883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512798, 33.376602, 20.577904>,  <28.584158, 33.296829, 20.792717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512798, 33.376602, 20.577904>,  <28.393866, 33.509556, 20.219883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512798, 33.376602, 20.577904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002786, 0.937746, 0.347311,
		-0.954770, -0.100773, 0.279747,
		0.297331, -0.332382, 0.895051,
		28.601997, 33.276886, 20.846418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951340, 33.827469, 20.730780>,  <28.393866, 33.509556, 20.219883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951340, 33.827469, 20.730780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295519, 33.729397, 20.909447>,  <28.502028, 33.670555, 21.016647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295519, 33.729397, 20.909447>,  <27.951340, 33.827469, 20.730780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295519, 33.729397, 20.909447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018996, 0.891446, 0.452729,
		-0.509182, -0.381065, 0.771701,
		0.860449, -0.245181, 0.446670,
		28.553654, 33.655842, 21.043447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508165, 33.845432, 21.263180>,  <27.951340, 33.827469, 20.730780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508165, 33.845432, 21.263180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239613, 33.985893, 21.002125>,  <27.078482, 34.070171, 20.845491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239613, 33.985893, 21.002125>,  <27.508165, 33.845432, 21.263180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239613, 33.985893, 21.002125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685805, 0.039430, 0.726717,
		0.280924, 0.935487, 0.214351,
		-0.671382, 0.351155, -0.652638,
		27.038198, 34.091240, 20.806334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212793, 34.457523, 21.482183>,  <27.508165, 33.845432, 21.263180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212793, 34.457523, 21.482183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946953, 34.270370, 21.249153>,  <26.787449, 34.158081, 21.109335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946953, 34.270370, 21.249153>,  <27.212793, 34.457523, 21.482183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946953, 34.270370, 21.249153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635434, -0.056286, 0.770101,
		-0.393105, 0.881998, -0.259899,
		-0.664599, -0.467879, -0.582578,
		26.747574, 34.130005, 21.074379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057789, 34.973442, 22.066986>,  <27.212793, 34.457523, 21.482183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057789, 34.973442, 22.066986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786470, 35.108379, 22.328094>,  <26.623678, 35.189342, 22.484760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786470, 35.108379, 22.328094>,  <27.057789, 34.973442, 22.066986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786470, 35.108379, 22.328094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472929, -0.479483, 0.739212,
		0.562361, 0.810121, 0.165694,
		-0.678298, 0.337342, 0.652772,
		26.582981, 35.209583, 22.523926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452597, 35.343975, 22.606373>,  <27.057789, 34.973442, 22.066986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452597, 35.343975, 22.606373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090605, 35.244225, 22.744255>,  <26.873409, 35.184376, 22.826984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090605, 35.244225, 22.744255>,  <27.452597, 35.343975, 22.606373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090605, 35.244225, 22.744255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422180, -0.426074, 0.800140,
		-0.052664, 0.869640, 0.490870,
		-0.904981, -0.249374, 0.344706,
		26.819111, 35.169411, 22.847668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398823, 35.620838, 23.266747>,  <27.452597, 35.343975, 22.606373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398823, 35.620838, 23.266747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145823, 35.313354, 23.228722>,  <26.994022, 35.128864, 23.205908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145823, 35.313354, 23.228722>,  <27.398823, 35.620838, 23.266747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145823, 35.313354, 23.228722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450232, -0.464741, 0.762434,
		-0.630266, 0.439440, 0.640045,
		-0.632499, -0.768706, -0.095061,
		26.956074, 35.082745, 23.200203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283394, 35.392452, 23.870314>,  <27.398823, 35.620838, 23.266747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283394, 35.392452, 23.870314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113234, 35.080338, 23.686932>,  <27.011137, 34.893066, 23.576902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113234, 35.080338, 23.686932>,  <27.283394, 35.392452, 23.870314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113234, 35.080338, 23.686932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307402, -0.601043, 0.737734,
		-0.851197, 0.172904, 0.495547,
		-0.425402, -0.780290, -0.458455,
		26.985613, 34.846252, 23.549395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106163, 34.922409, 24.421545>,  <27.283394, 35.392452, 23.870314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106163, 34.922409, 24.421545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130671, 34.693886, 24.094166>,  <27.145376, 34.556770, 23.897739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130671, 34.693886, 24.094166>,  <27.106163, 34.922409, 24.421545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130671, 34.693886, 24.094166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424761, -0.727106, 0.539347,
		-0.903230, -0.380690, 0.198118,
		0.061271, -0.571307, -0.818446,
		27.149052, 34.522495, 23.848633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774363, 34.370052, 24.646559>,  <27.106163, 34.922409, 24.421545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774363, 34.370052, 24.646559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001402, 34.282768, 24.329014>,  <27.137627, 34.230396, 24.138487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001402, 34.282768, 24.329014>,  <26.774363, 34.370052, 24.646559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001402, 34.282768, 24.329014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414981, -0.756964, 0.504773,
		-0.711070, -0.615946, -0.339100,
		0.567600, -0.218209, -0.793861,
		27.171682, 34.217304, 24.090855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670116, 33.674660, 24.594572>,  <26.774363, 34.370052, 24.646559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670116, 33.674660, 24.594572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006166, 33.741974, 24.388321>,  <27.207796, 33.782360, 24.264570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006166, 33.741974, 24.388321>,  <26.670116, 33.674660, 24.594572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006166, 33.741974, 24.388321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451519, -0.743732, 0.492944,
		-0.300534, -0.646950, -0.700811,
		0.840125, 0.168283, -0.515627,
		27.258204, 33.792458, 24.233633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896015, 33.052807, 24.248272>,  <26.670116, 33.674660, 24.594572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896015, 33.052807, 24.248272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236050, 33.263428, 24.252254>,  <27.440069, 33.389801, 24.254644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236050, 33.263428, 24.252254>,  <26.896015, 33.052807, 24.248272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236050, 33.263428, 24.252254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458287, -0.748926, 0.478626,
		0.259477, -0.402310, -0.877962,
		0.850085, 0.526551, 0.009956,
		27.491076, 33.421394, 24.255241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405888, 32.509815, 24.182842>,  <26.896015, 33.052807, 24.248272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405888, 32.509815, 24.182842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598324, 32.841930, 24.295395>,  <27.713785, 33.041199, 24.362926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598324, 32.841930, 24.295395>,  <27.405888, 32.509815, 24.182842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598324, 32.841930, 24.295395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580030, -0.542132, 0.607996,
		0.657356, -0.129292, -0.742406,
		0.481091, 0.830287, 0.281381,
		27.742651, 33.091015, 24.379808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143852, 32.400719, 24.086788>,  <27.405888, 32.509815, 24.182842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143852, 32.400719, 24.086788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078032, 32.668430, 24.376614>,  <28.038540, 32.829056, 24.550508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078032, 32.668430, 24.376614>,  <28.143852, 32.400719, 24.086788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078032, 32.668430, 24.376614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539343, -0.553983, 0.634202,
		0.825852, 0.495146, -0.269812,
		-0.164551, 0.669278, 0.724562,
		28.028666, 32.869213, 24.593983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814795, 32.360542, 24.460873>,  <28.143852, 32.400719, 24.086788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814795, 32.360542, 24.460873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532413, 32.534988, 24.684097>,  <28.362986, 32.639656, 24.818031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532413, 32.534988, 24.684097>,  <28.814795, 32.360542, 24.460873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532413, 32.534988, 24.684097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363408, -0.453264, 0.813933,
		0.607919, 0.777402, 0.161495,
		-0.705953, 0.436117, 0.558062,
		28.320627, 32.665825, 24.851517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189299, 32.567459, 24.977259>,  <28.814795, 32.360542, 24.460873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189299, 32.567459, 24.977259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809441, 32.574696, 25.102383>,  <28.581526, 32.579037, 25.177456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809441, 32.574696, 25.102383>,  <29.189299, 32.567459, 24.977259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809441, 32.574696, 25.102383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250247, -0.556987, 0.791923,
		0.188555, 0.830325, 0.524412,
		-0.949644, 0.018089, 0.312809,
		28.524548, 32.580124, 25.196226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404442, 32.567459, 25.590462>,  <29.189299, 32.567459, 24.977259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404442, 32.567459, 25.590462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019045, 32.460873, 25.600872>,  <28.787807, 32.396919, 25.607119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019045, 32.460873, 25.600872>,  <29.404442, 32.567459, 25.590462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019045, 32.460873, 25.600872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142318, -0.427386, 0.892797,
		-0.226779, 0.863907, 0.449706,
		-0.963492, -0.266469, 0.026028,
		28.729998, 32.380932, 25.608681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072456, 32.635803, 26.312012>,  <29.404442, 32.567459, 25.590462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072456, 32.635803, 26.312012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824875, 32.384472, 26.123505>,  <28.676327, 32.233673, 26.010401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824875, 32.384472, 26.123505>,  <29.072456, 32.635803, 26.312012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824875, 32.384472, 26.123505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129387, -0.510249, 0.850238,
		-0.774696, 0.587234, 0.234523,
		-0.618954, -0.628332, -0.471269,
		28.639189, 32.195972, 25.982124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887857, 33.304314, 26.620024>,  <29.072456, 32.635803, 26.312012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887857, 33.304314, 26.620024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022814, 33.563587, 26.893089>,  <29.103788, 33.719151, 27.056929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022814, 33.563587, 26.893089>,  <28.887857, 33.304314, 26.620024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022814, 33.563587, 26.893089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501874, 0.489674, -0.712981,
		-0.796423, 0.583165, -0.160093,
		0.337392, 0.648181, 0.682662,
		29.124031, 33.758041, 27.097889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904121, 33.958847, 26.322433>,  <28.887857, 33.304314, 26.620024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904121, 33.958847, 26.322433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152845, 34.027786, 26.628021>,  <29.302080, 34.069149, 26.811373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152845, 34.027786, 26.628021>,  <28.904121, 33.958847, 26.322433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152845, 34.027786, 26.628021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521742, 0.636334, -0.568212,
		-0.584070, 0.751914, 0.305757,
		0.621810, 0.172349, 0.763969,
		29.339388, 34.079491, 26.857212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982332, 34.623142, 26.482586>,  <28.904121, 33.958847, 26.322433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982332, 34.623142, 26.482586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328482, 34.475037, 26.617657>,  <29.536171, 34.386173, 26.698700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328482, 34.475037, 26.617657>,  <28.982332, 34.623142, 26.482586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328482, 34.475037, 26.617657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497352, 0.717123, -0.488238,
		-0.061378, 0.590455, 0.804734,
		0.865375, -0.370268, 0.337679,
		29.588095, 34.363956, 26.718960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346378, 35.183132, 26.600077>,  <28.982332, 34.623142, 26.482586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346378, 35.183132, 26.600077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612225, 34.888493, 26.549950>,  <29.771732, 34.711708, 26.519875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612225, 34.888493, 26.549950>,  <29.346378, 35.183132, 26.600077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612225, 34.888493, 26.549950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485216, 0.553026, -0.677294,
		0.568198, 0.389336, 0.724961,
		0.664617, -0.736600, -0.125316,
		29.811609, 34.667511, 26.512354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034172, 35.551250, 26.414362>,  <29.346378, 35.183132, 26.600077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034172, 35.551250, 26.414362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083239, 35.169628, 26.305012>,  <30.112679, 34.940655, 26.239403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083239, 35.169628, 26.305012>,  <30.034172, 35.551250, 26.414362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083239, 35.169628, 26.305012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513839, 0.296715, -0.804941,
		0.849071, -0.041730, 0.526628,
		0.122668, -0.954054, -0.273374,
		30.120039, 34.883411, 26.223000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704655, 35.521931, 26.224586>,  <30.034172, 35.551250, 26.414362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704655, 35.521931, 26.224586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537115, 35.211140, 26.036598>,  <30.436592, 35.024666, 25.923805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537115, 35.211140, 26.036598>,  <30.704655, 35.521931, 26.224586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537115, 35.211140, 26.036598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552706, 0.192499, -0.810839,
		0.720473, -0.599374, 0.348812,
		-0.418850, -0.776978, -0.469968,
		30.411461, 34.978046, 25.895607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138842, 35.432961, 25.756687>,  <30.704655, 35.521931, 26.224586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138842, 35.432961, 25.756687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835392, 35.212143, 25.618271>,  <30.653322, 35.079655, 25.535221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835392, 35.212143, 25.618271>,  <31.138842, 35.432961, 25.756687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835392, 35.212143, 25.618271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354489, 0.095894, -0.930130,
		0.546652, -0.828285, 0.122945,
		-0.758623, -0.552040, -0.346039,
		30.607805, 35.046532, 25.514460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449080, 34.856564, 25.378895>,  <31.138842, 35.432961, 25.756687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449080, 34.856564, 25.378895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080889, 34.904724, 25.230179>,  <30.859974, 34.933620, 25.140949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080889, 34.904724, 25.230179>,  <31.449080, 34.856564, 25.378895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080889, 34.904724, 25.230179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371440, -0.026173, -0.928088,
		-0.121476, -0.992380, -0.020631,
		-0.920476, 0.120404, -0.371789,
		30.804747, 34.940845, 25.118643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489868, 34.575146, 24.830721>,  <31.449080, 34.856564, 25.378895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489868, 34.575146, 24.830721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154470, 34.784691, 24.770725>,  <30.953232, 34.910416, 24.734728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154470, 34.784691, 24.770725>,  <31.489868, 34.575146, 24.830721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154470, 34.784691, 24.770725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319228, 0.249170, -0.914335,
		-0.441609, -0.814546, -0.376159,
		-0.838495, 0.523859, -0.149990,
		30.902922, 34.941849, 24.725729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289953, 34.410206, 24.071547>,  <31.489868, 34.575146, 24.830721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289953, 34.410206, 24.071547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098185, 34.742245, 24.185452>,  <30.983124, 34.941467, 24.253794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098185, 34.742245, 24.185452>,  <31.289953, 34.410206, 24.071547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098185, 34.742245, 24.185452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292253, 0.456982, -0.840093,
		-0.827491, -0.319537, -0.461687,
		-0.479423, 0.830099, 0.284763,
		30.954357, 34.991276, 24.270880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750095, 34.595886, 23.536083>,  <31.289953, 34.410206, 24.071547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750095, 34.595886, 23.536083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845263, 34.925213, 23.742207>,  <30.902363, 35.122810, 23.865881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845263, 34.925213, 23.742207>,  <30.750095, 34.595886, 23.536083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845263, 34.925213, 23.742207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096739, 0.547989, -0.830873,
		-0.966456, 0.147829, 0.210023,
		0.237917, 0.823320, 0.515306,
		30.916637, 35.172207, 23.896799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304125, 35.106968, 23.182289>,  <30.750095, 34.595886, 23.536083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304125, 35.106968, 23.182289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591764, 35.304806, 23.377541>,  <30.764347, 35.423508, 23.494692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591764, 35.304806, 23.377541>,  <30.304125, 35.106968, 23.182289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591764, 35.304806, 23.377541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148495, 0.576843, -0.803244,
		-0.678857, 0.650096, 0.341362,
		0.719098, 0.494598, 0.488130,
		30.807493, 35.453186, 23.523979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.101301, 31.748629, 29.402018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.446968, 31.763458, 29.602753>,  <27.654367, 31.772356, 29.723194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.446968, 31.763458, 29.602753>,  <27.101301, 31.748629, 29.402018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446968, 31.763458, 29.602753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224786, 0.863808, -0.450895,
		-0.450209, 0.502455, 0.738140,
		0.864166, 0.037074, 0.501839,
		27.706219, 31.774580, 29.753305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066128, 32.414608, 29.719864>,  <27.101301, 31.748629, 29.402018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066128, 32.414608, 29.719864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.452356, 32.318378, 29.680264>,  <27.684093, 32.260643, 29.656504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.452356, 32.318378, 29.680264>,  <27.066128, 32.414608, 29.719864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452356, 32.318378, 29.680264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142720, 0.808043, -0.571574,
		0.217499, 0.537765, 0.814556,
		0.965570, -0.240570, -0.098999,
		27.742027, 32.246208, 29.650564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451693, 33.057129, 29.849560>,  <27.066128, 32.414608, 29.719864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451693, 33.057129, 29.849560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.711178, 32.818333, 29.660763>,  <27.866869, 32.675056, 29.547485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.711178, 32.818333, 29.660763>,  <27.451693, 33.057129, 29.849560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711178, 32.818333, 29.660763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255131, 0.754909, -0.604169,
		0.716992, 0.271513, 0.642030,
		0.648715, -0.596986, -0.471992,
		27.905792, 32.639236, 29.519165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036627, 33.548409, 29.740118>,  <27.451693, 33.057129, 29.849560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036627, 33.548409, 29.740118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.086878, 33.242676, 29.487133>,  <28.117029, 33.059235, 29.335342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.086878, 33.242676, 29.487133>,  <28.036627, 33.548409, 29.740118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086878, 33.242676, 29.487133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463512, 0.608875, -0.643760,
		0.877139, -0.212279, 0.430771,
		0.125629, -0.764335, -0.632462,
		28.124567, 33.013374, 29.297394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676064, 33.607048, 29.508455>,  <28.036627, 33.548409, 29.740118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676064, 33.607048, 29.508455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.514791, 33.394333, 29.210556>,  <28.418028, 33.266705, 29.031816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.514791, 33.394333, 29.210556>,  <28.676064, 33.607048, 29.508455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514791, 33.394333, 29.210556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564163, 0.496339, -0.659824,
		0.720532, -0.686187, 0.099900,
		-0.403179, -0.531785, -0.744750,
		28.393837, 33.234798, 28.987131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197105, 33.362091, 29.075476>,  <28.676064, 33.607048, 29.508455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197105, 33.362091, 29.075476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.876369, 33.361538, 28.836460>,  <28.683928, 33.361206, 28.693050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.876369, 33.361538, 28.836460>,  <29.197105, 33.362091, 29.075476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876369, 33.361538, 28.836460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544912, 0.408670, -0.732161,
		0.245209, -0.912681, -0.326934,
		-0.801838, -0.001382, -0.597540,
		28.635818, 33.361122, 28.657198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331444, 32.920437, 28.485275>,  <29.197105, 33.362091, 29.075476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331444, 32.920437, 28.485275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.038416, 33.148247, 28.336155>,  <28.862600, 33.284935, 28.246683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.038416, 33.148247, 28.336155>,  <29.331444, 32.920437, 28.485275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038416, 33.148247, 28.336155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650033, 0.422799, -0.631426,
		-0.201994, -0.704896, -0.679941,
		-0.732568, 0.569528, -0.372803,
		28.818645, 33.319107, 28.224314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389210, 32.826519, 27.795338>,  <29.331444, 32.920437, 28.485275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389210, 32.826519, 27.795338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.169662, 33.158997, 27.830807>,  <29.037935, 33.358482, 27.852087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.169662, 33.158997, 27.830807>,  <29.389210, 32.826519, 27.795338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169662, 33.158997, 27.830807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545171, 0.436357, -0.715808,
		-0.633667, -0.344543, -0.692644,
		-0.548866, 0.831194, 0.088670,
		29.005003, 33.408356, 27.857409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095701, 32.930069, 27.185499>,  <29.389210, 32.826519, 27.795338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095701, 32.930069, 27.185499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.090424, 33.295773, 27.347462>,  <29.087257, 33.515194, 27.444639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.090424, 33.295773, 27.347462>,  <29.095701, 32.930069, 27.185499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090424, 33.295773, 27.347462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597174, 0.331999, -0.730178,
		-0.802003, 0.232165, -0.550355,
		-0.013196, 0.914263, 0.404907,
		29.086464, 33.570053, 27.468933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680738, 32.278152, 26.975590>,  <29.095701, 32.930069, 27.185499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680738, 32.278152, 26.975590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.594458, 32.054508, 26.655373>,  <28.542690, 31.920322, 26.463242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.594458, 32.054508, 26.655373>,  <28.680738, 32.278152, 26.975590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594458, 32.054508, 26.655373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356573, -0.718124, 0.597623,
		-0.909026, 0.414361, -0.044463,
		-0.215701, -0.559109, -0.800543,
		28.529747, 31.886776, 26.415209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934803, 31.884615, 27.048227>,  <28.680738, 32.278152, 26.975590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934803, 31.884615, 27.048227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.126280, 31.688190, 26.757103>,  <28.241167, 31.570335, 26.582428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.126280, 31.688190, 26.757103>,  <27.934803, 31.884615, 27.048227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126280, 31.688190, 26.757103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131935, -0.859782, 0.493324,
		-0.868019, -0.140119, -0.476350,
		0.478681, -0.491062, -0.727820,
		28.269888, 31.540873, 26.538759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583584, 31.211145, 26.978756>,  <27.934803, 31.884615, 27.048227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583584, 31.211145, 26.978756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.937328, 31.143299, 26.804798>,  <28.149576, 31.102592, 26.700422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.937328, 31.143299, 26.804798>,  <27.583584, 31.211145, 26.978756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937328, 31.143299, 26.804798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036350, -0.903799, 0.426411,
		-0.465384, -0.392910, -0.793120,
		0.884362, -0.169615, -0.434896,
		28.202637, 31.092415, 26.674330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539791, 30.618814, 26.629299>,  <27.583584, 31.211145, 26.978756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539791, 30.618814, 26.629299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.930862, 30.675652, 26.691212>,  <28.165504, 30.709753, 26.728359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.930862, 30.675652, 26.691212>,  <27.539791, 30.618814, 26.629299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930862, 30.675652, 26.691212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069480, -0.913851, 0.400060,
		0.198294, -0.380375, -0.903324,
		0.977677, 0.142092, 0.154783,
		28.224165, 30.718279, 26.737646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945724, 29.959404, 26.409332>,  <27.539791, 30.618814, 26.629299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945724, 29.959404, 26.409332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.189835, 30.150414, 26.662167>,  <28.336302, 30.265018, 26.813868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.189835, 30.150414, 26.662167>,  <27.945724, 29.959404, 26.409332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189835, 30.150414, 26.662167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269021, -0.875409, 0.401605,
		0.745110, -0.075046, -0.662705,
		0.610277, 0.477522, 0.632088,
		28.372917, 30.293671, 26.851793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615808, 29.568377, 26.449900>,  <27.945724, 29.959404, 26.409332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615808, 29.568377, 26.449900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.609076, 29.797703, 26.777565>,  <28.605036, 29.935299, 26.974165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.609076, 29.797703, 26.777565>,  <28.615808, 29.568377, 26.449900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609076, 29.797703, 26.777565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270918, -0.786016, 0.555682,
		0.962456, 0.231279, -0.142091,
		-0.016831, 0.573314, 0.819163,
		28.604027, 29.969696, 27.023314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224133, 29.339279, 26.807724>,  <28.615808, 29.568377, 26.449900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224133, 29.339279, 26.807724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.011164, 29.534916, 27.084076>,  <28.883383, 29.652298, 27.249887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.011164, 29.534916, 27.084076>,  <29.224133, 29.339279, 26.807724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011164, 29.534916, 27.084076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326614, -0.634279, 0.700723,
		0.780930, 0.598731, 0.177960,
		-0.532421, 0.489091, 0.690882,
		28.851437, 29.681643, 27.291340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675743, 29.399048, 27.365166>,  <29.224133, 29.339279, 26.807724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675743, 29.399048, 27.365166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.309994, 29.445713, 27.520245>,  <29.090544, 29.473713, 27.613293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.309994, 29.445713, 27.520245>,  <29.675743, 29.399048, 27.365166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309994, 29.445713, 27.520245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279706, -0.510308, 0.813235,
		0.292721, 0.852042, 0.433980,
		-0.914374, 0.116664, 0.387699,
		29.035681, 29.480713, 27.636555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682270, 29.468328, 28.126001>,  <29.675743, 29.399048, 27.365166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682270, 29.468328, 28.126001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.291245, 29.395561, 28.083523>,  <29.056629, 29.351900, 28.058035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.291245, 29.395561, 28.083523>,  <29.682270, 29.468328, 28.126001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291245, 29.395561, 28.083523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001639, -0.497564, 0.867425,
		-0.210641, 0.848136, 0.486102,
		-0.977562, -0.181918, -0.106198,
		28.997976, 29.340986, 28.051664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458773, 29.651909, 28.712473>,  <29.682270, 29.468328, 28.126001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458773, 29.651909, 28.712473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.206970, 29.388176, 28.548035>,  <29.055889, 29.229937, 28.449371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.206970, 29.388176, 28.548035>,  <29.458773, 29.651909, 28.712473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206970, 29.388176, 28.548035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039141, -0.501506, 0.864268,
		-0.776007, 0.560154, 0.289896,
		-0.629508, -0.659332, -0.411097,
		29.018118, 29.190376, 28.424706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935278, 29.524164, 29.179523>,  <29.458773, 29.651909, 28.712473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935278, 29.524164, 29.179523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.941628, 29.207859, 28.934757>,  <28.945436, 29.018076, 28.787897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.941628, 29.207859, 28.934757>,  <28.935278, 29.524164, 29.179523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941628, 29.207859, 28.934757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028738, -0.611380, 0.790815,
		-0.999461, -0.030137, 0.013022,
		0.015871, -0.790763, -0.611917,
		28.946388, 28.970631, 28.751183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420376, 29.038834, 29.439623>,  <28.935278, 29.524164, 29.179523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420376, 29.038834, 29.439623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.643085, 28.813984, 29.194996>,  <28.776712, 28.679073, 29.048220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.643085, 28.813984, 29.194996>,  <28.420376, 29.038834, 29.439623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643085, 28.813984, 29.194996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013211, -0.730156, 0.683152,
		-0.830558, -0.388442, -0.399107,
		0.556776, -0.562125, -0.611569,
		28.810118, 28.645346, 29.011526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041908, 28.469751, 29.474981>,  <28.420376, 29.038834, 29.439623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041908, 28.469751, 29.474981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.406898, 28.365959, 29.348454>,  <28.625893, 28.303684, 29.272537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.406898, 28.365959, 29.348454>,  <28.041908, 28.469751, 29.474981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406898, 28.365959, 29.348454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023529, -0.805150, 0.592604,
		-0.408453, -0.533294, -0.740786,
		0.912476, -0.259481, -0.316318,
		28.680641, 28.288115, 29.253557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916113, 27.894634, 29.166027>,  <28.041908, 28.469751, 29.474981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916113, 27.894634, 29.166027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.302931, 27.906147, 29.267220>,  <28.535021, 27.913055, 29.327936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.302931, 27.906147, 29.267220>,  <27.916113, 27.894634, 29.166027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302931, 27.906147, 29.267220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141864, -0.764167, 0.629224,
		0.211431, -0.644376, -0.734899,
		0.967043, 0.028782, 0.252982,
		28.593044, 27.914782, 29.343115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.753223, 27.549335, 29.505850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396168, 27.709263, 29.589127>,  <34.181934, 27.805220, 29.639093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396168, 27.709263, 29.589127>,  <34.753223, 27.549335, 29.505850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396168, 27.709263, 29.589127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015195, 0.488280, -0.872555,
		-0.450520, -0.775711, -0.441932,
		-0.892637, 0.399818, 0.208193,
		34.128376, 27.829208, 29.651585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441566, 27.423737, 28.928947>,  <34.753223, 27.549335, 29.505850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441566, 27.423737, 28.928947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.218643, 27.713955, 29.090439>,  <34.084888, 27.888086, 29.187334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.218643, 27.713955, 29.090439>,  <34.441566, 27.423737, 28.928947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218643, 27.713955, 29.090439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021310, 0.498576, -0.866584,
		-0.830035, -0.474347, -0.293319,
		-0.557304, 0.725546, 0.403728,
		34.051453, 27.931618, 29.211557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964779, 27.681606, 28.386744>,  <34.441566, 27.423737, 28.928947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964779, 27.681606, 28.386744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.932640, 27.983738, 28.646904>,  <33.913357, 28.165016, 28.803001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.932640, 27.983738, 28.646904>,  <33.964779, 27.681606, 28.386744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932640, 27.983738, 28.646904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051068, 0.648535, -0.759470,
		-0.995458, -0.094235, -0.013534,
		-0.080346, 0.755329, 0.650402,
		33.908535, 28.210337, 28.842024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343849, 28.000692, 28.125641>,  <33.964779, 27.681606, 28.386744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343849, 28.000692, 28.125641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525269, 28.269558, 28.359730>,  <33.634121, 28.430878, 28.500183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525269, 28.269558, 28.359730>,  <33.343849, 28.000692, 28.125641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525269, 28.269558, 28.359730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136573, 0.701309, -0.699652,
		-0.880704, 0.237401, 0.409879,
		0.453550, 0.672165, 0.585223,
		33.661335, 28.471207, 28.535297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913700, 28.547287, 28.127569>,  <33.343849, 28.000692, 28.125641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913700, 28.547287, 28.127569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244858, 28.741543, 28.239811>,  <33.443554, 28.858097, 28.307156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244858, 28.741543, 28.239811>,  <32.913700, 28.547287, 28.127569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244858, 28.741543, 28.239811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290453, 0.799204, -0.526222,
		-0.479816, 0.354155, 0.802715,
		0.827898, 0.485640, 0.280605,
		33.493229, 28.887236, 28.323992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687912, 29.203306, 28.436996>,  <32.913700, 28.547287, 28.127569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687912, 29.203306, 28.436996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.068958, 29.238571, 28.320549>,  <33.297585, 29.259729, 28.250681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.068958, 29.238571, 28.320549>,  <32.687912, 29.203306, 28.436996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068958, 29.238571, 28.320549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222389, 0.854825, -0.468846,
		0.207521, 0.511372, 0.833927,
		0.952616, 0.088160, -0.291118,
		33.354744, 29.265018, 28.233213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988274, 29.893259, 28.564318>,  <32.687912, 29.203306, 28.436996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988274, 29.893259, 28.564318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232838, 29.741840, 28.286358>,  <33.379574, 29.650990, 28.119583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232838, 29.741840, 28.286358>,  <32.988274, 29.893259, 28.564318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232838, 29.741840, 28.286358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056967, 0.854822, -0.515786,
		0.789262, 0.354942, 0.501080,
		0.611408, -0.378545, -0.694898,
		33.416260, 29.628277, 28.077888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446396, 30.413633, 28.439661>,  <32.988274, 29.893259, 28.564318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446396, 30.413633, 28.439661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494671, 30.172909, 28.123875>,  <33.523636, 30.028475, 27.934402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494671, 30.172909, 28.123875>,  <33.446396, 30.413633, 28.439661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494671, 30.172909, 28.123875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014673, 0.794112, -0.607595,
		0.992582, 0.084915, 0.087012,
		0.120691, -0.601811, -0.789467,
		33.530876, 29.992365, 27.887035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984997, 30.725065, 27.965296>,  <33.446396, 30.413633, 28.439661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984997, 30.725065, 27.965296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778492, 30.478447, 27.727524>,  <33.654591, 30.330477, 27.584860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778492, 30.478447, 27.727524>,  <33.984997, 30.725065, 27.965296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778492, 30.478447, 27.727524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076604, 0.658053, -0.749065,
		0.852999, -0.432248, -0.292497,
		-0.516261, -0.616545, -0.594430,
		33.623615, 30.293484, 27.549194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318943, 30.705587, 27.335905>,  <33.984997, 30.725065, 27.965296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318943, 30.705587, 27.335905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.961231, 30.565029, 27.225060>,  <33.746605, 30.480694, 27.158552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.961231, 30.565029, 27.225060>,  <34.318943, 30.705587, 27.335905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961231, 30.565029, 27.225060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014657, 0.595895, -0.802928,
		0.447273, -0.722102, -0.527745,
		-0.894277, -0.351393, -0.277112,
		33.692947, 30.459610, 27.141926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409084, 30.635254, 26.650846>,  <34.318943, 30.705587, 27.335905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409084, 30.635254, 26.650846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.014389, 30.644211, 26.715149>,  <33.777573, 30.649586, 26.753731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.014389, 30.644211, 26.715149>,  <34.409084, 30.635254, 26.650846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014389, 30.644211, 26.715149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094259, 0.727240, -0.679881,
		-0.132135, -0.686018, -0.715485,
		-0.986740, 0.022395, 0.160757,
		33.718369, 30.650928, 26.763376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146469, 30.486090, 26.005768>,  <34.409084, 30.635254, 26.650846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146469, 30.486090, 26.005768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905109, 30.703362, 26.239304>,  <33.760292, 30.833725, 26.379425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905109, 30.703362, 26.239304>,  <34.146469, 30.486090, 26.005768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905109, 30.703362, 26.239304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076674, 0.689231, -0.720474,
		-0.793746, -0.479497, -0.374233,
		-0.603398, 0.543179, 0.583838,
		33.724091, 30.866316, 26.414455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705082, 30.727247, 25.522137>,  <34.146469, 30.486090, 26.005768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705082, 30.727247, 25.522137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672588, 30.962006, 25.844368>,  <33.653091, 31.102859, 26.037706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672588, 30.962006, 25.844368>,  <33.705082, 30.727247, 25.522137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672588, 30.962006, 25.844368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046596, 0.805129, -0.591266,
		-0.995605, -0.085569, -0.038060,
		-0.081237, 0.586894, 0.805578,
		33.648216, 31.138073, 26.086040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070404, 31.153048, 25.479588>,  <33.705082, 30.727247, 25.522137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070404, 31.153048, 25.479588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295212, 31.353016, 25.743168>,  <33.430096, 31.472998, 25.901316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295212, 31.353016, 25.743168>,  <33.070404, 31.153048, 25.479588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295212, 31.353016, 25.743168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134164, 0.841224, -0.523776,
		-0.816173, 0.205963, 0.539853,
		0.562016, 0.499920, 0.658952,
		33.463818, 31.502993, 25.940853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305038, 31.059067, 25.479229>,  <33.070404, 31.153048, 25.479588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305038, 31.059067, 25.479229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.208630, 30.800484, 25.189678>,  <32.150784, 30.645334, 25.015947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.208630, 30.800484, 25.189678>,  <32.305038, 31.059067, 25.479229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208630, 30.800484, 25.189678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176571, -0.762627, 0.622272,
		-0.954321, 0.022169, 0.297959,
		-0.241027, -0.646458, -0.723877,
		32.136322, 30.606546, 24.972515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832747, 30.559904, 25.777355>,  <32.305038, 31.059067, 25.479229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832747, 30.559904, 25.777355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925039, 30.381100, 25.431652>,  <31.980415, 30.273817, 25.224230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925039, 30.381100, 25.431652>,  <31.832747, 30.559904, 25.777355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925039, 30.381100, 25.431652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095060, -0.894333, 0.437188,
		-0.968362, -0.018717, -0.248846,
		0.230734, -0.447011, -0.864259,
		31.994259, 30.246996, 25.172375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296192, 30.112131, 25.394491>,  <31.832747, 30.559904, 25.777355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296192, 30.112131, 25.394491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.621517, 29.929405, 25.250359>,  <31.816713, 29.819769, 25.163879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.621517, 29.929405, 25.250359>,  <31.296192, 30.112131, 25.394491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621517, 29.929405, 25.250359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382808, -0.886527, 0.259863,
		-0.438153, -0.073412, -0.895898,
		0.813314, -0.456816, -0.360332,
		31.865511, 29.792360, 25.142260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026161, 29.490644, 25.082951>,  <31.296192, 30.112131, 25.394491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026161, 29.490644, 25.082951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.413767, 29.401211, 25.124947>,  <31.646330, 29.347551, 25.150145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.413767, 29.401211, 25.124947>,  <31.026161, 29.490644, 25.082951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413767, 29.401211, 25.124947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232348, -0.969316, 0.080253,
		0.083828, -0.102161, -0.991230,
		0.969014, -0.223583, 0.104992,
		31.704472, 29.334135, 25.156445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228680, 28.759434, 24.851719>,  <31.026161, 29.490644, 25.082951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228680, 28.759434, 24.851719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.548929, 28.826252, 25.081882>,  <31.741079, 28.866343, 25.219980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.548929, 28.826252, 25.081882>,  <31.228680, 28.759434, 24.851719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548929, 28.826252, 25.081882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024138, -0.950578, 0.309545,
		0.598679, -0.261719, -0.757025,
		0.800626, 0.167045, 0.575408,
		31.789118, 28.876366, 25.254505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660303, 28.209927, 24.718365>,  <31.228680, 28.759434, 24.851719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660303, 28.209927, 24.718365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791586, 28.358929, 25.065586>,  <31.870356, 28.448330, 25.273920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791586, 28.358929, 25.065586>,  <31.660303, 28.209927, 24.718365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791586, 28.358929, 25.065586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000608, -0.919044, 0.394155,
		0.944605, -0.128838, -0.301865,
		0.328209, 0.372504, 0.868055,
		31.890049, 28.470680, 25.326002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098248, 27.667377, 25.005342>,  <31.660303, 28.209927, 24.718365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098248, 27.667377, 25.005342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.062481, 27.918839, 25.314354>,  <32.041023, 28.069715, 25.499762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.062481, 27.918839, 25.314354>,  <32.098248, 27.667377, 25.005342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062481, 27.918839, 25.314354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082707, -0.768272, 0.634759,
		0.992555, 0.120650, 0.016700,
		-0.089414, 0.628651, 0.772530,
		32.035656, 28.107433, 25.546112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727840, 27.443232, 25.499035>,  <32.098248, 27.667377, 25.005342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727840, 27.443232, 25.499035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408073, 27.621361, 25.660339>,  <32.216213, 27.728237, 25.757122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408073, 27.621361, 25.660339>,  <32.727840, 27.443232, 25.499035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408073, 27.621361, 25.660339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132337, -0.785277, 0.604837,
		0.586019, 0.430151, 0.686697,
		-0.799418, 0.445321, 0.403262,
		32.168247, 27.754957, 25.781319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912891, 27.581785, 26.153341>,  <32.727840, 27.443232, 25.499035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912891, 27.581785, 26.153341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.513718, 27.601009, 26.170368>,  <32.274212, 27.612543, 26.180584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.513718, 27.601009, 26.170368>,  <32.912891, 27.581785, 26.153341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513718, 27.601009, 26.170368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003657, -0.619412, 0.785057,
		0.064097, 0.783593, 0.617959,
		-0.997937, 0.048060, 0.042568,
		32.214336, 27.615427, 26.183138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686100, 27.518139, 26.830929>,  <32.912891, 27.581785, 26.153341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686100, 27.518139, 26.830929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.332077, 27.466949, 26.651909>,  <32.119663, 27.436235, 26.544497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.332077, 27.466949, 26.651909>,  <32.686100, 27.518139, 26.830929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332077, 27.466949, 26.651909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309315, -0.556810, 0.770900,
		-0.347854, 0.820723, 0.453224,
		-0.885055, -0.127972, -0.447550,
		32.066559, 27.428558, 26.517643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138779, 27.694824, 27.252457>,  <32.686100, 27.518139, 26.830929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138779, 27.694824, 27.252457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.985079, 27.427242, 26.997944>,  <31.892860, 27.266693, 26.845236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.985079, 27.427242, 26.997944>,  <32.138779, 27.694824, 27.252457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985079, 27.427242, 26.997944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350547, -0.531865, 0.770867,
		-0.854091, 0.519250, -0.030133,
		-0.384246, -0.668954, -0.636283,
		31.869804, 27.226557, 26.807058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519539, 27.516850, 27.524118>,  <32.138779, 27.694824, 27.252457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519539, 27.516850, 27.524118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.588503, 27.203087, 27.285797>,  <31.629881, 27.014830, 27.142805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.588503, 27.203087, 27.285797>,  <31.519539, 27.516850, 27.524118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588503, 27.203087, 27.285797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321643, -0.616538, 0.718629,
		-0.931032, 0.067738, -0.358595,
		0.172410, -0.784406, -0.595804,
		31.640226, 26.967766, 27.107056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959814, 27.107321, 27.536854>,  <31.519539, 27.516850, 27.524118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959814, 27.107321, 27.536854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.275740, 26.877945, 27.449806>,  <31.465296, 26.740318, 27.397577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.275740, 26.877945, 27.449806>,  <30.959814, 27.107321, 27.536854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275740, 26.877945, 27.449806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355322, -0.716989, 0.599728,
		-0.499937, -0.396351, -0.770045,
		0.789816, -0.573440, -0.217617,
		31.512684, 26.705914, 27.384521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701399, 26.401325, 27.370977>,  <30.959814, 27.107321, 27.536854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701399, 26.401325, 27.370977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.083561, 26.371151, 27.485180>,  <31.312859, 26.353046, 27.553701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.083561, 26.371151, 27.485180>,  <30.701399, 26.401325, 27.370977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083561, 26.371151, 27.485180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223975, -0.815207, 0.534109,
		0.192457, -0.574236, -0.795747,
		0.955403, -0.075434, 0.285507,
		31.370182, 26.348520, 27.570831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184650, 26.027346, 26.943792>,  <30.701399, 26.401325, 27.370977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184650, 26.027346, 26.943792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.786087, 26.056885, 26.960358>,  <29.546949, 26.074608, 26.970297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.786087, 26.056885, 26.960358>,  <30.184650, 26.027346, 26.943792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786087, 26.056885, 26.960358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000272, 0.491908, -0.870647,
		-0.084667, -0.867510, -0.490162,
		-0.996409, 0.073849, 0.041412,
		29.487164, 26.079039, 26.972782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971867, 25.930878, 26.213400>,  <30.184650, 26.027346, 26.943792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971867, 25.930878, 26.213400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.688528, 26.134903, 26.408573>,  <29.518524, 26.257318, 26.525677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.688528, 26.134903, 26.408573>,  <29.971867, 25.930878, 26.213400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688528, 26.134903, 26.408573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140007, 0.575996, -0.805374,
		-0.691839, -0.638799, -0.336593,
		-0.708348, 0.510063, 0.487932,
		29.476023, 26.287922, 26.554953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343714, 25.872143, 25.770725>,  <29.971867, 25.930878, 26.213400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343714, 25.872143, 25.770725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.301710, 26.184479, 26.017063>,  <29.276508, 26.371880, 26.164865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.301710, 26.184479, 26.017063>,  <29.343714, 25.872143, 25.770725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301710, 26.184479, 26.017063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111076, 0.606186, -0.787529,
		-0.988249, -0.151102, 0.023078,
		-0.105007, 0.780838, 0.615846,
		29.270208, 26.418730, 26.201817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705309, 26.224489, 25.584572>,  <29.343714, 25.872143, 25.770725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705309, 26.224489, 25.584572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.928780, 26.495647, 25.775711>,  <29.062862, 26.658342, 25.890394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.928780, 26.495647, 25.775711>,  <28.705309, 26.224489, 25.584572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928780, 26.495647, 25.775711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238782, 0.683219, -0.690068,
		-0.794269, 0.271423, 0.543568,
		0.558676, 0.677894, 0.477849,
		29.096382, 26.699017, 25.919065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430792, 26.813927, 25.439074>,  <28.705309, 26.224489, 25.584572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430792, 26.813927, 25.439074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.770121, 26.989502, 25.557522>,  <28.973717, 27.094847, 25.628592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.770121, 26.989502, 25.557522>,  <28.430792, 26.813927, 25.439074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770121, 26.989502, 25.557522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187302, 0.771873, -0.607561,
		-0.495248, 0.459943, 0.737009,
		0.848321, 0.438936, 0.296120,
		29.024616, 27.121183, 25.646358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285080, 27.443411, 25.702421>,  <28.430792, 26.813927, 25.439074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285080, 27.443411, 25.702421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.662798, 27.489220, 25.579010>,  <28.889429, 27.516705, 25.504963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.662798, 27.489220, 25.579010>,  <28.285080, 27.443411, 25.702421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662798, 27.489220, 25.579010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260339, 0.833441, -0.487441,
		0.201317, 0.540611, 0.816830,
		0.944296, 0.114523, -0.308528,
		28.946087, 27.523577, 25.486452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394176, 28.148785, 25.560991>,  <28.285080, 27.443411, 25.702421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394176, 28.148785, 25.560991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.715164, 28.030125, 25.353901>,  <28.907757, 27.958929, 25.229647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.715164, 28.030125, 25.353901>,  <28.394176, 28.148785, 25.560991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715164, 28.030125, 25.353901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150145, 0.739355, -0.656362,
		0.577495, 0.604444, 0.548769,
		0.802469, -0.296651, -0.517728,
		28.955904, 27.941130, 25.198582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736738, 28.746956, 25.364180>,  <28.394176, 28.148785, 25.560991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736738, 28.746956, 25.364180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.864618, 28.478256, 25.096882>,  <28.941345, 28.317038, 24.936504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.864618, 28.478256, 25.096882>,  <28.736738, 28.746956, 25.364180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864618, 28.478256, 25.096882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079674, 0.683699, -0.725402,
		0.944163, 0.285152, 0.165057,
		0.319699, -0.671747, -0.668243,
		28.960527, 28.276731, 24.896408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144480, 29.090364, 24.926805>,  <28.736738, 28.746956, 25.364180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144480, 29.090364, 24.926805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.046564, 28.760223, 24.723289>,  <28.987814, 28.562138, 24.601179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.046564, 28.760223, 24.723289>,  <29.144480, 29.090364, 24.926805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046564, 28.760223, 24.723289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072824, 0.538925, -0.839200,
		0.966837, -0.168376, -0.192029,
		-0.244790, -0.825354, -0.508791,
		28.973127, 28.512617, 24.570652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660219, 29.027864, 24.466520>,  <29.144480, 29.090364, 24.926805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660219, 29.027864, 24.466520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.351912, 28.823200, 24.314667>,  <29.166927, 28.700401, 24.223555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.351912, 28.823200, 24.314667>,  <29.660219, 29.027864, 24.466520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351912, 28.823200, 24.314667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084179, 0.508857, -0.856725,
		0.631532, -0.692292, -0.349139,
		-0.770766, -0.511660, -0.379636,
		29.120682, 28.669703, 24.200775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923752, 28.942856, 23.815329>,  <29.660219, 29.027864, 24.466520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923752, 28.942856, 23.815329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.529791, 28.874744, 23.827801>,  <29.293415, 28.833878, 23.835283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.529791, 28.874744, 23.827801>,  <29.923752, 28.942856, 23.815329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529791, 28.874744, 23.827801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103119, 0.432427, -0.895753,
		0.139046, -0.885444, -0.443458,
		-0.984902, -0.170280, 0.031179,
		29.234320, 28.823660, 23.837154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770567, 28.645872, 23.157307>,  <29.923752, 28.942856, 23.815329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770567, 28.645872, 23.157307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.405972, 28.758015, 23.277699>,  <29.187214, 28.825300, 23.349934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.405972, 28.758015, 23.277699>,  <29.770567, 28.645872, 23.157307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405972, 28.758015, 23.277699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183926, 0.376702, -0.907892,
		-0.367912, -0.882891, -0.291795,
		-0.911489, 0.280356, 0.300980,
		29.132524, 28.842121, 23.367992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270733, 28.410433, 22.634983>,  <29.770567, 28.645872, 23.157307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270733, 28.410433, 22.634983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.138498, 28.715790, 22.856953>,  <29.059156, 28.899004, 22.990135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.138498, 28.715790, 22.856953>,  <29.270733, 28.410433, 22.634983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138498, 28.715790, 22.856953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358103, 0.442551, -0.822138,
		-0.873197, -0.470509, 0.127072,
		-0.330588, 0.763394, 0.554925,
		29.039322, 28.944807, 23.023430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759258, 28.631550, 22.206303>,  <29.270733, 28.410433, 22.634983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759258, 28.631550, 22.206303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.814020, 28.934341, 22.461876>,  <28.846878, 29.116016, 22.615219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.814020, 28.934341, 22.461876>,  <28.759258, 28.631550, 22.206303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814020, 28.934341, 22.461876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445075, 0.623242, -0.643022,
		-0.884966, -0.196339, 0.422239,
		0.136907, 0.756981, 0.638934,
		28.855093, 29.161436, 22.653557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.570244, 38.819431, 23.556091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.771481, 38.474152, 23.539188>,  <46.892223, 38.266983, 23.529047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.771481, 38.474152, 23.539188>,  <46.570244, 38.819431, 23.556091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.771481, 38.474152, 23.539188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347078, -0.157021, -0.924598,
		0.791479, 0.479821, -0.378593,
		0.503089, -0.863201, -0.042256,
		46.922409, 38.215191, 23.526512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.848530, 38.805847, 22.923674>,  <46.570244, 38.819431, 23.556091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.848530, 38.805847, 22.923674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.810707, 38.422337, 23.030857>,  <46.788013, 38.192230, 23.095167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.810707, 38.422337, 23.030857>,  <46.848530, 38.805847, 22.923674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.810707, 38.422337, 23.030857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394568, -0.211026, -0.894307,
		0.913989, -0.190289, -0.358350,
		-0.094555, -0.958780, 0.267957,
		46.782341, 38.134705, 23.111244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761215, 38.487686, 22.290123>,  <46.848530, 38.805847, 22.923674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761215, 38.487686, 22.290123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.664875, 38.203125, 22.554214>,  <46.607071, 38.032387, 22.712669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.664875, 38.203125, 22.554214>,  <46.761215, 38.487686, 22.290123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664875, 38.203125, 22.554214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440720, -0.525911, -0.727450,
		0.864730, -0.466181, -0.186863,
		-0.240850, -0.711402, 0.660226,
		46.592621, 37.989704, 22.752283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856617, 37.763454, 21.993891>,  <46.761215, 38.487686, 22.290123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856617, 37.763454, 21.993891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.622475, 37.665482, 22.303047>,  <46.481987, 37.606697, 22.488541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.622475, 37.665482, 22.303047>,  <46.856617, 37.763454, 21.993891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622475, 37.665482, 22.303047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469053, -0.675250, -0.569234,
		0.661320, -0.695733, 0.280377,
		-0.585360, -0.244934, 0.772892,
		46.446865, 37.592003, 22.534914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719032, 36.961979, 21.986286>,  <46.856617, 37.763454, 21.993891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719032, 36.961979, 21.986286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.420391, 37.117302, 22.202358>,  <46.241207, 37.210495, 22.332001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.420391, 37.117302, 22.202358>,  <46.719032, 36.961979, 21.986286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.420391, 37.117302, 22.202358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582091, -0.774435, -0.247832,
		0.322100, -0.499467, 0.804229,
		-0.746607, 0.388307, 0.540181,
		46.196407, 37.233795, 22.364412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450508, 36.447147, 22.385414>,  <46.719032, 36.961979, 21.986286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450508, 36.447147, 22.385414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.143463, 36.703365, 22.376770>,  <45.959236, 36.857098, 22.371584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.143463, 36.703365, 22.376770>,  <46.450508, 36.447147, 22.385414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143463, 36.703365, 22.376770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618035, -0.748728, -0.239662,
		-0.169696, -0.170612, 0.970616,
		-0.767617, 0.640545, -0.021612,
		45.913177, 36.895527, 22.370287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914780, 36.178024, 22.751160>,  <46.450508, 36.447147, 22.385414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914780, 36.178024, 22.751160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.713959, 36.447075, 22.533714>,  <45.593468, 36.608505, 22.403248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.713959, 36.447075, 22.533714>,  <45.914780, 36.178024, 22.751160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713959, 36.447075, 22.533714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691804, -0.689555, -0.214293,
		-0.518989, 0.268486, 0.811520,
		-0.502053, 0.672629, -0.543611,
		45.563343, 36.648865, 22.370630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263680, 36.008564, 22.909451>,  <45.914780, 36.178024, 22.751160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263680, 36.008564, 22.909451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.230492, 36.224598, 22.574448>,  <45.210579, 36.354218, 22.373446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.230492, 36.224598, 22.574448>,  <45.263680, 36.008564, 22.909451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230492, 36.224598, 22.574448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766688, -0.571478, -0.292577,
		-0.636635, 0.617832, 0.461496,
		-0.082971, 0.540089, -0.837508,
		45.205601, 36.386623, 22.323195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514507, 36.169754, 22.828754>,  <45.263680, 36.008564, 22.909451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514507, 36.169754, 22.828754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.662674, 36.225430, 22.461403>,  <44.751575, 36.258835, 22.240992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.662674, 36.225430, 22.461403>,  <44.514507, 36.169754, 22.828754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662674, 36.225430, 22.461403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773872, -0.500578, -0.388000,
		-0.513726, 0.854428, -0.077706,
		0.370416, 0.139192, -0.918378,
		44.773800, 36.267185, 22.185890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885921, 36.204666, 22.414394>,  <44.514507, 36.169754, 22.828754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885921, 36.204666, 22.414394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.166336, 36.133827, 22.138081>,  <44.334583, 36.091324, 21.972292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.166336, 36.133827, 22.138081>,  <43.885921, 36.204666, 22.414394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166336, 36.133827, 22.138081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658605, -0.532259, -0.531921,
		-0.273472, 0.827850, -0.489772,
		0.701037, -0.177101, -0.690784,
		44.376648, 36.080696, 21.930845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693523, 36.515423, 21.732428>,  <43.885921, 36.204666, 22.414394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693523, 36.515423, 21.732428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.937878, 36.204716, 21.671169>,  <44.084492, 36.018291, 21.634415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.937878, 36.204716, 21.671169>,  <43.693523, 36.515423, 21.732428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937878, 36.204716, 21.671169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733880, -0.482992, -0.477639,
		0.297044, 0.404175, -0.865106,
		0.610888, -0.776764, -0.153146,
		44.121143, 35.971687, 21.625225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388550, 36.200432, 21.193445>,  <43.693523, 36.515423, 21.732428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388550, 36.200432, 21.193445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.654190, 35.921360, 21.300938>,  <43.813576, 35.753918, 21.365433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.654190, 35.921360, 21.300938>,  <43.388550, 36.200432, 21.193445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654190, 35.921360, 21.300938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639325, -0.716278, -0.279661,
		0.387600, 0.013916, -0.921723,
		0.664101, -0.697676, 0.268732,
		43.853420, 35.712055, 21.381557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414524, 35.771706, 20.636717>,  <43.388550, 36.200432, 21.193445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414524, 35.771706, 20.636717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.533482, 35.549557, 20.947361>,  <43.604855, 35.416267, 21.133747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.533482, 35.549557, 20.947361>,  <43.414524, 35.771706, 20.636717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533482, 35.549557, 20.947361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575529, -0.753293, -0.318302,
		0.761790, -0.352301, -0.543654,
		0.297393, -0.555368, 0.776611,
		43.622700, 35.382946, 21.180344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590836, 35.102219, 20.310886>,  <43.414524, 35.771706, 20.636717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590836, 35.102219, 20.310886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.493809, 35.075916, 20.698048>,  <43.435593, 35.060135, 20.930344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.493809, 35.075916, 20.698048>,  <43.590836, 35.102219, 20.310886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493809, 35.075916, 20.698048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638850, -0.740007, -0.210380,
		0.730089, -0.669377, 0.137493,
		-0.242569, -0.065759, 0.967903,
		43.421040, 35.056187, 20.988419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490631, 34.432529, 20.321783>,  <43.590836, 35.102219, 20.310886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490631, 34.432529, 20.321783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.328342, 34.555172, 20.666199>,  <43.230968, 34.628757, 20.872849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.328342, 34.555172, 20.666199>,  <43.490631, 34.432529, 20.321783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328342, 34.555172, 20.666199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709673, -0.699339, -0.085374,
		0.575981, -0.645693, 0.501324,
		-0.405721, 0.306602, 0.861037,
		43.206627, 34.647152, 20.924511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594208, 33.894978, 20.764107>,  <43.490631, 34.432529, 20.321783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594208, 33.894978, 20.764107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.289047, 34.130421, 20.871078>,  <43.105949, 34.271687, 20.935261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.289047, 34.130421, 20.871078>,  <43.594208, 33.894978, 20.764107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289047, 34.130421, 20.871078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625352, -0.776804, -0.074234,
		0.164044, -0.223869, 0.960714,
		-0.762906, 0.588607, 0.267427,
		43.060177, 34.307003, 20.951307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159142, 33.458622, 21.040272>,  <43.594208, 33.894978, 20.764107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159142, 33.458622, 21.040272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.921074, 33.779064, 21.014965>,  <42.778233, 33.971329, 20.999781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.921074, 33.779064, 21.014965>,  <43.159142, 33.458622, 21.040272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921074, 33.779064, 21.014965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802549, -0.588519, 0.097783,
		0.041100, 0.108973, 0.993195,
		-0.595169, 0.801106, -0.063268,
		42.742523, 34.019398, 20.995985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692337, 33.366375, 21.642639>,  <43.159142, 33.458622, 21.040272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692337, 33.366375, 21.642639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.541676, 33.601395, 21.356167>,  <42.451279, 33.742409, 21.184284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.541676, 33.601395, 21.356167>,  <42.692337, 33.366375, 21.642639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541676, 33.601395, 21.356167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856365, -0.515646, 0.027345,
		-0.353228, 0.623610, 0.697381,
		-0.376655, 0.587554, -0.716178,
		42.428680, 33.777660, 21.141314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057663, 33.648037, 21.873749>,  <42.692337, 33.366375, 21.642639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057663, 33.648037, 21.873749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.039326, 33.681282, 21.475555>,  <42.028324, 33.701229, 21.236639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.039326, 33.681282, 21.475555>,  <42.057663, 33.648037, 21.873749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039326, 33.681282, 21.475555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848557, -0.529079, -0.005097,
		-0.527115, 0.844493, 0.094774,
		-0.045839, 0.083108, -0.995486,
		42.025574, 33.706215, 21.176910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386124, 33.908184, 21.703506>,  <42.057663, 33.648037, 21.873749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386124, 33.908184, 21.703506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.523643, 33.710442, 21.384151>,  <41.606155, 33.591797, 21.192539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.523643, 33.710442, 21.384151>,  <41.386124, 33.908184, 21.703506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523643, 33.710442, 21.384151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879226, -0.468057, -0.088791,
		-0.329796, 0.732488, -0.595564,
		0.343797, -0.494352, -0.798386,
		41.626781, 33.562138, 21.144636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781956, 33.695084, 21.259237>,  <41.386124, 33.908184, 21.703506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781956, 33.695084, 21.259237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068554, 33.470280, 21.093937>,  <41.240513, 33.335396, 20.994757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068554, 33.470280, 21.093937>,  <40.781956, 33.695084, 21.259237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068554, 33.470280, 21.093937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658857, -0.739841, -0.136170,
		-0.229210, 0.369838, -0.900379,
		0.716498, -0.562009, -0.413250,
		41.283504, 33.301678, 20.969961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014370, 33.928288, 21.096476>,  <40.781956, 33.695084, 21.259237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014370, 33.928288, 21.096476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.751602, 34.088902, 21.351734>,  <39.593941, 34.185268, 21.504889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.751602, 34.088902, 21.351734>,  <40.014370, 33.928288, 21.096476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751602, 34.088902, 21.351734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651040, 0.728982, 0.211501,
		-0.380272, 0.554397, -0.740295,
		-0.656917, 0.401534, 0.638146,
		39.554527, 34.209362, 21.543179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211613, 34.641827, 21.009178>,  <40.014370, 33.928288, 21.096476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211613, 34.641827, 21.009178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.006847, 34.593330, 21.349354>,  <39.883987, 34.564232, 21.553459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.006847, 34.593330, 21.349354>,  <40.211613, 34.641827, 21.009178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006847, 34.593330, 21.349354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514190, 0.749810, 0.416406,
		-0.688152, 0.650450, -0.321498,
		-0.511913, -0.121240, 0.850439,
		39.853271, 34.556957, 21.604485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000473, 35.354214, 21.255993>,  <40.211613, 34.641827, 21.009178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000473, 35.354214, 21.255993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.995422, 35.101234, 21.565792>,  <39.992393, 34.949448, 21.751671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.995422, 35.101234, 21.565792>,  <40.000473, 35.354214, 21.255993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995422, 35.101234, 21.565792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534838, 0.650174, 0.539650,
		-0.844860, 0.421045, 0.330048,
		-0.012628, -0.632451, 0.774497,
		39.991634, 34.911499, 21.798141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770611, 35.692184, 21.897707>,  <40.000473, 35.354214, 21.255993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770611, 35.692184, 21.897707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967918, 35.386227, 22.063419>,  <40.086304, 35.202652, 22.162846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967918, 35.386227, 22.063419>,  <39.770611, 35.692184, 21.897707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967918, 35.386227, 22.063419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354505, 0.611666, 0.707242,
		-0.794366, -0.201993, 0.572872,
		0.493265, -0.764894, 0.414279,
		40.115898, 35.156757, 22.187702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730923, 35.833641, 22.582705>,  <39.770611, 35.692184, 21.897707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730923, 35.833641, 22.582705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.035847, 35.575508, 22.562981>,  <40.218800, 35.420628, 22.551147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.035847, 35.575508, 22.562981>,  <39.730923, 35.833641, 22.582705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035847, 35.575508, 22.562981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428762, 0.446474, 0.785382,
		-0.484817, -0.619845, 0.617045,
		0.762310, -0.645331, -0.049308,
		40.264538, 35.381908, 22.548189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847233, 35.690464, 23.298130>,  <39.730923, 35.833641, 22.582705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847233, 35.690464, 23.298130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.178295, 35.585651, 23.099606>,  <40.376934, 35.522762, 22.980492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.178295, 35.585651, 23.099606>,  <39.847233, 35.690464, 23.298130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178295, 35.585651, 23.099606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560301, 0.436827, 0.703736,
		0.032399, -0.860535, 0.508361,
		0.827655, -0.262035, -0.496311,
		40.426590, 35.507042, 22.950712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279934, 35.311501, 23.808912>,  <39.847233, 35.690464, 23.298130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279934, 35.311501, 23.808912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.515034, 35.435562, 23.510021>,  <40.656094, 35.509998, 23.330687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.515034, 35.435562, 23.510021>,  <40.279934, 35.311501, 23.808912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515034, 35.435562, 23.510021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658401, 0.353372, 0.664557,
		0.470165, -0.882571, 0.003490,
		0.587752, 0.310154, -0.747230,
		40.691360, 35.528606, 23.285852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904102, 35.227230, 24.030622>,  <40.279934, 35.311501, 23.808912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904102, 35.227230, 24.030622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.991219, 35.454033, 23.712864>,  <41.043488, 35.590115, 23.522209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.991219, 35.454033, 23.712864>,  <40.904102, 35.227230, 24.030622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991219, 35.454033, 23.712864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717555, 0.458698, 0.524129,
		0.661574, -0.684176, -0.306958,
		0.217795, 0.567009, -0.794396,
		41.056557, 35.624134, 23.474545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610718, 35.195972, 24.009476>,  <40.904102, 35.227230, 24.030622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610718, 35.195972, 24.009476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.486290, 35.519161, 23.809307>,  <41.411633, 35.713074, 23.689207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.486290, 35.519161, 23.809307>,  <41.610718, 35.195972, 24.009476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486290, 35.519161, 23.809307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730371, 0.540145, 0.418093,
		0.608106, -0.235435, -0.758141,
		-0.311072, 0.807969, -0.500420,
		41.392967, 35.761551, 23.659182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200481, 35.517811, 23.682318>,  <41.610718, 35.195972, 24.009476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200481, 35.517811, 23.682318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.951481, 35.830669, 23.693165>,  <41.802078, 36.018383, 23.699673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.951481, 35.830669, 23.693165>,  <42.200481, 35.517811, 23.682318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951481, 35.830669, 23.693165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751919, 0.588116, 0.297888,
		0.217043, 0.205827, -0.954216,
		-0.622503, 0.782147, 0.027118,
		41.764729, 36.065315, 23.701300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525490, 36.164474, 23.307570>,  <42.200481, 35.517811, 23.682318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525490, 36.164474, 23.307570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.244976, 36.302258, 23.557224>,  <42.076668, 36.384926, 23.707018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.244976, 36.302258, 23.557224>,  <42.525490, 36.164474, 23.307570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244976, 36.302258, 23.557224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681628, 0.580388, 0.445571,
		-0.208761, 0.737902, -0.641810,
		-0.701286, 0.344458, 0.624137,
		42.034592, 36.405594, 23.744465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511261, 36.845181, 23.164373>,  <42.525490, 36.164474, 23.307570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511261, 36.845181, 23.164373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.347813, 36.808083, 23.527565>,  <42.249744, 36.785824, 23.745480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.347813, 36.808083, 23.527565>,  <42.511261, 36.845181, 23.164373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347813, 36.808083, 23.527565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563962, 0.756529, 0.331075,
		-0.717618, 0.647351, -0.256828,
		-0.408620, -0.092744, 0.907980,
		42.225227, 36.780258, 23.799959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402252, 37.497643, 23.414520>,  <42.511261, 36.845181, 23.164373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402252, 37.497643, 23.414520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.419643, 37.289795, 23.755836>,  <42.430077, 37.165089, 23.960627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.419643, 37.289795, 23.755836>,  <42.402252, 37.497643, 23.414520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419643, 37.289795, 23.755836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561895, 0.718928, 0.409166,
		-0.826065, 0.461671, 0.323227,
		0.043476, -0.519617, 0.853292,
		42.432686, 37.133911, 24.011824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361931, 37.953770, 23.896988>,  <42.402252, 37.497643, 23.414520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361931, 37.953770, 23.896988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.498417, 37.658943, 24.130333>,  <42.580307, 37.482048, 24.270340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.498417, 37.658943, 24.130333>,  <42.361931, 37.953770, 23.896988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498417, 37.658943, 24.130333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711426, 0.608121, 0.352223,
		-0.614365, 0.294834, 0.731867,
		0.341216, -0.737063, 0.583360,
		42.600780, 37.437824, 24.305342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529144, 38.258091, 24.525036>,  <42.361931, 37.953770, 23.896988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529144, 38.258091, 24.525036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.740757, 37.918716, 24.518204>,  <42.867722, 37.715092, 24.514105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.740757, 37.918716, 24.518204>,  <42.529144, 38.258091, 24.525036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740757, 37.918716, 24.518204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792326, 0.486634, 0.367975,
		-0.303891, -0.208202, 0.929679,
		0.529027, -0.848433, -0.017080,
		42.899464, 37.664188, 24.513079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789124, 38.117626, 25.171064>,  <42.529144, 38.258091, 24.525036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789124, 38.117626, 25.171064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.041451, 37.900318, 24.949459>,  <43.192844, 37.769932, 24.816496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.041451, 37.900318, 24.949459>,  <42.789124, 38.117626, 25.171064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041451, 37.900318, 24.949459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773448, 0.497372, 0.392938,
		0.062077, -0.676369, 0.733942,
		0.630813, -0.543274, -0.554011,
		43.230694, 37.737335, 24.783257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189167, 37.767292, 25.639080>,  <42.789124, 38.117626, 25.171064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189167, 37.767292, 25.639080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.410778, 37.775085, 25.306171>,  <43.543743, 37.779762, 25.106426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.410778, 37.775085, 25.306171>,  <43.189167, 37.767292, 25.639080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410778, 37.775085, 25.306171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646266, 0.620130, 0.444724,
		0.524783, -0.784257, 0.330973,
		0.554024, 0.019487, -0.832272,
		43.576984, 37.780933, 25.056490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917492, 37.539249, 25.761553>,  <43.189167, 37.767292, 25.639080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917492, 37.539249, 25.761553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.930367, 37.747952, 25.420559>,  <43.938091, 37.873173, 25.215961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.930367, 37.747952, 25.420559>,  <43.917492, 37.539249, 25.761553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930367, 37.747952, 25.420559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759193, 0.541987, 0.360381,
		0.650069, -0.658801, -0.378672,
		0.032184, 0.521758, -0.852486,
		43.940022, 37.904480, 25.164812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689335, 37.640308, 25.735308>,  <43.917492, 37.539249, 25.761553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689335, 37.640308, 25.735308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.538792, 37.891685, 25.463009>,  <44.448467, 38.042511, 25.299629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.538792, 37.891685, 25.463009>,  <44.689335, 37.640308, 25.735308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538792, 37.891685, 25.463009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812117, 0.577409, 0.084052,
		0.445892, -0.521214, -0.727679,
		-0.376359, 0.628439, -0.680748,
		44.425884, 38.080215, 25.258785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331299, 37.844204, 25.405546>,  <44.689335, 37.640308, 25.735308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331299, 37.844204, 25.405546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.056332, 38.128498, 25.345791>,  <44.891354, 38.299072, 25.309937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.056332, 38.128498, 25.345791>,  <45.331299, 37.844204, 25.405546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056332, 38.128498, 25.345791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681270, 0.702315, 0.206457,
		0.251654, 0.040147, -0.966984,
		-0.687416, 0.710733, -0.149390,
		44.850105, 38.341717, 25.300974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708515, 38.259808, 24.890501>,  <45.331299, 37.844204, 25.405546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708515, 38.259808, 24.890501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.392021, 38.455345, 25.037460>,  <45.202126, 38.572670, 25.125635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.392021, 38.455345, 25.037460>,  <45.708515, 38.259808, 24.890501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392021, 38.455345, 25.037460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555709, 0.825539, 0.098349,
		-0.255224, 0.281983, -0.924850,
		-0.791232, 0.488846, 0.367397,
		45.154652, 38.601997, 25.147680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.285206, 27.248074, 28.902891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.501717, 27.406128, 29.199780>,  <28.631622, 27.500961, 29.377913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.501717, 27.406128, 29.199780>,  <28.285206, 27.248074, 28.902891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501717, 27.406128, 29.199780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136689, -0.829615, 0.541346,
		0.829661, -0.394471, -0.395039,
		0.541276, 0.395136, 0.742219,
		28.664099, 27.524668, 29.422445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771809, 26.721052, 28.992077>,  <28.285206, 27.248074, 28.902891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771809, 26.721052, 28.992077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.773842, 26.922695, 29.337528>,  <28.775063, 27.043680, 29.544798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.773842, 26.922695, 29.337528>,  <28.771809, 26.721052, 28.992077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773842, 26.922695, 29.337528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103046, -0.858776, 0.501882,
		0.994664, -0.091545, 0.047580,
		0.005085, 0.504107, 0.863626,
		28.775368, 27.073927, 29.596617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260519, 26.377031, 29.369373>,  <28.771809, 26.721052, 28.992077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260519, 26.377031, 29.369373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.033371, 26.589016, 29.621300>,  <28.897083, 26.716208, 29.772455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.033371, 26.589016, 29.621300>,  <29.260519, 26.377031, 29.369373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033371, 26.589016, 29.621300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046960, -0.784768, 0.618008,
		0.821779, 0.321371, 0.470531,
		-0.567868, 0.529962, 0.629814,
		28.863010, 26.748005, 29.810244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443861, 26.098736, 30.064068>,  <29.260519, 26.377031, 29.369373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443861, 26.098736, 30.064068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.104425, 26.292065, 30.150131>,  <28.900764, 26.408062, 30.201769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.104425, 26.292065, 30.150131>,  <29.443861, 26.098736, 30.064068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104425, 26.292065, 30.150131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228736, -0.701889, 0.674560,
		0.477046, 0.523212, 0.706170,
		-0.848591, 0.483323, 0.215156,
		28.849848, 26.437061, 30.214678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428358, 26.237013, 30.773149>,  <29.443861, 26.098736, 30.064068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428358, 26.237013, 30.773149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.043173, 26.281944, 30.675102>,  <28.812061, 26.308903, 30.616274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.043173, 26.281944, 30.675102>,  <29.428358, 26.237013, 30.773149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043173, 26.281944, 30.675102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246015, -0.738084, 0.628259,
		-0.110346, 0.665293, 0.738383,
		-0.962964, 0.112327, -0.245116,
		28.754284, 26.315643, 30.601568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067862, 26.111612, 31.393789>,  <29.428358, 26.237013, 30.773149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067862, 26.111612, 31.393789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.792955, 26.071114, 31.106064>,  <28.628012, 26.046814, 30.933428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.792955, 26.071114, 31.106064>,  <29.067862, 26.111612, 31.393789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792955, 26.071114, 31.106064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507508, -0.641550, 0.575195,
		-0.519713, 0.760370, 0.389532,
		-0.687266, -0.101246, -0.719316,
		28.586775, 26.040739, 30.890268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480652, 25.952381, 31.838451>,  <29.067862, 26.111612, 31.393789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480652, 25.952381, 31.838451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.388998, 25.835640, 31.467007>,  <28.334005, 25.765594, 31.244141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.388998, 25.835640, 31.467007>,  <28.480652, 25.952381, 31.838451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388998, 25.835640, 31.467007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510494, -0.776240, 0.369929,
		-0.828791, 0.558813, 0.028871,
		-0.229132, -0.291855, -0.928611,
		28.320259, 25.748083, 31.188423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704321, 25.858660, 31.817926>,  <28.480652, 25.952381, 31.838451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704321, 25.858660, 31.817926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.861828, 25.665474, 31.505085>,  <27.956333, 25.549562, 31.317379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.861828, 25.665474, 31.505085>,  <27.704321, 25.858660, 31.817926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861828, 25.665474, 31.505085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517494, -0.819676, 0.245622,
		-0.759700, 0.308017, -0.572696,
		0.393770, -0.482966, -0.782105,
		27.979959, 25.520584, 31.270452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161375, 25.479631, 31.593868>,  <27.704321, 25.858660, 31.817926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161375, 25.479631, 31.593868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.486300, 25.307537, 31.436363>,  <27.681253, 25.204281, 31.341860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.486300, 25.307537, 31.436363>,  <27.161375, 25.479631, 31.593868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486300, 25.307537, 31.436363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227928, -0.855637, 0.464688,
		-0.536844, -0.287720, -0.793105,
		0.812310, -0.430236, -0.393764,
		27.729992, 25.178467, 31.318233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954338, 24.780708, 31.468012>,  <27.161375, 25.479631, 31.593868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954338, 24.780708, 31.468012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.353365, 24.758389, 31.484707>,  <27.592781, 24.744997, 31.494724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.353365, 24.758389, 31.484707>,  <26.954338, 24.780708, 31.468012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353365, 24.758389, 31.484707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068469, -0.896220, 0.438294,
		0.012950, -0.440086, -0.897862,
		0.997569, -0.055800, 0.041738,
		27.652636, 24.741648, 31.497229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148472, 24.047546, 31.266186>,  <26.954338, 24.780708, 31.468012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148472, 24.047546, 31.266186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.407707, 24.243114, 31.499744>,  <27.563250, 24.360456, 31.639879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.407707, 24.243114, 31.499744>,  <27.148472, 24.047546, 31.266186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407707, 24.243114, 31.499744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058086, -0.796208, 0.602228,
		0.759346, -0.356382, -0.544414,
		0.648090, 0.488922, 0.583896,
		27.602135, 24.389791, 31.674913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717350, 23.559885, 31.469448>,  <27.148472, 24.047546, 31.266186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717350, 23.559885, 31.469448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.678211, 23.857300, 31.734047>,  <27.654728, 24.035749, 31.892807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.678211, 23.857300, 31.734047>,  <27.717350, 23.559885, 31.469448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678211, 23.857300, 31.734047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028420, -0.666503, 0.744960,
		0.994796, 0.054092, 0.086346,
		-0.097846, 0.743537, 0.661497,
		27.648857, 24.080360, 31.932497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126333, 23.108154, 31.993732>,  <27.717350, 23.559885, 31.469448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126333, 23.108154, 31.993732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.867542, 23.401672, 32.076645>,  <27.712267, 23.577784, 32.126392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.867542, 23.401672, 32.076645>,  <28.126333, 23.108154, 31.993732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867542, 23.401672, 32.076645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220818, -0.440499, 0.870172,
		0.729834, 0.517211, 0.447029,
		-0.646979, 0.733793, 0.207282,
		27.673449, 23.621811, 32.138828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514439, 23.544935, 31.462729>,  <28.126333, 23.108154, 31.993732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514439, 23.544935, 31.462729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.387505, 23.252678, 31.220917>,  <28.311344, 23.077324, 31.075829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.387505, 23.252678, 31.220917>,  <28.514439, 23.544935, 31.462729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387505, 23.252678, 31.220917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931320, -0.119971, -0.343875,
		0.178724, -0.672135, 0.718535,
		-0.317334, -0.730645, -0.604531,
		28.292305, 23.033485, 31.039557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820938, 22.864204, 31.452366>,  <28.514439, 23.544935, 31.462729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820938, 22.864204, 31.452366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.081923, 22.651054, 31.236835>,  <29.238514, 22.523163, 31.107517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.081923, 22.651054, 31.236835>,  <28.820938, 22.864204, 31.452366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081923, 22.651054, 31.236835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126002, 0.777407, -0.616248,
		0.747272, 0.334185, 0.574373,
		0.652463, -0.532877, -0.538827,
		29.277662, 22.491192, 31.075188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370714, 23.291245, 31.199551>,  <28.820938, 22.864204, 31.452366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370714, 23.291245, 31.199551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402645, 22.979656, 30.950768>,  <29.421804, 22.792704, 30.801498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402645, 22.979656, 30.950768>,  <29.370714, 23.291245, 31.199551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402645, 22.979656, 30.950768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152449, 0.626149, -0.764655,
		0.985082, -0.033775, 0.168739,
		0.079830, -0.778972, -0.621957,
		29.426594, 22.745964, 30.764181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025375, 23.420326, 30.926336>,  <29.370714, 23.291245, 31.199551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025375, 23.420326, 30.926336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.816109, 23.178902, 30.685669>,  <29.690548, 23.034046, 30.541267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.816109, 23.178902, 30.685669>,  <30.025375, 23.420326, 30.926336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816109, 23.178902, 30.685669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216264, 0.776910, -0.591304,
		0.824333, -0.179232, -0.536983,
		-0.523168, -0.603562, -0.601671,
		29.659159, 22.997833, 30.505167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303663, 23.419439, 30.248306>,  <30.025375, 23.420326, 30.926336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303663, 23.419439, 30.248306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.928583, 23.297516, 30.181606>,  <29.703535, 23.224361, 30.141586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.928583, 23.297516, 30.181606>,  <30.303663, 23.419439, 30.248306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928583, 23.297516, 30.181606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158176, 0.801837, -0.576227,
		0.309347, -0.513953, -0.800098,
		-0.937702, -0.304810, -0.166751,
		29.647272, 23.206074, 30.131580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247387, 23.563883, 29.561375>,  <30.303663, 23.419439, 30.248306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247387, 23.563883, 29.561375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.873528, 23.455616, 29.653614>,  <29.649212, 23.390656, 29.708958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.873528, 23.455616, 29.653614>,  <30.247387, 23.563883, 29.561375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873528, 23.455616, 29.653614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351295, 0.602526, -0.716627,
		0.055025, -0.750801, -0.658233,
		-0.934646, -0.270666, 0.230599,
		29.593134, 23.374416, 29.722794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869761, 23.188477, 28.992060>,  <30.247387, 23.563883, 29.561375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869761, 23.188477, 28.992060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.624928, 23.413738, 29.214127>,  <29.478027, 23.548895, 29.347366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.624928, 23.413738, 29.214127>,  <29.869761, 23.188477, 28.992060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624928, 23.413738, 29.214127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254514, 0.524395, -0.812547,
		-0.748717, -0.638644, -0.177643,
		-0.612083, 0.563155, 0.555167,
		29.441303, 23.582685, 29.380676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197510, 23.293056, 28.596565>,  <29.869761, 23.188477, 28.992060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197510, 23.293056, 28.596565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.187887, 23.569424, 28.885578>,  <29.182114, 23.735243, 29.058987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.187887, 23.569424, 28.885578>,  <29.197510, 23.293056, 28.596565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187887, 23.569424, 28.885578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381213, 0.661794, -0.645527,
		-0.924174, -0.290969, 0.247465,
		-0.024058, 0.690917, 0.722534,
		29.180670, 23.776699, 29.102339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593321, 23.619272, 28.567801>,  <29.197510, 23.293056, 28.596565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593321, 23.619272, 28.567801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.815327, 23.885010, 28.768044>,  <28.948530, 24.044453, 28.888189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.815327, 23.885010, 28.768044>,  <28.593321, 23.619272, 28.567801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815327, 23.885010, 28.768044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313772, 0.724551, -0.613655,
		-0.770393, 0.183511, 0.610588,
		0.555015, 0.664342, 0.500609,
		28.981831, 24.084312, 28.918226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219944, 24.285557, 28.529432>,  <28.593321, 23.619272, 28.567801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219944, 24.285557, 28.529432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.591381, 24.393532, 28.631298>,  <28.814243, 24.458317, 28.692417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.591381, 24.393532, 28.631298>,  <28.219944, 24.285557, 28.529432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591381, 24.393532, 28.631298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046648, 0.765690, -0.641515,
		-0.368160, 0.583826, 0.723605,
		0.928591, 0.269935, 0.254662,
		28.869959, 24.474512, 28.707697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161823, 24.998270, 28.737873>,  <28.219944, 24.285557, 28.529432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161823, 24.998270, 28.737873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.538809, 24.928852, 28.623581>,  <28.765001, 24.887201, 28.555006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.538809, 24.928852, 28.623581>,  <28.161823, 24.998270, 28.737873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538809, 24.928852, 28.623581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068446, 0.736419, -0.673054,
		0.327222, 0.653887, 0.682171,
		0.942465, -0.173546, -0.285728,
		28.821548, 24.876789, 28.537863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498720, 25.615355, 28.805513>,  <28.161823, 24.998270, 28.737873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498720, 25.615355, 28.805513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.710920, 25.408455, 28.536880>,  <28.838240, 25.284315, 28.375700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.710920, 25.408455, 28.536880>,  <28.498720, 25.615355, 28.805513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710920, 25.408455, 28.536880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021362, 0.783846, -0.620587,
		0.847416, 0.343568, 0.404781,
		0.530500, -0.517248, -0.671583,
		28.870070, 25.253281, 28.335405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067648, 26.092880, 28.662910>,  <28.498720, 25.615355, 28.805513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067648, 26.092880, 28.662910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.085434, 25.816185, 28.374599>,  <29.096106, 25.650167, 28.201612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.085434, 25.816185, 28.374599>,  <29.067648, 26.092880, 28.662910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085434, 25.816185, 28.374599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068710, 0.721901, -0.688577,
		0.996645, -0.018905, 0.079630,
		0.044467, -0.691739, -0.720778,
		29.098774, 25.608664, 28.158365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660147, 26.300049, 28.296364>,  <29.067648, 26.092880, 28.662910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660147, 26.300049, 28.296364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.421696, 26.075817, 28.066448>,  <29.278625, 25.941278, 27.928499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.421696, 26.075817, 28.066448>,  <29.660147, 26.300049, 28.296364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421696, 26.075817, 28.066448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218758, 0.575410, -0.788066,
		0.772512, -0.595529, -0.220387,
		-0.596128, -0.560579, -0.574788,
		29.242857, 25.907642, 27.894012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037468, 26.059958, 27.752031>,  <29.660147, 26.300049, 28.296364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037468, 26.059958, 27.752031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.659119, 26.126595, 27.640625>,  <29.432110, 26.166576, 27.573780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.659119, 26.126595, 27.640625>,  <30.037468, 26.059958, 27.752031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659119, 26.126595, 27.640625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313190, 0.693515, -0.648805,
		0.085069, -0.700916, -0.708152,
		-0.945873, 0.166593, -0.278517,
		29.375357, 26.176573, 27.557070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752966, 25.689465, 27.646915>,  <30.037468, 26.059958, 27.752031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752966, 25.689465, 27.646915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.105415, 25.829037, 27.774586>,  <31.316885, 25.912781, 27.851187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.105415, 25.829037, 27.774586>,  <30.752966, 25.689465, 27.646915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105415, 25.829037, 27.774586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104897, -0.802348, 0.587567,
		0.461109, -0.484237, -0.743568,
		0.881122, 0.348930, 0.319175,
		31.369751, 25.933716, 27.870338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173391, 25.062120, 27.722328>,  <30.752966, 25.689465, 27.646915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173391, 25.062120, 27.722328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.355364, 25.340733, 27.944275>,  <31.464548, 25.507900, 28.077444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.355364, 25.340733, 27.944275>,  <31.173391, 25.062120, 27.722328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355364, 25.340733, 27.944275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180112, -0.682171, 0.708663,
		0.872121, -0.222456, -0.435796,
		0.454933, 0.696532, 0.554869,
		31.491844, 25.549692, 28.110735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687019, 24.752644, 27.966711>,  <31.173391, 25.062120, 27.722328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687019, 24.752644, 27.966711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.660912, 25.054085, 28.228344>,  <31.645247, 25.234949, 28.385323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.660912, 25.054085, 28.228344>,  <31.687019, 24.752644, 27.966711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660912, 25.054085, 28.228344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183662, -0.635207, 0.750187,
		0.980820, 0.169095, -0.096948,
		-0.065270, 0.753604, 0.654080,
		31.641331, 25.280167, 28.424568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271580, 24.637190, 28.463531>,  <31.687019, 24.752644, 27.966711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271580, 24.637190, 28.463531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.063320, 24.913368, 28.664413>,  <31.938364, 25.079075, 28.784943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.063320, 24.913368, 28.664413>,  <32.271580, 24.637190, 28.463531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063320, 24.913368, 28.664413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058899, -0.615864, 0.785648,
		0.851738, 0.379466, 0.361314,
		-0.520647, 0.690447, 0.502204,
		31.907125, 25.120502, 28.815075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590912, 24.810986, 29.121529>,  <32.271580, 24.637190, 28.463531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590912, 24.810986, 29.121529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212036, 24.923279, 29.183514>,  <31.984709, 24.990654, 29.220705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212036, 24.923279, 29.183514>,  <32.590912, 24.810986, 29.121529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212036, 24.923279, 29.183514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039347, -0.581362, 0.812693,
		0.318238, 0.763680, 0.561709,
		-0.947194, 0.280732, 0.154963,
		31.927877, 25.007498, 29.230003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645184, 25.135031, 29.649456>,  <32.590912, 24.810986, 29.121529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645184, 25.135031, 29.649456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252720, 25.058342, 29.639973>,  <32.017242, 25.012329, 29.634283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252720, 25.058342, 29.639973>,  <32.645184, 25.135031, 29.649456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252720, 25.058342, 29.639973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102473, -0.620552, 0.777441,
		-0.163766, 0.760366, 0.628509,
		-0.981163, -0.191724, -0.023708,
		31.958370, 25.000824, 29.632860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385906, 25.244555, 30.358011>,  <32.645184, 25.135031, 29.649456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385906, 25.244555, 30.358011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145603, 25.004932, 30.146267>,  <32.001423, 24.861158, 30.019220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145603, 25.004932, 30.146267>,  <32.385906, 25.244555, 30.358011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145603, 25.004932, 30.146267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020307, -0.673392, 0.739006,
		-0.799173, 0.433214, 0.416711,
		-0.600758, -0.599056, -0.529360,
		31.965376, 24.825216, 29.987459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241955, 25.741688, 30.920225>,  <32.385906, 25.244555, 30.358011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241955, 25.741688, 30.920225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424339, 25.932159, 31.220985>,  <32.533768, 26.046442, 31.401442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424339, 25.932159, 31.220985>,  <32.241955, 25.741688, 30.920225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424339, 25.932159, 31.220985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485359, 0.575107, -0.658543,
		-0.746009, 0.665210, 0.031106,
		0.455958, 0.476181, 0.751900,
		32.561127, 26.075014, 31.446556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175545, 26.406012, 30.786825>,  <32.241955, 25.741688, 30.920225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175545, 26.406012, 30.786825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.481552, 26.443363, 31.041706>,  <32.665157, 26.465775, 31.194635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.481552, 26.443363, 31.041706>,  <32.175545, 26.406012, 30.786825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481552, 26.443363, 31.041706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366315, 0.750685, -0.549805,
		-0.529679, 0.654028, 0.540081,
		0.765018, 0.093380, 0.637203,
		32.711056, 26.471376, 31.232866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250240, 27.110476, 30.968456>,  <32.175545, 26.406012, 30.786825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250240, 27.110476, 30.968456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.602932, 26.934139, 31.035645>,  <32.814548, 26.828339, 31.075956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.602932, 26.934139, 31.035645>,  <32.250240, 27.110476, 30.968456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602932, 26.934139, 31.035645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448343, 0.672280, -0.589091,
		0.146773, 0.594727, 0.790416,
		0.881729, -0.440840, 0.167969,
		32.867451, 26.801888, 31.086035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681095, 27.705227, 31.162109>,  <32.250240, 27.110476, 30.968456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681095, 27.705227, 31.162109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934933, 27.413765, 31.059071>,  <33.087234, 27.238888, 30.997248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934933, 27.413765, 31.059071>,  <32.681095, 27.705227, 31.162109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934933, 27.413765, 31.059071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555127, 0.661653, -0.504034,
		0.537705, 0.176859, 0.824375,
		0.634593, -0.728654, -0.257595,
		33.125309, 27.195169, 30.981792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394222, 27.977087, 31.180206>,  <32.681095, 27.705227, 31.162109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394222, 27.977087, 31.180206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428722, 27.660492, 30.938179>,  <33.449421, 27.470535, 30.792963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428722, 27.660492, 30.938179>,  <33.394222, 27.977087, 31.180206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428722, 27.660492, 30.938179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396487, 0.584434, -0.707980,
		0.913980, -0.178839, 0.364221,
		0.086249, -0.791488, -0.605068,
		33.454597, 27.423046, 30.756659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075031, 27.914974, 30.988693>,  <33.394222, 27.977087, 31.180206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075031, 27.914974, 30.988693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884083, 27.709278, 30.703690>,  <33.769512, 27.585861, 30.532686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884083, 27.709278, 30.703690>,  <34.075031, 27.914974, 30.988693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884083, 27.709278, 30.703690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312590, 0.658442, -0.684647,
		0.821219, -0.549557, -0.153578,
		-0.477375, -0.514238, -0.712511,
		33.740871, 27.555006, 30.489937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557655, 27.896854, 30.426710>,  <34.075031, 27.914974, 30.988693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557655, 27.896854, 30.426710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216953, 27.792389, 30.245029>,  <34.012531, 27.729710, 30.136021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216953, 27.792389, 30.245029>,  <34.557655, 27.896854, 30.426710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216953, 27.792389, 30.245029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231993, 0.589297, -0.773892,
		0.469770, -0.764542, -0.441352,
		-0.851760, -0.261161, -0.454203,
		33.961426, 27.714041, 30.108768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.642715, 26.895096, 34.471664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.603600, 26.669662, 34.143566>,  <27.580130, 26.534403, 33.946705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.603600, 26.669662, 34.143566>,  <27.642715, 26.895096, 34.471664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603600, 26.669662, 34.143566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414179, 0.726385, -0.548471,
		0.904927, -0.393365, 0.162392,
		-0.097790, -0.563586, -0.820249,
		27.574263, 26.500587, 33.897491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245047, 26.850956, 34.159378>,  <27.642715, 26.895096, 34.471664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245047, 26.850956, 34.159378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.989201, 26.798512, 33.856407>,  <27.835693, 26.767044, 33.674625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.989201, 26.798512, 33.856407>,  <28.245047, 26.850956, 34.159378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989201, 26.798512, 33.856407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526108, 0.643740, -0.555705,
		0.560449, -0.753928, -0.342766,
		-0.639615, -0.131112, -0.757431,
		27.797316, 26.759178, 33.629177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627035, 27.086454, 33.597298>,  <28.245047, 26.850956, 34.159378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627035, 27.086454, 33.597298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.271021, 27.010468, 33.431526>,  <28.057413, 26.964876, 33.332066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.271021, 27.010468, 33.431526>,  <28.627035, 27.086454, 33.597298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271021, 27.010468, 33.431526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141924, 0.748419, -0.647863,
		0.433236, -0.635438, -0.639159,
		-0.890036, -0.189966, -0.414426,
		28.004009, 26.953478, 33.307198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767992, 27.051441, 32.918339>,  <28.627035, 27.086454, 33.597298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767992, 27.051441, 32.918339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.375801, 27.127369, 32.938862>,  <28.140486, 27.172926, 32.951176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.375801, 27.127369, 32.938862>,  <28.767992, 27.051441, 32.918339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375801, 27.127369, 32.938862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102441, 0.715848, -0.690700,
		-0.167839, -0.671960, -0.721318,
		-0.980477, 0.189819, 0.051311,
		28.081657, 27.184315, 32.954254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539608, 27.129990, 32.185188>,  <28.767992, 27.051441, 32.918339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539608, 27.129990, 32.185188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.255774, 27.308350, 32.403423>,  <28.085472, 27.415365, 32.534363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.255774, 27.308350, 32.403423>,  <28.539608, 27.129990, 32.185188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255774, 27.308350, 32.403423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090373, 0.825496, -0.557126,
		-0.698799, -0.346023, -0.626057,
		-0.709586, 0.445898, 0.545585,
		28.042898, 27.442120, 32.567101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060690, 27.392752, 31.712128>,  <28.539608, 27.129990, 32.185188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060690, 27.392752, 31.712128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.017868, 27.605110, 32.048386>,  <27.992176, 27.732525, 32.250141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.017868, 27.605110, 32.048386>,  <28.060690, 27.392752, 31.712128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017868, 27.605110, 32.048386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003518, 0.845298, -0.534284,
		-0.994247, -0.060154, -0.088625,
		-0.107054, 0.530898, 0.840647,
		27.985752, 27.764380, 32.300579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542473, 27.816227, 31.604662>,  <28.060690, 27.392752, 31.712128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542473, 27.816227, 31.604662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.695478, 28.015633, 31.915833>,  <27.787281, 28.135275, 32.102535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.695478, 28.015633, 31.915833>,  <27.542473, 27.816227, 31.604662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695478, 28.015633, 31.915833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146534, 0.864033, -0.481638,
		-0.912256, 0.070241, 0.403553,
		0.382514, 0.498512, 0.777926,
		27.810232, 28.165186, 32.149212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173225, 28.439219, 31.599939>,  <27.542473, 27.816227, 31.604662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173225, 28.439219, 31.599939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.479616, 28.514832, 31.845718>,  <27.663450, 28.560200, 31.993185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.479616, 28.514832, 31.845718>,  <27.173225, 28.439219, 31.599939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479616, 28.514832, 31.845718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012548, 0.951214, -0.308277,
		-0.642745, 0.243843, 0.726236,
		0.765977, 0.189031, 0.614448,
		27.709410, 28.571541, 32.030052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026472, 29.054459, 31.884007>,  <27.173225, 28.439219, 31.599939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026472, 29.054459, 31.884007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.423105, 29.012894, 31.914909>,  <27.661085, 28.987955, 31.933451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.423105, 29.012894, 31.914909>,  <27.026472, 29.054459, 31.884007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423105, 29.012894, 31.914909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123301, 0.939906, -0.318392,
		-0.039528, 0.325238, 0.944806,
		0.991582, -0.103910, 0.077255,
		27.720579, 28.981720, 31.938086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379215, 29.676092, 32.219387>,  <27.026472, 29.054459, 31.884007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379215, 29.676092, 32.219387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.660604, 29.497036, 31.998573>,  <27.829437, 29.389603, 31.866085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.660604, 29.497036, 31.998573>,  <27.379215, 29.676092, 32.219387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660604, 29.497036, 31.998573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194664, 0.868380, -0.456094,
		0.683544, 0.213388, 0.698021,
		0.703473, -0.447640, -0.552037,
		27.871647, 29.362743, 31.832962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025654, 30.100605, 32.298920>,  <27.379215, 29.676092, 32.219387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025654, 30.100605, 32.298920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.024170, 29.879780, 31.965401>,  <28.023279, 29.747284, 31.765289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.024170, 29.879780, 31.965401>,  <28.025654, 30.100605, 32.298920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024170, 29.879780, 31.965401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250118, 0.806785, -0.535293,
		0.968208, -0.210534, 0.135087,
		-0.003711, -0.552063, -0.833794,
		28.023056, 29.714161, 31.715261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630049, 30.322802, 31.930532>,  <28.025654, 30.100605, 32.298920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630049, 30.322802, 31.930532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.411125, 30.148540, 31.644691>,  <28.279772, 30.043983, 31.473186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.411125, 30.148540, 31.644691>,  <28.630049, 30.322802, 31.930532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411125, 30.148540, 31.644691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005430, 0.855669, -0.517495,
		0.836912, -0.279350, -0.470682,
		-0.547311, -0.435654, -0.714602,
		28.246933, 30.017845, 31.430311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314644, 29.927225, 31.934652>,  <28.630049, 30.322802, 31.930532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314644, 29.927225, 31.934652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.675711, 30.043137, 32.061913>,  <29.892351, 30.112684, 32.138268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.675711, 30.043137, 32.061913>,  <29.314644, 29.927225, 31.934652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675711, 30.043137, 32.061913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012139, -0.721862, 0.691931,
		0.430170, -0.628444, -0.648083,
		0.902666, 0.289781, 0.318152,
		29.946510, 30.130072, 32.157356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608734, 29.328098, 32.169872>,  <29.314644, 29.927225, 31.934652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608734, 29.328098, 32.169872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.865026, 29.588348, 32.332920>,  <30.018801, 29.744497, 32.430748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.865026, 29.588348, 32.332920>,  <29.608734, 29.328098, 32.169872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865026, 29.588348, 32.332920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094832, -0.593918, 0.798917,
		0.761888, -0.473233, -0.442240,
		0.640728, 0.650624, 0.407622,
		30.057245, 29.783535, 32.455208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123863, 28.998922, 32.475269>,  <29.608734, 29.328098, 32.169872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123863, 28.998922, 32.475269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.137640, 29.333809, 32.693584>,  <30.145906, 29.534740, 32.824574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.137640, 29.333809, 32.693584>,  <30.123863, 28.998922, 32.475269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137640, 29.333809, 32.693584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138744, -0.544830, 0.826989,
		0.989729, 0.047243, -0.134923,
		0.034440, 0.837215, 0.545789,
		30.147972, 29.584972, 32.857323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835215, 29.086374, 32.830463>,  <30.123863, 28.998922, 32.475269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835215, 29.086374, 32.830463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.554808, 29.275841, 33.043709>,  <30.386564, 29.389521, 33.171658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.554808, 29.275841, 33.043709>,  <30.835215, 29.086374, 32.830463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554808, 29.275841, 33.043709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340280, -0.434801, 0.833761,
		0.626725, 0.765890, 0.143623,
		-0.701017, 0.473667, 0.533117,
		30.344501, 29.417940, 33.203644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257814, 29.307459, 33.518799>,  <30.835215, 29.086374, 32.830463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257814, 29.307459, 33.518799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.872690, 29.336086, 33.623013>,  <30.641617, 29.353262, 33.685539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.872690, 29.336086, 33.623013>,  <31.257814, 29.307459, 33.518799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872690, 29.336086, 33.623013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142782, -0.683857, 0.715508,
		0.229376, 0.726097, 0.648205,
		-0.962808, 0.071569, 0.260534,
		30.583847, 29.357557, 33.701172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269506, 29.426548, 34.286880>,  <31.257814, 29.307459, 33.518799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269506, 29.426548, 34.286880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.906628, 29.300182, 34.175743>,  <30.688900, 29.224363, 34.109062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.906628, 29.300182, 34.175743>,  <31.269506, 29.426548, 34.286880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906628, 29.300182, 34.175743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009253, -0.675232, 0.737547,
		-0.420608, 0.666528, 0.615490,
		-0.907195, -0.315914, -0.277841,
		30.634470, 29.205408, 34.092392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900696, 29.325037, 34.881149>,  <31.269506, 29.426548, 34.286880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900696, 29.325037, 34.881149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.693323, 29.101925, 34.621887>,  <30.568899, 28.968058, 34.466331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.693323, 29.101925, 34.621887>,  <30.900696, 29.325037, 34.881149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693323, 29.101925, 34.621887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113466, -0.706400, 0.698660,
		-0.847557, 0.435752, 0.302932,
		-0.518433, -0.557781, -0.648157,
		30.537794, 28.934591, 34.427441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321419, 29.103619, 35.216965>,  <30.900696, 29.325037, 34.881149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321419, 29.103619, 35.216965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.340193, 28.825485, 34.930103>,  <30.351458, 28.658606, 34.757988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.340193, 28.825485, 34.930103>,  <30.321419, 29.103619, 35.216965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340193, 28.825485, 34.930103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259120, -0.701844, 0.663530,
		-0.964704, 0.154686, -0.213116,
		0.046935, -0.695332, -0.717154,
		30.354273, 28.616886, 34.714958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741987, 28.665167, 35.316994>,  <30.321419, 29.103619, 35.216965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741987, 28.665167, 35.316994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.984171, 28.448147, 35.084080>,  <30.129480, 28.317936, 34.944332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.984171, 28.448147, 35.084080>,  <29.741987, 28.665167, 35.316994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984171, 28.448147, 35.084080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169054, -0.802608, 0.572050,
		-0.777710, -0.247918, -0.577671,
		0.605465, -0.542546, -0.582285,
		30.165810, 28.285383, 34.909393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404068, 28.025618, 35.161709>,  <29.741987, 28.665167, 35.316994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404068, 28.025618, 35.161709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.787985, 27.956638, 35.073112>,  <30.018335, 27.915251, 35.019955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.787985, 27.956638, 35.073112>,  <29.404068, 28.025618, 35.161709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787985, 27.956638, 35.073112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061221, -0.898645, 0.434385,
		-0.273948, -0.403360, -0.873071,
		0.959794, -0.172449, -0.221487,
		30.075924, 27.904903, 35.006664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396923, 27.434038, 34.836975>,  <29.404068, 28.025618, 35.161709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396923, 27.434038, 34.836975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.773413, 27.443165, 34.971783>,  <29.999306, 27.448641, 35.052666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.773413, 27.443165, 34.971783>,  <29.396923, 27.434038, 34.836975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773413, 27.443165, 34.971783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053398, -0.975120, 0.215148,
		0.333541, -0.220498, -0.916587,
		0.941222, 0.022816, 0.337017,
		30.055779, 27.450010, 35.072887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678999, 26.806900, 34.672344>,  <29.396923, 27.434038, 34.836975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678999, 26.806900, 34.672344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.964851, 26.931602, 34.922821>,  <30.136362, 27.006424, 35.073105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.964851, 26.931602, 34.922821>,  <29.678999, 26.806900, 34.672344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964851, 26.931602, 34.922821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141621, -0.941136, 0.306932,
		0.685016, -0.130661, -0.716715,
		0.714630, 0.311755, 0.626189,
		30.179241, 27.025129, 35.110680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356007, 26.378628, 34.553032>,  <29.678999, 26.806900, 34.672344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356007, 26.378628, 34.553032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.366564, 26.532825, 34.921967>,  <30.372898, 26.625343, 35.143326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.366564, 26.532825, 34.921967>,  <30.356007, 26.378628, 34.553032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366564, 26.532825, 34.921967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131761, -0.915946, 0.379054,
		0.990930, 0.111523, -0.074968,
		0.026393, 0.385494, 0.922333,
		30.374481, 26.648474, 35.198666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935602, 26.176249, 34.797493>,  <30.356007, 26.378628, 34.553032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935602, 26.176249, 34.797493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.702024, 26.257057, 35.111996>,  <30.561878, 26.305542, 35.300697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.702024, 26.257057, 35.111996>,  <30.935602, 26.176249, 34.797493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702024, 26.257057, 35.111996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214226, -0.895860, 0.389284,
		0.783018, 0.395756, 0.479854,
		-0.583944, 0.202019, 0.786256,
		30.526842, 26.317663, 35.347874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902361, 26.129339, 33.990601>,  <30.935602, 26.176249, 34.797493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902361, 26.129339, 33.990601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.065386, 25.767170, 33.943100>,  <31.163200, 25.549868, 33.914600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.065386, 25.767170, 33.943100>,  <30.902361, 26.129339, 33.990601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065386, 25.767170, 33.943100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703508, 0.394231, -0.591319,
		0.582209, 0.157456, 0.797646,
		0.407564, -0.905422, -0.118753,
		31.187654, 25.495543, 33.907475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439150, 26.263369, 33.783897>,  <30.902361, 26.129339, 33.990601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439150, 26.263369, 33.783897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.504557, 25.876160, 33.707794>,  <31.543800, 25.643835, 33.662132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.504557, 25.876160, 33.707794>,  <31.439150, 26.263369, 33.783897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504557, 25.876160, 33.707794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681519, 0.250276, -0.687672,
		0.713298, -0.017215, 0.700650,
		0.163518, -0.968022, -0.190254,
		31.553612, 25.585752, 33.650719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170361, 26.144476, 33.644306>,  <31.439150, 26.263369, 33.783897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170361, 26.144476, 33.644306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978315, 25.859161, 33.440067>,  <31.863087, 25.687973, 33.317524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978315, 25.859161, 33.440067>,  <32.170361, 26.144476, 33.644306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978315, 25.859161, 33.440067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572788, 0.185938, -0.798337,
		0.664382, -0.675760, 0.319289,
		-0.480116, -0.713286, -0.510601,
		31.834280, 25.645176, 33.286888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730572, 25.765409, 33.301105>,  <32.170361, 26.144476, 33.644306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730572, 25.765409, 33.301105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.389496, 25.677227, 33.111656>,  <32.184849, 25.624317, 32.997986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.389496, 25.677227, 33.111656>,  <32.730572, 25.765409, 33.301105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389496, 25.677227, 33.111656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402626, 0.300375, -0.864678,
		0.332891, -0.927995, -0.167364,
		-0.852688, -0.220458, -0.473626,
		32.133690, 25.611090, 32.969570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956028, 25.317141, 32.802738>,  <32.730572, 25.765409, 33.301105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956028, 25.317141, 32.802738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.610535, 25.461407, 32.661949>,  <32.403240, 25.547966, 32.577477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.610535, 25.461407, 32.661949>,  <32.956028, 25.317141, 32.802738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610535, 25.461407, 32.661949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383260, 0.016618, -0.923491,
		-0.327223, -0.932547, -0.152583,
		-0.863734, 0.360666, -0.351970,
		32.351414, 25.569607, 32.556358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886326, 25.054428, 32.092316>,  <32.956028, 25.317141, 32.802738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886326, 25.054428, 32.092316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.647564, 25.372440, 32.135460>,  <32.504307, 25.563248, 32.161346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.647564, 25.372440, 32.135460>,  <32.886326, 25.054428, 32.092316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647564, 25.372440, 32.135460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356722, 0.383403, -0.851910,
		-0.718648, -0.470032, -0.512460,
		-0.596904, 0.795029, 0.107861,
		32.468494, 25.610949, 32.167820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429188, 25.143606, 31.480246>,  <32.886326, 25.054428, 32.092316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429188, 25.143606, 31.480246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.496468, 25.489471, 31.669590>,  <32.536835, 25.696991, 31.783195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.496468, 25.489471, 31.669590>,  <32.429188, 25.143606, 31.480246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496468, 25.489471, 31.669590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458900, 0.356309, -0.813913,
		-0.872422, 0.354125, -0.336861,
		0.168200, 0.864661, 0.473360,
		32.546928, 25.748871, 31.811598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966084, 24.857510, 30.860146>,  <32.429188, 25.143606, 31.480246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966084, 24.857510, 30.860146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.940859, 24.643223, 30.523331>,  <31.925724, 24.514650, 30.321241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.940859, 24.643223, 30.523331>,  <31.966084, 24.857510, 30.860146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940859, 24.643223, 30.523331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036934, -0.844392, 0.534450,
		-0.997326, 0.002603, 0.073035,
		-0.063061, -0.535719, -0.842038,
		31.921940, 24.482508, 30.270720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426413, 24.441368, 31.064285>,  <31.966084, 24.857510, 30.860146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426413, 24.441368, 31.064285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.628550, 24.261024, 30.769978>,  <31.749832, 24.152819, 30.593393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.628550, 24.261024, 30.769978>,  <31.426413, 24.441368, 31.064285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628550, 24.261024, 30.769978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121159, -0.881276, 0.456808,
		-0.854370, -0.141701, -0.499974,
		0.505345, -0.450859, -0.735767,
		31.780151, 24.125767, 30.549248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985949, 23.847298, 30.804550>,  <31.426413, 24.441368, 31.064285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985949, 23.847298, 30.804550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.367422, 23.784592, 30.701859>,  <31.596306, 23.746969, 30.640244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.367422, 23.784592, 30.701859>,  <30.985949, 23.847298, 30.804550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367422, 23.784592, 30.701859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019488, -0.883874, 0.467319,
		-0.300173, -0.440672, -0.845993,
		0.953686, -0.156763, -0.256727,
		31.653528, 23.737562, 30.624840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996515, 23.122900, 30.589867>,  <30.985949, 23.847298, 30.804550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996515, 23.122900, 30.589867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.368052, 23.236740, 30.684742>,  <31.590973, 23.305044, 30.741667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.368052, 23.236740, 30.684742>,  <30.996515, 23.122900, 30.589867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368052, 23.236740, 30.684742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171209, -0.897494, 0.406438,
		0.328549, -0.336907, -0.882354,
		0.928840, 0.284602, 0.237189,
		31.646704, 23.322121, 30.755899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387981, 22.515337, 30.427095>,  <30.996515, 23.122900, 30.589867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387981, 22.515337, 30.427095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.568394, 22.744736, 30.700642>,  <31.676641, 22.882376, 30.864769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.568394, 22.744736, 30.700642>,  <31.387981, 22.515337, 30.427095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568394, 22.744736, 30.700642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126150, -0.799500, 0.587270,
		0.883549, -0.178606, -0.432945,
		0.451029, 0.573498, 0.683866,
		31.703703, 22.916784, 30.905802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814100, 22.054461, 30.662886>,  <31.387981, 22.515337, 30.427095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814100, 22.054461, 30.662886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.818975, 22.342999, 30.939873>,  <31.821901, 22.516121, 31.106066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.818975, 22.342999, 30.939873>,  <31.814100, 22.054461, 30.662886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818975, 22.342999, 30.939873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040764, -0.691586, 0.721143,
		0.999094, -0.037017, 0.020976,
		0.012188, 0.721345, 0.692469,
		31.822632, 22.559402, 31.147614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146271, 21.750689, 31.151127>,  <31.814100, 22.054461, 30.662886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146271, 21.750689, 31.151127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978090, 22.056694, 31.346256>,  <31.877182, 22.240297, 31.463333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978090, 22.056694, 31.346256>,  <32.146271, 21.750689, 31.151127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978090, 22.056694, 31.346256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145469, -0.587538, 0.796014,
		0.895576, 0.263724, 0.358319,
		-0.420455, 0.765015, 0.487822,
		31.851954, 22.286198, 31.492603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494549, 21.810808, 31.837645>,  <32.146271, 21.750689, 31.151127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494549, 21.810808, 31.837645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.152531, 22.008751, 31.899635>,  <31.947321, 22.127518, 31.936829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.152531, 22.008751, 31.899635>,  <32.494549, 21.810808, 31.837645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152531, 22.008751, 31.899635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178514, -0.561488, 0.808000,
		0.486862, 0.663209, 0.568435,
		-0.855043, 0.494858, 0.154975,
		31.896017, 22.157207, 31.946127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476730, 22.132406, 32.552925>,  <32.494549, 21.810808, 31.837645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476730, 22.132406, 32.552925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.107479, 22.070877, 32.411976>,  <31.885927, 22.033960, 32.327408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.107479, 22.070877, 32.411976>,  <32.476730, 22.132406, 32.552925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107479, 22.070877, 32.411976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168005, -0.662982, 0.729540,
		-0.345836, 0.732662, 0.586177,
		-0.923131, -0.153821, -0.352374,
		31.830540, 22.024731, 32.306263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.995562, 34.411407, 22.153214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617922, 34.301113, 22.080940>,  <31.391338, 34.234936, 22.037577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617922, 34.301113, 22.080940>,  <31.995562, 34.411407, 22.153214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617922, 34.301113, 22.080940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163626, -0.867753, 0.469288,
		-0.286190, 0.413489, 0.864362,
		-0.944098, -0.275738, -0.180685,
		31.334692, 34.218391, 22.026735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611803, 34.310692, 22.752060>,  <31.995562, 34.411407, 22.153214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611803, 34.310692, 22.752060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365772, 34.095749, 22.521259>,  <31.218153, 33.966785, 22.382778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365772, 34.095749, 22.521259>,  <31.611803, 34.310692, 22.752060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365772, 34.095749, 22.521259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062565, -0.762757, 0.643652,
		-0.785980, 0.359796, 0.502774,
		-0.615078, -0.537353, -0.577001,
		31.181250, 33.934544, 22.348160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254545, 33.953732, 23.204758>,  <31.611803, 34.310692, 22.752060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254545, 33.953732, 23.204758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227474, 33.766277, 22.852440>,  <31.211231, 33.653805, 22.641048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227474, 33.766277, 22.852440>,  <31.254545, 33.953732, 23.204758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227474, 33.766277, 22.852440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059556, -0.883143, 0.465308,
		-0.995928, -0.020965, 0.087680,
		-0.067679, -0.468636, -0.880795,
		31.207170, 33.625687, 22.588202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846161, 33.493149, 23.500702>,  <31.254545, 33.953732, 23.204758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846161, 33.493149, 23.500702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981670, 33.343338, 23.155457>,  <31.062977, 33.253452, 22.948309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981670, 33.343338, 23.155457>,  <30.846161, 33.493149, 23.500702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981670, 33.343338, 23.155457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010383, -0.918789, 0.394612,
		-0.940811, -0.124723, -0.315150,
		0.338774, -0.374528, -0.863112,
		31.083302, 33.230980, 22.896523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408216, 32.877956, 23.349686>,  <30.846161, 33.493149, 23.500702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408216, 32.877956, 23.349686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751028, 32.848652, 23.145672>,  <30.956715, 32.831070, 23.023264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751028, 32.848652, 23.145672>,  <30.408216, 32.877956, 23.349686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751028, 32.848652, 23.145672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137222, -0.921643, 0.362967,
		-0.496660, -0.381061, -0.779821,
		0.857029, -0.073263, -0.510033,
		31.008137, 32.826672, 22.992662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454700, 32.255798, 23.211357>,  <30.408216, 32.877956, 23.349686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454700, 32.255798, 23.211357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836004, 32.356018, 23.143806>,  <31.064787, 32.416149, 23.103277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836004, 32.356018, 23.143806>,  <30.454700, 32.255798, 23.211357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836004, 32.356018, 23.143806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299972, -0.851725, 0.429630,
		-0.036192, -0.460207, -0.887074,
		0.953261, 0.250548, -0.168874,
		31.121983, 32.431183, 23.093143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724556, 31.634310, 22.922857>,  <30.454700, 32.255798, 23.211357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724556, 31.634310, 22.922857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039127, 31.834579, 23.067554>,  <31.227871, 31.954741, 23.154373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039127, 31.834579, 23.067554>,  <30.724556, 31.634310, 22.922857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039127, 31.834579, 23.067554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314426, -0.828580, 0.463240,
		0.531664, -0.250563, -0.809043,
		0.786428, 0.500673, 0.361743,
		31.275055, 31.984781, 23.176077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376358, 31.244766, 22.747198>,  <30.724556, 31.634310, 22.922857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376358, 31.244766, 22.747198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445732, 31.481449, 23.062107>,  <31.487356, 31.623459, 23.251053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445732, 31.481449, 23.062107>,  <31.376358, 31.244766, 22.747198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445732, 31.481449, 23.062107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326272, -0.788767, 0.520953,
		0.929229, 0.166513, -0.329860,
		0.173437, 0.591709, 0.787274,
		31.497763, 31.658962, 23.298288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966730, 30.931845, 23.051796>,  <31.376358, 31.244766, 22.747198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966730, 30.931845, 23.051796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825129, 31.190189, 23.322365>,  <31.740168, 31.345196, 23.484705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825129, 31.190189, 23.322365>,  <31.966730, 30.931845, 23.051796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825129, 31.190189, 23.322365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429303, -0.530338, 0.731054,
		0.830892, 0.549184, -0.089531,
		-0.354002, 0.645863, 0.676420,
		31.718927, 31.383947, 23.525291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568413, 31.178522, 23.415833>,  <31.966730, 30.931845, 23.051796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568413, 31.178522, 23.415833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224483, 31.217163, 23.616383>,  <32.018127, 31.240347, 23.736713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224483, 31.217163, 23.616383>,  <32.568413, 31.178522, 23.415833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224483, 31.217163, 23.616383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318570, -0.665883, 0.674620,
		0.399028, 0.739775, 0.541765,
		-0.859819, 0.096602, 0.501377,
		31.966537, 31.246143, 23.766796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767719, 31.215651, 24.111250>,  <32.568413, 31.178522, 23.415833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767719, 31.215651, 24.111250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377598, 31.159874, 24.179756>,  <32.143524, 31.126408, 24.220860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377598, 31.159874, 24.179756>,  <32.767719, 31.215651, 24.111250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377598, 31.159874, 24.179756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220130, -0.676551, 0.702724,
		0.017881, 0.723073, 0.690540,
		-0.975307, -0.139444, 0.171267,
		32.085007, 31.118040, 24.231136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593426, 31.362789, 24.835924>,  <32.767719, 31.215651, 24.111250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593426, 31.362789, 24.835924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320477, 31.108250, 24.692020>,  <32.156708, 30.955526, 24.605679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320477, 31.108250, 24.692020>,  <32.593426, 31.362789, 24.835924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320477, 31.108250, 24.692020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266363, -0.674758, 0.688297,
		-0.680747, 0.373849, 0.629937,
		-0.682374, -0.636348, -0.359760,
		32.115765, 30.917345, 24.584093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759296, 31.814175, 25.422110>,  <32.593426, 31.362789, 24.835924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759296, 31.814175, 25.422110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121895, 31.859585, 25.584774>,  <33.339455, 31.886831, 25.682373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121895, 31.859585, 25.584774>,  <32.759296, 31.814175, 25.422110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121895, 31.859585, 25.584774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010520, 0.956801, -0.290551,
		-0.422080, 0.267662, 0.866144,
		0.906498, 0.113524, 0.406662,
		33.393845, 31.893642, 25.706772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835747, 32.524452, 25.429916>,  <32.759296, 31.814175, 25.422110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835747, 32.524452, 25.429916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220528, 32.422443, 25.469147>,  <33.451397, 32.361240, 25.492685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220528, 32.422443, 25.469147>,  <32.835747, 32.524452, 25.429916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220528, 32.422443, 25.469147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265805, 0.790346, -0.551997,
		0.063257, 0.557062, 0.828058,
		0.961949, -0.255020, 0.098075,
		33.509113, 32.345936, 25.498569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145615, 33.143322, 25.693821>,  <32.835747, 32.524452, 25.429916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145615, 33.143322, 25.693821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437805, 32.915703, 25.542778>,  <33.613121, 32.779133, 25.452152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437805, 32.915703, 25.542778>,  <33.145615, 33.143322, 25.693821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437805, 32.915703, 25.542778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246400, 0.735276, -0.631392,
		0.636938, 0.368175, 0.677316,
		0.730478, -0.569048, -0.377607,
		33.656948, 32.744987, 25.429497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742912, 33.564114, 25.682810>,  <33.145615, 33.143322, 25.693821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742912, 33.564114, 25.682810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804466, 33.289482, 25.398575>,  <33.841400, 33.124702, 25.228035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804466, 33.289482, 25.398575>,  <33.742912, 33.564114, 25.682810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804466, 33.289482, 25.398575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327109, 0.714000, -0.619035,
		0.932372, -0.137177, 0.334461,
		0.153887, -0.686576, -0.710586,
		33.850632, 33.083508, 25.185400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256420, 33.890705, 25.231087>,  <33.742912, 33.564114, 25.682810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256420, 33.890705, 25.231087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130939, 33.584072, 25.006966>,  <34.055653, 33.400093, 24.872494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130939, 33.584072, 25.006966>,  <34.256420, 33.890705, 25.231087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130939, 33.584072, 25.006966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428692, 0.412181, -0.803946,
		0.847240, -0.492396, 0.199327,
		-0.313701, -0.766585, -0.560303,
		34.036831, 33.354095, 24.838875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775890, 33.763134, 24.819374>,  <34.256420, 33.890705, 25.231087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775890, 33.763134, 24.819374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462456, 33.601337, 24.630745>,  <34.274395, 33.504257, 24.517567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462456, 33.601337, 24.630745>,  <34.775890, 33.763134, 24.819374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462456, 33.601337, 24.630745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289808, 0.433420, -0.853322,
		0.549552, -0.805315, -0.222396,
		-0.783584, -0.404493, -0.471574,
		34.227379, 33.479988, 24.489273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067787, 33.550205, 24.257942>,  <34.775890, 33.763134, 24.819374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067787, 33.550205, 24.257942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677090, 33.544594, 24.172367>,  <34.442669, 33.541229, 24.121023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677090, 33.544594, 24.172367>,  <35.067787, 33.550205, 24.257942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677090, 33.544594, 24.172367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178663, 0.498328, -0.848380,
		0.118509, -0.866875, -0.484235,
		-0.976748, -0.014026, -0.213936,
		34.384064, 33.540386, 24.108187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988419, 33.249432, 23.540047>,  <35.067787, 33.550205, 24.257942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988419, 33.249432, 23.540047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690041, 33.490078, 23.654324>,  <34.511013, 33.634464, 23.722891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690041, 33.490078, 23.654324>,  <34.988419, 33.249432, 23.540047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690041, 33.490078, 23.654324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219414, 0.627011, -0.747472,
		-0.628824, -0.494890, -0.599720,
		-0.745947, 0.601616, 0.285693,
		34.466255, 33.670563, 23.740032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661438, 33.414726, 22.905161>,  <34.988419, 33.249432, 23.540047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661438, 33.414726, 22.905161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474121, 33.694218, 23.121490>,  <34.361732, 33.861912, 23.251287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474121, 33.694218, 23.121490>,  <34.661438, 33.414726, 22.905161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474121, 33.694218, 23.121490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068950, 0.639116, -0.766014,
		-0.880881, -0.321425, -0.347468,
		-0.468288, 0.698725, 0.540823,
		34.333633, 33.903835, 23.283737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304665, 33.756577, 22.363909>,  <34.661438, 33.414726, 22.905161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304665, 33.756577, 22.363909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322567, 33.983501, 22.692825>,  <34.333309, 34.119656, 22.890175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322567, 33.983501, 22.692825>,  <34.304665, 33.756577, 22.363909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322567, 33.983501, 22.692825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248473, 0.790926, -0.559193,
		-0.967604, 0.229342, -0.105565,
		0.044752, 0.567308, 0.822289,
		34.335991, 34.153694, 22.939512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821465, 34.314892, 22.213322>,  <34.304665, 33.756577, 22.363909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821465, 34.314892, 22.213322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074211, 34.439957, 22.497009>,  <34.225857, 34.514996, 22.667221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074211, 34.439957, 22.497009>,  <33.821465, 34.314892, 22.213322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074211, 34.439957, 22.497009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007100, 0.912654, -0.408670,
		-0.775047, 0.263259, 0.574453,
		0.631863, 0.312661, 0.709220,
		34.263771, 34.533756, 22.709776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606091, 35.054405, 22.406326>,  <33.821465, 34.314892, 22.213322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606091, 35.054405, 22.406326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978577, 35.019806, 22.547947>,  <34.202068, 34.999046, 22.632919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978577, 35.019806, 22.547947>,  <33.606091, 35.054405, 22.406326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978577, 35.019806, 22.547947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283536, 0.782298, -0.554632,
		-0.229001, 0.616870, 0.753014,
		0.931217, -0.086496, 0.354052,
		34.257942, 34.993858, 22.654163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763336, 35.749931, 22.597500>,  <33.606091, 35.054405, 22.406326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763336, 35.749931, 22.597500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095062, 35.534607, 22.537556>,  <34.294098, 35.405411, 22.501589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095062, 35.534607, 22.537556>,  <33.763336, 35.749931, 22.597500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095062, 35.534607, 22.537556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407296, 0.765947, -0.497428,
		0.382555, 0.351487, 0.854464,
		0.829314, -0.538314, -0.149858,
		34.343857, 35.373112, 22.492598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433128, 36.112610, 22.912209>,  <33.763336, 35.749931, 22.597500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433128, 36.112610, 22.912209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573242, 35.867805, 22.628590>,  <34.657310, 35.720924, 22.458418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573242, 35.867805, 22.628590>,  <34.433128, 36.112610, 22.912209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573242, 35.867805, 22.628590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668068, 0.693838, -0.268836,
		0.656492, -0.379520, 0.651906,
		0.350289, -0.612007, -0.709045,
		34.678329, 35.684204, 22.415876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056393, 36.155785, 23.580271>,  <34.433128, 36.112610, 22.912209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056393, 36.155785, 23.580271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832710, 36.436337, 23.757069>,  <33.698502, 36.604668, 23.863148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832710, 36.436337, 23.757069>,  <34.056393, 36.155785, 23.580271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832710, 36.436337, 23.757069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234525, -0.377531, 0.895806,
		0.795165, 0.604597, 0.046626,
		-0.559205, 0.701379, 0.441993,
		33.664948, 36.646751, 23.889666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329144, 36.129883, 24.181160>,  <34.056393, 36.155785, 23.580271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329144, 36.129883, 24.181160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997082, 36.340366, 24.254852>,  <33.797844, 36.466656, 24.299067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997082, 36.340366, 24.254852>,  <34.329144, 36.129883, 24.181160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997082, 36.340366, 24.254852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012541, -0.347977, 0.937419,
		0.557389, 0.775895, 0.295475,
		-0.830157, 0.526212, 0.184229,
		33.748035, 36.498230, 24.310122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341846, 36.470207, 24.867245>,  <34.329144, 36.129883, 24.181160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341846, 36.470207, 24.867245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967731, 36.387028, 24.752708>,  <33.743263, 36.337120, 24.683987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967731, 36.387028, 24.752708>,  <34.341846, 36.470207, 24.867245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967731, 36.387028, 24.752708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143119, -0.517744, 0.843480,
		-0.323656, 0.829877, 0.454478,
		-0.935288, -0.207953, -0.286342,
		33.687145, 36.324642, 24.666805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988853, 36.753452, 25.405640>,  <34.341846, 36.470207, 24.867245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988853, 36.753452, 25.405640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744164, 36.497211, 25.219986>,  <33.597351, 36.343468, 25.108593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744164, 36.497211, 25.219986>,  <33.988853, 36.753452, 25.405640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744164, 36.497211, 25.219986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216017, -0.429149, 0.877022,
		-0.761006, 0.636757, 0.124140,
		-0.611725, -0.640602, -0.464135,
		33.560646, 36.305031, 25.080746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452858, 36.626549, 25.982590>,  <33.988853, 36.753452, 25.405640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452858, 36.626549, 25.982590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391922, 36.344696, 25.705379>,  <33.355358, 36.175583, 25.539053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391922, 36.344696, 25.705379>,  <33.452858, 36.626549, 25.982590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391922, 36.344696, 25.705379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339735, -0.621144, 0.706229,
		-0.928101, 0.343035, -0.144760,
		-0.152344, -0.704632, -0.693026,
		33.346218, 36.133305, 25.497471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691597, 36.369598, 26.059624>,  <33.452858, 36.626549, 25.982590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691597, 36.369598, 26.059624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924736, 36.097504, 25.881828>,  <33.064617, 35.934246, 25.775152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924736, 36.097504, 25.881828>,  <32.691597, 36.369598, 26.059624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924736, 36.097504, 25.881828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138941, -0.622375, 0.770289,
		-0.800619, -0.387199, -0.457260,
		0.582843, -0.680240, -0.444488,
		33.099590, 35.893433, 25.748482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286869, 35.796772, 25.957020>,  <32.691597, 36.369598, 26.059624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286869, 35.796772, 25.957020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648613, 35.629475, 25.923058>,  <32.865658, 35.529095, 25.902679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648613, 35.629475, 25.923058>,  <32.286869, 35.796772, 25.957020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648613, 35.629475, 25.923058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225659, -0.637488, 0.736673,
		-0.362234, -0.647057, -0.670898,
		0.904359, -0.418242, -0.084905,
		32.919922, 35.504002, 25.897585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205315, 35.160755, 25.851261>,  <32.286869, 35.796772, 25.957020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205315, 35.160755, 25.851261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572186, 35.187141, 26.008453>,  <32.792309, 35.202972, 26.102768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572186, 35.187141, 26.008453>,  <32.205315, 35.160755, 25.851261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572186, 35.187141, 26.008453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175466, -0.818584, 0.546930,
		0.357767, -0.570586, -0.739212,
		0.917177, 0.065967, 0.392981,
		32.847340, 35.206932, 26.126348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309139, 34.487549, 26.014540>,  <32.205315, 35.160755, 25.851261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309139, 34.487549, 26.014540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587906, 34.701694, 26.205406>,  <32.755165, 34.830181, 26.319927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587906, 34.701694, 26.205406>,  <32.309139, 34.487549, 26.014540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587906, 34.701694, 26.205406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111293, -0.576567, 0.809435,
		0.708464, -0.617214, -0.342236,
		0.696917, 0.535367, 0.477169,
		32.796982, 34.862305, 26.348557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724236, 33.990032, 26.287535>,  <32.309139, 34.487549, 26.014540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724236, 33.990032, 26.287535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798958, 34.307167, 26.519573>,  <32.843792, 34.497448, 26.658796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798958, 34.307167, 26.519573>,  <32.724236, 33.990032, 26.287535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798958, 34.307167, 26.519573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177893, -0.553429, 0.813677,
		0.966157, -0.255193, 0.037658,
		0.186803, 0.792839, 0.580096,
		32.855000, 34.545017, 26.693602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977451, 33.723831, 26.838909>,  <32.724236, 33.990032, 26.287535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977451, 33.723831, 26.838909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912048, 34.083485, 27.001301>,  <32.872807, 34.299278, 27.098736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912048, 34.083485, 27.001301>,  <32.977451, 33.723831, 26.838909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912048, 34.083485, 27.001301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335456, -0.437668, 0.834216,
		0.927758, 0.000211, 0.373182,
		-0.163506, 0.899137, 0.405979,
		32.862995, 34.353226, 27.123095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214428, 33.736736, 27.586260>,  <32.977451, 33.723831, 26.838909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214428, 33.736736, 27.586260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932034, 34.017643, 27.549591>,  <32.762596, 34.186188, 27.527590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932034, 34.017643, 27.549591>,  <33.214428, 33.736736, 27.586260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932034, 34.017643, 27.549591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512447, -0.417184, 0.750570,
		0.488858, 0.576869, 0.654401,
		-0.705986, 0.702268, -0.091671,
		32.720238, 34.228325, 27.522089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154694, 34.065224, 28.309124>,  <33.214428, 33.736736, 27.586260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154694, 34.065224, 28.309124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816940, 34.121281, 28.102287>,  <32.614288, 34.154915, 27.978186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816940, 34.121281, 28.102287>,  <33.154694, 34.065224, 28.309124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816940, 34.121281, 28.102287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520573, -0.442688, 0.730089,
		-0.126594, 0.885656, 0.446751,
		-0.844380, 0.140142, -0.517091,
		32.563625, 34.163322, 27.947161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698631, 34.209824, 28.798912>,  <33.154694, 34.065224, 28.309124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698631, 34.209824, 28.798912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437748, 34.114216, 28.511162>,  <32.281219, 34.056850, 28.338512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437748, 34.114216, 28.511162>,  <32.698631, 34.209824, 28.798912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437748, 34.114216, 28.511162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604215, -0.409169, 0.683744,
		-0.457771, 0.880598, 0.122445,
		-0.652204, -0.239015, -0.719376,
		32.242088, 34.042511, 28.295349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990948, 34.180794, 29.133551>,  <32.698631, 34.209824, 28.798912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990948, 34.180794, 29.133551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940775, 33.962666, 28.802036>,  <31.910671, 33.831787, 28.603127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940775, 33.962666, 28.802036>,  <31.990948, 34.180794, 29.133551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940775, 33.962666, 28.802036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664773, -0.573909, 0.478230,
		-0.736439, 0.610942, -0.290529,
		-0.125434, -0.545324, -0.828787,
		31.903145, 33.799068, 28.553400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264393, 34.015720, 29.126631>,  <31.990948, 34.180794, 29.133551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264393, 34.015720, 29.126631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448656, 33.777184, 28.863670>,  <31.559214, 33.634064, 28.705894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448656, 33.777184, 28.863670>,  <31.264393, 34.015720, 29.126631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448656, 33.777184, 28.863670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532669, -0.778202, 0.332664,
		-0.709971, 0.196934, -0.676134,
		0.460656, -0.596338, -0.657402,
		31.586853, 33.598282, 28.666451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739592, 33.603077, 28.988934>,  <31.264393, 34.015720, 29.126631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739592, 33.603077, 28.988934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050106, 33.384167, 28.863796>,  <31.236416, 33.252823, 28.788713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050106, 33.384167, 28.863796>,  <30.739592, 33.603077, 28.988934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050106, 33.384167, 28.863796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435095, -0.824275, 0.362302,
		-0.456147, -0.145134, -0.877990,
		0.776287, -0.547272, -0.312843,
		31.282993, 33.219986, 28.769943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444109, 33.021389, 28.580898>,  <30.739592, 33.603077, 28.988934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444109, 33.021389, 28.580898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806190, 32.912563, 28.711491>,  <31.023439, 32.847267, 28.789846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806190, 32.912563, 28.711491>,  <30.444109, 33.021389, 28.580898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806190, 32.912563, 28.711491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394761, -0.822800, 0.408858,
		0.157391, -0.498980, -0.852201,
		0.905203, -0.272065, 0.326479,
		31.077751, 32.830944, 28.809435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470821, 32.296368, 28.549080>,  <30.444109, 33.021389, 28.580898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470821, 32.296368, 28.549080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765417, 32.387363, 28.803902>,  <30.942175, 32.441959, 28.956795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765417, 32.387363, 28.803902>,  <30.470821, 32.296368, 28.549080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765417, 32.387363, 28.803902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318851, -0.713831, 0.623522,
		0.596590, -0.662341, -0.453194,
		0.736488, 0.227486, 0.637053,
		30.986364, 32.455608, 28.995018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761511, 31.575201, 28.757832>,  <30.470821, 32.296368, 28.549080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761511, 31.575201, 28.757832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858387, 31.853111, 29.028721>,  <30.916513, 32.019859, 29.191254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858387, 31.853111, 29.028721>,  <30.761511, 31.575201, 28.757832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858387, 31.853111, 29.028721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107744, -0.674426, 0.730439,
		0.964228, -0.249871, -0.088482,
		0.242190, 0.694776, 0.677223,
		30.931044, 32.061543, 29.231888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359518, 31.307968, 29.246918>,  <30.761511, 31.575201, 28.757832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359518, 31.307968, 29.246918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143736, 31.587353, 29.435020>,  <31.014267, 31.754984, 29.547882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143736, 31.587353, 29.435020>,  <31.359518, 31.307968, 29.246918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143736, 31.587353, 29.435020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065354, -0.591535, 0.803626,
		0.839475, 0.402786, 0.364753,
		-0.539454, 0.698462, 0.470256,
		30.981899, 31.796892, 29.576097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635187, 31.336254, 29.945398>,  <31.359518, 31.307968, 29.246918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635187, 31.336254, 29.945398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284281, 31.523754, 29.986729>,  <31.073736, 31.636253, 30.011526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284281, 31.523754, 29.986729>,  <31.635187, 31.336254, 29.945398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284281, 31.523754, 29.986729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125037, -0.430992, 0.893651,
		0.463431, 0.771051, 0.436706,
		-0.877267, 0.468750, 0.103325,
		31.021101, 31.664379, 30.017727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603542, 31.475391, 30.628138>,  <31.635187, 31.336254, 29.945398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603542, 31.475391, 30.628138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223225, 31.533092, 30.518463>,  <30.995033, 31.567713, 30.452658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223225, 31.533092, 30.518463>,  <31.603542, 31.475391, 30.628138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223225, 31.533092, 30.518463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308440, -0.357306, 0.881588,
		0.029204, 0.922780, 0.384219,
		-0.950796, 0.144255, -0.274187,
		30.937986, 31.576368, 30.436207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295519, 31.842949, 31.115950>,  <31.603542, 31.475391, 30.628138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295519, 31.842949, 31.115950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981674, 31.669781, 30.938427>,  <30.793367, 31.565880, 30.831913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981674, 31.669781, 30.938427>,  <31.295519, 31.842949, 31.115950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981674, 31.669781, 30.938427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370053, -0.247327, 0.895483,
		-0.497437, 0.866839, 0.033853,
		-0.784612, -0.432919, -0.443806,
		30.746290, 31.539906, 30.805285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823034, 31.898968, 31.654041>,  <31.295519, 31.842949, 31.115950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823034, 31.898968, 31.654041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679531, 31.627663, 31.397526>,  <30.593430, 31.464880, 31.243616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679531, 31.627663, 31.397526>,  <30.823034, 31.898968, 31.654041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679531, 31.627663, 31.397526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306119, -0.563535, 0.767280,
		-0.881806, 0.471580, -0.005455,
		-0.358760, -0.678263, -0.641289,
		30.571903, 31.424185, 31.205139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291277, 31.555727, 32.087353>,  <30.823034, 31.898968, 31.654041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291277, 31.555727, 32.087353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285835, 31.317539, 31.766048>,  <30.282570, 31.174627, 31.573265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285835, 31.317539, 31.766048>,  <30.291277, 31.555727, 32.087353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285835, 31.317539, 31.766048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185394, -0.787907, 0.587224,
		-0.982570, 0.156910, -0.099676,
		-0.013606, -0.595468, -0.803264,
		30.281754, 31.138899, 31.525070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547428, 31.262465, 32.003910>,  <30.291277, 31.555727, 32.087353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547428, 31.262465, 32.003910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826946, 31.024902, 31.844429>,  <29.994658, 30.882366, 31.748739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826946, 31.024902, 31.844429>,  <29.547428, 31.262465, 32.003910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826946, 31.024902, 31.844429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152345, -0.668153, 0.728260,
		-0.698915, -0.448160, -0.557378,
		0.698791, -0.593906, -0.398707,
		30.036585, 30.846731, 31.724817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282845, 30.621269, 32.059925>,  <29.547428, 31.262465, 32.003910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282845, 30.621269, 32.059925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673782, 30.568890, 31.993412>,  <29.908344, 30.537462, 31.953505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673782, 30.568890, 31.993412>,  <29.282845, 30.621269, 32.059925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673782, 30.568890, 31.993412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029860, -0.692465, 0.720834,
		-0.209535, -0.709468, -0.672867,
		0.977345, -0.130948, -0.166280,
		29.966986, 30.529606, 31.943527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132875, 30.401308, 31.321308>,  <29.282845, 30.621269, 32.059925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132875, 30.401308, 31.321308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766699, 30.303780, 31.193233>,  <28.546993, 30.245262, 31.116388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766699, 30.303780, 31.193233>,  <29.132875, 30.401308, 31.321308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766699, 30.303780, 31.193233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074477, 0.679212, -0.730154,
		0.395500, -0.692259, -0.603620,
		-0.915441, -0.243820, -0.320185,
		28.492065, 30.230633, 31.097178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189369, 30.436859, 30.576344>,  <29.132875, 30.401308, 31.321308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189369, 30.436859, 30.576344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801863, 30.448498, 30.674850>,  <28.569359, 30.455481, 30.733955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801863, 30.448498, 30.674850>,  <29.189369, 30.436859, 30.576344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801863, 30.448498, 30.674850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148765, 0.726361, -0.671021,
		-0.198402, -0.686698, -0.699344,
		-0.968765, 0.029094, 0.246268,
		28.511232, 30.457226, 30.748732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788937, 30.338530, 29.870773>,  <29.189369, 30.436859, 30.576344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788937, 30.338530, 29.870773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575844, 30.529320, 30.150398>,  <28.447989, 30.643795, 30.318172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575844, 30.529320, 30.150398>,  <28.788937, 30.338530, 29.870773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575844, 30.529320, 30.150398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265271, 0.690291, -0.673149,
		-0.803633, -0.544050, -0.241213,
		-0.532734, 0.476977, 0.699061,
		28.416023, 30.672413, 30.360117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144220, 30.517817, 29.529966>,  <28.788937, 30.338530, 29.870773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144220, 30.517817, 29.529966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147570, 30.757607, 29.850105>,  <28.149578, 30.901480, 30.042189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147570, 30.757607, 29.850105>,  <28.144220, 30.517817, 29.529966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147570, 30.757607, 29.850105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479781, 0.704643, -0.522771,
		-0.877348, -0.379616, 0.293515,
		0.008371, 0.599475, 0.800349,
		28.150082, 30.937449, 30.090210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607626, 30.976831, 29.298370>,  <28.144220, 30.517817, 29.529966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607626, 30.976831, 29.298370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788395, 31.170437, 29.598103>,  <27.896856, 31.286600, 29.777943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788395, 31.170437, 29.598103>,  <27.607626, 30.976831, 29.298370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788395, 31.170437, 29.598103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327532, 0.871364, -0.365305,
		-0.829753, -0.080340, 0.552319,
		0.451922, 0.484015, 0.749330,
		27.923971, 31.315641, 29.822901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
