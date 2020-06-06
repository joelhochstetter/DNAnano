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
	<24.423527, 34.709900, 34.554943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314758, 34.763103, 34.936176>,  <24.249498, 34.795025, 35.164917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314758, 34.763103, 34.936176>,  <24.423527, 34.709900, 34.554943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.314758, 34.763103, 34.936176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621501, -0.780422, -0.068400,
		0.734709, -0.610941, 0.294880,
		-0.271919, 0.133013, 0.953083,
		24.233183, 34.803009, 35.222103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966820, 35.156239, 34.761799>,  <24.423527, 34.709900, 34.554943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966820, 35.156239, 34.761799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.319788, 35.344387, 34.765499>,  <25.531569, 35.457275, 34.767719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.319788, 35.344387, 34.765499>,  <24.966820, 35.156239, 34.761799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.319788, 35.344387, 34.765499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469549, -0.879315, -0.079558,
		-0.029285, 0.074549, -0.996787,
		0.882421, 0.470370, 0.009254,
		25.584515, 35.485497, 34.768276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367132, 35.073238, 34.119816>,  <24.966820, 35.156239, 34.761799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367132, 35.073238, 34.119816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623322, 35.134743, 34.420788>,  <25.777035, 35.171646, 34.601372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623322, 35.134743, 34.420788>,  <25.367132, 35.073238, 34.119816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623322, 35.134743, 34.420788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496393, -0.830467, -0.252821,
		0.585994, 0.535427, -0.608218,
		0.640472, 0.153763, 0.752431,
		25.815464, 35.180870, 34.646519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065735, 35.074459, 33.832588>,  <25.367132, 35.073238, 34.119816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065735, 35.074459, 33.832588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089298, 34.987942, 34.222408>,  <26.103436, 34.936031, 34.456299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089298, 34.987942, 34.222408>,  <26.065735, 35.074459, 33.832588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089298, 34.987942, 34.222408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482720, -0.848347, -0.217461,
		0.873792, 0.483244, 0.054435,
		0.058907, -0.216293, 0.974550,
		26.106970, 34.923054, 34.514774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753008, 34.729443, 33.890892>,  <26.065735, 35.074459, 33.832588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753008, 34.729443, 33.890892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549719, 34.622265, 34.218285>,  <26.427746, 34.557957, 34.414722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549719, 34.622265, 34.218285>,  <26.753008, 34.729443, 33.890892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549719, 34.622265, 34.218285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481264, -0.876495, 0.011896,
		0.714210, 0.399953, 0.574406,
		-0.508222, -0.267944, 0.818484,
		26.397253, 34.541882, 34.463829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281948, 34.507713, 34.235416>,  <26.753008, 34.729443, 33.890892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281948, 34.507713, 34.235416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939669, 34.368340, 34.388454>,  <26.734301, 34.284718, 34.480278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939669, 34.368340, 34.388454>,  <27.281948, 34.507713, 34.235416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939669, 34.368340, 34.388454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403680, -0.912043, 0.072254,
		0.323767, 0.216273, 0.921087,
		-0.855697, -0.348431, 0.382595,
		26.682961, 34.263809, 34.503231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415573, 34.203133, 34.860928>,  <27.281948, 34.507713, 34.235416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415573, 34.203133, 34.860928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069077, 34.031109, 34.759201>,  <26.861177, 33.927895, 34.698166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069077, 34.031109, 34.759201>,  <27.415573, 34.203133, 34.860928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069077, 34.031109, 34.759201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341590, -0.881242, 0.326694,
		-0.364609, 0.196126, 0.910272,
		-0.866243, -0.430055, -0.254315,
		26.809204, 33.902092, 34.682907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270262, 33.694389, 35.387215>,  <27.415573, 34.203133, 34.860928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270262, 33.694389, 35.387215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066662, 33.572601, 35.065166>,  <26.944502, 33.499527, 34.871937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066662, 33.572601, 35.065166>,  <27.270262, 33.694389, 35.387215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066662, 33.572601, 35.065166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328360, -0.933301, 0.145356,
		-0.795675, -0.190382, 0.575027,
		-0.509000, -0.304472, -0.805118,
		26.913961, 33.481258, 34.823631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758013, 33.043568, 35.572746>,  <27.270262, 33.694389, 35.387215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758013, 33.043568, 35.572746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853540, 33.040421, 35.184334>,  <26.910856, 33.038532, 34.951286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853540, 33.040421, 35.184334>,  <26.758013, 33.043568, 35.572746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853540, 33.040421, 35.184334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491894, -0.861201, 0.127959,
		-0.837261, -0.508204, -0.201798,
		0.238818, -0.007872, -0.971032,
		26.925186, 33.038059, 34.893024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507465, 32.407040, 35.278381>,  <26.758013, 33.043568, 35.572746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507465, 32.407040, 35.278381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793997, 32.536129, 35.030922>,  <26.965916, 32.613583, 34.882446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793997, 32.536129, 35.030922>,  <26.507465, 32.407040, 35.278381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793997, 32.536129, 35.030922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284126, -0.944687, -0.163824,
		-0.637297, -0.058422, -0.768401,
		0.716328, 0.322727, -0.618645,
		27.008896, 32.632946, 34.845329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536604, 31.935387, 34.798080>,  <26.507465, 32.407040, 35.278381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536604, 31.935387, 34.798080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888027, 32.114658, 34.732021>,  <27.098881, 32.222221, 34.692387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888027, 32.114658, 34.732021>,  <26.536604, 31.935387, 34.798080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888027, 32.114658, 34.732021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419971, -0.889538, -0.179849,
		-0.227510, 0.088650, -0.969732,
		0.878557, 0.448177, -0.165149,
		27.151594, 32.249111, 34.682476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886305, 31.791031, 34.083195>,  <26.536604, 31.935387, 34.798080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886305, 31.791031, 34.083195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158426, 31.876242, 34.363712>,  <27.321699, 31.927368, 34.532021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158426, 31.876242, 34.363712>,  <26.886305, 31.791031, 34.083195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158426, 31.876242, 34.363712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449774, -0.876821, -0.169966,
		0.578698, 0.431050, -0.692318,
		0.680303, 0.213028, 0.701290,
		27.362516, 31.940149, 34.574100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559544, 31.625696, 33.856476>,  <26.886305, 31.791031, 34.083195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559544, 31.625696, 33.856476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617846, 31.623222, 34.252197>,  <27.652826, 31.621738, 34.489628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617846, 31.623222, 34.252197>,  <27.559544, 31.625696, 33.856476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617846, 31.623222, 34.252197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550535, -0.830339, -0.086304,
		0.821989, 0.557225, -0.117622,
		0.145757, -0.006186, 0.989301,
		27.661573, 31.621367, 34.548988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314821, 31.809296, 34.090916>,  <27.559544, 31.625696, 33.856476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314821, 31.809296, 34.090916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111265, 31.563423, 34.331978>,  <27.989132, 31.415899, 34.476616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111265, 31.563423, 34.331978>,  <28.314821, 31.809296, 34.090916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111265, 31.563423, 34.331978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720707, -0.687079, -0.092214,
		0.470756, 0.387414, 0.792653,
		-0.508891, -0.614681, 0.602659,
		27.958597, 31.379019, 34.512775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759935, 31.577227, 34.680218>,  <28.314821, 31.809296, 34.090916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759935, 31.577227, 34.680218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479099, 31.304680, 34.597458>,  <28.310598, 31.141151, 34.547802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479099, 31.304680, 34.597458>,  <28.759935, 31.577227, 34.680218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479099, 31.304680, 34.597458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710361, -0.690401, -0.136873,
		-0.049585, -0.243073, 0.968740,
		-0.702089, -0.681368, -0.206903,
		28.268473, 31.100269, 34.535385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366943, 32.282818, 34.681435>,  <28.759935, 31.577227, 34.680218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366943, 32.282818, 34.681435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013634, 32.185066, 34.521381>,  <27.801649, 32.126415, 34.425350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013634, 32.185066, 34.521381>,  <28.366943, 32.282818, 34.681435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013634, 32.185066, 34.521381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334381, 0.926568, 0.172225,
		0.328662, 0.285918, -0.900129,
		-0.883273, -0.244383, -0.400133,
		27.748652, 32.111752, 34.401340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277220, 32.852486, 34.409103>,  <28.366943, 32.282818, 34.681435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277220, 32.852486, 34.409103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932343, 32.656879, 34.461998>,  <27.725416, 32.539516, 34.493736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932343, 32.656879, 34.461998>,  <28.277220, 32.852486, 34.409103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932343, 32.656879, 34.461998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487172, 0.871975, 0.048195,
		-0.138878, -0.022870, -0.990045,
		-0.862192, -0.489016, 0.132240,
		27.673685, 32.510174, 34.501671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861534, 32.999092, 33.862354>,  <28.277220, 32.852486, 34.409103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861534, 32.999092, 33.862354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602404, 32.875614, 34.140930>,  <27.446926, 32.801529, 34.308075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602404, 32.875614, 34.140930>,  <27.861534, 32.999092, 33.862354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602404, 32.875614, 34.140930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534672, 0.835456, -0.127042,
		-0.542631, -0.454669, -0.706278,
		-0.647826, -0.308690, 0.696443,
		27.408056, 32.783009, 34.349861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151627, 33.073830, 33.576565>,  <27.861534, 32.999092, 33.862354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151627, 33.073830, 33.576565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102367, 33.050781, 33.972851>,  <27.072811, 33.036953, 34.210621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102367, 33.050781, 33.972851>,  <27.151627, 33.073830, 33.576565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102367, 33.050781, 33.972851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713291, 0.699222, -0.047998,
		-0.689964, -0.712579, -0.127207,
		-0.123148, -0.057619, 0.990714,
		27.065422, 33.033497, 34.270065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414473, 33.173328, 33.681793>,  <27.151627, 33.073830, 33.576565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414473, 33.173328, 33.681793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593063, 33.270023, 34.026402>,  <26.700218, 33.328041, 34.233166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593063, 33.270023, 34.026402>,  <26.414473, 33.173328, 33.681793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593063, 33.270023, 34.026402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584087, 0.808131, 0.075940,
		-0.677864, -0.537110, 0.502009,
		0.446477, 0.241740, 0.861522,
		26.727007, 33.342545, 34.284859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843813, 33.578239, 33.543243>,  <26.414473, 33.173328, 33.681793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843813, 33.578239, 33.543243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200291, 33.718166, 33.658760>,  <26.414177, 33.802124, 33.728069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200291, 33.718166, 33.658760>,  <25.843813, 33.578239, 33.543243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200291, 33.718166, 33.658760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429772, 0.854845, 0.290751,
		-0.145165, -0.383231, 0.912174,
		0.891192, 0.349820, 0.288796,
		26.467648, 33.823112, 33.745399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778656, 33.373062, 34.238838>,  <25.843813, 33.578239, 33.543243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778656, 33.373062, 34.238838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111900, 33.553696, 34.366585>,  <26.311848, 33.662075, 34.443233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111900, 33.553696, 34.366585>,  <25.778656, 33.373062, 34.238838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111900, 33.553696, 34.366585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523491, 0.830178, 0.191733,
		-0.178549, -0.326922, 0.928031,
		0.833113, 0.451582, 0.319369,
		26.361834, 33.689171, 34.462395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595360, 33.680782, 34.977589>,  <25.778656, 33.373062, 34.238838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595360, 33.680782, 34.977589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935453, 33.857361, 34.862885>,  <26.139509, 33.963306, 34.794064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935453, 33.857361, 34.862885>,  <25.595360, 33.680782, 34.977589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935453, 33.857361, 34.862885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383744, 0.892668, 0.236398,
		0.360337, -0.090951, 0.928378,
		0.850234, 0.441442, -0.286759,
		26.190523, 33.989792, 34.776855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133217, 33.832382, 35.506111>,  <25.595360, 33.680782, 34.977589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133217, 33.832382, 35.506111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039637, 34.206352, 35.612835>,  <24.983488, 34.430733, 35.676868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039637, 34.206352, 35.612835>,  <25.133217, 33.832382, 35.506111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039637, 34.206352, 35.612835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222725, -0.215592, 0.950744,
		0.946393, 0.281854, -0.157792,
		-0.233953, 0.934921, 0.266811,
		24.969450, 34.486828, 35.692879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837238, 34.104183, 35.541866>,  <25.133217, 33.832382, 35.506111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837238, 34.104183, 35.541866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982296, 34.252373, 35.199818>,  <26.069330, 34.341286, 34.994587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982296, 34.252373, 35.199818>,  <25.837238, 34.104183, 35.541866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982296, 34.252373, 35.199818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535762, 0.833673, 0.133974,
		0.762528, 0.409557, 0.500814,
		0.362645, 0.370476, -0.855124,
		26.091089, 34.363514, 34.943279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983824, 34.756443, 35.824440>,  <25.837238, 34.104183, 35.541866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983824, 34.756443, 35.824440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046545, 34.790028, 35.430817>,  <26.084177, 34.810181, 35.194645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046545, 34.790028, 35.430817>,  <25.983824, 34.756443, 35.824440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046545, 34.790028, 35.430817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401273, 0.915848, 0.014206,
		0.902438, 0.392647, 0.177299,
		0.156801, 0.083966, -0.984055,
		26.093586, 34.815216, 35.135601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534927, 35.183475, 35.729851>,  <25.983824, 34.756443, 35.824440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534927, 35.183475, 35.729851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304703, 35.199802, 35.403156>,  <26.166569, 35.209599, 35.207138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304703, 35.199802, 35.403156>,  <26.534927, 35.183475, 35.729851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304703, 35.199802, 35.403156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453037, 0.815563, 0.360020,
		0.680799, 0.577226, -0.450912,
		-0.575560, 0.040822, -0.816740,
		26.132034, 35.212048, 35.158134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505173, 35.887169, 35.594345>,  <26.534927, 35.183475, 35.729851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505173, 35.887169, 35.594345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174461, 35.710312, 35.455235>,  <25.976034, 35.604198, 35.371769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174461, 35.710312, 35.455235>,  <26.505173, 35.887169, 35.594345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174461, 35.710312, 35.455235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510619, 0.849270, 0.134197,
		0.236026, 0.288534, -0.927922,
		-0.826777, -0.442141, -0.347781,
		25.926428, 35.577671, 35.350899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672623, 36.087841, 34.974743>,  <26.505173, 35.887169, 35.594345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672623, 36.087841, 34.974743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039074, 35.990509, 34.847305>,  <27.258944, 35.932110, 34.770844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039074, 35.990509, 34.847305>,  <26.672623, 36.087841, 34.974743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039074, 35.990509, 34.847305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213115, 0.968729, -0.127067,
		0.339548, 0.048513, 0.939337,
		0.916127, -0.243332, -0.318592,
		27.313911, 35.917511, 34.751728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297096, 36.282684, 35.454647>,  <26.672623, 36.087841, 34.974743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297096, 36.282684, 35.454647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364996, 36.280144, 35.060459>,  <27.405735, 36.278618, 34.823948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364996, 36.280144, 35.060459>,  <27.297096, 36.282684, 35.454647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364996, 36.280144, 35.060459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237569, 0.970752, 0.034660,
		0.956424, -0.240000, 0.166292,
		0.169747, -0.006356, -0.985467,
		27.415920, 36.278236, 34.764820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034002, 36.448227, 35.418858>,  <27.297096, 36.282684, 35.454647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034002, 36.448227, 35.418858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832272, 36.550068, 35.088806>,  <27.711233, 36.611172, 34.890778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832272, 36.550068, 35.088806>,  <28.034002, 36.448227, 35.418858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832272, 36.550068, 35.088806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343491, 0.935843, 0.078819,
		0.792254, -0.243673, -0.559425,
		-0.504328, 0.254602, -0.825125,
		27.680973, 36.626450, 34.841270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475676, 36.817364, 35.066818>,  <28.034002, 36.448227, 35.418858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475676, 36.817364, 35.066818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115652, 36.911087, 34.919853>,  <27.899637, 36.967319, 34.831673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115652, 36.911087, 34.919853>,  <28.475676, 36.817364, 35.066818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115652, 36.911087, 34.919853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202424, 0.971462, 0.123635,
		0.385899, 0.036904, -0.921802,
		-0.900059, 0.234306, -0.367416,
		27.845634, 36.981380, 34.809628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597549, 37.416420, 34.729496>,  <28.475676, 36.817364, 35.066818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597549, 37.416420, 34.729496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200739, 37.418777, 34.779854>,  <27.962652, 37.420193, 34.810066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200739, 37.418777, 34.779854>,  <28.597549, 37.416420, 34.729496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200739, 37.418777, 34.779854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055571, 0.917006, 0.394984,
		-0.113117, 0.398830, -0.910021,
		-0.992026, 0.005891, 0.125892,
		27.903131, 37.420544, 34.817623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403584, 38.090717, 34.430420>,  <28.597549, 37.416420, 34.729496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403584, 38.090717, 34.430420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129089, 37.954781, 34.687664>,  <27.964394, 37.873219, 34.842010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129089, 37.954781, 34.687664>,  <28.403584, 38.090717, 34.430420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129089, 37.954781, 34.687664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047670, 0.861230, 0.505974,
		-0.725815, 0.377874, -0.574807,
		-0.686236, -0.339843, 0.643107,
		27.923218, 37.852829, 34.880596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806826, 38.628422, 34.600468>,  <28.403584, 38.090717, 34.430420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806826, 38.628422, 34.600468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837290, 38.384403, 34.915947>,  <27.855568, 38.237991, 35.105232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837290, 38.384403, 34.915947>,  <27.806826, 38.628422, 34.600468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837290, 38.384403, 34.915947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049874, 0.792333, 0.608047,
		-0.995848, -0.006973, 0.090769,
		0.076159, -0.610049, 0.788695,
		27.860138, 38.201389, 35.152554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212864, 38.728580, 35.005322>,  <27.806826, 38.628422, 34.600468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212864, 38.728580, 35.005322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522697, 38.599648, 35.222992>,  <27.708597, 38.522289, 35.353592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522697, 38.599648, 35.222992>,  <27.212864, 38.728580, 35.005322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522697, 38.599648, 35.222992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084100, 0.800259, 0.593728,
		-0.626856, -0.505657, 0.592758,
		0.774583, -0.322331, 0.544173,
		27.755072, 38.502949, 35.386246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063049, 38.738960, 35.752384>,  <27.212864, 38.728580, 35.005322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063049, 38.738960, 35.752384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453098, 38.807648, 35.696320>,  <27.687128, 38.848862, 35.662682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453098, 38.807648, 35.696320>,  <27.063049, 38.738960, 35.752384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453098, 38.807648, 35.696320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085692, 0.875210, 0.476093,
		0.204422, -0.452239, 0.868154,
		0.975125, 0.171718, -0.140159,
		27.745636, 38.859161, 35.654270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766861, 38.870846, 36.505611>,  <27.063049, 38.738960, 35.752384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766861, 38.870846, 36.505611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106985, 38.787811, 36.312168>,  <27.311060, 38.737991, 36.196102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106985, 38.787811, 36.312168>,  <26.766861, 38.870846, 36.505611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106985, 38.787811, 36.312168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431045, 0.801927, 0.413659,
		0.301950, -0.560197, 0.771366,
		0.850309, -0.207589, -0.483612,
		27.362078, 38.725536, 36.167084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254915, 38.699173, 37.022057>,  <26.766861, 38.870846, 36.505611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254915, 38.699173, 37.022057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452736, 38.854950, 36.711250>,  <27.571428, 38.948414, 36.524765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452736, 38.854950, 36.711250>,  <27.254915, 38.699173, 37.022057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452736, 38.854950, 36.711250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429579, 0.667647, 0.608037,
		0.755567, -0.634496, 0.162891,
		0.494551, 0.389438, -0.777018,
		27.601101, 38.971783, 36.478146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496601, 39.365211, 36.943542>,  <27.254915, 38.699173, 37.022057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496601, 39.365211, 36.943542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821230, 39.595016, 36.986046>,  <28.016006, 39.732899, 37.011547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821230, 39.595016, 36.986046>,  <27.496601, 39.365211, 36.943542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821230, 39.595016, 36.986046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427636, -0.460194, -0.778041,
		-0.398094, 0.676875, -0.619162,
		0.811572, 0.574510, 0.106255,
		28.064701, 39.767368, 37.017921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610853, 39.883736, 36.307606>,  <27.496601, 39.365211, 36.943542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610853, 39.883736, 36.307606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937000, 39.709328, 36.459957>,  <28.132689, 39.604683, 36.551369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937000, 39.709328, 36.459957>,  <27.610853, 39.883736, 36.307606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937000, 39.709328, 36.459957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000972, -0.656846, -0.754024,
		0.578943, 0.615177, -0.535147,
		0.815367, -0.436017, 0.380875,
		28.181610, 39.578522, 36.574219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136272, 39.706104, 35.722992>,  <27.610853, 39.883736, 36.307606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136272, 39.706104, 35.722992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118628, 39.467415, 36.043488>,  <28.108040, 39.324200, 36.235783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118628, 39.467415, 36.043488>,  <28.136272, 39.706104, 35.722992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118628, 39.467415, 36.043488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256310, -0.768410, -0.586388,
		0.965588, -0.231231, -0.119050,
		-0.044112, -0.596723, 0.801234,
		28.105394, 39.288399, 36.283859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513807, 39.104858, 35.670033>,  <28.136272, 39.706104, 35.722992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513807, 39.104858, 35.670033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234901, 38.996796, 35.935616>,  <28.067558, 38.931957, 36.094963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234901, 38.996796, 35.935616>,  <28.513807, 39.104858, 35.670033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234901, 38.996796, 35.935616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215445, -0.804450, -0.553574,
		0.683669, -0.529034, 0.502712,
		-0.697266, -0.270155, 0.663955,
		28.025721, 38.915749, 36.134804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546713, 38.403397, 35.728409>,  <28.513807, 39.104858, 35.670033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546713, 38.403397, 35.728409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183348, 38.526482, 35.841614>,  <27.965328, 38.600334, 35.909538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183348, 38.526482, 35.841614>,  <28.546713, 38.403397, 35.728409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183348, 38.526482, 35.841614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406952, -0.805952, -0.429920,
		0.095804, -0.505719, 0.857362,
		-0.908412, 0.307717, 0.283017,
		27.910824, 38.618797, 35.926517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360746, 37.869110, 36.139359>,  <28.546713, 38.403397, 35.728409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360746, 37.869110, 36.139359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066971, 38.060280, 35.946613>,  <27.890705, 38.174980, 35.830967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066971, 38.060280, 35.946613>,  <28.360746, 37.869110, 36.139359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066971, 38.060280, 35.946613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175881, -0.819778, -0.545004,
		-0.655488, -0.315522, 0.686135,
		-0.734439, 0.477921, -0.481861,
		27.846640, 38.203655, 35.802055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742516, 37.460133, 36.102200>,  <28.360746, 37.869110, 36.139359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742516, 37.460133, 36.102200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724251, 37.703766, 35.785484>,  <27.713291, 37.849945, 35.595455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724251, 37.703766, 35.785484>,  <27.742516, 37.460133, 36.102200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724251, 37.703766, 35.785484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256353, -0.773217, -0.580016,
		-0.965504, 0.176493, 0.191447,
		-0.045661, 0.609086, -0.791789,
		27.710552, 37.886490, 35.547947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050047, 37.420605, 35.712292>,  <27.742516, 37.460133, 36.102200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050047, 37.420605, 35.712292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329308, 37.535030, 35.449768>,  <27.496864, 37.603687, 35.292252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329308, 37.535030, 35.449768>,  <27.050047, 37.420605, 35.712292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329308, 37.535030, 35.449768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269922, -0.743889, -0.611369,
		-0.663117, 0.603982, -0.442132,
		0.698153, 0.286068, -0.656313,
		27.538754, 37.620850, 35.252872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642164, 37.476898, 35.141163>,  <27.050047, 37.420605, 35.712292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642164, 37.476898, 35.141163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026869, 37.436302, 35.039406>,  <27.257690, 37.411945, 34.978352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026869, 37.436302, 35.039406>,  <26.642164, 37.476898, 35.141163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026869, 37.436302, 35.039406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224271, -0.824990, -0.518743,
		-0.157225, 0.555960, -0.816204,
		0.961760, -0.101491, -0.254395,
		27.315397, 37.405853, 34.963089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580763, 37.307339, 34.491344>,  <26.642164, 37.476898, 35.141163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580763, 37.307339, 34.491344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956398, 37.216194, 34.594254>,  <27.181780, 37.161507, 34.655998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956398, 37.216194, 34.594254>,  <26.580763, 37.307339, 34.491344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956398, 37.216194, 34.594254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097892, -0.894938, -0.435319,
		0.329437, 0.383618, -0.862733,
		0.939089, -0.227865, 0.257273,
		27.238125, 37.147835, 34.671436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914341, 37.176201, 33.846081>,  <26.580763, 37.307339, 34.491344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914341, 37.176201, 33.846081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069548, 36.972210, 34.153160>,  <27.162672, 36.849815, 34.337410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069548, 36.972210, 34.153160>,  <26.914341, 37.176201, 33.846081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069548, 36.972210, 34.153160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018530, -0.837111, -0.546719,
		0.921465, 0.197911, -0.334265,
		0.388019, -0.509976, 0.767701,
		27.185953, 36.819218, 34.383472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662184, 36.869957, 33.633438>,  <26.914341, 37.176201, 33.846081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662184, 36.869957, 33.633438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939951, 37.125862, 33.765190>,  <28.106611, 37.279404, 33.844242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939951, 37.125862, 33.765190>,  <27.662184, 36.869957, 33.633438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939951, 37.125862, 33.765190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583216, -0.232288, -0.778397,
		-0.421480, 0.732629, -0.534425,
		0.694417, 0.639764, 0.329376,
		28.148275, 37.317791, 33.864002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889591, 37.306164, 33.003223>,  <27.662184, 36.869957, 33.633438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889591, 37.306164, 33.003223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200409, 37.320789, 33.254578>,  <28.386900, 37.329563, 33.405392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200409, 37.320789, 33.254578>,  <27.889591, 37.306164, 33.003223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200409, 37.320789, 33.254578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628806, -0.090118, -0.772322,
		0.028392, 0.995260, -0.093016,
		0.777044, 0.036561, 0.628384,
		28.433521, 37.331757, 33.443092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362528, 37.860825, 32.837551>,  <27.889591, 37.306164, 33.003223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362528, 37.860825, 32.837551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564754, 37.546032, 32.979004>,  <28.686090, 37.357155, 33.063877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564754, 37.546032, 32.979004>,  <28.362528, 37.860825, 32.837551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564754, 37.546032, 32.979004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610528, 0.036707, -0.791144,
		0.609638, 0.615878, 0.499034,
		0.505566, -0.786986, 0.353633,
		28.716425, 37.309937, 33.085094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109926, 37.822803, 32.940086>,  <28.362528, 37.860825, 32.837551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109926, 37.822803, 32.940086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988817, 37.460419, 32.821720>,  <28.916151, 37.242989, 32.750702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988817, 37.460419, 32.821720>,  <29.109926, 37.822803, 32.940086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988817, 37.460419, 32.821720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703911, -0.003251, -0.710281,
		0.642525, -0.423350, 0.638699,
		-0.302774, -0.905960, -0.295912,
		28.897985, 37.188629, 32.732948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676613, 37.444504, 33.049393>,  <29.109926, 37.822803, 32.940086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676613, 37.444504, 33.049393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474945, 37.323944, 32.725670>,  <29.353945, 37.251610, 32.531437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474945, 37.323944, 32.725670>,  <29.676613, 37.444504, 33.049393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474945, 37.323944, 32.725670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760492, 0.289112, -0.581434,
		0.409223, -0.908610, 0.083450,
		-0.504171, -0.301399, -0.809302,
		29.323694, 37.233524, 32.482880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028204, 36.934917, 32.688889>,  <29.676613, 37.444504, 33.049393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028204, 36.934917, 32.688889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792650, 37.188465, 32.488319>,  <29.651318, 37.340595, 32.367977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792650, 37.188465, 32.488319>,  <30.028204, 36.934917, 32.688889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792650, 37.188465, 32.488319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755259, 0.210711, -0.620633,
		-0.287746, -0.744184, -0.602821,
		-0.588886, 0.633870, -0.501420,
		29.615984, 37.378628, 32.337894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972258, 36.676441, 31.974503>,  <30.028204, 36.934917, 32.688889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972258, 36.676441, 31.974503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947866, 37.072651, 32.023739>,  <29.933231, 37.310375, 32.053280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947866, 37.072651, 32.023739>,  <29.972258, 36.676441, 31.974503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947866, 37.072651, 32.023739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839862, 0.117555, -0.529918,
		-0.539364, 0.071067, -0.839068,
		-0.060977, 0.990520, 0.123091,
		29.929573, 37.369808, 32.060665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970018, 37.141308, 31.325535>,  <29.972258, 36.676441, 31.974503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970018, 37.141308, 31.325535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168606, 37.303970, 31.632298>,  <30.287758, 37.401569, 31.816355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168606, 37.303970, 31.632298>,  <29.970018, 37.141308, 31.325535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168606, 37.303970, 31.632298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819597, 0.071453, -0.568467,
		-0.285971, 0.910781, -0.297823,
		0.496468, 0.406660, 0.766907,
		30.317547, 37.425968, 31.862370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684820, 37.197086, 31.137348>,  <29.970018, 37.141308, 31.325535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684820, 37.197086, 31.137348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777554, 37.299316, 31.512781>,  <30.833193, 37.360657, 31.738041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777554, 37.299316, 31.512781>,  <30.684820, 37.197086, 31.137348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777554, 37.299316, 31.512781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187454, 0.935045, -0.300917,
		-0.954523, 0.245703, 0.168866,
		0.231834, 0.255578, 0.938580,
		30.847103, 37.375988, 31.794355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280785, 37.812687, 31.169657>,  <30.684820, 37.197086, 31.137348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280785, 37.812687, 31.169657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575748, 37.819134, 31.439758>,  <30.752726, 37.823002, 31.601820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575748, 37.819134, 31.439758>,  <30.280785, 37.812687, 31.169657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575748, 37.819134, 31.439758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045952, 0.996202, -0.073964,
		-0.673884, 0.085571, 0.733865,
		0.737407, 0.016121, 0.675256,
		30.796970, 37.823971, 31.642336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070972, 38.255833, 31.704088>,  <30.280785, 37.812687, 31.169657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070972, 38.255833, 31.704088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468088, 38.243073, 31.657866>,  <30.706358, 38.235416, 31.630133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468088, 38.243073, 31.657866>,  <30.070972, 38.255833, 31.704088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468088, 38.243073, 31.657866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001982, 0.968179, -0.250252,
		0.119863, 0.248218, 0.961260,
		0.992788, -0.031901, -0.115557,
		30.765924, 38.233501, 31.623198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418606, 38.781456, 32.015724>,  <30.070972, 38.255833, 31.704088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418606, 38.781456, 32.015724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652452, 38.709183, 31.699350>,  <30.792761, 38.665821, 31.509525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652452, 38.709183, 31.699350>,  <30.418606, 38.781456, 32.015724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652452, 38.709183, 31.699350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234374, 0.970933, -0.048562,
		0.776719, -0.156984, 0.609970,
		0.584617, -0.180680, -0.790935,
		30.827837, 38.654980, 31.462070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866301, 39.468651, 31.882532>,  <30.418606, 38.781456, 32.015724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866301, 39.468651, 31.882532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101395, 39.182671, 31.731052>,  <31.242451, 39.011082, 31.640165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101395, 39.182671, 31.731052>,  <30.866301, 39.468651, 31.882532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101395, 39.182671, 31.731052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385073, 0.164458, -0.908115,
		0.711539, 0.679556, -0.178651,
		0.587734, -0.714952, -0.378697,
		31.277716, 38.968185, 31.617443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858883, 39.624817, 31.173584>,  <30.866301, 39.468651, 31.882532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858883, 39.624817, 31.173584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073208, 39.288269, 31.201878>,  <31.201803, 39.086342, 31.218855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073208, 39.288269, 31.201878>,  <30.858883, 39.624817, 31.173584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073208, 39.288269, 31.201878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154904, -0.180310, -0.971336,
		0.830006, 0.509497, -0.226944,
		0.535813, -0.841369, 0.070735,
		31.233952, 39.035858, 31.223099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506931, 39.645859, 30.701374>,  <30.858883, 39.624817, 31.173584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506931, 39.645859, 30.701374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361956, 39.280304, 30.774534>,  <31.274971, 39.060970, 30.818430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361956, 39.280304, 30.774534>,  <31.506931, 39.645859, 30.701374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361956, 39.280304, 30.774534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119844, -0.148918, -0.981560,
		0.924270, -0.377675, -0.055550,
		-0.362439, -0.913885, 0.182903,
		31.253223, 39.006138, 30.829405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957010, 39.108845, 30.299940>,  <31.506931, 39.645859, 30.701374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957010, 39.108845, 30.299940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575523, 39.016277, 30.376743>,  <31.346630, 38.960735, 30.422825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575523, 39.016277, 30.376743>,  <31.957010, 39.108845, 30.299940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575523, 39.016277, 30.376743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195554, -0.007738, -0.980662,
		0.228432, -0.972823, -0.037876,
		-0.953718, -0.231421, 0.192007,
		31.289408, 38.946850, 30.434345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712696, 38.382160, 29.932177>,  <31.957010, 39.108845, 30.299940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712696, 38.382160, 29.932177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454950, 38.684204, 29.980503>,  <31.300303, 38.865433, 30.009499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454950, 38.684204, 29.980503>,  <31.712696, 38.382160, 29.932177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454950, 38.684204, 29.980503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265607, -0.072842, -0.961326,
		-0.717109, -0.651535, 0.247500,
		-0.644366, 0.755113, 0.120817,
		31.261641, 38.910740, 30.016748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078913, 38.156570, 29.599131>,  <31.712696, 38.382160, 29.932177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078913, 38.156570, 29.599131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063206, 38.553989, 29.641687>,  <31.053782, 38.792442, 29.667221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063206, 38.553989, 29.641687>,  <31.078913, 38.156570, 29.599131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063206, 38.553989, 29.641687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418865, 0.080302, -0.904491,
		-0.907200, -0.080079, 0.413009,
		-0.039265, 0.993549, 0.106392,
		31.051426, 38.852055, 29.673605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318289, 38.341461, 29.465561>,  <31.078913, 38.156570, 29.599131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318289, 38.341461, 29.465561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564032, 38.651421, 29.406096>,  <30.711477, 38.837395, 29.370417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564032, 38.651421, 29.406096>,  <30.318289, 38.341461, 29.465561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564032, 38.651421, 29.406096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320818, 0.073188, -0.944309,
		-0.720860, 0.627838, 0.293564,
		0.614359, 0.774895, -0.148663,
		30.748339, 38.883888, 29.361496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888538, 38.934875, 29.076889>,  <30.318289, 38.341461, 29.465561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888538, 38.934875, 29.076889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276937, 38.998215, 29.005232>,  <30.509977, 39.036217, 28.962238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276937, 38.998215, 29.005232>,  <29.888538, 38.934875, 29.076889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276937, 38.998215, 29.005232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199803, 0.125872, -0.971717,
		-0.131320, 0.979327, 0.153860,
		0.970996, 0.158348, -0.179143,
		30.568237, 39.045719, 28.951488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883461, 39.475647, 28.557945>,  <29.888538, 38.934875, 29.076889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883461, 39.475647, 28.557945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259935, 39.340752, 28.549583>,  <30.485821, 39.259815, 28.544567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259935, 39.340752, 28.549583>,  <29.883461, 39.475647, 28.557945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259935, 39.340752, 28.549583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077515, 0.275720, -0.958107,
		0.328872, 0.900139, 0.285646,
		0.941188, -0.337237, -0.020902,
		30.542292, 39.239582, 28.543312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195425, 39.979130, 28.221117>,  <29.883461, 39.475647, 28.557945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195425, 39.979130, 28.221117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425323, 39.654819, 28.176735>,  <30.563263, 39.460232, 28.150106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425323, 39.654819, 28.176735>,  <30.195425, 39.979130, 28.221117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425323, 39.654819, 28.176735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008739, 0.141660, -0.989877,
		0.818286, 0.567957, 0.088504,
		0.574745, -0.810776, -0.110955,
		30.597748, 39.411587, 28.143448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802761, 40.196602, 27.824503>,  <30.195425, 39.979130, 28.221117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802761, 40.196602, 27.824503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732891, 39.806480, 27.770433>,  <30.690969, 39.572407, 27.737991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732891, 39.806480, 27.770433>,  <30.802761, 40.196602, 27.824503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732891, 39.806480, 27.770433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100171, 0.118969, -0.987832,
		0.979517, -0.186090, 0.076916,
		-0.174675, -0.975303, -0.135173,
		30.680489, 39.513889, 27.729881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201477, 40.021530, 27.290953>,  <30.802761, 40.196602, 27.824503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201477, 40.021530, 27.290953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963264, 39.700886, 27.311956>,  <30.820337, 39.508499, 27.324558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963264, 39.700886, 27.311956>,  <31.201477, 40.021530, 27.290953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963264, 39.700886, 27.311956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068499, -0.014457, -0.997546,
		0.800407, -0.597666, -0.046300,
		-0.595530, -0.801615, 0.052511,
		30.784605, 39.460400, 27.327709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480764, 39.593933, 26.837860>,  <31.201477, 40.021530, 27.290953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480764, 39.593933, 26.837860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115004, 39.444534, 26.900301>,  <30.895548, 39.354893, 26.937765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115004, 39.444534, 26.900301>,  <31.480764, 39.593933, 26.837860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115004, 39.444534, 26.900301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164356, -0.009869, -0.986352,
		0.369942, -0.927578, -0.052363,
		-0.914401, -0.373499, 0.156104,
		30.840683, 39.332485, 26.947132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454121, 39.147381, 26.322504>,  <31.480764, 39.593933, 26.837860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454121, 39.147381, 26.322504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076992, 39.216713, 26.436377>,  <30.850716, 39.258312, 26.504700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076992, 39.216713, 26.436377>,  <31.454121, 39.147381, 26.322504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076992, 39.216713, 26.436377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271581, 0.095613, -0.957654,
		-0.193213, -0.980211, -0.043072,
		-0.942822, 0.173334, 0.284680,
		30.794146, 39.268711, 26.521780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079065, 38.637581, 25.994745>,  <31.454121, 39.147381, 26.322504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079065, 38.637581, 25.994745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834551, 38.942410, 26.080139>,  <30.687841, 39.125305, 26.131376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834551, 38.942410, 26.080139>,  <31.079065, 38.637581, 25.994745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834551, 38.942410, 26.080139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211993, 0.102222, -0.971910,
		-0.762487, -0.639374, 0.099067,
		-0.611287, 0.762070, 0.213486,
		30.651165, 39.171032, 26.144184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524387, 38.511700, 25.613510>,  <31.079065, 38.637581, 25.994745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524387, 38.511700, 25.613510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469141, 38.900631, 25.688883>,  <30.435993, 39.133987, 25.734106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469141, 38.900631, 25.688883>,  <30.524387, 38.511700, 25.613510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469141, 38.900631, 25.688883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228443, 0.153852, -0.961324,
		-0.963710, -0.175820, 0.200872,
		-0.138116, 0.972326, 0.188434,
		30.427706, 39.192329, 25.745413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880028, 38.660309, 25.359022>,  <30.524387, 38.511700, 25.613510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880028, 38.660309, 25.359022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049015, 39.022213, 25.380672>,  <30.150408, 39.239357, 25.393663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049015, 39.022213, 25.380672>,  <29.880028, 38.660309, 25.359022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049015, 39.022213, 25.380672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305446, 0.198341, -0.931324,
		-0.853361, 0.376920, 0.360148,
		0.422466, 0.904761, 0.054128,
		30.175755, 39.293640, 25.396912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361099, 39.236629, 25.209040>,  <29.880028, 38.660309, 25.359022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361099, 39.236629, 25.209040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725109, 39.382656, 25.130468>,  <29.943516, 39.470272, 25.083324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725109, 39.382656, 25.130468>,  <29.361099, 39.236629, 25.209040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725109, 39.382656, 25.130468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315753, 0.303360, -0.899040,
		-0.268617, 0.880172, 0.391335,
		0.910025, 0.365062, -0.196429,
		29.998117, 39.492176, 25.071539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222363, 39.844681, 24.829031>,  <29.361099, 39.236629, 25.209040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222363, 39.844681, 24.829031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612549, 39.810833, 24.747738>,  <29.846661, 39.790524, 24.698963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612549, 39.810833, 24.747738>,  <29.222363, 39.844681, 24.829031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612549, 39.810833, 24.747738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142761, 0.459594, -0.876580,
		0.167578, 0.884089, 0.436239,
		0.975468, -0.084618, -0.203231,
		29.905190, 39.785446, 24.686769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525606, 40.499191, 24.638912>,  <29.222363, 39.844681, 24.829031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525606, 40.499191, 24.638912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726162, 40.218056, 24.437069>,  <29.846495, 40.049374, 24.315964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726162, 40.218056, 24.437069>,  <29.525606, 40.499191, 24.638912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726162, 40.218056, 24.437069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157424, 0.499371, -0.851966,
		0.850780, 0.506603, 0.139736,
		0.501389, -0.702839, -0.504606,
		29.876579, 40.007206, 24.285686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080431, 40.826721, 24.279753>,  <29.525606, 40.499191, 24.638912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080431, 40.826721, 24.279753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978689, 40.499538, 24.073353>,  <29.917645, 40.303230, 23.949512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978689, 40.499538, 24.073353>,  <30.080431, 40.826721, 24.279753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978689, 40.499538, 24.073353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029245, 0.539809, -0.841279,
		0.966668, -0.198894, -0.161224,
		-0.254356, -0.817953, -0.515999,
		29.902382, 40.254154, 23.918552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289761, 41.006454, 23.666929>,  <30.080431, 40.826721, 24.279753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289761, 41.006454, 23.666929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033472, 40.706715, 23.600056>,  <29.879700, 40.526871, 23.559931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033472, 40.706715, 23.600056>,  <30.289761, 41.006454, 23.666929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033472, 40.706715, 23.600056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111201, 0.306028, -0.945506,
		0.759680, -0.587212, -0.279407,
		-0.640719, -0.749352, -0.167185,
		29.841257, 40.481911, 23.549900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354805, 40.624210, 22.949465>,  <30.289761, 41.006454, 23.666929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354805, 40.624210, 22.949465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984768, 40.504250, 23.042643>,  <29.762747, 40.432274, 23.098549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984768, 40.504250, 23.042643>,  <30.354805, 40.624210, 22.949465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984768, 40.504250, 23.042643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285643, 0.145350, -0.947249,
		0.250230, -0.942830, -0.220129,
		-0.925091, -0.299908, 0.232942,
		29.707241, 40.414276, 23.112526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104315, 40.216888, 22.358660>,  <30.354805, 40.624210, 22.949465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104315, 40.216888, 22.358660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774969, 40.314980, 22.563377>,  <29.577362, 40.373833, 22.686209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774969, 40.314980, 22.563377>,  <30.104315, 40.216888, 22.358660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774969, 40.314980, 22.563377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497800, 0.120975, -0.858813,
		-0.272517, -0.961889, 0.022466,
		-0.823365, 0.245225, 0.511796,
		29.527960, 40.388546, 22.716915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605133, 39.762531, 22.068497>,  <30.104315, 40.216888, 22.358660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605133, 39.762531, 22.068497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410959, 40.064358, 22.245125>,  <29.294455, 40.245453, 22.351103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410959, 40.064358, 22.245125>,  <29.605133, 39.762531, 22.068497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410959, 40.064358, 22.245125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599821, 0.080010, -0.796124,
		-0.636057, -0.651329, 0.413765,
		-0.485433, 0.754565, 0.441572,
		29.265329, 40.290726, 22.377596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951149, 39.733223, 21.818977>,  <29.605133, 39.762531, 22.068497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951149, 39.733223, 21.818977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978868, 40.109188, 21.952696>,  <28.995501, 40.334766, 22.032927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978868, 40.109188, 21.952696>,  <28.951149, 39.733223, 21.818977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978868, 40.109188, 21.952696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473645, 0.325922, -0.818190,
		-0.877985, -0.101637, 0.467773,
		0.069299, 0.939917, 0.334295,
		28.999659, 40.391163, 22.052984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330124, 39.954422, 21.714687>,  <28.951149, 39.733223, 21.818977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330124, 39.954422, 21.714687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518574, 40.306824, 21.731987>,  <28.631643, 40.518265, 21.742367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518574, 40.306824, 21.731987>,  <28.330124, 39.954422, 21.714687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518574, 40.306824, 21.731987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483621, 0.299003, -0.822623,
		-0.737668, 0.366640, 0.566940,
		0.471123, 0.881006, 0.043250,
		28.659910, 40.571125, 21.744963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817600, 40.466679, 21.654207>,  <28.330124, 39.954422, 21.714687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817600, 40.466679, 21.654207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147112, 40.675034, 21.564707>,  <28.344818, 40.800045, 21.511007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147112, 40.675034, 21.564707>,  <27.817600, 40.466679, 21.654207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147112, 40.675034, 21.564707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504011, 0.492226, -0.709709,
		-0.259543, 0.697416, 0.668019,
		0.823779, 0.520888, -0.223751,
		28.394245, 40.831299, 21.497581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612724, 41.216061, 21.597767>,  <27.817600, 40.466679, 21.654207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612724, 41.216061, 21.597767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956017, 41.156719, 21.401224>,  <28.161991, 41.121113, 21.283298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956017, 41.156719, 21.401224>,  <27.612724, 41.216061, 21.597767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956017, 41.156719, 21.401224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341785, 0.549001, -0.762745,
		0.382913, 0.822549, 0.420464,
		0.858231, -0.148357, -0.491355,
		28.213486, 41.112213, 21.253817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657444, 41.818127, 21.302925>,  <27.612724, 41.216061, 21.597767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657444, 41.818127, 21.302925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921436, 41.591892, 21.105122>,  <28.079832, 41.456154, 20.986439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921436, 41.591892, 21.105122>,  <27.657444, 41.818127, 21.302925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921436, 41.591892, 21.105122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193759, 0.507815, -0.839393,
		0.725867, 0.649799, 0.225562,
		0.659981, -0.565583, -0.494511,
		28.119431, 41.422218, 20.956768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912283, 42.303097, 20.908442>,  <27.657444, 41.818127, 21.302925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912283, 42.303097, 20.908442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991261, 41.952007, 20.733803>,  <28.038647, 41.741352, 20.629021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991261, 41.952007, 20.733803>,  <27.912283, 42.303097, 20.908442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991261, 41.952007, 20.733803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047242, 0.436327, -0.898547,
		0.979175, 0.198039, 0.044685,
		0.197444, -0.877724, -0.436596,
		28.050493, 41.688690, 20.602823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549377, 42.313049, 20.414963>,  <27.912283, 42.303097, 20.908442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549377, 42.313049, 20.414963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330471, 42.006767, 20.279789>,  <28.199127, 41.822998, 20.198685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330471, 42.006767, 20.279789>,  <28.549377, 42.313049, 20.414963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330471, 42.006767, 20.279789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038130, 0.380535, -0.923980,
		0.836089, -0.518549, -0.179059,
		-0.547267, -0.765702, -0.337934,
		28.166290, 41.777058, 20.178410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878212, 41.991806, 19.815500>,  <28.549377, 42.313049, 20.414963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878212, 41.991806, 19.815500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495251, 41.877892, 19.796423>,  <28.265474, 41.809544, 19.784977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495251, 41.877892, 19.796423>,  <28.878212, 41.991806, 19.815500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495251, 41.877892, 19.796423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079572, 0.418982, -0.904501,
		0.277572, -0.862178, -0.423796,
		-0.957404, -0.284787, -0.047693,
		28.208029, 41.792454, 19.782114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799524, 41.806427, 19.120735>,  <28.878212, 41.991806, 19.815500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799524, 41.806427, 19.120735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424723, 41.844147, 19.255278>,  <28.199842, 41.866779, 19.336002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424723, 41.844147, 19.255278>,  <28.799524, 41.806427, 19.120735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424723, 41.844147, 19.255278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296830, 0.292716, -0.908960,
		-0.184170, -0.951538, -0.246285,
		-0.937002, 0.094299, 0.336355,
		28.143621, 41.872437, 19.356184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348587, 41.359379, 18.599667>,  <28.799524, 41.806427, 19.120735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348587, 41.359379, 18.599667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125172, 41.636559, 18.782032>,  <27.991121, 41.802864, 18.891451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125172, 41.636559, 18.782032>,  <28.348587, 41.359379, 18.599667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125172, 41.636559, 18.782032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371869, 0.282122, -0.884376,
		-0.741449, -0.663499, 0.100110,
		-0.558540, 0.692948, 0.455914,
		27.957609, 41.844444, 18.918806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705523, 41.382931, 18.236164>,  <28.348587, 41.359379, 18.599667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705523, 41.382931, 18.236164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704426, 41.728512, 18.437592>,  <27.703768, 41.935860, 18.558449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704426, 41.728512, 18.437592>,  <27.705523, 41.382931, 18.236164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704426, 41.728512, 18.437592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270447, 0.484166, -0.832131,
		-0.962731, -0.138471, 0.232325,
		-0.002742, 0.863950, 0.503570,
		27.703604, 41.987698, 18.588663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156750, 41.702824, 18.066097>,  <27.705523, 41.382931, 18.236164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156750, 41.702824, 18.066097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405863, 41.988770, 18.193291>,  <27.555330, 42.160336, 18.269608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405863, 41.988770, 18.193291>,  <27.156750, 41.702824, 18.066097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405863, 41.988770, 18.193291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208900, 0.543599, -0.812933,
		-0.753992, 0.439853, 0.487879,
		0.622781, 0.714863, 0.317984,
		27.592697, 42.203228, 18.288687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935539, 42.189732, 17.742048>,  <27.156750, 41.702824, 18.066097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935539, 42.189732, 17.742048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277967, 42.371635, 17.840300>,  <27.483425, 42.480778, 17.899250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277967, 42.371635, 17.840300>,  <26.935539, 42.189732, 17.742048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277967, 42.371635, 17.840300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085237, 0.344508, -0.934906,
		-0.509781, 0.821282, 0.256161,
		0.856071, 0.454763, 0.245628,
		27.534788, 42.508064, 17.913988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838329, 42.911026, 17.672699>,  <26.935539, 42.189732, 17.742048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838329, 42.911026, 17.672699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226507, 42.831776, 17.617590>,  <27.459414, 42.784225, 17.584524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226507, 42.831776, 17.617590>,  <26.838329, 42.911026, 17.672699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226507, 42.831776, 17.617590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040439, 0.429329, -0.902242,
		0.237903, 0.881149, 0.408629,
		0.970447, -0.198122, -0.137772,
		27.517641, 42.772339, 17.576258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889059, 43.200775, 17.103010>,  <26.838329, 42.911026, 17.672699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889059, 43.200775, 17.103010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254490, 43.038956, 17.119595>,  <27.473749, 42.941864, 17.129545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254490, 43.038956, 17.119595>,  <26.889059, 43.200775, 17.103010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254490, 43.038956, 17.119595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204956, 0.369978, -0.906151,
		0.351239, 0.836337, 0.420918,
		0.913578, -0.404545, 0.041462,
		27.528563, 42.917591, 17.132032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424582, 43.704670, 17.045050>,  <26.889059, 43.200775, 17.103010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424582, 43.704670, 17.045050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563555, 43.360298, 16.896410>,  <27.646938, 43.153675, 16.807226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563555, 43.360298, 16.896410>,  <27.424582, 43.704670, 17.045050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563555, 43.360298, 16.896410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300815, 0.477671, -0.825433,
		0.888145, 0.174999, 0.424939,
		0.347432, -0.860933, -0.371599,
		27.667784, 43.102016, 16.784931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113594, 43.921715, 16.767406>,  <27.424582, 43.704670, 17.045050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113594, 43.921715, 16.767406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020628, 43.583427, 16.575266>,  <27.964848, 43.380455, 16.459982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020628, 43.583427, 16.575266>,  <28.113594, 43.921715, 16.767406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020628, 43.583427, 16.575266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303148, 0.406286, -0.861993,
		0.924166, -0.345960, 0.161951,
		-0.232417, -0.845721, -0.480353,
		27.950903, 43.329712, 16.431160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641928, 43.779270, 16.281815>,  <28.113594, 43.921715, 16.767406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641928, 43.779270, 16.281815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342571, 43.555721, 16.138945>,  <28.162956, 43.421593, 16.053223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342571, 43.555721, 16.138945>,  <28.641928, 43.779270, 16.281815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342571, 43.555721, 16.138945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244375, 0.268286, -0.931828,
		0.616595, -0.784658, -0.064209,
		-0.748392, -0.558870, -0.357174,
		28.118053, 43.388062, 16.031792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897686, 43.522778, 15.686046>,  <28.641928, 43.779270, 16.281815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897686, 43.522778, 15.686046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500328, 43.494587, 15.649827>,  <28.261913, 43.477673, 15.628096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500328, 43.494587, 15.649827>,  <28.897686, 43.522778, 15.686046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500328, 43.494587, 15.649827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058878, 0.364209, -0.929454,
		0.098486, -0.928647, -0.357653,
		-0.993395, -0.070480, -0.090547,
		28.202309, 43.473442, 15.622663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841301, 43.360641, 15.004942>,  <28.897686, 43.522778, 15.686046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841301, 43.360641, 15.004942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475142, 43.481335, 15.111526>,  <28.255445, 43.553749, 15.175477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475142, 43.481335, 15.111526>,  <28.841301, 43.360641, 15.004942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475142, 43.481335, 15.111526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150396, 0.357650, -0.921666,
		-0.373397, -0.883766, -0.282013,
		-0.915399, 0.301734, 0.266461,
		28.200521, 43.571854, 15.191464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396961, 43.311806, 14.429971>,  <28.841301, 43.360641, 15.004942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396961, 43.311806, 14.429971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171207, 43.579399, 14.623438>,  <28.035755, 43.739956, 14.739518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171207, 43.579399, 14.623438>,  <28.396961, 43.311806, 14.429971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171207, 43.579399, 14.623438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092544, 0.530933, -0.842346,
		-0.820308, -0.520168, -0.237740,
		-0.564385, 0.668981, 0.483667,
		28.001892, 43.780094, 14.768538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942350, 43.452301, 13.858520>,  <28.396961, 43.311806, 14.429971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942350, 43.452301, 13.858520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910965, 43.711586, 14.161481>,  <27.892134, 43.867157, 14.343258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910965, 43.711586, 14.161481>,  <27.942350, 43.452301, 13.858520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910965, 43.711586, 14.161481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431222, 0.662924, -0.612029,
		-0.898827, -0.374632, 0.227508,
		-0.078465, 0.648215, 0.757404,
		27.887424, 43.906052, 14.388702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313875, 43.718868, 13.762384>,  <27.942350, 43.452301, 13.858520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313875, 43.718868, 13.762384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498688, 44.001308, 13.977026>,  <27.609575, 44.170773, 14.105811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498688, 44.001308, 13.977026>,  <27.313875, 43.718868, 13.762384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498688, 44.001308, 13.977026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368889, 0.703243, -0.607758,
		-0.806504, 0.082855, 0.585394,
		0.462031, 0.706104, 0.536604,
		27.637297, 44.213139, 14.138007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755232, 44.186970, 13.838682>,  <27.313875, 43.718868, 13.762384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755232, 44.186970, 13.838682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110176, 44.358414, 13.906665>,  <27.323143, 44.461281, 13.947454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110176, 44.358414, 13.906665>,  <26.755232, 44.186970, 13.838682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110176, 44.358414, 13.906665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324245, 0.842151, -0.430868,
		-0.327802, 0.327228, 0.886266,
		0.887362, 0.428607, 0.169956,
		27.376385, 44.486996, 13.957652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545328, 44.851128, 14.090710>,  <26.755232, 44.186970, 13.838682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545328, 44.851128, 14.090710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916687, 44.848354, 13.942099>,  <27.139502, 44.846691, 13.852932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916687, 44.848354, 13.942099>,  <26.545328, 44.851128, 14.090710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916687, 44.848354, 13.942099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150018, 0.907732, -0.391814,
		0.339964, 0.419494, 0.841694,
		0.928396, -0.006933, -0.371528,
		27.195206, 44.846275, 13.830640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875347, 45.548141, 14.238813>,  <26.545328, 44.851128, 14.090710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875347, 45.548141, 14.238813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064316, 45.385315, 13.926118>,  <27.177696, 45.287621, 13.738501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064316, 45.385315, 13.926118>,  <26.875347, 45.548141, 14.238813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064316, 45.385315, 13.926118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092200, 0.904915, -0.415486,
		0.876537, 0.124208, 0.465032,
		0.472421, -0.407065, -0.781739,
		27.206041, 45.263195, 13.691596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537533, 45.959114, 14.067684>,  <26.875347, 45.548141, 14.238813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537533, 45.959114, 14.067684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332773, 45.791454, 13.767745>,  <27.209917, 45.690857, 13.587782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332773, 45.791454, 13.767745>,  <27.537533, 45.959114, 14.067684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332773, 45.791454, 13.767745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163256, 0.809511, -0.563950,
		0.843389, -0.411103, -0.345961,
		-0.511901, -0.419148, -0.749848,
		27.179203, 45.665710, 13.542790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211267, 46.547421, 13.906046>,  <27.537533, 45.959114, 14.067684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211267, 46.547421, 13.906046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855303, 46.635166, 14.066013>,  <26.641724, 46.687813, 14.161994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855303, 46.635166, 14.066013>,  <27.211267, 46.547421, 13.906046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855303, 46.635166, 14.066013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130936, -0.717002, 0.684663,
		0.436935, 0.661654, 0.609345,
		-0.889912, 0.219369, 0.399918,
		26.588329, 46.700977, 14.185988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258539, 47.011524, 14.418828>,  <27.211267, 46.547421, 13.906046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258539, 47.011524, 14.418828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485737, 47.329174, 14.332336>,  <27.622055, 47.519764, 14.280441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485737, 47.329174, 14.332336>,  <27.258539, 47.011524, 14.418828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485737, 47.329174, 14.332336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691043, -0.317450, 0.649373,
		0.447040, -0.518263, -0.729081,
		0.567993, 0.794122, -0.216229,
		27.656136, 47.567410, 14.267467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893383, 46.739731, 14.281332>,  <27.258539, 47.011524, 14.418828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893383, 46.739731, 14.281332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889263, 47.114399, 14.421357>,  <27.886791, 47.339199, 14.505372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889263, 47.114399, 14.421357>,  <27.893383, 46.739731, 14.281332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889263, 47.114399, 14.421357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691067, -0.246354, 0.679512,
		0.722717, 0.248917, -0.644764,
		-0.010302, 0.936670, 0.350062,
		27.886173, 47.395401, 14.526376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567247, 46.903702, 14.274988>,  <27.893383, 46.739731, 14.281332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567247, 46.903702, 14.274988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373085, 47.110275, 14.557173>,  <28.256588, 47.234219, 14.726483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373085, 47.110275, 14.557173>,  <28.567247, 46.903702, 14.274988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373085, 47.110275, 14.557173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718957, -0.223348, 0.658192,
		0.497478, 0.826686, -0.262882,
		-0.485404, 0.516437, 0.705462,
		28.227465, 47.265205, 14.768811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044823, 47.298138, 14.575561>,  <28.567247, 46.903702, 14.274988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044823, 47.298138, 14.575561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757101, 47.214447, 14.840537>,  <28.584469, 47.164234, 14.999523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757101, 47.214447, 14.840537>,  <29.044823, 47.298138, 14.575561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757101, 47.214447, 14.840537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691440, -0.307832, 0.653567,
		0.067180, 0.928152, 0.366089,
		-0.719303, -0.209222, 0.662441,
		28.541309, 47.151680, 15.039269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632942, 46.763908, 14.687428>,  <29.044823, 47.298138, 14.575561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632942, 46.763908, 14.687428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713657, 47.006210, 14.995283>,  <29.762087, 47.151592, 15.179996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713657, 47.006210, 14.995283>,  <29.632942, 46.763908, 14.687428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713657, 47.006210, 14.995283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444842, -0.756761, 0.478986,
		0.872580, 0.245714, -0.422171,
		0.201789, 0.605753, 0.769639,
		29.774195, 47.187935, 15.226175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233498, 46.874332, 15.253695>,  <29.632942, 46.763908, 14.687428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233498, 46.874332, 15.253695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111013, 46.493591, 15.259516>,  <29.037523, 46.265148, 15.263008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111013, 46.493591, 15.259516>,  <29.233498, 46.874332, 15.253695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111013, 46.493591, 15.259516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002489, 0.014485, 0.999892,
		-0.951960, 0.306215, -0.002066,
		-0.306212, -0.951852, 0.014551,
		29.019150, 46.208035, 15.263881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672934, 46.771740, 15.778216>,  <29.233498, 46.874332, 15.253695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672934, 46.771740, 15.778216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859482, 46.428375, 15.692780>,  <28.971411, 46.222355, 15.641519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859482, 46.428375, 15.692780>,  <28.672934, 46.771740, 15.778216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859482, 46.428375, 15.692780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002436, -0.240209, 0.970718,
		-0.884586, -0.453234, -0.109936,
		0.466370, -0.858416, -0.213590,
		28.999393, 46.170849, 15.628703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361423, 46.333496, 16.178585>,  <28.672934, 46.771740, 15.778216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361423, 46.333496, 16.178585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682026, 46.105793, 16.105343>,  <28.874388, 45.969170, 16.061398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682026, 46.105793, 16.105343>,  <28.361423, 46.333496, 16.178585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682026, 46.105793, 16.105343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037743, -0.353753, 0.934577,
		-0.596794, -0.742158, -0.305021,
		0.801507, -0.569263, -0.183106,
		28.922478, 45.935013, 16.050411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242397, 45.716393, 16.466599>,  <28.361423, 46.333496, 16.178585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242397, 45.716393, 16.466599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641415, 45.711967, 16.438917>,  <28.880825, 45.709312, 16.422308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641415, 45.711967, 16.438917>,  <28.242397, 45.716393, 16.466599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641415, 45.711967, 16.438917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056924, -0.448124, 0.892157,
		-0.040877, -0.893903, -0.446393,
		0.997541, -0.011059, -0.069202,
		28.940678, 45.708649, 16.418156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469196, 45.010273, 16.674080>,  <28.242397, 45.716393, 16.466599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469196, 45.010273, 16.674080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784472, 45.250580, 16.727516>,  <28.973637, 45.394764, 16.759579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784472, 45.250580, 16.727516>,  <28.469196, 45.010273, 16.674080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784472, 45.250580, 16.727516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236486, -0.496047, 0.835471,
		0.568187, -0.626914, -0.533049,
		0.788186, 0.600763, 0.133591,
		29.020927, 45.430809, 16.767593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077456, 44.608345, 16.776083>,  <28.469196, 45.010273, 16.674080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077456, 44.608345, 16.776083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184662, 44.959087, 16.935724>,  <29.248985, 45.169533, 17.031509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184662, 44.959087, 16.935724>,  <29.077456, 44.608345, 16.776083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184662, 44.959087, 16.935724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306873, -0.470383, 0.827386,
		0.913234, -0.099278, -0.395154,
		0.268015, 0.876860, 0.399104,
		29.265066, 45.222145, 17.055456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644484, 44.421211, 17.103144>,  <29.077456, 44.608345, 16.776083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644484, 44.421211, 17.103144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573200, 44.782494, 17.259327>,  <29.530430, 44.999264, 17.353037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573200, 44.782494, 17.259327>,  <29.644484, 44.421211, 17.103144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573200, 44.782494, 17.259327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280264, -0.333785, 0.900022,
		0.943236, 0.269822, -0.193654,
		-0.178207, 0.903208, 0.390459,
		29.519737, 45.053455, 17.376465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183636, 44.468689, 17.468683>,  <29.644484, 44.421211, 17.103144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183636, 44.468689, 17.468683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928694, 44.739529, 17.615824>,  <29.775728, 44.902031, 17.704107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928694, 44.739529, 17.615824>,  <30.183636, 44.468689, 17.468683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928694, 44.739529, 17.615824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235324, -0.283538, 0.929639,
		0.733758, 0.679074, 0.021376,
		-0.637355, 0.677100, 0.367851,
		29.737488, 44.942657, 17.726179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545212, 44.897163, 18.003326>,  <30.183636, 44.468689, 17.468683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545212, 44.897163, 18.003326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153158, 44.903099, 18.082438>,  <29.917927, 44.906658, 18.129904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153158, 44.903099, 18.082438>,  <30.545212, 44.897163, 18.003326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153158, 44.903099, 18.082438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190534, -0.206456, 0.959725,
		0.055072, 0.978343, 0.199528,
		-0.980134, 0.014837, 0.197778,
		29.859118, 44.907551, 18.141771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507730, 45.391582, 18.532497>,  <30.545212, 44.897163, 18.003326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507730, 45.391582, 18.532497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177488, 45.168011, 18.563419>,  <29.979343, 45.033867, 18.581972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177488, 45.168011, 18.563419>,  <30.507730, 45.391582, 18.532497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177488, 45.168011, 18.563419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252463, -0.243395, 0.936494,
		-0.504617, 0.792691, 0.342057,
		-0.825605, -0.558927, 0.077303,
		29.929808, 45.000332, 18.586611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072109, 45.681873, 19.116442>,  <30.507730, 45.391582, 18.532497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072109, 45.681873, 19.116442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977911, 45.298771, 19.050417>,  <29.921392, 45.068909, 19.010801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977911, 45.298771, 19.050417>,  <30.072109, 45.681873, 19.116442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977911, 45.298771, 19.050417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234949, -0.220905, 0.946573,
		-0.943049, 0.184132, 0.277046,
		-0.235495, -0.957756, -0.165063,
		29.907263, 45.011444, 19.000898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714350, 45.541393, 19.770737>,  <30.072109, 45.681873, 19.116442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714350, 45.541393, 19.770737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743389, 45.183910, 19.593645>,  <29.760813, 44.969421, 19.487391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743389, 45.183910, 19.593645>,  <29.714350, 45.541393, 19.770737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743389, 45.183910, 19.593645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033206, -0.445821, 0.894506,
		-0.996809, -0.050236, -0.062042,
		0.072596, -0.893711, -0.442730,
		29.765167, 44.915798, 19.460827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185354, 45.021465, 20.069473>,  <29.714350, 45.541393, 19.770737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185354, 45.021465, 20.069473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498178, 44.819008, 19.924036>,  <29.685873, 44.697533, 19.836773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498178, 44.819008, 19.924036>,  <29.185354, 45.021465, 20.069473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498178, 44.819008, 19.924036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170509, -0.387384, 0.906014,
		-0.599423, -0.770553, -0.216656,
		0.782060, -0.506144, -0.363593,
		29.732798, 44.667164, 19.814959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081766, 44.236748, 20.150002>,  <29.185354, 45.021465, 20.069473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081766, 44.236748, 20.150002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472733, 44.321220, 20.146923>,  <29.707314, 44.371902, 20.145077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472733, 44.321220, 20.146923>,  <29.081766, 44.236748, 20.150002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472733, 44.321220, 20.146923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090120, -0.383620, 0.919083,
		0.191140, -0.899021, -0.393988,
		0.977417, 0.211179, -0.007695,
		29.765957, 44.384575, 20.144615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376040, 43.571953, 20.231539>,  <29.081766, 44.236748, 20.150002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376040, 43.571953, 20.231539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683798, 43.808399, 20.328375>,  <29.868452, 43.950268, 20.386477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683798, 43.808399, 20.328375>,  <29.376040, 43.571953, 20.231539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683798, 43.808399, 20.328375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262600, -0.638189, 0.723710,
		0.582299, -0.493246, -0.646248,
		0.769395, 0.591120, 0.242090,
		29.914616, 43.985737, 20.401001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893021, 43.146839, 20.266211>,  <29.376040, 43.571953, 20.231539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893021, 43.146839, 20.266211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982674, 43.461655, 20.496109>,  <30.036465, 43.650543, 20.634048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982674, 43.461655, 20.496109>,  <29.893021, 43.146839, 20.266211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982674, 43.461655, 20.496109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143442, -0.609969, 0.779335,
		0.963944, -0.092232, -0.249608,
		0.224133, 0.787040, 0.574746,
		30.049913, 43.697765, 20.668533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306084, 42.790127, 20.744474>,  <29.893021, 43.146839, 20.266211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306084, 42.790127, 20.744474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273666, 43.153763, 20.907932>,  <30.254215, 43.371944, 21.006006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273666, 43.153763, 20.907932>,  <30.306084, 42.790127, 20.744474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273666, 43.153763, 20.907932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177735, -0.390240, 0.903395,
		0.980735, 0.145845, -0.129951,
		-0.081043, 0.909089, 0.408644,
		30.249353, 43.426491, 21.030525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824690, 42.819553, 21.236277>,  <30.306084, 42.790127, 20.744474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824690, 42.819553, 21.236277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599224, 43.125217, 21.361712>,  <30.463945, 43.308617, 21.436972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599224, 43.125217, 21.361712>,  <30.824690, 42.819553, 21.236277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599224, 43.125217, 21.361712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031099, -0.359742, 0.932534,
		0.825418, 0.535388, 0.179009,
		-0.563664, 0.764163, 0.313587,
		30.430124, 43.354465, 21.455788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240963, 43.219826, 21.777020>,  <30.824690, 42.819553, 21.236277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240963, 43.219826, 21.777020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847712, 43.259949, 21.838200>,  <30.611761, 43.284023, 21.874908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847712, 43.259949, 21.838200>,  <31.240963, 43.219826, 21.777020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847712, 43.259949, 21.838200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109938, -0.344253, 0.932418,
		0.146181, 0.933503, 0.327418,
		-0.983130, 0.100307, 0.152950,
		30.552773, 43.290039, 21.884085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150988, 43.518211, 22.465839>,  <31.240963, 43.219826, 21.777020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150988, 43.518211, 22.465839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764711, 43.426819, 22.416460>,  <30.532946, 43.371983, 22.386831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764711, 43.426819, 22.416460>,  <31.150988, 43.518211, 22.465839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764711, 43.426819, 22.416460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055088, -0.284322, 0.957145,
		-0.253785, 0.931107, 0.261980,
		-0.965691, -0.228477, -0.123449,
		30.475004, 43.358276, 22.379425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765860, 43.885292, 22.941250>,  <31.150988, 43.518211, 22.465839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765860, 43.885292, 22.941250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531282, 43.575100, 22.847683>,  <30.390535, 43.388985, 22.791544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531282, 43.575100, 22.847683>,  <30.765860, 43.885292, 22.941250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531282, 43.575100, 22.847683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188946, -0.149851, 0.970487,
		-0.787644, 0.613334, -0.058644,
		-0.586445, -0.775478, -0.233916,
		30.355349, 43.342457, 22.777508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118673, 43.951424, 23.283461>,  <30.765860, 43.885292, 22.941250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118673, 43.951424, 23.283461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113390, 43.557808, 23.212486>,  <30.110220, 43.321636, 23.169901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113390, 43.557808, 23.212486>,  <30.118673, 43.951424, 23.283461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113390, 43.557808, 23.212486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259150, -0.168021, 0.951110,
		-0.965747, 0.058548, -0.252795,
		-0.013211, -0.984043, -0.177438,
		30.109426, 43.262596, 23.159254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723223, 43.690239, 23.834049>,  <30.118673, 43.951424, 23.283461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723223, 43.690239, 23.834049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895870, 43.358707, 23.691643>,  <29.999458, 43.159790, 23.606199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895870, 43.358707, 23.691643>,  <29.723223, 43.690239, 23.834049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895870, 43.358707, 23.691643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000088, -0.394633, 0.918839,
		-0.902057, -0.396618, -0.170258,
		0.431617, -0.828830, -0.356016,
		30.025356, 43.110058, 23.584837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372959, 43.098522, 24.077648>,  <29.723223, 43.690239, 23.834049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372959, 43.098522, 24.077648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726915, 42.950748, 23.964169>,  <29.939289, 42.862083, 23.896080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726915, 42.950748, 23.964169>,  <29.372959, 43.098522, 24.077648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726915, 42.950748, 23.964169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044520, -0.539196, 0.841003,
		-0.463661, -0.756828, -0.460684,
		0.884893, -0.369430, -0.283698,
		29.992384, 42.839920, 23.879059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239655, 42.511242, 24.255577>,  <29.372959, 43.098522, 24.077648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239655, 42.511242, 24.255577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636957, 42.522877, 24.210684>,  <29.875340, 42.529858, 24.183748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636957, 42.522877, 24.210684>,  <29.239655, 42.511242, 24.255577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636957, 42.522877, 24.210684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113179, -0.453310, 0.884138,
		-0.025159, -0.890878, -0.453545,
		0.993256, 0.029087, -0.112234,
		29.934935, 42.531605, 24.177013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496706, 41.903584, 24.468796>,  <29.239655, 42.511242, 24.255577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496706, 41.903584, 24.468796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792614, 42.167080, 24.523640>,  <29.970158, 42.325180, 24.556547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792614, 42.167080, 24.523640>,  <29.496706, 41.903584, 24.468796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792614, 42.167080, 24.523640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143042, -0.353082, 0.924593,
		0.657481, -0.664372, -0.355427,
		0.739769, 0.658743, 0.137111,
		30.014545, 42.364704, 24.564774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954838, 41.529186, 24.784140>,  <29.496706, 41.903584, 24.468796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954838, 41.529186, 24.784140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064920, 41.906399, 24.858917>,  <30.130970, 42.132729, 24.903784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064920, 41.906399, 24.858917>,  <29.954838, 41.529186, 24.784140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064920, 41.906399, 24.858917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134570, -0.230324, 0.963764,
		0.951920, -0.240077, -0.190291,
		0.275206, 0.943034, 0.186943,
		30.147482, 42.189308, 24.915001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497309, 41.440239, 25.125546>,  <29.954838, 41.529186, 24.784140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497309, 41.440239, 25.125546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409559, 41.819775, 25.216389>,  <30.356909, 42.047497, 25.270895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409559, 41.819775, 25.216389>,  <30.497309, 41.440239, 25.125546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409559, 41.819775, 25.216389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170877, -0.191815, 0.966441,
		0.960560, 0.250821, -0.120055,
		-0.219375, 0.948839, 0.227109,
		30.343746, 42.104427, 25.284521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008368, 41.808498, 25.533798>,  <30.497309, 41.440239, 25.125546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008368, 41.808498, 25.533798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679916, 42.012783, 25.635717>,  <30.482845, 42.135353, 25.696869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679916, 42.012783, 25.635717>,  <31.008368, 41.808498, 25.533798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679916, 42.012783, 25.635717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138351, -0.255006, 0.956991,
		0.553722, 0.821063, 0.138735,
		-0.821128, 0.510713, 0.254797,
		30.433578, 42.165997, 25.712156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192835, 42.187618, 26.212048>,  <31.008368, 41.808498, 25.533798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192835, 42.187618, 26.212048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797270, 42.242355, 26.235106>,  <30.559931, 42.275196, 26.248941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797270, 42.242355, 26.235106>,  <31.192835, 42.187618, 26.212048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797270, 42.242355, 26.235106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041090, -0.120869, 0.991818,
		0.142692, 0.983191, 0.113906,
		-0.988914, 0.136844, 0.057647,
		30.500595, 42.283409, 26.252399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139025, 42.610142, 26.713112>,  <31.192835, 42.187618, 26.212048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139025, 42.610142, 26.713112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767633, 42.461685, 26.707670>,  <30.544800, 42.372612, 26.704405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767633, 42.461685, 26.707670>,  <31.139025, 42.610142, 26.713112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767633, 42.461685, 26.707670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077934, -0.230520, 0.969942,
		-0.363121, 0.899508, 0.242957,
		-0.928477, -0.371141, -0.013604,
		30.489090, 42.350342, 26.703588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870914, 42.822563, 27.339928>,  <31.139025, 42.610142, 26.713112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870914, 42.822563, 27.339928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640982, 42.521343, 27.211876>,  <30.503023, 42.340611, 27.135046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640982, 42.521343, 27.211876>,  <30.870914, 42.822563, 27.339928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640982, 42.521343, 27.211876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066303, -0.347072, 0.935492,
		-0.815582, 0.558975, 0.149578,
		-0.574831, -0.753052, -0.320127,
		30.468533, 42.295429, 27.115837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301748, 42.936317, 27.733242>,  <30.870914, 42.822563, 27.339928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301748, 42.936317, 27.733242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300640, 42.553276, 27.618011>,  <30.299974, 42.323452, 27.548874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300640, 42.553276, 27.618011>,  <30.301748, 42.936317, 27.733242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300640, 42.553276, 27.618011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008993, -0.288088, 0.957562,
		-0.999956, 0.000064, 0.009410,
		-0.002772, -0.957604, -0.288074,
		30.299809, 42.265995, 27.531590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841150, 42.521481, 28.162411>,  <30.301748, 42.936317, 27.733242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841150, 42.521481, 28.162411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112034, 42.258179, 28.030901>,  <30.274563, 42.100197, 27.951994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112034, 42.258179, 28.030901>,  <29.841150, 42.521481, 28.162411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112034, 42.258179, 28.030901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060745, -0.395291, 0.916545,
		-0.733281, -0.640662, -0.227708,
		0.677207, -0.658253, -0.328776,
		30.315195, 42.060703, 27.932268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610641, 41.801655, 28.497765>,  <29.841150, 42.521481, 28.162411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610641, 41.801655, 28.497765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997272, 41.780758, 28.397369>,  <30.229252, 41.768219, 28.337132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997272, 41.780758, 28.397369>,  <29.610641, 41.801655, 28.497765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997272, 41.780758, 28.397369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172241, -0.592804, 0.786712,
		-0.189890, -0.803650, -0.563993,
		0.966579, -0.052246, -0.250989,
		30.287247, 41.765083, 28.322073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753469, 41.134342, 28.565027>,  <29.610641, 41.801655, 28.497765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753469, 41.134342, 28.565027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107916, 41.318012, 28.590189>,  <30.320583, 41.428215, 28.605286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107916, 41.318012, 28.590189>,  <29.753469, 41.134342, 28.565027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107916, 41.318012, 28.590189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166822, -0.442634, 0.881048,
		0.432395, -0.770218, -0.468826,
		0.886117, 0.459171, 0.062904,
		30.373751, 41.455765, 28.609060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243130, 40.597347, 28.895832>,  <29.753469, 41.134342, 28.565027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243130, 40.597347, 28.895832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432470, 40.949451, 28.908945>,  <30.546076, 41.160713, 28.916813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432470, 40.949451, 28.908945>,  <30.243130, 40.597347, 28.895832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432470, 40.949451, 28.908945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602291, -0.350587, 0.717170,
		0.642792, -0.319729, -0.696126,
		0.473354, 0.880262, 0.032785,
		30.574476, 41.213531, 28.918781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963772, 40.440189, 28.914423>,  <30.243130, 40.597347, 28.895832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963772, 40.440189, 28.914423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928062, 40.802029, 29.081150>,  <30.906637, 41.019131, 29.181187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928062, 40.802029, 29.081150>,  <30.963772, 40.440189, 28.914423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928062, 40.802029, 29.081150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599566, -0.285364, 0.747722,
		0.795331, 0.316661, -0.516889,
		-0.089273, 0.904596, 0.416817,
		30.901281, 41.073406, 29.206196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640741, 40.660984, 28.974724>,  <30.963772, 40.440189, 28.914423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640741, 40.660984, 28.974724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452791, 40.883755, 29.248672>,  <31.340021, 41.017418, 29.413042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452791, 40.883755, 29.248672>,  <31.640741, 40.660984, 28.974724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452791, 40.883755, 29.248672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684193, -0.260456, 0.681207,
		0.557762, 0.788666, -0.258665,
		-0.469874, 0.556928, 0.684872,
		31.311829, 41.050835, 29.454134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321075, 40.489094, 28.825970>,  <31.640741, 40.660984, 28.974724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321075, 40.489094, 28.825970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570675, 40.796997, 28.879780>,  <32.720436, 40.981739, 28.912066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570675, 40.796997, 28.879780>,  <32.321075, 40.489094, 28.825970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570675, 40.796997, 28.879780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244417, 0.355781, -0.902042,
		-0.742213, 0.529997, 0.410150,
		0.624003, 0.769755, 0.134525,
		32.757877, 41.027924, 28.920137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041298, 41.144581, 28.555893>,  <32.321075, 40.489094, 28.825970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041298, 41.144581, 28.555893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434662, 41.212067, 28.582554>,  <32.670681, 41.252560, 28.598551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434662, 41.212067, 28.582554>,  <32.041298, 41.144581, 28.555893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434662, 41.212067, 28.582554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042718, 0.572456, -0.818822,
		-0.176305, 0.802390, 0.570165,
		0.983408, 0.168719, 0.066651,
		32.729683, 41.262684, 28.602549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160950, 41.852253, 28.392311>,  <32.041298, 41.144581, 28.555893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160950, 41.852253, 28.392311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524818, 41.697254, 28.332531>,  <32.743141, 41.604256, 28.296663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524818, 41.697254, 28.332531>,  <32.160950, 41.852253, 28.392311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524818, 41.697254, 28.332531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133380, 0.613354, -0.778464,
		0.393318, 0.688217, 0.609638,
		0.909676, -0.387497, -0.149449,
		32.797722, 41.581005, 28.287697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538208, 42.478081, 28.195715>,  <32.160950, 41.852253, 28.392311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538208, 42.478081, 28.195715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750328, 42.163078, 28.070110>,  <32.877602, 41.974075, 27.994747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750328, 42.163078, 28.070110>,  <32.538208, 42.478081, 28.195715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750328, 42.163078, 28.070110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117817, 0.298335, -0.947162,
		0.839581, 0.539281, 0.065426,
		0.530305, -0.787511, -0.314013,
		32.909420, 41.926826, 27.975906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160496, 42.744297, 27.780809>,  <32.538208, 42.478081, 28.195715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160496, 42.744297, 27.780809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133911, 42.366898, 27.650953>,  <33.117962, 42.140457, 27.573040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133911, 42.366898, 27.650953>,  <33.160496, 42.744297, 27.780809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133911, 42.366898, 27.650953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083611, 0.318951, -0.944076,
		0.994280, -0.089889, 0.057689,
		-0.066462, -0.943499, -0.324642,
		33.113972, 42.083847, 27.553560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690376, 42.711163, 27.243227>,  <33.160496, 42.744297, 27.780809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690376, 42.711163, 27.243227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446896, 42.408112, 27.149008>,  <33.300808, 42.226280, 27.092476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446896, 42.408112, 27.149008>,  <33.690376, 42.711163, 27.243227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446896, 42.408112, 27.149008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121938, 0.204023, -0.971342,
		0.783970, -0.619984, -0.031807,
		-0.608706, -0.757625, -0.235547,
		33.264282, 42.180824, 27.078344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926662, 42.256786, 26.711298>,  <33.690376, 42.711163, 27.243227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926662, 42.256786, 26.711298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533184, 42.186005, 26.698463>,  <33.297096, 42.143536, 26.690763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533184, 42.186005, 26.698463>,  <33.926662, 42.256786, 26.711298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533184, 42.186005, 26.698463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006216, 0.144844, -0.989435,
		0.179743, -0.973501, -0.141382,
		-0.983694, -0.176965, -0.032086,
		33.238075, 42.132919, 26.688839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875725, 41.879990, 26.102581>,  <33.926662, 42.256786, 26.711298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875725, 41.879990, 26.102581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501755, 42.000725, 26.177206>,  <33.277370, 42.073166, 26.221981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501755, 42.000725, 26.177206>,  <33.875725, 41.879990, 26.102581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501755, 42.000725, 26.177206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138376, 0.174002, -0.974975,
		-0.326746, -0.937346, -0.120912,
		-0.934928, 0.301838, 0.186561,
		33.221275, 42.091274, 26.233173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495804, 41.534561, 25.644024>,  <33.875725, 41.879990, 26.102581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495804, 41.534561, 25.644024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319698, 41.880520, 25.740456>,  <33.214035, 42.088097, 25.798315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319698, 41.880520, 25.740456>,  <33.495804, 41.534561, 25.644024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319698, 41.880520, 25.740456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013961, 0.275064, -0.961325,
		-0.897761, -0.419868, -0.133174,
		-0.440261, 0.864899, 0.241080,
		33.187618, 42.139988, 25.812780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967136, 41.621559, 25.121141>,  <33.495804, 41.534561, 25.644024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967136, 41.621559, 25.121141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005318, 41.984470, 25.284962>,  <33.028225, 42.202217, 25.383255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005318, 41.984470, 25.284962>,  <32.967136, 41.621559, 25.121141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005318, 41.984470, 25.284962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092180, 0.401606, -0.911162,
		-0.991157, 0.124722, -0.045301,
		0.095449, 0.907280, 0.409552,
		33.033951, 42.256653, 25.407827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533524, 42.107109, 24.873901>,  <32.967136, 41.621559, 25.121141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533524, 42.107109, 24.873901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797974, 42.374676, 25.009819>,  <32.956642, 42.535217, 25.091370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797974, 42.374676, 25.009819>,  <32.533524, 42.107109, 24.873901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797974, 42.374676, 25.009819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055505, 0.408047, -0.911272,
		-0.748222, 0.621323, 0.232641,
		0.661123, 0.668921, 0.339796,
		32.996311, 42.575352, 25.111757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403084, 42.773228, 24.573687>,  <32.533524, 42.107109, 24.873901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403084, 42.773228, 24.573687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770985, 42.850758, 24.710213>,  <32.991726, 42.897274, 24.792128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770985, 42.850758, 24.710213>,  <32.403084, 42.773228, 24.573687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770985, 42.850758, 24.710213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180901, 0.562389, -0.806842,
		-0.348334, 0.803836, 0.482194,
		0.919749, 0.193821, 0.341314,
		33.046909, 42.908905, 24.812607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416927, 43.476196, 24.501881>,  <32.403084, 42.773228, 24.573687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416927, 43.476196, 24.501881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798302, 43.356968, 24.520287>,  <33.027126, 43.285431, 24.531330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798302, 43.356968, 24.520287>,  <32.416927, 43.476196, 24.501881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798302, 43.356968, 24.520287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228637, 0.614822, -0.754797,
		0.196689, 0.730171, 0.654342,
		0.953435, -0.298068, 0.046015,
		33.084332, 43.267548, 24.534092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838310, 44.062366, 24.514278>,  <32.416927, 43.476196, 24.501881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838310, 44.062366, 24.514278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061253, 43.769989, 24.356758>,  <33.195019, 43.594563, 24.262247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061253, 43.769989, 24.356758>,  <32.838310, 44.062366, 24.514278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061253, 43.769989, 24.356758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262963, 0.605290, -0.751315,
		0.787529, 0.315197, 0.529574,
		0.557358, -0.730941, -0.393799,
		33.228458, 43.550705, 24.238619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284409, 44.433456, 24.133850>,  <32.838310, 44.062366, 24.514278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284409, 44.433456, 24.133850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287174, 44.056438, 24.000250>,  <33.288834, 43.830227, 23.920090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287174, 44.056438, 24.000250>,  <33.284409, 44.433456, 24.133850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287174, 44.056438, 24.000250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107327, 0.332778, -0.936878,
		0.994200, -0.029372, 0.103461,
		0.006912, -0.942548, -0.334000,
		33.289249, 43.773674, 23.900049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685017, 44.416424, 23.436567>,  <33.284409, 44.433456, 24.133850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685017, 44.416424, 23.436567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497513, 44.063251, 23.425970>,  <33.385010, 43.851349, 23.419613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497513, 44.063251, 23.425970>,  <33.685017, 44.416424, 23.436567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497513, 44.063251, 23.425970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132492, 0.099929, -0.986134,
		0.873335, -0.458745, -0.163824,
		-0.468755, -0.882931, -0.026492,
		33.356888, 43.798370, 23.418022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053284, 44.020653, 22.956264>,  <33.685017, 44.416424, 23.436567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053284, 44.020653, 22.956264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675957, 43.887905, 22.954287>,  <33.449562, 43.808258, 22.953100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675957, 43.887905, 22.954287>,  <34.053284, 44.020653, 22.956264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675957, 43.887905, 22.954287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151507, 0.443807, -0.883222,
		0.295305, -0.832406, -0.468929,
		-0.943314, -0.331866, -0.004943,
		33.392963, 43.788345, 22.952803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914612, 43.556355, 22.226826>,  <34.053284, 44.020653, 22.956264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914612, 43.556355, 22.226826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561806, 43.642181, 22.394636>,  <33.350121, 43.693676, 22.495323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561806, 43.642181, 22.394636>,  <33.914612, 43.556355, 22.226826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561806, 43.642181, 22.394636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340335, 0.325688, -0.882100,
		-0.325903, -0.920809, -0.214238,
		-0.882020, 0.214566, 0.419526,
		33.297199, 43.706551, 22.520494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399994, 43.347012, 21.678377>,  <33.914612, 43.556355, 22.226826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399994, 43.347012, 21.678377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206074, 43.594471, 21.925680>,  <33.089722, 43.742947, 22.074062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206074, 43.594471, 21.925680>,  <33.399994, 43.347012, 21.678377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206074, 43.594471, 21.925680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505670, 0.378510, -0.775260,
		-0.713631, -0.688479, 0.129332,
		-0.484797, 0.618649, 0.618260,
		33.060635, 43.780067, 22.111158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677456, 43.225086, 21.428349>,  <33.399994, 43.347012, 21.678377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677456, 43.225086, 21.428349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672398, 43.575249, 21.621637>,  <32.669361, 43.785347, 21.737610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672398, 43.575249, 21.621637>,  <32.677456, 43.225086, 21.428349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672398, 43.575249, 21.621637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664431, 0.353782, -0.658308,
		-0.747242, -0.329394, 0.577173,
		-0.012649, 0.875407, 0.483221,
		32.668602, 43.837872, 21.766603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914751, 43.551113, 21.616526>,  <32.677456, 43.225086, 21.428349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914751, 43.551113, 21.616526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213840, 43.803280, 21.533112>,  <32.393295, 43.954578, 21.483063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213840, 43.803280, 21.533112>,  <31.914751, 43.551113, 21.616526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213840, 43.803280, 21.533112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471540, 0.283009, -0.835198,
		-0.467501, 0.722832, 0.508877,
		0.747725, 0.630412, -0.208537,
		32.438156, 43.992405, 21.470551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683075, 44.175152, 21.375408>,  <31.914751, 43.551113, 21.616526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683075, 44.175152, 21.375408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043575, 44.240990, 21.215080>,  <32.259876, 44.280491, 21.118883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043575, 44.240990, 21.215080>,  <31.683075, 44.175152, 21.375408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043575, 44.240990, 21.215080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429475, 0.216754, -0.876681,
		-0.057417, 0.962251, 0.266038,
		0.901251, 0.164593, -0.400818,
		32.313950, 44.290367, 21.094835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606817, 44.741959, 20.992748>,  <31.683075, 44.175152, 21.375408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606817, 44.741959, 20.992748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949665, 44.614735, 20.830671>,  <32.155373, 44.538399, 20.733425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949665, 44.614735, 20.830671>,  <31.606817, 44.741959, 20.992748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949665, 44.614735, 20.830671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334703, 0.254054, -0.907431,
		0.391559, 0.913397, 0.111299,
		0.857121, -0.318060, -0.405194,
		32.206802, 44.519318, 20.709114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957689, 45.253151, 20.593781>,  <31.606817, 44.741959, 20.992748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957689, 45.253151, 20.593781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089184, 44.903137, 20.451654>,  <32.168079, 44.693130, 20.366379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089184, 44.903137, 20.451654>,  <31.957689, 45.253151, 20.593781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089184, 44.903137, 20.451654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082018, 0.348354, -0.933768,
		0.940853, 0.336107, 0.042749,
		0.328738, -0.875032, -0.355317,
		32.187805, 44.640629, 20.345058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385910, 45.362461, 20.010645>,  <31.957689, 45.253151, 20.593781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385910, 45.362461, 20.010645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288074, 44.977402, 19.964207>,  <32.229374, 44.746365, 19.936344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288074, 44.977402, 19.964207>,  <32.385910, 45.362461, 20.010645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288074, 44.977402, 19.964207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003887, 0.120705, -0.992681,
		0.969620, -0.242346, -0.033265,
		-0.244587, -0.962652, -0.116096,
		32.214699, 44.688606, 19.929379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761028, 45.181187, 19.448835>,  <32.385910, 45.362461, 20.010645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761028, 45.181187, 19.448835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461411, 44.917477, 19.475039>,  <32.281639, 44.759251, 19.490761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461411, 44.917477, 19.475039>,  <32.761028, 45.181187, 19.448835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461411, 44.917477, 19.475039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056373, -0.035093, -0.997793,
		0.660120, -0.751082, -0.010879,
		-0.749042, -0.659276, 0.065506,
		32.236698, 44.719692, 19.494690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946716, 44.540604, 18.999334>,  <32.761028, 45.181187, 19.448835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946716, 44.540604, 18.999334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549797, 44.540890, 19.048876>,  <32.311646, 44.541061, 19.078602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549797, 44.540890, 19.048876>,  <32.946716, 44.540604, 18.999334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549797, 44.540890, 19.048876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115607, -0.364236, -0.924104,
		0.044450, -0.931307, 0.361514,
		-0.992300, 0.000717, 0.123856,
		32.252106, 44.541103, 19.086033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739590, 43.851749, 18.740667>,  <32.946716, 44.540604, 18.999334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739590, 43.851749, 18.740667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409218, 44.073818, 18.701424>,  <32.210995, 44.207058, 18.677877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409218, 44.073818, 18.701424>,  <32.739590, 43.851749, 18.740667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409218, 44.073818, 18.701424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022151, -0.205846, -0.978334,
		-0.563340, -0.805860, 0.182312,
		-0.825928, 0.555173, -0.098111,
		32.161438, 44.240372, 18.671991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420498, 43.482319, 18.313055>,  <32.739590, 43.851749, 18.740667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420498, 43.482319, 18.313055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222778, 43.829426, 18.292484>,  <32.104149, 44.037689, 18.280142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222778, 43.829426, 18.292484>,  <32.420498, 43.482319, 18.313055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222778, 43.829426, 18.292484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079907, -0.104265, -0.991334,
		-0.865613, -0.485904, 0.120879,
		-0.494296, 0.867771, -0.051426,
		32.074490, 44.089756, 18.277056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917959, 43.376297, 17.860046>,  <32.420498, 43.482319, 18.313055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917959, 43.376297, 17.860046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916023, 43.776134, 17.848841>,  <31.914862, 44.016037, 17.842117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916023, 43.776134, 17.848841>,  <31.917959, 43.376297, 17.860046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916023, 43.776134, 17.848841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194037, -0.028420, -0.980582,
		-0.980982, 0.000688, 0.194097,
		-0.004842, 0.999596, -0.028013,
		31.914570, 44.076012, 17.840437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266390, 43.589161, 17.514427>,  <31.917959, 43.376297, 17.860046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266390, 43.589161, 17.514427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519072, 43.898273, 17.489927>,  <31.670681, 44.083740, 17.475227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519072, 43.898273, 17.489927>,  <31.266390, 43.589161, 17.514427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519072, 43.898273, 17.489927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267730, 0.143339, -0.952772,
		-0.727509, 0.618269, 0.297446,
		0.631705, 0.772785, -0.061249,
		31.708584, 44.130108, 17.471552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937883, 44.215893, 17.241236>,  <31.266390, 43.589161, 17.514427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937883, 44.215893, 17.241236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321947, 44.255722, 17.136791>,  <31.552385, 44.279621, 17.074125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321947, 44.255722, 17.136791>,  <30.937883, 44.215893, 17.241236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321947, 44.255722, 17.136791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265335, 0.031616, -0.963638,
		-0.087698, 0.994528, 0.056777,
		0.960159, 0.099574, -0.261111,
		31.609995, 44.285595, 17.058458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946472, 44.516914, 16.674225>,  <30.937883, 44.215893, 17.241236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946472, 44.516914, 16.674225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340595, 44.450974, 16.656359>,  <31.577068, 44.411407, 16.645639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340595, 44.450974, 16.656359>,  <30.946472, 44.516914, 16.674225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340595, 44.450974, 16.656359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002242, 0.248999, -0.968501,
		0.170780, 0.954371, 0.244970,
		0.985307, -0.164851, -0.044664,
		31.636187, 44.401520, 16.642960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221645, 44.952526, 16.262079>,  <30.946472, 44.516914, 16.674225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221645, 44.952526, 16.262079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499699, 44.665955, 16.238371>,  <31.666531, 44.494011, 16.224146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499699, 44.665955, 16.238371>,  <31.221645, 44.952526, 16.262079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499699, 44.665955, 16.238371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069491, 0.149027, -0.986388,
		0.715512, 0.681555, 0.153379,
		0.695135, -0.716431, -0.059269,
		31.708239, 44.451027, 16.220591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639765, 45.155582, 15.697618>,  <31.221645, 44.952526, 16.262079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639765, 45.155582, 15.697618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757330, 44.775963, 15.743087>,  <31.827869, 44.548191, 15.770369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757330, 44.775963, 15.743087>,  <31.639765, 45.155582, 15.697618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757330, 44.775963, 15.743087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258510, -0.035568, -0.965353,
		0.920211, 0.313113, 0.234886,
		0.293911, -0.949050, 0.113673,
		31.845503, 44.491249, 15.777188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295712, 45.188416, 15.364685>,  <31.639765, 45.155582, 15.697618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295712, 45.188416, 15.364685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195496, 44.802052, 15.390770>,  <32.135368, 44.570232, 15.406421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195496, 44.802052, 15.390770>,  <32.295712, 45.188416, 15.364685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195496, 44.802052, 15.390770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199311, -0.117380, -0.972881,
		0.947369, -0.230744, 0.221924,
		-0.250536, -0.965909, 0.065213,
		32.120335, 44.512280, 15.410334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913624, 44.784809, 15.069057>,  <32.295712, 45.188416, 15.364685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913624, 44.784809, 15.069057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588268, 44.552807, 15.051207>,  <32.393055, 44.413605, 15.040497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588268, 44.552807, 15.051207>,  <32.913624, 44.784809, 15.069057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588268, 44.552807, 15.051207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183715, -0.183336, -0.965731,
		0.551950, -0.793713, 0.255679,
		-0.813388, -0.580007, -0.044625,
		32.344254, 44.378803, 15.037819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019279, 44.096710, 14.788457>,  <32.913624, 44.784809, 15.069057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019279, 44.096710, 14.788457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647564, 44.216957, 14.702626>,  <32.424534, 44.289104, 14.651128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647564, 44.216957, 14.702626>,  <33.019279, 44.096710, 14.788457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647564, 44.216957, 14.702626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175762, -0.151023, -0.972779,
		-0.324843, -0.941711, 0.087507,
		-0.929293, 0.300620, -0.214576,
		32.368774, 44.307144, 14.638253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720959, 43.527950, 14.979496>,  <33.019279, 44.096710, 14.788457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720959, 43.527950, 14.979496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103573, 43.464149, 14.881850>,  <33.333141, 43.425869, 14.823263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103573, 43.464149, 14.881850>,  <32.720959, 43.527950, 14.979496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103573, 43.464149, 14.881850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286691, 0.361391, 0.887246,
		-0.053295, -0.918671, 0.391412,
		0.956540, -0.159500, -0.244115,
		33.390533, 43.416298, 14.808616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082916, 43.142365, 15.615125>,  <32.720959, 43.527950, 14.979496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082916, 43.142365, 15.615125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360317, 43.305126, 15.377307>,  <33.526756, 43.402782, 15.234616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360317, 43.305126, 15.377307>,  <33.082916, 43.142365, 15.615125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360317, 43.305126, 15.377307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556102, 0.222330, 0.800824,
		0.458046, -0.886000, -0.072096,
		0.693501, 0.406907, -0.594544,
		33.568367, 43.427197, 15.198944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679695, 42.871777, 15.813822>,  <33.082916, 43.142365, 15.615125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679695, 42.871777, 15.813822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830696, 43.204628, 15.651316>,  <33.921295, 43.404339, 15.553812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830696, 43.204628, 15.651316>,  <33.679695, 42.871777, 15.813822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830696, 43.204628, 15.651316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605205, 0.110354, 0.788384,
		0.700872, -0.543488, -0.461951,
		0.377499, 0.832132, -0.406265,
		33.943947, 43.454266, 15.529436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322857, 42.831223, 15.990852>,  <33.679695, 42.871777, 15.813822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322857, 42.831223, 15.990852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289669, 43.220943, 15.907084>,  <34.269756, 43.454777, 15.856822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289669, 43.220943, 15.907084>,  <34.322857, 42.831223, 15.990852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289669, 43.220943, 15.907084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672151, 0.209860, 0.710050,
		0.735751, -0.081854, -0.672288,
		-0.082966, 0.974299, -0.209423,
		34.264778, 43.513233, 15.844256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972649, 43.102962, 16.153309>,  <34.322857, 42.831223, 15.990852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972649, 43.102962, 16.153309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751591, 43.436020, 16.138939>,  <34.618958, 43.635853, 16.130316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751591, 43.436020, 16.138939>,  <34.972649, 43.102962, 16.153309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751591, 43.436020, 16.138939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353845, 0.273446, 0.894439,
		0.754574, 0.481591, -0.445745,
		-0.552641, 0.832645, -0.035926,
		34.585800, 43.685814, 16.128160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392296, 43.575054, 16.194691>,  <34.972649, 43.102962, 16.153309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392296, 43.575054, 16.194691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043755, 43.710457, 16.336763>,  <34.834629, 43.791698, 16.422007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043755, 43.710457, 16.336763>,  <35.392296, 43.575054, 16.194691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043755, 43.710457, 16.336763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412619, 0.113843, 0.903762,
		0.265497, 0.934051, -0.238873,
		-0.871353, 0.338510, 0.355182,
		34.782349, 43.812012, 16.443317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576485, 44.113335, 16.684769>,  <35.392296, 43.575054, 16.194691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576485, 44.113335, 16.684769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209053, 44.001167, 16.796177>,  <34.988594, 43.933868, 16.863022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209053, 44.001167, 16.796177>,  <35.576485, 44.113335, 16.684769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209053, 44.001167, 16.796177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242481, 0.156640, 0.957427,
		-0.312104, 0.947012, -0.075892,
		-0.918583, -0.280415, 0.278520,
		34.933479, 43.917042, 16.879732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343620, 44.688000, 17.235289>,  <35.576485, 44.113335, 16.684769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343620, 44.688000, 17.235289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094650, 44.382549, 17.303938>,  <34.945267, 44.199280, 17.345127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094650, 44.382549, 17.303938>,  <35.343620, 44.688000, 17.235289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094650, 44.382549, 17.303938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189355, 0.065846, 0.979699,
		-0.759427, 0.642289, 0.103613,
		-0.622427, -0.763629, 0.171625,
		34.907921, 44.153461, 17.355425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071735, 44.966274, 17.794262>,  <35.343620, 44.688000, 17.235289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071735, 44.966274, 17.794262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012028, 44.570766, 17.797327>,  <34.976204, 44.333462, 17.799166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012028, 44.570766, 17.797327>,  <35.071735, 44.966274, 17.794262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012028, 44.570766, 17.797327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106790, -0.008417, 0.994246,
		-0.983012, 0.149232, 0.106847,
		-0.149273, -0.988766, 0.007662,
		34.967247, 44.274136, 17.799625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834820, 44.814335, 18.372898>,  <35.071735, 44.966274, 17.794262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834820, 44.814335, 18.372898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913212, 44.430927, 18.290108>,  <34.960247, 44.200882, 18.240433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913212, 44.430927, 18.290108>,  <34.834820, 44.814335, 18.372898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913212, 44.430927, 18.290108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055001, -0.199993, 0.978253,
		-0.979065, -0.203097, 0.013526,
		0.195975, -0.958517, -0.206976,
		34.972004, 44.143372, 18.228014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412422, 44.444023, 18.856081>,  <34.834820, 44.814335, 18.372898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412422, 44.444023, 18.856081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698254, 44.190296, 18.738089>,  <34.869751, 44.038059, 18.667294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698254, 44.190296, 18.738089>,  <34.412422, 44.444023, 18.856081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698254, 44.190296, 18.738089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057031, -0.367440, 0.928297,
		-0.697226, -0.680164, -0.226389,
		0.714579, -0.634322, -0.294979,
		34.912628, 44.000000, 18.649595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303947, 43.767063, 19.124685>,  <34.412422, 44.444023, 18.856081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303947, 43.767063, 19.124685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693798, 43.721870, 19.047392>,  <34.927708, 43.694756, 19.001017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693798, 43.721870, 19.047392>,  <34.303947, 43.767063, 19.124685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693798, 43.721870, 19.047392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095083, -0.572542, 0.814343,
		-0.202643, -0.812053, -0.547271,
		0.974626, -0.112985, -0.193234,
		34.986187, 43.687973, 18.989422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511036, 43.070385, 19.099022>,  <34.303947, 43.767063, 19.124685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511036, 43.070385, 19.099022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827827, 43.291515, 19.202682>,  <35.017902, 43.424194, 19.264879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827827, 43.291515, 19.202682>,  <34.511036, 43.070385, 19.099022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827827, 43.291515, 19.202682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058843, -0.491590, 0.868836,
		0.607708, -0.672850, -0.421858,
		0.791978, 0.552822, 0.259151,
		35.065422, 43.457363, 19.280428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972218, 42.704662, 19.588223>,  <34.511036, 43.070385, 19.099022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972218, 42.704662, 19.588223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086613, 43.080246, 19.664707>,  <35.155251, 43.305595, 19.710598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086613, 43.080246, 19.664707>,  <34.972218, 42.704662, 19.588223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086613, 43.080246, 19.664707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188597, -0.250800, 0.949490,
		0.939491, -0.235479, -0.248810,
		0.285987, 0.938962, 0.191214,
		35.172409, 43.361935, 19.722071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618736, 42.642982, 20.002102>,  <34.972218, 42.704662, 19.588223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618736, 42.642982, 20.002102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482548, 43.012218, 20.073627>,  <35.400833, 43.233761, 20.116543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482548, 43.012218, 20.073627>,  <35.618736, 42.642982, 20.002102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482548, 43.012218, 20.073627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254655, -0.092539, 0.962594,
		0.905113, 0.373273, -0.203564,
		-0.340473, 0.923095, 0.178814,
		35.380405, 43.289146, 20.127272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097519, 42.829876, 20.398455>,  <35.618736, 42.642982, 20.002102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097519, 42.829876, 20.398455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802559, 43.084316, 20.489336>,  <35.625584, 43.236980, 20.543865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802559, 43.084316, 20.489336>,  <36.097519, 42.829876, 20.398455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802559, 43.084316, 20.489336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276413, -0.022736, 0.960770,
		0.616311, 0.771272, -0.159060,
		-0.737399, 0.636099, 0.227203,
		35.581341, 43.275146, 20.557497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433464, 43.247807, 20.948235>,  <36.097519, 42.829876, 20.398455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433464, 43.247807, 20.948235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039082, 43.303387, 20.985275>,  <35.802452, 43.336735, 21.007500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039082, 43.303387, 20.985275>,  <36.433464, 43.247807, 20.948235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039082, 43.303387, 20.985275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102093, 0.062788, 0.992791,
		0.132130, 0.988308, -0.076092,
		-0.985961, 0.138946, 0.092603,
		35.743294, 43.345070, 21.013056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414295, 43.778675, 21.521553>,  <36.433464, 43.247807, 20.948235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414295, 43.778675, 21.521553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043636, 43.640144, 21.463068>,  <35.821239, 43.557026, 21.427977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043636, 43.640144, 21.463068>,  <36.414295, 43.778675, 21.521553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043636, 43.640144, 21.463068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132167, -0.063972, 0.989161,
		-0.351926, 0.935930, 0.013507,
		-0.926650, -0.346326, -0.146212,
		35.765640, 43.536247, 21.419205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957668, 44.224449, 21.954872>,  <36.414295, 43.778675, 21.521553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957668, 44.224449, 21.954872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803089, 43.859631, 21.899981>,  <35.710342, 43.640739, 21.867046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803089, 43.859631, 21.899981>,  <35.957668, 44.224449, 21.954872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803089, 43.859631, 21.899981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074280, -0.117528, 0.990288,
		-0.919317, 0.392884, -0.022329,
		-0.386444, -0.912047, -0.137229,
		35.687157, 43.586018, 21.858812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409077, 44.232651, 22.395279>,  <35.957668, 44.224449, 21.954872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409077, 44.232651, 22.395279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466187, 43.844669, 22.316483>,  <35.500454, 43.611881, 22.269205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466187, 43.844669, 22.316483>,  <35.409077, 44.232651, 22.395279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466187, 43.844669, 22.316483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183250, -0.221495, 0.957789,
		-0.972643, -0.100650, -0.209368,
		0.142775, -0.969954, -0.196991,
		35.509018, 43.553684, 22.257385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777950, 43.764362, 22.678583>,  <35.409077, 44.232651, 22.395279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777950, 43.764362, 22.678583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091339, 43.516430, 22.660784>,  <35.279373, 43.367668, 22.650105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091339, 43.516430, 22.660784>,  <34.777950, 43.764362, 22.678583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091339, 43.516430, 22.660784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253993, -0.384752, 0.887386,
		-0.567154, -0.683937, -0.458875,
		0.783469, -0.619835, -0.044499,
		35.326382, 43.330479, 22.647434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564457, 43.196449, 23.229759>,  <34.777950, 43.764362, 22.678583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564457, 43.196449, 23.229759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936050, 43.071152, 23.150892>,  <35.159004, 42.995972, 23.103573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936050, 43.071152, 23.150892>,  <34.564457, 43.196449, 23.229759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936050, 43.071152, 23.150892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004764, -0.522535, 0.852605,
		-0.370099, -0.792992, -0.483932,
		0.928980, -0.313242, -0.197167,
		35.214745, 42.977180, 23.091742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547535, 42.496315, 23.163975>,  <34.564457, 43.196449, 23.229759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547535, 42.496315, 23.163975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920654, 42.576576, 23.283730>,  <35.144524, 42.624733, 23.355583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920654, 42.576576, 23.283730>,  <34.547535, 42.496315, 23.163975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920654, 42.576576, 23.283730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114133, -0.623482, 0.773462,
		0.341860, -0.755651, -0.558680,
		0.932794, 0.200652, 0.299388,
		35.200493, 42.636772, 23.373547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842640, 41.893848, 23.431541>,  <34.547535, 42.496315, 23.163975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842640, 41.893848, 23.431541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095921, 42.168087, 23.575211>,  <35.247890, 42.332630, 23.661411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095921, 42.168087, 23.575211>,  <34.842640, 41.893848, 23.431541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095921, 42.168087, 23.575211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097542, -0.531043, 0.841712,
		0.767812, -0.497943, -0.403135,
		0.633206, 0.685599, 0.359171,
		35.285881, 42.373768, 23.682962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474667, 41.526588, 23.592833>,  <34.842640, 41.893848, 23.431541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474667, 41.526588, 23.592833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459015, 41.869457, 23.798248>,  <35.449623, 42.075180, 23.921497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459015, 41.869457, 23.798248>,  <35.474667, 41.526588, 23.592833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459015, 41.869457, 23.798248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324525, -0.475171, 0.817861,
		0.945067, 0.198657, -0.259582,
		-0.039128, 0.857175, 0.513537,
		35.447277, 42.126610, 23.952309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949387, 41.396687, 24.009369>,  <35.474667, 41.526588, 23.592833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949387, 41.396687, 24.009369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770920, 41.720814, 24.161327>,  <35.663841, 41.915291, 24.252502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770920, 41.720814, 24.161327>,  <35.949387, 41.396687, 24.009369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770920, 41.720814, 24.161327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164755, -0.342864, 0.924825,
		0.879655, 0.475213, 0.019470,
		-0.446164, 0.810319, 0.379895,
		35.637070, 41.963909, 24.275295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436958, 41.754139, 24.395645>,  <35.949387, 41.396687, 24.009369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436958, 41.754139, 24.395645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070988, 41.869102, 24.509005>,  <35.851406, 41.938080, 24.577021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070988, 41.869102, 24.509005>,  <36.436958, 41.754139, 24.395645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070988, 41.869102, 24.509005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173486, -0.353945, 0.919035,
		0.364443, 0.890011, 0.273972,
		-0.914923, 0.287406, 0.283398,
		35.796513, 41.955326, 24.594025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507282, 42.188759, 24.971777>,  <36.436958, 41.754139, 24.395645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507282, 42.188759, 24.971777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140221, 42.032066, 24.998453>,  <35.919983, 41.938049, 25.014460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140221, 42.032066, 24.998453>,  <36.507282, 42.188759, 24.971777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140221, 42.032066, 24.998453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184477, -0.271322, 0.944644,
		-0.351955, 0.879163, 0.321247,
		-0.917658, -0.391735, 0.066692,
		35.864922, 41.914547, 25.018461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244244, 42.372646, 25.634167>,  <36.507282, 42.188759, 24.971777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244244, 42.372646, 25.634167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952839, 42.110912, 25.553059>,  <35.777996, 41.953873, 25.504395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952839, 42.110912, 25.553059>,  <36.244244, 42.372646, 25.634167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952839, 42.110912, 25.553059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014139, -0.281574, 0.959435,
		-0.684891, 0.701824, 0.195877,
		-0.728508, -0.654339, -0.202770,
		35.734287, 41.914612, 25.492228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776333, 42.354309, 26.228567>,  <36.244244, 42.372646, 25.634167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776333, 42.354309, 26.228567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715607, 42.002819, 26.047550>,  <35.679173, 41.791924, 25.938940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715607, 42.002819, 26.047550>,  <35.776333, 42.354309, 26.228567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715607, 42.002819, 26.047550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030345, -0.461776, 0.886477,
		-0.987943, 0.120848, 0.096769,
		-0.151815, -0.878725, -0.452542,
		35.670063, 41.739201, 25.911787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174583, 42.018032, 26.528326>,  <35.776333, 42.354309, 26.228567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174583, 42.018032, 26.528326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403744, 41.732353, 26.367474>,  <35.541241, 41.560947, 26.270962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403744, 41.732353, 26.367474>,  <35.174583, 42.018032, 26.528326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403744, 41.732353, 26.367474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183575, -0.589974, 0.786277,
		-0.798801, -0.376640, -0.469106,
		0.572903, -0.714195, -0.402130,
		35.575615, 41.518093, 26.246836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942890, 41.457123, 26.844242>,  <35.174583, 42.018032, 26.528326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942890, 41.457123, 26.844242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300373, 41.348671, 26.701263>,  <35.514862, 41.283600, 26.615477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300373, 41.348671, 26.701263>,  <34.942890, 41.457123, 26.844242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300373, 41.348671, 26.701263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199362, -0.473746, 0.857800,
		-0.401914, -0.837887, -0.369339,
		0.893711, -0.271130, -0.357448,
		35.568485, 41.267330, 26.594028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033642, 40.852528, 27.177208>,  <34.942890, 41.457123, 26.844242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033642, 40.852528, 27.177208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405476, 40.943485, 27.061165>,  <35.628578, 40.998058, 26.991539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405476, 40.943485, 27.061165>,  <35.033642, 40.852528, 27.177208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405476, 40.943485, 27.061165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354624, -0.337013, 0.872160,
		0.100552, -0.913627, -0.393921,
		0.929586, 0.227391, -0.290107,
		35.684353, 41.011703, 26.974133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385056, 40.313972, 27.407679>,  <35.033642, 40.852528, 27.177208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385056, 40.313972, 27.407679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663898, 40.594482, 27.348009>,  <35.831203, 40.762787, 27.312206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663898, 40.594482, 27.348009>,  <35.385056, 40.313972, 27.407679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663898, 40.594482, 27.348009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504880, -0.332426, 0.796611,
		0.509053, -0.630641, -0.585796,
		0.697110, 0.701274, -0.149175,
		35.873032, 40.804863, 27.303257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011829, 40.032608, 27.493990>,  <35.385056, 40.313972, 27.407679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011829, 40.032608, 27.493990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109100, 40.417599, 27.542162>,  <36.167461, 40.648594, 27.571066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109100, 40.417599, 27.542162>,  <36.011829, 40.032608, 27.493990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109100, 40.417599, 27.542162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613876, -0.248837, 0.749157,
		0.751015, -0.108246, -0.651353,
		0.243174, 0.962478, 0.120430,
		36.182053, 40.706341, 27.578291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710747, 40.059242, 27.373213>,  <36.011829, 40.032608, 27.493990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710747, 40.059242, 27.373213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573193, 40.347363, 27.614182>,  <36.490662, 40.520233, 27.758762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573193, 40.347363, 27.614182>,  <36.710747, 40.059242, 27.373213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573193, 40.347363, 27.614182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621612, -0.306228, 0.720988,
		0.703804, 0.622411, -0.342438,
		-0.343887, 0.720298, 0.602422,
		36.470028, 40.563454, 27.794909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345196, 40.193195, 27.738144>,  <36.710747, 40.059242, 27.373213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345196, 40.193195, 27.738144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027767, 40.356361, 27.918739>,  <36.837311, 40.454262, 28.027098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027767, 40.356361, 27.918739>,  <37.345196, 40.193195, 27.738144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027767, 40.356361, 27.918739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463334, -0.075859, 0.882931,
		0.394410, 0.909863, -0.128801,
		-0.793576, 0.407915, 0.451490,
		36.789696, 40.478737, 28.054186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634354, 40.652847, 28.221180>,  <37.345196, 40.193195, 27.738144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634354, 40.652847, 28.221180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279858, 40.540142, 28.368256>,  <37.067162, 40.472519, 28.456501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279858, 40.540142, 28.368256>,  <37.634354, 40.652847, 28.221180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279858, 40.540142, 28.368256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434497, -0.230415, 0.870702,
		-0.160608, 0.931408, 0.326626,
		-0.886238, -0.281760, 0.367687,
		37.013985, 40.455612, 28.478561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762135, 40.746010, 29.004389>,  <37.634354, 40.652847, 28.221180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762135, 40.746010, 29.004389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411865, 40.553314, 28.990978>,  <37.201702, 40.437698, 28.982933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411865, 40.553314, 28.990978>,  <37.762135, 40.746010, 29.004389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411865, 40.553314, 28.990978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136325, -0.313208, 0.939849,
		-0.463262, 0.818431, 0.339940,
		-0.875674, -0.481738, -0.033525,
		37.149162, 40.408794, 28.980921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580734, 40.769646, 29.622438>,  <37.762135, 40.746010, 29.004389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580734, 40.769646, 29.622438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350754, 40.463299, 29.507284>,  <37.212765, 40.279491, 29.438192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350754, 40.463299, 29.507284>,  <37.580734, 40.769646, 29.622438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350754, 40.463299, 29.507284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224939, -0.486259, 0.844366,
		-0.786660, 0.420712, 0.451849,
		-0.574951, -0.765868, -0.287886,
		37.178268, 40.233540, 29.420918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918816, 40.698879, 30.024450>,  <37.580734, 40.769646, 29.622438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918816, 40.698879, 30.024450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005493, 40.333260, 29.887299>,  <37.057499, 40.113888, 29.805008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005493, 40.333260, 29.887299>,  <36.918816, 40.698879, 30.024450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005493, 40.333260, 29.887299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002790, -0.351803, 0.936070,
		-0.976236, -0.201884, -0.078784,
		0.216694, -0.914045, -0.342879,
		37.070503, 40.059048, 29.784435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475174, 40.179100, 30.281130>,  <36.918816, 40.698879, 30.024450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475174, 40.179100, 30.281130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817696, 39.979424, 30.228140>,  <37.023209, 39.859619, 30.196346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817696, 39.979424, 30.228140>,  <36.475174, 40.179100, 30.281130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817696, 39.979424, 30.228140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081808, -0.384364, 0.919550,
		-0.509952, -0.776576, -0.369970,
		0.856304, -0.499193, -0.132477,
		37.074589, 39.829666, 30.188396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449089, 39.420029, 30.598583>,  <36.475174, 40.179100, 30.281130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449089, 39.420029, 30.598583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832207, 39.527374, 30.557369>,  <37.062077, 39.591782, 30.532640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832207, 39.527374, 30.557369>,  <36.449089, 39.420029, 30.598583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832207, 39.527374, 30.557369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238906, -0.543758, 0.804519,
		0.159881, -0.795177, -0.584921,
		0.957790, 0.268369, -0.103036,
		37.119545, 39.607883, 30.526459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928860, 38.898006, 30.524982>,  <36.449089, 39.420029, 30.598583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928860, 38.898006, 30.524982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161537, 39.178738, 30.689457>,  <37.301144, 39.347176, 30.788141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161537, 39.178738, 30.689457>,  <36.928860, 38.898006, 30.524982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161537, 39.178738, 30.689457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216627, -0.620917, 0.753349,
		0.784034, -0.349142, -0.513217,
		0.581691, 0.701828, 0.411186,
		37.336044, 39.389286, 30.812813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725529, 38.720604, 30.676666>,  <36.928860, 38.898006, 30.524982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725529, 38.720604, 30.676666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540672, 38.953575, 30.944159>,  <37.429760, 39.093357, 31.104654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540672, 38.953575, 30.944159>,  <37.725529, 38.720604, 30.676666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540672, 38.953575, 30.944159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176545, -0.678567, 0.713007,
		0.869055, 0.447571, 0.210769,
		-0.462142, 0.582432, 0.668729,
		37.402031, 39.128304, 31.144777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162273, 38.950512, 31.269396>,  <37.725529, 38.720604, 30.676666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162273, 38.950512, 31.269396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779503, 38.895760, 31.371809>,  <37.549839, 38.862907, 31.433256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779503, 38.895760, 31.371809>,  <38.162273, 38.950512, 31.269396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779503, 38.895760, 31.371809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289611, -0.511783, 0.808829,
		0.020321, 0.848141, 0.529381,
		-0.956929, -0.136878, 0.256031,
		37.492424, 38.854694, 31.448618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159916, 39.027611, 32.007462>,  <38.162273, 38.950512, 31.269396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159916, 39.027611, 32.007462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791149, 38.873383, 32.022476>,  <37.569889, 38.780846, 32.031483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791149, 38.873383, 32.022476>,  <38.159916, 39.027611, 32.007462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791149, 38.873383, 32.022476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190836, -0.367695, 0.910155,
		-0.337129, 0.846247, 0.412564,
		-0.921914, -0.385572, 0.037533,
		37.514576, 38.757710, 32.033737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655544, 39.354782, 32.529430>,  <38.159916, 39.027611, 32.007462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655544, 39.354782, 32.529430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605495, 38.967400, 32.443233>,  <37.575466, 38.734970, 32.391518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605495, 38.967400, 32.443233>,  <37.655544, 39.354782, 32.529430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605495, 38.967400, 32.443233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399932, -0.248002, 0.882355,
		-0.907964, 0.024220, 0.418347,
		-0.125122, -0.968457, -0.215490,
		37.567959, 38.676861, 32.378586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224751, 39.047485, 33.023232>,  <37.655544, 39.354782, 32.529430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224751, 39.047485, 33.023232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478214, 38.775818, 32.875069>,  <37.630295, 38.612816, 32.786171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478214, 38.775818, 32.875069>,  <37.224751, 39.047485, 33.023232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478214, 38.775818, 32.875069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394040, -0.128679, 0.910041,
		-0.665737, -0.722611, 0.186083,
		0.633661, -0.679172, -0.370404,
		37.668312, 38.572067, 32.763947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095772, 38.327827, 33.327309>,  <37.224751, 39.047485, 33.023232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095772, 38.327827, 33.327309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468334, 38.435764, 33.229595>,  <37.691872, 38.500526, 33.170967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468334, 38.435764, 33.229595>,  <37.095772, 38.327827, 33.327309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468334, 38.435764, 33.229595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311747, -0.244949, 0.918049,
		0.187896, -0.931227, -0.312270,
		0.931402, 0.269847, -0.244283,
		37.747753, 38.516720, 33.156311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529678, 37.776489, 33.500755>,  <37.095772, 38.327827, 33.327309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529678, 37.776489, 33.500755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698948, 38.138260, 33.522438>,  <37.800510, 38.355324, 33.535450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698948, 38.138260, 33.522438>,  <37.529678, 37.776489, 33.500755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698948, 38.138260, 33.522438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246294, -0.172404, 0.953738,
		0.871933, -0.390242, -0.295712,
		0.423170, 0.904427, 0.054211,
		37.825897, 38.409588, 33.538700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205627, 37.752258, 33.752892>,  <37.529678, 37.776489, 33.500755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205627, 37.752258, 33.752892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079624, 38.122623, 33.836281>,  <38.004021, 38.344841, 33.886314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079624, 38.122623, 33.836281>,  <38.205627, 37.752258, 33.752892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079624, 38.122623, 33.836281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541629, -0.005001, 0.840603,
		0.779364, 0.377713, -0.499924,
		-0.315007, 0.925909, 0.208478,
		37.985123, 38.400394, 33.898823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717457, 37.733128, 34.357094>,  <38.205627, 37.752258, 33.752892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717457, 37.733128, 34.357094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003464, 37.459396, 34.299892>,  <38.175068, 37.295158, 34.265572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003464, 37.459396, 34.299892>,  <37.717457, 37.733128, 34.357094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003464, 37.459396, 34.299892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582462, 0.469994, 0.663207,
		-0.386644, -0.557493, 0.734648,
		0.715014, -0.684330, -0.142999,
		38.217968, 37.254097, 34.256992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997372, 37.752213, 34.979359>,  <37.717457, 37.733128, 34.357094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997372, 37.752213, 34.979359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270298, 37.551582, 34.766617>,  <38.434052, 37.431202, 34.638973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270298, 37.551582, 34.766617>,  <37.997372, 37.752213, 34.979359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270298, 37.551582, 34.766617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729865, 0.425779, 0.534798,
		-0.041792, -0.753081, 0.656599,
		0.682313, -0.501579, -0.531854,
		38.474991, 37.401108, 34.607059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385971, 37.406410, 35.421192>,  <37.997372, 37.752213, 34.979359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385971, 37.406410, 35.421192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596355, 37.489262, 35.091232>,  <38.722588, 37.538971, 34.893257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596355, 37.489262, 35.091232>,  <38.385971, 37.406410, 35.421192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596355, 37.489262, 35.091232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671103, 0.494747, 0.552128,
		0.522478, -0.843993, 0.121216,
		0.525963, 0.207126, -0.824901,
		38.754143, 37.551399, 34.843761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102879, 37.565083, 35.712238>,  <38.385971, 37.406410, 35.421192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102879, 37.565083, 35.712238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100498, 37.646168, 35.320549>,  <39.099068, 37.694817, 35.085537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100498, 37.646168, 35.320549>,  <39.102879, 37.565083, 35.712238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100498, 37.646168, 35.320549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858800, 0.502687, 0.098838,
		0.512277, -0.840366, -0.177080,
		-0.005955, 0.202709, -0.979221,
		39.098713, 37.706982, 35.026783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865574, 37.477348, 35.503681>,  <39.102879, 37.565083, 35.712238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865574, 37.477348, 35.503681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668869, 37.734348, 35.268612>,  <39.550846, 37.888550, 35.127571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668869, 37.734348, 35.268612>,  <39.865574, 37.477348, 35.503681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668869, 37.734348, 35.268612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791423, 0.611239, 0.006001,
		0.363064, -0.462147, -0.809076,
		-0.491765, 0.642501, -0.587673,
		39.521339, 37.927097, 35.092312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356289, 37.870815, 35.144478>,  <39.865574, 37.477348, 35.503681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356289, 37.870815, 35.144478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035866, 38.110229, 35.147587>,  <39.843613, 38.253876, 35.149452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035866, 38.110229, 35.147587>,  <40.356289, 37.870815, 35.144478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035866, 38.110229, 35.147587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583109, 0.777349, 0.236034,
		0.135230, 0.193611, -0.971714,
		-0.801060, 0.598534, 0.007775,
		39.795547, 38.289791, 35.149918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641434, 38.468842, 34.932518>,  <40.356289, 37.870815, 35.144478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641434, 38.468842, 34.932518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288124, 38.547203, 35.102905>,  <40.076138, 38.594219, 35.205139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288124, 38.547203, 35.102905>,  <40.641434, 38.468842, 34.932518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288124, 38.547203, 35.102905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398120, 0.793249, 0.460712,
		-0.247647, 0.576523, -0.778648,
		-0.883273, 0.195901, 0.425971,
		40.023144, 38.605972, 35.230698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080482, 38.987312, 34.936516>,  <40.641434, 38.468842, 34.932518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080482, 38.987312, 34.936516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466946, 38.945103, 35.030663>,  <40.698826, 38.919777, 35.087151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466946, 38.945103, 35.030663>,  <40.080482, 38.987312, 34.936516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466946, 38.945103, 35.030663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193927, 0.898819, -0.393086,
		-0.170073, 0.425429, 0.888868,
		0.966161, -0.105522, 0.235366,
		40.756794, 38.913445, 35.101273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341335, 39.548447, 35.306221>,  <40.080482, 38.987312, 34.936516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341335, 39.548447, 35.306221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613380, 39.392681, 35.057766>,  <40.776608, 39.299221, 34.908695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613380, 39.392681, 35.057766>,  <40.341335, 39.548447, 35.306221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613380, 39.392681, 35.057766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069187, 0.877571, -0.474429,
		0.729838, 0.279690, 0.623787,
		0.680110, -0.389414, -0.621134,
		40.817413, 39.275856, 34.871426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988728, 39.821293, 35.506348>,  <40.341335, 39.548447, 35.306221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988728, 39.821293, 35.506348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922821, 39.743130, 35.119637>,  <40.883278, 39.696232, 34.887608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922821, 39.743130, 35.119637>,  <40.988728, 39.821293, 35.506348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922821, 39.743130, 35.119637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086176, 0.979282, -0.183251,
		0.982561, 0.053120, -0.178189,
		-0.164763, -0.195411, -0.966782,
		40.873394, 39.684505, 34.829601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738026, 39.670624, 36.188473>,  <40.988728, 39.821293, 35.506348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738026, 39.670624, 36.188473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435009, 39.577885, 36.432564>,  <40.253201, 39.522240, 36.579018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435009, 39.577885, 36.432564>,  <40.738026, 39.670624, 36.188473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435009, 39.577885, 36.432564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325878, -0.675668, -0.661269,
		0.565626, -0.699798, 0.436292,
		-0.757543, -0.231853, 0.610224,
		40.207745, 39.508327, 36.615631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646217, 38.929905, 36.152737>,  <40.738026, 39.670624, 36.188473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646217, 38.929905, 36.152737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308857, 39.102730, 36.280479>,  <40.106441, 39.206425, 36.357124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308857, 39.102730, 36.280479>,  <40.646217, 38.929905, 36.152737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308857, 39.102730, 36.280479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513300, -0.472387, -0.716501,
		-0.158716, -0.768225, 0.620193,
		-0.843405, 0.432065, 0.319354,
		40.055836, 39.232349, 36.376286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125896, 38.396069, 36.253159>,  <40.646217, 38.929905, 36.152737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125896, 38.396069, 36.253159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023994, 38.766914, 36.143208>,  <39.962852, 38.989422, 36.077236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023994, 38.766914, 36.143208>,  <40.125896, 38.396069, 36.253159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023994, 38.766914, 36.143208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419203, -0.362041, -0.832584,
		-0.871419, -0.096871, 0.480880,
		-0.254752, 0.927115, -0.274881,
		39.947567, 39.045048, 36.060745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399479, 38.545189, 36.297123>,  <40.125896, 38.396069, 36.253159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399479, 38.545189, 36.297123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567085, 38.763580, 36.006927>,  <39.667648, 38.894615, 35.832809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567085, 38.763580, 36.006927>,  <39.399479, 38.545189, 36.297123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567085, 38.763580, 36.006927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535644, -0.496531, -0.683039,
		-0.733154, 0.674805, 0.084399,
		0.419011, 0.545981, -0.725489,
		39.692787, 38.927376, 35.789280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913643, 38.774113, 35.824787>,  <39.399479, 38.545189, 36.297123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913643, 38.774113, 35.824787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258919, 38.755192, 35.623722>,  <39.466084, 38.743839, 35.503082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258919, 38.755192, 35.623722>,  <38.913643, 38.774113, 35.824787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258919, 38.755192, 35.623722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444286, -0.544106, -0.711730,
		-0.239835, 0.837682, -0.490681,
		0.863185, -0.047305, -0.502666,
		39.517876, 38.741001, 35.472923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765732, 39.063526, 35.104309>,  <38.913643, 38.774113, 35.824787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765732, 39.063526, 35.104309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078033, 38.815350, 35.133915>,  <39.265415, 38.666443, 35.151680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078033, 38.815350, 35.133915>,  <38.765732, 39.063526, 35.104309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078033, 38.815350, 35.133915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494735, -0.686191, -0.533272,
		0.381651, 0.379737, -0.842699,
		0.780756, -0.620437, 0.074017,
		39.312260, 38.629219, 35.156120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836128, 38.795395, 34.451698>,  <38.765732, 39.063526, 35.104309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836128, 38.795395, 34.451698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046242, 38.517059, 34.647610>,  <39.172310, 38.350060, 34.765156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046242, 38.517059, 34.647610>,  <38.836128, 38.795395, 34.451698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046242, 38.517059, 34.647610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563247, -0.715771, -0.412826,
		0.637831, -0.059018, -0.767912,
		0.525285, -0.695837, 0.489782,
		39.203827, 38.308308, 34.794544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074669, 38.320980, 33.876976>,  <38.836128, 38.795395, 34.451698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074669, 38.320980, 33.876976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113480, 38.148670, 34.235867>,  <39.136765, 38.045284, 34.451202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113480, 38.148670, 34.235867>,  <39.074669, 38.320980, 33.876976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113480, 38.148670, 34.235867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524816, -0.788110, -0.321638,
		0.845668, -0.439672, -0.302544,
		0.097023, -0.430779, 0.897227,
		39.142586, 38.019436, 34.505035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342419, 37.696415, 33.638889>,  <39.074669, 38.320980, 33.876976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342419, 37.696415, 33.638889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179623, 37.643425, 34.000401>,  <39.081944, 37.611633, 34.217308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179623, 37.643425, 34.000401>,  <39.342419, 37.696415, 33.638889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179623, 37.643425, 34.000401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526920, -0.774160, -0.350758,
		0.746132, -0.618973, 0.245274,
		-0.406991, -0.132472, 0.903775,
		39.057526, 37.603683, 34.271534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404442, 36.984653, 33.844025>,  <39.342419, 37.696415, 33.638889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404442, 36.984653, 33.844025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100418, 37.106831, 34.073467>,  <38.918003, 37.180138, 34.211132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100418, 37.106831, 34.073467>,  <39.404442, 36.984653, 33.844025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100418, 37.106831, 34.073467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498713, -0.840062, -0.213497,
		0.416652, -0.448333, 0.790821,
		-0.760057, 0.305439, 0.573603,
		38.872402, 37.198463, 34.245548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300095, 36.304070, 33.452057>,  <39.404442, 36.984653, 33.844025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300095, 36.304070, 33.452057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496658, 36.066875, 33.196907>,  <39.614597, 35.924561, 33.043816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496658, 36.066875, 33.196907>,  <39.300095, 36.304070, 33.452057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496658, 36.066875, 33.196907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833431, 0.532777, 0.146775,
		0.252810, -0.603752, 0.756023,
		0.491407, -0.592987, -0.637877,
		39.644081, 35.888981, 33.005543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022911, 36.064831, 33.781837>,  <39.300095, 36.304070, 33.452057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022911, 36.064831, 33.781837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993099, 36.099785, 33.384483>,  <39.975212, 36.120758, 33.146072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993099, 36.099785, 33.384483>,  <40.022911, 36.064831, 33.781837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993099, 36.099785, 33.384483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804996, 0.593224, -0.008212,
		0.588581, -0.800281, -0.114554,
		-0.074528, 0.087382, -0.993383,
		39.970741, 36.125999, 33.086468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698696, 35.854961, 33.502316>,  <40.022911, 36.064831, 33.781837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698696, 35.854961, 33.502316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499477, 36.112335, 33.269783>,  <40.379948, 36.266762, 33.130264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499477, 36.112335, 33.269783>,  <40.698696, 35.854961, 33.502316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499477, 36.112335, 33.269783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800171, 0.599363, -0.022136,
		0.334182, -0.476186, -0.813369,
		-0.498044, 0.643437, -0.581327,
		40.350063, 36.305367, 33.095387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870716, 35.902534, 32.736568>,  <40.698696, 35.854961, 33.502316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870716, 35.902534, 32.736568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758095, 36.229275, 32.937958>,  <40.690521, 36.425320, 33.058792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758095, 36.229275, 32.937958>,  <40.870716, 35.902534, 32.736568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758095, 36.229275, 32.937958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901254, 0.405218, -0.153427,
		-0.329343, 0.410561, -0.850278,
		-0.281556, 0.816846, 0.503476,
		40.673630, 36.474327, 33.089001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859249, 36.585270, 32.323025>,  <40.870716, 35.902534, 32.736568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859249, 36.585270, 32.323025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942902, 36.643768, 32.709782>,  <40.993092, 36.678867, 32.941837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942902, 36.643768, 32.709782>,  <40.859249, 36.585270, 32.323025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942902, 36.643768, 32.709782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868829, 0.425978, -0.252347,
		-0.448779, 0.892836, -0.037976,
		0.209127, 0.146243, 0.966891,
		41.005638, 36.687641, 32.999847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222523, 37.249294, 32.435654>,  <40.859249, 36.585270, 32.323025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222523, 37.249294, 32.435654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303631, 37.056927, 32.776852>,  <41.352295, 36.941505, 32.981571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303631, 37.056927, 32.776852>,  <41.222523, 37.249294, 32.435654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303631, 37.056927, 32.776852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906870, 0.420851, 0.021703,
		-0.369421, 0.769156, 0.521467,
		0.202767, -0.480920, 0.852996,
		41.364460, 36.912651, 33.032749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505116, 37.643414, 33.088219>,  <41.222523, 37.249294, 32.435654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505116, 37.643414, 33.088219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652496, 37.271580, 33.092304>,  <41.740925, 37.048477, 33.094757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652496, 37.271580, 33.092304>,  <41.505116, 37.643414, 33.088219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652496, 37.271580, 33.092304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927652, 0.368363, 0.061408,
		-0.060848, -0.013147, 0.998060,
		0.368456, -0.929589, 0.010218,
		41.763035, 36.992702, 33.095371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041946, 37.624027, 33.722321>,  <41.505116, 37.643414, 33.088219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041946, 37.624027, 33.722321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108528, 37.346405, 33.442158>,  <42.148479, 37.179832, 33.274059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108528, 37.346405, 33.442158>,  <42.041946, 37.624027, 33.722321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108528, 37.346405, 33.442158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985922, 0.128511, 0.106968,
		0.015768, -0.708355, 0.705680,
		0.166459, -0.694059, -0.700410,
		42.158466, 37.138187, 33.232037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538113, 36.954781, 33.966202>,  <42.041946, 37.624027, 33.722321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538113, 36.954781, 33.966202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541386, 37.012367, 33.570381>,  <42.543350, 37.046921, 33.332890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541386, 37.012367, 33.570381>,  <42.538113, 36.954781, 33.966202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541386, 37.012367, 33.570381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981984, -0.187980, -0.019231,
		-0.188784, -0.971564, -0.142910,
		0.008180, 0.143966, -0.989549,
		42.543839, 37.055557, 33.273518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039883, 36.470169, 33.648113>,  <42.538113, 36.954781, 33.966202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039883, 36.470169, 33.648113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003513, 36.788483, 33.408627>,  <42.981693, 36.979469, 33.264935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003513, 36.788483, 33.408627>,  <43.039883, 36.470169, 33.648113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003513, 36.788483, 33.408627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993107, 0.027791, -0.113872,
		-0.073978, -0.604941, -0.792826,
		-0.090919, 0.795785, -0.598715,
		42.976238, 37.027218, 33.229012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221958, 36.344070, 33.027103>,  <43.039883, 36.470169, 33.648113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221958, 36.344070, 33.027103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296646, 36.726639, 33.116894>,  <43.341461, 36.956181, 33.170769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296646, 36.726639, 33.116894>,  <43.221958, 36.344070, 33.027103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296646, 36.726639, 33.116894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980567, -0.167444, -0.102230,
		-0.060189, 0.239200, -0.969103,
		0.186724, 0.956424, 0.224473,
		43.352665, 37.013565, 33.184235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517395, 36.829121, 32.563347>,  <43.221958, 36.344070, 33.027103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517395, 36.829121, 32.563347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605850, 36.927402, 32.940861>,  <43.658924, 36.986370, 33.167370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605850, 36.927402, 32.940861>,  <43.517395, 36.829121, 32.563347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605850, 36.927402, 32.940861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942886, -0.301079, -0.142541,
		0.249131, 0.921402, -0.298250,
		0.221134, 0.245704, 0.943784,
		43.672192, 37.001114, 33.223995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280293, 37.075127, 32.527699>,  <43.517395, 36.829121, 32.563347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280293, 37.075127, 32.527699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182297, 37.006588, 32.909405>,  <44.123501, 36.965466, 33.138428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182297, 37.006588, 32.909405>,  <44.280293, 37.075127, 32.527699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182297, 37.006588, 32.909405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928978, -0.323155, 0.180472,
		0.277451, 0.930704, 0.238350,
		-0.244990, -0.171350, 0.954264,
		44.108799, 36.955181, 33.195683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801060, 37.322201, 32.980015>,  <44.280293, 37.075127, 32.527699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801060, 37.322201, 32.980015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629269, 36.999180, 33.141712>,  <44.526196, 36.805367, 33.238731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629269, 36.999180, 33.141712>,  <44.801060, 37.322201, 32.980015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629269, 36.999180, 33.141712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902294, -0.365080, 0.229307,
		-0.037597, 0.463226, 0.885442,
		-0.429479, -0.807551, 0.404240,
		44.500423, 36.756916, 33.262985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966568, 37.357296, 33.738766>,  <44.801060, 37.322201, 32.980015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966568, 37.357296, 33.738766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900337, 37.001358, 33.568703>,  <44.860600, 36.787796, 33.466663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900337, 37.001358, 33.568703>,  <44.966568, 37.357296, 33.738766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900337, 37.001358, 33.568703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917941, -0.296657, 0.263399,
		-0.360510, -0.346655, 0.865946,
		-0.165581, -0.889845, -0.425156,
		44.850662, 36.734406, 33.441154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502056, 36.931454, 34.100624>,  <44.966568, 37.357296, 33.738766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502056, 36.931454, 34.100624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327782, 36.747028, 33.791405>,  <45.223217, 36.636375, 33.605873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327782, 36.747028, 33.791405>,  <45.502056, 36.931454, 34.100624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327782, 36.747028, 33.791405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848131, -0.497887, -0.181056,
		-0.301411, -0.734527, 0.607964,
		-0.435688, -0.461062, -0.773045,
		45.197075, 36.608711, 33.559490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574223, 36.239265, 34.216534>,  <45.502056, 36.931454, 34.100624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574223, 36.239265, 34.216534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522640, 36.284218, 33.822430>,  <45.491692, 36.311192, 33.585968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522640, 36.284218, 33.822430>,  <45.574223, 36.239265, 34.216534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522640, 36.284218, 33.822430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684890, -0.708429, -0.170451,
		-0.717143, -0.696777, 0.014389,
		-0.128959, 0.112383, -0.985261,
		45.483952, 36.317932, 33.526852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283100, 35.597927, 33.891167>,  <45.574223, 36.239265, 34.216534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283100, 35.597927, 33.891167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534031, 35.827332, 33.680435>,  <45.684589, 35.964973, 33.553997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534031, 35.827332, 33.680435>,  <45.283100, 35.597927, 33.891167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534031, 35.827332, 33.680435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623883, -0.774992, -0.100780,
		-0.466085, -0.265455, -0.843978,
		0.627324, 0.573516, -0.526825,
		45.722229, 35.999386, 33.522388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421562, 35.383453, 33.179138>,  <45.283100, 35.597927, 33.891167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421562, 35.383453, 33.179138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720673, 35.542374, 33.391926>,  <45.900139, 35.637726, 33.519600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720673, 35.542374, 33.391926>,  <45.421562, 35.383453, 33.179138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720673, 35.542374, 33.391926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459362, -0.888076, 0.017539,
		0.479395, 0.231251, -0.846583,
		0.747774, 0.397296, 0.531967,
		45.945004, 35.661564, 33.551517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.140781, 35.302208, 32.873417>,  <45.421562, 35.383453, 33.179138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.140781, 35.302208, 32.873417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173676, 35.336349, 33.270596>,  <46.193413, 35.356834, 33.508904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173676, 35.336349, 33.270596>,  <46.140781, 35.302208, 32.873417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173676, 35.336349, 33.270596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608656, -0.793235, 0.017781,
		0.789161, 0.602903, -0.117184,
		0.082234, 0.085356, 0.992951,
		46.198345, 35.361958, 33.568481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.906429, 35.358475, 33.024906>,  <46.140781, 35.302208, 32.873417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.906429, 35.358475, 33.024906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678791, 35.215824, 33.321270>,  <46.542210, 35.130234, 33.499088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678791, 35.215824, 33.321270>,  <46.906429, 35.358475, 33.024906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.678791, 35.215824, 33.321270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642118, -0.755585, 0.129522,
		0.513628, 0.549461, 0.658999,
		-0.569097, -0.356629, 0.740908,
		46.508060, 35.108837, 33.543541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470531, 35.675182, 32.679649>,  <46.906429, 35.358475, 33.024906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470531, 35.675182, 32.679649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571358, 35.430527, 32.379688>,  <47.631851, 35.283733, 32.199711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571358, 35.430527, 32.379688>,  <47.470531, 35.675182, 32.679649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.571358, 35.430527, 32.379688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636888, -0.688292, 0.347316,
		-0.728587, 0.390060, -0.563040,
		0.252061, -0.611643, -0.749905,
		47.646976, 35.247032, 32.154716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.869957, 35.416164, 32.276390>,  <47.470531, 35.675182, 32.679649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.869957, 35.416164, 32.276390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164436, 35.145542, 32.283134>,  <47.341125, 34.983170, 32.287182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164436, 35.145542, 32.283134>,  <46.869957, 35.416164, 32.276390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.164436, 35.145542, 32.283134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621479, -0.665983, 0.412589,
		-0.267908, -0.314228, -0.910761,
		0.736199, -0.676555, 0.016864,
		47.385296, 34.942577, 32.288193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.458965, 34.898102, 32.300106>,  <46.869957, 35.416164, 32.276390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.458965, 34.898102, 32.300106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.837070, 34.784405, 32.364216>,  <47.063934, 34.716187, 32.402683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.837070, 34.784405, 32.364216>,  <46.458965, 34.898102, 32.300106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837070, 34.784405, 32.364216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322845, -0.886053, 0.332687,
		0.047447, -0.366220, -0.929318,
		0.945261, -0.284240, 0.160273,
		47.120647, 34.699131, 32.412296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450783, 34.320808, 31.987316>,  <46.458965, 34.898102, 32.300106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450783, 34.320808, 31.987316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731789, 34.328869, 32.271870>,  <46.900394, 34.333706, 32.442600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731789, 34.328869, 32.271870>,  <46.450783, 34.320808, 31.987316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.731789, 34.328869, 32.271870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265155, -0.920214, 0.287922,
		0.660427, -0.390896, -0.641121,
		0.702516, 0.020155, 0.711382,
		46.942543, 34.334915, 32.485283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.896751, 33.636684, 31.944277>,  <46.450783, 34.320808, 31.987316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.896751, 33.636684, 31.944277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864571, 33.819859, 32.298412>,  <46.845261, 33.929764, 32.510895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864571, 33.819859, 32.298412>,  <46.896751, 33.636684, 31.944277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.864571, 33.819859, 32.298412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418266, -0.821742, 0.387032,
		0.904755, -0.339169, 0.257650,
		-0.080453, 0.457935, 0.885338,
		46.840435, 33.957237, 32.564014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679386, 33.052135, 31.497171>,  <46.896751, 33.636684, 31.944277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679386, 33.052135, 31.497171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.003151, 32.896496, 31.673107>,  <47.197411, 32.803112, 31.778669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.003151, 32.896496, 31.673107>,  <46.679386, 33.052135, 31.497171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.003151, 32.896496, 31.673107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172167, 0.558849, 0.811201,
		-0.561440, -0.732320, 0.385348,
		0.809409, -0.389096, 0.439841,
		47.245975, 32.779766, 31.805059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467464, 32.867058, 32.142323>,  <46.679386, 33.052135, 31.497171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467464, 32.867058, 32.142323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865356, 32.903637, 32.160873>,  <47.104092, 32.925583, 32.172005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865356, 32.903637, 32.160873>,  <46.467464, 32.867058, 32.142323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865356, 32.903637, 32.160873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085048, 0.483191, 0.871375,
		0.057273, -0.870727, 0.488421,
		0.994730, 0.091445, 0.046380,
		47.163776, 32.931072, 32.174786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.740086, 32.683083, 32.851887>,  <46.467464, 32.867058, 32.142323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.740086, 32.683083, 32.851887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959572, 32.974655, 32.688145>,  <47.091263, 33.149597, 32.589897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959572, 32.974655, 32.688145>,  <46.740086, 32.683083, 32.851887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959572, 32.974655, 32.688145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061404, 0.523476, 0.849825,
		0.833753, -0.441174, 0.331997,
		0.548713, 0.728930, -0.409360,
		47.124187, 33.193333, 32.565338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.406231, 32.881802, 33.203365>,  <46.740086, 32.683083, 32.851887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.406231, 32.881802, 33.203365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309799, 33.216270, 33.006306>,  <47.251942, 33.416950, 32.888069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309799, 33.216270, 33.006306>,  <47.406231, 32.881802, 33.203365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.309799, 33.216270, 33.006306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045079, 0.516721, 0.854966,
		0.969458, 0.183907, -0.162264,
		-0.241080, 0.836168, -0.492649,
		47.237476, 33.467121, 32.858509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.828205, 33.332905, 33.520916>,  <47.406231, 32.881802, 33.203365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.828205, 33.332905, 33.520916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552948, 33.546921, 33.324883>,  <47.387794, 33.675331, 33.207260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552948, 33.546921, 33.324883>,  <47.828205, 33.332905, 33.520916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.552948, 33.546921, 33.324883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057283, 0.713403, 0.698409,
		0.723308, 0.452533, -0.521574,
		-0.688145, 0.535043, -0.490088,
		47.346504, 33.707432, 33.177856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.677513, 33.784801, 33.933880>,  <47.828205, 33.332905, 33.520916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.677513, 33.784801, 33.933880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523972, 33.805614, 34.302650>,  <47.431847, 33.818104, 34.523914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523972, 33.805614, 34.302650>,  <47.677513, 33.784801, 33.933880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.523972, 33.805614, 34.302650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364179, 0.926013, 0.099367,
		-0.848545, 0.373889, -0.374405,
		-0.383856, 0.052033, 0.921926,
		47.408813, 33.821224, 34.579227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.187504, 34.398407, 34.103825>,  <47.677513, 33.784801, 33.933880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.187504, 34.398407, 34.103825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380871, 34.279846, 34.433296>,  <47.496891, 34.208710, 34.630981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380871, 34.279846, 34.433296>,  <47.187504, 34.398407, 34.103825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.380871, 34.279846, 34.433296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394715, 0.913656, 0.097119,
		-0.781348, 0.278170, 0.558675,
		0.483422, -0.296401, 0.823681,
		47.525898, 34.190926, 34.680401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079773, 34.905560, 34.694122>,  <47.187504, 34.398407, 34.103825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079773, 34.905560, 34.694122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414261, 34.686249, 34.698483>,  <47.614956, 34.554661, 34.701099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414261, 34.686249, 34.698483>,  <47.079773, 34.905560, 34.694122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.414261, 34.686249, 34.698483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548135, 0.836276, 0.013836,
		-0.016704, -0.005594, 0.999845,
		0.836223, -0.548281, 0.010903,
		47.665127, 34.521763, 34.701752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.533669, 35.262367, 35.180363>,  <47.079773, 34.905560, 34.694122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.533669, 35.262367, 35.180363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764656, 35.017307, 34.964516>,  <47.903248, 34.870270, 34.835007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764656, 35.017307, 34.964516>,  <47.533669, 35.262367, 35.180363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.764656, 35.017307, 34.964516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769389, 0.629464, 0.108699,
		0.273076, -0.477947, 0.834863,
		0.577469, -0.612651, -0.539618,
		47.937897, 34.833511, 34.802631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.534344, 39.765179, 19.770716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.142612, 39.825382, 19.824764>,  <31.907574, 39.861504, 19.857193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.142612, 39.825382, 19.824764>,  <32.534344, 39.765179, 19.770716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142612, 39.825382, 19.824764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140557, 0.026020, 0.989731,
		0.145445, 0.988267, -0.046637,
		-0.979331, 0.150507, 0.135123,
		31.848814, 39.870533, 19.865301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451324, 40.259487, 20.290859>,  <32.534344, 39.765179, 19.770716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451324, 40.259487, 20.290859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.111557, 40.048496, 20.284504>,  <31.907696, 39.921902, 20.280691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.111557, 40.048496, 20.284504>,  <32.451324, 40.259487, 20.290859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111557, 40.048496, 20.284504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033865, -0.084526, 0.995846,
		-0.526626, 0.845356, 0.089661,
		-0.849422, -0.527474, -0.015886,
		31.856730, 39.890255, 20.279737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155724, 40.471992, 20.933361>,  <32.451324, 40.259487, 20.290859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155724, 40.471992, 20.933361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.974854, 40.129726, 20.832659>,  <31.866331, 39.924366, 20.772238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.974854, 40.129726, 20.832659>,  <32.155724, 40.471992, 20.933361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974854, 40.129726, 20.832659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086924, -0.238640, 0.967210,
		-0.887684, 0.459232, 0.033529,
		-0.452175, -0.855662, -0.251755,
		31.839201, 39.873028, 20.757132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627674, 40.374229, 21.444220>,  <32.155724, 40.471992, 20.933361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627674, 40.374229, 21.444220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.663416, 40.002872, 21.299938>,  <31.684860, 39.780060, 21.213369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.663416, 40.002872, 21.299938>,  <31.627674, 40.374229, 21.444220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663416, 40.002872, 21.299938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138319, -0.370209, 0.918593,
		-0.986349, -0.032188, -0.161494,
		0.089354, -0.928390, -0.360703,
		31.690222, 39.724354, 21.191727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049633, 40.070702, 21.799553>,  <31.627674, 40.374229, 21.444220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049633, 40.070702, 21.799553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.318047, 39.805252, 21.667301>,  <31.479095, 39.645981, 21.587950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.318047, 39.805252, 21.667301>,  <31.049633, 40.070702, 21.799553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318047, 39.805252, 21.667301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055937, -0.489981, 0.869937,
		-0.739313, -0.565263, -0.365915,
		0.671034, -0.663624, -0.330630,
		31.519358, 39.606163, 21.568111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756626, 39.340775, 21.899530>,  <31.049633, 40.070702, 21.799553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756626, 39.340775, 21.899530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.155151, 39.331268, 21.866554>,  <31.394266, 39.325565, 21.846769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.155151, 39.331268, 21.866554>,  <30.756626, 39.340775, 21.899530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155151, 39.331268, 21.866554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058954, -0.508493, 0.859046,
		-0.062335, -0.860738, -0.505217,
		0.996313, -0.023765, -0.082441,
		31.454044, 39.324139, 21.841822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951685, 38.665092, 22.117765>,  <30.756626, 39.340775, 21.899530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951685, 38.665092, 22.117765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.288452, 38.880302, 22.134253>,  <31.490513, 39.009430, 22.144144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.288452, 38.880302, 22.134253>,  <30.951685, 38.665092, 22.117765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288452, 38.880302, 22.134253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214044, -0.403101, 0.889772,
		0.495338, -0.740293, -0.454540,
		0.841918, 0.538029, 0.041216,
		31.541027, 39.041710, 22.146618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487745, 38.228298, 22.185074>,  <30.951685, 38.665092, 22.117765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487745, 38.228298, 22.185074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.586761, 38.583637, 22.339767>,  <31.646172, 38.796841, 22.432583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.586761, 38.583637, 22.339767>,  <31.487745, 38.228298, 22.185074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586761, 38.583637, 22.339767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073049, -0.415133, 0.906823,
		0.966120, -0.196223, -0.167655,
		0.247539, 0.888348, 0.386734,
		31.661024, 38.850140, 22.455788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977348, 38.061733, 22.698034>,  <31.487745, 38.228298, 22.185074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977348, 38.061733, 22.698034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.912725, 38.444672, 22.793861>,  <31.873951, 38.674435, 22.851358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.912725, 38.444672, 22.793861>,  <31.977348, 38.061733, 22.698034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912725, 38.444672, 22.793861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139530, -0.218159, 0.965887,
		0.976949, 0.189474, -0.098333,
		-0.161558, 0.957343, 0.239568,
		31.864258, 38.731876, 22.865732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622246, 38.381405, 22.922554>,  <31.977348, 38.061733, 22.698034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622246, 38.381405, 22.922554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.345016, 38.619148, 23.085718>,  <32.178680, 38.761795, 23.183617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.345016, 38.619148, 23.085718>,  <32.622246, 38.381405, 22.922554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345016, 38.619148, 23.085718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396808, -0.157861, 0.904225,
		0.601830, 0.788552, -0.126438,
		-0.693069, 0.594362, 0.407909,
		32.137096, 38.797455, 23.208092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000423, 38.924191, 23.261709>,  <32.622246, 38.381405, 22.922554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000423, 38.924191, 23.261709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.649376, 38.945465, 23.452267>,  <32.438747, 38.958229, 23.566601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.649376, 38.945465, 23.452267>,  <33.000423, 38.924191, 23.261709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649376, 38.945465, 23.452267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475801, -0.024105, 0.879223,
		0.058247, 0.998294, -0.004151,
		-0.877622, 0.053187, 0.476393,
		32.386089, 38.961422, 23.595184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946110, 39.482014, 23.788780>,  <33.000423, 38.924191, 23.261709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946110, 39.482014, 23.788780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.689278, 39.202530, 23.914976>,  <32.535179, 39.034840, 23.990694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.689278, 39.202530, 23.914976>,  <32.946110, 39.482014, 23.788780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689278, 39.202530, 23.914976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359791, 0.088755, 0.928802,
		-0.676965, 0.709878, 0.194402,
		-0.642081, -0.698711, 0.315492,
		32.496655, 38.992916, 24.009624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779041, 39.780880, 24.464415>,  <32.946110, 39.482014, 23.788780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779041, 39.780880, 24.464415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.671814, 39.396294, 24.440033>,  <32.607475, 39.165543, 24.425404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.671814, 39.396294, 24.440033>,  <32.779041, 39.780880, 24.464415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671814, 39.396294, 24.440033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004926, -0.064638, 0.997897,
		-0.963386, 0.267208, 0.022063,
		-0.268072, -0.961469, -0.060956,
		32.591393, 39.107853, 24.421747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426186, 39.617023, 25.079443>,  <32.779041, 39.780880, 24.464415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426186, 39.617023, 25.079443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.517986, 39.253170, 24.940943>,  <32.573067, 39.034859, 24.857843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.517986, 39.253170, 24.940943>,  <32.426186, 39.617023, 25.079443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517986, 39.253170, 24.940943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229485, -0.295144, 0.927484,
		-0.945868, -0.292318, 0.141011,
		0.229502, -0.909637, -0.346250,
		32.586838, 38.980278, 24.837069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071239, 39.188187, 25.510283>,  <32.426186, 39.617023, 25.079443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071239, 39.188187, 25.510283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.379131, 38.991463, 25.347485>,  <32.563866, 38.873428, 25.249805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.379131, 38.991463, 25.347485>,  <32.071239, 39.188187, 25.510283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379131, 38.991463, 25.347485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358660, -0.194242, 0.913035,
		-0.528098, -0.848758, 0.026880,
		0.769725, -0.491813, -0.406994,
		32.610050, 38.843918, 25.225386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173969, 38.671288, 25.999212>,  <32.071239, 39.188187, 25.510283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173969, 38.671288, 25.999212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.508919, 38.667713, 25.780588>,  <32.709888, 38.665569, 25.649414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.508919, 38.667713, 25.780588>,  <32.173969, 38.671288, 25.999212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508919, 38.667713, 25.780588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504218, -0.373543, 0.778608,
		-0.211123, -0.927570, -0.308288,
		0.837372, -0.008938, -0.546561,
		32.760132, 38.665031, 25.616619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454132, 37.945129, 26.086266>,  <32.173969, 38.671288, 25.999212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454132, 37.945129, 26.086266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751026, 38.202194, 26.010296>,  <32.929165, 38.356434, 25.964714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751026, 38.202194, 26.010296>,  <32.454132, 37.945129, 26.086266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751026, 38.202194, 26.010296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486058, -0.321177, 0.812768,
		0.461334, -0.695582, -0.550760,
		0.742239, 0.642659, -0.189924,
		32.973698, 38.394993, 25.953320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009750, 37.599857, 26.158442>,  <32.454132, 37.945129, 26.086266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009750, 37.599857, 26.158442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.155617, 37.969582, 26.203476>,  <33.243137, 38.191414, 26.230497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.155617, 37.969582, 26.203476>,  <33.009750, 37.599857, 26.158442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155617, 37.969582, 26.203476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519814, -0.302403, 0.798965,
		0.772536, -0.232831, -0.590744,
		0.364667, 0.924306, 0.112588,
		33.265018, 38.246872, 26.237253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587997, 37.395203, 26.364576>,  <33.009750, 37.599857, 26.158442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587997, 37.395203, 26.364576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.589863, 37.786053, 26.449629>,  <33.590981, 38.020561, 26.500660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.589863, 37.786053, 26.449629>,  <33.587997, 37.395203, 26.364576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589863, 37.786053, 26.449629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559618, -0.178767, 0.809240,
		0.828737, 0.115221, -0.547648,
		0.004660, 0.977121, 0.212631,
		33.591259, 38.079189, 26.513418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233234, 37.573818, 26.453543>,  <33.587997, 37.395203, 26.364576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233234, 37.573818, 26.453543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.000671, 37.837902, 26.643734>,  <33.861134, 37.996353, 26.757849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.000671, 37.837902, 26.643734>,  <34.233234, 37.573818, 26.453543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000671, 37.837902, 26.643734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540513, -0.123370, 0.832241,
		0.608117, 0.740876, -0.285125,
		-0.581411, 0.660214, 0.475477,
		33.826248, 38.035965, 26.786377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754017, 37.930233, 26.797297>,  <34.233234, 37.573818, 26.453543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754017, 37.930233, 26.797297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397274, 38.025337, 26.951210>,  <34.183228, 38.082397, 27.043558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397274, 38.025337, 26.951210>,  <34.754017, 37.930233, 26.797297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397274, 38.025337, 26.951210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410886, 0.070194, 0.908980,
		0.189107, 0.968785, -0.160294,
		-0.891859, 0.237757, 0.384786,
		34.129715, 38.096664, 27.066647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115726, 38.169823, 27.401136>,  <34.754017, 37.930233, 26.797297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115726, 38.169823, 27.401136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.505947, 38.225998, 27.468746>,  <35.740082, 38.259701, 27.509312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.505947, 38.225998, 27.468746>,  <35.115726, 38.169823, 27.401136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505947, 38.225998, 27.468746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142634, 0.180474, -0.973183,
		-0.167174, 0.973503, 0.156031,
		0.975555, 0.140436, 0.169025,
		35.798615, 38.268127, 27.519453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286121, 38.834400, 27.091549>,  <35.115726, 38.169823, 27.401136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286121, 38.834400, 27.091549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636787, 38.647907, 27.139017>,  <35.847187, 38.536011, 27.167498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636787, 38.647907, 27.139017>,  <35.286121, 38.834400, 27.091549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636787, 38.647907, 27.139017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225295, 0.179900, -0.957538,
		0.425087, 0.866177, 0.262752,
		0.876666, -0.466233, 0.118672,
		35.899788, 38.508038, 27.174618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786762, 39.296722, 26.809103>,  <35.286121, 38.834400, 27.091549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786762, 39.296722, 26.809103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960621, 38.938034, 26.842495>,  <36.064938, 38.722820, 26.862530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960621, 38.938034, 26.842495>,  <35.786762, 39.296722, 26.809103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960621, 38.938034, 26.842495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484032, 0.154430, -0.861315,
		0.759470, 0.414776, 0.501166,
		0.434648, -0.896723, 0.083480,
		36.091015, 38.669018, 26.867538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431210, 39.464474, 26.554340>,  <35.786762, 39.296722, 26.809103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431210, 39.464474, 26.554340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.379059, 39.069492, 26.518705>,  <36.347767, 38.832504, 26.497324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.379059, 39.069492, 26.518705>,  <36.431210, 39.464474, 26.554340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379059, 39.069492, 26.518705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435247, 0.023729, -0.899998,
		0.890821, -0.156115, 0.426692,
		-0.130378, -0.987454, -0.089086,
		36.339947, 38.773254, 26.491980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100082, 39.106674, 26.487757>,  <36.431210, 39.464474, 26.554340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100082, 39.106674, 26.487757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.800995, 38.896343, 26.325558>,  <36.621544, 38.770145, 26.228237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.800995, 38.896343, 26.325558>,  <37.100082, 39.106674, 26.487757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800995, 38.896343, 26.325558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427663, 0.085809, -0.899856,
		0.507962, -0.846254, 0.160715,
		-0.747716, -0.525824, -0.405499,
		36.576679, 38.738598, 26.203907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414585, 38.610287, 26.013266>,  <37.100082, 39.106674, 26.487757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414585, 38.610287, 26.013266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034519, 38.613998, 25.888622>,  <36.806480, 38.616226, 25.813837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034519, 38.613998, 25.888622>,  <37.414585, 38.610287, 26.013266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034519, 38.613998, 25.888622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310727, 0.108949, -0.944234,
		0.025182, -0.994004, -0.106405,
		-0.950166, 0.009285, -0.311608,
		36.749470, 38.616783, 25.795139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328716, 38.531059, 25.240143>,  <37.414585, 38.610287, 26.013266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328716, 38.531059, 25.240143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.940289, 38.623615, 25.263744>,  <36.707233, 38.679150, 25.277905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.940289, 38.623615, 25.263744>,  <37.328716, 38.531059, 25.240143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940289, 38.623615, 25.263744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021997, 0.159358, -0.986976,
		-0.237777, -0.959721, -0.149658,
		-0.971071, 0.231388, 0.059003,
		36.648968, 38.693031, 25.281445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107895, 38.447403, 24.569956>,  <37.328716, 38.531059, 25.240143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107895, 38.447403, 24.569956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.812042, 38.669266, 24.722425>,  <36.634529, 38.802383, 24.813908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.812042, 38.669266, 24.722425>,  <37.107895, 38.447403, 24.569956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812042, 38.669266, 24.722425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185772, 0.376110, -0.907761,
		-0.646861, -0.742223, -0.175144,
		-0.739635, 0.554659, 0.381175,
		36.590153, 38.835663, 24.836779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379463, 38.232033, 24.333527>,  <37.107895, 38.447403, 24.569956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379463, 38.232033, 24.333527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.334412, 38.615242, 24.438988>,  <36.307381, 38.845165, 24.502264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.334412, 38.615242, 24.438988>,  <36.379463, 38.232033, 24.333527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334412, 38.615242, 24.438988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413207, 0.196153, -0.889261,
		-0.903646, -0.209100, 0.373767,
		-0.112629, 0.958019, 0.263655,
		36.300625, 38.902649, 24.518084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656902, 38.411964, 24.119015>,  <36.379463, 38.232033, 24.333527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656902, 38.411964, 24.119015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861000, 38.754822, 24.147156>,  <35.983459, 38.960537, 24.164040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861000, 38.754822, 24.147156>,  <35.656902, 38.411964, 24.119015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861000, 38.754822, 24.147156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227262, 0.213276, -0.950192,
		-0.829458, 0.468844, 0.303620,
		0.510247, 0.857146, 0.070353,
		36.014072, 39.011967, 24.168262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289127, 39.080490, 24.063623>,  <35.656902, 38.411964, 24.119015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289127, 39.080490, 24.063623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655739, 39.200317, 23.957617>,  <35.875706, 39.272213, 23.894012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655739, 39.200317, 23.957617>,  <35.289127, 39.080490, 24.063623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655739, 39.200317, 23.957617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384029, 0.473906, -0.792423,
		-0.111793, 0.828053, 0.549392,
		0.916528, 0.299570, -0.265017,
		35.930698, 39.290188, 23.878111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106697, 39.550995, 23.665022>,  <35.289127, 39.080490, 24.063623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106697, 39.550995, 23.665022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501560, 39.540585, 23.601982>,  <35.738480, 39.534340, 23.564157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501560, 39.540585, 23.601982>,  <35.106697, 39.550995, 23.665022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501560, 39.540585, 23.601982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123686, 0.499805, -0.857261,
		0.101078, 0.865747, 0.490169,
		0.987160, -0.026023, -0.157600,
		35.797707, 39.532776, 23.554703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323368, 40.179966, 23.557398>,  <35.106697, 39.550995, 23.665022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323368, 40.179966, 23.557398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586372, 39.940018, 23.375044>,  <35.744175, 39.796047, 23.265633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586372, 39.940018, 23.375044>,  <35.323368, 40.179966, 23.557398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586372, 39.940018, 23.375044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116410, 0.516918, -0.848083,
		0.744395, 0.610695, 0.270049,
		0.657514, -0.599872, -0.455883,
		35.783627, 39.760056, 23.238279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733902, 40.657242, 23.113043>,  <35.323368, 40.179966, 23.557398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733902, 40.657242, 23.113043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768902, 40.290939, 22.956203>,  <35.789902, 40.071159, 22.862101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768902, 40.290939, 22.956203>,  <35.733902, 40.657242, 23.113043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768902, 40.290939, 22.956203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276279, 0.355857, -0.892769,
		0.957086, 0.186447, -0.221865,
		0.087502, -0.915753, -0.392097,
		35.795151, 40.016212, 22.838575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068798, 40.782936, 22.512058>,  <35.733902, 40.657242, 23.113043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068798, 40.782936, 22.512058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911934, 40.418163, 22.463751>,  <35.817814, 40.199299, 22.434767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911934, 40.418163, 22.463751>,  <36.068798, 40.782936, 22.512058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911934, 40.418163, 22.463751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316496, 0.257029, -0.913108,
		0.863735, -0.319865, -0.389421,
		-0.392164, -0.911933, -0.120769,
		35.794285, 40.144585, 22.427521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315998, 40.616039, 21.878710>,  <36.068798, 40.782936, 22.512058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315998, 40.616039, 21.878710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009052, 40.368580, 21.946144>,  <35.824883, 40.220104, 21.986605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009052, 40.368580, 21.946144>,  <36.315998, 40.616039, 21.878710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009052, 40.368580, 21.946144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231385, 0.021967, -0.972614,
		0.598002, -0.785361, -0.160002,
		-0.767368, -0.618648, 0.168584,
		35.778843, 40.182987, 21.996719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306519, 40.260803, 21.285709>,  <36.315998, 40.616039, 21.878710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306519, 40.260803, 21.285709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937336, 40.162979, 21.404596>,  <35.715824, 40.104286, 21.475927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937336, 40.162979, 21.404596>,  <36.306519, 40.260803, 21.285709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937336, 40.162979, 21.404596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307602, 0.004508, -0.951504,
		0.231361, -0.969624, -0.079388,
		-0.922959, -0.244561, 0.297215,
		35.660450, 40.089611, 21.493761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104649, 39.680565, 20.873898>,  <36.306519, 40.260803, 21.285709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104649, 39.680565, 20.873898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776241, 39.860229, 21.014853>,  <35.579197, 39.968029, 21.099426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776241, 39.860229, 21.014853>,  <36.104649, 39.680565, 20.873898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776241, 39.860229, 21.014853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445517, -0.118112, -0.887448,
		-0.356990, -0.885607, 0.297083,
		-0.821019, 0.449166, 0.352388,
		35.529934, 39.994980, 21.120569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569118, 39.208561, 20.796553>,  <36.104649, 39.680565, 20.873898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569118, 39.208561, 20.796553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.444702, 39.588718, 20.797890>,  <35.370052, 39.816811, 20.798693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.444702, 39.588718, 20.797890>,  <35.569118, 39.208561, 20.796553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444702, 39.588718, 20.797890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382510, -0.121964, -0.915866,
		-0.870024, -0.286147, 0.401470,
		-0.311037, 0.950392, 0.003343,
		35.351391, 39.873837, 20.798893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.100494, 39.491058, 20.783928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336578, 39.811413, 20.743446>,  <34.478230, 40.003624, 20.719158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336578, 39.811413, 20.743446>,  <34.100494, 39.491058, 20.783928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336578, 39.811413, 20.743446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642936, 0.390550, -0.658866,
		-0.488151, 0.453933, 0.745422,
		0.590205, 0.800884, -0.101202,
		34.513641, 40.051678, 20.713085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575546, 40.107182, 20.869101>,  <34.100494, 39.491058, 20.783928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575546, 40.107182, 20.869101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909534, 40.216839, 20.678244>,  <34.109928, 40.282631, 20.563728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909534, 40.216839, 20.678244>,  <33.575546, 40.107182, 20.869101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909534, 40.216839, 20.678244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550282, 0.420674, -0.721265,
		0.002995, 0.864801, 0.502106,
		0.834973, 0.274140, -0.477144,
		34.160027, 40.299080, 20.535101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345036, 40.676907, 20.633581>,  <33.575546, 40.107182, 20.869101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345036, 40.676907, 20.633581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.668678, 40.603867, 20.410152>,  <33.862865, 40.560043, 20.276094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.668678, 40.603867, 20.410152>,  <33.345036, 40.676907, 20.633581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668678, 40.603867, 20.410152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443050, 0.434905, -0.783942,
		0.386070, 0.881769, 0.270986,
		0.809108, -0.182596, -0.558572,
		33.911411, 40.549088, 20.242580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465157, 41.262203, 20.223583>,  <33.345036, 40.676907, 20.633581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465157, 41.262203, 20.223583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651688, 40.970203, 20.023729>,  <33.763607, 40.795002, 19.903816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651688, 40.970203, 20.023729>,  <33.465157, 41.262203, 20.223583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651688, 40.970203, 20.023729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455670, 0.285883, -0.842992,
		0.758222, 0.620781, -0.199324,
		0.466331, -0.730001, -0.499634,
		33.791588, 40.751202, 19.873838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560066, 41.545727, 19.585188>,  <33.465157, 41.262203, 20.223583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560066, 41.545727, 19.585188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630039, 41.159332, 19.509008>,  <33.672024, 40.927494, 19.463301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630039, 41.159332, 19.509008>,  <33.560066, 41.545727, 19.585188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630039, 41.159332, 19.509008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370623, 0.114598, -0.921686,
		0.912161, 0.231816, -0.337970,
		0.174931, -0.965986, -0.190448,
		33.682518, 40.869537, 19.451874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980759, 41.545845, 19.040989>,  <33.560066, 41.545727, 19.585188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980759, 41.545845, 19.040989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766308, 41.208927, 19.063282>,  <33.637638, 41.006775, 19.076658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766308, 41.208927, 19.063282>,  <33.980759, 41.545845, 19.040989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766308, 41.208927, 19.063282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199024, 0.061968, -0.978033,
		0.820339, -0.535443, -0.200860,
		-0.536128, -0.842295, 0.055731,
		33.605469, 40.956238, 19.080002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237751, 41.184456, 18.486776>,  <33.980759, 41.545845, 19.040989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237751, 41.184456, 18.486776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.890728, 41.007149, 18.576986>,  <33.682514, 40.900764, 18.631111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.890728, 41.007149, 18.576986>,  <34.237751, 41.184456, 18.486776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890728, 41.007149, 18.576986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170075, -0.161699, -0.972074,
		0.467352, -0.881686, 0.064895,
		-0.867558, -0.443264, 0.225523,
		33.630459, 40.874168, 18.644644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180904, 40.690521, 17.959442>,  <34.237751, 41.184456, 18.486776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180904, 40.690521, 17.959442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.805004, 40.707661, 18.095112>,  <33.579464, 40.717945, 18.176514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.805004, 40.707661, 18.095112>,  <34.180904, 40.690521, 17.959442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805004, 40.707661, 18.095112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341810, -0.136530, -0.929799,
		0.006473, -0.989709, 0.142947,
		-0.939747, 0.042842, 0.339177,
		33.523079, 40.720512, 18.196865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787762, 40.133938, 17.715603>,  <34.180904, 40.690521, 17.959442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787762, 40.133938, 17.715603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.493053, 40.392818, 17.793880>,  <33.316227, 40.548149, 17.840847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.493053, 40.392818, 17.793880>,  <33.787762, 40.133938, 17.715603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493053, 40.392818, 17.793880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337125, -0.100749, -0.936054,
		-0.586104, -0.755628, 0.292418,
		-0.736769, 0.647206, 0.195692,
		33.272022, 40.586979, 17.852589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191887, 39.877392, 17.456841>,  <33.787762, 40.133938, 17.715603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191887, 39.877392, 17.456841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113873, 40.269440, 17.471453>,  <33.067062, 40.504669, 17.480221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113873, 40.269440, 17.471453>,  <33.191887, 39.877392, 17.456841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113873, 40.269440, 17.471453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333567, -0.031259, -0.942208,
		-0.922330, -0.195951, 0.333031,
		-0.195037, 0.980115, 0.036532,
		33.055363, 40.563473, 17.482412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450367, 39.974880, 17.245806>,  <33.191887, 39.877392, 17.456841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450367, 39.974880, 17.245806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615211, 40.336010, 17.196699>,  <32.714119, 40.552689, 17.167234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615211, 40.336010, 17.196699>,  <32.450367, 39.974880, 17.245806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615211, 40.336010, 17.196699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424478, 0.071017, -0.902649,
		-0.806217, 0.424100, 0.412497,
		0.412107, 0.902827, -0.122766,
		32.738842, 40.606857, 17.159870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982342, 40.332638, 16.841858>,  <32.450367, 39.974880, 17.245806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982342, 40.332638, 16.841858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309525, 40.553265, 16.776482>,  <32.505833, 40.685642, 16.737255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309525, 40.553265, 16.776482>,  <31.982342, 40.332638, 16.841858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309525, 40.553265, 16.776482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321431, 0.202569, -0.925012,
		-0.477102, 0.809157, 0.342985,
		0.817958, 0.551571, -0.163441,
		32.554913, 40.718735, 16.727449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865452, 40.897217, 16.407799>,  <31.982342, 40.332638, 16.841858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865452, 40.897217, 16.407799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.261639, 40.872566, 16.358515>,  <32.499352, 40.857777, 16.328945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.261639, 40.872566, 16.358515>,  <31.865452, 40.897217, 16.407799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261639, 40.872566, 16.358515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096303, 0.329788, -0.939130,
		0.098510, 0.942041, 0.320708,
		0.990465, -0.061628, -0.123208,
		32.558777, 40.854076, 16.321552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179066, 41.508835, 16.257095>,  <31.865452, 40.897217, 16.407799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179066, 41.508835, 16.257095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.451794, 41.267029, 16.092325>,  <32.615433, 41.121944, 15.993464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.451794, 41.267029, 16.092325>,  <32.179066, 41.508835, 16.257095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451794, 41.267029, 16.092325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104853, 0.476535, -0.872880,
		0.723963, 0.638342, 0.261529,
		0.681824, -0.604511, -0.411926,
		32.656342, 41.085674, 15.968747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482540, 41.851063, 15.737355>,  <32.179066, 41.508835, 16.257095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482540, 41.851063, 15.737355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611835, 41.488926, 15.627177>,  <32.689411, 41.271645, 15.561070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611835, 41.488926, 15.627177>,  <32.482540, 41.851063, 15.737355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611835, 41.488926, 15.627177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142877, 0.241042, -0.959940,
		0.935470, 0.349642, -0.051439,
		0.323236, -0.905345, -0.275444,
		32.708805, 41.217323, 15.544544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945724, 41.977196, 15.132998>,  <32.482540, 41.851063, 15.737355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945724, 41.977196, 15.132998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873749, 41.584198, 15.113672>,  <32.830563, 41.348400, 15.102077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873749, 41.584198, 15.113672>,  <32.945724, 41.977196, 15.132998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873749, 41.584198, 15.113672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263875, 0.095525, -0.959815,
		0.947625, -0.159957, -0.276443,
		-0.179936, -0.982491, -0.048314,
		32.819767, 41.289452, 15.099178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398499, 41.684834, 14.608224>,  <32.945724, 41.977196, 15.132998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398499, 41.684834, 14.608224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.061676, 41.472622, 14.647176>,  <32.859581, 41.345295, 14.670547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.061676, 41.472622, 14.647176>,  <33.398499, 41.684834, 14.608224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061676, 41.472622, 14.647176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147146, 0.052249, -0.987734,
		0.518932, -0.846056, -0.122061,
		-0.842055, -0.530528, 0.097380,
		32.809059, 41.313465, 14.676390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490200, 41.143982, 14.112986>,  <33.398499, 41.684834, 14.608224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490200, 41.143982, 14.112986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.099026, 41.157913, 14.195380>,  <32.864323, 41.166271, 14.244817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.099026, 41.157913, 14.195380>,  <33.490200, 41.143982, 14.112986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099026, 41.157913, 14.195380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205647, 0.013136, -0.978538,
		-0.036787, -0.999307, -0.005683,
		-0.977935, 0.034829, 0.205988,
		32.805645, 41.168362, 14.257176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131794, 40.672810, 13.647368>,  <33.490200, 41.143982, 14.112986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131794, 40.672810, 13.647368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872608, 40.951344, 13.770827>,  <32.717094, 41.118462, 13.844903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872608, 40.951344, 13.770827>,  <33.131794, 40.672810, 13.647368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872608, 40.951344, 13.770827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411594, 0.020851, -0.911129,
		-0.640882, -0.717418, 0.273095,
		-0.647966, 0.696331, 0.308648,
		32.678219, 41.160244, 13.863421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556801, 40.467731, 13.256285>,  <33.131794, 40.672810, 13.647368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556801, 40.467731, 13.256285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.460011, 40.834892, 13.382083>,  <32.401936, 41.055187, 13.457561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.460011, 40.834892, 13.382083>,  <32.556801, 40.467731, 13.256285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460011, 40.834892, 13.382083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415726, 0.194790, -0.888385,
		-0.876709, -0.345712, 0.334461,
		-0.241976, 0.917900, 0.314495,
		32.387417, 41.110264, 13.476432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808683, 40.524849, 13.104769>,  <32.556801, 40.467731, 13.256285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808683, 40.524849, 13.104769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.930054, 40.904770, 13.135261>,  <32.002876, 41.132721, 13.153556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.930054, 40.904770, 13.135261>,  <31.808683, 40.524849, 13.104769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930054, 40.904770, 13.135261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498470, 0.226404, -0.836821,
		-0.812072, 0.215915, 0.542144,
		0.303426, 0.949801, 0.076229,
		32.021080, 41.189709, 13.158130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233023, 40.987469, 12.977771>,  <31.808683, 40.524849, 13.104769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233023, 40.987469, 12.977771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.589590, 41.136372, 12.874385>,  <31.803530, 41.225712, 12.812353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.589590, 41.136372, 12.874385>,  <31.233023, 40.987469, 12.977771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589590, 41.136372, 12.874385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281083, 0.006784, -0.959659,
		-0.355483, 0.928106, 0.110681,
		0.891417, 0.372253, -0.258464,
		31.857016, 41.248047, 12.796845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874308, 41.640095, 13.120054>,  <31.233023, 40.987469, 12.977771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874308, 41.640095, 13.120054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096155, 41.613602, 13.451839>,  <31.229263, 41.597706, 13.650910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096155, 41.613602, 13.451839>,  <30.874308, 41.640095, 13.120054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096155, 41.613602, 13.451839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281100, 0.953139, -0.111846,
		-0.783186, 0.295194, 0.547248,
		0.554619, -0.066235, 0.829464,
		31.262541, 41.593731, 13.700679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378469, 41.231667, 12.692195>,  <30.874308, 41.640095, 13.120054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378469, 41.231667, 12.692195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018974, 41.288929, 12.526412>,  <29.803276, 41.323288, 12.426942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018974, 41.288929, 12.526412>,  <30.378469, 41.231667, 12.692195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018974, 41.288929, 12.526412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421075, -0.018078, 0.906846,
		0.122327, 0.989535, 0.076526,
		-0.898739, 0.143155, -0.414457,
		29.749353, 41.331875, 12.402075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978233, 41.800144, 13.002385>,  <30.378469, 41.231667, 12.692195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978233, 41.800144, 13.002385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.699947, 41.551315, 12.858712>,  <29.532976, 41.402020, 12.772509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.699947, 41.551315, 12.858712>,  <29.978233, 41.800144, 13.002385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699947, 41.551315, 12.858712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469243, 0.014987, 0.882942,
		-0.543867, 0.782820, -0.302327,
		-0.695716, -0.622068, -0.359182,
		29.491232, 41.364697, 12.750957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340609, 42.183437, 13.116023>,  <29.978233, 41.800144, 13.002385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340609, 42.183437, 13.116023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.250418, 41.795238, 13.081858>,  <29.196302, 41.562321, 13.061358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.250418, 41.795238, 13.081858>,  <29.340609, 42.183437, 13.116023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250418, 41.795238, 13.081858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508085, 0.042333, 0.860266,
		-0.831270, 0.237368, -0.502640,
		-0.225478, -0.970497, -0.085413,
		29.182774, 41.504089, 13.056233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813951, 42.231533, 13.484257>,  <29.340609, 42.183437, 13.116023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813951, 42.231533, 13.484257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.906881, 41.843079, 13.462606>,  <28.962639, 41.610008, 13.449616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.906881, 41.843079, 13.462606>,  <28.813951, 42.231533, 13.484257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906881, 41.843079, 13.462606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244428, -0.112156, 0.963160,
		-0.941425, -0.210535, -0.263428,
		0.232323, -0.971132, -0.054126,
		28.976578, 41.551739, 13.446369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271517, 41.951580, 13.857705>,  <28.813951, 42.231533, 13.484257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271517, 41.951580, 13.857705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.568207, 41.683575, 13.845562>,  <28.746222, 41.522770, 13.838276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.568207, 41.683575, 13.845562>,  <28.271517, 41.951580, 13.857705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568207, 41.683575, 13.845562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028664, -0.013557, 0.999497,
		-0.670092, -0.742221, 0.009150,
		0.741724, -0.670018, -0.030359,
		28.790724, 41.482571, 13.836454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066847, 41.499485, 14.441276>,  <28.271517, 41.951580, 13.857705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066847, 41.499485, 14.441276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.451841, 41.439072, 14.351110>,  <28.682838, 41.402824, 14.297010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.451841, 41.439072, 14.351110>,  <28.066847, 41.499485, 14.441276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451841, 41.439072, 14.351110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204372, -0.142928, 0.968403,
		-0.178485, -0.978140, -0.106698,
		0.962484, -0.151039, -0.225415,
		28.740587, 41.393761, 14.283485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300243, 40.997223, 14.922762>,  <28.066847, 41.499485, 14.441276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300243, 40.997223, 14.922762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.648991, 41.133286, 14.781829>,  <28.858238, 41.214924, 14.697268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.648991, 41.133286, 14.781829>,  <28.300243, 40.997223, 14.922762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648991, 41.133286, 14.781829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433394, -0.200865, 0.878535,
		0.228068, -0.918666, -0.322550,
		0.871868, 0.340157, -0.352333,
		28.910551, 41.235332, 14.676128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848227, 40.573505, 15.142405>,  <28.300243, 40.997223, 14.922762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848227, 40.573505, 15.142405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.035364, 40.921455, 15.079869>,  <29.147648, 41.130226, 15.042348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.035364, 40.921455, 15.079869>,  <28.848227, 40.573505, 15.142405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035364, 40.921455, 15.079869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530068, -0.134622, 0.837201,
		0.707212, -0.474550, -0.524074,
		0.467845, 0.869873, -0.156337,
		29.175718, 41.182419, 15.032968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473473, 40.414280, 15.310953>,  <28.848227, 40.573505, 15.142405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473473, 40.414280, 15.310953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.454922, 40.813293, 15.332055>,  <29.443790, 41.052700, 15.344716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.454922, 40.813293, 15.332055>,  <29.473473, 40.414280, 15.310953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454922, 40.813293, 15.332055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409704, -0.029169, 0.911752,
		0.911039, 0.063899, -0.407339,
		-0.046378, 0.997530, 0.052754,
		29.441008, 41.112553, 15.347881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113247, 40.636501, 15.478568>,  <29.473473, 40.414280, 15.310953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113247, 40.636501, 15.478568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.894346, 40.948734, 15.599370>,  <29.763006, 41.136074, 15.671851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.894346, 40.948734, 15.599370>,  <30.113247, 40.636501, 15.478568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894346, 40.948734, 15.599370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461323, -0.019759, 0.887012,
		0.698355, 0.624739, -0.349288,
		-0.547250, 0.780584, 0.302005,
		29.730171, 41.182911, 15.689972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624380, 41.133915, 15.702550>,  <30.113247, 40.636501, 15.478568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624380, 41.133915, 15.702550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.264023, 41.222740, 15.851722>,  <30.047808, 41.276035, 15.941225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.264023, 41.222740, 15.851722>,  <30.624380, 41.133915, 15.702550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264023, 41.222740, 15.851722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397874, 0.079152, 0.914019,
		0.173453, 0.971814, -0.159662,
		-0.900894, 0.222065, 0.372931,
		29.993755, 41.289360, 15.963601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778028, 41.608627, 16.123482>,  <30.624380, 41.133915, 15.702550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778028, 41.608627, 16.123482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.404690, 41.516872, 16.233932>,  <30.180687, 41.461819, 16.300203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.404690, 41.516872, 16.233932>,  <30.778028, 41.608627, 16.123482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404690, 41.516872, 16.233932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292336, -0.039280, 0.955509,
		-0.208331, 0.972543, 0.103719,
		-0.933348, -0.229383, 0.276126,
		30.124685, 41.448059, 16.316771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740864, 41.871082, 16.751822>,  <30.778028, 41.608627, 16.123482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740864, 41.871082, 16.751822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418184, 41.635094, 16.765509>,  <30.224577, 41.493500, 16.773722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418184, 41.635094, 16.765509>,  <30.740864, 41.871082, 16.751822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418184, 41.635094, 16.765509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073964, -0.043351, 0.996318,
		-0.586316, 0.806259, 0.078608,
		-0.806699, -0.589972, 0.034217,
		30.176174, 41.458103, 16.775774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267439, 42.176556, 17.247461>,  <30.740864, 41.871082, 16.751822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267439, 42.176556, 17.247461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227640, 41.778713, 17.235781>,  <30.203760, 41.540009, 17.228771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227640, 41.778713, 17.235781>,  <30.267439, 42.176556, 17.247461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227640, 41.778713, 17.235781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117004, -0.040840, 0.992291,
		-0.988135, 0.095314, 0.120437,
		-0.099498, -0.994609, -0.029203,
		30.197790, 41.480331, 17.227020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979687, 42.077061, 17.882095>,  <30.267439, 42.176556, 17.247461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979687, 42.077061, 17.882095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122227, 41.725491, 17.755289>,  <30.207750, 41.514549, 17.679205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122227, 41.725491, 17.755289>,  <29.979687, 42.077061, 17.882095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122227, 41.725491, 17.755289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185428, -0.266017, 0.945966,
		-0.915769, -0.395877, 0.068183,
		0.356348, -0.878929, -0.317017,
		30.229132, 41.461811, 17.660185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856707, 41.702858, 18.455471>,  <29.979687, 42.077061, 17.882095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856707, 41.702858, 18.455471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.112612, 41.476295, 18.247669>,  <30.266155, 41.340359, 18.122988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.112612, 41.476295, 18.247669>,  <29.856707, 41.702858, 18.455471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112612, 41.476295, 18.247669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330411, -0.407593, 0.851291,
		-0.693927, -0.716273, -0.073614,
		0.639761, -0.566410, -0.519504,
		30.304541, 41.306374, 18.091818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805147, 40.958038, 18.698746>,  <29.856707, 41.702858, 18.455471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805147, 40.958038, 18.698746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177689, 40.989330, 18.556499>,  <30.401213, 41.008106, 18.471151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177689, 40.989330, 18.556499>,  <29.805147, 40.958038, 18.698746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177689, 40.989330, 18.556499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342651, -0.518714, 0.783279,
		-0.123184, -0.851361, -0.509912,
		0.931351, 0.078234, -0.355617,
		30.457094, 41.012802, 18.449814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085791, 40.326481, 18.898109>,  <29.805147, 40.958038, 18.698746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085791, 40.326481, 18.898109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413204, 40.533470, 18.798336>,  <30.609653, 40.657665, 18.738472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413204, 40.533470, 18.798336>,  <30.085791, 40.326481, 18.898109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413204, 40.533470, 18.798336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505053, -0.441376, 0.741693,
		0.273715, -0.733079, -0.622635,
		0.818536, 0.517477, -0.249433,
		30.658766, 40.688713, 18.723507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619577, 39.854984, 18.494854>,  <30.085791, 40.326481, 18.898109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619577, 39.854984, 18.494854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.778036, 40.150517, 18.712915>,  <30.873112, 40.327835, 18.843752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.778036, 40.150517, 18.712915>,  <30.619577, 39.854984, 18.494854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778036, 40.150517, 18.712915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538177, -0.667886, 0.514096,
		0.743931, 0.089731, -0.662204,
		0.396146, 0.738835, 0.545152,
		30.896879, 40.372166, 18.876461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449795, 39.700287, 18.548807>,  <30.619577, 39.854984, 18.494854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449795, 39.700287, 18.548807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.355867, 39.967834, 18.830935>,  <31.299511, 40.128365, 19.000212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.355867, 39.967834, 18.830935>,  <31.449795, 39.700287, 18.548807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355867, 39.967834, 18.830935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548851, -0.507638, 0.664128,
		0.802261, 0.543064, -0.247907,
		-0.234817, 0.668868, 0.705320,
		31.285421, 40.168495, 19.042530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066395, 39.654175, 18.948488>,  <31.449795, 39.700287, 18.548807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066395, 39.654175, 18.948488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.795992, 39.825230, 19.188538>,  <31.633751, 39.927864, 19.332567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.795992, 39.825230, 19.188538>,  <32.066395, 39.654175, 18.948488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795992, 39.825230, 19.188538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471995, -0.374134, 0.798276,
		0.565898, 0.822892, 0.051073,
		-0.676003, 0.427636, 0.600122,
		31.593191, 39.953522, 19.368574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.610630, 38.885788, 22.676464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.395473, 39.177303, 22.845951>,  <36.266380, 39.352211, 22.947643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.395473, 39.177303, 22.845951>,  <36.610630, 38.885788, 22.676464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395473, 39.177303, 22.845951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341486, -0.271176, 0.899917,
		0.770752, 0.628753, -0.103008,
		-0.537892, 0.728789, 0.423720,
		36.234104, 39.395939, 22.973066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092327, 39.253792, 23.212076>,  <36.610630, 38.885788, 22.676464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092327, 39.253792, 23.212076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.709236, 39.333084, 23.295469>,  <36.479382, 39.380661, 23.345505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.709236, 39.333084, 23.295469>,  <37.092327, 39.253792, 23.212076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709236, 39.333084, 23.295469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196476, -0.078658, 0.977349,
		0.210142, 0.976994, 0.036385,
		-0.957725, 0.198233, 0.208485,
		36.421917, 39.392555, 23.358015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126179, 39.742374, 23.739136>,  <37.092327, 39.253792, 23.212076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126179, 39.742374, 23.739136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.755222, 39.594616, 23.762806>,  <36.532650, 39.505962, 23.777008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.755222, 39.594616, 23.762806>,  <37.126179, 39.742374, 23.739136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755222, 39.594616, 23.762806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138697, -0.192593, 0.971427,
		-0.347444, 0.909096, 0.229842,
		-0.927387, -0.369395, 0.059173,
		36.477005, 39.483799, 23.780558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774498, 40.022610, 24.332331>,  <37.126179, 39.742374, 23.739136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774498, 40.022610, 24.332331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.557983, 39.695633, 24.253550>,  <36.428074, 39.499447, 24.206282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.557983, 39.695633, 24.253550>,  <36.774498, 40.022610, 24.332331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557983, 39.695633, 24.253550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016929, -0.223592, 0.974536,
		-0.840668, 0.530837, 0.107189,
		-0.541286, -0.817446, -0.196953,
		36.395599, 39.450397, 24.194464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217705, 40.136650, 24.833376>,  <36.774498, 40.022610, 24.332331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217705, 40.136650, 24.833376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.272934, 39.754402, 24.729275>,  <36.306072, 39.525055, 24.666813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.272934, 39.754402, 24.729275>,  <36.217705, 40.136650, 24.833376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272934, 39.754402, 24.729275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061738, -0.253956, 0.965243,
		-0.988496, -0.149342, 0.023933,
		0.138074, -0.955616, -0.260255,
		36.314358, 39.467716, 24.651197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862606, 39.745953, 25.363100>,  <36.217705, 40.136650, 24.833376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862606, 39.745953, 25.363100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.089226, 39.455814, 25.206697>,  <36.225197, 39.281731, 25.112856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.089226, 39.455814, 25.206697>,  <35.862606, 39.745953, 25.363100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089226, 39.455814, 25.206697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068762, -0.514469, 0.854747,
		-0.821152, -0.457372, -0.341350,
		0.566552, -0.725350, -0.391008,
		36.259190, 39.238209, 25.089396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497177, 39.173893, 25.407013>,  <35.862606, 39.745953, 25.363100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497177, 39.173893, 25.407013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.865341, 39.019981, 25.379295>,  <36.086239, 38.927635, 25.362665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.865341, 39.019981, 25.379295>,  <35.497177, 39.173893, 25.407013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865341, 39.019981, 25.379295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097296, -0.397090, 0.912608,
		-0.378669, -0.833225, -0.402920,
		0.920404, -0.384779, -0.069296,
		36.141464, 38.904549, 25.358507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428097, 38.431484, 25.573099>,  <35.497177, 39.173893, 25.407013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428097, 38.431484, 25.573099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.822983, 38.481846, 25.612217>,  <36.059914, 38.512062, 25.635687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.822983, 38.481846, 25.612217>,  <35.428097, 38.431484, 25.573099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822983, 38.481846, 25.612217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035253, -0.425840, 0.904112,
		0.155476, -0.895996, -0.415955,
		0.987210, 0.125904, 0.097795,
		36.119144, 38.519615, 25.641556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720486, 37.852325, 25.883808>,  <35.428097, 38.431484, 25.573099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720486, 37.852325, 25.883808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.971985, 38.147160, 25.982910>,  <36.122883, 38.324059, 26.042372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.971985, 38.147160, 25.982910>,  <35.720486, 37.852325, 25.883808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971985, 38.147160, 25.982910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093732, -0.388128, 0.916826,
		0.771941, -0.553228, -0.313123,
		0.628745, 0.737086, 0.247757,
		36.160610, 38.368286, 26.057238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153313, 37.492432, 26.302092>,  <35.720486, 37.852325, 25.883808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153313, 37.492432, 26.302092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211716, 37.883083, 26.365179>,  <36.246758, 38.117474, 26.403032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211716, 37.883083, 26.365179>,  <36.153313, 37.492432, 26.302092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211716, 37.883083, 26.365179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047567, -0.152314, 0.987187,
		0.988140, -0.151635, 0.024217,
		0.146004, 0.976630, 0.157720,
		36.255516, 38.176071, 26.412495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600151, 37.494701, 26.778326>,  <36.153313, 37.492432, 26.302092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600151, 37.494701, 26.778326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.485489, 37.876606, 26.809975>,  <36.416691, 38.105747, 26.828964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.485489, 37.876606, 26.809975>,  <36.600151, 37.494701, 26.778326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485489, 37.876606, 26.809975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035628, -0.093156, 0.995014,
		0.957372, 0.282405, 0.060719,
		-0.286653, 0.954762, 0.079123,
		36.399494, 38.163036, 26.833712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920879, 37.717152, 27.332232>,  <36.600151, 37.494701, 26.778326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920879, 37.717152, 27.332232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640297, 37.997566, 27.280844>,  <36.471947, 38.165813, 27.250011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640297, 37.997566, 27.280844>,  <36.920879, 37.717152, 27.332232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640297, 37.997566, 27.280844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226811, -0.048692, 0.972721,
		0.675656, 0.711463, 0.193158,
		-0.701460, 0.701035, -0.128468,
		36.429859, 38.207878, 27.242304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063160, 38.262283, 27.779116>,  <36.920879, 37.717152, 27.332232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063160, 38.262283, 27.779116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.669514, 38.250061, 27.709162>,  <36.433327, 38.242729, 27.667191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.669514, 38.250061, 27.709162>,  <37.063160, 38.262283, 27.779116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669514, 38.250061, 27.709162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167768, -0.162146, 0.972400,
		-0.058066, 0.986293, 0.154445,
		-0.984115, -0.030553, -0.174884,
		36.374279, 38.240894, 27.656696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663612, 38.711853, 28.173891>,  <37.063160, 38.262283, 27.779116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663612, 38.711853, 28.173891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.402069, 38.425770, 28.075134>,  <36.245144, 38.254120, 28.015881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.402069, 38.425770, 28.075134>,  <36.663612, 38.711853, 28.173891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402069, 38.425770, 28.075134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111950, -0.231271, 0.966427,
		-0.748293, 0.659542, 0.071150,
		-0.653854, -0.715205, -0.246894,
		36.205914, 38.211208, 28.001066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813263, 39.157253, 28.631142>,  <36.663612, 38.711853, 28.173891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813263, 39.157253, 28.631142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864754, 39.479576, 28.862349>,  <36.895649, 39.672970, 29.001072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864754, 39.479576, 28.862349>,  <36.813263, 39.157253, 28.631142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864754, 39.479576, 28.862349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548986, 0.543311, -0.635160,
		-0.825859, -0.235559, 0.512317,
		0.128730, 0.805807, 0.578016,
		36.903374, 39.721317, 29.035753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181293, 39.549660, 28.745134>,  <36.813263, 39.157253, 28.631142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181293, 39.549660, 28.745134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463421, 39.824993, 28.812927>,  <36.632698, 39.990192, 28.853603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463421, 39.824993, 28.812927>,  <36.181293, 39.549660, 28.745134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463421, 39.824993, 28.812927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455595, 0.623316, -0.635539,
		-0.543104, 0.371041, 0.753237,
		0.705316, 0.688335, 0.169481,
		36.675014, 40.031494, 28.863771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884853, 40.214184, 28.977251>,  <36.181293, 39.549660, 28.745134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884853, 40.214184, 28.977251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.237434, 40.298420, 28.808165>,  <36.448982, 40.348961, 28.706713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.237434, 40.298420, 28.808165>,  <35.884853, 40.214184, 28.977251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237434, 40.298420, 28.808165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454234, 0.623050, -0.636773,
		0.129275, 0.753299, 0.644848,
		0.881453, 0.210593, -0.422718,
		36.501869, 40.361599, 28.681349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850311, 40.879215, 28.878780>,  <35.884853, 40.214184, 28.977251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850311, 40.879215, 28.878780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.139309, 40.763973, 28.627384>,  <36.312706, 40.694828, 28.476547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.139309, 40.763973, 28.627384>,  <35.850311, 40.879215, 28.878780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139309, 40.763973, 28.627384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405057, 0.560298, -0.722492,
		0.560298, 0.776569, 0.288110,
		0.722492, -0.288110, -0.628488,
		36.356056, 40.677540, 28.438837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004978, 41.527740, 28.510988>,  <35.850311, 40.879215, 28.878780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004978, 41.527740, 28.510988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.158165, 41.228348, 28.294428>,  <36.250076, 41.048714, 28.164492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.158165, 41.228348, 28.294428>,  <36.004978, 41.527740, 28.510988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158165, 41.228348, 28.294428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162184, 0.522500, -0.837072,
		0.909414, 0.408377, 0.078709,
		0.382967, -0.748480, -0.541401,
		36.273056, 41.003803, 28.132008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282974, 41.898964, 27.856367>,  <36.004978, 41.527740, 28.510988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282974, 41.898964, 27.856367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.275089, 41.512867, 27.752129>,  <36.270359, 41.281208, 27.689585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.275089, 41.512867, 27.752129>,  <36.282974, 41.898964, 27.856367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275089, 41.512867, 27.752129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255709, 0.256846, -0.932010,
		0.966553, 0.048269, -0.251884,
		-0.019708, -0.965246, -0.260598,
		36.269176, 41.223293, 27.673950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715496, 41.815105, 27.190525>,  <36.282974, 41.898964, 27.856367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715496, 41.815105, 27.190525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.472717, 41.498344, 27.217356>,  <36.327049, 41.308289, 27.233454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.472717, 41.498344, 27.217356>,  <36.715496, 41.815105, 27.190525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472717, 41.498344, 27.217356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178847, 0.053867, -0.982401,
		0.774354, -0.608265, -0.174325,
		-0.606951, -0.791904, 0.067074,
		36.290630, 41.260773, 27.237478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919952, 41.289085, 26.636969>,  <36.715496, 41.815105, 27.190525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919952, 41.289085, 26.636969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.540688, 41.219936, 26.743633>,  <36.313129, 41.178448, 26.807632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.540688, 41.219936, 26.743633>,  <36.919952, 41.289085, 26.636969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540688, 41.219936, 26.743633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249667, -0.113945, -0.961604,
		0.196617, -0.978332, 0.064878,
		-0.948160, -0.172869, 0.266660,
		36.256241, 41.168076, 26.823631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642864, 40.735088, 26.195133>,  <36.919952, 41.289085, 26.636969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642864, 40.735088, 26.195133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.330677, 40.950733, 26.321766>,  <36.143364, 41.080120, 26.397745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.330677, 40.950733, 26.321766>,  <36.642864, 40.735088, 26.195133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330677, 40.950733, 26.321766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359031, 0.028057, -0.932904,
		-0.511823, -0.841766, 0.171661,
		-0.780470, 0.539114, 0.316580,
		36.096535, 41.112469, 26.416740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199978, 40.580154, 25.576679>,  <36.642864, 40.735088, 26.195133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199978, 40.580154, 25.576679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.015869, 40.867168, 25.785786>,  <35.905403, 41.039379, 25.911249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.015869, 40.867168, 25.785786>,  <36.199978, 40.580154, 25.576679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015869, 40.867168, 25.785786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348100, 0.395829, -0.849792,
		-0.816685, -0.573113, 0.067585,
		-0.460274, 0.717538, 0.522768,
		35.877789, 41.082432, 25.942616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490444, 40.629303, 25.306824>,  <36.199978, 40.580154, 25.576679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490444, 40.629303, 25.306824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.572445, 40.974537, 25.491459>,  <35.621647, 41.181675, 25.602240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.572445, 40.974537, 25.491459>,  <35.490444, 40.629303, 25.306824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572445, 40.974537, 25.491459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367448, 0.504976, -0.781013,
		-0.907169, -0.009499, 0.420659,
		0.205004, 0.863081, 0.461589,
		35.633945, 41.233459, 25.629936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844944, 41.005566, 25.271568>,  <35.490444, 40.629303, 25.306824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844944, 41.005566, 25.271568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.148949, 41.260147, 25.324186>,  <35.331352, 41.412895, 25.355757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.148949, 41.260147, 25.324186>,  <34.844944, 41.005566, 25.271568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148949, 41.260147, 25.324186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263671, 0.486957, -0.832677,
		-0.594017, 0.598162, 0.537908,
		0.760014, 0.636455, 0.131543,
		35.376953, 41.451084, 25.363649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569466, 41.559505, 25.121817>,  <34.844944, 41.005566, 25.271568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569466, 41.559505, 25.121817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.948807, 41.683514, 25.094952>,  <35.176411, 41.757919, 25.078833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.948807, 41.683514, 25.094952>,  <34.569466, 41.559505, 25.121817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948807, 41.683514, 25.094952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226199, 0.512491, -0.828364,
		-0.222385, 0.800777, 0.556149,
		0.948356, 0.310016, -0.067164,
		35.233315, 41.776520, 25.074802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651226, 42.331833, 25.100975>,  <34.569466, 41.559505, 25.121817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651226, 42.331833, 25.100975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.002861, 42.206448, 24.957338>,  <35.213840, 42.131218, 24.871157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.002861, 42.206448, 24.957338>,  <34.651226, 42.331833, 25.100975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002861, 42.206448, 24.957338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184231, 0.471367, -0.862480,
		0.439618, 0.824352, 0.356624,
		0.879087, -0.313461, -0.359093,
		35.266586, 42.112408, 24.849611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241013, 42.951214, 25.270670>,  <34.651226, 42.331833, 25.100975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241013, 42.951214, 25.270670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.871830, 42.950226, 25.116716>,  <33.650318, 42.949635, 25.024343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.871830, 42.950226, 25.116716>,  <34.241013, 42.951214, 25.270670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871830, 42.950226, 25.116716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368303, -0.284757, 0.885023,
		-0.111786, 0.958597, 0.261910,
		-0.922961, -0.002471, -0.384886,
		33.594940, 42.949486, 25.001251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845787, 43.351151, 25.682005>,  <34.241013, 42.951214, 25.270670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845787, 43.351151, 25.682005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.584702, 43.112305, 25.495495>,  <33.428051, 42.968998, 25.383589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.584702, 43.112305, 25.495495>,  <33.845787, 43.351151, 25.682005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584702, 43.112305, 25.495495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427478, -0.217848, 0.877385,
		-0.625479, 0.772005, -0.113062,
		-0.652716, -0.597118, -0.466275,
		33.388885, 42.933170, 25.355612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267719, 43.376564, 26.096268>,  <33.845787, 43.351151, 25.682005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267719, 43.376564, 26.096268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.188389, 43.041340, 25.892965>,  <33.140789, 42.840206, 25.770985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.188389, 43.041340, 25.892965>,  <33.267719, 43.376564, 26.096268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188389, 43.041340, 25.892965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440222, -0.387142, 0.810140,
		-0.875711, 0.384419, -0.292150,
		-0.198329, -0.838059, -0.508254,
		33.128891, 42.789921, 25.740490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524811, 43.170509, 26.203842>,  <33.267719, 43.376564, 26.096268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524811, 43.170509, 26.203842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.707226, 42.839069, 26.073952>,  <32.816673, 42.640205, 25.996017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.707226, 42.839069, 26.073952>,  <32.524811, 43.170509, 26.203842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707226, 42.839069, 26.073952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348501, -0.502006, 0.791541,
		-0.818888, -0.247805, -0.517702,
		0.456037, -0.828603, -0.324726,
		32.844036, 42.590488, 25.976534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071026, 42.647659, 26.425812>,  <32.524811, 43.170509, 26.203842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071026, 42.647659, 26.425812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.422176, 42.469215, 26.356148>,  <32.632866, 42.362148, 26.314350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.422176, 42.469215, 26.356148>,  <32.071026, 42.647659, 26.425812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422176, 42.469215, 26.356148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083263, -0.500309, 0.861834,
		-0.471606, -0.742077, -0.476350,
		0.877870, -0.446108, -0.174161,
		32.685539, 42.335384, 26.303900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981184, 41.922173, 26.617067>,  <32.071026, 42.647659, 26.425812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981184, 41.922173, 26.617067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.375343, 41.983566, 26.646551>,  <32.611839, 42.020401, 26.664242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.375343, 41.983566, 26.646551>,  <31.981184, 41.922173, 26.617067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375343, 41.983566, 26.646551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034835, -0.605482, 0.795096,
		0.166665, -0.780918, -0.601988,
		0.985398, 0.153485, 0.073709,
		32.670963, 42.029613, 26.668663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387524, 41.214603, 26.757317>,  <31.981184, 41.922173, 26.617067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387524, 41.214603, 26.757317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.626945, 41.501354, 26.900324>,  <32.770599, 41.673405, 26.986128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.626945, 41.501354, 26.900324>,  <32.387524, 41.214603, 26.757317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626945, 41.501354, 26.900324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163688, -0.546324, 0.821424,
		0.784184, -0.433142, -0.444347,
		0.598550, 0.716881, 0.357518,
		32.806511, 41.716419, 27.007580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965874, 40.848492, 27.161182>,  <32.387524, 41.214603, 26.757317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965874, 40.848492, 27.161182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.976295, 41.228153, 27.286678>,  <32.982548, 41.455948, 27.361975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.976295, 41.228153, 27.286678>,  <32.965874, 40.848492, 27.161182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976295, 41.228153, 27.286678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090976, -0.314794, 0.944790,
		0.995512, 0.003930, -0.094551,
		0.026051, 0.949152, 0.313739,
		32.984112, 41.512897, 27.380800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557148, 40.878830, 27.473658>,  <32.965874, 40.848492, 27.161182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557148, 40.878830, 27.473658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.326832, 41.164089, 27.633600>,  <33.188641, 41.335243, 27.729565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.326832, 41.164089, 27.633600>,  <33.557148, 40.878830, 27.473658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326832, 41.164089, 27.633600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217073, -0.338166, 0.915709,
		0.788255, 0.614054, 0.039907,
		-0.575790, 0.713149, 0.399856,
		33.154095, 41.378033, 27.753557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954014, 41.043022, 28.098797>,  <33.557148, 40.878830, 27.473658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954014, 41.043022, 28.098797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.595276, 41.215595, 28.137875>,  <33.380035, 41.319138, 28.161322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.595276, 41.215595, 28.137875>,  <33.954014, 41.043022, 28.098797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595276, 41.215595, 28.137875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028129, -0.276028, 0.960738,
		0.441459, 0.858880, 0.259689,
		-0.896840, 0.431431, 0.097696,
		33.326225, 41.345024, 28.167183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011219, 41.426781, 28.692244>,  <33.954014, 41.043022, 28.098797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011219, 41.426781, 28.692244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.619305, 41.363968, 28.642668>,  <33.384155, 41.326283, 28.612923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.619305, 41.363968, 28.642668>,  <34.011219, 41.426781, 28.692244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619305, 41.363968, 28.642668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086120, -0.228119, 0.969817,
		-0.180561, 0.960887, 0.209984,
		-0.979786, -0.157027, -0.123941,
		33.325367, 41.316860, 28.605486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718182, 41.922203, 29.137749>,  <34.011219, 41.426781, 28.692244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718182, 41.922203, 29.137749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.426987, 41.652874, 29.086107>,  <33.252270, 41.491276, 29.055122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.426987, 41.652874, 29.086107>,  <33.718182, 41.922203, 29.137749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426987, 41.652874, 29.086107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084733, -0.098501, 0.991523,
		-0.680332, 0.732758, 0.014655,
		-0.727990, -0.673323, -0.129102,
		33.208591, 41.450878, 29.047377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.331612, 44.768963, 21.895315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965534, 44.629738, 21.814049>,  <32.745888, 44.546204, 21.765289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965534, 44.629738, 21.814049>,  <33.331612, 44.768963, 21.895315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965534, 44.629738, 21.814049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107278, -0.275531, 0.955288,
		-0.388477, 0.896067, 0.214824,
		-0.915193, -0.348061, -0.203165,
		32.690975, 44.525318, 21.753099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837215, 44.953236, 22.506195>,  <33.331612, 44.768963, 21.895315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837215, 44.953236, 22.506195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785152, 44.612610, 22.303064>,  <32.753914, 44.408234, 22.181185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785152, 44.612610, 22.303064>,  <32.837215, 44.953236, 22.506195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785152, 44.612610, 22.303064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046985, -0.506312, 0.861070,
		-0.990379, 0.135936, 0.025890,
		-0.130159, -0.851569, -0.507828,
		32.746105, 44.357140, 22.150717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289387, 44.557587, 22.853796>,  <32.837215, 44.953236, 22.506195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289387, 44.557587, 22.853796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509789, 44.293594, 22.649513>,  <32.642029, 44.135201, 22.526943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509789, 44.293594, 22.649513>,  <32.289387, 44.557587, 22.853796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509789, 44.293594, 22.649513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155187, -0.520278, 0.839778,
		-0.819947, -0.541976, -0.184255,
		0.551003, -0.659979, -0.510708,
		32.675091, 44.095600, 22.496302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051769, 43.821705, 22.957531>,  <32.289387, 44.557587, 22.853796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051769, 43.821705, 22.957531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429623, 43.778526, 22.833591>,  <32.656334, 43.752621, 22.759228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429623, 43.778526, 22.833591>,  <32.051769, 43.821705, 22.957531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429623, 43.778526, 22.833591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223366, -0.480172, 0.848259,
		-0.240347, -0.870507, -0.429477,
		0.944638, -0.107946, -0.309850,
		32.713013, 43.746143, 22.740637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236298, 43.108204, 23.037195>,  <32.051769, 43.821705, 22.957531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236298, 43.108204, 23.037195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566448, 43.333984, 23.032291>,  <32.764538, 43.469452, 23.029348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566448, 43.333984, 23.032291>,  <32.236298, 43.108204, 23.037195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566448, 43.333984, 23.032291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329373, -0.463772, 0.822453,
		0.458546, -0.682872, -0.568702,
		0.825378, 0.564448, -0.012259,
		32.814060, 43.503319, 23.028614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697361, 42.702290, 23.472063>,  <32.236298, 43.108204, 23.037195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697361, 42.702290, 23.472063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915241, 43.035561, 23.433870>,  <33.045971, 43.235523, 23.410955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915241, 43.035561, 23.433870>,  <32.697361, 42.702290, 23.472063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915241, 43.035561, 23.433870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463939, -0.204529, 0.861933,
		0.698614, -0.513794, -0.497950,
		0.544701, 0.833177, -0.095482,
		33.078651, 43.285515, 23.405226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368385, 42.549374, 23.534868>,  <32.697361, 42.702290, 23.472063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368385, 42.549374, 23.534868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367294, 42.931763, 23.652248>,  <33.366638, 43.161194, 23.722675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367294, 42.931763, 23.652248>,  <33.368385, 42.549374, 23.534868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367294, 42.931763, 23.652248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374908, -0.271068, 0.886547,
		0.927058, 0.112437, -0.357661,
		-0.002730, 0.955971, 0.293449,
		33.366474, 43.218555, 23.740284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003590, 42.553059, 23.914101>,  <33.368385, 42.549374, 23.534868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003590, 42.553059, 23.914101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765186, 42.860794, 24.006094>,  <33.622143, 43.045437, 24.061291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765186, 42.860794, 24.006094>,  <34.003590, 42.553059, 23.914101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765186, 42.860794, 24.006094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077672, -0.229834, 0.970126,
		0.799213, 0.596067, 0.077227,
		-0.596009, 0.769338, 0.229984,
		33.586384, 43.091595, 24.075089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313259, 42.861244, 24.454689>,  <34.003590, 42.553059, 23.914101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313259, 42.861244, 24.454689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930511, 42.975834, 24.474031>,  <33.700863, 43.044590, 24.485636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930511, 42.975834, 24.474031>,  <34.313259, 42.861244, 24.454689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930511, 42.975834, 24.474031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035727, -0.281200, 0.958984,
		0.288325, 0.915891, 0.279306,
		-0.956866, 0.286478, 0.048355,
		33.643452, 43.061779, 24.488539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027142, 42.947849, 24.891235>,  <34.313259, 42.861244, 24.454689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027142, 42.947849, 24.891235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220013, 42.646278, 24.712757>,  <35.335735, 42.465336, 24.605671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220013, 42.646278, 24.712757>,  <35.027142, 42.947849, 24.891235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220013, 42.646278, 24.712757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110770, 0.557693, -0.822623,
		0.869041, 0.347228, 0.352422,
		0.482181, -0.753931, -0.446195,
		35.364666, 42.420097, 24.578899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555199, 43.283131, 24.557114>,  <35.027142, 42.947849, 24.891235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555199, 43.283131, 24.557114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527729, 42.927376, 24.376328>,  <35.511246, 42.713921, 24.267857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527729, 42.927376, 24.376328>,  <35.555199, 43.283131, 24.557114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527729, 42.927376, 24.376328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192664, 0.432682, -0.880720,
		0.978859, -0.147559, 0.141640,
		-0.068673, -0.889389, -0.451964,
		35.507126, 42.660561, 24.240738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003410, 43.422531, 24.003656>,  <35.555199, 43.283131, 24.557114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003410, 43.422531, 24.003656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819355, 43.079147, 23.913040>,  <35.708923, 42.873116, 23.858671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819355, 43.079147, 23.913040>,  <36.003410, 43.422531, 24.003656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819355, 43.079147, 23.913040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237208, 0.127015, -0.963120,
		0.855572, -0.496907, 0.145189,
		-0.460140, -0.858459, -0.226540,
		35.681313, 42.821609, 23.845078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427238, 43.162418, 23.431974>,  <36.003410, 43.422531, 24.003656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427238, 43.162418, 23.431974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064049, 42.995628, 23.448565>,  <35.846134, 42.895554, 23.458519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064049, 42.995628, 23.448565>,  <36.427238, 43.162418, 23.431974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064049, 42.995628, 23.448565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060205, 0.031864, -0.997677,
		0.414683, -0.908360, -0.054035,
		-0.907972, -0.416973, 0.041474,
		35.791656, 42.870537, 23.461006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425247, 42.582752, 23.008001>,  <36.427238, 43.162418, 23.431974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425247, 42.582752, 23.008001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050941, 42.722893, 23.024019>,  <35.826359, 42.806976, 23.033630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050941, 42.722893, 23.024019>,  <36.425247, 42.582752, 23.008001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050941, 42.722893, 23.024019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035939, 0.018210, -0.999188,
		-0.350794, -0.936442, -0.004449,
		-0.935763, 0.350349, 0.040043,
		35.770214, 42.827999, 23.036032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275665, 42.558823, 22.307594>,  <36.425247, 42.582752, 23.008001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275665, 42.558823, 22.307594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961075, 42.766911, 22.440758>,  <35.772320, 42.891762, 22.520655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961075, 42.766911, 22.440758>,  <36.275665, 42.558823, 22.307594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961075, 42.766911, 22.440758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261961, 0.207155, -0.942583,
		-0.559314, -0.828527, -0.026645,
		-0.786475, 0.520220, 0.332907,
		35.725132, 42.922977, 22.540630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614498, 42.319565, 22.012987>,  <36.275665, 42.558823, 22.307594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614498, 42.319565, 22.012987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593555, 42.708702, 22.103180>,  <35.580990, 42.942184, 22.157295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593555, 42.708702, 22.103180>,  <35.614498, 42.319565, 22.012987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593555, 42.708702, 22.103180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240810, 0.206829, -0.948278,
		-0.969159, -0.103948, 0.223441,
		-0.052357, 0.972839, 0.225482,
		35.577847, 43.000553, 22.170824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044395, 42.490810, 21.662191>,  <35.614498, 42.319565, 22.012987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044395, 42.490810, 21.662191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249432, 42.826351, 21.735481>,  <35.372452, 43.027676, 21.779455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249432, 42.826351, 21.735481>,  <35.044395, 42.490810, 21.662191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249432, 42.826351, 21.735481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181139, 0.314236, -0.931904,
		-0.839308, 0.444497, 0.313024,
		0.512592, 0.838856, 0.183225,
		35.403210, 43.078007, 21.790449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562130, 43.079235, 21.476562>,  <35.044395, 42.490810, 21.662191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562130, 43.079235, 21.476562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947353, 43.184410, 21.453325>,  <35.178490, 43.247517, 21.439383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947353, 43.184410, 21.453325>,  <34.562130, 43.079235, 21.476562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947353, 43.184410, 21.453325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156175, 0.369652, -0.915951,
		-0.219363, 0.891191, 0.397062,
		0.963062, 0.262937, -0.058094,
		35.236271, 43.263290, 21.435898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582153, 43.804321, 21.331982>,  <34.562130, 43.079235, 21.476562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582153, 43.804321, 21.331982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925949, 43.639694, 21.210730>,  <35.132225, 43.540916, 21.137980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925949, 43.639694, 21.210730>,  <34.582153, 43.804321, 21.331982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925949, 43.639694, 21.210730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109456, 0.431083, -0.895649,
		0.499294, 0.802981, 0.325464,
		0.859491, -0.411568, -0.303128,
		35.183796, 43.516224, 21.119791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801651, 44.250507, 20.849478>,  <34.582153, 43.804321, 21.331982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801651, 44.250507, 20.849478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051685, 43.951160, 20.760733>,  <35.201706, 43.771553, 20.707485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051685, 43.951160, 20.760733>,  <34.801651, 44.250507, 20.849478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051685, 43.951160, 20.760733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072208, 0.338458, -0.938207,
		0.777211, 0.570437, 0.265602,
		0.625083, -0.748364, -0.221863,
		35.239212, 43.726650, 20.694174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141647, 44.558594, 20.422831>,  <34.801651, 44.250507, 20.849478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141647, 44.558594, 20.422831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204399, 44.177364, 20.319265>,  <35.242050, 43.948627, 20.257126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204399, 44.177364, 20.319265>,  <35.141647, 44.558594, 20.422831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204399, 44.177364, 20.319265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118435, 0.278422, -0.953129,
		0.980490, 0.118866, 0.156558,
		0.156883, -0.953075, -0.258912,
		35.251465, 43.891441, 20.241592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491901, 44.578568, 19.847404>,  <35.141647, 44.558594, 20.422831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491901, 44.578568, 19.847404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425404, 44.186581, 19.803522>,  <35.385506, 43.951389, 19.777193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425404, 44.186581, 19.803522>,  <35.491901, 44.578568, 19.847404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425404, 44.186581, 19.803522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090822, 0.095566, -0.991271,
		0.981893, -0.174758, 0.073114,
		-0.166245, -0.979963, -0.109708,
		35.375530, 43.892593, 19.770609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120434, 44.215652, 19.481932>,  <35.491901, 44.578568, 19.847404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120434, 44.215652, 19.481932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799145, 43.992725, 19.397808>,  <35.606373, 43.858971, 19.347334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799145, 43.992725, 19.397808>,  <36.120434, 44.215652, 19.481932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799145, 43.992725, 19.397808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116597, 0.199132, -0.973012,
		0.584156, -0.806066, -0.094966,
		-0.803223, -0.557318, -0.210309,
		35.558178, 43.825531, 19.334715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.051735, 41.239189, 19.766060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.407179, 41.422642, 19.768105>,  <27.620445, 41.532715, 19.769331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.407179, 41.422642, 19.768105>,  <27.051735, 41.239189, 19.766060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407179, 41.422642, 19.768105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326945, -0.641193, 0.694247,
		0.321684, -0.615243, -0.719719,
		0.888609, 0.458636, 0.005111,
		27.673761, 41.560234, 19.769638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437023, 40.675224, 20.037271>,  <27.051735, 41.239189, 19.766060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437023, 40.675224, 20.037271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.664745, 41.003723, 20.052477>,  <27.801378, 41.200821, 20.061600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.664745, 41.003723, 20.052477>,  <27.437023, 40.675224, 20.037271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664745, 41.003723, 20.052477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523067, -0.397495, 0.753922,
		0.634266, -0.409328, -0.655863,
		0.569304, 0.821248, 0.038011,
		27.835537, 41.250099, 20.063881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127441, 40.469128, 20.011307>,  <27.437023, 40.675224, 20.037271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127441, 40.469128, 20.011307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.108057, 40.816162, 20.209278>,  <28.096426, 41.024384, 20.328060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.108057, 40.816162, 20.209278>,  <28.127441, 40.469128, 20.011307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108057, 40.816162, 20.209278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571295, -0.382378, 0.726229,
		0.819313, 0.317943, -0.477116,
		-0.048461, 0.867583, 0.494926,
		28.093519, 41.076435, 20.357756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835283, 40.675671, 20.226023>,  <28.127441, 40.469128, 20.011307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835283, 40.675671, 20.226023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.600382, 40.887310, 20.471033>,  <28.459440, 41.014294, 20.618040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.600382, 40.887310, 20.471033>,  <28.835283, 40.675671, 20.226023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600382, 40.887310, 20.471033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577620, -0.256171, 0.775068,
		0.566998, 0.808970, -0.155180,
		-0.587254, 0.529098, 0.612526,
		28.424206, 41.046040, 20.654791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381908, 41.000065, 20.720669>,  <28.835283, 40.675671, 20.226023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381908, 41.000065, 20.720669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.006870, 41.004608, 20.859684>,  <28.781847, 41.007336, 20.943094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.006870, 41.004608, 20.859684>,  <29.381908, 41.000065, 20.720669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006870, 41.004608, 20.859684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345177, -0.090382, 0.934175,
		0.042022, 0.995842, 0.080822,
		-0.937596, 0.011358, 0.347540,
		28.725592, 41.008015, 20.963945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408283, 41.570927, 21.109106>,  <29.381908, 41.000065, 20.720669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408283, 41.570927, 21.109106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.103682, 41.340485, 21.227911>,  <28.920921, 41.202221, 21.299194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.103682, 41.340485, 21.227911>,  <29.408283, 41.570927, 21.109106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103682, 41.340485, 21.227911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351941, 0.017283, 0.935862,
		-0.544290, 0.817192, 0.189595,
		-0.761503, -0.576107, 0.297011,
		28.875231, 41.167652, 21.317015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409309, 41.658394, 21.793543>,  <29.408283, 41.570927, 21.109106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409309, 41.658394, 21.793543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.168234, 41.339321, 21.784914>,  <29.023588, 41.147877, 21.779737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.168234, 41.339321, 21.784914>,  <29.409309, 41.658394, 21.793543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168234, 41.339321, 21.784914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309993, -0.258952, 0.914794,
		-0.735304, 0.544648, 0.403344,
		-0.602688, -0.797685, -0.021571,
		28.987427, 41.100014, 21.778442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969830, 41.605110, 22.490669>,  <29.409309, 41.658394, 21.793543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969830, 41.605110, 22.490669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.967062, 41.230995, 22.349144>,  <28.965401, 41.006527, 22.264229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.967062, 41.230995, 22.349144>,  <28.969830, 41.605110, 22.490669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967062, 41.230995, 22.349144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225206, -0.346191, 0.910733,
		-0.974286, -0.073378, 0.213029,
		-0.006921, -0.935290, -0.353815,
		28.964985, 40.950409, 22.243000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590012, 41.267769, 22.857466>,  <28.969830, 41.605110, 22.490669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590012, 41.267769, 22.857466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.814758, 40.970123, 22.712906>,  <28.949606, 40.791538, 22.626171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.814758, 40.970123, 22.712906>,  <28.590012, 41.267769, 22.857466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814758, 40.970123, 22.712906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300224, -0.223663, 0.927276,
		-0.770827, -0.629503, 0.097731,
		0.561864, -0.744110, -0.361398,
		28.983318, 40.746891, 22.604486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456474, 40.729118, 23.361319>,  <28.590012, 41.267769, 22.857466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456474, 40.729118, 23.361319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.788609, 40.613338, 23.170839>,  <28.987888, 40.543869, 23.056553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.788609, 40.613338, 23.170839>,  <28.456474, 40.729118, 23.361319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788609, 40.613338, 23.170839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357051, -0.379747, 0.853409,
		-0.427857, -0.878640, -0.211967,
		0.830333, -0.289454, -0.476197,
		29.037708, 40.526505, 23.027981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555725, 40.146378, 23.623871>,  <28.456474, 40.729118, 23.361319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555725, 40.146378, 23.623871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.904427, 40.230450, 23.446842>,  <29.113647, 40.280895, 23.340626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.904427, 40.230450, 23.446842>,  <28.555725, 40.146378, 23.623871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904427, 40.230450, 23.446842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479056, -0.555054, 0.680015,
		-0.102724, -0.804822, -0.584559,
		0.871753, 0.210183, -0.442572,
		29.165953, 40.293503, 23.314070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954742, 39.559269, 23.521505>,  <28.555725, 40.146378, 23.623871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954742, 39.559269, 23.521505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.225981, 39.853153, 23.513699>,  <29.388723, 40.029484, 23.509014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.225981, 39.853153, 23.513699>,  <28.954742, 39.559269, 23.521505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225981, 39.853153, 23.513699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548432, -0.488134, 0.678931,
		0.489292, -0.471085, -0.733942,
		0.678097, 0.734713, -0.019518,
		29.429409, 40.073566, 23.507843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606625, 39.127457, 23.379925>,  <28.954742, 39.559269, 23.521505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606625, 39.127457, 23.379925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.694326, 39.483776, 23.539127>,  <29.746948, 39.697567, 23.634649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.694326, 39.483776, 23.539127>,  <29.606625, 39.127457, 23.379925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694326, 39.483776, 23.539127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523298, -0.451659, 0.722609,
		0.823460, 0.049839, -0.565181,
		0.219255, 0.890797, 0.398004,
		29.760103, 39.751015, 23.658529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336416, 39.216362, 23.379515>,  <29.606625, 39.127457, 23.379925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336416, 39.216362, 23.379515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.158848, 39.415325, 23.677647>,  <30.052307, 39.534702, 23.856525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.158848, 39.415325, 23.677647>,  <30.336416, 39.216362, 23.379515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158848, 39.415325, 23.677647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390880, -0.640974, 0.660580,
		0.806317, 0.584579, 0.090114,
		-0.443922, 0.497413, 0.745328,
		30.025671, 39.564548, 23.901245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071583, 39.438683, 23.605091>,  <30.336416, 39.216362, 23.379515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071583, 39.438683, 23.605091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.408360, 39.246357, 23.507149>,  <31.610426, 39.130962, 23.448383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.408360, 39.246357, 23.507149>,  <31.071583, 39.438683, 23.605091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408360, 39.246357, 23.507149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129393, 0.260639, -0.956726,
		0.523823, 0.837191, 0.157229,
		0.841942, -0.480811, -0.244855,
		31.660942, 39.102112, 23.433693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416073, 39.965256, 23.115404>,  <31.071583, 39.438683, 23.605091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416073, 39.965256, 23.115404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.576067, 39.604992, 23.047487>,  <31.672064, 39.388836, 23.006737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.576067, 39.604992, 23.047487>,  <31.416073, 39.965256, 23.115404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576067, 39.604992, 23.047487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049614, 0.163710, -0.985260,
		0.915177, 0.402515, 0.020796,
		0.399987, -0.900656, -0.169794,
		31.696064, 39.334797, 22.996550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126144, 40.058987, 22.784456>,  <31.416073, 39.965256, 23.115404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126144, 40.058987, 22.784456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.977697, 39.695759, 22.706816>,  <31.888628, 39.477821, 22.660231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.977697, 39.695759, 22.706816>,  <32.126144, 40.058987, 22.784456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977697, 39.695759, 22.706816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019147, 0.216469, -0.976102,
		0.928388, -0.358533, -0.097722,
		-0.371119, -0.908072, -0.194102,
		31.866362, 39.423336, 22.648584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579327, 39.706799, 22.362623>,  <32.126144, 40.058987, 22.784456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579327, 39.706799, 22.362623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.232925, 39.517471, 22.298120>,  <32.025085, 39.403877, 22.259418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.232925, 39.517471, 22.298120>,  <32.579327, 39.706799, 22.362623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232925, 39.517471, 22.298120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028424, 0.275377, -0.960916,
		0.499224, -0.836743, -0.225025,
		-0.866007, -0.473316, -0.161259,
		31.973124, 39.375477, 22.249743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740536, 39.238811, 21.825314>,  <32.579327, 39.706799, 22.362623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740536, 39.238811, 21.825314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.343624, 39.284988, 21.843464>,  <32.105476, 39.312695, 21.854355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.343624, 39.284988, 21.843464>,  <32.740536, 39.238811, 21.825314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343624, 39.284988, 21.843464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028345, 0.145093, -0.989012,
		-0.120762, -0.982660, -0.140701,
		-0.992276, 0.115447, 0.045375,
		32.045940, 39.319622, 21.857077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496906, 38.758404, 21.172922>,  <32.740536, 39.238811, 21.825314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496906, 38.758404, 21.172922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.203281, 38.999844, 21.297384>,  <32.027107, 39.144707, 21.372061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.203281, 38.999844, 21.297384>,  <32.496906, 38.758404, 21.172922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203281, 38.999844, 21.297384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141168, 0.312553, -0.939352,
		-0.664243, -0.733471, -0.144226,
		-0.734066, 0.603598, 0.311153,
		31.983061, 39.180923, 21.390730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940874, 38.561493, 20.729021>,  <32.496906, 38.758404, 21.172922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940874, 38.561493, 20.729021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.839920, 38.930553, 20.845652>,  <31.779346, 39.151989, 20.915630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.839920, 38.930553, 20.845652>,  <31.940874, 38.561493, 20.729021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839920, 38.930553, 20.845652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321033, 0.204423, -0.924743,
		-0.912819, -0.327000, 0.244607,
		-0.252387, 0.922650, 0.291579,
		31.764204, 39.207348, 20.933125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265934, 38.703903, 20.375397>,  <31.940874, 38.561493, 20.729021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265934, 38.703903, 20.375397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.425440, 39.053383, 20.486853>,  <31.521143, 39.263069, 20.553726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.425440, 39.053383, 20.486853>,  <31.265934, 38.703903, 20.375397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425440, 39.053383, 20.486853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300084, 0.411433, -0.860623,
		-0.866566, 0.259569, 0.426247,
		0.398763, 0.873697, 0.278641,
		31.545069, 39.315491, 20.570444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790201, 39.144829, 20.202768>,  <31.265934, 38.703903, 20.375397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790201, 39.144829, 20.202768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.108679, 39.384499, 20.236393>,  <31.299765, 39.528301, 20.256567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.108679, 39.384499, 20.236393>,  <30.790201, 39.144829, 20.202768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108679, 39.384499, 20.236393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361911, 0.582965, -0.727442,
		-0.484870, 0.548761, 0.681001,
		0.796192, 0.599177, 0.084060,
		31.347536, 39.564251, 20.261610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556246, 39.819099, 20.085709>,  <30.790201, 39.144829, 20.202768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556246, 39.819099, 20.085709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.950106, 39.862133, 20.030733>,  <31.186422, 39.887951, 19.997747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.950106, 39.862133, 20.030733>,  <30.556246, 39.819099, 20.085709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950106, 39.862133, 20.030733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174293, 0.564556, -0.806783,
		-0.009202, 0.818354, 0.574641,
		0.984651, 0.107580, -0.137438,
		31.245501, 39.894405, 19.989502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740179, 40.573357, 20.117849>,  <30.556246, 39.819099, 20.085709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740179, 40.573357, 20.117849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.011587, 40.380581, 19.896093>,  <31.174431, 40.264915, 19.763041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.011587, 40.380581, 19.896093>,  <30.740179, 40.573357, 20.117849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011587, 40.380581, 19.896093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086433, 0.697080, -0.711765,
		0.729480, 0.530863, 0.431326,
		0.678519, -0.481938, -0.554390,
		31.215143, 40.236000, 19.729776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293083, 41.117245, 19.987289>,  <30.740179, 40.573357, 20.117849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293083, 41.117245, 19.987289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.266731, 40.838936, 19.701197>,  <31.250919, 40.671951, 19.529541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.266731, 40.838936, 19.701197>,  <31.293083, 41.117245, 19.987289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266731, 40.838936, 19.701197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039312, 0.718044, -0.694887,
		0.997053, -0.017661, -0.074657,
		-0.065879, -0.695774, -0.715234,
		31.246967, 40.630203, 19.486626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503866, 41.397594, 19.391317>,  <31.293083, 41.117245, 19.987289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503866, 41.397594, 19.391317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.337090, 41.065506, 19.243320>,  <31.237024, 40.866253, 19.154522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.337090, 41.065506, 19.243320>,  <31.503866, 41.397594, 19.391317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337090, 41.065506, 19.243320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349820, 0.522277, -0.777723,
		0.838919, -0.194835, -0.508187,
		-0.416942, -0.830221, -0.369991,
		31.212008, 40.816441, 19.132322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742300, 41.368320, 18.560335>,  <31.503866, 41.397594, 19.391317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742300, 41.368320, 18.560335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.403919, 41.166729, 18.630045>,  <31.200891, 41.045773, 18.671871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.403919, 41.166729, 18.630045>,  <31.742300, 41.368320, 18.560335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403919, 41.166729, 18.630045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410459, 0.406759, -0.816131,
		0.340421, -0.761942, -0.550960,
		-0.845953, -0.503975, 0.174277,
		31.150133, 41.015537, 18.682327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331760, 40.976154, 18.635099>,  <31.742300, 41.368320, 18.560335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331760, 40.976154, 18.635099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.698925, 40.892906, 18.499971>,  <32.919224, 40.842957, 18.418894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.698925, 40.892906, 18.499971>,  <32.331760, 40.976154, 18.635099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698925, 40.892906, 18.499971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275904, -0.277087, 0.920380,
		-0.285161, -0.938033, -0.196919,
		0.917911, -0.208125, -0.337821,
		32.974300, 40.830471, 18.398626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507309, 40.328175, 18.975407>,  <32.331760, 40.976154, 18.635099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507309, 40.328175, 18.975407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.864841, 40.477760, 18.876442>,  <33.079361, 40.567513, 18.817062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.864841, 40.477760, 18.876442>,  <32.507309, 40.328175, 18.975407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864841, 40.477760, 18.876442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388441, -0.370126, 0.843872,
		0.224008, -0.850385, -0.476096,
		0.893831, 0.373969, -0.247413,
		33.132992, 40.589951, 18.802217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018017, 39.803902, 19.155876>,  <32.507309, 40.328175, 18.975407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018017, 39.803902, 19.155876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.212730, 40.151001, 19.115765>,  <33.329559, 40.359261, 19.091698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.212730, 40.151001, 19.115765>,  <33.018017, 39.803902, 19.155876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212730, 40.151001, 19.115765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671475, -0.298289, 0.678340,
		0.558716, -0.397538, -0.727873,
		0.486782, 0.867748, -0.100278,
		33.358765, 40.411327, 19.085682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693092, 39.613888, 19.179806>,  <33.018017, 39.803902, 19.155876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693092, 39.613888, 19.179806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.714222, 40.006290, 19.254456>,  <33.726898, 40.241734, 19.299246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.714222, 40.006290, 19.254456>,  <33.693092, 39.613888, 19.179806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714222, 40.006290, 19.254456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627105, -0.178024, 0.758319,
		0.777142, 0.076977, -0.624600,
		0.052821, 0.981011, 0.186623,
		33.730068, 40.300594, 19.310442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395042, 39.788555, 19.291697>,  <33.693092, 39.613888, 19.179806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395042, 39.788555, 19.291697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.230453, 40.113358, 19.457266>,  <34.131699, 40.308239, 19.556608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.230453, 40.113358, 19.457266>,  <34.395042, 39.788555, 19.291697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230453, 40.113358, 19.457266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616834, -0.086238, 0.782354,
		0.670975, 0.577239, -0.465391,
		-0.411471, 0.812009, 0.413924,
		34.107014, 40.356960, 19.581444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912495, 40.298374, 19.427242>,  <34.395042, 39.788555, 19.291697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912495, 40.298374, 19.427242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.614880, 40.382904, 19.680780>,  <34.436310, 40.433620, 19.832903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.614880, 40.382904, 19.680780>,  <34.912495, 40.298374, 19.427242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614880, 40.382904, 19.680780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617112, -0.146278, 0.773160,
		0.256102, 0.966409, -0.021572,
		-0.744033, 0.211320, 0.633844,
		34.391670, 40.446301, 19.870934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206566, 40.737808, 19.865711>,  <34.912495, 40.298374, 19.427242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206566, 40.737808, 19.865711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.883694, 40.611069, 20.064936>,  <34.689972, 40.535027, 20.184471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.883694, 40.611069, 20.064936>,  <35.206566, 40.737808, 19.865711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883694, 40.611069, 20.064936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541517, -0.061579, 0.838432,
		-0.234987, 0.946475, 0.221285,
		-0.807181, -0.316850, 0.498062,
		34.641541, 40.516014, 20.214354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235222, 41.066570, 20.537411>,  <35.206566, 40.737808, 19.865711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235222, 41.066570, 20.537411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.013416, 40.736267, 20.578663>,  <34.880333, 40.538086, 20.603415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.013416, 40.736267, 20.578663>,  <35.235222, 41.066570, 20.537411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013416, 40.736267, 20.578663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342865, -0.113786, 0.932468,
		-0.758257, 0.552429, 0.346219,
		-0.554518, -0.825757, 0.103130,
		34.847061, 40.488541, 20.609602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770493, 40.985630, 21.035267>,  <35.235222, 41.066570, 20.537411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770493, 40.985630, 21.035267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.903458, 40.614002, 20.970360>,  <34.983234, 40.391026, 20.931416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.903458, 40.614002, 20.970360>,  <34.770493, 40.985630, 21.035267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903458, 40.614002, 20.970360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340148, -0.042374, 0.939417,
		-0.879661, -0.367465, 0.301936,
		0.332409, -0.929071, -0.162267,
		35.003181, 40.335281, 20.921680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437103, 40.528896, 21.587429>,  <34.770493, 40.985630, 21.035267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437103, 40.528896, 21.587429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780231, 40.387646, 21.438065>,  <34.986111, 40.302895, 21.348446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780231, 40.387646, 21.438065>,  <34.437103, 40.528896, 21.587429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780231, 40.387646, 21.438065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330256, -0.177950, 0.926965,
		-0.393789, -0.918495, -0.036026,
		0.857823, -0.353131, -0.373414,
		35.037579, 40.281708, 21.326040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472458, 39.987202, 21.971695>,  <34.437103, 40.528896, 21.587429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472458, 39.987202, 21.971695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.842785, 40.017353, 21.823542>,  <35.064980, 40.035442, 21.734650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.842785, 40.017353, 21.823542>,  <34.472458, 39.987202, 21.971695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842785, 40.017353, 21.823542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375095, -0.303956, 0.875737,
		-0.046569, -0.949700, -0.309681,
		0.925816, 0.075378, -0.370383,
		35.120529, 40.039967, 21.712427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783527, 39.356625, 22.016640>,  <34.472458, 39.987202, 21.971695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783527, 39.356625, 22.016640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081165, 39.623791, 22.022490>,  <35.259747, 39.784092, 22.025999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081165, 39.623791, 22.022490>,  <34.783527, 39.356625, 22.016640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081165, 39.623791, 22.022490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307198, -0.361508, 0.880308,
		0.593259, -0.650538, -0.474178,
		0.744092, 0.667917, 0.014624,
		35.304394, 39.824165, 22.026876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286514, 38.974312, 22.256985>,  <34.783527, 39.356625, 22.016640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286514, 38.974312, 22.256985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.430679, 39.343143, 22.313389>,  <35.517178, 39.564442, 22.347231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.430679, 39.343143, 22.313389>,  <35.286514, 38.974312, 22.256985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430679, 39.343143, 22.313389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392592, -0.287072, 0.873762,
		0.846155, -0.259551, -0.465462,
		0.360408, 0.922075, 0.141010,
		35.538803, 39.619766, 22.355692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995960, 38.856987, 22.282772>,  <35.286514, 38.974312, 22.256985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995960, 38.856987, 22.282772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914520, 39.205772, 22.460859>,  <35.865654, 39.415047, 22.567711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914520, 39.205772, 22.460859>,  <35.995960, 38.856987, 22.282772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914520, 39.205772, 22.460859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470069, -0.311836, 0.825707,
		0.858825, 0.377399, -0.346395,
		-0.203602, 0.871968, 0.445216,
		35.853439, 39.467361, 22.594423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.206375, 43.720627, 18.715157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.818138, 43.712616, 18.811115>,  <35.585197, 43.707809, 18.868690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.818138, 43.712616, 18.811115>,  <36.206375, 43.720627, 18.715157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818138, 43.712616, 18.811115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240136, 0.010640, -0.970681,
		0.016951, -0.999741, -0.015152,
		-0.970591, -0.020092, 0.239894,
		35.526962, 43.706608, 18.883083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865360, 43.229424, 18.242083>,  <36.206375, 43.720627, 18.715157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865360, 43.229424, 18.242083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.562885, 43.454781, 18.375208>,  <35.381401, 43.589996, 18.455082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.562885, 43.454781, 18.375208>,  <35.865360, 43.229424, 18.242083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562885, 43.454781, 18.375208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379406, 0.036883, -0.924495,
		-0.533130, -0.825364, 0.185865,
		-0.756190, 0.563394, 0.332811,
		35.336029, 43.623798, 18.475052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297707, 42.931580, 17.998873>,  <35.865360, 43.229424, 18.242083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297707, 42.931580, 17.998873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.197948, 43.314407, 18.057951>,  <35.138096, 43.544106, 18.093397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.197948, 43.314407, 18.057951>,  <35.297707, 42.931580, 17.998873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197948, 43.314407, 18.057951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373023, 0.045805, -0.926691,
		-0.893676, -0.286204, 0.345587,
		-0.249393, 0.957073, 0.147696,
		35.123131, 43.601528, 18.102259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589748, 42.979279, 17.800621>,  <35.297707, 42.931580, 17.998873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589748, 42.979279, 17.800621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725010, 43.355537, 17.789032>,  <34.806168, 43.581291, 17.782078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725010, 43.355537, 17.789032>,  <34.589748, 42.979279, 17.800621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725010, 43.355537, 17.789032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446104, 0.133111, -0.885027,
		-0.828638, 0.312204, 0.464637,
		0.338157, 0.940644, -0.028975,
		34.826458, 43.637730, 17.780340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079964, 43.183296, 17.343124>,  <34.589748, 42.979279, 17.800621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079964, 43.183296, 17.343124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.322693, 43.499718, 17.374111>,  <34.468330, 43.689571, 17.392704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.322693, 43.499718, 17.374111>,  <34.079964, 43.183296, 17.343124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322693, 43.499718, 17.374111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390072, 0.381302, -0.838124,
		-0.692542, 0.478371, 0.539950,
		0.606819, 0.791056, 0.077469,
		34.504738, 43.737034, 17.397352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712482, 43.803959, 17.274698>,  <34.079964, 43.183296, 17.343124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712482, 43.803959, 17.274698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.083397, 43.872475, 17.141558>,  <34.305946, 43.913586, 17.061672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.083397, 43.872475, 17.141558>,  <33.712482, 43.803959, 17.274698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083397, 43.872475, 17.141558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368198, 0.256913, -0.893547,
		-0.067543, 0.951133, 0.301303,
		0.927291, 0.171292, -0.332852,
		34.361584, 43.923862, 17.041702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681541, 44.420444, 16.804731>,  <33.712482, 43.803959, 17.274698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681541, 44.420444, 16.804731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.013340, 44.234917, 16.680273>,  <34.212418, 44.123600, 16.605598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.013340, 44.234917, 16.680273>,  <33.681541, 44.420444, 16.804731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013340, 44.234917, 16.680273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304561, 0.091347, -0.948102,
		0.468167, 0.881210, -0.065488,
		0.829495, -0.463816, -0.311148,
		34.262188, 44.095772, 16.586929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844128, 44.732727, 16.198927>,  <33.681541, 44.420444, 16.804731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844128, 44.732727, 16.198927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.068535, 44.403412, 16.164400>,  <34.203178, 44.205822, 16.143684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.068535, 44.403412, 16.164400>,  <33.844128, 44.732727, 16.198927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068535, 44.403412, 16.164400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249756, -0.068932, -0.965852,
		0.789226, 0.563420, -0.244294,
		0.561020, -0.823290, -0.086315,
		34.236839, 44.156425, 16.138506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182220, 44.767563, 15.522405>,  <33.844128, 44.732727, 16.198927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182220, 44.767563, 15.522405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.197357, 44.384895, 15.637891>,  <34.206440, 44.155296, 15.707183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.197357, 44.384895, 15.637891>,  <34.182220, 44.767563, 15.522405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197357, 44.384895, 15.637891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141981, -0.291140, -0.946086,
		0.989146, -0.005187, -0.146847,
		0.037846, -0.956666, 0.288716,
		34.208710, 44.097897, 15.724505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366791, 44.491852, 14.850155>,  <34.182220, 44.767563, 15.522405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366791, 44.491852, 14.850155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225952, 44.179878, 15.057123>,  <34.141449, 43.992695, 15.181304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225952, 44.179878, 15.057123>,  <34.366791, 44.491852, 14.850155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225952, 44.179878, 15.057123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286930, -0.436259, -0.852848,
		0.890896, -0.448752, -0.070180,
		-0.352100, -0.779936, 0.517421,
		34.120323, 43.945896, 15.212350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561867, 43.954460, 14.511718>,  <34.366791, 44.491852, 14.850155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561867, 43.954460, 14.511718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257427, 43.789764, 14.712200>,  <34.074764, 43.690948, 14.832490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257427, 43.789764, 14.712200>,  <34.561867, 43.954460, 14.511718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257427, 43.789764, 14.712200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292478, -0.471849, -0.831754,
		0.578956, -0.779636, 0.238700,
		-0.761096, -0.411734, 0.501206,
		34.029099, 43.666245, 14.862562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519543, 43.106411, 14.352065>,  <34.561867, 43.954460, 14.511718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519543, 43.106411, 14.352065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.168304, 43.246231, 14.482760>,  <33.957561, 43.330124, 14.561178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.168304, 43.246231, 14.482760>,  <34.519543, 43.106411, 14.352065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168304, 43.246231, 14.482760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458887, -0.421811, -0.781983,
		-0.135519, -0.836595, 0.530795,
		-0.878099, 0.349549, 0.326740,
		33.904877, 43.351097, 14.580782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969372, 42.549011, 14.415587>,  <34.519543, 43.106411, 14.352065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969372, 42.549011, 14.415587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814720, 42.910149, 14.340340>,  <33.721931, 43.126831, 14.295191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814720, 42.910149, 14.340340>,  <33.969372, 42.549011, 14.415587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814720, 42.910149, 14.340340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328602, -0.325457, -0.886622,
		-0.861708, -0.280976, 0.422507,
		-0.386627, 0.902846, -0.188120,
		33.698730, 43.181004, 14.283904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311085, 42.576763, 14.157817>,  <33.969372, 42.549011, 14.415587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311085, 42.576763, 14.157817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479618, 42.879372, 13.957753>,  <33.580738, 43.060936, 13.837715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479618, 42.879372, 13.957753>,  <33.311085, 42.576763, 14.157817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479618, 42.879372, 13.957753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437099, -0.313825, -0.842887,
		-0.794621, 0.573755, 0.198449,
		0.421333, 0.756518, -0.500160,
		33.606018, 43.106327, 13.807705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848896, 42.801414, 13.786847>,  <33.311085, 42.576763, 14.157817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848896, 42.801414, 13.786847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.171188, 42.964622, 13.615116>,  <33.364563, 43.062546, 13.512077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.171188, 42.964622, 13.615116>,  <32.848896, 42.801414, 13.786847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171188, 42.964622, 13.615116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337531, -0.279326, -0.898916,
		-0.486696, 0.869194, -0.087343,
		0.805729, 0.408018, -0.429327,
		33.412907, 43.087029, 13.486318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694199, 42.253544, 13.370938>,  <32.848896, 42.801414, 13.786847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694199, 42.253544, 13.370938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446922, 41.943077, 13.321291>,  <32.298557, 41.756798, 13.291503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446922, 41.943077, 13.321291>,  <32.694199, 42.253544, 13.370938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446922, 41.943077, 13.321291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046869, -0.194023, 0.979877,
		-0.784630, 0.599932, 0.156322,
		-0.618190, -0.776168, -0.124118,
		32.261467, 41.710228, 13.284056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100773, 42.290066, 13.941615>,  <32.694199, 42.253544, 13.370938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100773, 42.290066, 13.941615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171829, 41.922482, 13.800783>,  <32.214462, 41.701931, 13.716284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171829, 41.922482, 13.800783>,  <32.100773, 42.290066, 13.941615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171829, 41.922482, 13.800783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139530, -0.330635, 0.933387,
		-0.974153, -0.214937, 0.069487,
		0.177645, -0.918957, -0.352079,
		32.225124, 41.646793, 13.695159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645031, 41.853951, 14.296120>,  <32.100773, 42.290066, 13.941615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645031, 41.853951, 14.296120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955303, 41.635509, 14.169567>,  <32.141468, 41.504444, 14.093636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955303, 41.635509, 14.169567>,  <31.645031, 41.853951, 14.296120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955303, 41.635509, 14.169567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167510, -0.305177, 0.937448,
		-0.608491, -0.780156, -0.145242,
		0.775680, -0.546099, -0.316381,
		32.188007, 41.471680, 14.074653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571476, 41.118557, 14.576159>,  <31.645031, 41.853951, 14.296120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571476, 41.118557, 14.576159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959337, 41.135040, 14.479765>,  <32.192055, 41.144932, 14.421929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959337, 41.135040, 14.479765>,  <31.571476, 41.118557, 14.576159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959337, 41.135040, 14.479765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242431, -0.289445, 0.925985,
		-0.031592, -0.956307, -0.290652,
		0.969654, 0.041210, -0.240983,
		32.250233, 41.147404, 14.407470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779310, 40.518585, 14.865423>,  <31.571476, 41.118557, 14.576159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779310, 40.518585, 14.865423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.090347, 40.760986, 14.798364>,  <32.276970, 40.906425, 14.758128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.090347, 40.760986, 14.798364>,  <31.779310, 40.518585, 14.865423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090347, 40.760986, 14.798364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422318, -0.305836, 0.853295,
		0.465827, -0.734318, -0.493742,
		0.777594, 0.606004, -0.167649,
		32.323627, 40.942787, 14.748069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397266, 40.036240, 15.015180>,  <31.779310, 40.518585, 14.865423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397266, 40.036240, 15.015180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538219, 40.410572, 15.012356>,  <32.622791, 40.635170, 15.010661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538219, 40.410572, 15.012356>,  <32.397266, 40.036240, 15.015180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538219, 40.410572, 15.012356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410332, -0.147721, 0.899892,
		0.841102, -0.320006, -0.436055,
		0.352385, 0.935828, -0.007060,
		32.643936, 40.691322, 15.010238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077507, 40.048386, 15.146195>,  <32.397266, 40.036240, 15.015180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077507, 40.048386, 15.146195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.963058, 40.409988, 15.273258>,  <32.894390, 40.626949, 15.349496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.963058, 40.409988, 15.273258>,  <33.077507, 40.048386, 15.146195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963058, 40.409988, 15.273258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312109, -0.225509, 0.922894,
		0.905936, 0.363207, -0.217624,
		-0.286126, 0.904006, 0.317657,
		32.877220, 40.681190, 15.368555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632915, 40.399300, 15.487052>,  <33.077507, 40.048386, 15.146195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632915, 40.399300, 15.487052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312737, 40.581390, 15.643024>,  <33.120628, 40.690643, 15.736609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312737, 40.581390, 15.643024>,  <33.632915, 40.399300, 15.487052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312737, 40.581390, 15.643024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332279, -0.204428, 0.920761,
		0.498866, 0.866591, 0.012373,
		-0.800452, 0.455225, 0.389932,
		33.072601, 40.717957, 15.760004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809345, 40.750748, 16.217073>,  <33.632915, 40.399300, 15.487052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809345, 40.750748, 16.217073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.411098, 40.787750, 16.211584>,  <33.172150, 40.809952, 16.208290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.411098, 40.787750, 16.211584>,  <33.809345, 40.750748, 16.217073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411098, 40.787750, 16.211584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019768, -0.064740, 0.997706,
		0.091408, 0.993605, 0.066285,
		-0.995617, 0.092509, -0.013723,
		33.112411, 40.815502, 16.207466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728283, 41.312908, 16.635645>,  <33.809345, 40.750748, 16.217073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728283, 41.312908, 16.635645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.364185, 41.148529, 16.655949>,  <33.145725, 41.049900, 16.668131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.364185, 41.148529, 16.655949>,  <33.728283, 41.312908, 16.635645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364185, 41.148529, 16.655949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005198, 0.111234, 0.993781,
		-0.414038, 0.904847, -0.099113,
		-0.910244, -0.410948, 0.050759,
		33.091110, 41.025246, 16.671177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277756, 41.762371, 17.072811>,  <33.728283, 41.312908, 16.635645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277756, 41.762371, 17.072811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122063, 41.394032, 17.082033>,  <33.028648, 41.173027, 17.087566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122063, 41.394032, 17.082033>,  <33.277756, 41.762371, 17.072811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122063, 41.394032, 17.082033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144967, -0.036519, 0.988762,
		-0.909663, 0.388196, 0.147708,
		-0.389228, -0.920853, 0.023056,
		33.005295, 41.117775, 17.088949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840275, 41.815144, 17.621561>,  <33.277756, 41.762371, 17.072811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840275, 41.815144, 17.621561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959099, 41.438774, 17.556551>,  <33.030396, 41.212952, 17.517546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959099, 41.438774, 17.556551>,  <32.840275, 41.815144, 17.621561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959099, 41.438774, 17.556551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070705, -0.148064, 0.986447,
		-0.952237, -0.304527, 0.022544,
		0.297062, -0.940925, -0.162524,
		33.048218, 41.156498, 17.507793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364792, 41.498741, 18.145826>,  <32.840275, 41.815144, 17.621561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364792, 41.498741, 18.145826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632103, 41.212509, 18.064487>,  <32.792488, 41.040768, 18.015684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632103, 41.212509, 18.064487>,  <32.364792, 41.498741, 18.145826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632103, 41.212509, 18.064487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295106, 0.004087, 0.955456,
		-0.682877, -0.698515, 0.213905,
		0.668275, -0.715584, -0.203345,
		32.832584, 40.997833, 18.003485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616142, 41.161186, 17.874733>,  <32.364792, 41.498741, 18.145826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616142, 41.161186, 17.874733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.264351, 41.107716, 18.057446>,  <31.053276, 41.075634, 18.167074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.264351, 41.107716, 18.057446>,  <31.616142, 41.161186, 17.874733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264351, 41.107716, 18.057446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475850, 0.265905, -0.838368,
		-0.009388, -0.954685, -0.297469,
		-0.879476, -0.133680, 0.456783,
		31.000507, 41.067612, 18.194481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246250, 40.641342, 17.487562>,  <31.616142, 41.161186, 17.874733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246250, 40.641342, 17.487562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.946451, 40.844891, 17.656940>,  <30.766571, 40.967018, 17.758568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.946451, 40.844891, 17.656940>,  <31.246250, 40.641342, 17.487562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946451, 40.844891, 17.656940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484276, 0.014667, -0.874793,
		-0.451368, -0.860717, 0.235442,
		-0.749496, 0.508872, 0.423445,
		30.721601, 40.997551, 17.783974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666058, 40.262596, 17.243866>,  <31.246250, 40.641342, 17.487562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666058, 40.262596, 17.243866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555288, 40.625992, 17.369057>,  <30.488827, 40.844028, 17.444170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555288, 40.625992, 17.369057>,  <30.666058, 40.262596, 17.243866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555288, 40.625992, 17.369057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657011, 0.058658, -0.751595,
		-0.701178, -0.413762, 0.580647,
		-0.276922, 0.908493, 0.312976,
		30.472212, 40.898540, 17.462950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993210, 40.183811, 17.137865>,  <30.666058, 40.262596, 17.243866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993210, 40.183811, 17.137865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.085285, 40.571491, 17.172897>,  <30.140530, 40.804100, 17.193916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.085285, 40.571491, 17.172897>,  <29.993210, 40.183811, 17.137865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085285, 40.571491, 17.172897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556469, 0.204925, -0.805201,
		-0.798346, 0.136610, 0.586499,
		0.230187, 0.969197, 0.087582,
		30.154341, 40.862251, 17.199171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358704, 40.476616, 16.843710>,  <29.993210, 40.183811, 17.137865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358704, 40.476616, 16.843710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.619219, 40.780117, 16.839268>,  <29.775528, 40.962215, 16.836601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.619219, 40.780117, 16.839268>,  <29.358704, 40.476616, 16.843710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619219, 40.780117, 16.839268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432624, 0.359245, -0.826910,
		-0.623428, 0.543361, 0.562225,
		0.651287, 0.758750, -0.011108,
		29.814606, 41.007744, 16.835936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990671, 41.055786, 16.817600>,  <29.358704, 40.476616, 16.843710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990671, 41.055786, 16.817600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.341070, 41.187073, 16.676231>,  <29.551310, 41.265846, 16.591410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.341070, 41.187073, 16.676231>,  <28.990671, 41.055786, 16.817600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341070, 41.187073, 16.676231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436737, 0.228824, -0.870000,
		-0.204677, 0.916468, 0.343793,
		0.875996, 0.328216, -0.353421,
		29.603868, 41.285538, 16.570206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813168, 41.616947, 16.595438>,  <28.990671, 41.055786, 16.817600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813168, 41.616947, 16.595438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.131313, 41.493286, 16.386892>,  <29.322201, 41.419090, 16.261765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.131313, 41.493286, 16.386892>,  <28.813168, 41.616947, 16.595438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131313, 41.493286, 16.386892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450735, 0.273426, -0.849751,
		0.405253, 0.910860, 0.078130,
		0.795366, -0.309149, -0.521363,
		29.369923, 41.400543, 16.230484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618917, 42.196625, 16.991640>,  <28.813168, 41.616947, 16.595438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618917, 42.196625, 16.991640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.276417, 42.398815, 17.034227>,  <28.070917, 42.520130, 17.059780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.276417, 42.398815, 17.034227>,  <28.618917, 42.196625, 16.991640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276417, 42.398815, 17.034227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052610, -0.119707, 0.991414,
		0.513877, 0.854499, 0.075906,
		-0.856249, 0.505471, 0.106469,
		28.019543, 42.550457, 17.066168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763605, 42.687992, 17.498163>,  <28.618917, 42.196625, 16.991640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763605, 42.687992, 17.498163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.364880, 42.707016, 17.523773>,  <28.125645, 42.718430, 17.539139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.364880, 42.707016, 17.523773>,  <28.763605, 42.687992, 17.498163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364880, 42.707016, 17.523773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056055, -0.153291, 0.986590,
		0.056733, 0.987036, 0.150137,
		-0.996814, 0.047556, 0.064025,
		28.065836, 42.721283, 17.542980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595848, 43.136372, 18.150455>,  <28.763605, 42.687992, 17.498163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595848, 43.136372, 18.150455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.270861, 42.912380, 18.085560>,  <28.075869, 42.777985, 18.046621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.270861, 42.912380, 18.085560>,  <28.595848, 43.136372, 18.150455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270861, 42.912380, 18.085560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029828, -0.237994, 0.970808,
		-0.582241, 0.793591, 0.176660,
		-0.812469, -0.559975, -0.162241,
		28.027121, 42.744389, 18.036888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331886, 43.178501, 18.753302>,  <28.595848, 43.136372, 18.150455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331886, 43.178501, 18.753302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.117052, 42.882309, 18.591696>,  <27.988152, 42.704594, 18.494732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.117052, 42.882309, 18.591696>,  <28.331886, 43.178501, 18.753302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117052, 42.882309, 18.591696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004310, -0.476541, 0.879141,
		-0.843518, 0.473914, 0.252751,
		-0.537084, -0.740482, -0.404014,
		27.955927, 42.660164, 18.470491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702366, 43.127384, 19.190580>,  <28.331886, 43.178501, 18.753302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702366, 43.127384, 19.190580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.743225, 42.767605, 19.020615>,  <27.767740, 42.551735, 18.918636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.743225, 42.767605, 19.020615>,  <27.702366, 43.127384, 19.190580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743225, 42.767605, 19.020615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113831, -0.413773, 0.903236,
		-0.988235, -0.140632, 0.060120,
		0.102148, -0.899453, -0.424913,
		27.773869, 42.497768, 18.893141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207762, 42.724998, 19.504799>,  <27.702366, 43.127384, 19.190580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207762, 42.724998, 19.504799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.436419, 42.444263, 19.334785>,  <27.573612, 42.275822, 19.232777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.436419, 42.444263, 19.334785>,  <27.207762, 42.724998, 19.504799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436419, 42.444263, 19.334785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022099, -0.531000, 0.847084,
		-0.820206, -0.474835, -0.319051,
		0.571642, -0.701834, -0.425036,
		27.607910, 42.233715, 19.207275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882290, 42.117874, 19.713516>,  <27.207762, 42.724998, 19.504799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882290, 42.117874, 19.713516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.258745, 42.019699, 19.620544>,  <27.484617, 41.960796, 19.564762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.258745, 42.019699, 19.620544>,  <26.882290, 42.117874, 19.713516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258745, 42.019699, 19.620544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037208, -0.608210, 0.792904,
		-0.335970, -0.754880, -0.563277,
		0.941138, -0.245434, -0.232428,
		27.541086, 41.946068, 19.550816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.328285, 44.408710, 14.518741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.679163, 44.218067, 14.541977>,  <31.889690, 44.103683, 14.555919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.679163, 44.218067, 14.541977>,  <31.328285, 44.408710, 14.518741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679163, 44.218067, 14.541977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179835, -0.213959, 0.960146,
		-0.445183, -0.852683, -0.273394,
		0.877195, -0.476607, 0.058091,
		31.942322, 44.075085, 14.559404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263332, 43.702965, 14.820699>,  <31.328285, 44.408710, 14.518741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263332, 43.702965, 14.820699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609594, 43.887798, 14.897762>,  <31.817352, 43.998699, 14.944000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609594, 43.887798, 14.897762>,  <31.263332, 43.702965, 14.820699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609594, 43.887798, 14.897762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260034, 0.086157, 0.961748,
		0.427810, -0.882641, 0.194740,
		0.865656, 0.462085, 0.192658,
		31.869291, 44.026424, 14.955560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608501, 43.311298, 15.401847>,  <31.263332, 43.702965, 14.820699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608501, 43.311298, 15.401847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.763525, 43.679825, 15.414376>,  <31.856539, 43.900940, 15.421894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.763525, 43.679825, 15.414376>,  <31.608501, 43.311298, 15.401847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763525, 43.679825, 15.414376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104811, 0.010280, 0.994439,
		0.915867, -0.388688, 0.100548,
		0.387560, 0.921312, 0.031323,
		31.879793, 43.956219, 15.423774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177868, 43.268696, 15.842600>,  <31.608501, 43.311298, 15.401847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177868, 43.268696, 15.842600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.073174, 43.654053, 15.819367>,  <32.010357, 43.885265, 15.805429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.073174, 43.654053, 15.819367>,  <32.177868, 43.268696, 15.842600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073174, 43.654053, 15.819367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010384, 0.057364, 0.998299,
		0.965084, 0.261893, -0.005010,
		-0.261735, 0.963391, -0.058080,
		31.994654, 43.943069, 15.801943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626026, 43.557949, 16.267368>,  <32.177868, 43.268696, 15.842600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626026, 43.557949, 16.267368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.328259, 43.823421, 16.238060>,  <32.149597, 43.982704, 16.220474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.328259, 43.823421, 16.238060>,  <32.626026, 43.557949, 16.267368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328259, 43.823421, 16.238060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029999, 0.142865, 0.989287,
		0.667041, 0.734244, -0.126260,
		-0.744417, 0.663683, -0.073270,
		32.104935, 44.022526, 16.216080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743671, 43.840416, 16.826109>,  <32.626026, 43.557949, 16.267368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743671, 43.840416, 16.826109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.412907, 44.047138, 16.737444>,  <32.214447, 44.171173, 16.684246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.412907, 44.047138, 16.737444>,  <32.743671, 43.840416, 16.826109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412907, 44.047138, 16.737444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054457, 0.318730, 0.946280,
		0.559694, 0.794557, -0.235417,
		-0.826908, 0.516807, -0.221661,
		32.164833, 44.202179, 16.670946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862938, 44.533344, 16.929289>,  <32.743671, 43.840416, 16.826109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862938, 44.533344, 16.929289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.475590, 44.447620, 16.980402>,  <32.243179, 44.396187, 17.011070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.475590, 44.447620, 16.980402>,  <32.862938, 44.533344, 16.929289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475590, 44.447620, 16.980402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076261, 0.233418, 0.969381,
		-0.237575, 0.948466, -0.209692,
		-0.968371, -0.214309, 0.127785,
		32.185078, 44.383327, 17.018738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584358, 45.077686, 17.220531>,  <32.862938, 44.533344, 16.929289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584358, 45.077686, 17.220531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.318321, 44.790863, 17.303938>,  <32.158699, 44.618771, 17.353981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.318321, 44.790863, 17.303938>,  <32.584358, 45.077686, 17.220531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318321, 44.790863, 17.303938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121260, 0.171819, 0.977637,
		-0.736847, 0.675507, -0.027326,
		-0.665096, -0.717056, 0.208517,
		32.118793, 44.575745, 17.366493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077045, 45.299603, 17.704073>,  <32.584358, 45.077686, 17.220531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077045, 45.299603, 17.704073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.036850, 44.903999, 17.747454>,  <32.012733, 44.666637, 17.773481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.036850, 44.903999, 17.747454>,  <32.077045, 45.299603, 17.704073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036850, 44.903999, 17.747454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157275, 0.123422, 0.979812,
		-0.982429, 0.081402, -0.167949,
		-0.100487, -0.989010, 0.108451,
		32.006702, 44.607296, 17.779989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565651, 45.272064, 18.152618>,  <32.077045, 45.299603, 17.704073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565651, 45.272064, 18.152618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.729298, 44.909218, 18.192127>,  <31.827486, 44.691509, 18.215834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.729298, 44.909218, 18.192127>,  <31.565651, 45.272064, 18.152618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729298, 44.909218, 18.192127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070691, 0.076414, 0.994567,
		-0.909740, -0.413875, -0.032863,
		0.409116, -0.907121, 0.098774,
		31.852032, 44.637081, 18.221760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190426, 45.078114, 18.701834>,  <31.565651, 45.272064, 18.152618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190426, 45.078114, 18.701834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484999, 44.808487, 18.678862>,  <31.661743, 44.646709, 18.665079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484999, 44.808487, 18.678862>,  <31.190426, 45.078114, 18.701834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484999, 44.808487, 18.678862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154358, 0.084771, 0.984372,
		-0.658665, -0.733789, 0.166475,
		0.736433, -0.674068, -0.057430,
		31.705929, 44.606266, 18.661633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986561, 44.576691, 19.207859>,  <31.190426, 45.078114, 18.701834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986561, 44.576691, 19.207859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382856, 44.557461, 19.157059>,  <31.620634, 44.545921, 19.126579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382856, 44.557461, 19.157059>,  <30.986561, 44.576691, 19.207859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382856, 44.557461, 19.157059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121353, -0.106268, 0.986905,
		-0.060936, -0.993175, -0.099450,
		0.990738, -0.048069, -0.127001,
		31.680077, 44.543037, 19.118958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624161, 43.927402, 19.255938>,  <30.986561, 44.576691, 19.207859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624161, 43.927402, 19.255938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.353546, 44.160004, 19.436668>,  <30.191177, 44.299564, 19.545107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.353546, 44.160004, 19.436668>,  <30.624161, 43.927402, 19.255938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353546, 44.160004, 19.436668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348757, 0.287378, -0.892066,
		-0.648588, -0.761093, 0.008383,
		-0.676537, 0.581507, 0.451827,
		30.150585, 44.334457, 19.572216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060482, 43.723339, 18.992727>,  <30.624161, 43.927402, 19.255938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060482, 43.723339, 18.992727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.952448, 44.083782, 19.128410>,  <29.887627, 44.300049, 19.209820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.952448, 44.083782, 19.128410>,  <30.060482, 43.723339, 18.992727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952448, 44.083782, 19.128410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480411, 0.179192, -0.858543,
		-0.834421, -0.394839, 0.384504,
		-0.270086, 0.901106, 0.339207,
		29.871422, 44.354115, 19.230173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415894, 43.853043, 18.729549>,  <30.060482, 43.723339, 18.992727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415894, 43.853043, 18.729549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557570, 44.211117, 18.837772>,  <29.642574, 44.425961, 18.902706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557570, 44.211117, 18.837772>,  <29.415894, 43.853043, 18.729549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557570, 44.211117, 18.837772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437004, 0.414212, -0.798408,
		-0.826788, 0.164553, 0.537907,
		0.354188, 0.895182, 0.270556,
		29.663826, 44.479671, 18.918940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855200, 44.267769, 18.702810>,  <29.415894, 43.853043, 18.729549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855200, 44.267769, 18.702810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187254, 44.487728, 18.665966>,  <29.386486, 44.619705, 18.643860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187254, 44.487728, 18.665966>,  <28.855200, 44.267769, 18.702810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187254, 44.487728, 18.665966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406924, 0.484598, -0.774324,
		-0.381162, 0.680277, 0.626050,
		0.830137, 0.549898, -0.092111,
		29.436295, 44.652699, 18.638332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591196, 44.959724, 18.405684>,  <28.855200, 44.267769, 18.702810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591196, 44.959724, 18.405684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985123, 44.951046, 18.336786>,  <29.221478, 44.945839, 18.295448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985123, 44.951046, 18.336786>,  <28.591196, 44.959724, 18.405684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985123, 44.951046, 18.336786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145209, 0.440820, -0.885772,
		0.095144, 0.897333, 0.430977,
		0.984816, -0.021694, -0.172242,
		29.280567, 44.944538, 18.285114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775562, 45.687702, 18.201094>,  <28.591196, 44.959724, 18.405684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775562, 45.687702, 18.201094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075068, 45.472912, 18.045650>,  <29.254770, 45.344040, 17.952385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075068, 45.472912, 18.045650>,  <28.775562, 45.687702, 18.201094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075068, 45.472912, 18.045650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169337, 0.411859, -0.895375,
		0.640843, 0.736229, 0.217456,
		0.748763, -0.536972, -0.388608,
		29.299696, 45.311821, 17.929068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245506, 46.172913, 17.948797>,  <28.775562, 45.687702, 18.201094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245506, 46.172913, 17.948797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.307255, 45.825115, 17.761116>,  <29.344303, 45.616436, 17.648508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.307255, 45.825115, 17.761116>,  <29.245506, 46.172913, 17.948797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307255, 45.825115, 17.761116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072273, 0.463683, -0.883048,
		0.985366, 0.170227, 0.008738,
		0.154370, -0.869494, -0.469201,
		29.353565, 45.564266, 17.620356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672836, 46.429554, 17.351713>,  <29.245506, 46.172913, 17.948797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672836, 46.429554, 17.351713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557543, 46.054226, 17.275314>,  <29.488367, 45.829029, 17.229475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557543, 46.054226, 17.275314>,  <29.672836, 46.429554, 17.351713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557543, 46.054226, 17.275314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033700, 0.189398, -0.981322,
		0.956967, -0.289287, -0.022970,
		-0.288235, -0.938318, -0.190997,
		29.471073, 45.772732, 17.218016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065367, 46.208775, 16.747723>,  <29.672836, 46.429554, 17.351713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065367, 46.208775, 16.747723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758257, 45.952808, 16.760605>,  <29.573992, 45.799229, 16.768333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758257, 45.952808, 16.760605>,  <30.065367, 46.208775, 16.747723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758257, 45.952808, 16.760605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135413, 0.112934, -0.984332,
		0.626249, -0.760104, -0.173360,
		-0.767773, -0.639912, 0.032204,
		29.527925, 45.760834, 16.770266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220636, 45.769718, 16.318838>,  <30.065367, 46.208775, 16.747723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220636, 45.769718, 16.318838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.822086, 45.743607, 16.340647>,  <29.582956, 45.727940, 16.353733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.822086, 45.743607, 16.340647>,  <30.220636, 45.769718, 16.318838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822086, 45.743607, 16.340647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067047, 0.208400, -0.975743,
		0.052332, -0.975863, -0.212021,
		-0.996376, -0.065278, 0.054523,
		29.523174, 45.724022, 16.357004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053598, 45.384941, 15.694145>,  <30.220636, 45.769718, 16.318838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053598, 45.384941, 15.694145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701084, 45.528431, 15.817204>,  <29.489574, 45.614525, 15.891040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701084, 45.528431, 15.817204>,  <30.053598, 45.384941, 15.694145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701084, 45.528431, 15.817204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293541, 0.094654, -0.951249,
		-0.370359, -0.928631, 0.021884,
		-0.881288, 0.358727, 0.307647,
		29.436697, 45.636047, 15.909499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553963, 45.019646, 15.349664>,  <30.053598, 45.384941, 15.694145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553963, 45.019646, 15.349664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369833, 45.367970, 15.418709>,  <29.259356, 45.576965, 15.460135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369833, 45.367970, 15.418709>,  <29.553963, 45.019646, 15.349664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369833, 45.367970, 15.418709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330361, 0.012440, -0.943773,
		-0.823992, -0.491465, 0.281955,
		-0.460324, 0.870808, 0.172612,
		29.231735, 45.629211, 15.470492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950026, 45.002831, 14.962676>,  <29.553963, 45.019646, 15.349664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950026, 45.002831, 14.962676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.005379, 45.396538, 15.006630>,  <29.038589, 45.632763, 15.033003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.005379, 45.396538, 15.006630>,  <28.950026, 45.002831, 14.962676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005379, 45.396538, 15.006630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562615, 0.169438, -0.809170,
		-0.815055, 0.050151, 0.577208,
		0.138381, 0.984264, 0.109885,
		29.046892, 45.691818, 15.039596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268217, 45.156063, 14.806139>,  <28.950026, 45.002831, 14.962676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268217, 45.156063, 14.806139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.051533, 44.881268, 14.612398>,  <27.921522, 44.716389, 14.496153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.051533, 44.881268, 14.612398>,  <28.268217, 45.156063, 14.806139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051533, 44.881268, 14.612398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171965, -0.654611, 0.736147,
		-0.822787, 0.315486, 0.472747,
		-0.541709, -0.686988, -0.484353,
		27.889021, 44.675171, 14.467093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877014, 44.808708, 15.312183>,  <28.268217, 45.156063, 14.806139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877014, 44.808708, 15.312183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903618, 44.544434, 15.013098>,  <27.919580, 44.385868, 14.833647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903618, 44.544434, 15.013098>,  <27.877014, 44.808708, 15.312183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903618, 44.544434, 15.013098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064899, -0.750650, 0.657504,
		-0.995673, 0.004796, -0.092802,
		0.066508, -0.660682, -0.747714,
		27.923571, 44.346230, 14.788784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182035, 44.603954, 15.299938>,  <27.877014, 44.808708, 15.312183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182035, 44.603954, 15.299938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441790, 44.354282, 15.126179>,  <27.597643, 44.204479, 15.021923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441790, 44.354282, 15.126179>,  <27.182035, 44.603954, 15.299938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441790, 44.354282, 15.126179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140716, -0.659996, 0.737973,
		-0.747327, -0.418101, -0.516424,
		0.649385, -0.624176, -0.434399,
		27.636606, 44.167030, 14.995859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958992, 43.962978, 15.524009>,  <27.182035, 44.603954, 15.299938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958992, 43.962978, 15.524009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.319630, 43.849876, 15.393055>,  <27.536013, 43.782017, 15.314483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.319630, 43.849876, 15.393055>,  <26.958992, 43.962978, 15.524009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319630, 43.849876, 15.393055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042592, -0.811157, 0.583275,
		-0.430481, -0.511934, -0.743377,
		0.901594, -0.282751, -0.327383,
		27.590107, 43.765053, 15.294840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905882, 43.245003, 15.451919>,  <26.958992, 43.962978, 15.524009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905882, 43.245003, 15.451919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296392, 43.319195, 15.496612>,  <27.530699, 43.363712, 15.523428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296392, 43.319195, 15.496612>,  <26.905882, 43.245003, 15.451919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296392, 43.319195, 15.496612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065991, -0.746315, 0.662314,
		0.206236, -0.639227, -0.740848,
		0.976274, 0.185482, 0.111734,
		27.589275, 43.374840, 15.530131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185585, 42.598278, 15.566740>,  <26.905882, 43.245003, 15.451919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185585, 42.598278, 15.566740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442549, 42.865101, 15.717657>,  <27.596727, 43.025192, 15.808208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442549, 42.865101, 15.717657>,  <27.185585, 42.598278, 15.566740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442549, 42.865101, 15.717657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102991, -0.562997, 0.820017,
		0.759409, -0.487929, -0.430375,
		0.642410, 0.667053, 0.377293,
		27.635271, 43.065216, 15.830845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632841, 42.190510, 15.869615>,  <27.185585, 42.598278, 15.566740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632841, 42.190510, 15.869615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.704180, 42.546154, 16.038221>,  <27.746983, 42.759541, 16.139385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.704180, 42.546154, 16.038221>,  <27.632841, 42.190510, 15.869615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704180, 42.546154, 16.038221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126797, -0.404047, 0.905908,
		0.975764, -0.215014, 0.040676,
		0.178348, 0.889109, 0.421517,
		27.757685, 42.812885, 16.164677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245972, 42.078053, 16.300573>,  <27.632841, 42.190510, 15.869615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245972, 42.078053, 16.300573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.019585, 42.376846, 16.440107>,  <27.883753, 42.556122, 16.523829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.019585, 42.376846, 16.440107>,  <28.245972, 42.078053, 16.300573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019585, 42.376846, 16.440107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109630, -0.487559, 0.866180,
		0.817104, 0.451989, 0.357836,
		-0.565970, 0.746989, 0.348835,
		27.849794, 42.600945, 16.544758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939150, 42.208313, 16.014179>,  <28.245972, 42.078053, 16.300573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939150, 42.208313, 16.014179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172308, 41.898552, 15.915769>,  <29.312202, 41.712696, 15.856722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172308, 41.898552, 15.915769>,  <28.939150, 42.208313, 16.014179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172308, 41.898552, 15.915769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148343, 0.196274, -0.969263,
		0.798890, 0.601477, -0.000470,
		0.582897, -0.774404, -0.246027,
		29.347178, 41.666229, 15.841961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304804, 42.447266, 15.485333>,  <28.939150, 42.208313, 16.014179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304804, 42.447266, 15.485333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.383982, 42.058472, 15.434639>,  <29.431488, 41.825195, 15.404222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.383982, 42.058472, 15.434639>,  <29.304804, 42.447266, 15.485333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383982, 42.058472, 15.434639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166126, 0.094157, -0.981599,
		0.966033, 0.215357, -0.142834,
		0.197945, -0.971986, -0.126735,
		29.443365, 41.766876, 15.396619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675341, 42.362953, 14.883595>,  <29.304804, 42.447266, 15.485333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675341, 42.362953, 14.883595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536898, 41.990616, 14.930484>,  <29.453833, 41.767212, 14.958617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536898, 41.990616, 14.930484>,  <29.675341, 42.362953, 14.883595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536898, 41.990616, 14.930484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292820, -0.011528, -0.956098,
		0.891329, -0.365237, -0.268579,
		-0.346106, -0.930843, 0.117224,
		29.433065, 41.711365, 14.965651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970709, 41.947048, 14.463581>,  <29.675341, 42.362953, 14.883595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970709, 41.947048, 14.463581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649101, 41.715847, 14.519388>,  <29.456137, 41.577126, 14.552873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649101, 41.715847, 14.519388>,  <29.970709, 41.947048, 14.463581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649101, 41.715847, 14.519388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095999, -0.105378, -0.989788,
		0.586803, -0.809202, 0.029238,
		-0.804019, -0.578004, 0.139518,
		29.407896, 41.542446, 14.561244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987635, 41.186054, 14.220798>,  <29.970709, 41.947048, 14.463581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987635, 41.186054, 14.220798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.592997, 41.250828, 14.212781>,  <29.356213, 41.289692, 14.207971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.592997, 41.250828, 14.212781>,  <29.987635, 41.186054, 14.220798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592997, 41.250828, 14.212781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016284, -0.219928, -0.975380,
		-0.162357, -0.961981, 0.219618,
		-0.986598, 0.161936, -0.020042,
		29.297018, 41.299408, 14.206768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803553, 40.711864, 13.761928>,  <29.987635, 41.186054, 14.220798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803553, 40.711864, 13.761928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.476074, 40.940800, 13.780551>,  <29.279587, 41.078159, 13.791725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.476074, 40.940800, 13.780551>,  <29.803553, 40.711864, 13.761928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476074, 40.940800, 13.780551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152339, -0.138305, -0.978603,
		-0.553650, -0.808272, 0.200419,
		-0.818697, 0.572335, 0.046558,
		29.230465, 41.112499, 13.794518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181402, 40.292557, 13.391211>,  <29.803553, 40.711864, 13.761928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181402, 40.292557, 13.391211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140535, 40.690228, 13.404879>,  <29.116014, 40.928829, 13.413079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140535, 40.690228, 13.404879>,  <29.181402, 40.292557, 13.391211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140535, 40.690228, 13.404879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173299, 0.016037, -0.984739,
		-0.979556, -0.106531, 0.170651,
		-0.102169, 0.994180, 0.034171,
		29.109884, 40.988480, 13.415130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672653, 40.350670, 12.874974>,  <29.181402, 40.292557, 13.391211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672653, 40.350670, 12.874974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.876648, 40.689323, 12.935798>,  <28.999044, 40.892517, 12.972292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.876648, 40.689323, 12.935798>,  <28.672653, 40.350670, 12.874974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876648, 40.689323, 12.935798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045345, 0.150068, -0.987635,
		-0.858987, 0.510575, 0.038142,
		0.509986, 0.846636, 0.152059,
		29.029644, 40.943314, 12.981416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442356, 40.754784, 12.345018>,  <28.672653, 40.350670, 12.874974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442356, 40.754784, 12.345018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786737, 40.915745, 12.469489>,  <28.993366, 41.012321, 12.544171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786737, 40.915745, 12.469489>,  <28.442356, 40.754784, 12.345018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786737, 40.915745, 12.469489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263645, 0.170162, -0.949493,
		-0.435031, 0.899508, 0.040410,
		0.860953, 0.402405, 0.311177,
		29.045023, 41.036465, 12.562842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.239479, 37.661396, 27.833029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511158, 37.954323, 27.813450>,  <33.674168, 38.130077, 27.801702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511158, 37.954323, 27.813450>,  <33.239479, 37.661396, 27.833029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511158, 37.954323, 27.813450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239530, 0.158131, -0.957925,
		-0.693766, 0.662348, 0.282815,
		0.679201, 0.732318, -0.048946,
		33.714920, 38.174019, 27.798765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963764, 38.382378, 27.674942>,  <33.239479, 37.661396, 27.833029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963764, 38.382378, 27.674942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327484, 38.311131, 27.524506>,  <33.545715, 38.268383, 27.434244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327484, 38.311131, 27.524506>,  <32.963764, 38.382378, 27.674942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327484, 38.311131, 27.524506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318198, 0.284832, -0.904224,
		0.268182, 0.941883, 0.202321,
		0.909301, -0.178119, -0.376092,
		33.600273, 38.257694, 27.411678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185783, 38.977665, 27.372557>,  <32.963764, 38.382378, 27.674942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185783, 38.977665, 27.372557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400696, 38.687294, 27.200806>,  <33.529644, 38.513073, 27.097755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400696, 38.687294, 27.200806>,  <33.185783, 38.977665, 27.372557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400696, 38.687294, 27.200806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153454, 0.416462, -0.896109,
		0.829327, 0.547351, 0.112361,
		0.537280, -0.725925, -0.429376,
		33.561878, 38.469517, 27.071993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470470, 39.328075, 26.862379>,  <33.185783, 38.977665, 27.372557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470470, 39.328075, 26.862379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504627, 38.941734, 26.764526>,  <33.525120, 38.709930, 26.705814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504627, 38.941734, 26.764526>,  <33.470470, 39.328075, 26.862379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504627, 38.941734, 26.764526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047129, 0.241337, -0.969297,
		0.995232, 0.094301, -0.024911,
		0.085393, -0.965849, -0.244631,
		33.530247, 38.651981, 26.691137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769268, 39.421558, 26.193726>,  <33.470470, 39.328075, 26.862379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769268, 39.421558, 26.193726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605682, 39.057976, 26.226099>,  <33.507530, 38.839828, 26.245523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605682, 39.057976, 26.226099>,  <33.769268, 39.421558, 26.193726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605682, 39.057976, 26.226099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286941, 0.043899, -0.956942,
		0.866262, -0.414581, -0.278770,
		-0.408967, -0.908953, 0.080932,
		33.482994, 38.785290, 26.250380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954708, 39.092510, 25.627165>,  <33.769268, 39.421558, 26.193726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954708, 39.092510, 25.627165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617901, 38.909321, 25.741194>,  <33.415817, 38.799408, 25.809612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617901, 38.909321, 25.741194>,  <33.954708, 39.092510, 25.627165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617901, 38.909321, 25.741194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368115, 0.101503, -0.924223,
		0.394338, -0.883149, -0.254056,
		-0.842015, -0.457979, 0.285074,
		33.365295, 38.771927, 25.826715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890896, 38.606441, 25.069210>,  <33.954708, 39.092510, 25.627165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890896, 38.606441, 25.069210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.526703, 38.630589, 25.232857>,  <33.308186, 38.645077, 25.331045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.526703, 38.630589, 25.232857>,  <33.890896, 38.606441, 25.069210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526703, 38.630589, 25.232857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412575, -0.064906, -0.908608,
		-0.028287, -0.996064, 0.083998,
		-0.910484, 0.060357, 0.409116,
		33.253559, 38.648701, 25.355591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530613, 38.098736, 24.694445>,  <33.890896, 38.606441, 25.069210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530613, 38.098736, 24.694445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251282, 38.336384, 24.854118>,  <33.083683, 38.478973, 24.949923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251282, 38.336384, 24.854118>,  <33.530613, 38.098736, 24.694445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251282, 38.336384, 24.854118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552143, -0.092239, -0.828631,
		-0.455489, -0.799068, 0.392454,
		-0.698332, 0.594123, 0.399186,
		33.041782, 38.514622, 24.973875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899551, 37.768124, 24.524652>,  <33.530613, 38.098736, 24.694445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899551, 37.768124, 24.524652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818081, 38.150074, 24.611116>,  <32.769199, 38.379246, 24.662994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818081, 38.150074, 24.611116>,  <32.899551, 37.768124, 24.524652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818081, 38.150074, 24.611116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533937, 0.076726, -0.842036,
		-0.820625, -0.286922, 0.494216,
		-0.203680, 0.954876, 0.216161,
		32.756977, 38.436539, 24.675964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182137, 37.816223, 24.467873>,  <32.899551, 37.768124, 24.524652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182137, 37.816223, 24.467873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.300591, 38.198208, 24.460281>,  <32.371662, 38.427399, 24.455727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.300591, 38.198208, 24.460281>,  <32.182137, 37.816223, 24.467873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300591, 38.198208, 24.460281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551364, 0.154686, -0.819799,
		-0.779938, 0.253232, 0.572337,
		0.296132, 0.954959, -0.018977,
		32.389431, 38.484695, 24.454588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529806, 38.213154, 24.390600>,  <32.182137, 37.816223, 24.467873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529806, 38.213154, 24.390600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836937, 38.441151, 24.273607>,  <32.021217, 38.577950, 24.203411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836937, 38.441151, 24.273607>,  <31.529806, 38.213154, 24.390600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836937, 38.441151, 24.273607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525282, 0.298756, -0.796758,
		-0.366768, 0.765409, 0.528802,
		0.767828, 0.569995, -0.292482,
		32.067284, 38.612148, 24.185863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236849, 38.821938, 24.111822>,  <31.529806, 38.213154, 24.390600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236849, 38.821938, 24.111822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.594667, 38.842472, 23.934217>,  <31.809359, 38.854794, 23.827654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.594667, 38.842472, 23.934217>,  <31.236849, 38.821938, 24.111822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594667, 38.842472, 23.934217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445653, 0.178703, -0.877188,
		0.034313, 0.982562, 0.182738,
		0.894548, 0.051338, -0.444014,
		31.863031, 38.857872, 23.801014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139336, 39.455509, 24.558559>,  <31.236849, 38.821938, 24.111822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139336, 39.455509, 24.558559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.759592, 39.576027, 24.594212>,  <30.531746, 39.648338, 24.615602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.759592, 39.576027, 24.594212>,  <31.139336, 39.455509, 24.558559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759592, 39.576027, 24.594212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103597, 0.032348, 0.994093,
		0.296630, 0.952983, -0.061923,
		-0.949357, 0.301293, 0.089130,
		30.474785, 39.666416, 24.620951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223967, 40.014107, 24.984081>,  <31.139336, 39.455509, 24.558559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223967, 40.014107, 24.984081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.857656, 39.855129, 25.007380>,  <30.637871, 39.759743, 25.021358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.857656, 39.855129, 25.007380>,  <31.223967, 40.014107, 24.984081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857656, 39.855129, 25.007380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060833, 0.006110, 0.998129,
		-0.397059, 0.917605, 0.018583,
		-0.915775, -0.397447, 0.058246,
		30.582924, 39.735897, 25.024853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852758, 40.390373, 25.610794>,  <31.223967, 40.014107, 24.984081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852758, 40.390373, 25.610794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.644768, 40.056072, 25.540203>,  <30.519974, 39.855492, 25.497849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.644768, 40.056072, 25.540203>,  <30.852758, 40.390373, 25.610794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644768, 40.056072, 25.540203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151356, -0.113188, 0.981978,
		-0.840663, 0.537319, -0.067640,
		-0.519979, -0.835750, -0.176479,
		30.488773, 39.805347, 25.487259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384142, 40.440426, 26.097198>,  <30.852758, 40.390373, 25.610794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384142, 40.440426, 26.097198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.385576, 40.052696, 25.998892>,  <30.386436, 39.820061, 25.939907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.385576, 40.052696, 25.998892>,  <30.384142, 40.440426, 26.097198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385576, 40.052696, 25.998892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101167, -0.244859, 0.964266,
		-0.994863, 0.021406, -0.098942,
		0.003586, -0.969322, -0.245767,
		30.386652, 39.761898, 25.925161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822956, 40.063110, 26.461103>,  <30.384142, 40.440426, 26.097198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822956, 40.063110, 26.461103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079176, 39.775471, 26.353329>,  <30.232908, 39.602886, 26.288664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079176, 39.775471, 26.353329>,  <29.822956, 40.063110, 26.461103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079176, 39.775471, 26.353329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054470, -0.392529, 0.918125,
		-0.765981, -0.573430, -0.290605,
		0.640552, -0.719096, -0.269435,
		30.271341, 39.559742, 26.272499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541315, 39.519569, 26.819284>,  <29.822956, 40.063110, 26.461103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541315, 39.519569, 26.819284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.926704, 39.458237, 26.731464>,  <30.157938, 39.421436, 26.678772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.926704, 39.458237, 26.731464>,  <29.541315, 39.519569, 26.819284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926704, 39.458237, 26.731464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165971, -0.301497, 0.938911,
		-0.210161, -0.941057, -0.265036,
		0.963476, -0.153335, -0.219551,
		30.215748, 39.412235, 26.665600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646198, 38.881939, 27.078541>,  <29.541315, 39.519569, 26.819284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646198, 38.881939, 27.078541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.014812, 39.033760, 27.045780>,  <30.235981, 39.124851, 27.026125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.014812, 39.033760, 27.045780>,  <29.646198, 38.881939, 27.078541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014812, 39.033760, 27.045780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271102, -0.477935, 0.835513,
		0.277980, -0.792160, -0.543333,
		0.921537, 0.379554, -0.081900,
		30.291273, 39.147625, 27.021210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001293, 38.413548, 27.382914>,  <29.646198, 38.881939, 27.078541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001293, 38.413548, 27.382914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.245378, 38.729603, 27.359865>,  <30.391830, 38.919235, 27.346037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.245378, 38.729603, 27.359865>,  <30.001293, 38.413548, 27.382914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245378, 38.729603, 27.359865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363284, -0.214444, 0.906663,
		0.704033, -0.574191, -0.417902,
		0.610215, 0.790138, -0.057619,
		30.428442, 38.966644, 27.342579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572626, 38.187679, 27.770170>,  <30.001293, 38.413548, 27.382914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572626, 38.187679, 27.770170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.628000, 38.580677, 27.720312>,  <30.661224, 38.816475, 27.690397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.628000, 38.580677, 27.720312>,  <30.572626, 38.187679, 27.770170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628000, 38.580677, 27.720312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378579, 0.063802, 0.923367,
		0.915158, -0.175015, -0.363120,
		0.138435, 0.982496, -0.124646,
		30.669531, 38.875427, 27.682919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219578, 38.307312, 28.054399>,  <30.572626, 38.187679, 27.770170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219578, 38.307312, 28.054399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.023491, 38.654797, 28.082773>,  <30.905838, 38.863285, 28.099798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.023491, 38.654797, 28.082773>,  <31.219578, 38.307312, 28.054399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023491, 38.654797, 28.082773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195675, 0.030382, 0.980198,
		0.849351, 0.494391, -0.184878,
		-0.490218, 0.868708, 0.070935,
		30.876425, 38.915409, 28.104053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680439, 38.603336, 28.448099>,  <31.219578, 38.307312, 28.054399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680439, 38.603336, 28.448099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.338757, 38.811218, 28.454296>,  <31.133747, 38.935947, 28.458015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.338757, 38.811218, 28.454296>,  <31.680439, 38.603336, 28.448099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338757, 38.811218, 28.454296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042903, 0.040758, 0.998248,
		0.518160, 0.853375, -0.057113,
		-0.854207, 0.519703, 0.015494,
		31.082495, 38.967129, 28.458944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791691, 39.287720, 28.693922>,  <31.680439, 38.603336, 28.448099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791691, 39.287720, 28.693922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.417004, 39.172810, 28.773954>,  <31.192192, 39.103863, 28.821974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.417004, 39.172810, 28.773954>,  <31.791691, 39.287720, 28.693922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417004, 39.172810, 28.773954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173045, 0.116880, 0.977954,
		-0.304325, 0.950691, -0.059772,
		-0.936719, -0.287273, 0.200082,
		31.135988, 39.086628, 28.833979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475092, 39.897583, 29.059912>,  <31.791691, 39.287720, 28.693922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475092, 39.897583, 29.059912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.237074, 39.592377, 29.160885>,  <31.094263, 39.409252, 29.221468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.237074, 39.592377, 29.160885>,  <31.475092, 39.897583, 29.059912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237074, 39.592377, 29.160885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067427, 0.265587, 0.961726,
		-0.800858, 0.589292, -0.106589,
		-0.595046, -0.763019, 0.252432,
		31.058559, 39.363472, 29.236614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096270, 40.180817, 29.656160>,  <31.475092, 39.897583, 29.059912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096270, 40.180817, 29.656160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065306, 39.783131, 29.685925>,  <31.046728, 39.544518, 29.703783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065306, 39.783131, 29.685925>,  <31.096270, 40.180817, 29.656160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065306, 39.783131, 29.685925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122814, 0.083576, 0.988904,
		-0.989406, 0.067411, -0.128574,
		-0.077409, -0.994219, 0.074411,
		31.042084, 39.484863, 29.708248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971497, 40.551502, 30.289244>,  <31.096270, 40.180817, 29.656160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971497, 40.551502, 30.289244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.300230, 40.776836, 30.323292>,  <31.497471, 40.912037, 30.343721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.300230, 40.776836, 30.323292>,  <30.971497, 40.551502, 30.289244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300230, 40.776836, 30.323292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403308, 0.680774, -0.611465,
		-0.402406, 0.468193, 0.786680,
		0.821835, 0.563331, 0.085122,
		31.546780, 40.945835, 30.348829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747219, 41.221497, 30.515051>,  <30.971497, 40.551502, 30.289244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747219, 41.221497, 30.515051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.081615, 41.231003, 30.295759>,  <31.282253, 41.236706, 30.164185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.081615, 41.231003, 30.295759>,  <30.747219, 41.221497, 30.515051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081615, 41.231003, 30.295759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451023, 0.598821, -0.661810,
		0.312565, 0.800531, 0.511326,
		0.835991, 0.023761, -0.548228,
		31.332413, 41.238132, 30.131290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757099, 41.865055, 30.243658>,  <30.747219, 41.221497, 30.515051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757099, 41.865055, 30.243658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.971626, 41.630093, 30.001230>,  <31.100342, 41.489117, 29.855774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.971626, 41.630093, 30.001230>,  <30.757099, 41.865055, 30.243658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971626, 41.630093, 30.001230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540911, 0.312014, -0.781065,
		0.647904, 0.746727, -0.150396,
		0.536317, -0.587406, -0.606068,
		31.132521, 41.453873, 29.819410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895298, 42.266113, 29.688311>,  <30.757099, 41.865055, 30.243658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895298, 42.266113, 29.688311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.938236, 41.895271, 29.544668>,  <30.963999, 41.672768, 29.458483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.938236, 41.895271, 29.544668>,  <30.895298, 42.266113, 29.688311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938236, 41.895271, 29.544668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443214, 0.278697, -0.851992,
		0.889966, 0.250619, -0.380988,
		0.107345, -0.927102, -0.359108,
		30.970440, 41.617142, 29.436935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234015, 42.319237, 29.076017>,  <30.895298, 42.266113, 29.688311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234015, 42.319237, 29.076017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.055099, 41.964771, 29.027594>,  <30.947750, 41.752094, 28.998539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.055099, 41.964771, 29.027594>,  <31.234015, 42.319237, 29.076017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055099, 41.964771, 29.027594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303474, 0.277695, -0.911476,
		0.841330, -0.370955, -0.393136,
		-0.447289, -0.886159, -0.121058,
		30.920914, 41.698925, 28.991276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462820, 42.051437, 28.544704>,  <31.234015, 42.319237, 29.076017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462820, 42.051437, 28.544704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.125193, 41.838200, 28.567905>,  <30.922617, 41.710258, 28.581827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.125193, 41.838200, 28.567905>,  <31.462820, 42.051437, 28.544704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125193, 41.838200, 28.567905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150502, 0.131689, -0.979800,
		0.514685, -0.835746, -0.191386,
		-0.844066, -0.533092, 0.058003,
		30.871973, 41.678272, 28.585306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492661, 41.468693, 27.999445>,  <31.462820, 42.051437, 28.544704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492661, 41.468693, 27.999445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.115841, 41.569317, 28.088221>,  <30.889750, 41.629692, 28.141485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.115841, 41.569317, 28.088221>,  <31.492661, 41.468693, 27.999445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115841, 41.569317, 28.088221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157461, 0.252593, -0.954674,
		-0.296219, -0.934298, -0.198344,
		-0.942051, 0.251561, 0.221939,
		30.833225, 41.644787, 28.154802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148840, 41.196037, 27.417881>,  <31.492661, 41.468693, 27.999445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148840, 41.196037, 27.417881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.847292, 41.400867, 27.582542>,  <30.666363, 41.523766, 27.681339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.847292, 41.400867, 27.582542>,  <31.148840, 41.196037, 27.417881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847292, 41.400867, 27.582542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368667, 0.188928, -0.910160,
		-0.543844, -0.837905, 0.046358,
		-0.753869, 0.512075, 0.411655,
		30.621132, 41.554489, 27.706039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479500, 41.044361, 27.030695>,  <31.148840, 41.196037, 27.417881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479500, 41.044361, 27.030695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.418776, 41.400135, 27.203142>,  <30.382341, 41.613598, 27.306610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.418776, 41.400135, 27.203142>,  <30.479500, 41.044361, 27.030695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418776, 41.400135, 27.203142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388879, 0.347248, -0.853342,
		-0.908695, -0.297200, 0.293165,
		-0.151813, 0.889433, 0.431117,
		30.373232, 41.666965, 27.332478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756813, 41.264656, 26.879576>,  <30.479500, 41.044361, 27.030695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756813, 41.264656, 26.879576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.998491, 41.577145, 26.942360>,  <30.143497, 41.764637, 26.980030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.998491, 41.577145, 26.942360>,  <29.756813, 41.264656, 26.879576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998491, 41.577145, 26.942360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333454, 0.426790, -0.840630,
		-0.723711, 0.455565, 0.518367,
		0.604195, 0.781224, 0.156963,
		30.179750, 41.811512, 26.989449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345846, 41.812958, 26.760757>,  <29.756813, 41.264656, 26.879576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345846, 41.812958, 26.760757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.713552, 41.954205, 26.691183>,  <29.934177, 42.038952, 26.649439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.713552, 41.954205, 26.691183>,  <29.345846, 41.812958, 26.760757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713552, 41.954205, 26.691183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358268, 0.567514, -0.741331,
		-0.163065, 0.743798, 0.648208,
		0.919268, 0.353117, -0.173938,
		29.989332, 42.060139, 26.639002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252293, 42.380810, 26.370070>,  <29.345846, 41.812958, 26.760757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252293, 42.380810, 26.370070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.646204, 42.346256, 26.309732>,  <29.882551, 42.325523, 26.273529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.646204, 42.346256, 26.309732>,  <29.252293, 42.380810, 26.370070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646204, 42.346256, 26.309732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083909, 0.523760, -0.847723,
		0.152233, 0.847475, 0.508539,
		0.984776, -0.086380, -0.150845,
		29.941637, 42.320343, 26.264479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543543, 42.997753, 26.047802>,  <29.252293, 42.380810, 26.370070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543543, 42.997753, 26.047802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.808226, 42.717674, 25.940569>,  <29.967035, 42.549625, 25.876228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.808226, 42.717674, 25.940569>,  <29.543543, 42.997753, 26.047802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808226, 42.717674, 25.940569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039648, 0.389734, -0.920074,
		0.748713, 0.598191, 0.285651,
		0.661708, -0.700197, -0.268082,
		30.006739, 42.507614, 25.860144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037792, 43.369946, 25.519152>,  <29.543543, 42.997753, 26.047802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037792, 43.369946, 25.519152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.112942, 42.983154, 25.450274>,  <30.158031, 42.751080, 25.408947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.112942, 42.983154, 25.450274>,  <30.037792, 43.369946, 25.519152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112942, 42.983154, 25.450274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108923, 0.194748, -0.974787,
		0.976135, 0.164381, 0.141914,
		0.187874, -0.966981, -0.172195,
		30.169304, 42.693062, 25.398615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542099, 43.394459, 25.124781>,  <30.037792, 43.369946, 25.519152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542099, 43.394459, 25.124781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397583, 43.026844, 25.061741>,  <30.310873, 42.806274, 25.023916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397583, 43.026844, 25.061741>,  <30.542099, 43.394459, 25.124781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397583, 43.026844, 25.061741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095925, 0.131487, -0.986666,
		0.927507, -0.371588, 0.040655,
		-0.361288, -0.919039, -0.157600,
		30.289196, 42.751133, 25.014462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014404, 43.106785, 24.761089>,  <30.542099, 43.394459, 25.124781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014404, 43.106785, 24.761089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687624, 42.886902, 24.691328>,  <30.491556, 42.754971, 24.649471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687624, 42.886902, 24.691328>,  <31.014404, 43.106785, 24.761089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687624, 42.886902, 24.691328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165568, 0.066126, -0.983979,
		0.552433, -0.832736, 0.036992,
		-0.816949, -0.549707, -0.174405,
		30.442539, 42.721989, 24.639008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267546, 42.732815, 24.194935>,  <31.014404, 43.106785, 24.761089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267546, 42.732815, 24.194935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.871861, 42.674644, 24.187931>,  <30.634449, 42.639744, 24.183729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.871861, 42.674644, 24.187931>,  <31.267546, 42.732815, 24.194935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871861, 42.674644, 24.187931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002479, 0.102897, -0.994689,
		0.146457, -0.984003, -0.101427,
		-0.989214, -0.145428, -0.017509,
		30.575096, 42.631020, 24.182678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148813, 42.261978, 23.681795>,  <31.267546, 42.732815, 24.194935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148813, 42.261978, 23.681795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791388, 42.434048, 23.733168>,  <30.576933, 42.537289, 23.763992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791388, 42.434048, 23.733168>,  <31.148813, 42.261978, 23.681795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791388, 42.434048, 23.733168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061960, 0.165172, -0.984316,
		-0.444644, -0.887506, -0.120938,
		-0.893562, 0.430177, 0.128433,
		30.523319, 42.563099, 23.771698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773521, 42.105831, 23.125240>,  <31.148813, 42.261978, 23.681795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773521, 42.105831, 23.125240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.552473, 42.407684, 23.266737>,  <30.419844, 42.588799, 23.351635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.552473, 42.407684, 23.266737>,  <30.773521, 42.105831, 23.125240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552473, 42.407684, 23.266737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275800, 0.234942, -0.932061,
		-0.786475, -0.612639, 0.078294,
		-0.552622, 0.754636, 0.353742,
		30.386686, 42.634075, 23.372860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106567, 42.026112, 22.930576>,  <30.773521, 42.105831, 23.125240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106567, 42.026112, 22.930576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.150511, 42.420399, 22.981636>,  <30.176876, 42.656971, 23.012272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.150511, 42.420399, 22.981636>,  <30.106567, 42.026112, 22.930576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150511, 42.420399, 22.981636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133188, 0.141867, -0.980885,
		-0.984983, 0.090758, 0.146871,
		0.109859, 0.985716, 0.127649,
		30.183468, 42.716114, 23.019930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596514, 42.312160, 22.525175>,  <30.106567, 42.026112, 22.930576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596514, 42.312160, 22.525175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.816933, 42.637886, 22.598106>,  <29.949184, 42.833321, 22.641865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.816933, 42.637886, 22.598106>,  <29.596514, 42.312160, 22.525175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816933, 42.637886, 22.598106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065217, 0.259851, -0.963444,
		-0.831923, 0.519011, 0.196297,
		0.551046, 0.814313, 0.182328,
		29.982246, 42.882179, 22.652805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267570, 42.836060, 22.287523>,  <29.596514, 42.312160, 22.525175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267570, 42.836060, 22.287523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.629900, 43.004833, 22.302778>,  <29.847298, 43.106098, 22.311932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.629900, 43.004833, 22.302778>,  <29.267570, 42.836060, 22.287523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629900, 43.004833, 22.302778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192888, 0.490886, -0.849603,
		-0.377200, 0.762233, 0.526043,
		0.905823, 0.421937, 0.038136,
		29.901648, 43.131416, 22.314219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262997, 43.514603, 21.999537>,  <29.267570, 42.836060, 22.287523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262997, 43.514603, 21.999537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.658649, 43.457985, 21.983643>,  <29.896042, 43.424015, 21.974106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.658649, 43.457985, 21.983643>,  <29.262997, 43.514603, 21.999537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658649, 43.457985, 21.983643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045935, 0.554281, -0.831062,
		0.139658, 0.820206, 0.554759,
		0.989134, -0.141547, -0.039734,
		29.955389, 43.415520, 21.971722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451063, 44.158878, 21.826708>,  <29.262997, 43.514603, 21.999537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451063, 44.158878, 21.826708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.749092, 43.914124, 21.720528>,  <29.927910, 43.767273, 21.656820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.749092, 43.914124, 21.720528>,  <29.451063, 44.158878, 21.826708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749092, 43.914124, 21.720528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233323, 0.611950, -0.755696,
		0.624840, 0.501115, 0.598715,
		0.745075, -0.611883, -0.265449,
		29.972614, 43.730560, 21.640892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026258, 44.564041, 21.706600>,  <29.451063, 44.158878, 21.826708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026258, 44.564041, 21.706600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.094904, 44.232952, 21.492903>,  <30.136091, 44.034298, 21.364683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.094904, 44.232952, 21.492903>,  <30.026258, 44.564041, 21.706600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094904, 44.232952, 21.492903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163364, 0.558693, -0.813127,
		0.971525, 0.052268, 0.231101,
		0.171615, -0.827726, -0.534245,
		30.146389, 43.984634, 21.332630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536873, 44.754932, 21.289881>,  <30.026258, 44.564041, 21.706600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536873, 44.754932, 21.289881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349016, 44.432976, 21.144785>,  <30.236301, 44.239799, 21.057728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349016, 44.432976, 21.144785>,  <30.536873, 44.754932, 21.289881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349016, 44.432976, 21.144785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058803, 0.438477, -0.896817,
		0.880896, -0.399854, -0.253258,
		-0.469643, -0.804894, -0.362740,
		30.208122, 44.191509, 21.035963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866810, 44.804070, 20.643810>,  <30.536873, 44.754932, 21.289881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866810, 44.804070, 20.643810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.560026, 44.555622, 20.579338>,  <30.375956, 44.406551, 20.540655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.560026, 44.555622, 20.579338>,  <30.866810, 44.804070, 20.643810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560026, 44.555622, 20.579338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121429, 0.387122, -0.913998,
		0.630100, -0.681428, -0.372329,
		-0.766961, -0.621122, -0.161181,
		30.329937, 44.369286, 20.530985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015669, 44.531197, 19.964211>,  <30.866810, 44.804070, 20.643810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015669, 44.531197, 19.964211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.625153, 44.511826, 20.048603>,  <30.390842, 44.500202, 20.099239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.625153, 44.511826, 20.048603>,  <31.015669, 44.531197, 19.964211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625153, 44.511826, 20.048603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216329, 0.253462, -0.942846,
		-0.007817, -0.966133, -0.257928,
		-0.976289, -0.048427, 0.210984,
		30.332266, 44.497295, 20.111898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237370, 43.880901, 19.742029>,  <31.015669, 44.531197, 19.964211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237370, 43.880901, 19.742029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.535160, 44.127762, 19.640142>,  <31.713835, 44.275879, 19.579010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.535160, 44.127762, 19.640142>,  <31.237370, 43.880901, 19.742029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535160, 44.127762, 19.640142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407212, -0.117393, 0.905758,
		0.529085, -0.778040, -0.338707,
		0.744478, 0.617149, -0.254716,
		31.758503, 44.312908, 19.563728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890114, 43.463219, 19.838121>,  <31.237370, 43.880901, 19.742029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890114, 43.463219, 19.838121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.010960, 43.844524, 19.839239>,  <32.083466, 44.073307, 19.839911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.010960, 43.844524, 19.839239>,  <31.890114, 43.463219, 19.838121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010960, 43.844524, 19.839239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415445, -0.134302, 0.899649,
		0.857982, -0.270633, -0.436605,
		0.302112, 0.953268, 0.002795,
		32.101593, 44.130505, 19.840078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623035, 43.468826, 19.997635>,  <31.890114, 43.463219, 19.838121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623035, 43.468826, 19.997635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478363, 43.823177, 20.113840>,  <32.391560, 44.035789, 20.183563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478363, 43.823177, 20.113840>,  <32.623035, 43.468826, 19.997635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478363, 43.823177, 20.113840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516976, -0.068740, 0.853235,
		0.775836, 0.458789, -0.433118,
		-0.361683, 0.885882, 0.290514,
		32.369858, 44.088943, 20.200994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202648, 43.816750, 20.256660>,  <32.623035, 43.468826, 19.997635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202648, 43.816750, 20.256660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901676, 44.038048, 20.399639>,  <32.721092, 44.170826, 20.485426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901676, 44.038048, 20.399639>,  <33.202648, 43.816750, 20.256660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901676, 44.038048, 20.399639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467648, 0.066549, 0.881406,
		0.463846, 0.830356, -0.308797,
		-0.752431, 0.553245, 0.357446,
		32.675945, 44.204021, 20.506872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518482, 44.236088, 20.728441>,  <33.202648, 43.816750, 20.256660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518482, 44.236088, 20.728441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129860, 44.269485, 20.817089>,  <32.896687, 44.289524, 20.870277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129860, 44.269485, 20.817089>,  <33.518482, 44.236088, 20.728441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129860, 44.269485, 20.817089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225878, 0.045486, 0.973093,
		0.071165, 0.995470, -0.063051,
		-0.971553, 0.083491, 0.221618,
		32.838394, 44.294533, 20.883574>
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
