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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<0.720056, 3.554727, 0.727179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.421890, 3.802246, 0.826332>,  <0.242991, 3.950758, 0.885824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.421890, 3.802246, 0.826332>,  <0.720056, 3.554727, 0.727179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.421890, 3.802246, 0.826332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145860, -0.514258, 0.845141,
		0.650447, 0.593825, 0.473594,
		-0.745415, 0.618797, 0.247883,
		0.198266, 3.987885, 0.900697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.869863, 3.567297, 1.374690>,  <0.720056, 3.554727, 0.727179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.869863, 3.567297, 1.374690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.526405, 3.772301, 1.377892>,  <0.320331, 3.895303, 1.379812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.526405, 3.772301, 1.377892>,  <0.869863, 3.567297, 1.374690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.526405, 3.772301, 1.377892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127184, -0.228156, 0.965282,
		0.496541, 0.827817, 0.261088,
		-0.858645, 0.512508, 0.008004,
		0.268812, 3.926053, 1.380293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.096136, 3.937737, 1.903538>,  <0.869863, 3.567297, 1.374690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.096136, 3.937737, 1.903538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.486355, 3.872108, 1.962036>,  <1.720486, 3.832731, 1.997135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.486355, 3.872108, 1.962036>,  <1.096136, 3.937737, 1.903538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.486355, 3.872108, 1.962036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210902, -0.511513, 0.832991,
		-0.061863, -0.843466, -0.533608,
		0.975547, -0.164070, 0.146245,
		1.779019, 3.822887, 2.005910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.290893, 3.229968, 2.023176>,  <1.096136, 3.937737, 1.903538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.290893, 3.229968, 2.023176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.604797, 3.404663, 2.199089>,  <1.793140, 3.509480, 2.304637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.604797, 3.404663, 2.199089>,  <1.290893, 3.229968, 2.023176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.604797, 3.404663, 2.199089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097237, -0.614018, 0.783280,
		0.612123, -0.657451, -0.439391,
		0.784761, 0.436738, 0.439783,
		1.840226, 3.535685, 2.331024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.848528, 2.654263, 2.201475>,  <1.290893, 3.229968, 2.023176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.848528, 2.654263, 2.201475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.851765, 2.968788, 2.448586>,  <1.853706, 3.157503, 2.596852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.851765, 2.968788, 2.448586>,  <1.848528, 2.654263, 2.201475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.851765, 2.968788, 2.448586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055586, -0.616489, 0.785399,
		0.998421, -0.040694, 0.038720,
		0.008091, 0.786312, 0.617777,
		1.854192, 3.204682, 2.633919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.183636, 2.449439, 2.720722>,  <1.848528, 2.654263, 2.201475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.183636, 2.449439, 2.720722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.991173, 2.758476, 2.886414>,  <1.875695, 2.943899, 2.985828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.991173, 2.758476, 2.886414>,  <2.183636, 2.449439, 2.720722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.991173, 2.758476, 2.886414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135433, -0.532361, 0.835613,
		0.866108, 0.345963, 0.360785,
		-0.481159, 0.772594, 0.414228,
		1.846825, 2.990254, 3.010682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.412115, 2.335932, 3.309184>,  <2.183636, 2.449439, 2.720722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.412115, 2.335932, 3.309184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.104511, 2.587685, 3.353912>,  <1.919949, 2.738736, 3.380749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.104511, 2.587685, 3.353912>,  <2.412115, 2.335932, 3.309184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.104511, 2.587685, 3.353912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297237, -0.506933, 0.809116,
		0.565928, 0.588980, 0.576912,
		-0.769009, 0.629381, 0.111821,
		1.873808, 2.776499, 3.387459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.416861, 2.532239, 4.024732>,  <2.412115, 2.335932, 3.309184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.416861, 2.532239, 4.024732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.039070, 2.597252, 3.910507>,  <1.812395, 2.636259, 3.841973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.039070, 2.597252, 3.910507>,  <2.416861, 2.532239, 4.024732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.039070, 2.597252, 3.910507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328308, -0.501813, 0.800248,
		-0.013233, 0.849569, 0.527311,
		-0.944478, 0.162531, -0.285561,
		1.755727, 2.646011, 3.824839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.371752, 1.715934, 4.579444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.063020, 1.968452, 4.609756>,  <0.877780, 2.119964, 4.627944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.063020, 1.968452, 4.609756>,  <1.371752, 1.715934, 4.579444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.063020, 1.968452, 4.609756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284368, 0.449332, -0.846898,
		-0.568694, -0.632112, -0.526329,
		-0.771830, 0.631297, 0.075781,
		0.831471, 2.157841, 4.632491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.964655, 1.747964, 4.021371>,  <1.371752, 1.715934, 4.579444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.964655, 1.747964, 4.021371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.905421, 2.119080, 4.158356>,  <0.869881, 2.341749, 4.240546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.905421, 2.119080, 4.158356>,  <0.964655, 1.747964, 4.021371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.905421, 2.119080, 4.158356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370059, 0.373105, -0.850793,
		-0.917130, 0.000742, -0.398587,
		-0.148083, 0.927789, 0.342460,
		0.860996, 2.397416, 4.261094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.587934, 2.173058, 3.519015>,  <0.964655, 1.747964, 4.021371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.587934, 2.173058, 3.519015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.831182, 2.387009, 3.753654>,  <0.977130, 2.515379, 3.894438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.831182, 2.387009, 3.753654>,  <0.587934, 2.173058, 3.519015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.831182, 2.387009, 3.753654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353060, 0.479602, -0.803325,
		-0.711014, 0.695622, 0.102812,
		0.608119, 0.534876, 0.586600,
		1.013617, 2.547472, 3.929634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.530550, 2.852545, 3.466830>,  <0.587934, 2.173058, 3.519015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.530550, 2.852545, 3.466830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.911912, 2.792000, 3.571220>,  <1.140729, 2.755673, 3.633855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.911912, 2.792000, 3.571220>,  <0.530550, 2.852545, 3.466830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.911912, 2.792000, 3.571220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296892, 0.624432, -0.722454,
		-0.053610, 0.766273, 0.640275,
		0.953405, -0.151362, 0.260976,
		1.197934, 2.746591, 3.649513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.778909, 3.523494, 3.499008>,  <0.530550, 2.852545, 3.466830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.778909, 3.523494, 3.499008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.116081, 3.311295, 3.463150>,  <1.318385, 3.183975, 3.441635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.116081, 3.311295, 3.463150>,  <0.778909, 3.523494, 3.499008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.116081, 3.311295, 3.463150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353188, 0.671307, -0.651617,
		0.405862, 0.517607, 0.753232,
		0.842932, -0.530500, -0.089646,
		1.368961, 3.152145, 3.436256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.330835, 3.957080, 3.624658>,  <0.778909, 3.523494, 3.499008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.330835, 3.957080, 3.624658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.484257, 3.662895, 3.401237>,  <1.576310, 3.486384, 3.267185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.484257, 3.662895, 3.401237>,  <1.330835, 3.957080, 3.624658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.484257, 3.662895, 3.401237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455577, 0.676777, -0.578292,
		0.803328, -0.032656, 0.594642,
		0.383555, -0.735463, -0.558551,
		1.599323, 3.442256, 3.233672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.936190, 4.165561, 3.456730>,  <1.330835, 3.957080, 3.624658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.936190, 4.165561, 3.456730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.888738, 3.878403, 3.182343>,  <1.860266, 3.706108, 3.017710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.888738, 3.878403, 3.182343>,  <1.936190, 4.165561, 3.456730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.888738, 3.878403, 3.182343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520249, 0.543491, -0.658756,
		0.845735, -0.435023, 0.309010,
		-0.118630, -0.717895, -0.685970,
		1.853149, 3.663034, 2.976552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.578456, 4.078797, 2.979843>,  <1.936190, 4.165561, 3.456730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.578456, 4.078797, 2.979843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.233178, 3.981972, 2.802620>,  <2.026011, 3.923877, 2.696286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.233178, 3.981972, 2.802620>,  <2.578456, 4.078797, 2.979843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.233178, 3.981972, 2.802620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312409, 0.433282, -0.845380,
		0.396604, -0.868143, -0.298385,
		-0.863195, -0.242063, -0.443057,
		1.974220, 3.909353, 2.669703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
