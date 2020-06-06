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
	<24.474403, 35.451553, 34.927937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227444, 35.140171, 34.973244>,  <24.079268, 34.953342, 35.000427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227444, 35.140171, 34.973244>,  <24.474403, 35.451553, 34.927937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227444, 35.140171, 34.973244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579855, -0.547657, -0.603191,
		0.531588, -0.306731, 0.789513,
		-0.617400, -0.778452, 0.113268,
		24.042223, 34.906635, 35.007225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.667908, 35.001217, 34.434715>,  <24.474403, 35.451553, 34.927937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.667908, 35.001217, 34.434715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414717, 34.779499, 34.650898>,  <24.262802, 34.646469, 34.780605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414717, 34.779499, 34.650898>,  <24.667908, 35.001217, 34.434715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414717, 34.779499, 34.650898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209636, -0.794749, -0.569584,
		0.745244, -0.247237, 0.619262,
		-0.632980, -0.554299, 0.540453,
		24.224823, 34.613209, 34.813034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820887, 34.186924, 34.562019>,  <24.667908, 35.001217, 34.434715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820887, 34.186924, 34.562019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193354, 34.265621, 34.439236>,  <25.416834, 34.312840, 34.365566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193354, 34.265621, 34.439236>,  <24.820887, 34.186924, 34.562019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193354, 34.265621, 34.439236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093033, -0.942255, -0.321714,
		-0.352525, 0.271013, -0.895700,
		0.931167, 0.196742, -0.306955,
		25.472704, 34.324642, 34.347149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825218, 33.925373, 33.915409>,  <24.820887, 34.186924, 34.562019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825218, 33.925373, 33.915409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.202471, 33.933136, 34.048149>,  <25.428822, 33.937794, 34.127792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.202471, 33.933136, 34.048149>,  <24.825218, 33.925373, 33.915409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.202471, 33.933136, 34.048149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134467, -0.935251, -0.327452,
		0.304009, 0.353453, -0.884675,
		0.943132, 0.019412, 0.331852,
		25.485411, 33.938961, 34.147705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176659, 33.824814, 33.242245>,  <24.825218, 33.925373, 33.915409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176659, 33.824814, 33.242245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446772, 33.755840, 33.529091>,  <25.608839, 33.714455, 33.701199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446772, 33.755840, 33.529091>,  <25.176659, 33.824814, 33.242245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446772, 33.755840, 33.529091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414170, -0.715865, -0.562139,
		0.610293, 0.676611, -0.411994,
		0.675282, -0.172434, 0.717120,
		25.649357, 33.704109, 33.744228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779293, 33.689754, 32.882099>,  <25.176659, 33.824814, 33.242245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779293, 33.689754, 32.882099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806356, 33.523022, 33.244686>,  <25.822594, 33.422981, 33.462238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806356, 33.523022, 33.244686>,  <25.779293, 33.689754, 32.882099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806356, 33.523022, 33.244686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406221, -0.818320, -0.406615,
		0.911267, 0.395736, 0.113958,
		0.067658, -0.416827, 0.906464,
		25.826654, 33.397972, 33.516624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550688, 33.620663, 33.040897>,  <25.779293, 33.689754, 32.882099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550688, 33.620663, 33.040897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273775, 33.363392, 33.171783>,  <26.107628, 33.209030, 33.250313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273775, 33.363392, 33.171783>,  <26.550688, 33.620663, 33.040897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273775, 33.363392, 33.171783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379212, -0.710025, -0.593349,
		0.613956, -0.286683, 0.735439,
		-0.692283, -0.643177, 0.327211,
		26.066090, 33.170437, 33.269947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932201, 33.083687, 33.406517>,  <26.550688, 33.620663, 33.040897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932201, 33.083687, 33.406517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592983, 32.978645, 33.222404>,  <26.389452, 32.915619, 33.111935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592983, 32.978645, 33.222404>,  <26.932201, 33.083687, 33.406517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592983, 32.978645, 33.222404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515161, -0.612144, -0.599907,
		-0.124222, -0.745868, 0.654408,
		-0.848043, -0.262604, -0.460284,
		26.338570, 32.899864, 33.084320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930241, 32.315796, 33.201481>,  <26.932201, 33.083687, 33.406517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930241, 32.315796, 33.201481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650133, 32.469753, 32.960987>,  <26.482069, 32.562126, 32.816692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650133, 32.469753, 32.960987>,  <26.930241, 32.315796, 33.201481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650133, 32.469753, 32.960987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296959, -0.608826, -0.735626,
		-0.649185, -0.693676, 0.312044,
		-0.700267, 0.384894, -0.601235,
		26.440052, 32.585220, 32.780617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547522, 31.737669, 32.792763>,  <26.930241, 32.315796, 33.201481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547522, 31.737669, 32.792763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515024, 32.077969, 32.585060>,  <26.495525, 32.282150, 32.460438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515024, 32.077969, 32.585060>,  <26.547522, 31.737669, 32.792763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515024, 32.077969, 32.585060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479136, -0.423491, -0.768820,
		-0.873973, -0.311253, -0.373219,
		-0.081243, 0.850751, -0.519252,
		26.490652, 32.333195, 32.429283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338068, 31.595263, 32.101112>,  <26.547522, 31.737669, 32.792763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338068, 31.595263, 32.101112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504021, 31.957336, 32.064198>,  <26.603592, 32.174580, 32.042049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504021, 31.957336, 32.064198>,  <26.338068, 31.595263, 32.101112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504021, 31.957336, 32.064198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549570, -0.330134, -0.767453,
		-0.725152, 0.267684, -0.634429,
		0.414881, 0.905183, -0.092286,
		26.628485, 32.228893, 32.036510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383776, 31.723646, 31.388885>,  <26.338068, 31.595263, 32.101112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383776, 31.723646, 31.388885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679090, 31.921848, 31.571930>,  <26.856279, 32.040768, 31.681757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679090, 31.921848, 31.571930>,  <26.383776, 31.723646, 31.388885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679090, 31.921848, 31.571930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622623, -0.239770, -0.744883,
		-0.259371, 0.834857, -0.485531,
		0.738287, 0.495504, 0.457612,
		26.900576, 32.070499, 31.709213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638018, 32.346893, 31.066402>,  <26.383776, 31.723646, 31.388885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638018, 32.346893, 31.066402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944363, 32.173977, 31.256805>,  <27.128170, 32.070229, 31.371048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944363, 32.173977, 31.256805>,  <26.638018, 32.346893, 31.066402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944363, 32.173977, 31.256805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487753, -0.091816, -0.868140,
		0.418991, 0.897049, 0.140531,
		0.765861, -0.432287, 0.476009,
		27.174122, 32.044292, 31.399609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259033, 32.645733, 31.059202>,  <26.638018, 32.346893, 31.066402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259033, 32.645733, 31.059202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310553, 32.249474, 31.077206>,  <27.341465, 32.011719, 31.088007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310553, 32.249474, 31.077206>,  <27.259033, 32.645733, 31.059202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310553, 32.249474, 31.077206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598842, 0.041522, -0.799790,
		0.790442, 0.129966, 0.598590,
		0.128800, -0.990649, 0.045008,
		27.349194, 31.952278, 31.090708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954035, 32.468128, 31.351995>,  <27.259033, 32.645733, 31.059202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954035, 32.468128, 31.351995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805410, 32.217674, 31.077799>,  <27.716236, 32.067402, 30.913280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805410, 32.217674, 31.077799>,  <27.954035, 32.468128, 31.351995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805410, 32.217674, 31.077799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640185, 0.361947, -0.677611,
		0.672388, -0.690614, 0.266358,
		-0.371560, -0.626136, -0.685490,
		27.693943, 32.029835, 30.872152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745533, 32.790863, 32.042023>,  <27.954035, 32.468128, 31.351995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745533, 32.790863, 32.042023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400770, 32.660992, 31.886225>,  <27.193913, 32.583069, 31.792747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400770, 32.660992, 31.886225>,  <27.745533, 32.790863, 32.042023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400770, 32.660992, 31.886225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496594, 0.385148, 0.777853,
		-0.102541, 0.863855, -0.493195,
		-0.861905, -0.324679, -0.389491,
		27.142199, 32.563587, 31.769377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216351, 33.369106, 32.023060>,  <27.745533, 32.790863, 32.042023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216351, 33.369106, 32.023060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019871, 33.021759, 31.995737>,  <26.901983, 32.813351, 31.979343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019871, 33.021759, 31.995737>,  <27.216351, 33.369106, 32.023060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019871, 33.021759, 31.995737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631082, 0.300733, 0.715049,
		-0.600383, 0.394335, -0.695730,
		-0.491198, -0.868366, -0.068303,
		26.872511, 32.761250, 31.975246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475740, 33.542225, 31.950466>,  <27.216351, 33.369106, 32.023060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475740, 33.542225, 31.950466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487858, 33.162937, 32.076935>,  <26.495129, 32.935364, 32.152817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487858, 33.162937, 32.076935>,  <26.475740, 33.542225, 31.950466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487858, 33.162937, 32.076935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724880, 0.196950, 0.660121,
		-0.688209, -0.249186, -0.681378,
		0.030295, -0.948218, 0.316172,
		26.496946, 32.878471, 32.171787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844568, 33.247490, 31.890457>,  <26.475740, 33.542225, 31.950466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844568, 33.247490, 31.890457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009541, 33.013264, 32.169601>,  <26.108524, 32.872726, 32.337090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009541, 33.013264, 32.169601>,  <25.844568, 33.247490, 31.890457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009541, 33.013264, 32.169601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772329, 0.181504, 0.608740,
		-0.483124, -0.790042, -0.377393,
		0.412432, -0.585569, 0.697861,
		26.133270, 32.837593, 32.378960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397917, 32.785267, 32.233322>,  <25.844568, 33.247490, 31.890457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397917, 32.785267, 32.233322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676277, 32.837509, 32.515785>,  <25.843292, 32.868855, 32.685265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676277, 32.837509, 32.515785>,  <25.397917, 32.785267, 32.233322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676277, 32.837509, 32.515785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698362, 0.352257, 0.623061,
		-0.167374, -0.926745, 0.336348,
		0.695900, 0.130609, 0.706162,
		25.885048, 32.876694, 32.727634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418470, 32.168171, 32.813782>,  <25.397917, 32.785267, 32.233322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418470, 32.168171, 32.813782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738131, 32.200500, 33.052052>,  <25.929928, 32.219898, 33.195011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738131, 32.200500, 33.052052>,  <25.418470, 32.168171, 32.813782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738131, 32.200500, 33.052052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333498, 0.884051, 0.327464,
		-0.500135, -0.460348, 0.733447,
		0.799152, 0.080827, 0.595670,
		25.977877, 32.224747, 33.230751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223219, 32.362682, 33.473213>,  <25.418470, 32.168171, 32.813782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223219, 32.362682, 33.473213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611149, 32.459541, 33.484524>,  <25.843906, 32.517658, 33.491310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611149, 32.459541, 33.484524>,  <25.223219, 32.362682, 33.473213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611149, 32.459541, 33.484524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226209, 0.850553, 0.474752,
		0.090912, -0.466823, 0.879665,
		0.969827, 0.242149, 0.028274,
		25.902098, 32.532185, 33.493008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248392, 32.681828, 34.085155>,  <25.223219, 32.362682, 33.473213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248392, 32.681828, 34.085155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587179, 32.779659, 33.896339>,  <25.790451, 32.838360, 33.783051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587179, 32.779659, 33.896339>,  <25.248392, 32.681828, 34.085155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587179, 32.779659, 33.896339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042690, 0.853736, 0.518952,
		0.529925, -0.459688, 0.712647,
		0.846969, 0.244583, -0.472041,
		25.841270, 32.853035, 33.754726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883625, 32.825333, 34.580353>,  <25.248392, 32.681828, 34.085155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883625, 32.825333, 34.580353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947891, 33.040951, 34.249626>,  <25.986450, 33.170322, 34.051189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947891, 33.040951, 34.249626>,  <25.883625, 32.825333, 34.580353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947891, 33.040951, 34.249626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020935, 0.839368, 0.543160,
		0.986787, -0.069957, 0.146141,
		0.160664, 0.539043, -0.826813,
		25.996090, 33.202663, 34.001583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371771, 33.357529, 34.769650>,  <25.883625, 32.825333, 34.580353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371771, 33.357529, 34.769650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173296, 33.491215, 34.449127>,  <26.054211, 33.571426, 34.256813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173296, 33.491215, 34.449127>,  <26.371771, 33.357529, 34.769650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173296, 33.491215, 34.449127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139619, 0.880210, 0.453582,
		0.856915, 0.336940, -0.390088,
		-0.496189, 0.334217, -0.801308,
		26.024439, 33.591480, 34.208736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754023, 33.967655, 34.627838>,  <26.371771, 33.357529, 34.769650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754023, 33.967655, 34.627838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393574, 33.982693, 34.455063>,  <26.177305, 33.991714, 34.351398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393574, 33.982693, 34.455063>,  <26.754023, 33.967655, 34.627838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393574, 33.982693, 34.455063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103033, 0.949129, 0.297555,
		0.421150, 0.312636, -0.851406,
		-0.901120, 0.037592, -0.431937,
		26.123238, 33.993969, 34.325481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697443, 34.499073, 34.087326>,  <26.754023, 33.967655, 34.627838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697443, 34.499073, 34.087326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329002, 34.435535, 34.229504>,  <26.107939, 34.397411, 34.314812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329002, 34.435535, 34.229504>,  <26.697443, 34.499073, 34.087326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329002, 34.435535, 34.229504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125399, 0.985373, 0.115395,
		-0.368575, 0.061718, -0.927547,
		-0.921101, -0.158845, 0.355445,
		26.052671, 34.387882, 34.336136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549276, 35.133648, 33.833855>,  <26.697443, 34.499073, 34.087326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549276, 35.133648, 33.833855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357498, 35.366802, 34.096268>,  <26.242432, 35.506695, 34.253716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357498, 35.366802, 34.096268>,  <26.549276, 35.133648, 33.833855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357498, 35.366802, 34.096268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321183, 0.579140, -0.749292,
		-0.816684, -0.569952, -0.090455,
		-0.479446, 0.582882, 0.656034,
		26.213665, 35.541668, 34.293079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896446, 35.334145, 33.567253>,  <26.549276, 35.133648, 33.833855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896446, 35.334145, 33.567253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959885, 35.613811, 33.846111>,  <25.997948, 35.781612, 34.013428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959885, 35.613811, 33.846111>,  <25.896446, 35.334145, 33.567253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959885, 35.613811, 33.846111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232031, 0.712699, -0.661984,
		-0.959692, -0.056771, 0.275259,
		0.158595, 0.699169, 0.697144,
		26.007463, 35.823563, 34.055256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270071, 35.744240, 33.674065>,  <25.896446, 35.334145, 33.567253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270071, 35.744240, 33.674065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598118, 35.961216, 33.746918>,  <25.794945, 36.091400, 33.790630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598118, 35.961216, 33.746918>,  <25.270071, 35.744240, 33.674065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598118, 35.961216, 33.746918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332716, 0.711035, -0.619459,
		-0.465523, 0.447429, 0.763608,
		0.820115, 0.542436, 0.182136,
		25.844152, 36.123947, 33.801559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102213, 36.375484, 33.449532>,  <25.270071, 35.744240, 33.674065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102213, 36.375484, 33.449532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500067, 36.416744, 33.446354>,  <25.738779, 36.441502, 33.444447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500067, 36.416744, 33.446354>,  <25.102213, 36.375484, 33.449532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500067, 36.416744, 33.446354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091982, 0.846544, -0.524311,
		-0.047354, 0.522229, 0.851490,
		0.994634, 0.103150, -0.007948,
		25.798456, 36.447689, 33.443970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222939, 37.139893, 33.621334>,  <25.102213, 36.375484, 33.449532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222939, 37.139893, 33.621334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539742, 37.014050, 33.412052>,  <25.729824, 36.938545, 33.286484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539742, 37.014050, 33.412052>,  <25.222939, 37.139893, 33.621334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539742, 37.014050, 33.412052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124232, 0.756016, -0.642656,
		0.597737, 0.573988, 0.559686,
		0.792008, -0.314608, -0.523206,
		25.777344, 36.919666, 33.255089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657722, 37.660374, 33.671436>,  <25.222939, 37.139893, 33.621334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657722, 37.660374, 33.671436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835836, 37.466816, 33.370087>,  <25.942705, 37.350681, 33.189278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835836, 37.466816, 33.370087>,  <25.657722, 37.660374, 33.671436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835836, 37.466816, 33.370087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088877, 0.861122, -0.500569,
		0.890967, 0.155938, 0.426452,
		0.445285, -0.483893, -0.753372,
		25.969421, 37.321648, 33.144073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236961, 38.052727, 33.539497>,  <25.657722, 37.660374, 33.671436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236961, 38.052727, 33.539497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150799, 37.849030, 33.206207>,  <26.099102, 37.726810, 33.006233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150799, 37.849030, 33.206207>,  <26.236961, 38.052727, 33.539497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150799, 37.849030, 33.206207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187600, 0.815785, -0.547086,
		0.958335, -0.274160, -0.080191,
		-0.215407, -0.509247, -0.833227,
		26.086176, 37.696255, 32.956238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807529, 37.936810, 32.912754>,  <26.236961, 38.052727, 33.539497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807529, 37.936810, 32.912754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735130, 37.659077, 32.634144>,  <26.691690, 37.492435, 32.466980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735130, 37.659077, 32.634144>,  <26.807529, 37.936810, 32.912754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735130, 37.659077, 32.634144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008199, 0.709260, -0.704899,
		0.983449, -0.121874, -0.134067,
		-0.180997, -0.694332, -0.696522,
		26.680832, 37.450779, 32.425186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158773, 38.112988, 32.264580>,  <26.807529, 37.936810, 32.912754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158773, 38.112988, 32.264580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829454, 37.901012, 32.183247>,  <26.631863, 37.773827, 32.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829454, 37.901012, 32.183247>,  <27.158773, 38.112988, 32.264580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829454, 37.901012, 32.183247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378574, 0.779576, -0.498942,
		0.422920, -0.333803, -0.842446,
		-0.823299, -0.529940, -0.203329,
		26.582464, 37.742031, 32.122250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109665, 38.147892, 31.521797>,  <27.158773, 38.112988, 32.264580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109665, 38.147892, 31.521797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761435, 38.144386, 31.718580>,  <26.552496, 38.142281, 31.836649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761435, 38.144386, 31.718580>,  <27.109665, 38.147892, 31.521797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761435, 38.144386, 31.718580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289194, 0.818029, -0.497187,
		-0.398076, -0.575110, -0.714692,
		-0.870576, -0.008766, 0.491956,
		26.500261, 38.141758, 31.866167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614244, 38.227982, 30.978640>,  <27.109665, 38.147892, 31.521797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614244, 38.227982, 30.978640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446451, 38.338730, 31.324444>,  <26.345776, 38.405178, 31.531925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446451, 38.338730, 31.324444>,  <26.614244, 38.227982, 30.978640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446451, 38.338730, 31.324444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348260, 0.830392, -0.434931,
		-0.838302, -0.483519, -0.251910,
		-0.419482, 0.276873, 0.864509,
		26.320606, 38.421791, 31.583797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844383, 38.423721, 30.971542>,  <26.614244, 38.227982, 30.978640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844383, 38.423721, 30.971542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063658, 38.611626, 31.248327>,  <26.195223, 38.724369, 31.414398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063658, 38.611626, 31.248327>,  <25.844383, 38.423721, 30.971542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063658, 38.611626, 31.248327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258960, 0.882034, -0.393645,
		-0.795255, 0.036600, 0.605169,
		0.548187, 0.469763, 0.691964,
		26.228113, 38.752556, 31.455917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506733, 38.923779, 31.339951>,  <25.844383, 38.423721, 30.971542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506733, 38.923779, 31.339951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888617, 39.040760, 31.318031>,  <26.117746, 39.110950, 31.304880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888617, 39.040760, 31.318031>,  <25.506733, 38.923779, 31.339951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888617, 39.040760, 31.318031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284000, 0.840724, -0.461006,
		-0.088752, 0.455689, 0.885703,
		0.954708, 0.292455, -0.054800,
		26.175030, 39.128498, 31.301592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594969, 39.593647, 31.675919>,  <25.506733, 38.923779, 31.339951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594969, 39.593647, 31.675919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856590, 39.526497, 31.380884>,  <26.013563, 39.486206, 31.203863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856590, 39.526497, 31.380884>,  <25.594969, 39.593647, 31.675919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856590, 39.526497, 31.380884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323807, 0.819081, -0.473556,
		0.683640, 0.548567, 0.481364,
		0.654053, -0.167872, -0.737586,
		26.052807, 39.476135, 31.159609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629950, 39.600269, 32.534092>,  <25.594969, 39.593647, 31.675919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629950, 39.600269, 32.534092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320492, 39.804348, 32.383797>,  <25.134817, 39.926796, 32.293621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320492, 39.804348, 32.383797>,  <25.629950, 39.600269, 32.534092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320492, 39.804348, 32.383797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366550, -0.123332, -0.922188,
		-0.516835, -0.851171, -0.091597,
		-0.773642, 0.510194, -0.375739,
		25.088400, 39.957405, 32.271076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373667, 39.305950, 32.437046>,  <25.629950, 39.600269, 32.534092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373667, 39.305950, 32.437046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191753, 39.106350, 32.141975>,  <26.082605, 38.986588, 31.964933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191753, 39.106350, 32.141975>,  <26.373667, 39.305950, 32.437046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191753, 39.106350, 32.141975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152287, -0.859664, 0.487634,
		-0.877486, 0.109428, 0.466951,
		-0.454782, -0.499002, -0.737679,
		26.055319, 38.956650, 31.920671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890541, 38.810284, 32.756905>,  <26.373667, 39.305950, 32.437046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890541, 38.810284, 32.756905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984493, 38.676014, 32.392014>,  <26.040865, 38.595451, 32.173080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984493, 38.676014, 32.392014>,  <25.890541, 38.810284, 32.756905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984493, 38.676014, 32.392014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184788, -0.905944, 0.380943,
		-0.954298, -0.258045, -0.150761,
		0.234882, -0.335674, -0.912224,
		26.054958, 38.575314, 32.118347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393002, 38.157768, 32.454578>,  <25.890541, 38.810284, 32.756905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393002, 38.157768, 32.454578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763493, 38.151512, 32.303925>,  <25.985788, 38.147758, 32.213531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763493, 38.151512, 32.303925>,  <25.393002, 38.157768, 32.454578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763493, 38.151512, 32.303925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108758, -0.945567, 0.306715,
		-0.360932, -0.325051, -0.874111,
		0.926229, -0.015636, -0.376638,
		26.041361, 38.146820, 32.190933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459492, 37.654278, 31.906124>,  <25.393002, 38.157768, 32.454578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459492, 37.654278, 31.906124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781422, 37.723934, 32.133080>,  <25.974581, 37.765728, 32.269253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781422, 37.723934, 32.133080>,  <25.459492, 37.654278, 31.906124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781422, 37.723934, 32.133080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131956, -0.879560, 0.457123,
		0.578655, -0.442775, -0.684915,
		0.804827, 0.174138, 0.567388,
		26.022869, 37.776176, 32.303295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912384, 37.068489, 31.823252>,  <25.459492, 37.654278, 31.906124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912384, 37.068489, 31.823252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984140, 37.239033, 32.177887>,  <26.027193, 37.341358, 32.390667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984140, 37.239033, 32.177887>,  <25.912384, 37.068489, 31.823252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984140, 37.239033, 32.177887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071936, -0.893108, 0.444053,
		0.981145, -0.143436, -0.129543,
		0.179389, 0.426361, 0.886586,
		26.037956, 37.366940, 32.443863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401850, 36.668747, 32.103432>,  <25.912384, 37.068489, 31.823252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401850, 36.668747, 32.103432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247211, 36.860180, 32.418774>,  <26.154428, 36.975040, 32.607979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247211, 36.860180, 32.418774>,  <26.401850, 36.668747, 32.103432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247211, 36.860180, 32.418774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110773, -0.824534, 0.554863,
		0.915572, 0.301837, 0.265748,
		-0.386597, 0.478580, 0.788356,
		26.131233, 37.003754, 32.655281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826616, 36.522327, 32.622021>,  <26.401850, 36.668747, 32.103432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826616, 36.522327, 32.622021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486036, 36.626839, 32.803909>,  <26.281689, 36.689545, 32.913044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486036, 36.626839, 32.803909>,  <26.826616, 36.522327, 32.622021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486036, 36.626839, 32.803909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066436, -0.806342, 0.587707,
		0.520213, 0.530612, 0.669200,
		-0.851448, 0.261274, 0.454721,
		26.230602, 36.705219, 32.940327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875731, 36.798389, 33.310753>,  <26.826616, 36.522327, 32.622021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875731, 36.798389, 33.310753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590471, 36.534153, 33.216911>,  <26.419315, 36.375610, 33.160606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590471, 36.534153, 33.216911>,  <26.875731, 36.798389, 33.310753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590471, 36.534153, 33.216911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423691, -0.672789, 0.606499,
		-0.558487, 0.333124, 0.759685,
		-0.713147, -0.660593, -0.234602,
		26.376528, 36.335976, 33.146530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456278, 37.204269, 33.599136>,  <26.875731, 36.798389, 33.310753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456278, 37.204269, 33.599136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307299, 37.003010, 33.911064>,  <27.217911, 36.882256, 34.098221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307299, 37.003010, 33.911064>,  <27.456278, 37.204269, 33.599136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307299, 37.003010, 33.911064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652802, 0.455220, 0.605495,
		-0.659646, 0.734585, 0.158912,
		-0.372448, -0.503150, 0.779822,
		27.195564, 36.852066, 34.145012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157419, 37.568230, 34.186108>,  <27.456278, 37.204269, 33.599136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157419, 37.568230, 34.186108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354656, 37.231155, 34.272587>,  <27.473000, 37.028912, 34.324474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354656, 37.231155, 34.272587>,  <27.157419, 37.568230, 34.186108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354656, 37.231155, 34.272587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724429, 0.535324, 0.434316,
		-0.481726, -0.057541, 0.874431,
		0.493095, -0.842685, 0.216195,
		27.502584, 36.978352, 34.337444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544844, 37.636616, 34.830555>,  <27.157419, 37.568230, 34.186108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544844, 37.636616, 34.830555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741163, 37.367844, 34.608700>,  <27.858955, 37.206581, 34.475586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741163, 37.367844, 34.608700>,  <27.544844, 37.636616, 34.830555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741163, 37.367844, 34.608700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868186, 0.430708, 0.246464,
		0.073279, -0.602491, 0.794754,
		0.490800, -0.671934, -0.554636,
		27.888403, 37.166264, 34.442310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930664, 37.200539, 35.310146>,  <27.544844, 37.636616, 34.830555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930664, 37.200539, 35.310146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111073, 37.241074, 34.955452>,  <28.219318, 37.265396, 34.742634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111073, 37.241074, 34.955452>,  <27.930664, 37.200539, 35.310146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111073, 37.241074, 34.955452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728914, 0.531508, 0.431490,
		0.515036, -0.840970, 0.165856,
		0.451024, 0.101339, -0.886740,
		28.246380, 37.271477, 34.689430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240057, 37.450752, 35.862785>,  <27.930664, 37.200539, 35.310146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240057, 37.450752, 35.862785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867210, 37.328480, 35.785095>,  <27.643503, 37.255116, 35.738483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867210, 37.328480, 35.785095>,  <28.240057, 37.450752, 35.862785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867210, 37.328480, 35.785095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157130, -0.824519, 0.543579,
		-0.326300, 0.476160, 0.816578,
		-0.932115, -0.305679, -0.194221,
		27.587576, 37.236774, 35.726830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710648, 37.328312, 36.341141>,  <28.240057, 37.450752, 35.862785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710648, 37.328312, 36.341141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685240, 37.030220, 36.075630>,  <27.669994, 36.851364, 35.916325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685240, 37.030220, 36.075630>,  <27.710648, 37.328312, 36.341141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685240, 37.030220, 36.075630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309140, -0.647097, 0.696920,
		-0.948893, -0.160930, 0.271485,
		-0.063522, -0.745230, -0.663776,
		27.666183, 36.806652, 35.876499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193026, 36.781063, 36.618614>,  <27.710648, 37.328312, 36.341141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193026, 36.781063, 36.618614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505066, 36.702995, 36.380840>,  <27.692289, 36.656155, 36.238174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505066, 36.702995, 36.380840>,  <27.193026, 36.781063, 36.618614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505066, 36.702995, 36.380840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451089, -0.482920, 0.750538,
		-0.433546, -0.853638, -0.288687,
		0.780100, -0.195169, -0.594435,
		27.739096, 36.644444, 36.202511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480072, 36.034431, 36.757301>,  <27.193026, 36.781063, 36.618614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480072, 36.034431, 36.757301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772402, 36.270596, 36.620300>,  <27.947800, 36.412296, 36.538101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772402, 36.270596, 36.620300>,  <27.480072, 36.034431, 36.757301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772402, 36.270596, 36.620300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595804, -0.306969, 0.742151,
		0.333037, -0.746447, -0.576110,
		0.730824, 0.590412, -0.342504,
		27.991650, 36.447720, 36.517548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921263, 35.577564, 36.639881>,  <27.480072, 36.034431, 36.757301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921263, 35.577564, 36.639881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060289, 35.936256, 36.749474>,  <28.143705, 36.151474, 36.815228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060289, 35.936256, 36.749474>,  <27.921263, 35.577564, 36.639881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060289, 35.936256, 36.749474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409797, -0.408089, 0.815800,
		0.843365, -0.171268, -0.509317,
		0.347567, 0.896733, 0.273983,
		28.164560, 36.205276, 36.831669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675653, 35.510128, 36.730080>,  <27.921263, 35.577564, 36.639881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675653, 35.510128, 36.730080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523952, 35.791481, 36.970554>,  <28.432932, 35.960293, 37.114838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523952, 35.791481, 36.970554>,  <28.675653, 35.510128, 36.730080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523952, 35.791481, 36.970554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351225, -0.491667, 0.796809,
		0.856042, 0.513344, -0.060578,
		-0.379253, 0.703379, 0.601187,
		28.410177, 36.002495, 37.150909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309755, 35.419155, 37.187092>,  <28.675653, 35.510128, 36.730080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309755, 35.419155, 37.187092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561277, 35.436577, 37.497627>,  <29.712191, 35.447029, 37.683949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561277, 35.436577, 37.497627>,  <29.309755, 35.419155, 37.187092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561277, 35.436577, 37.497627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051081, -0.998587, 0.014650,
		0.775882, 0.030444, -0.630143,
		0.628806, 0.043555, 0.776341,
		29.749920, 35.449642, 37.730530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787289, 35.690792, 36.673126>,  <29.309755, 35.419155, 37.187092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787289, 35.690792, 36.673126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149757, 35.814911, 36.788067>,  <30.367239, 35.889381, 36.857033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149757, 35.814911, 36.788067>,  <29.787289, 35.690792, 36.673126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149757, 35.814911, 36.788067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408597, -0.467061, -0.784157,
		-0.109107, 0.827993, -0.550022,
		0.906170, 0.310294, 0.287356,
		30.421608, 35.908001, 36.874275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115719, 35.908962, 36.075924>,  <29.787289, 35.690792, 36.673126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115719, 35.908962, 36.075924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393087, 35.818741, 36.349651>,  <30.559507, 35.764606, 36.513889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393087, 35.818741, 36.349651>,  <30.115719, 35.908962, 36.075924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393087, 35.818741, 36.349651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565551, -0.418095, -0.710879,
		0.446454, 0.879955, -0.162352,
		0.693420, -0.225556, 0.684319,
		30.601114, 35.751076, 36.554947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873711, 36.125458, 35.848080>,  <30.115719, 35.908962, 36.075924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873711, 36.125458, 35.848080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829714, 35.794933, 36.069027>,  <30.803316, 35.596619, 36.201595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829714, 35.794933, 36.069027>,  <30.873711, 36.125458, 35.848080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829714, 35.794933, 36.069027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367003, -0.550235, -0.750034,
		0.923694, 0.120223, 0.363780,
		-0.109993, -0.826310, 0.552370,
		30.796717, 35.547039, 36.234737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533447, 35.635666, 35.946766>,  <30.873711, 36.125458, 35.848080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533447, 35.635666, 35.946766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179930, 35.448650, 35.939632>,  <30.967819, 35.336441, 35.935352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179930, 35.448650, 35.939632>,  <31.533447, 35.635666, 35.946766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179930, 35.448650, 35.939632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309966, -0.556533, -0.770839,
		0.350471, -0.686790, 0.636781,
		-0.883794, -0.467537, -0.017833,
		30.914791, 35.308388, 35.934284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737476, 34.892113, 36.126343>,  <31.533447, 35.635666, 35.946766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737476, 34.892113, 36.126343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407837, 34.960186, 35.910233>,  <31.210052, 35.001030, 35.780567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407837, 34.960186, 35.910233>,  <31.737476, 34.892113, 36.126343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407837, 34.960186, 35.910233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378718, -0.543737, -0.748948,
		-0.421226, -0.821820, 0.383642,
		-0.824100, 0.170184, -0.540274,
		31.160606, 35.011242, 35.748150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585711, 34.317017, 35.627033>,  <31.737476, 34.892113, 36.126343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585711, 34.317017, 35.627033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365002, 34.619839, 35.487083>,  <31.232576, 34.801533, 35.403114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365002, 34.619839, 35.487083>,  <31.585711, 34.317017, 35.627033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365002, 34.619839, 35.487083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174469, -0.305454, -0.936087,
		-0.815541, -0.577549, 0.036458,
		-0.551772, 0.757057, -0.349875,
		31.199471, 34.846954, 35.382122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899479, 34.134434, 35.352875>,  <31.585711, 34.317017, 35.627033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899479, 34.134434, 35.352875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052790, 34.455948, 35.170872>,  <31.144775, 34.648857, 35.061668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052790, 34.455948, 35.170872>,  <30.899479, 34.134434, 35.352875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052790, 34.455948, 35.170872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076282, -0.463398, -0.882861,
		-0.920478, 0.373090, -0.116296,
		0.383278, 0.803782, -0.455008,
		31.167772, 34.697083, 35.034370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544264, 34.220604, 34.628265>,  <30.899479, 34.134434, 35.352875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544264, 34.220604, 34.628265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908644, 34.385612, 34.628952>,  <31.127272, 34.484615, 34.629364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908644, 34.385612, 34.628952>,  <30.544264, 34.220604, 34.628265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908644, 34.385612, 34.628952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259154, -0.569024, -0.780417,
		-0.320956, 0.711366, -0.625257,
		0.910948, 0.412517, 0.001721,
		31.181929, 34.509369, 34.629467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666651, 34.456818, 33.983208>,  <30.544264, 34.220604, 34.628265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666651, 34.456818, 33.983208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036919, 34.442539, 34.133865>,  <31.259079, 34.433971, 34.224258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036919, 34.442539, 34.133865>,  <30.666651, 34.456818, 33.983208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036919, 34.442539, 34.133865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341737, -0.348242, -0.872894,
		0.162320, 0.936725, -0.310159,
		0.925671, -0.035696, 0.376641,
		31.314621, 34.431831, 34.246857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024857, 34.644779, 33.425591>,  <30.666651, 34.456818, 33.983208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024857, 34.644779, 33.425591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303200, 34.506687, 33.677494>,  <31.470205, 34.423832, 33.828636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303200, 34.506687, 33.677494>,  <31.024857, 34.644779, 33.425591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303200, 34.506687, 33.677494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535787, -0.334371, -0.775325,
		0.478239, 0.876933, -0.047705,
		0.695859, -0.345231, 0.629758,
		31.511957, 34.403118, 33.866421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655373, 34.881508, 33.244640>,  <31.024857, 34.644779, 33.425591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655373, 34.881508, 33.244640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730669, 34.546379, 33.449627>,  <31.775846, 34.345303, 33.572620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730669, 34.546379, 33.449627>,  <31.655373, 34.881508, 33.244640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730669, 34.546379, 33.449627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336106, -0.435335, -0.835174,
		0.922821, 0.329458, 0.199648,
		0.188241, -0.837819, 0.512469,
		31.787142, 34.295033, 33.603367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338356, 34.814850, 33.181507>,  <31.655373, 34.881508, 33.244640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338356, 34.814850, 33.181507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195797, 34.451160, 33.267570>,  <32.110264, 34.232948, 33.319210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195797, 34.451160, 33.267570>,  <32.338356, 34.814850, 33.181507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195797, 34.451160, 33.267570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493108, -0.378636, -0.783250,
		0.793617, -0.173048, 0.583289,
		-0.356394, -0.909225, 0.215161,
		32.088879, 34.178394, 33.332119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908913, 34.340408, 33.034302>,  <32.338356, 34.814850, 33.181507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908913, 34.340408, 33.034302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578011, 34.116692, 33.012959>,  <32.379471, 33.982464, 33.000153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578011, 34.116692, 33.012959>,  <32.908913, 34.340408, 33.034302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578011, 34.116692, 33.012959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328424, -0.404339, -0.853608,
		0.455840, -0.723674, 0.518175,
		-0.827253, -0.559290, -0.053358,
		32.329834, 33.948906, 32.996952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188335, 33.780460, 32.787266>,  <32.908913, 34.340408, 33.034302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188335, 33.780460, 32.787266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795780, 33.735447, 32.725033>,  <32.560246, 33.708439, 32.687695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795780, 33.735447, 32.725033>,  <33.188335, 33.780460, 32.787266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795780, 33.735447, 32.725033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191845, -0.608806, -0.769773,
		-0.008089, -0.785297, 0.619067,
		-0.981392, -0.112538, -0.155580,
		32.501362, 33.701687, 32.678360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004822, 33.065910, 32.730247>,  <33.188335, 33.780460, 32.787266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004822, 33.065910, 32.730247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699093, 33.234550, 32.535084>,  <32.515656, 33.335735, 32.417984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699093, 33.234550, 32.535084>,  <33.004822, 33.065910, 32.730247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699093, 33.234550, 32.535084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279494, -0.465272, -0.839884,
		-0.581109, -0.778313, 0.237784,
		-0.764327, 0.421605, -0.487908,
		32.469795, 33.361031, 32.388710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726276, 32.555450, 32.375717>,  <33.004822, 33.065910, 32.730247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726276, 32.555450, 32.375717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592415, 32.882103, 32.187622>,  <32.512096, 33.078094, 32.074764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592415, 32.882103, 32.187622>,  <32.726276, 32.555450, 32.375717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592415, 32.882103, 32.187622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045595, -0.484393, -0.873662,
		-0.941238, -0.313814, 0.124869,
		-0.334653, 0.816630, -0.470237,
		32.492020, 33.127090, 32.046551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431999, 32.297916, 31.768013>,  <32.726276, 32.555450, 32.375717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431999, 32.297916, 31.768013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474644, 32.692883, 31.721298>,  <32.500229, 32.929863, 31.693270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474644, 32.692883, 31.721298>,  <32.431999, 32.297916, 31.768013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474644, 32.692883, 31.721298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182201, -0.134868, -0.973968,
		-0.977464, 0.082558, -0.194287,
		0.106611, 0.987418, -0.116786,
		32.506626, 32.989109, 31.686262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873831, 32.502792, 31.289244>,  <32.431999, 32.297916, 31.768013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873831, 32.502792, 31.289244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153778, 32.788258, 31.277477>,  <32.321747, 32.959538, 31.270418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153778, 32.788258, 31.277477>,  <31.873831, 32.502792, 31.289244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153778, 32.788258, 31.277477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203080, -0.238299, -0.949722,
		-0.684795, 0.658705, -0.311709,
		0.699867, 0.713667, -0.029416,
		32.363739, 33.002357, 31.268652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688169, 32.977573, 30.756737>,  <31.873831, 32.502792, 31.289244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688169, 32.977573, 30.756737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082973, 32.995255, 30.818525>,  <32.319855, 33.005863, 30.855598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082973, 32.995255, 30.818525>,  <31.688169, 32.977573, 30.756737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082973, 32.995255, 30.818525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160671, -0.274167, -0.948165,
		0.000441, 0.960666, -0.277707,
		0.987008, 0.044201, 0.154472,
		32.379074, 33.008514, 30.864866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871475, 33.362366, 30.282570>,  <31.688169, 32.977573, 30.756737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871475, 33.362366, 30.282570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224277, 33.204918, 30.386209>,  <32.435959, 33.110447, 30.448393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224277, 33.204918, 30.386209>,  <31.871475, 33.362366, 30.282570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224277, 33.204918, 30.386209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141827, -0.302603, -0.942506,
		0.449394, 0.868040, -0.211071,
		0.882003, -0.393621, 0.259099,
		32.488880, 33.086830, 30.463940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298447, 33.610767, 29.949129>,  <31.871475, 33.362366, 30.282570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298447, 33.610767, 29.949129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526573, 33.295467, 30.041557>,  <32.663448, 33.106285, 30.097013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526573, 33.295467, 30.041557>,  <32.298447, 33.610767, 29.949129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526573, 33.295467, 30.041557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117069, -0.200435, -0.972687,
		0.813037, 0.581794, -0.022033,
		0.570320, -0.788252, 0.231071,
		32.697670, 33.058990, 30.110878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882401, 33.590584, 29.524368>,  <32.298447, 33.610767, 29.949129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882401, 33.590584, 29.524368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852070, 33.206657, 29.632444>,  <32.833874, 32.976303, 29.697290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852070, 33.206657, 29.632444>,  <32.882401, 33.590584, 29.524368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852070, 33.206657, 29.632444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018057, -0.269605, -0.962802,
		0.996958, -0.077882, 0.003111,
		-0.075824, -0.959816, 0.270191,
		32.829323, 32.918713, 29.713501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157089, 33.306847, 28.973621>,  <32.882401, 33.590584, 29.524368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157089, 33.306847, 28.973621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966892, 32.993195, 29.133148>,  <32.852776, 32.805004, 29.228865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966892, 32.993195, 29.133148>,  <33.157089, 33.306847, 28.973621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966892, 32.993195, 29.133148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060389, -0.423184, -0.904029,
		0.877647, -0.453940, 0.153867,
		-0.475489, -0.784126, 0.398819,
		32.824245, 32.757957, 29.252794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448467, 32.617924, 28.767567>,  <33.157089, 33.306847, 28.973621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448467, 32.617924, 28.767567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085175, 32.496944, 28.883253>,  <32.867199, 32.424358, 28.952665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085175, 32.496944, 28.883253>,  <33.448467, 32.617924, 28.767567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085175, 32.496944, 28.883253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129981, -0.453054, -0.881956,
		0.397773, -0.838612, 0.372166,
		-0.908230, -0.302444, 0.289216,
		32.812706, 32.406212, 28.970018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447685, 31.834150, 28.730597>,  <33.448467, 32.617924, 28.767567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447685, 31.834150, 28.730597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077095, 31.978785, 28.688831>,  <32.854740, 32.065567, 28.663773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077095, 31.978785, 28.688831>,  <33.447685, 31.834150, 28.730597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077095, 31.978785, 28.688831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103658, -0.511857, -0.852794,
		-0.361803, -0.779268, 0.511703,
		-0.926473, 0.361586, -0.104415,
		32.799152, 32.087261, 28.657507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048576, 31.323980, 28.576847>,  <33.447685, 31.834150, 28.730597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048576, 31.323980, 28.576847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826145, 31.625809, 28.437477>,  <32.692684, 31.806906, 28.353855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826145, 31.625809, 28.437477>,  <33.048576, 31.323980, 28.576847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826145, 31.625809, 28.437477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247672, -0.550617, -0.797170,
		-0.793367, -0.356997, 0.493073,
		-0.556082, 0.754569, -0.348423,
		32.659321, 31.852179, 28.332951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624733, 30.985094, 28.117046>,  <33.048576, 31.323980, 28.576847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624733, 30.985094, 28.117046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549206, 31.366644, 28.023691>,  <32.503891, 31.595573, 27.967678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549206, 31.366644, 28.023691>,  <32.624733, 30.985094, 28.117046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549206, 31.366644, 28.023691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479826, -0.296978, -0.825573,
		-0.856805, -0.043897, 0.513769,
		-0.188818, 0.953875, -0.233389,
		32.492561, 31.652807, 27.953674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007206, 30.918621, 27.831011>,  <32.624733, 30.985094, 28.117046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007206, 30.918621, 27.831011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183357, 31.252619, 27.699039>,  <32.289047, 31.453018, 27.619856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183357, 31.252619, 27.699039>,  <32.007206, 30.918621, 27.831011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183357, 31.252619, 27.699039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309901, -0.203523, -0.928730,
		-0.842633, 0.511236, 0.169139,
		0.440376, 0.834995, -0.329928,
		32.315472, 31.503117, 27.600061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760229, 31.058926, 27.147221>,  <32.007206, 30.918621, 27.831011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760229, 31.058926, 27.147221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052593, 31.331408, 27.130602>,  <32.228012, 31.494898, 27.120630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052593, 31.331408, 27.130602>,  <31.760229, 31.058926, 27.147221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052593, 31.331408, 27.130602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047383, -0.111381, -0.992647,
		-0.680825, 0.723569, -0.113688,
		0.730912, 0.681206, -0.041546,
		32.271866, 31.535769, 27.118137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667360, 31.455256, 26.462782>,  <31.760229, 31.058926, 27.147221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667360, 31.455256, 26.462782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050644, 31.500006, 26.568098>,  <32.280613, 31.526855, 26.631287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050644, 31.500006, 26.568098>,  <31.667360, 31.455256, 26.462782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050644, 31.500006, 26.568098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255557, 0.078852, -0.963573,
		-0.128559, 0.990589, 0.046967,
		0.958208, 0.111873, 0.263289,
		32.338108, 31.533567, 26.647085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870926, 32.014538, 26.054232>,  <31.667360, 31.455256, 26.462782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870926, 32.014538, 26.054232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196045, 31.798197, 26.140800>,  <32.391117, 31.668392, 26.192741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196045, 31.798197, 26.140800>,  <31.870926, 32.014538, 26.054232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196045, 31.798197, 26.140800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312568, 0.091395, -0.945488,
		0.491590, 0.836137, 0.243338,
		0.812798, -0.540853, 0.216421,
		32.439884, 31.635941, 26.205727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448326, 32.331932, 25.861479>,  <31.870926, 32.014538, 26.054232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448326, 32.331932, 25.861479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568031, 31.950670, 25.879084>,  <32.639854, 31.721912, 25.889647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568031, 31.950670, 25.879084>,  <32.448326, 32.331932, 25.861479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568031, 31.950670, 25.879084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178214, 0.010518, -0.983936,
		0.937381, 0.302298, 0.173014,
		0.299261, -0.953156, 0.044014,
		32.657810, 31.664724, 25.892288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032993, 32.286602, 25.321123>,  <32.448326, 32.331932, 25.861479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032993, 32.286602, 25.321123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920914, 31.919094, 25.432377>,  <32.853668, 31.698589, 25.499128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920914, 31.919094, 25.432377>,  <33.032993, 32.286602, 25.321123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920914, 31.919094, 25.432377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153355, -0.328863, -0.931843,
		0.947614, -0.218445, 0.233043,
		-0.280196, -0.918766, 0.278135,
		32.836853, 31.643465, 25.515818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477001, 31.968811, 25.013195>,  <33.032993, 32.286602, 25.321123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477001, 31.968811, 25.013195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208061, 31.683239, 25.091429>,  <33.046696, 31.511896, 25.138369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208061, 31.683239, 25.091429>,  <33.477001, 31.968811, 25.013195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208061, 31.683239, 25.091429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065865, -0.205472, -0.976444,
		0.737299, -0.669393, 0.091126,
		-0.672349, -0.713929, 0.195584,
		33.006355, 31.469061, 25.150105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783356, 31.330647, 24.694561>,  <33.477001, 31.968811, 25.013195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783356, 31.330647, 24.694561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385616, 31.307104, 24.729912>,  <33.146973, 31.292978, 24.751122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385616, 31.307104, 24.729912>,  <33.783356, 31.330647, 24.694561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385616, 31.307104, 24.729912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078515, -0.152770, -0.985138,
		0.071482, -0.986508, 0.147285,
		-0.994347, -0.058855, 0.088376,
		33.087311, 31.289448, 24.756424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621502, 30.722830, 24.411736>,  <33.783356, 31.330647, 24.694561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621502, 30.722830, 24.411736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298241, 30.958227, 24.402241>,  <33.104282, 31.099466, 24.396544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298241, 30.958227, 24.402241>,  <33.621502, 30.722830, 24.411736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298241, 30.958227, 24.402241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049289, -0.107736, -0.992957,
		-0.586906, -0.801292, 0.116074,
		-0.808154, 0.588494, -0.023736,
		33.055794, 31.134775, 24.395121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332890, 30.355700, 23.963568>,  <33.621502, 30.722830, 24.411736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332890, 30.355700, 23.963568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118156, 30.692942, 23.976105>,  <32.989315, 30.895287, 23.983627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118156, 30.692942, 23.976105>,  <33.332890, 30.355700, 23.963568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118156, 30.692942, 23.976105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095174, -0.023606, -0.995181,
		-0.838302, -0.537230, 0.092914,
		-0.536834, 0.843105, 0.031341,
		32.957108, 30.945873, 23.985508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693905, 30.224812, 23.636742>,  <33.332890, 30.355700, 23.963568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693905, 30.224812, 23.636742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753696, 30.620070, 23.622759>,  <32.789574, 30.857225, 23.614370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753696, 30.620070, 23.622759>,  <32.693905, 30.224812, 23.636742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753696, 30.620070, 23.622759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024804, -0.039089, -0.998928,
		-0.988453, 0.148454, -0.030353,
		0.149481, 0.988146, -0.034956,
		32.798542, 30.916513, 23.612272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177021, 30.488632, 23.119896>,  <32.693905, 30.224812, 23.636742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177021, 30.488632, 23.119896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467808, 30.759399, 23.166027>,  <32.642281, 30.921860, 23.193707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467808, 30.759399, 23.166027>,  <32.177021, 30.488632, 23.119896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467808, 30.759399, 23.166027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182114, -0.028124, -0.982875,
		-0.662083, 0.735520, -0.143722,
		0.726967, 0.676919, 0.115328,
		32.685898, 30.962475, 23.200626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013844, 30.945360, 22.631981>,  <32.177021, 30.488632, 23.119896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013844, 30.945360, 22.631981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397568, 30.984495, 22.737930>,  <32.627800, 31.007977, 22.801500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397568, 30.984495, 22.737930>,  <32.013844, 30.945360, 22.631981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397568, 30.984495, 22.737930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270562, -0.050147, -0.961395,
		-0.080777, 0.993938, -0.074577,
		0.959308, 0.097837, 0.264871,
		32.685360, 31.013845, 22.817392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212360, 31.434088, 22.225763>,  <32.013844, 30.945360, 22.631981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212360, 31.434088, 22.225763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562202, 31.281834, 22.345884>,  <32.772106, 31.190481, 22.417957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562202, 31.281834, 22.345884>,  <32.212360, 31.434088, 22.225763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562202, 31.281834, 22.345884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364884, 0.108896, -0.924663,
		0.319259, 0.918290, 0.234130,
		0.874604, -0.380637, 0.300304,
		32.824585, 31.167643, 22.435976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718632, 31.887094, 21.976431>,  <32.212360, 31.434088, 22.225763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718632, 31.887094, 21.976431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885994, 31.531101, 22.048952>,  <32.986412, 31.317505, 22.092464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885994, 31.531101, 22.048952>,  <32.718632, 31.887094, 21.976431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885994, 31.531101, 22.048952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419063, 0.012063, -0.907877,
		0.805808, 0.455835, 0.378006,
		0.418401, -0.889983, 0.181303,
		33.011513, 31.264107, 22.103344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476097, 31.903255, 21.921385>,  <32.718632, 31.887094, 21.976431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476097, 31.903255, 21.921385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410084, 31.516224, 21.844910>,  <33.370476, 31.284004, 21.799025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410084, 31.516224, 21.844910>,  <33.476097, 31.903255, 21.921385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410084, 31.516224, 21.844910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448656, 0.098977, -0.888207,
		0.878334, -0.232364, 0.417775,
		-0.165037, -0.967580, -0.191187,
		33.360573, 31.225950, 21.787554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990696, 31.814371, 21.420622>,  <33.476097, 31.903255, 21.921385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990696, 31.814371, 21.420622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776779, 31.476982, 21.440817>,  <33.648430, 31.274548, 21.452934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776779, 31.476982, 21.440817>,  <33.990696, 31.814371, 21.420622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776779, 31.476982, 21.440817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364528, -0.284202, -0.886763,
		0.762310, -0.455830, 0.459459,
		-0.534792, -0.843474, 0.050487,
		33.616341, 31.223940, 21.455963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434387, 31.277910, 21.240017>,  <33.990696, 31.814371, 21.420622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434387, 31.277910, 21.240017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071560, 31.139509, 21.144094>,  <33.853863, 31.056469, 21.086542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071560, 31.139509, 21.144094>,  <34.434387, 31.277910, 21.240017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071560, 31.139509, 21.144094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344226, -0.281673, -0.895639,
		0.242346, -0.894954, 0.374600,
		-0.907071, -0.346001, -0.239804,
		33.799438, 31.035709, 21.072153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600712, 30.713860, 20.874636>,  <34.434387, 31.277910, 21.240017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600712, 30.713860, 20.874636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223980, 30.786045, 20.761225>,  <33.997940, 30.829357, 20.693178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223980, 30.786045, 20.761225>,  <34.600712, 30.713860, 20.874636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223980, 30.786045, 20.761225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245539, -0.206562, -0.947123,
		-0.229498, -0.961645, 0.150232,
		-0.941829, 0.180474, -0.283527,
		33.941429, 30.840185, 20.676167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338051, 30.107779, 20.555815>,  <34.600712, 30.713860, 20.874636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338051, 30.107779, 20.555815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090378, 30.386507, 20.411013>,  <33.941772, 30.553743, 20.324131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090378, 30.386507, 20.411013>,  <34.338051, 30.107779, 20.555815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090378, 30.386507, 20.411013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293494, -0.222232, -0.929771,
		-0.728334, -0.681948, -0.066910,
		-0.619186, 0.696821, -0.362006,
		33.904621, 30.595552, 20.302410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883629, 29.786846, 20.157257>,  <34.338051, 30.107779, 20.555815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883629, 29.786846, 20.157257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887665, 30.170101, 20.042805>,  <33.890087, 30.400055, 19.974133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887665, 30.170101, 20.042805>,  <33.883629, 29.786846, 20.157257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887665, 30.170101, 20.042805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267147, -0.278326, -0.922587,
		-0.963603, -0.067134, -0.258771,
		0.010086, 0.958137, -0.286131,
		33.890690, 30.457542, 19.956966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640293, 29.875195, 19.433876>,  <33.883629, 29.786846, 20.157257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640293, 29.875195, 19.433876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835548, 30.220436, 19.485680>,  <33.952702, 30.427582, 19.516762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835548, 30.220436, 19.485680>,  <33.640293, 29.875195, 19.433876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835548, 30.220436, 19.485680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252438, 0.002424, -0.967610,
		-0.835464, 0.505017, -0.216697,
		0.488135, 0.863106, 0.129511,
		33.981987, 30.479368, 19.524532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516399, 30.239258, 18.828310>,  <33.640293, 29.875195, 19.433876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516399, 30.239258, 18.828310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858185, 30.379284, 18.981853>,  <34.063255, 30.463301, 19.073980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858185, 30.379284, 18.981853>,  <33.516399, 30.239258, 18.828310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858185, 30.379284, 18.981853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353464, 0.149760, -0.923382,
		-0.380732, 0.924676, 0.004228,
		0.854462, 0.350067, 0.383858,
		34.114525, 30.484304, 19.097012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186317, 30.330231, 18.570786>,  <33.516399, 30.239258, 18.828310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186317, 30.330231, 18.570786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396706, 30.574705, 18.334208>,  <34.522938, 30.721390, 18.192261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396706, 30.574705, 18.334208>,  <34.186317, 30.330231, 18.570786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396706, 30.574705, 18.334208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599015, 0.227457, 0.767753,
		0.603768, -0.758099, -0.246474,
		0.525971, 0.611186, -0.591445,
		34.554497, 30.758060, 18.156775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912231, 30.221901, 18.625242>,  <34.186317, 30.330231, 18.570786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912231, 30.221901, 18.625242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850773, 30.613205, 18.569525>,  <34.813896, 30.847986, 18.536095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850773, 30.613205, 18.569525>,  <34.912231, 30.221901, 18.625242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850773, 30.613205, 18.569525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684833, 0.207045, 0.698667,
		0.712317, 0.011955, -0.701756,
		-0.153647, 0.978258, -0.139295,
		34.804680, 30.906683, 18.527737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547020, 30.478247, 18.578505>,  <34.912231, 30.221901, 18.625242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547020, 30.478247, 18.578505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303448, 30.772369, 18.697521>,  <35.157303, 30.948843, 18.768930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303448, 30.772369, 18.697521>,  <35.547020, 30.478247, 18.578505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303448, 30.772369, 18.697521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591990, 0.171597, 0.787466,
		0.527970, 0.655653, -0.539784,
		-0.608930, 0.735305, 0.297542,
		35.120770, 30.992962, 18.786783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850929, 31.211580, 18.565992>,  <35.547020, 30.478247, 18.578505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850929, 31.211580, 18.565992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573307, 31.162882, 18.849812>,  <35.406734, 31.133663, 19.020103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573307, 31.162882, 18.849812>,  <35.850929, 31.211580, 18.565992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573307, 31.162882, 18.849812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696517, 0.135690, 0.704593,
		-0.182060, 0.983243, -0.009379,
		-0.694059, -0.121746, 0.709549,
		35.365089, 31.126358, 19.062675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571407, 31.674902, 18.116762>,  <35.850929, 31.211580, 18.565992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571407, 31.674902, 18.116762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424732, 31.897879, 17.818823>,  <35.336727, 32.031666, 17.640060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424732, 31.897879, 17.818823>,  <35.571407, 31.674902, 18.116762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424732, 31.897879, 17.818823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909688, -0.047060, 0.412618,
		0.194959, 0.828880, 0.524356,
		-0.366686, 0.557444, -0.744847,
		35.314728, 32.065113, 17.595369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928463, 31.900993, 18.187494>,  <35.571407, 31.674902, 18.116762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928463, 31.900993, 18.187494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888493, 32.215252, 17.943274>,  <34.864510, 32.403809, 17.796741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888493, 32.215252, 17.943274>,  <34.928463, 31.900993, 18.187494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888493, 32.215252, 17.943274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781392, 0.317922, 0.536985,
		0.615988, 0.530741, 0.582128,
		-0.099928, 0.785646, -0.610553,
		34.858513, 32.450947, 17.760107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896206, 32.441898, 18.655350>,  <34.928463, 31.900993, 18.187494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896206, 32.441898, 18.655350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739498, 32.546322, 18.302450>,  <34.645473, 32.608974, 18.090710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739498, 32.546322, 18.302450>,  <34.896206, 32.441898, 18.655350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739498, 32.546322, 18.302450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611603, 0.642476, 0.461700,
		0.687354, 0.720468, -0.092041,
		-0.391773, 0.261059, -0.882248,
		34.621967, 32.624641, 18.037775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969925, 33.267498, 18.620987>,  <34.896206, 32.441898, 18.655350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969925, 33.267498, 18.620987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647697, 33.112560, 18.441643>,  <34.454361, 33.019600, 18.334036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647697, 33.112560, 18.441643>,  <34.969925, 33.267498, 18.620987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647697, 33.112560, 18.441643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586245, 0.630761, 0.508387,
		0.085890, 0.672390, -0.735197,
		-0.805568, -0.387341, -0.448361,
		34.406029, 32.996357, 18.307135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560654, 33.811092, 18.087385>,  <34.969925, 33.267498, 18.620987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560654, 33.811092, 18.087385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411629, 33.517776, 18.314888>,  <34.322212, 33.341789, 18.451389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411629, 33.517776, 18.314888>,  <34.560654, 33.811092, 18.087385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411629, 33.517776, 18.314888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347003, 0.678504, 0.647473,
		-0.860689, 0.043864, -0.507239,
		-0.372564, -0.733286, 0.568759,
		34.299858, 33.297791, 18.485516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997612, 34.041374, 18.411528>,  <34.560654, 33.811092, 18.087385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997612, 34.041374, 18.411528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105202, 33.734566, 18.644537>,  <34.169754, 33.550480, 18.784342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105202, 33.734566, 18.644537>,  <33.997612, 34.041374, 18.411528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105202, 33.734566, 18.644537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393764, 0.464385, 0.793282,
		-0.878979, -0.442746, -0.177119,
		0.268971, -0.767021, 0.582523,
		34.185894, 33.504459, 18.819294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391060, 33.746025, 18.726053>,  <33.997612, 34.041374, 18.411528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391060, 33.746025, 18.726053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679253, 33.611935, 18.968878>,  <33.852169, 33.531483, 19.114573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679253, 33.611935, 18.968878>,  <33.391060, 33.746025, 18.726053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679253, 33.611935, 18.968878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563079, 0.228169, 0.794280,
		-0.404774, -0.914092, -0.024364,
		0.720486, -0.335223, 0.607063,
		33.895397, 33.511368, 19.150997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978134, 33.620285, 19.232935>,  <33.391060, 33.746025, 18.726053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978134, 33.620285, 19.232935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340637, 33.582493, 19.397753>,  <33.558140, 33.559818, 19.496643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340637, 33.582493, 19.397753>,  <32.978134, 33.620285, 19.232935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340637, 33.582493, 19.397753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383559, 0.226015, 0.895433,
		-0.177730, -0.969531, 0.168587,
		0.906253, -0.094482, 0.412042,
		33.612514, 33.554150, 19.521366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951294, 33.183308, 19.839634>,  <32.978134, 33.620285, 19.232935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951294, 33.183308, 19.839634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278698, 33.406132, 19.895809>,  <33.475140, 33.539825, 19.929514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278698, 33.406132, 19.895809>,  <32.951294, 33.183308, 19.839634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278698, 33.406132, 19.895809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317695, 0.235233, 0.918551,
		0.478651, -0.796462, 0.369516,
		0.818512, 0.557059, 0.140438,
		33.524250, 33.573250, 19.937941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190056, 33.056984, 20.526119>,  <32.951294, 33.183308, 19.839634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190056, 33.056984, 20.526119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362640, 33.405010, 20.430763>,  <33.466190, 33.613827, 20.373550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362640, 33.405010, 20.430763>,  <33.190056, 33.056984, 20.526119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362640, 33.405010, 20.430763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030745, 0.278280, 0.960008,
		0.901606, -0.406880, 0.146818,
		0.431464, 0.870063, -0.238389,
		33.492081, 33.666031, 20.359247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567684, 33.190742, 21.145279>,  <33.190056, 33.056984, 20.526119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567684, 33.190742, 21.145279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499729, 33.516209, 20.922897>,  <33.458954, 33.711487, 20.789469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499729, 33.516209, 20.922897>,  <33.567684, 33.190742, 21.145279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499729, 33.516209, 20.922897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230801, 0.515612, 0.825152,
		0.958055, 0.268499, 0.100197,
		-0.169890, 0.813666, -0.555954,
		33.448761, 33.760307, 20.756111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041241, 33.704731, 21.267815>,  <33.567684, 33.190742, 21.145279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041241, 33.704731, 21.267815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725056, 33.909706, 21.133600>,  <33.535347, 34.032692, 21.053072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725056, 33.909706, 21.133600>,  <34.041241, 33.704731, 21.267815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725056, 33.909706, 21.133600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063527, 0.476262, 0.877006,
		0.609212, 0.714553, -0.343912,
		-0.790459, 0.512435, -0.335538,
		33.487919, 34.063438, 21.032938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125317, 34.415817, 21.302572>,  <34.041241, 33.704731, 21.267815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125317, 34.415817, 21.302572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728348, 34.400734, 21.255783>,  <33.490166, 34.391682, 21.227711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728348, 34.400734, 21.255783>,  <34.125317, 34.415817, 21.302572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728348, 34.400734, 21.255783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110850, 0.685665, 0.719427,
		0.053073, 0.726940, -0.684648,
		-0.992419, -0.037711, -0.116971,
		33.430622, 34.389420, 21.220692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955837, 34.998024, 21.640425>,  <34.125317, 34.415817, 21.302572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955837, 34.998024, 21.640425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597706, 34.832798, 21.573767>,  <33.382828, 34.733662, 21.533772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597706, 34.832798, 21.573767>,  <33.955837, 34.998024, 21.640425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597706, 34.832798, 21.573767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341322, 0.395886, 0.852510,
		-0.286170, 0.820153, -0.495435,
		-0.895325, -0.413065, -0.166646,
		33.329109, 34.708878, 21.523773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449150, 35.527443, 21.811588>,  <33.955837, 34.998024, 21.640425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449150, 35.527443, 21.811588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289528, 35.162018, 21.842972>,  <33.193752, 34.942764, 21.861801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289528, 35.162018, 21.842972>,  <33.449150, 35.527443, 21.811588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289528, 35.162018, 21.842972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297000, 0.209738, 0.931558,
		-0.867493, 0.348444, -0.355026,
		-0.399058, -0.913563, 0.078459,
		33.169811, 34.887947, 21.866508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822147, 35.624825, 22.183884>,  <33.449150, 35.527443, 21.811588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822147, 35.624825, 22.183884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891743, 35.234379, 22.235937>,  <32.933498, 35.000111, 22.267170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891743, 35.234379, 22.235937>,  <32.822147, 35.624825, 22.183884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891743, 35.234379, 22.235937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330946, 0.066505, 0.941303,
		-0.927472, -0.206842, -0.311469,
		0.173987, -0.976112, 0.130135,
		32.943939, 34.941544, 22.274977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240711, 35.448513, 22.669422>,  <32.822147, 35.624825, 22.183884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240711, 35.448513, 22.669422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499126, 35.143192, 22.667988>,  <32.654175, 34.959999, 22.667128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499126, 35.143192, 22.667988>,  <32.240711, 35.448513, 22.669422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499126, 35.143192, 22.667988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196976, -0.171250, 0.965336,
		-0.737455, -0.622934, -0.260985,
		0.646034, -0.763300, -0.003586,
		32.692936, 34.914204, 22.666912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933779, 34.997631, 23.098047>,  <32.240711, 35.448513, 22.669422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933779, 34.997631, 23.098047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318665, 34.890694, 23.118731>,  <32.549595, 34.826530, 23.131140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318665, 34.890694, 23.118731>,  <31.933779, 34.997631, 23.098047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318665, 34.890694, 23.118731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070239, -0.060223, 0.995711,
		-0.263082, -0.961718, -0.076725,
		0.962213, -0.267343, 0.051706,
		32.607330, 34.810490, 23.134243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950068, 34.368179, 23.420929>,  <31.933779, 34.997631, 23.098047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950068, 34.368179, 23.420929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301823, 34.552094, 23.470352>,  <32.512875, 34.662441, 23.500006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301823, 34.552094, 23.470352>,  <31.950068, 34.368179, 23.420929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301823, 34.552094, 23.470352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085913, -0.102011, 0.991066,
		0.468287, -0.882149, -0.050206,
		0.879390, 0.459790, 0.123559,
		32.565639, 34.690029, 23.507420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260918, 34.003983, 23.879248>,  <31.950068, 34.368179, 23.420929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260918, 34.003983, 23.879248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462013, 34.349571, 23.890558>,  <32.582672, 34.556927, 23.897345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462013, 34.349571, 23.890558>,  <32.260918, 34.003983, 23.879248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462013, 34.349571, 23.890558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070600, 0.008435, 0.997469,
		0.861551, -0.503462, 0.065237,
		0.502738, 0.863977, 0.028277,
		32.612835, 34.608765, 23.899042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820400, 33.929356, 24.401567>,  <32.260918, 34.003983, 23.879248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820400, 33.929356, 24.401567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779751, 34.325066, 24.359600>,  <32.755360, 34.562492, 24.334419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779751, 34.325066, 24.359600>,  <32.820400, 33.929356, 24.401567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779751, 34.325066, 24.359600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150211, 0.119512, 0.981404,
		0.983417, 0.083978, -0.160746,
		-0.101627, 0.989275, -0.104916,
		32.749264, 34.621849, 24.328125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366375, 34.217915, 24.762922>,  <32.820400, 33.929356, 24.401567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366375, 34.217915, 24.762922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111389, 34.525566, 24.744654>,  <32.958397, 34.710155, 24.733692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111389, 34.525566, 24.744654>,  <33.366375, 34.217915, 24.762922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111389, 34.525566, 24.744654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104075, 0.144687, 0.983989,
		0.763419, 0.622504, -0.172279,
		-0.637464, 0.769125, -0.045670,
		32.920151, 34.756302, 24.730953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719646, 34.817326, 24.988548>,  <33.366375, 34.217915, 24.762922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719646, 34.817326, 24.988548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336731, 34.915718, 25.049341>,  <33.106983, 34.974754, 25.085817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336731, 34.915718, 25.049341>,  <33.719646, 34.817326, 24.988548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336731, 34.915718, 25.049341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226414, 0.310763, 0.923127,
		0.179842, 0.918106, -0.353182,
		-0.957284, 0.245982, 0.151983,
		33.049545, 34.989513, 25.094936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739101, 35.369354, 25.388639>,  <33.719646, 34.817326, 24.988548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739101, 35.369354, 25.388639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359638, 35.252487, 25.437105>,  <33.131958, 35.182369, 25.466185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359638, 35.252487, 25.437105>,  <33.739101, 35.369354, 25.388639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359638, 35.252487, 25.437105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071577, 0.174831, 0.981993,
		-0.308086, 0.940252, -0.144944,
		-0.948662, -0.292164, 0.121164,
		33.075039, 35.164837, 25.473454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283005, 35.954967, 25.673956>,  <33.739101, 35.369354, 25.388639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283005, 35.954967, 25.673956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071514, 35.630436, 25.773706>,  <32.944618, 35.435715, 25.833557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071514, 35.630436, 25.773706>,  <33.283005, 35.954967, 25.673956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071514, 35.630436, 25.773706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161555, 0.384626, 0.908825,
		-0.833275, 0.440233, -0.334437,
		-0.528728, -0.811331, 0.249377,
		32.912895, 35.387035, 25.848520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573696, 36.169094, 25.814163>,  <33.283005, 35.954967, 25.673956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573696, 36.169094, 25.814163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632679, 35.830551, 26.018885>,  <32.668068, 35.627426, 26.141718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632679, 35.830551, 26.018885>,  <32.573696, 36.169094, 25.814163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632679, 35.830551, 26.018885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149482, 0.492445, 0.857411,
		-0.977708, -0.202935, -0.053901,
		0.147455, -0.846354, 0.511802,
		32.676914, 35.576645, 26.172426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049259, 36.124447, 26.410999>,  <32.573696, 36.169094, 25.814163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049259, 36.124447, 26.410999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308567, 35.841743, 26.524302>,  <32.464153, 35.672123, 26.592283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308567, 35.841743, 26.524302>,  <32.049259, 36.124447, 26.410999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308567, 35.841743, 26.524302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136901, 0.257757, 0.956462,
		-0.748999, -0.658827, 0.070341,
		0.648274, -0.706759, 0.283253,
		32.503048, 35.629715, 26.609278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731077, 35.822605, 26.925922>,  <32.049259, 36.124447, 26.410999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731077, 35.822605, 26.925922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118668, 35.740894, 26.981573>,  <32.351223, 35.691868, 27.014963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118668, 35.740894, 26.981573>,  <31.731077, 35.822605, 26.925922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118668, 35.740894, 26.981573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127138, 0.070757, 0.989358,
		-0.211953, -0.976351, 0.042590,
		0.968974, -0.204282, 0.139128,
		32.409359, 35.679611, 27.023312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645348, 35.381989, 27.513184>,  <31.731077, 35.822605, 26.925922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645348, 35.381989, 27.513184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029995, 35.490742, 27.498396>,  <32.260784, 35.555992, 27.489523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029995, 35.490742, 27.498396>,  <31.645348, 35.381989, 27.513184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029995, 35.490742, 27.498396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050896, -0.044353, 0.997719,
		0.269626, -0.961307, -0.056488,
		0.961619, 0.271886, -0.036968,
		32.318481, 35.572308, 27.487305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081486, 34.895683, 27.958664>,  <31.645348, 35.381989, 27.513184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081486, 34.895683, 27.958664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282352, 35.240761, 27.934719>,  <32.402870, 35.447807, 27.920351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282352, 35.240761, 27.934719>,  <32.081486, 34.895683, 27.958664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282352, 35.240761, 27.934719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051591, 0.039216, 0.997898,
		0.863232, -0.504197, -0.024815,
		0.502164, 0.862698, -0.059864,
		32.433002, 35.499569, 27.916759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610680, 34.804245, 28.359148>,  <32.081486, 34.895683, 27.958664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610680, 34.804245, 28.359148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610222, 35.201385, 28.311398>,  <32.609947, 35.439671, 28.282747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610222, 35.201385, 28.311398>,  <32.610680, 34.804245, 28.359148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610222, 35.201385, 28.311398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162903, 0.117969, 0.979564,
		0.986641, -0.018325, -0.161873,
		-0.001145, 0.992848, -0.119378,
		32.609879, 35.499241, 28.275583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214516, 35.022270, 28.634342>,  <32.610680, 34.804245, 28.359148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214516, 35.022270, 28.634342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994591, 35.356167, 28.622259>,  <32.862637, 35.556503, 28.615009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994591, 35.356167, 28.622259>,  <33.214516, 35.022270, 28.634342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994591, 35.356167, 28.622259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148109, 0.133016, 0.979985,
		0.822050, 0.534338, -0.196767,
		-0.549816, 0.834739, -0.030206,
		32.829647, 35.606590, 28.613197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504601, 35.484089, 29.086002>,  <33.214516, 35.022270, 28.634342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504601, 35.484089, 29.086002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144924, 35.657269, 29.060678>,  <32.929119, 35.761177, 29.045485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144924, 35.657269, 29.060678>,  <33.504601, 35.484089, 29.086002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144924, 35.657269, 29.060678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149253, 0.439508, 0.885752,
		0.411310, 0.787013, -0.459821,
		-0.899193, 0.432948, -0.063310,
		32.875168, 35.787151, 29.041685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625198, 36.275787, 29.350040>,  <33.504601, 35.484089, 29.086002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625198, 36.275787, 29.350040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241089, 36.169025, 29.382627>,  <33.010624, 36.104969, 29.402180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241089, 36.169025, 29.382627>,  <33.625198, 36.275787, 29.350040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241089, 36.169025, 29.382627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044092, 0.433376, 0.900134,
		-0.275556, 0.860783, -0.427928,
		-0.960273, -0.266905, 0.081466,
		32.953007, 36.088955, 29.407066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468307, 36.739117, 29.873095>,  <33.625198, 36.275787, 29.350040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468307, 36.739117, 29.873095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148956, 36.499313, 29.850504>,  <32.957348, 36.355431, 29.836950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148956, 36.499313, 29.850504>,  <33.468307, 36.739117, 29.873095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148956, 36.499313, 29.850504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200765, 0.176587, 0.963592,
		-0.567708, 0.780646, -0.261342,
		-0.798374, -0.599507, -0.056476,
		32.909443, 36.319462, 29.833561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898060, 37.128609, 30.128401>,  <33.468307, 36.739117, 29.873095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898060, 37.128609, 30.128401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867092, 36.735485, 30.195446>,  <32.848511, 36.499611, 30.235674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867092, 36.735485, 30.195446>,  <32.898060, 37.128609, 30.128401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867092, 36.735485, 30.195446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175498, 0.178929, 0.968083,
		-0.981431, 0.045532, -0.186333,
		-0.077419, -0.982808, 0.167615,
		32.843868, 36.440643, 30.245731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411381, 37.016506, 30.690834>,  <32.898060, 37.128609, 30.128401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411381, 37.016506, 30.690834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547134, 36.640297, 30.696985>,  <32.628586, 36.414570, 30.700676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547134, 36.640297, 30.696985>,  <32.411381, 37.016506, 30.690834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547134, 36.640297, 30.696985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065318, -0.007256, 0.997838,
		-0.938379, -0.339651, -0.063895,
		0.339381, -0.940523, 0.015376,
		32.648949, 36.358139, 30.701597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964800, 36.657776, 31.141443>,  <32.411381, 37.016506, 30.690834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964800, 36.657776, 31.141443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321575, 36.477898, 31.122604>,  <32.535641, 36.369968, 31.111301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321575, 36.477898, 31.122604>,  <31.964800, 36.657776, 31.141443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321575, 36.477898, 31.122604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079715, 0.053868, 0.995361,
		-0.445076, -0.891554, 0.083894,
		0.891938, -0.449699, -0.047095,
		32.589157, 36.342987, 31.108477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819996, 36.138218, 31.577463>,  <31.964800, 36.657776, 31.141443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819996, 36.138218, 31.577463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216503, 36.163872, 31.531382>,  <32.454407, 36.179264, 31.503733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216503, 36.163872, 31.531382>,  <31.819996, 36.138218, 31.577463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216503, 36.163872, 31.531382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118970, -0.058350, 0.991182,
		0.056845, -0.996234, -0.065471,
		0.991269, 0.064133, -0.115205,
		32.513885, 36.183113, 31.496820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114902, 35.496643, 31.838837>,  <31.819996, 36.138218, 31.577463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114902, 35.496643, 31.838837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361534, 35.811504, 31.844631>,  <32.509514, 36.000423, 31.848108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361534, 35.811504, 31.844631>,  <32.114902, 35.496643, 31.838837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361534, 35.811504, 31.844631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045605, -0.054083, 0.997495,
		0.785968, -0.614377, -0.069245,
		0.616582, 0.787157, 0.014489,
		32.546509, 36.047653, 31.848978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607437, 35.236656, 32.211575>,  <32.114902, 35.496643, 31.838837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607437, 35.236656, 32.211575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698418, 35.625294, 32.237705>,  <32.753006, 35.858479, 32.253384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698418, 35.625294, 32.237705>,  <32.607437, 35.236656, 32.211575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698418, 35.625294, 32.237705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139374, -0.033915, 0.989659,
		0.963764, -0.234203, 0.127701,
		0.227450, 0.971596, 0.065328,
		32.766651, 35.916771, 32.257305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133377, 35.232395, 32.680668>,  <32.607437, 35.236656, 32.211575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133377, 35.232395, 32.680668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018078, 35.615379, 32.675274>,  <32.948898, 35.845169, 32.672039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018078, 35.615379, 32.675274>,  <33.133377, 35.232395, 32.680668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018078, 35.615379, 32.675274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222535, 0.080677, 0.971581,
		0.931338, 0.277059, -0.236324,
		-0.288251, 0.957460, -0.013482,
		32.931602, 35.902618, 32.671230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642078, 35.650181, 32.937981>,  <33.133377, 35.232395, 32.680668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642078, 35.650181, 32.937981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320446, 35.874622, 33.016594>,  <33.127468, 36.009285, 33.063763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320446, 35.874622, 33.016594>,  <33.642078, 35.650181, 32.937981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320446, 35.874622, 33.016594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256489, 0.029166, 0.966107,
		0.536352, 0.827233, -0.167368,
		-0.804077, 0.561102, 0.196533,
		33.079224, 36.042953, 33.075554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881939, 36.169987, 33.431465>,  <33.642078, 35.650181, 32.937981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881939, 36.169987, 33.431465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488049, 36.142532, 33.495480>,  <33.251717, 36.126060, 33.533890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488049, 36.142532, 33.495480>,  <33.881939, 36.169987, 33.431465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488049, 36.142532, 33.495480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141330, 0.221874, 0.964779,
		-0.101727, 0.972657, -0.208784,
		-0.984722, -0.068636, 0.160037,
		33.192631, 36.121941, 33.543491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369274, 36.275742, 32.926464>,  <33.881939, 36.169987, 33.431465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369274, 36.275742, 32.926464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751053, 36.355991, 32.838116>,  <34.980118, 36.404140, 32.785107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751053, 36.355991, 32.838116>,  <34.369274, 36.275742, 32.926464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751053, 36.355991, 32.838116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264749, 0.227949, -0.936988,
		-0.137632, 0.952780, 0.270679,
		0.954445, 0.200622, -0.220874,
		35.037388, 36.416180, 32.771854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325504, 36.729836, 32.498890>,  <34.369274, 36.275742, 32.926464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325504, 36.729836, 32.498890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706867, 36.639412, 32.418972>,  <34.935684, 36.585159, 32.371021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706867, 36.639412, 32.418972>,  <34.325504, 36.729836, 32.498890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706867, 36.639412, 32.418972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167922, 0.152553, -0.973925,
		0.250639, 0.962095, 0.107485,
		0.953406, -0.226054, -0.199792,
		34.992889, 36.571594, 32.359035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499908, 37.121307, 31.964643>,  <34.325504, 36.729836, 32.498890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499908, 37.121307, 31.964643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794491, 36.851807, 31.940340>,  <34.971241, 36.690105, 31.925758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794491, 36.851807, 31.940340>,  <34.499908, 37.121307, 31.964643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794491, 36.851807, 31.940340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050177, 0.143970, -0.988309,
		0.674619, 0.724800, 0.139834,
		0.736459, -0.673749, -0.060757,
		35.015427, 36.649681, 31.922113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179493, 37.474575, 31.657986>,  <34.499908, 37.121307, 31.964643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179493, 37.474575, 31.657986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199455, 37.080532, 31.592182>,  <35.211433, 36.844105, 31.552700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199455, 37.080532, 31.592182>,  <35.179493, 37.474575, 31.657986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199455, 37.080532, 31.592182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243578, 0.171747, -0.954554,
		0.968596, 0.007567, 0.248523,
		0.049906, -0.985112, -0.164511,
		35.214428, 36.785000, 31.542830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828289, 37.457314, 31.356548>,  <35.179493, 37.474575, 31.657986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828289, 37.457314, 31.356548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620438, 37.129684, 31.259295>,  <35.495728, 36.933109, 31.200943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620438, 37.129684, 31.259295>,  <35.828289, 37.457314, 31.356548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620438, 37.129684, 31.259295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450562, -0.020911, -0.892500,
		0.725936, -0.573313, 0.379907,
		-0.519626, -0.819070, -0.243133,
		35.464550, 36.883965, 31.186354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131390, 37.182442, 30.764708>,  <35.828289, 37.457314, 31.356548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131390, 37.182442, 30.764708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795990, 36.966160, 30.737713>,  <35.594749, 36.836391, 30.721516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795990, 36.966160, 30.737713>,  <36.131390, 37.182442, 30.764708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795990, 36.966160, 30.737713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084901, -0.007301, -0.996363,
		0.538244, -0.841182, 0.052029,
		-0.838502, -0.540703, -0.067488,
		35.544441, 36.803947, 30.717466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160027, 36.747395, 30.193655>,  <36.131390, 37.182442, 30.764708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160027, 36.747395, 30.193655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763832, 36.765198, 30.245737>,  <35.526115, 36.775879, 30.276987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763832, 36.765198, 30.245737>,  <36.160027, 36.747395, 30.193655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763832, 36.765198, 30.245737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130730, -0.009041, -0.991377,
		-0.042958, -0.998968, 0.014775,
		-0.990487, 0.044519, 0.130207,
		35.466686, 36.778549, 30.284800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823570, 36.221123, 29.733000>,  <36.160027, 36.747395, 30.193655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823570, 36.221123, 29.733000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550034, 36.497826, 29.825817>,  <35.385914, 36.663845, 29.881508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550034, 36.497826, 29.825817>,  <35.823570, 36.221123, 29.733000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550034, 36.497826, 29.825817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268535, 0.057094, -0.961576,
		-0.678422, -0.719874, 0.146717,
		-0.683837, 0.691753, 0.232045,
		35.344883, 36.705353, 29.895432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251690, 36.057419, 29.442871>,  <35.823570, 36.221123, 29.733000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251690, 36.057419, 29.442871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194775, 36.449322, 29.499203>,  <35.160625, 36.684464, 29.533001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194775, 36.449322, 29.499203>,  <35.251690, 36.057419, 29.442871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194775, 36.449322, 29.499203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398406, 0.073555, -0.914255,
		-0.906105, -0.186194, 0.379875,
		-0.142287, 0.979756, 0.140829,
		35.152088, 36.743248, 29.541451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580307, 36.276051, 28.981077>,  <35.251690, 36.057419, 29.442871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580307, 36.276051, 28.981077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760208, 36.614883, 29.094337>,  <34.868149, 36.818184, 29.162294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760208, 36.614883, 29.094337>,  <34.580307, 36.276051, 28.981077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760208, 36.614883, 29.094337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251441, 0.424283, -0.869920,
		-0.857032, 0.320050, 0.403812,
		0.449749, 0.847084, 0.283151,
		34.895134, 36.869007, 29.179283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048225, 36.798397, 28.792542>,  <34.580307, 36.276051, 28.981077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048225, 36.798397, 28.792542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414738, 36.956688, 28.817263>,  <34.634647, 37.051662, 28.832096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414738, 36.956688, 28.817263>,  <34.048225, 36.798397, 28.792542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414738, 36.956688, 28.817263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079792, 0.331563, -0.940053,
		-0.392500, 0.856424, 0.335383,
		0.916284, 0.395732, 0.061803,
		34.689625, 37.075409, 28.835804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100632, 37.449081, 28.367525>,  <34.048225, 36.798397, 28.792542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100632, 37.449081, 28.367525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487789, 37.360874, 28.415794>,  <34.720081, 37.307949, 28.444756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487789, 37.360874, 28.415794>,  <34.100632, 37.449081, 28.367525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487789, 37.360874, 28.415794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155306, 0.147113, -0.976851,
		0.197662, 0.964225, 0.176637,
		0.967889, -0.220519, 0.120671,
		34.778156, 37.294720, 28.451996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483715, 38.036812, 28.101173>,  <34.100632, 37.449081, 28.367525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483715, 38.036812, 28.101173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738148, 37.729282, 28.127422>,  <34.890808, 37.544765, 28.143171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738148, 37.729282, 28.127422>,  <34.483715, 38.036812, 28.101173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738148, 37.729282, 28.127422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292337, 0.161411, -0.942595,
		0.714098, 0.618753, 0.327426,
		0.636084, -0.768824, 0.065621,
		34.928974, 37.498634, 28.147108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027771, 38.279774, 27.692085>,  <34.483715, 38.036812, 28.101173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027771, 38.279774, 27.692085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070690, 37.882084, 27.693308>,  <35.096443, 37.643471, 27.694042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070690, 37.882084, 27.693308>,  <35.027771, 38.279774, 27.692085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070690, 37.882084, 27.693308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150611, 0.013215, -0.988505,
		0.982753, 0.106525, 0.151159,
		0.107299, -0.994222, 0.003056,
		35.102879, 37.583817, 27.694225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542534, 38.094250, 27.138842>,  <35.027771, 38.279774, 27.692085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542534, 38.094250, 27.138842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366806, 37.746231, 27.228306>,  <35.261368, 37.537422, 27.281984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366806, 37.746231, 27.228306>,  <35.542534, 38.094250, 27.138842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366806, 37.746231, 27.228306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056559, -0.275267, -0.959703,
		0.896548, -0.408967, 0.170139,
		-0.439321, -0.870042, 0.223660,
		35.235008, 37.485218, 27.295404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933548, 37.493465, 26.842625>,  <35.542534, 38.094250, 27.138842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933548, 37.493465, 26.842625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557693, 37.362247, 26.881538>,  <35.332180, 37.283516, 26.904886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557693, 37.362247, 26.881538>,  <35.933548, 37.493465, 26.842625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557693, 37.362247, 26.881538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069826, -0.462175, -0.884036,
		0.334966, -0.823882, 0.457183,
		-0.939639, -0.328045, 0.097284,
		35.275803, 37.263832, 26.910725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946594, 36.873085, 26.526575>,  <35.933548, 37.493465, 26.842625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946594, 36.873085, 26.526575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553024, 36.935726, 26.560902>,  <35.316883, 36.973312, 26.581497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553024, 36.935726, 26.560902>,  <35.946594, 36.873085, 26.526575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553024, 36.935726, 26.560902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126889, -0.274994, -0.953036,
		-0.125651, -0.948606, 0.290445,
		-0.983926, 0.156604, 0.085814,
		35.257847, 36.982708, 26.586645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620438, 36.236855, 26.293987>,  <35.946594, 36.873085, 26.526575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620438, 36.236855, 26.293987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325027, 36.506157, 26.279579>,  <35.147781, 36.667740, 26.270933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325027, 36.506157, 26.279579>,  <35.620438, 36.236855, 26.293987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325027, 36.506157, 26.279579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242636, -0.315247, -0.917468,
		-0.629050, -0.668835, 0.396176,
		-0.738528, 0.673260, -0.036023,
		35.103470, 36.708134, 26.268772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990433, 35.900269, 26.234903>,  <35.620438, 36.236855, 26.293987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990433, 35.900269, 26.234903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918930, 36.273182, 26.109112>,  <34.876030, 36.496929, 26.033636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918930, 36.273182, 26.109112>,  <34.990433, 35.900269, 26.234903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918930, 36.273182, 26.109112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168720, -0.343938, -0.923710,
		-0.969320, -0.112057, 0.218775,
		-0.178753, 0.932283, -0.314479,
		34.865303, 36.552868, 26.014769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400261, 35.871033, 25.861959>,  <34.990433, 35.900269, 26.234903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400261, 35.871033, 25.861959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572353, 36.206532, 25.728447>,  <34.675610, 36.407829, 25.648340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572353, 36.206532, 25.728447>,  <34.400261, 35.871033, 25.861959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572353, 36.206532, 25.728447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178680, -0.283313, -0.942235,
		-0.884861, 0.465015, 0.027978,
		0.430227, 0.838746, -0.333781,
		34.701420, 36.458157, 25.628313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931976, 36.145126, 25.349752>,  <34.400261, 35.871033, 25.861959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931976, 36.145126, 25.349752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304279, 36.278446, 25.289608>,  <34.527660, 36.358440, 25.253521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304279, 36.278446, 25.289608>,  <33.931976, 36.145126, 25.349752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304279, 36.278446, 25.289608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053694, -0.282174, -0.957860,
		-0.361684, 0.899605, -0.244738,
		0.930753, 0.333301, -0.150361,
		34.583504, 36.378437, 25.244499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923462, 36.443005, 24.617456>,  <33.931976, 36.145126, 25.349752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923462, 36.443005, 24.617456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310482, 36.385654, 24.700687>,  <34.542694, 36.351246, 24.750626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310482, 36.385654, 24.700687>,  <33.923462, 36.443005, 24.617456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310482, 36.385654, 24.700687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174089, -0.218644, -0.960150,
		0.183158, 0.965214, -0.186588,
		0.967547, -0.143376, 0.208080,
		34.600746, 36.342640, 24.763111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291969, 36.769905, 24.085760>,  <33.923462, 36.443005, 24.617456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291969, 36.769905, 24.085760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550556, 36.521030, 24.262377>,  <34.705708, 36.371704, 24.368347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550556, 36.521030, 24.262377>,  <34.291969, 36.769905, 24.085760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550556, 36.521030, 24.262377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252033, -0.372089, -0.893325,
		0.720109, 0.688790, -0.083732,
		0.646469, -0.622188, 0.441543,
		34.744495, 36.334373, 24.394840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862030, 36.819725, 23.738403>,  <34.291969, 36.769905, 24.085760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862030, 36.819725, 23.738403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957478, 36.465519, 23.897861>,  <35.014748, 36.252995, 23.993536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957478, 36.465519, 23.897861>,  <34.862030, 36.819725, 23.738403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957478, 36.465519, 23.897861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271002, -0.333475, -0.902969,
		0.932533, 0.323501, 0.160403,
		0.238621, -0.885518, 0.398645,
		35.029064, 36.199863, 24.017454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409554, 36.528156, 23.263279>,  <34.862030, 36.819725, 23.738403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409554, 36.528156, 23.263279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290405, 36.211723, 23.476995>,  <35.218918, 36.021866, 23.605225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290405, 36.211723, 23.476995>,  <35.409554, 36.528156, 23.263279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290405, 36.211723, 23.476995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260167, -0.605785, -0.751890,
		0.918470, -0.084959, 0.386257,
		-0.297869, -0.791079, 0.534291,
		35.201046, 35.974400, 23.637283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009354, 36.046215, 23.277643>,  <35.409554, 36.528156, 23.263279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009354, 36.046215, 23.277643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678654, 35.837746, 23.362368>,  <35.480236, 35.712662, 23.413202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678654, 35.837746, 23.362368>,  <36.009354, 36.046215, 23.277643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678654, 35.837746, 23.362368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298705, -0.725718, -0.619765,
		0.476723, -0.449119, 0.755663,
		-0.826747, -0.521177, 0.211813,
		35.430630, 35.681393, 23.425911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252701, 35.362225, 23.248365>,  <36.009354, 36.046215, 23.277643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252701, 35.362225, 23.248365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855606, 35.343124, 23.204193>,  <35.617348, 35.331665, 23.177691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855606, 35.343124, 23.204193>,  <36.252701, 35.362225, 23.248365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855606, 35.343124, 23.204193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108963, -0.746020, -0.656949,
		-0.051014, -0.664209, 0.745804,
		-0.992736, -0.047752, -0.110431,
		35.557785, 35.328800, 23.171064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213326, 34.718815, 23.352974>,  <36.252701, 35.362225, 23.248365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213326, 34.718815, 23.352974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889656, 34.834114, 23.148174>,  <35.695454, 34.903294, 23.025295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889656, 34.834114, 23.148174>,  <36.213326, 34.718815, 23.352974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889656, 34.834114, 23.148174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062546, -0.824187, -0.562853,
		-0.584224, -0.487472, 0.648886,
		-0.809179, 0.288247, -0.512000,
		35.646904, 34.920589, 22.994574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713982, 34.184143, 23.320797>,  <36.213326, 34.718815, 23.352974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713982, 34.184143, 23.320797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646915, 34.435963, 23.017336>,  <35.606674, 34.587055, 22.835260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646915, 34.435963, 23.017336>,  <35.713982, 34.184143, 23.320797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646915, 34.435963, 23.017336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149852, -0.744328, -0.650785,
		-0.974388, -0.222800, 0.030460,
		-0.167667, 0.629552, -0.758651,
		35.596615, 34.624828, 22.789740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257866, 33.780621, 22.845295>,  <35.713982, 34.184143, 23.320797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257866, 33.780621, 22.845295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407600, 34.083599, 22.631323>,  <35.497440, 34.265385, 22.502939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407600, 34.083599, 22.631323>,  <35.257866, 33.780621, 22.845295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407600, 34.083599, 22.631323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165790, -0.622245, -0.765065,
		-0.912352, 0.197705, -0.358505,
		0.374335, 0.757446, -0.534929,
		35.519901, 34.310833, 22.470844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005421, 33.641666, 22.199858>,  <35.257866, 33.780621, 22.845295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005421, 33.641666, 22.199858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306927, 33.895073, 22.130001>,  <35.487831, 34.047115, 22.088087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306927, 33.895073, 22.130001>,  <35.005421, 33.641666, 22.199858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306927, 33.895073, 22.130001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197585, -0.471945, -0.859202,
		-0.626736, 0.613131, -0.480908,
		0.753766, 0.633513, -0.174640,
		35.533058, 34.085125, 22.077610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919006, 33.897278, 21.452013>,  <35.005421, 33.641666, 22.199858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919006, 33.897278, 21.452013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302315, 33.947094, 21.554937>,  <35.532299, 33.976982, 21.616692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302315, 33.947094, 21.554937>,  <34.919006, 33.897278, 21.452013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302315, 33.947094, 21.554937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278310, -0.611992, -0.740276,
		0.065282, 0.780997, -0.621113,
		0.958270, 0.124536, 0.257311,
		35.589794, 33.984455, 21.632132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343582, 34.115509, 20.869387>,  <34.919006, 33.897278, 21.452013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343582, 34.115509, 20.869387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593678, 33.939930, 21.127502>,  <35.743736, 33.834583, 21.282372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593678, 33.939930, 21.127502>,  <35.343582, 34.115509, 20.869387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593678, 33.939930, 21.127502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507931, -0.398881, -0.763479,
		0.592523, 0.805120, -0.026441,
		0.625239, -0.438949, 0.645291,
		35.781250, 33.808247, 21.321091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979401, 34.151848, 20.530664>,  <35.343582, 34.115509, 20.869387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979401, 34.151848, 20.530664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012970, 33.843147, 20.782810>,  <36.033112, 33.657928, 20.934097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012970, 33.843147, 20.782810>,  <35.979401, 34.151848, 20.530664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012970, 33.843147, 20.782810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501040, -0.514132, -0.696152,
		0.861345, 0.374264, 0.343527,
		0.083926, -0.771748, 0.630366,
		36.038147, 33.611622, 20.971920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613625, 33.822495, 20.297865>,  <35.979401, 34.151848, 20.530664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613625, 33.822495, 20.297865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465912, 33.546406, 20.546776>,  <36.377285, 33.380753, 20.696121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465912, 33.546406, 20.546776>,  <36.613625, 33.822495, 20.297865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465912, 33.546406, 20.546776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410810, -0.721870, -0.556902,
		0.833587, 0.049985, 0.550121,
		-0.369279, -0.690222, 0.622276,
		36.355129, 33.339340, 20.733459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046196, 33.421875, 20.391165>,  <36.613625, 33.822495, 20.297865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046196, 33.421875, 20.391165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739742, 33.185421, 20.492046>,  <36.555870, 33.043549, 20.552576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739742, 33.185421, 20.492046>,  <37.046196, 33.421875, 20.391165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739742, 33.185421, 20.492046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328304, -0.697330, -0.637140,
		0.552504, -0.405333, 0.728316,
		-0.766130, -0.591132, 0.252205,
		36.509903, 33.008083, 20.567707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224659, 32.748695, 20.208227>,  <37.046196, 33.421875, 20.391165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224659, 32.748695, 20.208227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846909, 32.668201, 20.312275>,  <36.620258, 32.619904, 20.374704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846909, 32.668201, 20.312275>,  <37.224659, 32.748695, 20.208227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846909, 32.668201, 20.312275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000126, -0.791162, -0.611606,
		0.328875, -0.577552, 0.747178,
		-0.944374, -0.201236, 0.260121,
		36.563595, 32.607830, 20.390310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207150, 32.084579, 20.485231>,  <37.224659, 32.748695, 20.208227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207150, 32.084579, 20.485231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843544, 32.176224, 20.345974>,  <36.625381, 32.231213, 20.262419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843544, 32.176224, 20.345974>,  <37.207150, 32.084579, 20.485231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843544, 32.176224, 20.345974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035485, -0.789754, -0.612396,
		-0.415257, -0.569029, 0.709766,
		-0.909012, 0.229115, -0.348143,
		36.570839, 32.244957, 20.241531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219215, 31.606739, 19.834213>,  <37.207150, 32.084579, 20.485231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219215, 31.606739, 19.834213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474865, 31.342937, 19.992491>,  <37.628254, 31.184656, 20.087458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474865, 31.342937, 19.992491>,  <37.219215, 31.606739, 19.834213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474865, 31.342937, 19.992491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062933, 0.467917, 0.881529,
		-0.766522, -0.588311, 0.257554,
		0.639128, -0.659502, 0.395693,
		37.666603, 31.145086, 20.111198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896603, 31.414473, 20.443476>,  <37.219215, 31.606739, 19.834213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896603, 31.414473, 20.443476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274754, 31.300835, 20.507420>,  <37.501644, 31.232653, 20.545786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274754, 31.300835, 20.507420>,  <36.896603, 31.414473, 20.443476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274754, 31.300835, 20.507420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110388, 0.182418, 0.977005,
		-0.306722, -0.941283, 0.141094,
		0.945376, -0.284094, 0.159858,
		37.558365, 31.215607, 20.555376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842262, 30.980871, 21.063295>,  <36.896603, 31.414473, 20.443476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842262, 30.980871, 21.063295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228535, 31.077991, 21.026415>,  <37.460300, 31.136263, 21.004286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228535, 31.077991, 21.026415>,  <36.842262, 30.980871, 21.063295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228535, 31.077991, 21.026415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032023, 0.240986, 0.970000,
		0.257748, -0.939664, 0.224940,
		0.965681, 0.242812, -0.092204,
		37.518242, 31.150831, 20.998755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306416, 30.687551, 21.746408>,  <36.842262, 30.980871, 21.063295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306416, 30.687551, 21.746408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489014, 30.995089, 21.567301>,  <37.598572, 31.179611, 21.459837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489014, 30.995089, 21.567301>,  <37.306416, 30.687551, 21.746408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489014, 30.995089, 21.567301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094484, 0.458528, 0.883643,
		0.884697, -0.445683, 0.136671,
		0.456492, 0.768843, -0.447768,
		37.625961, 31.225740, 21.432970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825478, 30.791143, 22.200697>,  <37.306416, 30.687551, 21.746408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825478, 30.791143, 22.200697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822021, 31.134932, 21.996252>,  <37.819946, 31.341206, 21.873585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822021, 31.134932, 21.996252>,  <37.825478, 30.791143, 22.200697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822021, 31.134932, 21.996252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382531, 0.475093, 0.792437,
		0.923902, -0.188668, -0.332880,
		-0.008641, 0.859472, -0.511110,
		37.819427, 31.392773, 21.842918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443417, 31.021690, 22.315159>,  <37.825478, 30.791143, 22.200697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443417, 31.021690, 22.315159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257328, 31.364296, 22.225758>,  <38.145676, 31.569859, 22.172117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257328, 31.364296, 22.225758>,  <38.443417, 31.021690, 22.315159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257328, 31.364296, 22.225758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364232, 0.415349, 0.833559,
		0.806786, 0.306383, -0.505199,
		-0.465222, 0.856513, -0.223504,
		38.117760, 31.621250, 22.158707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945087, 31.539211, 22.363501>,  <38.443417, 31.021690, 22.315159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945087, 31.539211, 22.363501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593044, 31.727514, 22.388155>,  <38.381817, 31.840496, 22.402946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593044, 31.727514, 22.388155>,  <38.945087, 31.539211, 22.363501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593044, 31.727514, 22.388155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330996, 0.515317, 0.790500,
		0.340373, 0.716125, -0.609353,
		-0.880107, 0.470758, 0.061634,
		38.329014, 31.868742, 22.406645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089283, 32.185627, 22.413351>,  <38.945087, 31.539211, 22.363501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089283, 32.185627, 22.413351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721897, 32.191799, 22.571430>,  <38.501465, 32.195503, 22.666277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721897, 32.191799, 22.571430>,  <39.089283, 32.185627, 22.413351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721897, 32.191799, 22.571430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294696, 0.693119, 0.657830,
		-0.263769, 0.720658, -0.641154,
		-0.918466, 0.015430, 0.395198,
		38.446358, 32.196426, 22.689989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971870, 32.874088, 22.661768>,  <39.089283, 32.185627, 22.413351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971870, 32.874088, 22.661768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674137, 32.672836, 22.837414>,  <38.495495, 32.552086, 22.942801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674137, 32.672836, 22.837414>,  <38.971870, 32.874088, 22.661768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674137, 32.672836, 22.837414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015361, 0.644477, 0.764470,
		-0.667626, 0.575769, -0.471980,
		-0.744338, -0.503130, 0.439114,
		38.450836, 32.521896, 22.969149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454601, 33.391048, 22.873899>,  <38.971870, 32.874088, 22.661768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454601, 33.391048, 22.873899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353951, 33.076229, 23.099197>,  <38.293560, 32.887337, 23.234377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353951, 33.076229, 23.099197>,  <38.454601, 33.391048, 22.873899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353951, 33.076229, 23.099197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180655, 0.609937, 0.771583,
		-0.950815, 0.092396, -0.295659,
		-0.251624, -0.787045, 0.563246,
		38.278461, 32.840115, 23.268171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757450, 33.546440, 23.185232>,  <38.454601, 33.391048, 22.873899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757450, 33.546440, 23.185232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954590, 33.281754, 23.411234>,  <38.072872, 33.122940, 23.546835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954590, 33.281754, 23.411234>,  <37.757450, 33.546440, 23.185232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954590, 33.281754, 23.411234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247885, 0.515656, 0.820154,
		-0.834057, -0.544269, 0.090111,
		0.492851, -0.661718, 0.565002,
		38.102444, 33.083237, 23.580734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241188, 33.278927, 23.683020>,  <37.757450, 33.546440, 23.185232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241188, 33.278927, 23.683020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612907, 33.219475, 23.818264>,  <37.835938, 33.183804, 23.899410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612907, 33.219475, 23.818264>,  <37.241188, 33.278927, 23.683020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612907, 33.219475, 23.818264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246135, 0.433313, 0.866982,
		-0.275365, -0.888903, 0.366094,
		0.929296, -0.148628, 0.338110,
		37.891697, 33.174885, 23.919697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099628, 33.115170, 24.390238>,  <37.241188, 33.278927, 23.683020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099628, 33.115170, 24.390238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482761, 33.230049, 24.393829>,  <37.712639, 33.298977, 24.395985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482761, 33.230049, 24.393829>,  <37.099628, 33.115170, 24.390238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482761, 33.230049, 24.393829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174404, 0.556256, 0.812504,
		0.228351, -0.779807, 0.582886,
		0.957830, 0.287194, 0.008979,
		37.770111, 33.316208, 24.396523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400978, 33.060940, 25.111582>,  <37.099628, 33.115170, 24.390238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400978, 33.060940, 25.111582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641941, 33.313831, 24.916691>,  <37.786518, 33.465565, 24.799757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641941, 33.313831, 24.916691>,  <37.400978, 33.060940, 25.111582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641941, 33.313831, 24.916691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039017, 0.633011, 0.773159,
		0.797234, -0.446747, 0.405999,
		0.602408, 0.632230, -0.487227,
		37.822662, 33.503502, 24.770523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877701, 33.228413, 25.519083>,  <37.400978, 33.060940, 25.111582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877701, 33.228413, 25.519083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891014, 33.527153, 25.253422>,  <37.899002, 33.706398, 25.094025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891014, 33.527153, 25.253422>,  <37.877701, 33.228413, 25.519083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891014, 33.527153, 25.253422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009311, 0.664263, 0.747441,
		0.999402, -0.031065, 0.015158,
		0.033288, 0.746853, -0.664155,
		37.901001, 33.751209, 25.054174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441982, 33.591843, 25.752085>,  <37.877701, 33.228413, 25.519083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441982, 33.591843, 25.752085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219776, 33.813633, 25.504227>,  <38.086452, 33.946709, 25.355513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219776, 33.813633, 25.504227>,  <38.441982, 33.591843, 25.752085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219776, 33.813633, 25.504227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209692, 0.627703, 0.749679,
		0.804634, 0.546390, -0.232426,
		-0.555511, 0.554479, -0.619645,
		38.053123, 33.979977, 25.318333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748425, 34.263870, 25.805958>,  <38.441982, 33.591843, 25.752085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748425, 34.263870, 25.805958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371330, 34.284355, 25.674128>,  <38.145073, 34.296646, 25.595030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371330, 34.284355, 25.674128>,  <38.748425, 34.263870, 25.805958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371330, 34.284355, 25.674128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216183, 0.658640, 0.720735,
		0.253981, 0.750714, -0.609854,
		-0.942740, 0.051213, -0.329573,
		38.088509, 34.299721, 25.575256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591579, 35.056545, 25.625994>,  <38.748425, 34.263870, 25.805958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591579, 35.056545, 25.625994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262379, 34.845409, 25.709938>,  <38.064857, 34.718727, 25.760305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262379, 34.845409, 25.709938>,  <38.591579, 35.056545, 25.625994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262379, 34.845409, 25.709938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242145, 0.660218, 0.710970,
		-0.513835, 0.534316, -0.671178,
		-0.823006, -0.527843, 0.209861,
		38.015476, 34.687057, 25.772896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052853, 35.527699, 25.588383>,  <38.591579, 35.056545, 25.625994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052853, 35.527699, 25.588383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902287, 35.222786, 25.798994>,  <37.811947, 35.039837, 25.925360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902287, 35.222786, 25.798994>,  <38.052853, 35.527699, 25.588383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902287, 35.222786, 25.798994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368618, 0.644636, 0.669750,
		-0.849959, 0.058019, -0.523645,
		-0.376419, -0.762285, 0.526527,
		37.789360, 34.994099, 25.956951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392353, 35.843182, 25.916302>,  <38.052853, 35.527699, 25.588383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392353, 35.843182, 25.916302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448441, 35.519081, 26.143927>,  <37.482094, 35.324619, 26.280502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448441, 35.519081, 26.143927>,  <37.392353, 35.843182, 25.916302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448441, 35.519081, 26.143927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352438, 0.496253, 0.793423,
		-0.925271, -0.311810, -0.215981,
		0.140217, -0.810251, 0.569062,
		37.490505, 35.276005, 26.314646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840179, 35.788162, 26.451237>,  <37.392353, 35.843182, 25.916302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840179, 35.788162, 26.451237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162189, 35.600342, 26.596264>,  <37.355396, 35.487648, 26.683281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162189, 35.600342, 26.596264>,  <36.840179, 35.788162, 26.451237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162189, 35.600342, 26.596264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093914, 0.502588, 0.859410,
		-0.585764, -0.725894, 0.360497,
		0.805022, -0.469555, 0.362569,
		37.403698, 35.459476, 26.705034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575821, 35.469791, 27.075521>,  <36.840179, 35.788162, 26.451237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575821, 35.469791, 27.075521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971741, 35.467937, 27.132473>,  <37.209293, 35.466827, 27.166643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971741, 35.467937, 27.132473>,  <36.575821, 35.469791, 27.075521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971741, 35.467937, 27.132473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135472, 0.278443, 0.950850,
		-0.044050, -0.960442, 0.274976,
		0.989801, -0.004633, 0.142379,
		37.268681, 35.466549, 27.175186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763767, 35.082680, 27.668503>,  <36.575821, 35.469791, 27.075521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763767, 35.082680, 27.668503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098839, 35.298065, 27.631924>,  <37.299881, 35.427296, 27.609976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098839, 35.298065, 27.631924>,  <36.763767, 35.082680, 27.668503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098839, 35.298065, 27.631924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120928, 0.346132, 0.930359,
		0.532615, -0.768279, 0.355061,
		0.837674, 0.538460, -0.091449,
		37.350140, 35.459602, 27.604488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217117, 34.817577, 28.143423>,  <36.763767, 35.082680, 27.668503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217117, 34.817577, 28.143423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334332, 35.192558, 28.068253>,  <37.404659, 35.417545, 28.023149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334332, 35.192558, 28.068253>,  <37.217117, 34.817577, 28.143423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334332, 35.192558, 28.068253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023385, 0.203524, 0.978791,
		0.955816, -0.282424, 0.081562,
		0.293033, 0.937451, -0.187927,
		37.422241, 35.473793, 28.011875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558117, 34.991016, 28.794222>,  <37.217117, 34.817577, 28.143423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558117, 34.991016, 28.794222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511631, 35.330505, 28.587856>,  <37.483742, 35.534199, 28.464037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511631, 35.330505, 28.587856>,  <37.558117, 34.991016, 28.794222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511631, 35.330505, 28.587856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078619, 0.525662, 0.847053,
		0.990108, 0.057876, -0.127813,
		-0.116210, 0.848723, -0.515912,
		37.476768, 35.585121, 28.433083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173138, 35.391594, 28.813210>,  <37.558117, 34.991016, 28.794222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173138, 35.391594, 28.813210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874699, 35.652149, 28.758038>,  <37.695633, 35.808483, 28.724934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874699, 35.652149, 28.758038>,  <38.173138, 35.391594, 28.813210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874699, 35.652149, 28.758038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242159, 0.458435, 0.855100,
		0.620235, 0.604591, -0.499778,
		-0.746102, 0.651389, -0.137931,
		37.650867, 35.847565, 28.716658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489441, 35.943012, 28.998602>,  <38.173138, 35.391594, 28.813210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489441, 35.943012, 28.998602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103970, 36.046638, 29.024527>,  <37.872684, 36.108814, 29.040081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103970, 36.046638, 29.024527>,  <38.489441, 35.943012, 28.998602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103970, 36.046638, 29.024527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220369, 0.634370, 0.740954,
		0.150844, 0.728326, -0.668422,
		-0.963682, 0.259068, 0.064810,
		37.814865, 36.124359, 29.043970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473473, 36.685234, 28.987860>,  <38.489441, 35.943012, 28.998602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473473, 36.685234, 28.987860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104023, 36.606342, 29.119322>,  <37.882351, 36.559006, 29.198198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104023, 36.606342, 29.119322>,  <38.473473, 36.685234, 28.987860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104023, 36.606342, 29.119322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150335, 0.602333, 0.783961,
		-0.352583, 0.773495, -0.526679,
		-0.923626, -0.197233, 0.328656,
		37.826935, 36.547173, 29.217918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143578, 37.307899, 29.199842>,  <38.473473, 36.685234, 28.987860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143578, 37.307899, 29.199842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918343, 37.049778, 29.406345>,  <37.783203, 36.894905, 29.530247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918343, 37.049778, 29.406345>,  <38.143578, 37.307899, 29.199842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918343, 37.049778, 29.406345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042024, 0.601538, 0.797738,
		-0.825328, 0.470891, -0.311600,
		-0.563087, -0.645301, 0.516255,
		37.749416, 36.856186, 29.561222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657940, 37.653114, 29.616991>,  <38.143578, 37.307899, 29.199842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657940, 37.653114, 29.616991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680653, 37.292412, 29.788391>,  <37.694283, 37.075989, 29.891232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680653, 37.292412, 29.788391>,  <37.657940, 37.653114, 29.616991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680653, 37.292412, 29.788391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019646, 0.430119, 0.902559,
		-0.998193, -0.042833, 0.042140,
		0.056784, -0.901756, 0.428500,
		37.697689, 37.021885, 29.916941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249382, 37.764042, 30.201298>,  <37.657940, 37.653114, 29.616991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249382, 37.764042, 30.201298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490856, 37.449051, 30.251003>,  <37.635742, 37.260056, 30.280827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490856, 37.449051, 30.251003>,  <37.249382, 37.764042, 30.201298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490856, 37.449051, 30.251003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235188, 0.324850, 0.916056,
		-0.761742, -0.523784, 0.381313,
		0.603685, -0.787479, 0.124263,
		37.671963, 37.212807, 30.288282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235622, 37.667038, 30.972750>,  <37.249382, 37.764042, 30.201298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235622, 37.667038, 30.972750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547932, 37.468422, 30.821049>,  <37.735317, 37.349251, 30.730028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547932, 37.468422, 30.821049>,  <37.235622, 37.667038, 30.972750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547932, 37.468422, 30.821049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452082, 0.029975, 0.891473,
		-0.431287, -0.867494, 0.247882,
		0.780778, -0.496543, -0.379251,
		37.782166, 37.319458, 30.707273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436203, 37.177517, 31.504799>,  <37.235622, 37.667038, 30.972750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436203, 37.177517, 31.504799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752010, 37.199017, 31.260248>,  <37.941494, 37.211918, 31.113518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752010, 37.199017, 31.260248>,  <37.436203, 37.177517, 31.504799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752010, 37.199017, 31.260248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609753, -0.181956, 0.771423,
		-0.069780, -0.981836, -0.176431,
		0.789514, 0.053749, -0.611374,
		37.988865, 37.215141, 31.076836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931938, 36.557076, 31.577547>,  <37.436203, 37.177517, 31.504799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931938, 36.557076, 31.577547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132915, 36.869846, 31.429958>,  <38.253502, 37.057510, 31.341404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132915, 36.869846, 31.429958>,  <37.931938, 36.557076, 31.577547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132915, 36.869846, 31.429958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618782, -0.027145, 0.785094,
		0.603870, -0.622779, -0.497481,
		0.502444, 0.781926, -0.368973,
		38.283649, 37.104424, 31.319267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642166, 36.454449, 31.650747>,  <37.931938, 36.557076, 31.577547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642166, 36.454449, 31.650747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627213, 36.850288, 31.595194>,  <38.618240, 37.087791, 31.561863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627213, 36.850288, 31.595194>,  <38.642166, 36.454449, 31.650747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627213, 36.850288, 31.595194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707897, 0.124323, 0.695288,
		0.705325, -0.072319, -0.705185,
		-0.037388, 0.989603, -0.138882,
		38.615997, 37.147171, 31.553530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276054, 36.583622, 31.560059>,  <38.642166, 36.454449, 31.650747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276054, 36.583622, 31.560059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125900, 36.941002, 31.658712>,  <39.035809, 37.155430, 31.717905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125900, 36.941002, 31.658712>,  <39.276054, 36.583622, 31.560059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125900, 36.941002, 31.658712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764714, 0.148192, 0.627097,
		0.523732, 0.424009, -0.738864,
		-0.375389, 0.893451, 0.246633,
		39.013283, 37.209038, 31.732702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911381, 36.940941, 31.658636>,  <39.276054, 36.583622, 31.560059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911381, 36.940941, 31.658636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631737, 37.171505, 31.827869>,  <39.463951, 37.309841, 31.929409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631737, 37.171505, 31.827869>,  <39.911381, 36.940941, 31.658636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631737, 37.171505, 31.827869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643847, 0.250143, 0.723111,
		0.310976, 0.777935, -0.545996,
		-0.699110, 0.576408, 0.423082,
		39.422005, 37.344429, 31.954794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145214, 37.581070, 31.860323>,  <39.911381, 36.940941, 31.658636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145214, 37.581070, 31.860323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829849, 37.561562, 32.105606>,  <39.640629, 37.549854, 32.252777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829849, 37.561562, 32.105606>,  <40.145214, 37.581070, 31.860323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829849, 37.561562, 32.105606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602036, 0.143497, 0.785469,
		-0.126305, 0.988448, -0.083771,
		-0.788416, -0.048776, 0.613206,
		39.593323, 37.546928, 32.289566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241463, 38.090992, 32.282127>,  <40.145214, 37.581070, 31.860323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241463, 38.090992, 32.282127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987286, 37.853058, 32.479057>,  <39.834782, 37.710297, 32.597214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987286, 37.853058, 32.479057>,  <40.241463, 38.090992, 32.282127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987286, 37.853058, 32.479057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468543, 0.209754, 0.858179,
		-0.613746, 0.775995, 0.145422,
		-0.635440, -0.594840, 0.492322,
		39.796654, 37.674606, 32.626755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155514, 38.409836, 32.869678>,  <40.241463, 38.090992, 32.282127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155514, 38.409836, 32.869678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027267, 38.042999, 32.964458>,  <39.950317, 37.822899, 33.021328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027267, 38.042999, 32.964458>,  <40.155514, 38.409836, 32.869678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027267, 38.042999, 32.964458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371475, 0.108376, 0.922096,
		-0.871326, 0.383664, 0.305929,
		-0.320620, -0.917091, 0.236953,
		39.931080, 37.767872, 33.035545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692268, 38.265160, 33.443794>,  <40.155514, 38.409836, 32.869678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692268, 38.265160, 33.443794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867416, 37.905609, 33.436924>,  <39.972504, 37.689880, 33.432800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867416, 37.905609, 33.436924>,  <39.692268, 38.265160, 33.443794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867416, 37.905609, 33.436924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365110, 0.160334, 0.917054,
		-0.821563, -0.407820, 0.398393,
		0.437869, -0.898875, -0.017175,
		39.998775, 37.635948, 33.431770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630299, 38.119118, 34.090763>,  <39.692268, 38.265160, 33.443794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630299, 38.119118, 34.090763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901638, 37.860146, 33.951805>,  <40.064442, 37.704762, 33.868431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901638, 37.860146, 33.951805>,  <39.630299, 38.119118, 34.090763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901638, 37.860146, 33.951805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340328, -0.142161, 0.929498,
		-0.651173, -0.748746, 0.123906,
		0.678344, -0.647433, -0.347391,
		40.105141, 37.665916, 33.847588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463993, 37.474648, 34.349796>,  <39.630299, 38.119118, 34.090763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463993, 37.474648, 34.349796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856037, 37.461281, 34.271557>,  <40.091263, 37.453262, 34.224613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856037, 37.461281, 34.271557>,  <39.463993, 37.474648, 34.349796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856037, 37.461281, 34.271557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167573, -0.388538, 0.906067,
		-0.106275, -0.920826, -0.375212,
		0.980115, -0.033416, -0.195598,
		40.150070, 37.451256, 34.212879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729046, 36.930786, 34.778267>,  <39.463993, 37.474648, 34.349796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729046, 36.930786, 34.778267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083416, 37.043640, 34.631004>,  <40.296040, 37.111351, 34.542648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083416, 37.043640, 34.631004>,  <39.729046, 36.930786, 34.778267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083416, 37.043640, 34.631004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460702, -0.443247, 0.768951,
		0.053761, -0.850843, -0.522662,
		0.885925, 0.282131, -0.368156,
		40.349194, 37.128281, 34.520557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272717, 36.275368, 34.694405>,  <39.729046, 36.930786, 34.778267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272717, 36.275368, 34.694405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435787, 36.637817, 34.739563>,  <40.533630, 36.855286, 34.766659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435787, 36.637817, 34.739563>,  <40.272717, 36.275368, 34.694405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435787, 36.637817, 34.739563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424442, -0.297509, 0.855183,
		0.808487, -0.300718, -0.505883,
		0.407673, 0.906122, 0.112895,
		40.558090, 36.909653, 34.773430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017612, 36.153210, 34.789970>,  <40.272717, 36.275368, 34.694405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017612, 36.153210, 34.789970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903229, 36.495583, 34.962299>,  <40.834599, 36.701004, 35.065697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903229, 36.495583, 34.962299>,  <41.017612, 36.153210, 34.789970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903229, 36.495583, 34.962299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430029, -0.287157, 0.855930,
		0.856330, 0.430030, -0.285958,
		-0.285961, 0.855929, 0.430827,
		40.817440, 36.752361, 35.091549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557388, 36.208111, 35.363262>,  <41.017612, 36.153210, 34.789970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557388, 36.208111, 35.363262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308575, 36.507694, 35.454601>,  <41.159286, 36.687443, 35.509403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308575, 36.507694, 35.454601>,  <41.557388, 36.208111, 35.363262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308575, 36.507694, 35.454601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384887, 0.038502, 0.922160,
		0.681866, 0.661500, -0.312213,
		-0.622030, 0.748956, 0.228349,
		41.121967, 36.732380, 35.523106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977024, 36.732639, 35.582188>,  <41.557388, 36.208111, 35.363262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977024, 36.732639, 35.582188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614975, 36.765270, 35.749084>,  <41.397743, 36.784847, 35.849224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614975, 36.765270, 35.749084>,  <41.977024, 36.732639, 35.582188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614975, 36.765270, 35.749084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425071, 0.155204, 0.891754,
		0.007989, 0.984508, -0.175155,
		-0.905124, 0.081578, 0.417247,
		41.343437, 36.789745, 35.874260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882980, 37.318806, 35.966881>,  <41.977024, 36.732639, 35.582188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882980, 37.318806, 35.966881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629990, 37.072651, 36.155041>,  <41.478195, 36.924957, 36.267937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629990, 37.072651, 36.155041>,  <41.882980, 37.318806, 35.966881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629990, 37.072651, 36.155041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374373, 0.288793, 0.881161,
		-0.678099, 0.733419, 0.047728,
		-0.632477, -0.615382, 0.470402,
		41.440247, 36.888035, 36.296162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724598, 37.664154, 36.601631>,  <41.882980, 37.318806, 35.966881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724598, 37.664154, 36.601631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589642, 37.294804, 36.674889>,  <41.508667, 37.073193, 36.718842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589642, 37.294804, 36.674889>,  <41.724598, 37.664154, 36.601631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589642, 37.294804, 36.674889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519472, -0.020378, 0.854244,
		-0.785059, 0.383351, 0.486544,
		-0.337390, -0.923378, 0.183142,
		41.488426, 37.017792, 36.729832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360672, 37.659039, 37.212902>,  <41.724598, 37.664154, 36.601631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360672, 37.659039, 37.212902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514034, 37.296680, 37.140953>,  <41.606052, 37.079266, 37.097782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514034, 37.296680, 37.140953>,  <41.360672, 37.659039, 37.212902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514034, 37.296680, 37.140953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463121, 0.020077, 0.886067,
		-0.799072, -0.423030, 0.427236,
		0.383410, -0.905893, -0.179871,
		41.629059, 37.024914, 37.086990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281185, 37.292950, 37.793648>,  <41.360672, 37.659039, 37.212902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281185, 37.292950, 37.793648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580097, 37.095291, 37.615936>,  <41.759445, 36.976696, 37.509308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580097, 37.095291, 37.615936>,  <41.281185, 37.292950, 37.793648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580097, 37.095291, 37.615936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476080, -0.068304, 0.876745,
		-0.463588, -0.866691, 0.184212,
		0.747285, -0.494148, -0.444279,
		41.804283, 36.947048, 37.482651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323334, 36.543892, 38.093506>,  <41.281185, 37.292950, 37.793648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323334, 36.543892, 38.093506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681877, 36.682224, 37.982548>,  <41.897003, 36.765224, 37.915974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681877, 36.682224, 37.982548>,  <41.323334, 36.543892, 38.093506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681877, 36.682224, 37.982548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267263, 0.077687, 0.960487,
		0.353717, -0.935075, -0.022793,
		0.896356, 0.345833, -0.277391,
		41.950783, 36.785973, 37.899330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623253, 36.677315, 38.735680>,  <41.323334, 36.543892, 38.093506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623253, 36.677315, 38.735680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907074, 36.774956, 38.471272>,  <42.077366, 36.833542, 38.312626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907074, 36.774956, 38.471272>,  <41.623253, 36.677315, 38.735680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907074, 36.774956, 38.471272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627096, 0.209092, 0.750354,
		0.321379, -0.946939, -0.004716,
		0.709553, 0.244106, -0.661019,
		42.119942, 36.848186, 38.272964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253109, 36.333412, 38.944405>,  <41.623253, 36.677315, 38.735680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253109, 36.333412, 38.944405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392708, 36.614471, 38.696377>,  <42.476467, 36.783108, 38.547562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392708, 36.614471, 38.696377>,  <42.253109, 36.333412, 38.944405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392708, 36.614471, 38.696377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781862, 0.146448, 0.606008,
		0.516620, -0.696300, -0.498267,
		0.348993, 0.702652, -0.620068,
		42.497406, 36.825268, 38.510357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913624, 36.220901, 38.520554>,  <42.253109, 36.333412, 38.944405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913624, 36.220901, 38.520554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868198, 36.611584, 38.593384>,  <42.840942, 36.845993, 38.637081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868198, 36.611584, 38.593384>,  <42.913624, 36.220901, 38.520554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868198, 36.611584, 38.593384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843025, -0.002250, 0.537869,
		0.525749, 0.214575, -0.823131,
		-0.113561, 0.976705, 0.182076,
		42.834129, 36.904594, 38.648006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647964, 36.453369, 38.769035>,  <42.913624, 36.220901, 38.520554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647964, 36.453369, 38.769035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466957, 36.805439, 38.826324>,  <43.358353, 37.016682, 38.860699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466957, 36.805439, 38.826324>,  <43.647964, 36.453369, 38.769035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466957, 36.805439, 38.826324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743252, 0.283519, 0.605965,
		0.492750, 0.380664, -0.782491,
		-0.452520, 0.880177, 0.143225,
		43.331200, 37.069492, 38.869293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189236, 36.948292, 38.781719>,  <43.647964, 36.453369, 38.769035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189236, 36.948292, 38.781719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901428, 37.175182, 38.941990>,  <43.728745, 37.311317, 39.038151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901428, 37.175182, 38.941990>,  <44.189236, 36.948292, 38.781719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901428, 37.175182, 38.941990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668941, 0.411091, 0.619292,
		0.186563, 0.713624, -0.675230,
		-0.719522, 0.567226, 0.400678,
		43.685570, 37.345348, 39.062195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455193, 37.667412, 38.803169>,  <44.189236, 36.948292, 38.781719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455193, 37.667412, 38.803169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166199, 37.650043, 39.079178>,  <43.992802, 37.639622, 39.244781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166199, 37.650043, 39.079178>,  <44.455193, 37.667412, 38.803169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166199, 37.650043, 39.079178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499321, 0.657546, 0.564192,
		-0.478222, 0.752162, -0.453383,
		-0.722484, -0.043425, 0.690023,
		43.949455, 37.637016, 39.286186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204838, 38.386196, 39.038429>,  <44.455193, 37.667412, 38.803169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204838, 38.386196, 39.038429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175446, 38.098267, 39.314533>,  <44.157810, 37.925510, 39.480194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175446, 38.098267, 39.314533>,  <44.204838, 38.386196, 39.038429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175446, 38.098267, 39.314533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515691, 0.564991, 0.644086,
		-0.853617, 0.403292, 0.329687,
		-0.073485, -0.719820, 0.690260,
		44.153400, 37.882320, 39.521610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194241, 38.832409, 39.527229>,  <44.204838, 38.386196, 39.038429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194241, 38.832409, 39.527229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274223, 38.465824, 39.665863>,  <44.322212, 38.245872, 39.749043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274223, 38.465824, 39.665863>,  <44.194241, 38.832409, 39.527229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274223, 38.465824, 39.665863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408647, 0.399499, 0.820614,
		-0.890519, -0.022459, 0.454392,
		0.199959, -0.916459, 0.346583,
		44.334209, 38.190887, 39.769836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739933, 38.724609, 39.955399>,  <44.194241, 38.832409, 39.527229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739933, 38.724609, 39.955399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674118, 38.795525, 39.567276>,  <44.634628, 38.838074, 39.334404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674118, 38.795525, 39.567276>,  <44.739933, 38.724609, 39.955399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674118, 38.795525, 39.567276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225457, 0.950913, 0.211975,
		0.960259, 0.253640, -0.116491,
		-0.164538, 0.177287, -0.970307,
		44.624756, 38.848709, 39.276184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212582, 38.160091, 40.335533>,  <44.739933, 38.724609, 39.955399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212582, 38.160091, 40.335533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885555, 38.084427, 40.553085>,  <44.689339, 38.039028, 40.683617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885555, 38.084427, 40.553085>,  <45.212582, 38.160091, 40.335533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885555, 38.084427, 40.553085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530796, -0.118639, -0.839155,
		0.223265, -0.974752, -0.003414,
		-0.817562, -0.189167, 0.543882,
		44.640285, 38.027676, 40.716251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916977, 37.504292, 40.138222>,  <45.212582, 38.160091, 40.335533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916977, 37.504292, 40.138222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624683, 37.724579, 40.299583>,  <44.449306, 37.856750, 40.396400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624683, 37.724579, 40.299583>,  <44.916977, 37.504292, 40.138222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624683, 37.724579, 40.299583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545080, -0.114921, -0.830470,
		-0.410999, -0.826739, 0.384165,
		-0.730731, 0.550723, 0.403407,
		44.405464, 37.889793, 40.420605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406288, 37.013210, 40.363747>,  <44.916977, 37.504292, 40.138222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406288, 37.013210, 40.363747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287388, 37.383690, 40.270969>,  <44.216045, 37.605976, 40.215302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287388, 37.383690, 40.270969>,  <44.406288, 37.013210, 40.363747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287388, 37.383690, 40.270969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634812, -0.373173, -0.676576,
		-0.713199, -0.053872, 0.698888,
		-0.297255, 0.926196, -0.231948,
		44.198212, 37.661549, 40.201385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705452, 37.082863, 40.439785>,  <44.406288, 37.013210, 40.363747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705452, 37.082863, 40.439785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831299, 37.358402, 40.178555>,  <43.906807, 37.523724, 40.021816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831299, 37.358402, 40.178555>,  <43.705452, 37.082863, 40.439785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831299, 37.358402, 40.178555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654197, -0.341161, -0.675008,
		-0.687780, 0.639610, 0.343304,
		0.314620, 0.688845, -0.653075,
		43.925686, 37.565056, 39.982632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103413, 37.470470, 40.252243>,  <43.705452, 37.082863, 40.439785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103413, 37.470470, 40.252243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367504, 37.523411, 39.956520>,  <43.525959, 37.555176, 39.779087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367504, 37.523411, 39.956520>,  <43.103413, 37.470470, 40.252243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367504, 37.523411, 39.956520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669713, -0.341834, -0.659268,
		-0.339974, 0.930395, -0.137054,
		0.660229, 0.132347, -0.739312,
		43.565575, 37.563114, 39.734726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793594, 38.017178, 39.704800>,  <43.103413, 37.470470, 40.252243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793594, 38.017178, 39.704800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055946, 37.787163, 39.509190>,  <43.213356, 37.649155, 39.391823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055946, 37.787163, 39.509190>,  <42.793594, 38.017178, 39.704800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055946, 37.787163, 39.509190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671651, -0.148868, -0.725757,
		0.344540, 0.804466, -0.483867,
		0.655879, -0.575042, -0.489029,
		43.252708, 37.614651, 39.362480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692280, 38.253422, 39.037922>,  <42.793594, 38.017178, 39.704800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692280, 38.253422, 39.037922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884209, 37.903755, 39.007977>,  <42.999367, 37.693954, 38.990009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884209, 37.903755, 39.007977>,  <42.692280, 38.253422, 39.037922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884209, 37.903755, 39.007977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678902, -0.315876, -0.662807,
		0.555756, 0.368855, -0.745038,
		0.479820, -0.874167, -0.074867,
		43.028156, 37.641506, 38.985516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616486, 38.121193, 38.379345>,  <42.692280, 38.253422, 39.037922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616486, 38.121193, 38.379345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705715, 37.751152, 38.502262>,  <42.759251, 37.529129, 38.576012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705715, 37.751152, 38.502262>,  <42.616486, 38.121193, 38.379345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705715, 37.751152, 38.502262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487458, -0.378854, -0.786673,
		0.844171, 0.025690, -0.535459,
		0.223071, -0.925100, 0.307295,
		42.772636, 37.473621, 38.594452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964657, 37.870667, 37.870430>,  <42.616486, 38.121193, 38.379345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964657, 37.870667, 37.870430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807384, 37.557358, 38.063049>,  <42.713020, 37.369373, 38.178623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807384, 37.557358, 38.063049>,  <42.964657, 37.870667, 37.870430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807384, 37.557358, 38.063049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441038, -0.298886, -0.846258,
		0.806781, -0.545113, -0.227939,
		-0.393178, -0.783274, 0.481552,
		42.689430, 37.322376, 38.207516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159409, 37.259163, 37.539436>,  <42.964657, 37.870667, 37.870430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159409, 37.259163, 37.539436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822010, 37.163960, 37.732048>,  <42.619572, 37.106838, 37.847614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822010, 37.163960, 37.732048>,  <43.159409, 37.259163, 37.539436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822010, 37.163960, 37.732048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281771, -0.567148, -0.773918,
		0.457299, -0.788475, 0.411321,
		-0.843494, -0.238013, 0.481525,
		42.568962, 37.092556, 37.876507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805107, 36.951302, 37.037052>,  <43.159409, 37.259163, 37.539436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805107, 36.951302, 37.037052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565521, 36.863365, 37.345055>,  <42.421772, 36.810604, 37.529858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565521, 36.863365, 37.345055>,  <42.805107, 36.951302, 37.037052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565521, 36.863365, 37.345055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596882, -0.518460, -0.612317,
		0.533834, -0.826358, 0.179314,
		-0.598960, -0.219846, 0.770010,
		42.385834, 36.797413, 37.576057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631687, 36.177025, 36.997005>,  <42.805107, 36.951302, 37.037052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631687, 36.177025, 36.997005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341362, 36.329090, 37.226326>,  <42.167168, 36.420330, 37.363918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341362, 36.329090, 37.226326>,  <42.631687, 36.177025, 36.997005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341362, 36.329090, 37.226326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678218, -0.256178, -0.688762,
		-0.114970, -0.888737, 0.443767,
		-0.725811, 0.380158, 0.573305,
		42.123619, 36.443138, 37.398315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053139, 35.776081, 36.882061>,  <42.631687, 36.177025, 36.997005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053139, 35.776081, 36.882061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907883, 36.139385, 36.965187>,  <41.820728, 36.357368, 37.015064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907883, 36.139385, 36.965187>,  <42.053139, 35.776081, 36.882061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907883, 36.139385, 36.965187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617727, -0.067718, -0.783471,
		-0.697525, -0.412884, 0.585650,
		-0.363142, 0.908263, 0.207815,
		41.798939, 36.411865, 37.027531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276211, 35.756954, 37.003944>,  <42.053139, 35.776081, 36.882061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276211, 35.756954, 37.003944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359261, 36.131237, 36.889854>,  <41.409092, 36.355804, 36.821400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359261, 36.131237, 36.889854>,  <41.276211, 35.756954, 37.003944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359261, 36.131237, 36.889854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729136, -0.046340, -0.682799,
		-0.652114, 0.349732, 0.672633,
		0.207627, 0.935703, -0.285221,
		41.421547, 36.411949, 36.804287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639927, 36.117966, 36.931831>,  <41.276211, 35.756954, 37.003944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639927, 36.117966, 36.931831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900711, 36.340851, 36.726124>,  <41.057182, 36.474583, 36.602699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900711, 36.340851, 36.726124>,  <40.639927, 36.117966, 36.931831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900711, 36.340851, 36.726124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668660, 0.102668, -0.736447,
		-0.357557, 0.824000, 0.439519,
		0.651957, 0.557210, -0.514266,
		41.096298, 36.508015, 36.571842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237629, 36.294025, 36.399292>,  <40.639927, 36.117966, 36.931831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237629, 36.294025, 36.399292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565140, 36.518757, 36.352051>,  <40.761646, 36.653595, 36.323704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565140, 36.518757, 36.352051>,  <40.237629, 36.294025, 36.399292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565140, 36.518757, 36.352051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412063, 0.431863, -0.802308,
		-0.399751, 0.705583, 0.585109,
		0.818782, 0.561825, -0.118107,
		40.810776, 36.687305, 36.316620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096886, 37.018394, 36.274139>,  <40.237629, 36.294025, 36.399292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096886, 37.018394, 36.274139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461201, 36.963646, 36.118328>,  <40.679790, 36.930798, 36.024841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461201, 36.963646, 36.118328>,  <40.096886, 37.018394, 36.274139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461201, 36.963646, 36.118328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312525, 0.387995, -0.867057,
		0.269809, 0.911442, 0.310606,
		0.910786, -0.136868, -0.389533,
		40.734436, 36.922585, 36.001469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198830, 37.594593, 35.877754>,  <40.096886, 37.018394, 36.274139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198830, 37.594593, 35.877754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476536, 37.338684, 35.745880>,  <40.643158, 37.185139, 35.666756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476536, 37.338684, 35.745880>,  <40.198830, 37.594593, 35.877754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476536, 37.338684, 35.745880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304935, 0.153454, -0.939929,
		0.651931, 0.753090, -0.088552,
		0.694263, -0.639771, -0.329685,
		40.684814, 37.146751, 35.646976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486320, 37.988365, 35.398060>,  <40.198830, 37.594593, 35.877754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486320, 37.988365, 35.398060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605453, 37.614567, 35.320080>,  <40.676933, 37.390285, 35.273293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605453, 37.614567, 35.320080>,  <40.486320, 37.988365, 35.398060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605453, 37.614567, 35.320080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032257, 0.194253, -0.980421,
		0.954075, 0.298285, 0.027710,
		0.297828, -0.934501, -0.194954,
		40.694801, 37.334217, 35.261593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007996, 38.094490, 34.922546>,  <40.486320, 37.988365, 35.398060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007996, 38.094490, 34.922546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868690, 37.722462, 34.875759>,  <40.785107, 37.499245, 34.847687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868690, 37.722462, 34.875759>,  <41.007996, 38.094490, 34.922546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868690, 37.722462, 34.875759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001078, 0.125174, -0.992134,
		0.937395, -0.345401, -0.044596,
		-0.348266, -0.930070, -0.116965,
		40.764210, 37.443439, 34.840668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413715, 37.831989, 34.398682>,  <41.007996, 38.094490, 34.922546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413715, 37.831989, 34.398682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064335, 37.637962, 34.415604>,  <40.854706, 37.521545, 34.425758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064335, 37.637962, 34.415604>,  <41.413715, 37.831989, 34.398682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064335, 37.637962, 34.415604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148929, 0.183434, -0.971685,
		0.463569, -0.855024, -0.232461,
		-0.873455, -0.485063, 0.042304,
		40.802299, 37.492443, 34.428295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450760, 37.364212, 33.899769>,  <41.413715, 37.831989, 34.398682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450760, 37.364212, 33.899769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060795, 37.375935, 33.988022>,  <40.826817, 37.382969, 34.040974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060795, 37.375935, 33.988022>,  <41.450760, 37.364212, 33.899769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060795, 37.375935, 33.988022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220337, 0.013139, -0.975335,
		-0.031488, -0.999484, -0.006351,
		-0.974915, 0.029312, 0.220637,
		40.768318, 37.384724, 34.054214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152348, 36.999363, 33.402706>,  <41.450760, 37.364212, 33.899769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152348, 36.999363, 33.402706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837803, 37.214413, 33.524426>,  <40.649078, 37.343441, 33.597458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837803, 37.214413, 33.524426>,  <41.152348, 36.999363, 33.402706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837803, 37.214413, 33.524426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270699, 0.142900, -0.951999,
		-0.555303, -0.830987, 0.033164,
		-0.786360, 0.537625, 0.304300,
		40.601894, 37.375698, 33.615715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554707, 36.721069, 33.055275>,  <41.152348, 36.999363, 33.402706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554707, 36.721069, 33.055275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452824, 37.092686, 33.162609>,  <40.391693, 37.315655, 33.227009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452824, 37.092686, 33.162609>,  <40.554707, 36.721069, 33.055275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452824, 37.092686, 33.162609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289130, 0.191631, -0.937913,
		-0.922783, -0.316476, 0.219804,
		-0.254705, 0.929043, 0.268337,
		40.376411, 37.371399, 33.243111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609818, 36.295319, 32.529663>,  <40.554707, 36.721069, 33.055275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609818, 36.295319, 32.529663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835575, 35.965847, 32.507729>,  <40.971027, 35.768162, 32.494568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835575, 35.965847, 32.507729>,  <40.609818, 36.295319, 32.529663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835575, 35.965847, 32.507729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770902, -0.502137, -0.391879,
		0.295250, 0.263445, -0.918381,
		0.564392, -0.823684, -0.054834,
		41.004894, 35.718742, 32.491280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451920, 35.980175, 31.886120>,  <40.609818, 36.295319, 32.529663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451920, 35.980175, 31.886120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574261, 35.712662, 32.157173>,  <40.647667, 35.552155, 32.319805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574261, 35.712662, 32.157173>,  <40.451920, 35.980175, 31.886120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574261, 35.712662, 32.157173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754034, -0.604697, -0.256465,
		0.581281, -0.432516, -0.689233,
		0.305852, -0.668783, 0.677631,
		40.666016, 35.512028, 32.360462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676434, 35.906033, 31.141325>,  <40.451920, 35.980175, 31.886120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676434, 35.906033, 31.141325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792404, 35.594643, 30.918640>,  <40.861988, 35.407810, 30.785030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792404, 35.594643, 30.918640>,  <40.676434, 35.906033, 31.141325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792404, 35.594643, 30.918640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843536, -0.482641, 0.235595,
		-0.452095, 0.401300, -0.796598,
		0.289926, -0.778470, -0.556710,
		40.879383, 35.361103, 30.751627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383228, 36.107658, 31.263760>,  <40.676434, 35.906033, 31.141325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383228, 36.107658, 31.263760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327091, 36.437038, 31.483665>,  <41.293407, 36.634666, 31.615608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327091, 36.437038, 31.483665>,  <41.383228, 36.107658, 31.263760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327091, 36.437038, 31.483665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485715, -0.426594, 0.762954,
		0.862777, 0.374104, -0.340090,
		-0.140344, 0.823446, 0.549764,
		41.284988, 36.684071, 31.648594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717587, 35.829388, 31.843082>,  <41.383228, 36.107658, 31.263760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717587, 35.829388, 31.843082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641994, 36.218624, 31.895809>,  <41.596642, 36.452168, 31.927446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641994, 36.218624, 31.895809>,  <41.717587, 35.829388, 31.843082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641994, 36.218624, 31.895809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367724, -0.054343, 0.928346,
		0.910531, 0.223910, -0.347560,
		-0.188978, 0.973094, 0.131818,
		41.585300, 36.510551, 31.935354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313072, 36.070301, 32.275215>,  <41.717587, 35.829388, 31.843082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313072, 36.070301, 32.275215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005508, 36.326015, 32.271477>,  <41.820969, 36.479446, 32.269234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005508, 36.326015, 32.271477>,  <42.313072, 36.070301, 32.275215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005508, 36.326015, 32.271477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157649, 0.203743, 0.966248,
		0.619616, 0.741484, -0.257443,
		-0.768910, 0.639289, -0.009348,
		41.774834, 36.517803, 32.268673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433277, 36.556190, 32.804543>,  <42.313072, 36.070301, 32.275215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433277, 36.556190, 32.804543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049122, 36.637638, 32.728443>,  <41.818630, 36.686504, 32.682785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049122, 36.637638, 32.728443>,  <42.433277, 36.556190, 32.804543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049122, 36.637638, 32.728443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053177, 0.536255, 0.842379,
		0.273544, 0.819128, -0.504185,
		-0.960388, 0.203617, -0.190248,
		41.761005, 36.698723, 32.671368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752602, 36.725609, 33.362709>,  <42.433277, 36.556190, 32.804543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752602, 36.725609, 33.362709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955982, 37.026745, 33.195522>,  <43.078011, 37.207428, 33.095211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955982, 37.026745, 33.195522>,  <42.752602, 36.725609, 33.362709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955982, 37.026745, 33.195522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835478, -0.548819, 0.027822,
		-0.208444, -0.363350, -0.908035,
		0.508456, 0.752844, -0.417969,
		43.108521, 37.252598, 33.070133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133377, 36.562618, 32.616974>,  <42.752602, 36.725609, 33.362709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133377, 36.562618, 32.616974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333366, 36.817558, 32.851517>,  <43.453362, 36.970520, 32.992241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333366, 36.817558, 32.851517>,  <43.133377, 36.562618, 32.616974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333366, 36.817558, 32.851517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781540, -0.623748, 0.011585,
		0.373121, 0.452467, -0.809972,
		0.499976, 0.637348, 0.586355,
		43.483360, 37.008762, 33.027424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861595, 36.557011, 32.344372>,  <43.133377, 36.562618, 32.616974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861595, 36.557011, 32.344372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867100, 36.705925, 32.715580>,  <43.870403, 36.795273, 32.938305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867100, 36.705925, 32.715580>,  <43.861595, 36.557011, 32.344372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867100, 36.705925, 32.715580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816519, -0.539894, 0.204478,
		0.577154, 0.754930, -0.311406,
		0.013760, 0.372284, 0.928017,
		43.871227, 36.817612, 32.993984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564449, 36.928505, 32.404705>,  <43.861595, 36.557011, 32.344372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564449, 36.928505, 32.404705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398262, 36.788391, 32.740486>,  <44.298550, 36.704323, 32.941956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398262, 36.788391, 32.740486>,  <44.564449, 36.928505, 32.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398262, 36.788391, 32.740486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898044, -0.304648, 0.317344,
		0.144576, 0.885713, 0.441147,
		-0.415470, -0.350289, 0.839454,
		44.273621, 36.683304, 32.992321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038197, 37.032417, 33.074368>,  <44.564449, 36.928505, 32.404705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038197, 37.032417, 33.074368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806202, 36.727959, 33.190491>,  <44.667007, 36.545284, 33.260166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806202, 36.727959, 33.190491>,  <45.038197, 37.032417, 33.074368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806202, 36.727959, 33.190491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788542, -0.435087, 0.434627,
		-0.204502, 0.481000, 0.852536,
		-0.579983, -0.761143, 0.290313,
		44.632206, 36.499615, 33.277584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069775, 37.009380, 33.739021>,  <45.038197, 37.032417, 33.074368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069775, 37.009380, 33.739021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994286, 36.632587, 33.627987>,  <44.948994, 36.406513, 33.561367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994286, 36.632587, 33.627987>,  <45.069775, 37.009380, 33.739021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994286, 36.632587, 33.627987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722800, -0.324588, 0.610084,
		-0.664789, -0.085501, 0.742122,
		-0.188721, -0.941983, -0.277583,
		44.937668, 36.349991, 33.544712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099155, 36.691887, 34.408394>,  <45.069775, 37.009380, 33.739021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099155, 36.691887, 34.408394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161076, 36.429005, 34.113338>,  <45.198227, 36.271275, 33.936306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161076, 36.429005, 34.113338>,  <45.099155, 36.691887, 34.408394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161076, 36.429005, 34.113338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719382, -0.436768, 0.540115,
		-0.677145, -0.614256, 0.405171,
		0.154804, -0.657209, -0.737640,
		45.207516, 36.231842, 33.892048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467678, 36.058582, 34.613411>,  <45.099155, 36.691887, 34.408394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467678, 36.058582, 34.613411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505909, 35.968971, 34.225456>,  <45.528847, 35.915207, 33.992683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505909, 35.968971, 34.225456>,  <45.467678, 36.058582, 34.613411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505909, 35.968971, 34.225456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591879, -0.770605, 0.236323,
		-0.800340, -0.596642, 0.058943,
		0.095578, -0.224026, -0.969885,
		45.534584, 35.901764, 33.934490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411201, 35.329147, 34.510269>,  <45.467678, 36.058582, 34.613411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411201, 35.329147, 34.510269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624329, 35.468250, 34.201679>,  <45.752205, 35.551712, 34.016525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624329, 35.468250, 34.201679>,  <45.411201, 35.329147, 34.510269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624329, 35.468250, 34.201679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727409, -0.654063, 0.207553,
		-0.432415, -0.671765, -0.601456,
		0.532816, 0.347756, -0.771475,
		45.784172, 35.572578, 33.970238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.932823, 34.829636, 34.160233>,  <45.411201, 35.329147, 34.510269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.932823, 34.829636, 34.160233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094250, 35.194942, 34.138016>,  <46.191105, 35.414127, 34.124687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094250, 35.194942, 34.138016>,  <45.932823, 34.829636, 34.160233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094250, 35.194942, 34.138016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905978, -0.390385, 0.163718,
		0.127836, -0.116388, -0.984942,
		0.403562, 0.913265, -0.055540,
		46.215317, 35.468922, 34.121353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.595028, 34.828835, 34.510090>,  <45.932823, 34.829636, 34.160233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.595028, 34.828835, 34.510090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.587917, 34.728584, 34.122921>,  <46.583649, 34.668434, 33.890621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.587917, 34.728584, 34.122921>,  <46.595028, 34.828835, 34.510090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587917, 34.728584, 34.122921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460121, 0.861524, -0.214628,
		0.887678, 0.441544, -0.130639,
		-0.017781, -0.250630, -0.967919,
		46.582584, 34.653397, 33.832546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963272, 35.383862, 33.995407>,  <46.595028, 34.828835, 34.510090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963272, 35.383862, 33.995407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673744, 35.161476, 33.831951>,  <46.500027, 35.028046, 33.733875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673744, 35.161476, 33.831951>,  <46.963272, 35.383862, 33.995407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.673744, 35.161476, 33.831951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361663, 0.810070, -0.461504,
		0.587610, -0.186254, -0.787416,
		-0.723819, -0.555963, -0.408645,
		46.456600, 34.994686, 33.709358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.293316, 35.420807, 34.647686>,  <46.963272, 35.383862, 33.995407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.293316, 35.420807, 34.647686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602222, 35.503300, 34.888046>,  <47.787567, 35.552795, 35.032261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602222, 35.503300, 34.888046>,  <47.293316, 35.420807, 34.647686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.602222, 35.503300, 34.888046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370672, -0.621889, 0.689823,
		0.515958, -0.755460, -0.403816,
		0.772263, 0.206236, 0.600896,
		47.833900, 35.565170, 35.068314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.743961, 34.875793, 34.677780>,  <47.293316, 35.420807, 34.647686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.743961, 34.875793, 34.677780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743279, 35.103432, 35.006687>,  <47.742867, 35.240013, 35.204033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743279, 35.103432, 35.006687>,  <47.743961, 34.875793, 34.677780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.743279, 35.103432, 35.006687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084700, -0.819400, 0.566930,
		0.996405, -0.068676, 0.049605,
		-0.001712, 0.569094, 0.822271,
		47.742764, 35.274158, 35.253368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.178169, 30.351469, 27.443338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783211, 30.341021, 27.380898>,  <35.546234, 30.334751, 27.343433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783211, 30.341021, 27.380898>,  <36.178169, 30.351469, 27.443338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783211, 30.341021, 27.380898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149727, 0.473866, 0.867774,
		0.051305, 0.880209, -0.471804,
		-0.987395, -0.026121, -0.156103,
		35.486992, 30.333185, 27.334066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893021, 31.063515, 27.692232>,  <36.178169, 30.351469, 27.443338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893021, 31.063515, 27.692232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.608326, 30.782572, 27.696718>,  <35.437508, 30.614006, 27.699409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.608326, 30.782572, 27.696718>,  <35.893021, 31.063515, 27.692232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608326, 30.782572, 27.696718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207721, 0.225691, 0.951796,
		-0.671031, 0.675099, -0.306527,
		-0.711737, -0.702357, 0.011214,
		35.394806, 30.571865, 27.700083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336205, 31.452917, 28.010616>,  <35.893021, 31.063515, 27.692232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336205, 31.452917, 28.010616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246052, 31.064718, 28.044876>,  <35.191959, 30.831799, 28.065432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246052, 31.064718, 28.044876>,  <35.336205, 31.452917, 28.010616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246052, 31.064718, 28.044876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328615, 0.158483, 0.931072,
		-0.917178, 0.181701, -0.354639,
		-0.225382, -0.970499, 0.085648,
		35.178436, 30.773569, 28.070570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561680, 31.441750, 28.187145>,  <35.336205, 31.452917, 28.010616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561680, 31.441750, 28.187145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736626, 31.103399, 28.309263>,  <34.841595, 30.900389, 28.382534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736626, 31.103399, 28.309263>,  <34.561680, 31.441750, 28.187145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736626, 31.103399, 28.309263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498399, 0.054577, 0.865228,
		-0.748536, -0.530583, -0.397713,
		0.437369, -0.845874, 0.305295,
		34.867836, 30.849636, 28.400852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067833, 31.087530, 28.602865>,  <34.561680, 31.441750, 28.187145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067833, 31.087530, 28.602865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419708, 30.926760, 28.704536>,  <34.630833, 30.830297, 28.765539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419708, 30.926760, 28.704536>,  <34.067833, 31.087530, 28.602865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419708, 30.926760, 28.704536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115829, 0.337299, 0.934245,
		-0.461232, -0.851284, 0.250163,
		0.879687, -0.401927, 0.254176,
		34.683613, 30.806181, 28.780788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004780, 30.562803, 29.159630>,  <34.067833, 31.087530, 28.602865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004780, 30.562803, 29.159630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.384289, 30.680153, 29.206556>,  <34.611996, 30.750563, 29.234713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.384289, 30.680153, 29.206556>,  <34.004780, 30.562803, 29.159630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384289, 30.680153, 29.206556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220561, 0.349100, 0.910759,
		0.226238, -0.889978, 0.395923,
		0.948772, 0.293374, 0.117315,
		34.668922, 30.768166, 29.241751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186668, 30.281473, 29.725039>,  <34.004780, 30.562803, 29.159630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186668, 30.281473, 29.725039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.459782, 30.569773, 29.677160>,  <34.623650, 30.742752, 29.648434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.459782, 30.569773, 29.677160>,  <34.186668, 30.281473, 29.725039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459782, 30.569773, 29.677160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058042, 0.216817, 0.974485,
		0.728313, -0.658414, 0.189873,
		0.682783, 0.720751, -0.119695,
		34.664616, 30.785997, 29.641253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618771, 30.231216, 30.273062>,  <34.186668, 30.281473, 29.725039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618771, 30.231216, 30.273062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.720814, 30.594727, 30.140974>,  <34.782040, 30.812834, 30.061722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.720814, 30.594727, 30.140974>,  <34.618771, 30.231216, 30.273062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720814, 30.594727, 30.140974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186532, 0.288847, 0.939028,
		0.948750, -0.301150, -0.095829,
		0.255108, 0.908777, -0.330218,
		34.797348, 30.867359, 30.041908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111626, 30.436871, 30.730389>,  <34.618771, 30.231216, 30.273062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111626, 30.436871, 30.730389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.001461, 30.792929, 30.585176>,  <34.935364, 31.006563, 30.498049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.001461, 30.792929, 30.585176>,  <35.111626, 30.436871, 30.730389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001461, 30.792929, 30.585176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176436, 0.418024, 0.891138,
		0.944997, 0.181377, -0.272182,
		-0.275410, 0.890145, -0.363030,
		34.918839, 31.059973, 30.476267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557308, 30.917824, 30.938560>,  <35.111626, 30.436871, 30.730389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557308, 30.917824, 30.938560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254944, 31.163904, 30.849010>,  <35.073524, 31.311552, 30.795280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254944, 31.163904, 30.849010>,  <35.557308, 30.917824, 30.938560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254944, 31.163904, 30.849010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212451, 0.553977, 0.804969,
		0.619241, 0.560924, -0.549459,
		-0.755914, 0.615202, -0.223876,
		35.028172, 31.348465, 30.781847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913017, 31.564962, 31.003025>,  <35.557308, 30.917824, 30.938560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913017, 31.564962, 31.003025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.517277, 31.623009, 30.998449>,  <35.279835, 31.657837, 30.995703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.517277, 31.623009, 30.998449>,  <35.913017, 31.564962, 31.003025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517277, 31.623009, 30.998449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090416, 0.674220, 0.732975,
		0.114078, 0.724134, -0.680159,
		-0.989349, 0.145114, -0.011440,
		35.220470, 31.666542, 30.995018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770390, 32.272064, 30.671118>,  <35.913017, 31.564962, 31.003025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770390, 32.272064, 30.671118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.498878, 32.121872, 30.923555>,  <35.335972, 32.031757, 31.075018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.498878, 32.121872, 30.923555>,  <35.770390, 32.272064, 30.671118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498878, 32.121872, 30.923555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008559, 0.855293, 0.518074,
		-0.734294, 0.357059, -0.577340,
		-0.678777, -0.375478, 0.631093,
		35.295246, 32.009228, 31.112883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339962, 32.772358, 30.897068>,  <35.770390, 32.272064, 30.671118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339962, 32.772358, 30.897068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232189, 32.513947, 31.182741>,  <35.167526, 32.358902, 31.354145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232189, 32.513947, 31.182741>,  <35.339962, 32.772358, 30.897068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232189, 32.513947, 31.182741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134283, 0.759565, 0.636419,
		-0.953611, 0.075571, -0.291403,
		-0.269434, -0.646026, 0.714181,
		35.151360, 32.320137, 31.396996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873547, 33.163212, 31.330359>,  <35.339962, 32.772358, 30.897068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873547, 33.163212, 31.330359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.997177, 32.845329, 31.539320>,  <35.071358, 32.654598, 31.664698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.997177, 32.845329, 31.539320>,  <34.873547, 33.163212, 31.330359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997177, 32.845329, 31.539320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052487, 0.534208, 0.843722,
		-0.949587, -0.288196, 0.123400,
		0.309079, -0.794710, 0.522404,
		35.089901, 32.606915, 31.696041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492359, 33.130665, 31.898762>,  <34.873547, 33.163212, 31.330359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492359, 33.130665, 31.898762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.813583, 32.918812, 32.007999>,  <35.006317, 32.791702, 32.073544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.813583, 32.918812, 32.007999>,  <34.492359, 33.130665, 31.898762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813583, 32.918812, 32.007999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119647, 0.305646, 0.944598,
		-0.583758, -0.791247, 0.182084,
		0.803063, -0.529631, 0.273094,
		35.054504, 32.759922, 32.089928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340385, 32.745296, 32.562576>,  <34.492359, 33.130665, 31.898762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340385, 32.745296, 32.562576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732014, 32.811687, 32.515453>,  <34.966991, 32.851521, 32.487179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732014, 32.811687, 32.515453>,  <34.340385, 32.745296, 32.562576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732014, 32.811687, 32.515453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067947, 0.279076, 0.957862,
		0.191860, -0.945816, 0.261956,
		0.979068, 0.165976, -0.117809,
		35.025734, 32.861481, 32.480110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640675, 32.536671, 33.218834>,  <34.340385, 32.745296, 32.562576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640675, 32.536671, 33.218834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920143, 32.736931, 33.014400>,  <35.087826, 32.857086, 32.891739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920143, 32.736931, 33.014400>,  <34.640675, 32.536671, 33.218834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920143, 32.736931, 33.014400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300684, 0.442729, 0.844737,
		0.649192, -0.743867, 0.158782,
		0.698669, 0.500653, -0.511085,
		35.129745, 32.887127, 32.861076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304779, 32.509098, 33.574841>,  <34.640675, 32.536671, 33.218834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304779, 32.509098, 33.574841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324131, 32.840302, 33.351391>,  <35.335743, 33.039024, 33.217319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324131, 32.840302, 33.351391>,  <35.304779, 32.509098, 33.574841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324131, 32.840302, 33.351391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330451, 0.514519, 0.791248,
		0.942583, -0.222876, -0.248725,
		0.048376, 0.828008, -0.558626,
		35.338642, 33.088703, 33.183804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947979, 32.751846, 33.644478>,  <35.304779, 32.509098, 33.574841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947979, 32.751846, 33.644478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757168, 33.080418, 33.519451>,  <35.642681, 33.277561, 33.444435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757168, 33.080418, 33.519451>,  <35.947979, 32.751846, 33.644478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757168, 33.080418, 33.519451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386008, 0.515319, 0.765144,
		0.789585, 0.244338, -0.562898,
		-0.477026, 0.821429, -0.312571,
		35.614059, 33.326847, 33.425678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406841, 33.344604, 33.793968>,  <35.947979, 32.751846, 33.644478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406841, 33.344604, 33.793968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091110, 33.575718, 33.710899>,  <35.901672, 33.714386, 33.661060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091110, 33.575718, 33.710899>,  <36.406841, 33.344604, 33.793968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091110, 33.575718, 33.710899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413413, 0.750229, 0.515990,
		0.453933, 0.321431, -0.831040,
		-0.789325, 0.577787, -0.207670,
		35.854313, 33.749054, 33.648598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670883, 34.133160, 33.590450>,  <36.406841, 33.344604, 33.793968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670883, 34.133160, 33.590450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290379, 34.145367, 33.713203>,  <36.062077, 34.152691, 33.786854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290379, 34.145367, 33.713203>,  <36.670883, 34.133160, 33.590450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290379, 34.145367, 33.713203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237421, 0.707544, 0.665592,
		-0.196821, 0.706010, -0.680302,
		-0.951258, 0.030515, 0.306881,
		36.005001, 34.154522, 33.805267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352478, 34.755440, 33.478184>,  <36.670883, 34.133160, 33.590450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352478, 34.755440, 33.478184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225887, 34.544243, 33.793415>,  <36.149933, 34.417526, 33.982555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225887, 34.544243, 33.793415>,  <36.352478, 34.755440, 33.478184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225887, 34.544243, 33.793415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257571, 0.751738, 0.607081,
		-0.912962, 0.395113, -0.101912,
		-0.316477, -0.527992, 0.788078,
		36.130943, 34.385845, 34.029839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960686, 34.881081, 33.913250>,  <36.352478, 34.755440, 33.478184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960686, 34.881081, 33.913250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349598, 34.931786, 33.991840>,  <37.582947, 34.962208, 34.038994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349598, 34.931786, 33.991840>,  <36.960686, 34.881081, 33.913250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349598, 34.931786, 33.991840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233746, -0.547756, -0.803322,
		0.005792, 0.826980, -0.562202,
		0.972281, 0.126760, 0.196475,
		37.641281, 34.969814, 34.050781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228909, 35.023720, 33.281109>,  <36.960686, 34.881081, 33.913250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228909, 35.023720, 33.281109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545174, 34.892307, 33.487766>,  <37.734932, 34.813461, 33.611763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545174, 34.892307, 33.487766>,  <37.228909, 35.023720, 33.281109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545174, 34.892307, 33.487766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243716, -0.605223, -0.757831,
		0.561655, 0.725103, -0.398459,
		0.790662, -0.328529, 0.516645,
		37.782372, 34.793747, 33.642761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777039, 34.963875, 32.792473>,  <37.228909, 35.023720, 33.281109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777039, 34.963875, 32.792473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.917992, 34.749432, 33.099308>,  <38.002563, 34.620766, 33.283409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.917992, 34.749432, 33.099308>,  <37.777039, 34.963875, 32.792473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917992, 34.749432, 33.099308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352600, -0.683202, -0.639459,
		0.866892, 0.495807, -0.051716,
		0.352381, -0.536106, 0.767084,
		38.023705, 34.588600, 33.329433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371162, 34.733402, 32.548695>,  <37.777039, 34.963875, 32.792473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371162, 34.733402, 32.548695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315079, 34.495789, 32.865547>,  <38.281429, 34.353222, 33.055656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315079, 34.495789, 32.865547>,  <38.371162, 34.733402, 32.548695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315079, 34.495789, 32.865547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302149, -0.787540, -0.537110,
		0.942893, 0.164032, 0.289909,
		-0.140212, -0.594033, 0.792127,
		38.273014, 34.317577, 33.103184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908165, 34.269009, 32.556561>,  <38.371162, 34.733402, 32.548695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908165, 34.269009, 32.556561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625641, 34.081234, 32.768505>,  <38.456127, 33.968567, 32.895672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625641, 34.081234, 32.768505>,  <38.908165, 34.269009, 32.556561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625641, 34.081234, 32.768505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123852, -0.818895, -0.560421,
		0.696985, -0.330207, 0.636534,
		-0.706309, -0.469441, 0.529861,
		38.413750, 33.940403, 32.927464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224480, 33.658783, 32.713699>,  <38.908165, 34.269009, 32.556561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224480, 33.658783, 32.713699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.826679, 33.617420, 32.720421>,  <38.588001, 33.592602, 32.724453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.826679, 33.617420, 32.720421>,  <39.224480, 33.658783, 32.713699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826679, 33.617420, 32.720421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081969, -0.867946, -0.489848,
		0.065234, -0.485775, 0.871646,
		-0.994498, -0.103402, 0.016801,
		38.528332, 33.586399, 32.725460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210419, 32.941254, 32.827427>,  <39.224480, 33.658783, 32.713699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210419, 32.941254, 32.827427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837769, 33.041031, 32.721706>,  <38.614178, 33.100895, 32.658276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837769, 33.041031, 32.721706>,  <39.210419, 32.941254, 32.827427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837769, 33.041031, 32.721706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048284, -0.805764, -0.590264,
		-0.360200, -0.537143, 0.762714,
		-0.931624, 0.249440, -0.264301,
		38.558281, 33.115864, 32.642418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714439, 32.342022, 32.925156>,  <39.210419, 32.941254, 32.827427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714439, 32.342022, 32.925156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557869, 32.583511, 32.647362>,  <38.463928, 32.728405, 32.480686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557869, 32.583511, 32.647362>,  <38.714439, 32.342022, 32.925156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557869, 32.583511, 32.647362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237466, -0.795408, -0.557617,
		-0.889044, -0.053346, 0.454702,
		-0.391421, 0.603722, -0.694485,
		38.440441, 32.764629, 32.439018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087360, 32.002991, 32.750584>,  <38.714439, 32.342022, 32.925156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087360, 32.002991, 32.750584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174011, 32.241814, 32.441628>,  <38.226002, 32.385109, 32.256252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174011, 32.241814, 32.441628>,  <38.087360, 32.002991, 32.750584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174011, 32.241814, 32.441628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299939, -0.712211, -0.634659,
		-0.929036, 0.369159, 0.024794,
		0.216631, 0.597057, -0.772395,
		38.239002, 32.420929, 32.209908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740181, 31.664593, 32.093174>,  <38.087360, 32.002991, 32.750584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740181, 31.664593, 32.093174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932026, 31.966299, 31.913820>,  <38.047134, 32.147324, 31.806208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932026, 31.966299, 31.913820>,  <37.740181, 31.664593, 32.093174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932026, 31.966299, 31.913820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141822, -0.437642, -0.887894,
		-0.865942, 0.489439, -0.102929,
		0.479616, 0.754267, -0.448386,
		38.075912, 32.192577, 31.779305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362286, 32.082516, 31.538746>,  <37.740181, 31.664593, 32.093174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362286, 32.082516, 31.538746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.747066, 32.149200, 31.452168>,  <37.977936, 32.189213, 31.400221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.747066, 32.149200, 31.452168>,  <37.362286, 32.082516, 31.538746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747066, 32.149200, 31.452168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155906, -0.315614, -0.935992,
		-0.224352, 0.934128, -0.277615,
		0.961956, 0.166710, -0.216445,
		38.035652, 32.199215, 31.387234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440693, 32.502102, 30.901808>,  <37.362286, 32.082516, 31.538746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440693, 32.502102, 30.901808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781757, 32.298336, 30.948236>,  <37.986397, 32.176079, 30.976093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781757, 32.298336, 30.948236>,  <37.440693, 32.502102, 30.901808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781757, 32.298336, 30.948236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122755, -0.411271, -0.903209,
		0.507844, 0.755880, -0.413207,
		0.852658, -0.509412, 0.116074,
		38.037556, 32.145512, 30.983059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947273, 32.769707, 30.430204>,  <37.440693, 32.502102, 30.901808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947273, 32.769707, 30.430204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041927, 32.396004, 30.536907>,  <38.098721, 32.171780, 30.600929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041927, 32.396004, 30.536907>,  <37.947273, 32.769707, 30.430204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041927, 32.396004, 30.536907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053182, -0.286596, -0.956574,
		0.970141, 0.212177, -0.117506,
		0.236639, -0.934261, 0.266755,
		38.112919, 32.115726, 30.616934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458824, 32.573166, 29.899385>,  <37.947273, 32.769707, 30.430204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458824, 32.573166, 29.899385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380867, 32.212708, 30.054279>,  <38.334095, 31.996431, 30.147215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380867, 32.212708, 30.054279>,  <38.458824, 32.573166, 29.899385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380867, 32.212708, 30.054279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301575, -0.430735, -0.850600,
		0.933312, -0.048992, 0.355709,
		-0.194889, -0.901148, 0.387235,
		38.322399, 31.942364, 30.170450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919910, 32.127907, 29.592602>,  <38.458824, 32.573166, 29.899385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919910, 32.127907, 29.592602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.651089, 31.861103, 29.721251>,  <38.489796, 31.701021, 29.798439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.651089, 31.861103, 29.721251>,  <38.919910, 32.127907, 29.592602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651089, 31.861103, 29.721251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069631, -0.489330, -0.869315,
		0.737217, -0.561835, 0.375303,
		-0.672059, -0.667006, 0.321621,
		38.449471, 31.661001, 29.817738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157181, 31.533005, 29.213358>,  <38.919910, 32.127907, 29.592602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157181, 31.533005, 29.213358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769978, 31.486149, 29.302111>,  <38.537655, 31.458036, 29.355362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769978, 31.486149, 29.302111>,  <39.157181, 31.533005, 29.213358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769978, 31.486149, 29.302111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132558, -0.512063, -0.848658,
		0.213027, -0.850923, 0.480155,
		-0.968013, -0.117138, 0.221880,
		38.479572, 31.451008, 29.368675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936039, 30.815172, 29.133011>,  <39.157181, 31.533005, 29.213358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936039, 30.815172, 29.133011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594620, 31.023428, 29.125048>,  <38.389771, 31.148380, 29.120270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594620, 31.023428, 29.125048>,  <38.936039, 30.815172, 29.133011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594620, 31.023428, 29.125048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225903, -0.404243, -0.886316,
		-0.469496, -0.752014, 0.462653,
		-0.853546, 0.520637, -0.019908,
		38.338554, 31.179619, 29.119076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374966, 30.267479, 28.844353>,  <38.936039, 30.815172, 29.133011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374966, 30.267479, 28.844353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.243568, 30.643902, 28.812088>,  <38.164730, 30.869755, 28.792730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.243568, 30.643902, 28.812088>,  <38.374966, 30.267479, 28.844353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243568, 30.643902, 28.812088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490307, -0.242892, -0.837020,
		-0.807276, -0.235404, 0.541194,
		-0.328490, 0.941057, -0.080660,
		38.145023, 30.926220, 28.787889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.616409, 30.232698, 28.540754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722065, 30.610056, 28.460510>,  <37.785458, 30.836470, 28.412363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722065, 30.610056, 28.460510>,  <37.616409, 30.232698, 28.540754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722065, 30.610056, 28.460510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416370, -0.076083, -0.906007,
		-0.869982, 0.322836, 0.372704,
		0.264136, 0.943392, -0.200610,
		37.801304, 30.893074, 28.400328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002365, 30.517824, 28.330446>,  <37.616409, 30.232698, 28.540754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002365, 30.517824, 28.330446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308655, 30.723038, 28.175289>,  <37.492428, 30.846167, 28.082195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308655, 30.723038, 28.175289>,  <37.002365, 30.517824, 28.330446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308655, 30.723038, 28.175289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454500, 0.004895, -0.890733,
		-0.455078, 0.858354, 0.236922,
		0.765724, 0.513034, -0.387894,
		37.538372, 30.876947, 28.058920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719364, 30.973547, 27.802830>,  <37.002365, 30.517824, 28.330446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719364, 30.973547, 27.802830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110493, 30.965084, 27.719482>,  <37.345169, 30.960007, 27.669474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110493, 30.965084, 27.719482>,  <36.719364, 30.973547, 27.802830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110493, 30.965084, 27.719482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209392, -0.077744, -0.974736,
		0.004422, 0.996749, -0.080449,
		0.977822, -0.021156, -0.208368,
		37.403839, 30.958736, 27.656973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796795, 31.442570, 27.220848>,  <36.719364, 30.973547, 27.802830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796795, 31.442570, 27.220848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.123726, 31.212160, 27.226118>,  <37.319885, 31.073914, 27.229280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.123726, 31.212160, 27.226118>,  <36.796795, 31.442570, 27.220848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123726, 31.212160, 27.226118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083571, -0.141140, -0.986456,
		0.570083, 0.805155, -0.163497,
		0.817326, -0.576025, 0.013173,
		37.368923, 31.039352, 27.230070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198048, 31.516548, 26.591610>,  <36.796795, 31.442570, 27.220848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198048, 31.516548, 26.591610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395458, 31.193552, 26.720846>,  <37.513905, 30.999754, 26.798388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395458, 31.193552, 26.720846>,  <37.198048, 31.516548, 26.591610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395458, 31.193552, 26.720846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238065, -0.231871, -0.943165,
		0.836514, 0.542395, 0.077801,
		0.493528, -0.807492, 0.323089,
		37.543518, 30.951303, 26.817772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813808, 31.447050, 26.237322>,  <37.198048, 31.516548, 26.591610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813808, 31.447050, 26.237322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.726055, 31.078108, 26.364529>,  <37.673405, 30.856743, 26.440853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.726055, 31.078108, 26.364529>,  <37.813808, 31.447050, 26.237322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726055, 31.078108, 26.364529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301200, -0.374064, -0.877128,
		0.927982, -0.096636, 0.359875,
		-0.219379, -0.922354, 0.318018,
		37.660240, 30.801401, 26.459934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360603, 30.974146, 26.000484>,  <37.813808, 31.447050, 26.237322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360603, 30.974146, 26.000484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.029484, 30.759237, 26.065090>,  <37.830811, 30.630293, 26.103853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.029484, 30.759237, 26.065090>,  <38.360603, 30.974146, 26.000484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029484, 30.759237, 26.065090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177620, -0.524066, -0.832950,
		0.532164, -0.660828, 0.529252,
		-0.827800, -0.537272, 0.161513,
		37.781143, 30.598055, 26.113544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509361, 30.361759, 25.867611>,  <38.360603, 30.974146, 26.000484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509361, 30.361759, 25.867611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114590, 30.297791, 25.875574>,  <37.877728, 30.259409, 25.880352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114590, 30.297791, 25.875574>,  <38.509361, 30.361759, 25.867611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114590, 30.297791, 25.875574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070210, -0.537856, -0.840108,
		0.145059, -0.827729, 0.542053,
		-0.986929, -0.159923, 0.019906,
		37.818512, 30.249813, 25.881546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417145, 29.677614, 25.619335>,  <38.509361, 30.361759, 25.867611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417145, 29.677614, 25.619335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052456, 29.836966, 25.579208>,  <37.833645, 29.932577, 25.555132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052456, 29.836966, 25.579208>,  <38.417145, 29.677614, 25.619335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052456, 29.836966, 25.579208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081115, -0.413949, -0.906679,
		-0.402706, -0.818508, 0.409722,
		-0.911728, 0.398359, -0.100307,
		37.778942, 29.956480, 25.549112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938190, 29.137793, 25.457420>,  <38.417145, 29.677614, 25.619335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938190, 29.137793, 25.457420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.785564, 29.478073, 25.312801>,  <37.693989, 29.682241, 25.226030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.785564, 29.478073, 25.312801>,  <37.938190, 29.137793, 25.457420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785564, 29.478073, 25.312801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171655, -0.449551, -0.876607,
		-0.908266, -0.272417, 0.317558,
		-0.381561, 0.850702, -0.361550,
		37.671097, 29.733284, 25.204336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270493, 28.895397, 25.071272>,  <37.938190, 29.137793, 25.457420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270493, 28.895397, 25.071272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340675, 29.264511, 24.934055>,  <37.382786, 29.485979, 24.851725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340675, 29.264511, 24.934055>,  <37.270493, 28.895397, 25.071272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340675, 29.264511, 24.934055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220975, -0.302641, -0.927135,
		-0.959366, 0.238480, 0.150811,
		0.175462, 0.922787, -0.343041,
		37.393314, 29.541348, 24.831142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712570, 29.046759, 24.620668>,  <37.270493, 28.895397, 25.071272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712570, 29.046759, 24.620668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009804, 29.287004, 24.502628>,  <37.188145, 29.431152, 24.431805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009804, 29.287004, 24.502628>,  <36.712570, 29.046759, 24.620668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009804, 29.287004, 24.502628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265597, -0.140056, -0.953857,
		-0.614231, 0.787176, 0.055448,
		0.743088, 0.600615, -0.295098,
		37.232731, 29.467190, 24.414099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416534, 29.444969, 24.116776>,  <36.712570, 29.046759, 24.620668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416534, 29.444969, 24.116776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810432, 29.459633, 24.048727>,  <37.046772, 29.468431, 24.007898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810432, 29.459633, 24.048727>,  <36.416534, 29.444969, 24.116776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810432, 29.459633, 24.048727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152154, -0.293076, -0.943905,
		-0.084461, 0.955386, -0.283026,
		0.984741, 0.036660, -0.170119,
		37.105854, 29.470631, 23.997692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539856, 29.654892, 23.437027>,  <36.416534, 29.444969, 24.116776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539856, 29.654892, 23.437027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.908855, 29.504707, 23.472864>,  <37.130257, 29.414597, 23.494366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.908855, 29.504707, 23.472864>,  <36.539856, 29.654892, 23.437027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908855, 29.504707, 23.472864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037906, -0.142863, -0.989016,
		0.384137, 0.915761, -0.117559,
		0.922498, -0.375462, 0.089592,
		37.185604, 29.392069, 23.499743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922176, 29.960110, 22.887308>,  <36.539856, 29.654892, 23.437027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922176, 29.960110, 22.887308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131912, 29.633865, 22.985157>,  <37.257755, 29.438118, 23.043867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131912, 29.633865, 22.985157>,  <36.922176, 29.960110, 22.887308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131912, 29.633865, 22.985157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052515, -0.255762, -0.965312,
		0.849887, 0.519000, -0.091275,
		0.524342, -0.815613, 0.244624,
		37.289215, 29.389181, 23.058544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485535, 29.875395, 22.408709>,  <36.922176, 29.960110, 22.887308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485535, 29.875395, 22.408709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453564, 29.508894, 22.565727>,  <37.434383, 29.288994, 22.659939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453564, 29.508894, 22.565727>,  <37.485535, 29.875395, 22.408709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453564, 29.508894, 22.565727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147046, -0.400337, -0.904493,
		0.985895, -0.014568, 0.166728,
		-0.079923, -0.916252, 0.392548,
		37.429588, 29.234018, 22.683491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751858, 29.560085, 21.862358>,  <37.485535, 29.875395, 22.408709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751858, 29.560085, 21.862358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.591183, 29.273659, 22.090706>,  <37.494778, 29.101803, 22.227715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.591183, 29.273659, 22.090706>,  <37.751858, 29.560085, 21.862358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591183, 29.273659, 22.090706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100541, -0.585121, -0.804689,
		0.910240, -0.380631, 0.163043,
		-0.401690, -0.716068, 0.570870,
		37.470676, 29.058838, 22.261967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150082, 28.935757, 21.677176>,  <37.751858, 29.560085, 21.862358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150082, 28.935757, 21.677176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787006, 28.843393, 21.817333>,  <37.569160, 28.787975, 21.901428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787006, 28.843393, 21.817333>,  <38.150082, 28.935757, 21.677176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787006, 28.843393, 21.817333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130077, -0.639044, -0.758091,
		0.398966, -0.733692, 0.550020,
		-0.907693, -0.230908, 0.350394,
		37.514698, 28.774120, 21.922451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078777, 28.277311, 21.549667>,  <38.150082, 28.935757, 21.677176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078777, 28.277311, 21.549667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697243, 28.367186, 21.629370>,  <37.468323, 28.421110, 21.677191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697243, 28.367186, 21.629370>,  <38.078777, 28.277311, 21.549667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697243, 28.367186, 21.629370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294912, -0.575538, -0.762747,
		-0.056698, -0.786303, 0.615234,
		-0.953841, 0.224686, 0.199258,
		37.411091, 28.434591, 21.689148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705505, 27.664526, 21.445358>,  <38.078777, 28.277311, 21.549667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705505, 27.664526, 21.445358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456944, 27.975311, 21.404997>,  <37.307808, 28.161783, 21.380779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456944, 27.975311, 21.404997>,  <37.705505, 27.664526, 21.445358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456944, 27.975311, 21.404997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254149, -0.321717, -0.912089,
		-0.741124, -0.541132, 0.397381,
		-0.621404, 0.776966, -0.100904,
		37.270523, 28.208401, 21.374725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083897, 27.406137, 21.362787>,  <37.705505, 27.664526, 21.445358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083897, 27.406137, 21.362787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099518, 27.761168, 21.179186>,  <37.108891, 27.974186, 21.069025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099518, 27.761168, 21.179186>,  <37.083897, 27.406137, 21.362787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099518, 27.761168, 21.179186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106095, -0.453072, -0.885138,
		-0.993589, 0.083268, 0.076472,
		0.039056, 0.887577, -0.459001,
		37.111233, 28.027441, 21.041485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603912, 27.317268, 20.865507>,  <37.083897, 27.406137, 21.362787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603912, 27.317268, 20.865507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.809212, 27.636871, 20.740185>,  <36.932392, 27.828632, 20.664991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.809212, 27.636871, 20.740185>,  <36.603912, 27.317268, 20.865507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809212, 27.636871, 20.740185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145216, -0.278944, -0.949264,
		-0.845863, 0.532709, -0.027140,
		0.513252, 0.799006, -0.313307,
		36.963188, 27.876574, 20.646193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240448, 27.436956, 20.266201>,  <36.603912, 27.317268, 20.865507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240448, 27.436956, 20.266201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582806, 27.642141, 20.239923>,  <36.788219, 27.765251, 20.224157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582806, 27.642141, 20.239923>,  <36.240448, 27.436956, 20.266201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582806, 27.642141, 20.239923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094479, -0.279988, -0.955343,
		-0.508446, 0.811467, -0.288104,
		0.855895, 0.512961, -0.065692,
		36.839573, 27.796030, 20.220215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123150, 28.069775, 19.843975>,  <36.240448, 27.436956, 20.266201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123150, 28.069775, 19.843975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497055, 27.928898, 19.825262>,  <36.721397, 27.844372, 19.814035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497055, 27.928898, 19.825262>,  <36.123150, 28.069775, 19.843975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497055, 27.928898, 19.825262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066609, -0.044389, -0.996791,
		0.348984, 0.934875, -0.064952,
		0.934759, -0.352190, -0.046780,
		36.777481, 27.823240, 19.811228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389534, 28.007826, 19.951084>,  <36.123150, 28.069775, 19.843975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389534, 28.007826, 19.951084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994263, 27.953562, 19.922497>,  <34.757099, 27.921003, 19.905344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994263, 27.953562, 19.922497>,  <35.389534, 28.007826, 19.951084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994263, 27.953562, 19.922497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108702, 0.291057, 0.950510,
		-0.108146, 0.947039, -0.302361,
		-0.988174, -0.135661, -0.071468,
		34.697811, 27.912863, 19.901056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049881, 28.627243, 20.118971>,  <35.389534, 28.007826, 19.951084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049881, 28.627243, 20.118971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.792011, 28.332552, 20.200581>,  <34.637291, 28.155737, 20.249546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.792011, 28.332552, 20.200581>,  <35.049881, 28.627243, 20.118971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792011, 28.332552, 20.200581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172174, 0.399959, 0.900216,
		-0.744817, 0.545217, -0.384689,
		-0.644673, -0.736730, 0.204024,
		34.598610, 28.111532, 20.261787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635914, 28.966637, 20.424936>,  <35.049881, 28.627243, 20.118971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635914, 28.966637, 20.424936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540707, 28.600178, 20.553949>,  <34.483582, 28.380302, 20.631357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540707, 28.600178, 20.553949>,  <34.635914, 28.966637, 20.424936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540707, 28.600178, 20.553949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155902, 0.363807, 0.918335,
		-0.958668, 0.168293, -0.229420,
		-0.238014, -0.916145, 0.322533,
		34.469303, 28.325335, 20.650709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061165, 29.135813, 20.830130>,  <34.635914, 28.966637, 20.424936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061165, 29.135813, 20.830130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160046, 28.764997, 20.942907>,  <34.219372, 28.542509, 21.010574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160046, 28.764997, 20.942907>,  <34.061165, 29.135813, 20.830130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160046, 28.764997, 20.942907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031930, 0.283021, 0.958582,
		-0.968438, -0.245964, 0.040362,
		0.247200, -0.927038, 0.281943,
		34.234207, 28.486885, 21.027491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578812, 28.910007, 21.352798>,  <34.061165, 29.135813, 20.830130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578812, 28.910007, 21.352798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907337, 28.687414, 21.403042>,  <34.104450, 28.553858, 21.433187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907337, 28.687414, 21.403042>,  <33.578812, 28.910007, 21.352798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907337, 28.687414, 21.403042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076240, 0.325273, 0.942542,
		-0.565365, -0.764542, 0.309576,
		0.821309, -0.556482, 0.125609,
		34.153728, 28.520470, 21.440725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474701, 28.577295, 21.968102>,  <33.578812, 28.910007, 21.352798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474701, 28.577295, 21.968102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.868992, 28.535580, 21.915241>,  <34.105568, 28.510550, 21.883526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.868992, 28.535580, 21.915241>,  <33.474701, 28.577295, 21.968102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868992, 28.535580, 21.915241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159182, 0.321950, 0.933279,
		-0.054786, -0.940995, 0.333956,
		0.985728, -0.104290, -0.132151,
		34.164711, 28.504293, 21.875595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712246, 28.114475, 22.510059>,  <33.474701, 28.577295, 21.968102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712246, 28.114475, 22.510059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025127, 28.340134, 22.404306>,  <34.212856, 28.475529, 22.340855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025127, 28.340134, 22.404306>,  <33.712246, 28.114475, 22.510059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025127, 28.340134, 22.404306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115564, 0.285614, 0.951351,
		0.612211, -0.774704, 0.158214,
		0.782204, 0.564144, -0.264384,
		34.259789, 28.509377, 22.324991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194309, 28.106359, 23.015738>,  <33.712246, 28.114475, 22.510059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194309, 28.106359, 23.015738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332451, 28.433819, 22.832197>,  <34.415337, 28.630295, 22.722073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332451, 28.433819, 22.832197>,  <34.194309, 28.106359, 23.015738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332451, 28.433819, 22.832197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452966, 0.282803, 0.845485,
		0.821919, -0.499837, -0.273152,
		0.345356, 0.818649, -0.458850,
		34.436058, 28.679413, 22.694542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871513, 28.208633, 23.307243>,  <34.194309, 28.106359, 23.015738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871513, 28.208633, 23.307243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787258, 28.562897, 23.141720>,  <34.736706, 28.775455, 23.042406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787258, 28.562897, 23.141720>,  <34.871513, 28.208633, 23.307243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787258, 28.562897, 23.141720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315038, 0.462225, 0.828914,
		0.925408, 0.044238, -0.376381,
		-0.210642, 0.885658, -0.413810,
		34.724064, 28.828594, 23.017576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350410, 28.674440, 23.501987>,  <34.871513, 28.208633, 23.307243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350410, 28.674440, 23.501987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084755, 28.944614, 23.373791>,  <34.925362, 29.106718, 23.296873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084755, 28.944614, 23.373791>,  <35.350410, 28.674440, 23.501987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084755, 28.944614, 23.373791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289372, 0.627514, 0.722835,
		0.689339, 0.387320, -0.612205,
		-0.664136, 0.675433, -0.320490,
		34.885513, 29.147243, 23.277643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738064, 29.448595, 23.443169>,  <35.350410, 28.674440, 23.501987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738064, 29.448595, 23.443169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344269, 29.496206, 23.494743>,  <35.107994, 29.524773, 23.525688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344269, 29.496206, 23.494743>,  <35.738064, 29.448595, 23.443169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344269, 29.496206, 23.494743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173799, 0.559960, 0.810086,
		0.024225, 0.819925, -0.571958,
		-0.984483, 0.119030, 0.128937,
		35.048923, 29.531916, 23.533424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639145, 30.269955, 23.672274>,  <35.738064, 29.448595, 23.443169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639145, 30.269955, 23.672274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.316868, 30.062269, 23.786314>,  <35.123501, 29.937658, 23.854738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.316868, 30.062269, 23.786314>,  <35.639145, 30.269955, 23.672274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316868, 30.062269, 23.786314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051336, 0.418292, 0.906861,
		-0.590110, 0.745283, -0.310359,
		-0.805689, -0.519215, 0.285099,
		35.075161, 29.906506, 23.871843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314693, 30.657448, 24.086054>,  <35.639145, 30.269955, 23.672274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314693, 30.657448, 24.086054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148720, 30.306288, 24.181650>,  <35.049133, 30.095591, 24.239008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148720, 30.306288, 24.181650>,  <35.314693, 30.657448, 24.086054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148720, 30.306288, 24.181650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048300, 0.241047, 0.969311,
		-0.908567, 0.413746, -0.057617,
		-0.414937, -0.877901, 0.238991,
		35.024239, 30.042917, 24.253347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753910, 30.856449, 24.689367>,  <35.314693, 30.657448, 24.086054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753910, 30.856449, 24.689367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826771, 30.463520, 24.706606>,  <34.870487, 30.227762, 24.716949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826771, 30.463520, 24.706606>,  <34.753910, 30.856449, 24.689367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826771, 30.463520, 24.706606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238542, 0.086667, 0.967257,
		-0.953896, -0.165910, 0.250113,
		0.182154, -0.982325, 0.043095,
		34.881416, 30.168823, 24.719534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348717, 30.552612, 25.272667>,  <34.753910, 30.856449, 24.689367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348717, 30.552612, 25.272667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629486, 30.276398, 25.202854>,  <34.797947, 30.110668, 25.160967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629486, 30.276398, 25.202854>,  <34.348717, 30.552612, 25.272667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629486, 30.276398, 25.202854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172672, -0.072751, 0.982289,
		-0.691004, -0.719629, 0.068171,
		0.701924, -0.690537, -0.174531,
		34.840065, 30.069237, 25.150496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176720, 29.830027, 25.724373>,  <34.348717, 30.552612, 25.272667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176720, 29.830027, 25.724373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562660, 29.861912, 25.624208>,  <34.794224, 29.881042, 25.564110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562660, 29.861912, 25.624208>,  <34.176720, 29.830027, 25.724373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562660, 29.861912, 25.624208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260441, -0.162925, 0.951644,
		0.035060, -0.983413, -0.177959,
		0.964853, 0.079712, -0.250409,
		34.852116, 29.885824, 25.549086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523521, 29.229361, 25.944645>,  <34.176720, 29.830027, 25.724373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523521, 29.229361, 25.944645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.784008, 29.530054, 25.903048>,  <34.940300, 29.710470, 25.878090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.784008, 29.530054, 25.903048>,  <34.523521, 29.229361, 25.944645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784008, 29.530054, 25.903048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325123, -0.152542, 0.933288,
		0.685720, -0.641583, -0.343743,
		0.651217, 0.751733, -0.103992,
		34.979374, 29.755573, 25.871849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071144, 29.065664, 26.427252>,  <34.523521, 29.229361, 25.944645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071144, 29.065664, 26.427252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153484, 29.443974, 26.326740>,  <35.202888, 29.670959, 26.266434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153484, 29.443974, 26.326740>,  <35.071144, 29.065664, 26.427252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153484, 29.443974, 26.326740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221490, 0.205087, 0.953353,
		0.953189, -0.251900, -0.167263,
		0.205846, 0.945772, -0.251280,
		35.215237, 29.727705, 26.251356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665634, 29.168491, 26.730438>,  <35.071144, 29.065664, 26.427252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665634, 29.168491, 26.730438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534237, 29.542013, 26.673725>,  <35.455399, 29.766127, 26.639698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534237, 29.542013, 26.673725>,  <35.665634, 29.168491, 26.730438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534237, 29.542013, 26.673725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008295, 0.152960, 0.988197,
		0.944471, 0.323438, -0.057992,
		-0.328491, 0.933805, -0.141784,
		35.435688, 29.822155, 26.631189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089653, 29.642944, 27.170460>,  <35.665634, 29.168491, 26.730438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089653, 29.642944, 27.170460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741501, 29.822239, 27.088959>,  <35.532608, 29.929815, 27.040058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741501, 29.822239, 27.088959>,  <36.089653, 29.642944, 27.170460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741501, 29.822239, 27.088959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182731, 0.090201, 0.979016,
		0.457212, 0.889351, 0.003397,
		-0.870383, 0.448238, -0.203754,
		35.480385, 29.956711, 27.027832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.216263, 31.499680, 31.194736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.880478, 31.705381, 31.124491>,  <38.679005, 31.828802, 31.082342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.880478, 31.705381, 31.124491>,  <39.216263, 31.499680, 31.194736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880478, 31.705381, 31.124491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112850, 0.481103, 0.869370,
		0.531567, 0.709987, -0.461903,
		-0.839465, 0.514255, -0.175616,
		38.628639, 31.859657, 31.071806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315380, 32.211952, 31.304502>,  <39.216263, 31.499680, 31.194736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315380, 32.211952, 31.304502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916031, 32.197960, 31.322540>,  <38.676422, 32.189564, 31.333363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916031, 32.197960, 31.322540>,  <39.315380, 32.211952, 31.304502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916031, 32.197960, 31.322540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007800, 0.699056, 0.715024,
		-0.056539, 0.714210, -0.697644,
		-0.998370, -0.034985, 0.045095,
		38.616520, 32.187466, 31.336069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041821, 32.906013, 31.296951>,  <39.315380, 32.211952, 31.304502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041821, 32.906013, 31.296951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721199, 32.704090, 31.425125>,  <38.528824, 32.582935, 31.502029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721199, 32.704090, 31.425125>,  <39.041821, 32.906013, 31.296951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721199, 32.704090, 31.425125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093381, 0.635028, 0.766824,
		-0.590582, 0.584730, -0.556150,
		-0.801556, -0.504806, 0.320434,
		38.480732, 32.552647, 31.521255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387417, 33.281204, 31.221918>,  <39.041821, 32.906013, 31.296951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387417, 33.281204, 31.221918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.339348, 33.022552, 31.523232>,  <38.310505, 32.867363, 31.704020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.339348, 33.022552, 31.523232>,  <38.387417, 33.281204, 31.221918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339348, 33.022552, 31.523232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136939, 0.762325, 0.632542,
		-0.983263, -0.027140, -0.180159,
		-0.120172, -0.646626, 0.753282,
		38.303295, 32.828564, 31.749216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737160, 33.382107, 31.558815>,  <38.387417, 33.281204, 31.221918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737160, 33.382107, 31.558815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959526, 33.200375, 31.837252>,  <38.092945, 33.091335, 32.004314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959526, 33.200375, 31.837252>,  <37.737160, 33.382107, 31.558815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959526, 33.200375, 31.837252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181047, 0.751132, 0.634840,
		-0.811283, -0.478943, 0.335311,
		0.555915, -0.454328, 0.696092,
		38.126301, 33.064075, 32.046078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373295, 33.574078, 32.176903>,  <37.737160, 33.382107, 31.558815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373295, 33.574078, 32.176903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.724510, 33.438339, 32.311897>,  <37.935238, 33.356895, 32.392895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.724510, 33.438339, 32.311897>,  <37.373295, 33.574078, 32.176903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724510, 33.438339, 32.311897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084094, 0.584805, 0.806803,
		-0.471151, -0.736782, 0.484942,
		0.878034, -0.339345, 0.337491,
		37.987919, 33.336536, 32.413143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250240, 33.499260, 32.871204>,  <37.373295, 33.574078, 32.176903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250240, 33.499260, 32.871204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.648342, 33.491077, 32.833164>,  <37.887203, 33.486168, 32.810341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.648342, 33.491077, 32.833164>,  <37.250240, 33.499260, 32.871204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648342, 33.491077, 32.833164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094462, 0.436604, 0.894681,
		0.023219, -0.899421, 0.436466,
		0.995258, -0.020456, -0.095099,
		37.946918, 33.484940, 32.804634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441582, 33.410069, 33.582821>,  <37.250240, 33.499260, 32.871204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441582, 33.410069, 33.582821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.774914, 33.537079, 33.401829>,  <37.974915, 33.613285, 33.293236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.774914, 33.537079, 33.401829>,  <37.441582, 33.410069, 33.582821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774914, 33.537079, 33.401829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085181, 0.735018, 0.672676,
		0.546169, -0.599105, 0.585468,
		0.833333, 0.317524, -0.452477,
		38.024914, 33.632336, 33.266087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009579, 33.503929, 34.102051>,  <37.441582, 33.410069, 33.582821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009579, 33.503929, 34.102051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.085205, 33.759792, 33.804035>,  <38.130581, 33.913311, 33.625225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.085205, 33.759792, 33.804035>,  <38.009579, 33.503929, 34.102051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085205, 33.759792, 33.804035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021239, 0.761214, 0.648153,
		0.981734, -0.106721, 0.157507,
		0.189068, 0.639660, -0.745043,
		38.141926, 33.951691, 33.580521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529060, 33.917667, 34.293308>,  <38.009579, 33.503929, 34.102051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529060, 33.917667, 34.293308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.381935, 34.141609, 33.996319>,  <38.293659, 34.275974, 33.818123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.381935, 34.141609, 33.996319>,  <38.529060, 33.917667, 34.293308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381935, 34.141609, 33.996319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006125, 0.796973, 0.603984,
		0.929880, 0.226701, -0.289707,
		-0.367812, 0.559858, -0.742478,
		38.271591, 34.309566, 33.773575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936459, 34.557419, 34.250183>,  <38.529060, 33.917667, 34.293308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936459, 34.557419, 34.250183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.576832, 34.615536, 34.084984>,  <38.361053, 34.650406, 33.985867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.576832, 34.615536, 34.084984>,  <38.936459, 34.557419, 34.250183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576832, 34.615536, 34.084984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084690, 0.867791, 0.489660,
		0.429538, 0.475215, -0.767898,
		-0.899069, 0.145294, -0.412995,
		38.307110, 34.659122, 33.961086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822105, 35.291981, 33.909828>,  <38.936459, 34.557419, 34.250183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822105, 35.291981, 33.909828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455288, 35.148602, 33.979740>,  <38.235199, 35.062572, 34.021687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455288, 35.148602, 33.979740>,  <38.822105, 35.291981, 33.909828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455288, 35.148602, 33.979740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233848, 0.838366, 0.492399,
		-0.323028, 0.410680, -0.852640,
		-0.917043, -0.358447, 0.174779,
		38.180176, 35.041069, 34.032173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458195, 35.814365, 33.810699>,  <38.822105, 35.291981, 33.909828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458195, 35.814365, 33.810699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.247025, 35.571014, 34.047737>,  <38.120323, 35.425003, 34.189960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.247025, 35.571014, 34.047737>,  <38.458195, 35.814365, 33.810699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247025, 35.571014, 34.047737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395961, 0.793591, 0.461982,
		-0.751336, 0.009250, -0.659855,
		-0.527929, -0.608381, 0.592591,
		38.088646, 35.388500, 34.225513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067963, 36.165298, 33.641716>,  <38.458195, 35.814365, 33.810699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067963, 36.165298, 33.641716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.366436, 36.136997, 33.906502>,  <39.545521, 36.120018, 34.065372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.366436, 36.136997, 33.906502>,  <39.067963, 36.165298, 33.641716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366436, 36.136997, 33.906502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660338, 0.047715, 0.749451,
		-0.084613, -0.996352, -0.011118,
		0.746187, -0.070755, 0.661967,
		39.590294, 36.115772, 34.105091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493484, 36.461658, 33.197979>,  <39.067963, 36.165298, 33.641716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493484, 36.461658, 33.197979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620815, 36.839947, 33.171783>,  <39.697212, 37.066917, 33.156067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620815, 36.839947, 33.171783>,  <39.493484, 36.461658, 33.197979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620815, 36.839947, 33.171783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746891, 0.207659, -0.631689,
		-0.583800, 0.249996, 0.772451,
		0.318326, 0.945717, -0.065488,
		39.716312, 37.123661, 33.152138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974049, 36.877823, 33.255253>,  <39.493484, 36.461658, 33.197979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974049, 36.877823, 33.255253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.218399, 37.135635, 33.071335>,  <39.365009, 37.290321, 32.960983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.218399, 37.135635, 33.071335>,  <38.974049, 36.877823, 33.255253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218399, 37.135635, 33.071335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692996, 0.154447, -0.704203,
		-0.382864, 0.748820, 0.541003,
		0.610878, 0.644527, -0.459797,
		39.401661, 37.328995, 32.933395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546406, 37.381294, 32.963226>,  <38.974049, 36.877823, 33.255253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546406, 37.381294, 32.963226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.882904, 37.441307, 32.755459>,  <39.084801, 37.477314, 32.630798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.882904, 37.441307, 32.755459>,  <38.546406, 37.381294, 32.963226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882904, 37.441307, 32.755459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540107, 0.189868, -0.819899,
		-0.024392, 0.970278, 0.240760,
		0.841243, 0.150035, -0.519422,
		39.135277, 37.486317, 32.599632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409279, 37.926090, 32.531567>,  <38.546406, 37.381294, 32.963226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409279, 37.926090, 32.531567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718533, 37.737129, 32.362289>,  <38.904087, 37.623753, 32.260723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718533, 37.737129, 32.362289>,  <38.409279, 37.926090, 32.531567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718533, 37.737129, 32.362289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413198, 0.131042, -0.901164,
		0.481172, 0.871584, -0.093884,
		0.773137, -0.472407, -0.423190,
		38.950474, 37.595406, 32.235332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505028, 38.371189, 31.970737>,  <38.409279, 37.926090, 32.531567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505028, 38.371189, 31.970737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.659981, 38.013866, 31.879578>,  <38.752953, 37.799473, 31.824883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.659981, 38.013866, 31.879578>,  <38.505028, 38.371189, 31.970737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659981, 38.013866, 31.879578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444924, 0.035356, -0.894870,
		0.807451, 0.448054, -0.383758,
		0.387382, -0.893307, -0.227898,
		38.776196, 37.745872, 31.811209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551971, 38.407616, 31.332575>,  <38.505028, 38.371189, 31.970737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551971, 38.407616, 31.332575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.597439, 38.013878, 31.386463>,  <38.624718, 37.777637, 31.418797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.597439, 38.013878, 31.386463>,  <38.551971, 38.407616, 31.332575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597439, 38.013878, 31.386463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532345, -0.174834, -0.828277,
		0.838861, 0.022433, -0.543883,
		0.113670, -0.984342, 0.134720,
		38.631538, 37.718575, 31.426880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798447, 38.126312, 30.661316>,  <38.551971, 38.407616, 31.332575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798447, 38.126312, 30.661316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.642323, 37.818974, 30.864218>,  <38.548649, 37.634571, 30.985958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.642323, 37.818974, 30.864218>,  <38.798447, 38.126312, 30.661316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642323, 37.818974, 30.864218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517377, -0.272690, -0.811148,
		0.761564, -0.579040, -0.291091,
		-0.390310, -0.768344, 0.507252,
		38.525230, 37.588470, 31.016394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977459, 37.528778, 30.252338>,  <38.798447, 38.126312, 30.661316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977459, 37.528778, 30.252338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669285, 37.451149, 30.495241>,  <38.484379, 37.404572, 30.640982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669285, 37.451149, 30.495241>,  <38.977459, 37.528778, 30.252338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669285, 37.451149, 30.495241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372431, -0.636076, -0.675797,
		0.517414, -0.746822, 0.417780,
		-0.770440, -0.194073, 0.607255,
		38.438152, 37.392925, 30.677418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865650, 36.829937, 30.246632>,  <38.977459, 37.528778, 30.252338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865650, 36.829937, 30.246632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.527721, 36.986244, 30.392824>,  <38.324963, 37.080029, 30.480539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.527721, 36.986244, 30.392824>,  <38.865650, 36.829937, 30.246632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527721, 36.986244, 30.392824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535042, -0.613661, -0.580647,
		-0.002616, -0.686091, 0.727511,
		-0.844822, 0.390767, 0.365482,
		38.274277, 37.103474, 30.502468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434505, 36.227177, 30.384481>,  <38.865650, 36.829937, 30.246632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434505, 36.227177, 30.384481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.196129, 36.546585, 30.350502>,  <38.053101, 36.738232, 30.330114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.196129, 36.546585, 30.350502>,  <38.434505, 36.227177, 30.384481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196129, 36.546585, 30.350502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609438, -0.518614, -0.599687,
		-0.522950, -0.305566, 0.795709,
		-0.595910, 0.798542, -0.084985,
		38.017345, 36.786140, 30.325018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847713, 35.884201, 30.489120>,  <38.434505, 36.227177, 30.384481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847713, 35.884201, 30.489120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.794464, 36.243793, 30.322216>,  <37.762512, 36.459549, 30.222073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.794464, 36.243793, 30.322216>,  <37.847713, 35.884201, 30.489120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794464, 36.243793, 30.322216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574261, -0.413103, -0.706803,
		-0.807775, 0.145523, 0.571246,
		-0.133127, 0.898982, -0.417263,
		37.754524, 36.513489, 30.197037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168758, 35.913334, 30.274477>,  <37.847713, 35.884201, 30.489120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168758, 35.913334, 30.274477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.355221, 36.183159, 30.045507>,  <37.467098, 36.345055, 29.908127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.355221, 36.183159, 30.045507>,  <37.168758, 35.913334, 30.274477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355221, 36.183159, 30.045507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385231, -0.427696, -0.817724,
		-0.796428, 0.601700, 0.060490,
		0.466154, 0.674561, -0.572423,
		37.495068, 36.385529, 29.873781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720551, 36.125782, 29.776011>,  <37.168758, 35.913334, 30.274477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720551, 36.125782, 29.776011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068817, 36.217930, 29.602177>,  <37.277779, 36.273220, 29.497875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068817, 36.217930, 29.602177>,  <36.720551, 36.125782, 29.776011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068817, 36.217930, 29.602177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382557, -0.238201, -0.892699,
		-0.309173, 0.943498, -0.119263,
		0.870668, 0.230373, -0.434587,
		37.330017, 36.287041, 29.471800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576378, 36.515461, 29.048161>,  <36.720551, 36.125782, 29.776011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576378, 36.515461, 29.048161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.958027, 36.395870, 29.041658>,  <37.187016, 36.324116, 29.037758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.958027, 36.395870, 29.041658>,  <36.576378, 36.515461, 29.048161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958027, 36.395870, 29.041658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170134, -0.496671, -0.851100,
		0.246389, 0.814818, -0.524751,
		0.954121, -0.298980, -0.016254,
		37.244263, 36.306175, 29.036781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020947, 36.996559, 28.664663>,  <36.576378, 36.515461, 29.048161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020947, 36.996559, 28.664663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646011, 37.116570, 28.593801>,  <35.421051, 37.188576, 28.551285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646011, 37.116570, 28.593801>,  <36.020947, 36.996559, 28.664663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646011, 37.116570, 28.593801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196750, -0.036157, 0.979787,
		0.287556, 0.953245, 0.092921,
		-0.937337, 0.300026, -0.177154,
		35.364811, 37.206577, 28.540655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885792, 37.603855, 29.043236>,  <36.020947, 36.996559, 28.664663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885792, 37.603855, 29.043236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.533764, 37.431732, 28.962929>,  <35.322548, 37.328457, 28.914745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.533764, 37.431732, 28.962929>,  <35.885792, 37.603855, 29.043236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533764, 37.431732, 28.962929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230407, 0.017294, 0.972941,
		-0.415195, 0.902515, -0.114367,
		-0.880071, -0.430311, -0.200765,
		35.269741, 37.302639, 28.902699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428127, 38.041214, 29.362757>,  <35.885792, 37.603855, 29.043236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428127, 38.041214, 29.362757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.288757, 37.668873, 29.318735>,  <35.205135, 37.445469, 29.292322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.288757, 37.668873, 29.318735>,  <35.428127, 38.041214, 29.362757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288757, 37.668873, 29.318735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215938, -0.034540, 0.975796,
		-0.912123, 0.363761, -0.188971,
		-0.348429, -0.930852, -0.110054,
		35.184227, 37.389618, 29.285719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919296, 37.985077, 29.788977>,  <35.428127, 38.041214, 29.362757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919296, 37.985077, 29.788977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.976021, 37.595188, 29.719910>,  <35.010056, 37.361256, 29.678471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.976021, 37.595188, 29.719910>,  <34.919296, 37.985077, 29.788977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976021, 37.595188, 29.719910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022376, -0.177540, 0.983859,
		-0.989641, -0.135660, -0.046987,
		0.141813, -0.974719, -0.172665,
		35.018566, 37.302773, 29.668110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468685, 37.635353, 30.228987>,  <34.919296, 37.985077, 29.788977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468685, 37.635353, 30.228987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.747097, 37.364693, 30.132919>,  <34.914146, 37.202297, 30.075279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.747097, 37.364693, 30.132919>,  <34.468685, 37.635353, 30.228987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747097, 37.364693, 30.132919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038918, -0.369557, 0.928393,
		-0.716955, -0.636844, -0.283558,
		0.696032, -0.676652, -0.240171,
		34.955906, 37.161697, 30.060867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217995, 37.044056, 30.558886>,  <34.468685, 37.635353, 30.228987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217995, 37.044056, 30.558886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.592823, 36.938496, 30.467449>,  <34.817719, 36.875160, 30.412588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.592823, 36.938496, 30.467449>,  <34.217995, 37.044056, 30.558886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592823, 36.938496, 30.467449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046100, -0.555479, 0.830252,
		-0.346079, -0.788544, -0.508358,
		0.937072, -0.263898, -0.228591,
		34.873943, 36.859325, 30.398872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342731, 36.317974, 30.649300>,  <34.217995, 37.044056, 30.558886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342731, 36.317974, 30.649300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.712734, 36.469219, 30.664259>,  <34.934734, 36.559967, 30.673235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.712734, 36.469219, 30.664259>,  <34.342731, 36.317974, 30.649300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712734, 36.469219, 30.664259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167258, -0.493586, 0.853462,
		0.341164, -0.783201, -0.519811,
		0.925004, 0.378113, 0.037398,
		34.990234, 36.582653, 30.675478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883499, 35.764977, 30.853960>,  <34.342731, 36.317974, 30.649300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883499, 35.764977, 30.853960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.035984, 36.116997, 30.967234>,  <35.127476, 36.328209, 31.035198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.035984, 36.116997, 30.967234>,  <34.883499, 35.764977, 30.853960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035984, 36.116997, 30.967234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176256, -0.369882, 0.912207,
		0.907531, -0.297829, -0.296116,
		0.381210, 0.880048, 0.283186,
		35.150349, 36.381012, 31.052189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467491, 35.565823, 31.223070>,  <34.883499, 35.764977, 30.853960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467491, 35.565823, 31.223070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.376980, 35.940094, 31.331367>,  <35.322674, 36.164658, 31.396345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.376980, 35.940094, 31.331367>,  <35.467491, 35.565823, 31.223070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376980, 35.940094, 31.331367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312029, -0.193678, 0.930122,
		0.922734, 0.294943, -0.248135,
		-0.226274, 0.935680, 0.270744,
		35.309097, 36.220798, 31.412590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922981, 35.762104, 31.752279>,  <35.467491, 35.565823, 31.223070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922981, 35.762104, 31.752279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.644146, 36.044048, 31.804798>,  <35.476845, 36.213215, 31.836309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.644146, 36.044048, 31.804798>,  <35.922981, 35.762104, 31.752279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644146, 36.044048, 31.804798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261826, 0.079782, 0.961812,
		0.667465, 0.704849, -0.240166,
		-0.697093, 0.704857, 0.131296,
		35.435017, 36.255505, 31.844187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255184, 36.312393, 32.073231>,  <35.922981, 35.762104, 31.752279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255184, 36.312393, 32.073231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.872990, 36.377602, 32.171593>,  <35.643673, 36.416725, 32.230610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.872990, 36.377602, 32.171593>,  <36.255184, 36.312393, 32.073231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872990, 36.377602, 32.171593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271389, 0.158748, 0.949288,
		0.115718, 0.973768, -0.195924,
		-0.955488, 0.163021, 0.245900,
		35.586342, 36.426506, 32.245361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230202, 36.876560, 32.588951>,  <36.255184, 36.312393, 32.073231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230202, 36.876560, 32.588951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.869682, 36.710526, 32.638531>,  <35.653370, 36.610905, 32.668278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.869682, 36.710526, 32.638531>,  <36.230202, 36.876560, 32.588951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869682, 36.710526, 32.638531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015368, 0.255314, 0.966736,
		-0.432931, 0.873221, -0.223735,
		-0.901296, -0.415091, 0.123953,
		35.599293, 36.585999, 32.675716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.695343, 37.017845, 25.081081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358566, 36.807419, 25.129049>,  <35.156498, 36.681164, 25.157831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358566, 36.807419, 25.129049>,  <35.695343, 37.017845, 25.081081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358566, 36.807419, 25.129049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313550, 0.657912, 0.684718,
		-0.439104, 0.538894, -0.718874,
		-0.841946, -0.526066, 0.119922,
		35.105984, 36.649601, 25.165026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199455, 37.542164, 25.145817>,  <35.695343, 37.017845, 25.081081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199455, 37.542164, 25.145817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047089, 37.212906, 25.314264>,  <34.955669, 37.015350, 25.415333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047089, 37.212906, 25.314264>,  <35.199455, 37.542164, 25.145817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047089, 37.212906, 25.314264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163603, 0.508269, 0.845516,
		-0.910022, 0.253171, -0.328275,
		-0.380912, -0.823144, 0.421117,
		34.932816, 36.965961, 25.440599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695366, 37.756729, 25.561623>,  <35.199455, 37.542164, 25.145817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695366, 37.756729, 25.561623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747955, 37.390903, 25.714617>,  <34.779510, 37.171410, 25.806414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747955, 37.390903, 25.714617>,  <34.695366, 37.756729, 25.561623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747955, 37.390903, 25.714617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136854, 0.365395, 0.920737,
		-0.981828, -0.173397, -0.077121,
		0.131474, -0.914560, 0.382485,
		34.787399, 37.116535, 25.829363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182152, 37.660450, 26.116823>,  <34.695366, 37.756729, 25.561623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182152, 37.660450, 26.116823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476063, 37.393414, 26.164865>,  <34.652409, 37.233192, 26.193691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476063, 37.393414, 26.164865>,  <34.182152, 37.660450, 26.116823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476063, 37.393414, 26.164865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053898, 0.233968, 0.970749,
		-0.676162, -0.706812, 0.207896,
		0.734778, -0.667589, 0.120104,
		34.696495, 37.193138, 26.200897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028469, 37.285122, 26.698095>,  <34.182152, 37.660450, 26.116823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028469, 37.285122, 26.698095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416580, 37.206589, 26.641518>,  <34.649448, 37.159470, 26.607571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416580, 37.206589, 26.641518>,  <34.028469, 37.285122, 26.698095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416580, 37.206589, 26.641518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141878, -0.011936, 0.989812,
		-0.196023, -0.980464, 0.016275,
		0.970282, -0.196335, -0.141446,
		34.707664, 37.147690, 26.599083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140411, 36.745800, 27.143421>,  <34.028469, 37.285122, 26.698095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140411, 36.745800, 27.143421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498718, 36.913330, 27.083839>,  <34.713703, 37.013847, 27.048090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498718, 36.913330, 27.083839>,  <34.140411, 36.745800, 27.143421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498718, 36.913330, 27.083839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148864, 0.033098, 0.988304,
		0.418854, -0.907465, -0.032700,
		0.895768, 0.418823, -0.148952,
		34.767448, 37.038979, 27.039154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638191, 36.345966, 27.417202>,  <34.140411, 36.745800, 27.143421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638191, 36.345966, 27.417202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818989, 36.701714, 27.389715>,  <34.927467, 36.915161, 27.373222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818989, 36.701714, 27.389715>,  <34.638191, 36.345966, 27.417202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818989, 36.701714, 27.389715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138613, 0.006075, 0.990328,
		0.881187, -0.457145, -0.120533,
		0.451991, 0.889372, -0.068719,
		34.954586, 36.968525, 27.369099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121902, 36.277348, 27.902891>,  <34.638191, 36.345966, 27.417202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121902, 36.277348, 27.902891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135506, 36.669132, 27.823399>,  <35.143665, 36.904205, 27.775703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135506, 36.669132, 27.823399>,  <35.121902, 36.277348, 27.902891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135506, 36.669132, 27.823399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339618, 0.175690, 0.924009,
		0.939949, -0.098915, -0.326669,
		0.034006, 0.979464, -0.198733,
		35.145706, 36.962971, 27.763779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847477, 36.575806, 28.114807>,  <35.121902, 36.277348, 27.902891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847477, 36.575806, 28.114807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565205, 36.859013, 28.125589>,  <35.395840, 37.028934, 28.132059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565205, 36.859013, 28.125589>,  <35.847477, 36.575806, 28.114807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565205, 36.859013, 28.125589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119813, 0.081751, 0.989425,
		0.698323, 0.701451, -0.142519,
		-0.705684, 0.708014, 0.026954,
		35.353500, 37.071415, 28.133677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747475, 36.649216, 28.303453>,  <35.847477, 36.575806, 28.114807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747475, 36.649216, 28.303453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033333, 36.410999, 28.450212>,  <37.204849, 36.268070, 28.538269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033333, 36.410999, 28.450212>,  <36.747475, 36.649216, 28.303453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033333, 36.410999, 28.450212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066763, -0.464057, -0.883286,
		0.696295, 0.655730, -0.291876,
		0.714644, -0.595541, 0.366899,
		37.247726, 36.232338, 28.560282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218567, 36.760681, 27.805779>,  <36.747475, 36.649216, 28.303453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218567, 36.760681, 27.805779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308746, 36.418217, 27.991747>,  <37.362854, 36.212738, 28.103329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308746, 36.418217, 27.991747>,  <37.218567, 36.760681, 27.805779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308746, 36.418217, 27.991747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304613, -0.391337, -0.868370,
		0.925410, 0.337395, 0.172572,
		0.225450, -0.856166, 0.464922,
		37.376381, 36.161366, 28.131224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833961, 36.674149, 27.640730>,  <37.218567, 36.760681, 27.805779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833961, 36.674149, 27.640730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714550, 36.314064, 27.767530>,  <37.642902, 36.098011, 27.843611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714550, 36.314064, 27.767530>,  <37.833961, 36.674149, 27.640730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714550, 36.314064, 27.767530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444191, -0.425036, -0.788695,
		0.844733, -0.094640, 0.526754,
		-0.298531, -0.900215, 0.317004,
		37.624992, 36.043999, 27.862631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376064, 36.232872, 27.507250>,  <37.833961, 36.674149, 27.640730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376064, 36.232872, 27.507250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056118, 35.993439, 27.524776>,  <37.864151, 35.849781, 27.535292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056118, 35.993439, 27.524776>,  <38.376064, 36.232872, 27.507250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056118, 35.993439, 27.524776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288816, -0.447873, -0.846165,
		0.526122, -0.664162, 0.531117,
		-0.799863, -0.598581, 0.043815,
		37.816158, 35.813866, 27.537922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609299, 35.572304, 27.237457>,  <38.376064, 36.232872, 27.507250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609299, 35.572304, 27.237457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211285, 35.534218, 27.248997>,  <37.972477, 35.511368, 27.255920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211285, 35.534218, 27.248997>,  <38.609299, 35.572304, 27.237457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211285, 35.534218, 27.248997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032780, -0.587553, -0.808522,
		0.093931, -0.803565, 0.587759,
		-0.995039, -0.095212, 0.028849,
		37.912773, 35.505653, 27.257650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370590, 34.724220, 27.158361>,  <38.609299, 35.572304, 27.237457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370590, 34.724220, 27.158361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070137, 34.951855, 27.024536>,  <37.889866, 35.088436, 26.944241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070137, 34.951855, 27.024536>,  <38.370590, 34.724220, 27.158361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070137, 34.951855, 27.024536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171294, -0.657460, -0.733760,
		-0.637529, -0.493851, 0.591327,
		-0.751143, 0.569084, -0.334556,
		37.844795, 35.122581, 26.924168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818626, 34.241383, 27.026457>,  <38.370590, 34.724220, 27.158361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818626, 34.241383, 27.026457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717731, 34.565079, 26.814230>,  <37.657192, 34.759296, 26.686893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717731, 34.565079, 26.814230>,  <37.818626, 34.241383, 27.026457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717731, 34.565079, 26.814230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124127, -0.570824, -0.811635,
		-0.959670, -0.138871, 0.244435,
		-0.252242, 0.809243, -0.530565,
		37.642059, 34.807850, 26.655060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092548, 34.171299, 26.629148>,  <37.818626, 34.241383, 27.026457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092548, 34.171299, 26.629148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310574, 34.429234, 26.414825>,  <37.441391, 34.583996, 26.286232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310574, 34.429234, 26.414825>,  <37.092548, 34.171299, 26.629148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310574, 34.429234, 26.414825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166530, -0.543082, -0.823000,
		-0.821688, 0.537817, -0.188632,
		0.545066, 0.644836, -0.535807,
		37.474094, 34.622684, 26.254084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805870, 34.238136, 25.886173>,  <37.092548, 34.171299, 26.629148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805870, 34.238136, 25.886173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174252, 34.383881, 25.830929>,  <37.395283, 34.471329, 25.797783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174252, 34.383881, 25.830929>,  <36.805870, 34.238136, 25.886173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174252, 34.383881, 25.830929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009691, -0.332908, -0.942910,
		-0.389540, 0.869719, -0.303064,
		0.920959, 0.364364, -0.138109,
		37.450539, 34.493191, 25.789495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851116, 34.497272, 25.162609>,  <36.805870, 34.238136, 25.886173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851116, 34.497272, 25.162609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225948, 34.436081, 25.288134>,  <37.450848, 34.399368, 25.363449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225948, 34.436081, 25.288134>,  <36.851116, 34.497272, 25.162609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225948, 34.436081, 25.288134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235093, -0.388017, -0.891165,
		0.258092, 0.908868, -0.327639,
		0.937081, -0.152977, 0.313812,
		37.507072, 34.390186, 25.382277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258923, 34.727417, 24.583460>,  <36.851116, 34.497272, 25.162609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258923, 34.727417, 24.583460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513577, 34.508854, 24.801136>,  <37.666367, 34.377716, 24.931742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513577, 34.508854, 24.801136>,  <37.258923, 34.727417, 24.583460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513577, 34.508854, 24.801136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331189, -0.443556, -0.832810,
		0.696430, 0.710422, -0.101418,
		0.636631, -0.546405, 0.544189,
		37.704567, 34.344933, 24.964394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941299, 34.622501, 24.118835>,  <37.258923, 34.727417, 24.583460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941299, 34.622501, 24.118835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950581, 34.363075, 24.423159>,  <37.956150, 34.207420, 24.605753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950581, 34.363075, 24.423159>,  <37.941299, 34.622501, 24.118835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950581, 34.363075, 24.423159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537544, -0.633546, -0.556477,
		0.842916, 0.421881, 0.333929,
		0.023208, -0.648565, 0.760806,
		37.957542, 34.168507, 24.651400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599026, 34.288898, 24.130060>,  <37.941299, 34.622501, 24.118835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599026, 34.288898, 24.130060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357452, 34.040142, 24.329468>,  <38.212509, 33.890888, 24.449112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357452, 34.040142, 24.329468>,  <38.599026, 34.288898, 24.130060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357452, 34.040142, 24.329468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379323, -0.774351, -0.506452,
		0.700987, -0.116762, 0.703551,
		-0.603930, -0.621890, 0.498519,
		38.176273, 33.853577, 24.479023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010414, 33.706646, 24.216282>,  <38.599026, 34.288898, 24.130060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010414, 33.706646, 24.216282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632996, 33.586891, 24.272978>,  <38.406544, 33.515038, 24.306995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632996, 33.586891, 24.272978>,  <39.010414, 33.706646, 24.216282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632996, 33.586891, 24.272978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196618, -0.850564, -0.487732,
		0.266578, -0.432329, 0.861410,
		-0.943545, -0.299387, 0.141738,
		38.349934, 33.497074, 24.315498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.024849, 30.629795, 25.409166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.348835, 30.850424, 25.329445>,  <32.543228, 30.982801, 25.281612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.348835, 30.850424, 25.329445>,  <32.024849, 30.629795, 25.409166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348835, 30.850424, 25.329445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197701, 0.063150, 0.978226,
		0.552148, -0.831733, -0.057897,
		0.809967, 0.551572, -0.199303,
		32.591824, 31.015896, 25.269653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551678, 30.401867, 25.795090>,  <32.024849, 30.629795, 25.409166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551678, 30.401867, 25.795090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.640152, 30.783958, 25.716486>,  <32.693237, 31.013214, 25.669323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.640152, 30.783958, 25.716486>,  <32.551678, 30.401867, 25.795090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640152, 30.783958, 25.716486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229078, 0.144973, 0.962552,
		0.947945, -0.257918, -0.186756,
		0.221185, 0.955228, -0.196510,
		32.706509, 31.070526, 25.657534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229931, 30.488140, 26.038507>,  <32.551678, 30.401867, 25.795090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229931, 30.488140, 26.038507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.045605, 30.842119, 26.011612>,  <32.935009, 31.054506, 25.995476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.045605, 30.842119, 26.011612>,  <33.229931, 30.488140, 26.038507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045605, 30.842119, 26.011612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209298, 0.181985, 0.960768,
		0.862464, 0.428663, -0.269079,
		-0.460814, 0.884946, -0.067238,
		32.907360, 31.107603, 25.991440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577732, 30.970751, 26.445925>,  <33.229931, 30.488140, 26.038507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577732, 30.970751, 26.445925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.213406, 31.132650, 26.413465>,  <32.994808, 31.229790, 26.393990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.213406, 31.132650, 26.413465>,  <33.577732, 30.970751, 26.445925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213406, 31.132650, 26.413465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067988, 0.340976, 0.937610,
		0.407166, 0.848478, -0.338086,
		-0.910820, 0.404748, -0.081147,
		32.940159, 31.254074, 26.389122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581654, 31.543348, 27.010941>,  <33.577732, 30.970751, 26.445925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581654, 31.543348, 27.010941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.197056, 31.550865, 26.901274>,  <32.966297, 31.555376, 26.835474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.197056, 31.550865, 26.901274>,  <33.581654, 31.543348, 27.010941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197056, 31.550865, 26.901274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220001, 0.545218, 0.808911,
		0.164681, 0.838083, -0.520092,
		-0.961499, 0.018791, -0.274166,
		32.908607, 31.556503, 26.819023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366524, 32.230534, 27.045950>,  <33.581654, 31.543348, 27.010941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366524, 32.230534, 27.045950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.026634, 32.022327, 27.079473>,  <32.822701, 31.897404, 27.099588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.026634, 32.022327, 27.079473>,  <33.366524, 32.230534, 27.045950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026634, 32.022327, 27.079473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182581, 0.439654, 0.879414,
		-0.494597, 0.731961, -0.468623,
		-0.849728, -0.520517, 0.083810,
		32.771717, 31.866173, 27.104616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904568, 32.665947, 27.305285>,  <33.366524, 32.230534, 27.045950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904568, 32.665947, 27.305285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.714787, 32.325672, 27.395826>,  <32.600918, 32.121510, 27.450151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.714787, 32.325672, 27.395826>,  <32.904568, 32.665947, 27.305285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714787, 32.325672, 27.395826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290891, 0.394204, 0.871772,
		-0.830831, 0.347767, -0.434486,
		-0.474449, -0.850683, 0.226355,
		32.572453, 32.070469, 27.463734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388165, 32.921883, 27.705503>,  <32.904568, 32.665947, 27.305285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388165, 32.921883, 27.705503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.398567, 32.529957, 27.784779>,  <32.404808, 32.294800, 27.832344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.398567, 32.529957, 27.784779>,  <32.388165, 32.921883, 27.705503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398567, 32.529957, 27.784779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223112, 0.187566, 0.956577,
		-0.974446, -0.069091, -0.213732,
		0.026002, -0.979819, 0.198188,
		32.406368, 32.236012, 27.844234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763733, 32.631432, 27.856150>,  <32.388165, 32.921883, 27.705503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763733, 32.631432, 27.856150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.048325, 32.414234, 28.034567>,  <32.219078, 32.283916, 28.141617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.048325, 32.414234, 28.034567>,  <31.763733, 32.631432, 27.856150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048325, 32.414234, 28.034567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286401, 0.355567, 0.889689,
		-0.641696, -0.760741, 0.097464,
		0.711477, -0.542996, 0.446043,
		32.261768, 32.251335, 28.168381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607244, 32.525345, 28.620510>,  <31.763733, 32.631432, 27.856150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607244, 32.525345, 28.620510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.973642, 32.365246, 28.631512>,  <32.193481, 32.269188, 28.638113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.973642, 32.365246, 28.631512>,  <31.607244, 32.525345, 28.620510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973642, 32.365246, 28.631512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034405, 0.146675, 0.988586,
		-0.399709, -0.904595, 0.148124,
		0.915996, -0.400243, 0.027505,
		32.248440, 32.245174, 28.639763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633854, 32.076408, 29.273239>,  <31.607244, 32.525345, 28.620510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633854, 32.076408, 29.273239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.000118, 32.202919, 29.174019>,  <32.219879, 32.278824, 29.114487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.000118, 32.202919, 29.174019>,  <31.633854, 32.076408, 29.273239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000118, 32.202919, 29.174019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188989, 0.205886, 0.960153,
		0.354747, -0.926055, 0.128749,
		0.915663, 0.316279, -0.248051,
		32.274818, 32.297802, 29.099604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244476, 31.684982, 29.630302>,  <31.633854, 32.076408, 29.273239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244476, 31.684982, 29.630302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.404278, 32.034161, 29.518330>,  <32.500160, 32.243668, 29.451145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.404278, 32.034161, 29.518330>,  <32.244476, 31.684982, 29.630302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404278, 32.034161, 29.518330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226046, 0.202126, 0.952916,
		0.888425, -0.443972, -0.116575,
		0.399505, 0.872946, -0.279932,
		32.524128, 32.296043, 29.434351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754700, 31.695358, 30.087654>,  <32.244476, 31.684982, 29.630302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754700, 31.695358, 30.087654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.756615, 32.078941, 29.974253>,  <32.757763, 32.309090, 29.906212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.756615, 32.078941, 29.974253>,  <32.754700, 31.695358, 30.087654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756615, 32.078941, 29.974253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101056, 0.281592, 0.954198,
		0.994869, -0.033222, -0.095559,
		0.004792, 0.958959, -0.283504,
		32.758053, 32.366631, 29.889202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227577, 31.954481, 30.484678>,  <32.754700, 31.695358, 30.087654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227577, 31.954481, 30.484678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051620, 32.292599, 30.363367>,  <32.946045, 32.495468, 30.290581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051620, 32.292599, 30.363367>,  <33.227577, 31.954481, 30.484678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051620, 32.292599, 30.363367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118387, 0.389340, 0.913454,
		0.890213, 0.365918, -0.271339,
		-0.439892, 0.845292, -0.303276,
		32.919651, 32.546185, 30.272385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036964, 32.119152, 30.441280>,  <33.227577, 31.954481, 30.484678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036964, 32.119152, 30.441280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.359619, 31.907898, 30.547421>,  <34.553211, 31.781145, 30.611105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.359619, 31.907898, 30.547421>,  <34.036964, 32.119152, 30.441280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359619, 31.907898, 30.547421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012632, -0.464251, -0.885614,
		0.590916, 0.711014, -0.381152,
		0.806634, -0.528139, 0.265351,
		34.601608, 31.749456, 30.627026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538849, 32.202679, 29.961952>,  <34.036964, 32.119152, 30.441280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538849, 32.202679, 29.961952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.636307, 31.846684, 30.116123>,  <34.694782, 31.633085, 30.208626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.636307, 31.846684, 30.116123>,  <34.538849, 32.202679, 29.961952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636307, 31.846684, 30.116123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236952, -0.330736, -0.913492,
		0.940475, 0.313893, 0.130304,
		0.243643, -0.889992, 0.385426,
		34.709400, 31.579685, 30.231750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080650, 32.019157, 29.590698>,  <34.538849, 32.202679, 29.961952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080650, 32.019157, 29.590698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.033237, 31.655443, 29.750271>,  <35.004791, 31.437214, 29.846014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.033237, 31.655443, 29.750271>,  <35.080650, 32.019157, 29.590698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033237, 31.655443, 29.750271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053105, -0.406995, -0.911886,
		0.991529, -0.086903, 0.096530,
		-0.118533, -0.909287, 0.398932,
		34.997677, 31.382656, 29.869951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674801, 31.612206, 29.407436>,  <35.080650, 32.019157, 29.590698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674801, 31.612206, 29.407436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368881, 31.368462, 29.491116>,  <35.185329, 31.222216, 29.541323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368881, 31.368462, 29.491116>,  <35.674801, 31.612206, 29.407436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368881, 31.368462, 29.491116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217154, -0.549518, -0.806768,
		0.606571, -0.571586, 0.552596,
		-0.764798, -0.609360, 0.209199,
		35.139442, 31.185654, 29.553875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909290, 30.921862, 29.396919>,  <35.674801, 31.612206, 29.407436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909290, 30.921862, 29.396919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516491, 30.885508, 29.330694>,  <35.280811, 30.863695, 29.290958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516491, 30.885508, 29.330694>,  <35.909290, 30.921862, 29.396919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516491, 30.885508, 29.330694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188868, -0.474139, -0.859954,
		-0.000340, -0.875747, 0.482771,
		-0.982002, -0.090887, -0.165562,
		35.221889, 30.858242, 29.281025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809212, 30.263201, 29.055578>,  <35.909290, 30.921862, 29.396919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809212, 30.263201, 29.055578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459976, 30.435535, 28.964281>,  <35.250435, 30.538937, 28.909502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459976, 30.435535, 28.964281>,  <35.809212, 30.263201, 29.055578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459976, 30.435535, 28.964281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090607, -0.316606, -0.944220,
		-0.479067, -0.845069, 0.237389,
		-0.873090, 0.430835, -0.228244,
		35.198048, 30.564785, 28.895807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430462, 29.704037, 28.805861>,  <35.809212, 30.263201, 29.055578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430462, 29.704037, 28.805861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.273293, 30.050488, 28.682285>,  <35.178993, 30.258358, 28.608141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.273293, 30.050488, 28.682285>,  <35.430462, 29.704037, 28.805861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273293, 30.050488, 28.682285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219685, -0.237818, -0.946140,
		-0.892946, -0.439625, -0.096831,
		-0.392919, 0.866125, -0.308937,
		35.155418, 30.310326, 28.589603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969978, 29.520678, 28.228195>,  <35.430462, 29.704037, 28.805861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969978, 29.520678, 28.228195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006607, 29.915283, 28.173927>,  <35.028584, 30.152046, 28.141367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006607, 29.915283, 28.173927>,  <34.969978, 29.520678, 28.228195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006607, 29.915283, 28.173927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096528, -0.144396, -0.984801,
		-0.991109, 0.077083, -0.108448,
		0.091571, 0.986513, -0.135672,
		35.034077, 30.211237, 28.133226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498196, 29.629793, 27.725466>,  <34.969978, 29.520678, 28.228195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498196, 29.629793, 27.725466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.749790, 29.940420, 27.710939>,  <34.900745, 30.126797, 27.702225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.749790, 29.940420, 27.710939>,  <34.498196, 29.629793, 27.725466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749790, 29.940420, 27.710939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134785, -0.154935, -0.978687,
		-0.765645, 0.610684, -0.202121,
		0.628984, 0.776570, -0.036314,
		34.938484, 30.173391, 27.700045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196579, 30.127398, 27.331909>,  <34.498196, 29.629793, 27.725466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196579, 30.127398, 27.331909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.588490, 30.207184, 27.325506>,  <34.823635, 30.255056, 27.321665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.588490, 30.207184, 27.325506>,  <34.196579, 30.127398, 27.331909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588490, 30.207184, 27.325506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002598, -0.092664, -0.995694,
		-0.200090, 0.975514, -0.091308,
		0.979774, 0.199465, -0.016007,
		34.882423, 30.267023, 27.320704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326805, 30.572304, 26.741386>,  <34.196579, 30.127398, 27.331909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326805, 30.572304, 26.741386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668453, 30.382223, 26.825922>,  <34.873440, 30.268175, 26.876644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668453, 30.382223, 26.825922>,  <34.326805, 30.572304, 26.741386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668453, 30.382223, 26.825922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215020, -0.047354, -0.975461,
		0.473549, 0.878601, 0.061732,
		0.854118, -0.475202, 0.211341,
		34.924690, 30.239662, 26.889324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845516, 30.963728, 26.543858>,  <34.326805, 30.572304, 26.741386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845516, 30.963728, 26.543858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.008900, 30.599087, 26.562353>,  <35.106930, 30.380302, 26.573450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.008900, 30.599087, 26.562353>,  <34.845516, 30.963728, 26.543858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008900, 30.599087, 26.562353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196686, 0.038437, -0.979713,
		0.891332, 0.409271, 0.194999,
		0.408463, -0.911603, 0.046238,
		35.131439, 30.325605, 26.576225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416424, 31.031687, 25.981173>,  <34.845516, 30.963728, 26.543858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416424, 31.031687, 25.981173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.374790, 30.641731, 26.059917>,  <35.349808, 30.407757, 26.107164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.374790, 30.641731, 26.059917>,  <35.416424, 31.031687, 25.981173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374790, 30.641731, 26.059917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157471, -0.179285, -0.971113,
		0.982023, -0.132079, -0.134856,
		-0.104086, -0.974891, 0.196861,
		35.343563, 30.349264, 26.118977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976765, 30.595591, 25.576641>,  <35.416424, 31.031687, 25.981173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976765, 30.595591, 25.576641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648922, 30.390268, 25.678434>,  <35.452217, 30.267075, 25.739510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648922, 30.390268, 25.678434>,  <35.976765, 30.595591, 25.576641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648922, 30.390268, 25.678434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201831, -0.157020, -0.966752,
		0.536197, -0.843719, 0.025094,
		-0.819607, -0.513305, 0.254483,
		35.403038, 30.236277, 25.754780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514919, 30.123785, 25.787350>,  <35.976765, 30.595591, 25.576641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514919, 30.123785, 25.787350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912346, 30.168612, 25.793840>,  <37.150803, 30.195507, 25.797735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912346, 30.168612, 25.793840>,  <36.514919, 30.123785, 25.787350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912346, 30.168612, 25.793840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043817, 0.248360, 0.967676,
		0.104414, -0.962163, 0.251673,
		0.993568, 0.112067, 0.016227,
		37.210415, 30.202232, 25.798708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831715, 29.769882, 26.460793>,  <36.514919, 30.123785, 25.787350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831715, 29.769882, 26.460793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111393, 30.033543, 26.350056>,  <37.279202, 30.191740, 26.283613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111393, 30.033543, 26.350056>,  <36.831715, 29.769882, 26.460793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111393, 30.033543, 26.350056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169432, 0.223423, 0.959883,
		0.694562, -0.718054, 0.044535,
		0.699197, 0.659152, -0.276842,
		37.321152, 30.231289, 26.267002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402534, 29.635117, 26.908457>,  <36.831715, 29.769882, 26.460793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402534, 29.635117, 26.908457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.456364, 30.007000, 26.771328>,  <37.488663, 30.230131, 26.689051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.456364, 30.007000, 26.771328>,  <37.402534, 29.635117, 26.908457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456364, 30.007000, 26.771328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154910, 0.321979, 0.933987,
		0.978720, -0.178795, -0.100692,
		0.134571, 0.929711, -0.342824,
		37.496735, 30.285913, 26.668480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960625, 29.869505, 27.386616>,  <37.402534, 29.635117, 26.908457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960625, 29.869505, 27.386616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.831215, 30.184624, 27.176964>,  <37.753571, 30.373695, 27.051174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.831215, 30.184624, 27.176964>,  <37.960625, 29.869505, 27.386616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831215, 30.184624, 27.176964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149965, 0.589605, 0.793647,
		0.934261, 0.178162, -0.308892,
		-0.323522, 0.787797, -0.524127,
		37.734158, 30.420963, 27.019726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463238, 30.331678, 27.188503>,  <37.960625, 29.869505, 27.386616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463238, 30.331678, 27.188503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.125450, 30.545557, 27.200996>,  <37.922779, 30.673883, 27.208492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.125450, 30.545557, 27.200996>,  <38.463238, 30.331678, 27.188503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125450, 30.545557, 27.200996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392278, 0.577730, 0.715784,
		0.364681, 0.616708, -0.697623,
		-0.844468, 0.534695, 0.031233,
		37.872108, 30.705965, 27.210367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671631, 30.954912, 27.305365>,  <38.463238, 30.331678, 27.188503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671631, 30.954912, 27.305365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.286884, 30.983295, 27.411022>,  <38.056034, 31.000326, 27.474417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.286884, 30.983295, 27.411022>,  <38.671631, 30.954912, 27.305365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286884, 30.983295, 27.411022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267333, 0.447980, 0.853139,
		-0.057795, 0.891223, -0.449868,
		-0.961869, 0.070958, 0.264144,
		37.998325, 31.004583, 27.490265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406788, 31.711676, 27.584570>,  <38.671631, 30.954912, 27.305365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406788, 31.711676, 27.584570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151665, 31.439487, 27.728882>,  <37.998592, 31.276175, 27.815470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151665, 31.439487, 27.728882>,  <38.406788, 31.711676, 27.584570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151665, 31.439487, 27.728882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149689, 0.349977, 0.924721,
		-0.755509, 0.643800, -0.121360,
		-0.637809, -0.680469, 0.360780,
		37.960323, 31.235348, 27.837116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970196, 32.083675, 28.052788>,  <38.406788, 31.711676, 27.584570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970196, 32.083675, 28.052788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924049, 31.706665, 28.178225>,  <37.896362, 31.480459, 28.253487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924049, 31.706665, 28.178225>,  <37.970196, 32.083675, 28.052788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924049, 31.706665, 28.178225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142050, 0.296802, 0.944315,
		-0.983113, 0.153489, 0.099645,
		-0.115367, -0.942523, 0.313593,
		37.889439, 31.423908, 28.272303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528812, 32.049374, 28.593746>,  <37.970196, 32.083675, 28.052788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528812, 32.049374, 28.593746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.735096, 31.714050, 28.664503>,  <37.858868, 31.512857, 28.706957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.735096, 31.714050, 28.664503>,  <37.528812, 32.049374, 28.593746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735096, 31.714050, 28.664503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009562, 0.200821, 0.979581,
		-0.856711, -0.506869, 0.095549,
		0.515708, -0.838304, 0.176893,
		37.889809, 31.462559, 28.717571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152195, 31.816500, 29.060507>,  <37.528812, 32.049374, 28.593746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152195, 31.816500, 29.060507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.498898, 31.620255, 29.096354>,  <37.706921, 31.502506, 29.117861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.498898, 31.620255, 29.096354>,  <37.152195, 31.816500, 29.060507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498898, 31.620255, 29.096354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061420, 0.283328, 0.957054,
		-0.494936, -0.824028, 0.275710,
		0.866756, -0.490616, 0.089617,
		37.758923, 31.473070, 29.123240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150631, 31.222837, 29.621899>,  <37.152195, 31.816500, 29.060507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150631, 31.222837, 29.621899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.533474, 31.325762, 29.568636>,  <37.763180, 31.387516, 29.536678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.533474, 31.325762, 29.568636>,  <37.150631, 31.222837, 29.621899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533474, 31.325762, 29.568636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110727, 0.099847, 0.988823,
		0.267729, -0.961157, 0.067073,
		0.957110, 0.257310, -0.133158,
		37.820606, 31.402954, 29.528688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479485, 30.884369, 30.212322>,  <37.150631, 31.222837, 29.621899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479485, 30.884369, 30.212322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785637, 31.112869, 30.093754>,  <37.969330, 31.249969, 30.022614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785637, 31.112869, 30.093754>,  <37.479485, 30.884369, 30.212322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785637, 31.112869, 30.093754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268361, 0.135345, 0.953763,
		0.584957, -0.809540, -0.049710,
		0.765381, 0.571250, -0.296420,
		38.015251, 31.284245, 30.004827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081833, 30.742498, 30.662056>,  <37.479485, 30.884369, 30.212322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081833, 30.742498, 30.662056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168255, 31.104465, 30.515388>,  <38.220108, 31.321646, 30.427387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168255, 31.104465, 30.515388>,  <38.081833, 30.742498, 30.662056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168255, 31.104465, 30.515388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229223, 0.318034, 0.919952,
		0.949093, -0.282808, -0.138716,
		0.216053, 0.904917, -0.366670,
		38.233070, 31.375940, 30.405388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555851, 30.993008, 31.071856>,  <38.081833, 30.742498, 30.662056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555851, 30.993008, 31.071856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434013, 31.337381, 30.908876>,  <38.360912, 31.544006, 30.811089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434013, 31.337381, 30.908876>,  <38.555851, 30.993008, 31.071856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434013, 31.337381, 30.908876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321027, 0.495538, 0.807084,
		0.896753, 0.115029, -0.427320,
		-0.304591, 0.860936, -0.407448,
		38.342636, 31.595663, 30.786642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.082153, 32.901371, 24.432152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726738, 32.987450, 24.270071>,  <38.513489, 33.039097, 24.172823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726738, 32.987450, 24.270071>,  <39.082153, 32.901371, 24.432152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726738, 32.987450, 24.270071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050559, -0.831871, -0.552662,
		-0.456004, -0.511549, 0.728270,
		-0.888540, 0.215196, -0.405200,
		38.460175, 33.052010, 24.148512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650566, 32.176575, 24.394306>,  <39.082153, 32.901371, 24.432152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650566, 32.176575, 24.394306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.500813, 32.465740, 24.162020>,  <38.410961, 32.639240, 24.022648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.500813, 32.465740, 24.162020>,  <38.650566, 32.176575, 24.394306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500813, 32.465740, 24.162020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108514, -0.656116, -0.746817,
		-0.920903, -0.216580, 0.324085,
		-0.374383, 0.722914, -0.580717,
		38.388496, 32.682613, 23.987804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106312, 31.820316, 24.028690>,  <38.650566, 32.176575, 24.394306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106312, 31.820316, 24.028690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.184605, 32.137630, 23.798079>,  <38.231583, 32.328018, 23.659712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.184605, 32.137630, 23.798079>,  <38.106312, 31.820316, 24.028690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184605, 32.137630, 23.798079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143024, -0.558523, -0.817065,
		-0.970171, 0.242385, 0.004136,
		0.195734, 0.793285, -0.576530,
		38.243324, 32.375614, 23.625120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545650, 31.892376, 23.598959>,  <38.106312, 31.820316, 24.028690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545650, 31.892376, 23.598959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.813999, 32.114017, 23.401817>,  <37.975006, 32.247002, 23.283533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.813999, 32.114017, 23.401817>,  <37.545650, 31.892376, 23.598959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813999, 32.114017, 23.401817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384039, -0.308947, -0.870095,
		-0.634388, 0.772995, 0.005535,
		0.670869, 0.554104, -0.492853,
		38.015259, 32.280247, 23.253962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197247, 32.294827, 23.113806>,  <37.545650, 31.892376, 23.598959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197247, 32.294827, 23.113806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569588, 32.253601, 22.973579>,  <37.792992, 32.228867, 22.889444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569588, 32.253601, 22.973579>,  <37.197247, 32.294827, 23.113806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569588, 32.253601, 22.973579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362034, -0.390079, -0.846622,
		-0.049491, 0.914995, -0.400418,
		0.930850, -0.103065, -0.350565,
		37.848843, 32.222683, 22.868410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152313, 32.447990, 22.449564>,  <37.197247, 32.294827, 23.113806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152313, 32.447990, 22.449564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.518124, 32.286522, 22.439108>,  <37.737610, 32.189640, 22.432835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.518124, 32.286522, 22.439108>,  <37.152313, 32.447990, 22.449564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518124, 32.286522, 22.439108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233849, -0.474845, -0.848432,
		0.330079, 0.782028, -0.528658,
		0.914528, -0.403676, -0.026140,
		37.792480, 32.165421, 22.431267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446186, 32.605328, 21.717417>,  <37.152313, 32.447990, 22.449564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446186, 32.605328, 21.717417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667862, 32.302761, 21.856390>,  <37.800869, 32.121223, 21.939774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667862, 32.302761, 21.856390>,  <37.446186, 32.605328, 21.717417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667862, 32.302761, 21.856390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018284, -0.428355, -0.903425,
		0.832188, 0.494319, -0.251222,
		0.554193, -0.756413, 0.347433,
		37.834118, 32.075836, 21.960621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882565, 32.491955, 21.205729>,  <37.446186, 32.605328, 21.717417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882565, 32.491955, 21.205729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891182, 32.143475, 21.401907>,  <37.896351, 31.934385, 21.519615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891182, 32.143475, 21.401907>,  <37.882565, 32.491955, 21.205729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891182, 32.143475, 21.401907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072634, -0.487902, -0.869871,
		0.997126, 0.054363, 0.052768,
		0.021543, -0.871204, 0.490448,
		37.897644, 31.882113, 21.549042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406624, 32.107769, 20.996101>,  <37.882565, 32.491955, 21.205729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406624, 32.107769, 20.996101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138771, 31.839966, 21.124691>,  <37.978058, 31.679283, 21.201845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138771, 31.839966, 21.124691>,  <38.406624, 32.107769, 20.996101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138771, 31.839966, 21.124691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072624, -0.489802, -0.868804,
		0.739131, -0.558435, 0.376611,
		-0.669635, -0.669510, 0.321472,
		37.937881, 31.639112, 21.221132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734188, 31.510576, 20.835674>,  <38.406624, 32.107769, 20.996101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734188, 31.510576, 20.835674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.353516, 31.404491, 20.897587>,  <38.125111, 31.340839, 20.934734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.353516, 31.404491, 20.897587>,  <38.734188, 31.510576, 20.835674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353516, 31.404491, 20.897587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019631, -0.555560, -0.831245,
		0.306446, -0.788045, 0.533925,
		-0.951686, -0.265213, 0.154779,
		38.068008, 31.324928, 20.944021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718712, 30.756748, 20.859829>,  <38.734188, 31.510576, 20.835674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718712, 30.756748, 20.859829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.376671, 30.921381, 20.733719>,  <38.171448, 31.020161, 20.658052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.376671, 30.921381, 20.733719>,  <38.718712, 30.756748, 20.859829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376671, 30.921381, 20.733719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087535, -0.484757, -0.870257,
		-0.511019, -0.771755, 0.378488,
		-0.855101, 0.411587, -0.315276,
		38.120140, 31.044855, 20.639137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272575, 30.158600, 20.670267>,  <38.718712, 30.756748, 20.859829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272575, 30.158600, 20.670267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.133411, 30.483782, 20.483479>,  <38.049915, 30.678890, 20.371405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.133411, 30.483782, 20.483479>,  <38.272575, 30.158600, 20.670267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133411, 30.483782, 20.483479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086441, -0.523783, -0.847454,
		-0.933536, -0.254470, 0.252501,
		-0.347907, 0.812955, -0.466974,
		38.029037, 30.727669, 20.343386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697826, 29.977266, 20.204241>,  <38.272575, 30.158600, 20.670267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697826, 29.977266, 20.204241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883282, 30.304430, 20.067968>,  <37.994553, 30.500729, 19.986204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883282, 30.304430, 20.067968>,  <37.697826, 29.977266, 20.204241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883282, 30.304430, 20.067968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063733, -0.352723, -0.933555,
		-0.883731, 0.454542, -0.111407,
		0.463636, 0.817911, -0.340681,
		38.022373, 30.549803, 19.965763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552265, 29.424118, 19.777258>,  <37.697826, 29.977266, 20.204241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552265, 29.424118, 19.777258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.284729, 29.128750, 19.742880>,  <37.124207, 28.951529, 19.722254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.284729, 29.128750, 19.742880>,  <37.552265, 29.424118, 19.777258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284729, 29.128750, 19.742880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101006, 0.024271, -0.994590,
		0.736513, -0.673902, 0.058351,
		-0.668840, -0.738422, -0.085944,
		37.084076, 28.907223, 19.717096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575726, 28.928957, 20.260872>,  <37.552265, 29.424118, 19.777258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575726, 28.928957, 20.260872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.382908, 28.607231, 20.399849>,  <37.267216, 28.414196, 20.483234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.382908, 28.607231, 20.399849>,  <37.575726, 28.928957, 20.260872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382908, 28.607231, 20.399849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251324, 0.506828, 0.824598,
		-0.839327, 0.310172, -0.446457,
		-0.482044, -0.804312, 0.347441,
		37.238293, 28.365938, 20.504082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964458, 29.184599, 20.531073>,  <37.575726, 28.928957, 20.260872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964458, 29.184599, 20.531073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.023830, 28.826084, 20.698233>,  <37.059452, 28.610975, 20.798529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.023830, 28.826084, 20.698233>,  <36.964458, 29.184599, 20.531073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023830, 28.826084, 20.698233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268206, 0.370260, 0.889367,
		-0.951859, -0.244088, -0.185433,
		0.148425, -0.896286, 0.417902,
		37.068359, 28.557198, 20.823603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501286, 29.268452, 21.210382>,  <36.964458, 29.184599, 20.531073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501286, 29.268452, 21.210382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.724113, 28.941027, 21.266420>,  <36.857811, 28.744572, 21.300043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.724113, 28.941027, 21.266420>,  <36.501286, 29.268452, 21.210382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724113, 28.941027, 21.266420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077690, 0.219323, 0.972554,
		-0.826824, -0.530896, 0.185773,
		0.557069, -0.818564, 0.140096,
		36.891235, 28.695457, 21.308449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200619, 28.918064, 21.731903>,  <36.501286, 29.268452, 21.210382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200619, 28.918064, 21.731903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.580032, 28.791559, 21.725458>,  <36.807682, 28.715656, 21.721592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.580032, 28.791559, 21.725458>,  <36.200619, 28.918064, 21.731903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580032, 28.791559, 21.725458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033759, 0.050405, 0.998158,
		-0.314867, -0.947332, 0.058487,
		0.948535, -0.316262, -0.016110,
		36.864594, 28.696680, 21.720625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297112, 28.618052, 22.379175>,  <36.200619, 28.918064, 21.731903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297112, 28.618052, 22.379175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.672359, 28.656858, 22.246202>,  <36.897511, 28.680143, 22.166418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.672359, 28.656858, 22.246202>,  <36.297112, 28.618052, 22.379175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672359, 28.656858, 22.246202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313903, 0.167175, 0.934622,
		0.146245, -0.981143, 0.126378,
		0.938125, 0.097014, -0.332432,
		36.953796, 28.685963, 22.146473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779385, 28.114063, 22.740541>,  <36.297112, 28.618052, 22.379175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779385, 28.114063, 22.740541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.045570, 28.384180, 22.613337>,  <37.205284, 28.546251, 22.537014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.045570, 28.384180, 22.613337>,  <36.779385, 28.114063, 22.740541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045570, 28.384180, 22.613337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235701, 0.214139, 0.947939,
		0.708237, -0.705778, -0.016665,
		0.665466, 0.675294, -0.318014,
		37.245209, 28.586767, 22.517933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382832, 28.028154, 23.160704>,  <36.779385, 28.114063, 22.740541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382832, 28.028154, 23.160704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.407898, 28.405510, 23.030416>,  <37.422939, 28.631924, 22.952244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.407898, 28.405510, 23.030416>,  <37.382832, 28.028154, 23.160704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407898, 28.405510, 23.030416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101686, 0.318623, 0.942411,
		0.992841, -0.092180, -0.075962,
		0.062668, 0.943388, -0.325716,
		37.426697, 28.688526, 22.932701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041225, 28.339788, 23.296722>,  <37.382832, 28.028154, 23.160704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041225, 28.339788, 23.296722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779957, 28.639425, 23.252495>,  <37.623196, 28.819208, 23.225958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779957, 28.639425, 23.252495>,  <38.041225, 28.339788, 23.296722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779957, 28.639425, 23.252495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255955, 0.355850, 0.898809,
		0.712637, 0.558777, -0.424166,
		-0.653174, 0.749092, -0.110570,
		37.584003, 28.864153, 23.219324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282963, 28.798832, 23.757715>,  <38.041225, 28.339788, 23.296722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282963, 28.798832, 23.757715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.935913, 28.972879, 23.661469>,  <37.727684, 29.077309, 23.603722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.935913, 28.972879, 23.661469>,  <38.282963, 28.798832, 23.757715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935913, 28.972879, 23.661469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010661, 0.467532, 0.883912,
		0.497104, 0.769470, -0.401004,
		-0.867626, 0.435121, -0.240615,
		37.675625, 29.103416, 23.589285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356968, 29.594788, 23.720219>,  <38.282963, 28.798832, 23.757715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356968, 29.594788, 23.720219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.976906, 29.505608, 23.807400>,  <37.748871, 29.452099, 23.859709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.976906, 29.505608, 23.807400>,  <38.356968, 29.594788, 23.720219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976906, 29.505608, 23.807400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009863, 0.677202, 0.735731,
		-0.311631, 0.701206, -0.641246,
		-0.950152, -0.222952, 0.217953,
		37.691860, 29.438723, 23.872786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190472, 30.263395, 24.113144>,  <38.356968, 29.594788, 23.720219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190472, 30.263395, 24.113144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.885979, 30.016943, 24.194040>,  <37.703281, 29.869072, 24.242579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.885979, 30.016943, 24.194040>,  <38.190472, 30.263395, 24.113144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885979, 30.016943, 24.194040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116962, 0.437213, 0.891720,
		-0.637839, 0.655156, -0.404886,
		-0.761237, -0.616130, 0.202243,
		37.657608, 29.832104, 24.254713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811432, 30.702999, 24.472391>,  <38.190472, 30.263395, 24.113144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811432, 30.702999, 24.472391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.651512, 30.345968, 24.555788>,  <37.555561, 30.131750, 24.605825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.651512, 30.345968, 24.555788>,  <37.811432, 30.702999, 24.472391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651512, 30.345968, 24.555788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276179, 0.334196, 0.901132,
		-0.874004, 0.302693, -0.380122,
		-0.399802, -0.892575, 0.208491,
		37.531570, 30.078196, 24.618336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196007, 30.892761, 24.772066>,  <37.811432, 30.702999, 24.472391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196007, 30.892761, 24.772066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.318287, 30.532938, 24.896866>,  <37.391655, 30.317045, 24.971745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.318287, 30.532938, 24.896866>,  <37.196007, 30.892761, 24.772066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318287, 30.532938, 24.896866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041091, 0.339845, 0.939583,
		-0.951240, -0.274413, 0.140856,
		0.305703, -0.899557, 0.311998,
		37.409996, 30.263071, 24.990465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687061, 30.549114, 25.231003>,  <37.196007, 30.892761, 24.772066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687061, 30.549114, 25.231003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.017334, 30.351856, 25.340586>,  <37.215500, 30.233501, 25.406336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.017334, 30.351856, 25.340586>,  <36.687061, 30.549114, 25.231003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017334, 30.351856, 25.340586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137291, 0.295366, 0.945468,
		-0.547170, -0.818271, 0.176175,
		0.825685, -0.493145, 0.273957,
		37.265041, 30.203913, 25.422773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146255, 29.902487, 25.200171>,  <36.687061, 30.549114, 25.231003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146255, 29.902487, 25.200171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758457, 29.928848, 25.294605>,  <35.525780, 29.944666, 25.351267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758457, 29.928848, 25.294605>,  <36.146255, 29.902487, 25.200171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758457, 29.928848, 25.294605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245042, -0.284010, -0.926980,
		0.005960, -0.956554, 0.291495,
		-0.969494, 0.065904, 0.236089,
		35.467609, 29.948620, 25.365433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841618, 29.331032, 25.058989>,  <36.146255, 29.902487, 25.200171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841618, 29.331032, 25.058989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529408, 29.580971, 25.066517>,  <35.342083, 29.730934, 25.071033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529408, 29.580971, 25.066517>,  <35.841618, 29.331032, 25.058989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529408, 29.580971, 25.066517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215459, -0.240631, -0.946401,
		-0.586827, -0.742740, 0.322446,
		-0.780520, 0.624847, 0.018821,
		35.295250, 29.768425, 25.072163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247379, 28.934147, 24.825155>,  <35.841618, 29.331032, 25.058989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247379, 28.934147, 24.825155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136608, 29.316811, 24.789124>,  <35.070145, 29.546410, 24.767506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136608, 29.316811, 24.789124>,  <35.247379, 28.934147, 24.825155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136608, 29.316811, 24.789124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372523, -0.193300, -0.907668,
		-0.885741, -0.217803, 0.409908,
		-0.276928, 0.956659, -0.090077,
		35.053528, 29.603807, 24.762100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567902, 28.835651, 24.503626>,  <35.247379, 28.934147, 24.825155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567902, 28.835651, 24.503626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.696255, 29.209305, 24.441107>,  <34.773266, 29.433496, 24.403595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.696255, 29.209305, 24.441107>,  <34.567902, 28.835651, 24.503626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696255, 29.209305, 24.441107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369062, -0.028655, -0.928963,
		-0.872254, 0.355771, 0.335558,
		0.320882, 0.934134, -0.156296,
		34.792519, 29.489546, 24.394218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039433, 29.275593, 24.236759>,  <34.567902, 28.835651, 24.503626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039433, 29.275593, 24.236759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364227, 29.474005, 24.113714>,  <34.559105, 29.593052, 24.039888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364227, 29.474005, 24.113714>,  <34.039433, 29.275593, 24.236759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364227, 29.474005, 24.113714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302169, -0.093653, -0.948643,
		-0.499365, 0.863240, 0.073840,
		0.811991, 0.496031, -0.307611,
		34.607826, 29.622814, 24.021431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785984, 29.838449, 23.745953>,  <34.039433, 29.275593, 24.236759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785984, 29.838449, 23.745953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166931, 29.731050, 23.688122>,  <34.395500, 29.666611, 23.653423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166931, 29.731050, 23.688122>,  <33.785984, 29.838449, 23.745953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166931, 29.731050, 23.688122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195531, -0.173836, -0.965168,
		0.234013, 0.947465, -0.218056,
		0.952368, -0.268499, -0.144579,
		34.452641, 29.650501, 23.644749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882885, 29.897902, 23.057280>,  <33.785984, 29.838449, 23.745953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882885, 29.897902, 23.057280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206448, 29.670589, 23.117579>,  <34.400585, 29.534203, 23.153759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206448, 29.670589, 23.117579>,  <33.882885, 29.897902, 23.057280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206448, 29.670589, 23.117579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050615, -0.322763, -0.945126,
		0.585750, 0.756891, -0.289850,
		0.808909, -0.568279, 0.150748,
		34.449120, 29.500107, 23.162804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883022, 30.556570, 22.779011>,  <33.882885, 29.897902, 23.057280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883022, 30.556570, 22.779011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551151, 30.758451, 22.683590>,  <33.352028, 30.879581, 22.626337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551151, 30.758451, 22.683590>,  <33.883022, 30.556570, 22.779011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551151, 30.758451, 22.683590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071140, 0.328249, 0.941908,
		0.553690, 0.798451, -0.236436,
		-0.829678, 0.504705, -0.238550,
		33.302246, 30.909863, 22.612024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927422, 31.266390, 23.196272>,  <33.883022, 30.556570, 22.779011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927422, 31.266390, 23.196272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551895, 31.198858, 23.076193>,  <33.326580, 31.158340, 23.004145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551895, 31.198858, 23.076193>,  <33.927422, 31.266390, 23.196272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551895, 31.198858, 23.076193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328021, 0.172584, 0.928772,
		-0.104993, 0.970418, -0.217404,
		-0.938818, -0.168827, -0.300198,
		33.270248, 31.148211, 22.986134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542278, 31.892668, 23.320457>,  <33.927422, 31.266390, 23.196272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542278, 31.892668, 23.320457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.262947, 31.608253, 23.287535>,  <33.095348, 31.437605, 23.267782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.262947, 31.608253, 23.287535>,  <33.542278, 31.892668, 23.320457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262947, 31.608253, 23.287535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348217, 0.237008, 0.906958,
		-0.625371, 0.662010, -0.413103,
		-0.698324, -0.711034, -0.082305,
		33.053452, 31.394943, 23.262844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858883, 32.210789, 23.596270>,  <33.542278, 31.892668, 23.320457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858883, 32.210789, 23.596270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.849777, 31.810907, 23.592804>,  <32.844315, 31.570978, 23.590725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.849777, 31.810907, 23.592804>,  <32.858883, 32.210789, 23.596270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849777, 31.810907, 23.592804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358258, 0.000067, 0.933623,
		-0.933345, 0.024361, -0.358153,
		-0.022768, -0.999703, -0.008665,
		32.842945, 31.510996, 23.590204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207653, 32.124329, 23.957344>,  <32.858883, 32.210789, 23.596270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207653, 32.124329, 23.957344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411591, 31.780348, 23.966572>,  <32.533955, 31.573959, 23.972109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411591, 31.780348, 23.966572>,  <32.207653, 32.124329, 23.957344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411591, 31.780348, 23.966572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274076, -0.136956, 0.951906,
		-0.815437, -0.491650, -0.305520,
		0.509848, -0.859956, 0.023070,
		32.564545, 31.522362, 23.973494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839600, 31.701561, 24.395973>,  <32.207653, 32.124329, 23.957344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839600, 31.701561, 24.395973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188843, 31.508564, 24.368032>,  <32.398388, 31.392765, 24.351269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188843, 31.508564, 24.368032>,  <31.839600, 31.701561, 24.395973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188843, 31.508564, 24.368032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073816, -0.272457, 0.959332,
		-0.481903, -0.832446, -0.273500,
		0.873110, -0.482494, -0.069850,
		32.450775, 31.363815, 24.347078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820391, 31.053938, 24.861204>,  <31.839600, 31.701561, 24.395973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820391, 31.053938, 24.861204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.212273, 31.126827, 24.827803>,  <32.447403, 31.170561, 24.807762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.212273, 31.126827, 24.827803>,  <31.820391, 31.053938, 24.861204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212273, 31.126827, 24.827803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159588, -0.457031, 0.875017,
		0.121287, -0.870584, -0.476837,
		0.979704, 0.182225, -0.083503,
		32.506184, 31.181496, 24.802752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.387962, 32.309391, 19.713610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.735043, 32.277180, 19.909815>,  <35.943291, 32.257854, 20.027538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.735043, 32.277180, 19.909815>,  <35.387962, 32.309391, 19.713610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735043, 32.277180, 19.909815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304380, 0.694078, 0.652387,
		-0.392991, -0.715381, 0.577743,
		0.867704, -0.080529, 0.490515,
		35.995354, 32.253021, 20.056969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252216, 32.500874, 20.484077>,  <35.387962, 32.309391, 19.713610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252216, 32.500874, 20.484077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.649208, 32.518303, 20.438307>,  <35.887402, 32.528763, 20.410845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.649208, 32.518303, 20.438307>,  <35.252216, 32.500874, 20.484077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649208, 32.518303, 20.438307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049538, 0.711719, 0.700716,
		0.111974, -0.701111, 0.704205,
		0.992475, 0.043577, -0.114426,
		35.946949, 32.531376, 20.403978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568424, 32.227333, 21.031862>,  <35.252216, 32.500874, 20.484077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568424, 32.227333, 21.031862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.813671, 32.502628, 20.876732>,  <35.960819, 32.667805, 20.783653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.813671, 32.502628, 20.876732>,  <35.568424, 32.227333, 21.031862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813671, 32.502628, 20.876732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093498, 0.550697, 0.829452,
		0.784436, -0.472294, 0.401993,
		0.613121, 0.688238, -0.387828,
		35.997608, 32.709099, 20.760384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854004, 32.443565, 21.546854>,  <35.568424, 32.227333, 21.031862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854004, 32.443565, 21.546854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997993, 32.721569, 21.297895>,  <36.084389, 32.888371, 21.148520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997993, 32.721569, 21.297895>,  <35.854004, 32.443565, 21.546854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997993, 32.721569, 21.297895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072075, 0.644409, 0.761277,
		0.930174, -0.318899, 0.181877,
		0.359973, 0.695011, -0.622397,
		36.105984, 32.930073, 21.111176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382996, 32.781593, 21.907122>,  <35.854004, 32.443565, 21.546854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382996, 32.781593, 21.907122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.245373, 33.038795, 21.633430>,  <36.162800, 33.193119, 21.469215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.245373, 33.038795, 21.633430>,  <36.382996, 32.781593, 21.907122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245373, 33.038795, 21.633430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090064, 0.702755, 0.705708,
		0.934621, 0.304425, -0.183873,
		-0.344053, 0.643009, -0.684228,
		36.142159, 33.231697, 21.428162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696342, 33.372578, 22.104010>,  <36.382996, 32.781593, 21.907122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696342, 33.372578, 22.104010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.392853, 33.484818, 21.868856>,  <36.210758, 33.552162, 21.727764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.392853, 33.484818, 21.868856>,  <36.696342, 33.372578, 22.104010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392853, 33.484818, 21.868856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194777, 0.763462, 0.615782,
		0.621611, 0.581714, -0.524603,
		-0.758723, 0.280596, -0.587882,
		36.165237, 33.568996, 21.692492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795624, 34.055943, 22.129942>,  <36.696342, 33.372578, 22.104010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795624, 34.055943, 22.129942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.429604, 34.047810, 21.968807>,  <36.209991, 34.042931, 21.872128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.429604, 34.047810, 21.968807>,  <36.795624, 34.055943, 22.129942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429604, 34.047810, 21.968807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262238, 0.788830, 0.555858,
		0.306464, 0.614274, -0.727149,
		-0.915047, -0.020336, -0.402835,
		36.155090, 34.041710, 21.847958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554054, 34.795559, 21.917761>,  <36.795624, 34.055943, 22.129942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554054, 34.795559, 21.917761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.237831, 34.562164, 21.992125>,  <36.048096, 34.422127, 22.036743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.237831, 34.562164, 21.992125>,  <36.554054, 34.795559, 21.917761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237831, 34.562164, 21.992125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425570, 0.741758, 0.518348,
		-0.440348, 0.330667, -0.834717,
		-0.790559, -0.583484, 0.185910,
		36.000664, 34.387119, 22.047897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107628, 35.283291, 21.822645>,  <36.554054, 34.795559, 21.917761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107628, 35.283291, 21.822645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.916878, 34.991589, 22.018921>,  <35.802429, 34.816566, 22.136686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.916878, 34.991589, 22.018921>,  <36.107628, 35.283291, 21.822645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916878, 34.991589, 22.018921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541160, 0.683497, 0.489875,
		-0.692628, -0.031932, -0.720587,
		-0.476877, -0.729255, 0.490689,
		35.773815, 34.772812, 22.166128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411312, 35.458473, 21.839878>,  <36.107628, 35.283291, 21.822645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411312, 35.458473, 21.839878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.463734, 35.196075, 22.137197>,  <35.495186, 35.038635, 22.315590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.463734, 35.196075, 22.137197>,  <35.411312, 35.458473, 21.839878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463734, 35.196075, 22.137197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511384, 0.597581, 0.617562,
		-0.849300, -0.461047, -0.257149,
		0.131058, -0.655997, 0.743298,
		35.503052, 34.999275, 22.360188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727280, 35.396450, 22.249140>,  <35.411312, 35.458473, 21.839878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727280, 35.396450, 22.249140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.992733, 35.225632, 22.494812>,  <35.152004, 35.123142, 22.642216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.992733, 35.225632, 22.494812>,  <34.727280, 35.396450, 22.249140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992733, 35.225632, 22.494812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307717, 0.592513, 0.744472,
		-0.681833, -0.683054, 0.261805,
		0.663637, -0.427044, 0.614182,
		35.191826, 35.097519, 22.679066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308140, 35.382309, 22.864265>,  <34.727280, 35.396450, 22.249140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308140, 35.382309, 22.864265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.695099, 35.350674, 22.960505>,  <34.927273, 35.331692, 23.018248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.695099, 35.350674, 22.960505>,  <34.308140, 35.382309, 22.864265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695099, 35.350674, 22.960505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173137, 0.486814, 0.856175,
		-0.184838, -0.869918, 0.457249,
		0.967398, -0.079086, 0.240597,
		34.985317, 35.326946, 23.032684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886654, 34.787773, 23.170410>,  <34.308140, 35.382309, 22.864265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886654, 34.787773, 23.170410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.488922, 34.792812, 23.128178>,  <33.250282, 34.795837, 23.102839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.488922, 34.792812, 23.128178>,  <33.886654, 34.787773, 23.170410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488922, 34.792812, 23.128178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096882, -0.301901, -0.948404,
		-0.043823, -0.953256, 0.298969,
		-0.994331, 0.012597, -0.105583,
		33.190624, 34.796593, 23.096502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786896, 34.252712, 22.645103>,  <33.886654, 34.787773, 23.170410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786896, 34.252712, 22.645103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.443027, 34.455563, 22.669706>,  <33.236706, 34.577274, 22.684467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.443027, 34.455563, 22.669706>,  <33.786896, 34.252712, 22.645103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443027, 34.455563, 22.669706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122574, -0.087889, -0.988560,
		-0.495919, -0.857379, 0.137717,
		-0.859675, 0.507126, 0.061507,
		33.185123, 34.607700, 22.688158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223606, 33.714806, 22.427017>,  <33.786896, 34.252712, 22.645103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223606, 33.714806, 22.427017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.144680, 34.104530, 22.383587>,  <33.097324, 34.338364, 22.357529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.144680, 34.104530, 22.383587>,  <33.223606, 33.714806, 22.427017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144680, 34.104530, 22.383587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101586, -0.130476, -0.986233,
		-0.975063, -0.183566, 0.124721,
		-0.197312, 0.974310, -0.108574,
		33.085487, 34.396824, 22.351015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606045, 33.737762, 22.002844>,  <33.223606, 33.714806, 22.427017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606045, 33.737762, 22.002844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.754936, 34.105698, 21.953295>,  <32.844273, 34.326458, 21.923565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.754936, 34.105698, 21.953295>,  <32.606045, 33.737762, 22.002844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754936, 34.105698, 21.953295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074675, -0.162709, -0.983844,
		-0.925132, 0.356966, -0.129254,
		0.372230, 0.919837, -0.123870,
		32.866604, 34.381649, 21.916134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258392, 33.954601, 21.457312>,  <32.606045, 33.737762, 22.002844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258392, 33.954601, 21.457312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.578419, 34.193470, 21.480217>,  <32.770435, 34.336792, 21.493959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.578419, 34.193470, 21.480217>,  <32.258392, 33.954601, 21.457312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578419, 34.193470, 21.480217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156219, -0.115232, -0.980978,
		-0.579212, 0.793795, -0.185482,
		0.800068, 0.597170, 0.057262,
		32.818439, 34.372620, 21.497396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144737, 34.335423, 20.910608>,  <32.258392, 33.954601, 21.457312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144737, 34.335423, 20.910608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.531246, 34.358315, 21.011044>,  <32.763153, 34.372051, 21.071304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.531246, 34.358315, 21.011044>,  <32.144737, 34.335423, 20.910608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531246, 34.358315, 21.011044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257242, -0.260344, -0.930617,
		0.012106, 0.963818, -0.266286,
		0.966271, 0.057234, 0.251086,
		32.821129, 34.375484, 21.086369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551247, 34.663616, 20.341991>,  <32.144737, 34.335423, 20.910608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551247, 34.663616, 20.341991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.833961, 34.497345, 20.570959>,  <33.003590, 34.397583, 20.708340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.833961, 34.497345, 20.570959>,  <32.551247, 34.663616, 20.341991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833961, 34.497345, 20.570959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449924, -0.360287, -0.817167,
		0.545912, 0.835109, -0.067624,
		0.706787, -0.415676, 0.572421,
		33.045998, 34.372643, 20.742685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204033, 34.942738, 20.116419>,  <32.551247, 34.663616, 20.341991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204033, 34.942738, 20.116419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.290390, 34.595566, 20.295343>,  <33.342205, 34.387264, 20.402699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.290390, 34.595566, 20.295343>,  <33.204033, 34.942738, 20.116419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290390, 34.595566, 20.295343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647822, -0.215441, -0.730693,
		0.730559, 0.447528, 0.515753,
		0.215891, -0.867931, 0.447311,
		33.355156, 34.335186, 20.429537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976353, 34.838066, 20.119984>,  <33.204033, 34.942738, 20.116419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976353, 34.838066, 20.119984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.836025, 34.474419, 20.209812>,  <33.751831, 34.256229, 20.263710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.836025, 34.474419, 20.209812>,  <33.976353, 34.838066, 20.119984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836025, 34.474419, 20.209812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570365, -0.397637, -0.718727,
		0.742705, -0.124053, 0.658027,
		-0.350816, -0.909118, 0.224572,
		33.730782, 34.201683, 20.277184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565815, 34.359722, 20.067684>,  <33.976353, 34.838066, 20.119984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565815, 34.359722, 20.067684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.241833, 34.128716, 20.026800>,  <34.047443, 33.990112, 20.002270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.241833, 34.128716, 20.026800>,  <34.565815, 34.359722, 20.067684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241833, 34.128716, 20.026800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368680, -0.365823, -0.854546,
		0.456128, -0.729824, 0.509219,
		-0.809953, -0.577521, -0.102210,
		33.998848, 33.955460, 19.996138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828671, 33.688335, 20.063709>,  <34.565815, 34.359722, 20.067684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828671, 33.688335, 20.063709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.467297, 33.656277, 19.895241>,  <34.250473, 33.637043, 19.794161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.467297, 33.656277, 19.895241>,  <34.828671, 33.688335, 20.063709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467297, 33.656277, 19.895241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385250, -0.582815, -0.715479,
		-0.188120, -0.808643, 0.557411,
		-0.903434, -0.080147, -0.421169,
		34.196266, 33.632233, 19.768890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708748, 32.951492, 19.942976>,  <34.828671, 33.688335, 20.063709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708748, 32.951492, 19.942976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.479939, 33.162151, 19.691444>,  <34.342651, 33.288548, 19.540525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.479939, 33.162151, 19.691444>,  <34.708748, 32.951492, 19.942976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479939, 33.162151, 19.691444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281564, -0.593982, -0.753596,
		-0.770394, -0.608133, 0.191488,
		-0.572027, 0.526650, -0.628828,
		34.308331, 33.320145, 19.502796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548466, 32.374756, 19.532469>,  <34.708748, 32.951492, 19.942976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548466, 32.374756, 19.532469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.448334, 32.714005, 19.345699>,  <34.388256, 32.917557, 19.233639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.448334, 32.714005, 19.345699>,  <34.548466, 32.374756, 19.532469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448334, 32.714005, 19.345699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298125, -0.391317, -0.870628,
		-0.921117, -0.357145, -0.154890,
		-0.250329, 0.848126, -0.466923,
		34.373234, 32.968441, 19.205622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523842, 31.650839, 19.745987>,  <34.548466, 32.374756, 19.532469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523842, 31.650839, 19.745987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.372025, 31.289068, 19.668051>,  <34.280933, 31.072006, 19.621288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.372025, 31.289068, 19.668051>,  <34.523842, 31.650839, 19.745987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372025, 31.289068, 19.668051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448042, -0.004574, 0.894001,
		-0.809448, 0.426607, -0.403485,
		-0.379542, -0.904425, -0.194840,
		34.258163, 31.017740, 19.609598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880299, 31.705055, 19.686670>,  <34.523842, 31.650839, 19.745987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880299, 31.705055, 19.686670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.874352, 31.312803, 19.764791>,  <33.870781, 31.077452, 19.811665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.874352, 31.312803, 19.764791>,  <33.880299, 31.705055, 19.686670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874352, 31.312803, 19.764791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552080, 0.170905, 0.816087,
		-0.833658, -0.095688, -0.543928,
		-0.014870, -0.980630, 0.195304,
		33.869892, 31.018614, 19.823383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124546, 31.532450, 19.872135>,  <33.880299, 31.705055, 19.686670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124546, 31.532450, 19.872135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.355141, 31.232273, 20.001442>,  <33.493496, 31.052168, 20.079025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.355141, 31.232273, 20.001442>,  <33.124546, 31.532450, 19.872135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355141, 31.232273, 20.001442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539902, -0.052878, 0.840065,
		-0.613327, -0.658818, -0.435649,
		0.576486, -0.750442, 0.323266,
		33.528088, 31.007141, 20.098421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765358, 31.211184, 20.381330>,  <33.124546, 31.532450, 19.872135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765358, 31.211184, 20.381330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.128567, 31.063017, 20.459593>,  <33.346493, 30.974117, 20.506550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.128567, 31.063017, 20.459593>,  <32.765358, 31.211184, 20.381330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128567, 31.063017, 20.459593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230278, -0.051196, 0.971777,
		-0.349944, -0.927454, -0.131786,
		0.908026, -0.370415, 0.195657,
		33.400974, 30.951893, 20.518290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708099, 30.510557, 20.768929>,  <32.765358, 31.211184, 20.381330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708099, 30.510557, 20.768929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.045490, 30.710669, 20.847170>,  <33.247925, 30.830736, 20.894115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.045490, 30.710669, 20.847170>,  <32.708099, 30.510557, 20.768929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045490, 30.710669, 20.847170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094953, -0.219547, 0.970970,
		0.528699, -0.837569, -0.137680,
		0.843481, 0.500278, 0.195604,
		33.298534, 30.860752, 20.905851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814053, 30.179207, 21.430712>,  <32.708099, 30.510557, 20.768929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814053, 30.179207, 21.430712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.071926, 30.484823, 21.420732>,  <33.226650, 30.668192, 21.414745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.071926, 30.484823, 21.420732>,  <32.814053, 30.179207, 21.430712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071926, 30.484823, 21.420732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066393, -0.023450, 0.997518,
		0.761559, -0.644742, -0.065844,
		0.644686, 0.764040, -0.024948,
		33.265331, 30.714035, 21.413248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400066, 29.936007, 21.672796>,  <32.814053, 30.179207, 21.430712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400066, 29.936007, 21.672796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.365479, 30.331200, 21.724045>,  <33.344727, 30.568316, 21.754793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.365479, 30.331200, 21.724045>,  <33.400066, 29.936007, 21.672796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365479, 30.331200, 21.724045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016735, -0.130026, 0.991369,
		0.996113, 0.083584, 0.027778,
		-0.086474, 0.987981, 0.128121,
		33.339535, 30.627594, 21.762482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571774, 30.021040, 22.302710>,  <33.400066, 29.936007, 21.672796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571774, 30.021040, 22.302710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.418327, 30.383839, 22.233202>,  <33.326260, 30.601519, 22.191498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.418327, 30.383839, 22.233202>,  <33.571774, 30.021040, 22.302710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418327, 30.383839, 22.233202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001455, 0.188756, 0.982023,
		0.923493, 0.376463, -0.073729,
		-0.383612, 0.906999, -0.173767,
		33.303246, 30.655939, 22.181072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311584, 29.920897, 22.480551>,  <33.571774, 30.021040, 22.302710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311584, 29.920897, 22.480551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.431175, 29.577190, 22.646576>,  <34.502930, 29.370968, 22.746191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.431175, 29.577190, 22.646576>,  <34.311584, 29.920897, 22.480551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431175, 29.577190, 22.646576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020520, -0.440648, -0.897445,
		0.954039, 0.259799, -0.149376,
		0.298977, -0.859264, 0.415064,
		34.520870, 29.319412, 22.771095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829491, 29.735670, 21.991535>,  <34.311584, 29.920897, 22.480551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829491, 29.735670, 21.991535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.723343, 29.426344, 22.221861>,  <34.659657, 29.240747, 22.360056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.723343, 29.426344, 22.221861>,  <34.829491, 29.735670, 21.991535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723343, 29.426344, 22.221861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000858, -0.597039, -0.802212,
		0.964147, -0.213375, 0.157772,
		-0.265368, -0.773315, 0.575816,
		34.643734, 29.194349, 22.394606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302612, 29.224571, 21.813417>,  <34.829491, 29.735670, 21.991535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302612, 29.224571, 21.813417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.994957, 29.013029, 21.956940>,  <34.810364, 28.886105, 22.043053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.994957, 29.013029, 21.956940>,  <35.302612, 29.224571, 21.813417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994957, 29.013029, 21.956940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002119, -0.563541, -0.826085,
		0.639081, -0.634612, 0.434561,
		-0.769137, -0.528856, 0.358804,
		34.764217, 28.854372, 22.064581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503536, 28.582682, 21.635862>,  <35.302612, 29.224571, 21.813417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503536, 28.582682, 21.635862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.113976, 28.543415, 21.717726>,  <34.880241, 28.519855, 21.766844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.113976, 28.543415, 21.717726>,  <35.503536, 28.582682, 21.635862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113976, 28.543415, 21.717726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068586, -0.732222, -0.677604,
		0.216373, -0.673954, 0.706377,
		-0.973899, -0.098167, 0.204657,
		34.821804, 28.513966, 21.779123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267525, 27.879246, 21.671200>,  <35.503536, 28.582682, 21.635862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267525, 27.879246, 21.671200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.938629, 28.090868, 21.587273>,  <34.741291, 28.217842, 21.536917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.938629, 28.090868, 21.587273>,  <35.267525, 27.879246, 21.671200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938629, 28.090868, 21.587273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155335, -0.563266, -0.811543,
		-0.547529, -0.634694, 0.545322,
		-0.822243, 0.529051, -0.209814,
		34.691959, 28.249584, 21.524326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700455, 27.363981, 21.547768>,  <35.267525, 27.879246, 21.671200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700455, 27.363981, 21.547768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.581787, 27.699215, 21.364639>,  <34.510586, 27.900354, 21.254763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.581787, 27.699215, 21.364639>,  <34.700455, 27.363981, 21.547768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581787, 27.699215, 21.364639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214260, -0.525597, -0.823310,
		-0.930634, -0.146157, 0.335496,
		-0.296668, 0.838085, -0.457823,
		34.492786, 27.950640, 21.227293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007675, 27.219603, 21.148500>,  <34.700455, 27.363981, 21.547768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007675, 27.219603, 21.148500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.169151, 27.541384, 20.974197>,  <34.266037, 27.734453, 20.869616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.169151, 27.541384, 20.974197>,  <34.007675, 27.219603, 21.148500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169151, 27.541384, 20.974197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221357, -0.376261, -0.899683,
		-0.887713, 0.459653, 0.026178,
		0.403692, 0.804455, -0.435759,
		34.290260, 27.782721, 20.843470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756786, 27.141720, 20.522772>,  <34.007675, 27.219603, 21.148500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756786, 27.141720, 20.522772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.002678, 27.446245, 20.440300>,  <34.150211, 27.628962, 20.390818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.002678, 27.446245, 20.440300>,  <33.756786, 27.141720, 20.522772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002678, 27.446245, 20.440300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234974, -0.072768, -0.969274,
		-0.752926, 0.644287, 0.134156,
		0.614728, 0.761314, -0.206180,
		34.187096, 27.674639, 20.378447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416946, 27.804455, 20.233532>,  <33.756786, 27.141720, 20.522772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416946, 27.804455, 20.233532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.795071, 27.754492, 20.113014>,  <34.021946, 27.724514, 20.040703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.795071, 27.754492, 20.113014>,  <33.416946, 27.804455, 20.233532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795071, 27.754492, 20.113014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296102, 0.058701, -0.953351,
		0.136765, 0.990431, 0.018506,
		0.945314, -0.124905, -0.301297,
		34.078667, 27.717020, 20.022625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.166008, 34.137638, 34.863346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354813, 34.299656, 34.550133>,  <35.468098, 34.396866, 34.362206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354813, 34.299656, 34.550133>,  <35.166008, 34.137638, 34.863346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354813, 34.299656, 34.550133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201361, -0.815193, -0.543060,
		-0.858286, 0.414005, -0.303224,
		0.472016, 0.405043, -0.783033,
		35.496418, 34.421169, 34.315224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758984, 34.141483, 34.174988>,  <35.166008, 34.137638, 34.863346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758984, 34.141483, 34.174988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140511, 34.162144, 34.056618>,  <35.369427, 34.174541, 33.985596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140511, 34.162144, 34.056618>,  <34.758984, 34.141483, 34.174988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140511, 34.162144, 34.056618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178693, -0.694302, -0.697147,
		-0.241470, 0.717828, -0.653005,
		0.953814, 0.051652, -0.295924,
		35.426655, 34.177639, 33.967842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760193, 34.417572, 33.413338>,  <34.758984, 34.141483, 34.174988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760193, 34.417572, 33.413338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087467, 34.207047, 33.505913>,  <35.283833, 34.080730, 33.561459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087467, 34.207047, 33.505913>,  <34.760193, 34.417572, 33.413338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087467, 34.207047, 33.505913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136838, -0.569225, -0.810715,
		0.558428, 0.631649, -0.537753,
		0.818189, -0.526311, 0.231438,
		35.332924, 34.049152, 33.575344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183285, 34.423828, 32.813194>,  <34.760193, 34.417572, 33.413338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183285, 34.423828, 32.813194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303806, 34.103436, 33.020130>,  <35.376118, 33.911198, 33.144291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303806, 34.103436, 33.020130>,  <35.183285, 34.423828, 32.813194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303806, 34.103436, 33.020130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012847, -0.545915, -0.837742,
		0.953443, 0.245765, -0.174774,
		0.301300, -0.800985, 0.517341,
		35.394196, 33.863140, 33.175331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699257, 34.098022, 32.368416>,  <35.183285, 34.423828, 32.813194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699257, 34.098022, 32.368416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592606, 33.801128, 32.614342>,  <35.528614, 33.622990, 32.761898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592606, 33.801128, 32.614342>,  <35.699257, 34.098022, 32.368416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592606, 33.801128, 32.614342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086871, -0.653814, -0.751652,
		0.959876, -0.147003, 0.238804,
		-0.266628, -0.742238, 0.614811,
		35.512615, 33.578457, 32.798786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085442, 33.509926, 32.187511>,  <35.699257, 34.098022, 32.368416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085442, 33.509926, 32.187511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820000, 33.305656, 32.406174>,  <35.660732, 33.183094, 32.537373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820000, 33.305656, 32.406174>,  <36.085442, 33.509926, 32.187511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820000, 33.305656, 32.406174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027367, -0.713683, -0.699934,
		0.747580, -0.479442, 0.459630,
		-0.663608, -0.510677, 0.546656,
		35.620918, 33.152454, 32.570171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280602, 32.762466, 32.349171>,  <36.085442, 33.509926, 32.187511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280602, 32.762466, 32.349171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882919, 32.768238, 32.391766>,  <35.644310, 32.771702, 32.417320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882919, 32.768238, 32.391766>,  <36.280602, 32.762466, 32.349171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882919, 32.768238, 32.391766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083260, -0.729900, -0.678464,
		0.067931, -0.683402, 0.726875,
		-0.994210, 0.014431, 0.106483,
		35.584656, 32.772568, 32.423710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124237, 32.053276, 32.354103>,  <36.280602, 32.762466, 32.349171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124237, 32.053276, 32.354103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787323, 32.254303, 32.276142>,  <35.585175, 32.374920, 32.229366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787323, 32.254303, 32.276142>,  <36.124237, 32.053276, 32.354103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787323, 32.254303, 32.276142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247601, -0.681892, -0.688271,
		-0.478799, -0.531464, 0.698783,
		-0.842286, 0.502563, -0.194899,
		35.534637, 32.405071, 32.217674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509983, 31.558954, 32.321842>,  <36.124237, 32.053276, 32.354103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509983, 31.558954, 32.321842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384766, 31.887489, 32.131092>,  <35.309635, 32.084610, 32.016644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384766, 31.887489, 32.131092>,  <35.509983, 31.558954, 32.321842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384766, 31.887489, 32.131092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377281, -0.568335, -0.731201,
		-0.871586, -0.048984, 0.487789,
		-0.313045, 0.821338, -0.476873,
		35.290852, 32.133892, 31.988029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811321, 31.340626, 32.182003>,  <35.509983, 31.558954, 32.321842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811321, 31.340626, 32.182003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925392, 31.645864, 31.950018>,  <34.993835, 31.829008, 31.810827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925392, 31.645864, 31.950018>,  <34.811321, 31.340626, 32.182003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925392, 31.645864, 31.950018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423851, -0.442304, -0.790390,
		-0.859664, 0.471220, 0.197304,
		0.285180, 0.763098, -0.579960,
		35.010944, 31.874794, 31.776030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195965, 31.515474, 31.789183>,  <34.811321, 31.340626, 32.182003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195965, 31.515474, 31.789183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520218, 31.642059, 31.592115>,  <34.714771, 31.718010, 31.473875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520218, 31.642059, 31.592115>,  <34.195965, 31.515474, 31.789183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520218, 31.642059, 31.592115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310850, -0.480445, -0.820088,
		-0.496227, 0.817939, -0.291093,
		0.810636, 0.316464, -0.492666,
		34.763409, 31.736998, 31.444315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014561, 31.740021, 31.091648>,  <34.195965, 31.515474, 31.789183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014561, 31.740021, 31.091648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403656, 31.647863, 31.081072>,  <34.637112, 31.592569, 31.074726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403656, 31.647863, 31.081072>,  <34.014561, 31.740021, 31.091648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403656, 31.647863, 31.081072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113903, -0.375336, -0.919864,
		0.202004, 0.897799, -0.391346,
		0.972739, -0.230392, -0.026443,
		34.695477, 31.578745, 31.073139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582779, 32.464279, 30.916037>,  <34.014561, 31.740021, 31.091648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582779, 32.464279, 30.916037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275799, 32.676079, 30.771452>,  <33.091610, 32.803158, 30.684700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275799, 32.676079, 30.771452>,  <33.582779, 32.464279, 30.916037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275799, 32.676079, 30.771452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069590, 0.491677, 0.867993,
		0.637320, 0.691295, -0.340490,
		-0.767450, 0.529495, -0.361463,
		33.045563, 32.834927, 30.663013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660152, 33.184685, 31.047596>,  <33.582779, 32.464279, 30.916037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660152, 33.184685, 31.047596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265648, 33.133614, 31.005655>,  <33.028946, 33.102970, 30.980490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265648, 33.133614, 31.005655>,  <33.660152, 33.184685, 31.047596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265648, 33.133614, 31.005655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152622, 0.461069, 0.874140,
		-0.063263, 0.878131, -0.474220,
		-0.986258, -0.127678, -0.104854,
		32.969772, 33.095310, 30.974199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349751, 33.908192, 31.198099>,  <33.660152, 33.184685, 31.047596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349751, 33.908192, 31.198099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054165, 33.640701, 31.230915>,  <32.876812, 33.480206, 31.250605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054165, 33.640701, 31.230915>,  <33.349751, 33.908192, 31.198099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054165, 33.640701, 31.230915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215432, 0.349907, 0.911677,
		-0.638369, 0.656026, -0.402635,
		-0.738968, -0.668727, 0.082041,
		32.832474, 33.440083, 31.255527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749073, 34.266277, 31.349604>,  <33.349751, 33.908192, 31.198099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749073, 34.266277, 31.349604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662693, 33.887257, 31.443846>,  <32.610863, 33.659843, 31.500391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662693, 33.887257, 31.443846>,  <32.749073, 34.266277, 31.349604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662693, 33.887257, 31.443846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489227, 0.313832, 0.813736,
		-0.844998, 0.060463, -0.531341,
		-0.215953, -0.947551, 0.235607,
		32.597908, 33.602993, 31.514528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045506, 34.180065, 31.419758>,  <32.749073, 34.266277, 31.349604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045506, 34.180065, 31.419758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199547, 33.870094, 31.620232>,  <32.291969, 33.684113, 31.740515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199547, 33.870094, 31.620232>,  <32.045506, 34.180065, 31.419758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199547, 33.870094, 31.620232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532649, 0.256850, 0.806420,
		-0.753646, -0.577508, -0.313852,
		0.385101, -0.774928, 0.501183,
		32.315079, 33.637615, 31.770586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486456, 34.005894, 31.856234>,  <32.045506, 34.180065, 31.419758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486456, 34.005894, 31.856234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806614, 33.822376, 32.010571>,  <31.998709, 33.712265, 32.103172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806614, 33.822376, 32.010571>,  <31.486456, 34.005894, 31.856234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806614, 33.822376, 32.010571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365705, 0.136305, 0.920696,
		-0.475003, -0.878025, -0.058686,
		0.800395, -0.458795, 0.385843,
		32.046734, 33.684738, 32.126324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244883, 33.506603, 32.433311>,  <31.486456, 34.005894, 31.856234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244883, 33.506603, 32.433311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.633339, 33.569576, 32.504982>,  <31.866413, 33.607361, 32.547985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.633339, 33.569576, 32.504982>,  <31.244883, 33.506603, 32.433311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633339, 33.569576, 32.504982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203264, 0.153254, 0.967056,
		0.124776, -0.975567, 0.180830,
		0.971141, 0.157421, 0.179175,
		31.924681, 33.616806, 32.558735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339293, 33.093533, 33.022373>,  <31.244883, 33.506603, 32.433311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339293, 33.093533, 33.022373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629227, 33.369072, 33.018478>,  <31.803188, 33.534397, 33.016140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629227, 33.369072, 33.018478>,  <31.339293, 33.093533, 33.022373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629227, 33.369072, 33.018478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143148, 0.164426, 0.975947,
		0.673884, -0.706008, 0.217790,
		0.724837, 0.688852, -0.009741,
		31.846678, 33.575726, 33.015556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758499, 32.992371, 33.705936>,  <31.339293, 33.093533, 33.022373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758499, 32.992371, 33.705936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859015, 33.356480, 33.574329>,  <31.919325, 33.574947, 33.495365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859015, 33.356480, 33.574329>,  <31.758499, 32.992371, 33.705936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859015, 33.356480, 33.574329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055668, 0.325769, 0.943809,
		0.966310, -0.255486, 0.031189,
		0.251290, 0.910275, -0.329016,
		31.934402, 33.629562, 33.475624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211632, 33.243927, 34.239735>,  <31.758499, 32.992371, 33.705936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211632, 33.243927, 34.239735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065289, 33.569447, 34.059120>,  <31.977484, 33.764759, 33.950752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065289, 33.569447, 34.059120>,  <32.211632, 33.243927, 34.239735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065289, 33.569447, 34.059120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016726, 0.490847, 0.871085,
		0.930522, 0.311137, -0.193190,
		-0.365854, 0.813795, -0.451540,
		31.955532, 33.813583, 33.923656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488495, 33.837685, 34.616814>,  <32.211632, 33.243927, 34.239735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488495, 33.837685, 34.616814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191959, 33.982647, 34.390869>,  <32.014038, 34.069626, 34.255302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191959, 33.982647, 34.390869>,  <32.488495, 33.837685, 34.616814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191959, 33.982647, 34.390869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224672, 0.659087, 0.717724,
		0.632404, 0.658989, -0.407185,
		-0.741342, 0.362408, -0.564865,
		31.969557, 34.091370, 34.221409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454407, 34.543152, 34.803631>,  <32.488495, 33.837685, 34.616814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454407, 34.543152, 34.803631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.094898, 34.505196, 34.632416>,  <31.879194, 34.482422, 34.529686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.094898, 34.505196, 34.632416>,  <32.454407, 34.543152, 34.803631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094898, 34.505196, 34.632416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384746, 0.638810, 0.666253,
		0.210210, 0.763490, -0.610651,
		-0.898767, -0.094892, -0.428034,
		31.825268, 34.476727, 34.504005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236626, 35.232533, 34.510395>,  <32.454407, 34.543152, 34.803631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236626, 35.232533, 34.510395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925068, 34.990170, 34.575146>,  <31.738134, 34.844749, 34.613995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925068, 34.990170, 34.575146>,  <32.236626, 35.232533, 34.510395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925068, 34.990170, 34.575146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446302, 0.716833, 0.535691,
		-0.440618, 0.345000, -0.828753,
		-0.778890, -0.605909, 0.161875,
		31.691401, 34.808395, 34.623707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724123, 35.805500, 34.548779>,  <32.236626, 35.232533, 34.510395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724123, 35.805500, 34.548779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585365, 35.460899, 34.697090>,  <31.502110, 35.254139, 34.786076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585365, 35.460899, 34.697090>,  <31.724123, 35.805500, 34.548779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585365, 35.460899, 34.697090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535181, 0.506469, 0.676070,
		-0.770224, 0.036093, -0.636752,
		-0.346896, -0.861502, 0.370778,
		31.481297, 35.202450, 34.808323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257404, 36.521816, 34.531422>,  <31.724123, 35.805500, 34.548779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257404, 36.521816, 34.531422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890141, 36.594398, 34.390533>,  <30.669783, 36.637947, 34.306000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890141, 36.594398, 34.390533>,  <31.257404, 36.521816, 34.531422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890141, 36.594398, 34.390533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375544, -0.681918, 0.627658,
		-0.126292, 0.708563, 0.694254,
		-0.918159, 0.181455, -0.352218,
		30.614693, 36.648834, 34.284866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398603, 36.038357, 33.902222>,  <31.257404, 36.521816, 34.531422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398603, 36.038357, 33.902222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540653, 35.665020, 33.881180>,  <31.625883, 35.441017, 33.868557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540653, 35.665020, 33.881180>,  <31.398603, 36.038357, 33.902222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540653, 35.665020, 33.881180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477518, 0.229489, -0.848122,
		0.803656, 0.276070, 0.527183,
		0.355124, -0.933338, -0.052602,
		31.647190, 35.385017, 33.865398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944309, 36.407928, 33.666153>,  <31.398603, 36.038357, 33.902222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944309, 36.407928, 33.666153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333984, 36.322487, 33.636936>,  <32.567787, 36.271221, 33.619408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333984, 36.322487, 33.636936>,  <31.944309, 36.407928, 33.666153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333984, 36.322487, 33.636936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059136, 0.070784, -0.995737,
		0.217865, 0.974353, 0.056325,
		0.974186, -0.213605, -0.073041,
		32.626240, 36.258404, 33.615025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071156, 36.849922, 33.176575>,  <31.944309, 36.407928, 33.666153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071156, 36.849922, 33.176575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394482, 36.615154, 33.158035>,  <32.588478, 36.474293, 33.146912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394482, 36.615154, 33.158035>,  <32.071156, 36.849922, 33.176575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394482, 36.615154, 33.158035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002169, 0.075756, -0.997124,
		0.588742, 0.806094, 0.059962,
		0.808318, -0.586919, -0.046349,
		32.636978, 36.439079, 33.144131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449745, 37.097507, 32.647861>,  <32.071156, 36.849922, 33.176575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449745, 37.097507, 32.647861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587536, 36.722309, 32.663353>,  <32.670212, 36.497189, 32.672649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587536, 36.722309, 32.663353>,  <32.449745, 37.097507, 32.647861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587536, 36.722309, 32.663353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215941, 0.039017, -0.975627,
		0.913623, 0.344444, 0.215992,
		0.344476, -0.937996, 0.038733,
		32.690880, 36.440910, 32.674973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171680, 37.136765, 32.292179>,  <32.449745, 37.097507, 32.647861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171680, 37.136765, 32.292179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017490, 36.767708, 32.287552>,  <32.924976, 36.546272, 32.284775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017490, 36.767708, 32.287552>,  <33.171680, 37.136765, 32.292179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017490, 36.767708, 32.287552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203985, -0.072987, -0.976249,
		0.899887, -0.378681, 0.216340,
		-0.385477, -0.922645, -0.011565,
		32.901848, 36.490913, 32.284081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626518, 36.726810, 31.911003>,  <33.171680, 37.136765, 32.292179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626518, 36.726810, 31.911003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.288048, 36.516163, 31.878361>,  <33.084965, 36.389774, 31.858776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.288048, 36.516163, 31.878361>,  <33.626518, 36.726810, 31.911003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288048, 36.516163, 31.878361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096545, -0.000891, -0.995328,
		0.524085, -0.850102, 0.051596,
		-0.846176, -0.526618, -0.081606,
		33.034195, 36.358177, 31.853878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846249, 36.164276, 31.512360>,  <33.626518, 36.726810, 31.911003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846249, 36.164276, 31.512360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447746, 36.186886, 31.486214>,  <33.208645, 36.200451, 31.470526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447746, 36.186886, 31.486214>,  <33.846249, 36.164276, 31.512360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447746, 36.186886, 31.486214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048127, -0.265321, -0.962958,
		-0.071774, -0.962502, 0.261609,
		-0.996259, 0.056525, -0.065365,
		33.148869, 36.203842, 31.466604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759102, 35.882999, 30.878630>,  <33.846249, 36.164276, 31.512360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759102, 35.882999, 30.878630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394367, 36.004597, 30.989004>,  <33.175526, 36.077557, 31.055229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394367, 36.004597, 30.989004>,  <33.759102, 35.882999, 30.878630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394367, 36.004597, 30.989004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317563, -0.096261, -0.943338,
		-0.260210, -0.947797, 0.184312,
		-0.911836, 0.303997, 0.275938,
		33.120815, 36.095795, 31.071785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356815, 35.343929, 30.673307>,  <33.759102, 35.882999, 30.878630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356815, 35.343929, 30.673307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137825, 35.678394, 30.686518>,  <33.006432, 35.879074, 30.694443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137825, 35.678394, 30.686518>,  <33.356815, 35.343929, 30.673307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137825, 35.678394, 30.686518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181155, -0.079899, -0.980204,
		-0.816975, -0.542625, 0.195219,
		-0.547480, 0.836167, 0.033024,
		32.973579, 35.929245, 30.696424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674355, 35.208889, 30.510159>,  <33.356815, 35.343929, 30.673307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674355, 35.208889, 30.510159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.734856, 35.589867, 30.404352>,  <32.771156, 35.818455, 30.340868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.734856, 35.589867, 30.404352>,  <32.674355, 35.208889, 30.510159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734856, 35.589867, 30.404352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391289, -0.188048, -0.900850,
		-0.907753, 0.239760, 0.344239,
		0.151254, 0.952446, -0.264516,
		32.780231, 35.875599, 30.324997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107861, 35.399948, 30.202402>,  <32.674355, 35.208889, 30.510159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107861, 35.399948, 30.202402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361549, 35.675755, 30.062496>,  <32.513763, 35.841236, 29.978552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361549, 35.675755, 30.062496>,  <32.107861, 35.399948, 30.202402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361549, 35.675755, 30.062496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361228, -0.135714, -0.922548,
		-0.683578, 0.711444, 0.162998,
		0.634220, 0.689513, -0.349765,
		32.551815, 35.882610, 29.957567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643055, 35.794243, 29.631041>,  <32.107861, 35.399948, 30.202402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643055, 35.794243, 29.631041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.025486, 35.887592, 29.560099>,  <32.254944, 35.943604, 29.517534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.025486, 35.887592, 29.560099>,  <31.643055, 35.794243, 29.631041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025486, 35.887592, 29.560099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175987, -0.026837, -0.984027,
		-0.234405, 0.972017, 0.015413,
		0.956077, 0.233373, -0.177353,
		32.312309, 35.957603, 29.506893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683846, 36.379410, 29.153244>,  <31.643055, 35.794243, 29.631041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683846, 36.379410, 29.153244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037167, 36.198093, 29.105398>,  <32.249161, 36.089306, 29.076691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037167, 36.198093, 29.105398>,  <31.683846, 36.379410, 29.153244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037167, 36.198093, 29.105398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153743, -0.039052, -0.987339,
		0.442876, 0.890509, -0.104185,
		0.883303, -0.453287, -0.119614,
		32.302158, 36.062107, 29.069513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917603, 36.532536, 28.483229>,  <31.683846, 36.379410, 29.153244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917603, 36.532536, 28.483229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196701, 36.251312, 28.538157>,  <32.364159, 36.082577, 28.571114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196701, 36.251312, 28.538157>,  <31.917603, 36.532536, 28.483229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196701, 36.251312, 28.538157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122064, -0.072200, -0.989893,
		0.705870, 0.707454, 0.035442,
		0.697745, -0.703062, 0.137318,
		32.406025, 36.040394, 28.579351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567188, 36.749104, 28.058556>,  <31.917603, 36.532536, 28.483229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567188, 36.749104, 28.058556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603527, 36.356655, 28.126856>,  <32.625332, 36.121185, 28.167835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603527, 36.356655, 28.126856>,  <32.567188, 36.749104, 28.058556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603527, 36.356655, 28.126856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128106, -0.158521, -0.979010,
		0.987590, 0.110818, 0.111285,
		0.090851, -0.981117, 0.170751,
		32.630783, 36.062321, 28.178082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209133, 36.586388, 27.719408>,  <32.567188, 36.749104, 28.058556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209133, 36.586388, 27.719408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981209, 36.261703, 27.770687>,  <32.844452, 36.066891, 27.801455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981209, 36.261703, 27.770687>,  <33.209133, 36.586388, 27.719408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981209, 36.261703, 27.770687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174028, -0.271654, -0.946530,
		0.803136, -0.517035, 0.296052,
		-0.569812, -0.811714, 0.128197,
		32.810265, 36.018188, 27.809147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538456, 36.030151, 27.314226>,  <33.209133, 36.586388, 27.719408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538456, 36.030151, 27.314226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166176, 35.895866, 27.372334>,  <32.942810, 35.815296, 27.407198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166176, 35.895866, 27.372334>,  <33.538456, 36.030151, 27.314226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166176, 35.895866, 27.372334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029079, -0.327976, -0.944239,
		0.364635, -0.883024, 0.295484,
		-0.930697, -0.335710, 0.145268,
		32.886967, 35.795155, 27.415915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669540, 35.341831, 27.159245>,  <33.538456, 36.030151, 27.314226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669540, 35.341831, 27.159245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.278744, 35.424728, 27.139133>,  <33.044266, 35.474468, 27.127068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.278744, 35.424728, 27.139133>,  <33.669540, 35.341831, 27.159245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278744, 35.424728, 27.139133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049105, -0.448048, -0.892660,
		-0.207526, -0.869656, 0.447918,
		-0.976997, 0.207245, -0.050277,
		32.985645, 35.486900, 27.124050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370991, 34.699909, 26.887451>,  <33.669540, 35.341831, 27.159245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370991, 34.699909, 26.887451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111450, 34.995937, 26.816696>,  <32.955727, 35.173553, 26.774242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111450, 34.995937, 26.816696>,  <33.370991, 34.699909, 26.887451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111450, 34.995937, 26.816696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126602, -0.334225, -0.933952,
		-0.750308, -0.583603, 0.310557,
		-0.648853, 0.740068, -0.176887,
		32.916794, 35.217957, 26.763630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702621, 34.380081, 26.709307>,  <33.370991, 34.699909, 26.887451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702621, 34.380081, 26.709307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695122, 34.744972, 26.545601>,  <32.690620, 34.963905, 26.447378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695122, 34.744972, 26.545601>,  <32.702621, 34.380081, 26.709307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695122, 34.744972, 26.545601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079184, -0.409403, -0.908911,
		-0.996684, 0.015365, 0.079910,
		-0.018750, 0.912224, -0.409262,
		32.689495, 35.018639, 26.422823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282547, 34.268330, 26.107464>,  <32.702621, 34.380081, 26.709307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282547, 34.268330, 26.107464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462811, 34.618706, 26.038609>,  <32.570969, 34.828930, 25.997295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462811, 34.618706, 26.038609>,  <32.282547, 34.268330, 26.107464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462811, 34.618706, 26.038609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103854, -0.140074, -0.984679,
		-0.886634, 0.461633, 0.027844,
		0.450661, 0.875942, -0.172137,
		32.598007, 34.881489, 25.986967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846371, 34.782551, 25.736954>,  <32.282547, 34.268330, 26.107464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846371, 34.782551, 25.736954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224129, 34.890537, 25.661871>,  <32.450783, 34.955330, 25.616821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224129, 34.890537, 25.661871>,  <31.846371, 34.782551, 25.736954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224129, 34.890537, 25.661871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205983, 0.040777, -0.977706,
		-0.256295, 0.962005, 0.094119,
		0.944396, 0.269968, -0.187706,
		32.507446, 34.971527, 25.605558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826149, 35.350216, 25.147566>,  <31.846371, 34.782551, 25.736954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826149, 35.350216, 25.147566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204647, 35.222015, 25.130114>,  <32.431747, 35.145096, 25.119642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204647, 35.222015, 25.130114>,  <31.826149, 35.350216, 25.147566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204647, 35.222015, 25.130114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011833, 0.100503, -0.994866,
		0.323237, 0.941903, 0.091308,
		0.946244, -0.320497, -0.043632,
		32.488522, 35.125866, 25.117023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048378, 35.734509, 24.574070>,  <31.826149, 35.350216, 25.147566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048378, 35.734509, 24.574070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315712, 35.442719, 24.632311>,  <32.476112, 35.267647, 24.667255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315712, 35.442719, 24.632311>,  <32.048378, 35.734509, 24.574070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315712, 35.442719, 24.632311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167091, -0.043515, -0.984981,
		0.724850, 0.682626, 0.092805,
		0.668336, -0.729471, 0.145602,
		32.516212, 35.223877, 24.675991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522434, 35.920490, 24.105253>,  <32.048378, 35.734509, 24.574070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522434, 35.920490, 24.105253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.569324, 35.531021, 24.183451>,  <32.597458, 35.297340, 24.230370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.569324, 35.531021, 24.183451>,  <32.522434, 35.920490, 24.105253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569324, 35.531021, 24.183451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231415, -0.164649, -0.958821,
		0.965767, 0.157637, 0.206022,
		0.117224, -0.973674, 0.195492,
		32.604492, 35.238918, 24.242098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245316, 35.730602, 23.988317>,  <32.522434, 35.920490, 24.105253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245316, 35.730602, 23.988317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057693, 35.380619, 23.940258>,  <32.945122, 35.170628, 23.911423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057693, 35.380619, 23.940258>,  <33.245316, 35.730602, 23.988317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057693, 35.380619, 23.940258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488095, -0.143440, -0.860923,
		0.736037, -0.462466, 0.494344,
		-0.469056, -0.874957, -0.120150,
		32.916977, 35.118134, 23.904213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702881, 35.329678, 23.625277>,  <33.245316, 35.730602, 23.988317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702881, 35.329678, 23.625277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361576, 35.126453, 23.578243>,  <33.156796, 35.004520, 23.550024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361576, 35.126453, 23.578243>,  <33.702881, 35.329678, 23.625277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361576, 35.126453, 23.578243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267223, -0.232347, -0.935204,
		0.447818, -0.829392, 0.334017,
		-0.853259, -0.508058, -0.117584,
		33.105598, 34.974037, 23.542969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313301, 35.133289, 23.681959>,  <33.702881, 35.329678, 23.625277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313301, 35.133289, 23.681959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.678352, 35.270397, 23.592854>,  <34.897385, 35.352661, 23.539391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.678352, 35.270397, 23.592854>,  <34.313301, 35.133289, 23.681959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678352, 35.270397, 23.592854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057501, 0.431875, 0.900099,
		0.404723, -0.834266, 0.374433,
		0.912630, 0.342761, -0.222761,
		34.952141, 35.373226, 23.526024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752487, 34.866970, 24.196651>,  <34.313301, 35.133289, 23.681959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752487, 34.866970, 24.196651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895000, 35.208984, 24.045929>,  <34.980507, 35.414192, 23.955496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895000, 35.208984, 24.045929>,  <34.752487, 34.866970, 24.196651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895000, 35.208984, 24.045929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043140, 0.387787, 0.920739,
		0.933381, -0.344300, 0.101275,
		0.356283, 0.855032, -0.376806,
		35.001884, 35.465492, 23.932888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256065, 35.102821, 24.666203>,  <34.752487, 34.866970, 24.196651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256065, 35.102821, 24.666203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200935, 35.437809, 24.454674>,  <35.167858, 35.638802, 24.327757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200935, 35.437809, 24.454674>,  <35.256065, 35.102821, 24.666203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200935, 35.437809, 24.454674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003652, 0.533485, 0.845802,
		0.990450, 0.118505, -0.070470,
		-0.137826, 0.837467, -0.528822,
		35.159588, 35.689049, 24.296026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714329, 35.546524, 24.898283>,  <35.256065, 35.102821, 24.666203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714329, 35.546524, 24.898283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429363, 35.778332, 24.739981>,  <35.258385, 35.917416, 24.644999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429363, 35.778332, 24.739981>,  <35.714329, 35.546524, 24.898283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429363, 35.778332, 24.739981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079266, 0.493885, 0.865907,
		0.697272, 0.648252, -0.305912,
		-0.712411, 0.579524, -0.395756,
		35.215641, 35.952190, 24.621254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937359, 36.224361, 24.999805>,  <35.714329, 35.546524, 24.898283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937359, 36.224361, 24.999805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542164, 36.246288, 24.942015>,  <35.305046, 36.259445, 24.907339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542164, 36.246288, 24.942015>,  <35.937359, 36.224361, 24.999805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542164, 36.246288, 24.942015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086122, 0.580957, 0.809365,
		0.128305, 0.812086, -0.569258,
		-0.987988, 0.054820, -0.144478,
		35.245766, 36.262733, 24.898672>
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
