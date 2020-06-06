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
	<24.303059, 34.551430, 35.255810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343538, 34.903564, 35.070435>,  <24.367826, 35.114845, 34.959209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343538, 34.903564, 35.070435>,  <24.303059, 34.551430, 35.255810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343538, 34.903564, 35.070435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435229, -0.458060, -0.775085,
		-0.894614, -0.123260, -0.429503,
		0.101201, 0.880334, -0.463434,
		24.373899, 35.167664, 34.931404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.916574, 34.739384, 34.599293>,  <24.303059, 34.551430, 35.255810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.916574, 34.739384, 34.599293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301409, 34.828030, 34.662891>,  <24.532309, 34.881218, 34.701050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301409, 34.828030, 34.662891>,  <23.916574, 34.739384, 34.599293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301409, 34.828030, 34.662891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265830, -0.631386, -0.728482,
		-0.061050, 0.743129, -0.666358,
		0.962085, 0.221612, 0.159000,
		24.590034, 34.894512, 34.710590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.294207, 34.698250, 33.971710>,  <23.916574, 34.739384, 34.599293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.294207, 34.698250, 33.971710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588230, 34.626331, 34.233204>,  <24.764645, 34.583179, 34.390099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588230, 34.626331, 34.233204>,  <24.294207, 34.698250, 33.971710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.588230, 34.626331, 34.233204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418822, -0.637830, -0.646344,
		0.533177, 0.748898, -0.393541,
		0.735058, -0.179792, 0.653731,
		24.808748, 34.572395, 34.429321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917074, 34.896843, 33.720051>,  <24.294207, 34.698250, 33.971710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.917074, 34.896843, 33.720051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983829, 34.596504, 33.975666>,  <25.023882, 34.416302, 34.129036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983829, 34.596504, 33.975666>,  <24.917074, 34.896843, 33.720051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983829, 34.596504, 33.975666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551276, -0.466298, -0.691854,
		0.817462, 0.467750, 0.336106,
		0.166889, -0.750850, 0.639040,
		25.033895, 34.371250, 34.167377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595089, 34.738335, 33.808025>,  <24.917074, 34.896843, 33.720051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595089, 34.738335, 33.808025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408203, 34.391651, 33.877903>,  <25.296072, 34.183640, 33.919830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408203, 34.391651, 33.877903>,  <25.595089, 34.738335, 33.808025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408203, 34.391651, 33.877903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454854, -0.405061, -0.793116,
		0.758167, -0.291094, 0.583478,
		-0.467216, -0.866712, 0.174699,
		25.268038, 34.131638, 33.930313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138113, 34.204227, 33.878792>,  <25.595089, 34.738335, 33.808025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138113, 34.204227, 33.878792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789555, 34.034573, 33.780174>,  <25.580420, 33.932781, 33.721004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789555, 34.034573, 33.780174>,  <26.138113, 34.204227, 33.878792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789555, 34.034573, 33.780174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397694, -0.316464, -0.861214,
		0.287248, -0.848505, 0.444440,
		-0.871395, -0.424133, -0.246542,
		25.528137, 33.907333, 33.706211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308670, 33.542152, 33.717999>,  <26.138113, 34.204227, 33.878792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308670, 33.542152, 33.717999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962215, 33.611725, 33.530571>,  <25.754343, 33.653469, 33.418114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962215, 33.611725, 33.530571>,  <26.308670, 33.542152, 33.717999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962215, 33.611725, 33.530571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453241, -0.121822, -0.883024,
		-0.210668, -0.977193, 0.026681,
		-0.866136, 0.173932, -0.468568,
		25.702374, 33.663902, 33.389999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935560, 32.899990, 33.269367>,  <26.308670, 33.542152, 33.717999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935560, 32.899990, 33.269367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831675, 33.259636, 33.128433>,  <25.769342, 33.475422, 33.043873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831675, 33.259636, 33.128433>,  <25.935560, 32.899990, 33.269367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831675, 33.259636, 33.128433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345510, -0.254185, -0.903334,
		-0.901760, -0.356345, -0.244638,
		-0.259715, 0.899115, -0.352334,
		25.753759, 33.529369, 33.022732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859415, 32.727505, 32.630306>,  <25.935560, 32.899990, 33.269367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859415, 32.727505, 32.630306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908298, 33.124374, 32.640575>,  <25.937628, 33.362495, 32.646736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908298, 33.124374, 32.640575>,  <25.859415, 32.727505, 32.630306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908298, 33.124374, 32.640575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442688, -0.031341, -0.896128,
		-0.888309, 0.120877, -0.443053,
		0.122206, 0.992173, 0.025670,
		25.944960, 33.422028, 32.648277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561399, 33.001396, 32.022411>,  <25.859415, 32.727505, 32.630306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561399, 33.001396, 32.022411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829672, 33.274586, 32.138157>,  <25.990635, 33.438499, 32.207603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829672, 33.274586, 32.138157>,  <25.561399, 33.001396, 32.022411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829672, 33.274586, 32.138157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475974, -0.097075, -0.874085,
		-0.568889, 0.723962, -0.390185,
		0.670682, 0.682975, 0.289363,
		26.030876, 33.479477, 32.224964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618540, 33.480595, 31.498516>,  <25.561399, 33.001396, 32.022411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618540, 33.480595, 31.498516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954752, 33.456928, 31.713926>,  <26.156479, 33.442726, 31.843172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954752, 33.456928, 31.713926>,  <25.618540, 33.480595, 31.498516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954752, 33.456928, 31.713926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531584, -0.101743, -0.840872,
		0.104544, 0.993050, -0.054065,
		0.840529, -0.059168, 0.538526,
		26.206911, 33.439178, 31.875484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197691, 33.901779, 31.164146>,  <25.618540, 33.480595, 31.498516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197691, 33.901779, 31.164146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372692, 33.631886, 31.401909>,  <26.477694, 33.469948, 31.544567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372692, 33.631886, 31.401909>,  <26.197691, 33.901779, 31.164146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372692, 33.631886, 31.401909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806382, 0.001881, -0.591391,
		0.397916, 0.738055, 0.544920,
		0.437504, -0.674738, 0.594406,
		26.503942, 33.429462, 31.580231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872961, 33.691254, 30.819433>,  <26.197691, 33.901779, 31.164146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872961, 33.691254, 30.819433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926752, 33.519672, 31.176739>,  <26.959026, 33.416725, 31.391121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926752, 33.519672, 31.176739>,  <26.872961, 33.691254, 30.819433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926752, 33.519672, 31.176739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843905, -0.422897, -0.330125,
		0.519365, 0.798223, 0.305123,
		0.134478, -0.428951, 0.893262,
		26.967096, 33.390987, 31.444717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550894, 33.542942, 31.089933>,  <26.872961, 33.691254, 30.819433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550894, 33.542942, 31.089933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415451, 33.253754, 31.330816>,  <27.334185, 33.080238, 31.475346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415451, 33.253754, 31.330816>,  <27.550894, 33.542942, 31.089933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415451, 33.253754, 31.330816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860360, -0.497019, -0.112928,
		0.380952, 0.479878, 0.790312,
		-0.338608, -0.722973, 0.602208,
		27.313869, 33.036861, 31.511478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955372, 33.385170, 31.891247>,  <27.550894, 33.542942, 31.089933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955372, 33.385170, 31.891247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799999, 33.103817, 31.653128>,  <27.706776, 32.935005, 31.510256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799999, 33.103817, 31.653128>,  <27.955372, 33.385170, 31.891247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799999, 33.103817, 31.653128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921256, -0.310638, -0.234078,
		-0.020276, -0.639344, 0.768654,
		-0.388429, -0.703380, -0.595297,
		27.683470, 32.892803, 31.474539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294674, 33.312805, 32.302128>,  <27.955372, 33.385170, 31.891247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294674, 33.312805, 32.302128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119507, 33.578819, 32.060154>,  <27.014406, 33.738430, 31.914968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119507, 33.578819, 32.060154>,  <27.294674, 33.312805, 32.302128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119507, 33.578819, 32.060154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697540, 0.173152, 0.695311,
		0.567155, 0.726457, 0.388065,
		-0.437919, 0.665040, -0.604937,
		26.988131, 33.778332, 31.878674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202221, 33.842697, 32.609337>,  <27.294674, 33.312805, 32.302128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202221, 33.842697, 32.609337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897617, 33.850666, 32.350197>,  <26.714855, 33.855450, 32.194714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897617, 33.850666, 32.350197>,  <27.202221, 33.842697, 32.609337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897617, 33.850666, 32.350197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641676, 0.117771, 0.757879,
		0.091398, 0.992841, -0.076899,
		-0.761510, 0.019925, -0.647847,
		26.669165, 33.856644, 32.155842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766033, 34.459759, 32.666203>,  <27.202221, 33.842697, 32.609337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766033, 34.459759, 32.666203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553167, 34.144913, 32.541466>,  <26.425447, 33.956005, 32.466621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553167, 34.144913, 32.541466>,  <26.766033, 34.459759, 32.666203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553167, 34.144913, 32.541466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622675, 0.114305, 0.774087,
		-0.573651, 0.606120, -0.550947,
		-0.532165, -0.787117, -0.311845,
		26.393518, 33.908779, 32.447914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170238, 34.709003, 32.875175>,  <26.766033, 34.459759, 32.666203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170238, 34.709003, 32.875175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092813, 34.330856, 32.770241>,  <26.046358, 34.103970, 32.707279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092813, 34.330856, 32.770241>,  <26.170238, 34.709003, 32.875175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092813, 34.330856, 32.770241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741958, -0.033898, 0.669588,
		-0.641897, 0.324251, -0.694859,
		-0.193561, -0.945364, -0.262339,
		26.034746, 34.047249, 32.691540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507555, 34.825928, 32.789406>,  <26.170238, 34.709003, 32.875175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507555, 34.825928, 32.789406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584209, 34.436703, 32.840656>,  <25.630201, 34.203167, 32.871407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584209, 34.436703, 32.840656>,  <25.507555, 34.825928, 32.789406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584209, 34.436703, 32.840656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720381, -0.050790, 0.691716,
		-0.666579, -0.224858, -0.710712,
		0.191635, -0.973067, 0.128127,
		25.641701, 34.144783, 32.879093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067938, 34.211651, 32.583153>,  <25.507555, 34.825928, 32.789406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067938, 34.211651, 32.583153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257452, 34.131283, 32.926117>,  <25.371161, 34.083061, 33.131897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257452, 34.131283, 32.926117>,  <25.067938, 34.211651, 32.583153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257452, 34.131283, 32.926117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861089, 0.098324, 0.498856,
		-0.184535, -0.974661, -0.126426,
		0.473785, -0.200920, 0.857414,
		25.399588, 34.071007, 33.183342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504004, 33.928310, 32.856487>,  <25.067938, 34.211651, 32.583153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504004, 33.928310, 32.856487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859146, 33.839630, 33.017761>,  <25.072231, 33.786423, 33.114525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859146, 33.839630, 33.017761>,  <24.504004, 33.928310, 32.856487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859146, 33.839630, 33.017761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425688, -0.063214, 0.902659,
		-0.174635, -0.973063, -0.150501,
		0.887858, -0.221703, 0.403182,
		25.125504, 33.773121, 33.138718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.405195, 33.354836, 33.389755>,  <24.504004, 33.928310, 32.856487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.405195, 33.354836, 33.389755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752689, 33.520847, 33.497864>,  <24.961185, 33.620453, 33.562729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752689, 33.520847, 33.497864>,  <24.405195, 33.354836, 33.389755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752689, 33.520847, 33.497864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302504, 0.012542, 0.953066,
		0.392163, -0.909721, 0.136445,
		0.868735, 0.415032, 0.270275,
		25.013309, 33.645355, 33.578945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791336, 33.016613, 33.947392>,  <24.405195, 33.354836, 33.389755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791336, 33.016613, 33.947392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835060, 33.413620, 33.925659>,  <24.861296, 33.651825, 33.912621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835060, 33.413620, 33.925659>,  <24.791336, 33.016613, 33.947392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835060, 33.413620, 33.925659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266487, 0.081922, 0.960351,
		0.957620, -0.090499, 0.273449,
		0.109312, 0.992521, -0.054334,
		24.867853, 33.711376, 33.909359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380196, 33.231091, 34.298771>,  <24.791336, 33.016613, 33.947392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380196, 33.231091, 34.298771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075365, 33.490009, 34.292473>,  <24.892467, 33.645359, 34.288696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075365, 33.490009, 34.292473>,  <25.380196, 33.231091, 34.298771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075365, 33.490009, 34.292473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123997, -0.122037, 0.984749,
		0.635505, 0.752405, 0.173264,
		-0.762075, 0.647297, -0.015741,
		24.846743, 33.684200, 34.287750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432856, 33.801491, 34.807526>,  <25.380196, 33.231091, 34.298771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432856, 33.801491, 34.807526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050444, 33.732037, 34.712994>,  <24.820995, 33.690365, 34.656273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050444, 33.732037, 34.712994>,  <25.432856, 33.801491, 34.807526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050444, 33.732037, 34.712994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261119, 0.137181, 0.955509,
		-0.133494, 0.975208, -0.176490,
		-0.956031, -0.173639, -0.236333,
		24.763634, 33.679943, 34.642094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262930, 34.580330, 34.919388>,  <25.432856, 33.801491, 34.807526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262930, 34.580330, 34.919388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172239, 34.933975, 35.082821>,  <25.117825, 35.146164, 35.180882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172239, 34.933975, 35.082821>,  <25.262930, 34.580330, 34.919388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172239, 34.933975, 35.082821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696626, -0.145973, 0.702427,
		0.680667, 0.443888, -0.582800,
		-0.226726, 0.884113, 0.408583,
		25.104221, 35.199207, 35.205395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857149, 35.061680, 35.145290>,  <25.262930, 34.580330, 34.919388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857149, 35.061680, 35.145290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554022, 35.168934, 35.383221>,  <25.372145, 35.233288, 35.525978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554022, 35.168934, 35.383221>,  <25.857149, 35.061680, 35.145290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554022, 35.168934, 35.383221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586138, -0.120710, 0.801169,
		0.286622, 0.955789, -0.065687,
		-0.757820, 0.268134, 0.594822,
		25.326675, 35.249374, 35.561668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215611, 35.645214, 35.410183>,  <25.857149, 35.061680, 35.145290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215611, 35.645214, 35.410183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154135, 35.835903, 35.756390>,  <26.117249, 35.950317, 35.964115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154135, 35.835903, 35.756390>,  <26.215611, 35.645214, 35.410183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154135, 35.835903, 35.756390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096956, 0.864421, -0.493332,
		-0.983351, -0.159737, -0.086632,
		-0.153690, 0.476719, 0.865517,
		26.108028, 35.978920, 36.016045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630899, 36.117550, 35.372791>,  <26.215611, 35.645214, 35.410183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630899, 36.117550, 35.372791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891678, 36.267975, 35.636169>,  <26.048145, 36.358231, 35.794197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891678, 36.267975, 35.636169>,  <25.630899, 36.117550, 35.372791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891678, 36.267975, 35.636169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086224, 0.899487, -0.428356,
		-0.753348, 0.222491, 0.618841,
		0.651945, 0.376060, 0.658442,
		26.087261, 36.380795, 35.833702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336523, 36.689339, 35.573574>,  <25.630899, 36.117550, 35.372791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336523, 36.689339, 35.573574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730680, 36.748425, 35.607475>,  <25.967175, 36.783875, 35.627815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730680, 36.748425, 35.607475>,  <25.336523, 36.689339, 35.573574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730680, 36.748425, 35.607475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117489, 0.949921, -0.289560,
		-0.123279, 0.275373, 0.953400,
		0.985393, 0.147711, 0.084752,
		26.026299, 36.792736, 35.632900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657455, 37.345798, 36.014927>,  <25.336523, 36.689339, 35.573574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657455, 37.345798, 36.014927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917908, 37.228798, 35.734791>,  <26.074179, 37.158600, 35.566711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917908, 37.228798, 35.734791>,  <25.657455, 37.345798, 36.014927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917908, 37.228798, 35.734791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126721, 0.867901, -0.480301,
		0.748310, 0.401487, 0.528053,
		0.651133, -0.292499, -0.700336,
		26.113247, 37.141048, 35.524689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922758, 38.022015, 35.826405>,  <25.657455, 37.345798, 36.014927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922758, 38.022015, 35.826405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018827, 37.773716, 35.527878>,  <26.076469, 37.624737, 35.348763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018827, 37.773716, 35.527878>,  <25.922758, 38.022015, 35.826405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018827, 37.773716, 35.527878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153127, 0.734970, -0.660583,
		0.958576, 0.272936, 0.081468,
		0.240173, -0.620745, -0.746319,
		26.090879, 37.587494, 35.303982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271460, 38.412586, 35.445663>,  <25.922758, 38.022015, 35.826405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271460, 38.412586, 35.445663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197039, 38.104866, 35.201187>,  <26.152386, 37.920235, 35.054501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197039, 38.104866, 35.201187>,  <26.271460, 38.412586, 35.445663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197039, 38.104866, 35.201187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101636, 0.633788, -0.766800,
		0.977269, -0.080547, -0.196108,
		-0.186054, -0.769302, -0.611195,
		26.141222, 37.874077, 35.017830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758558, 38.415421, 34.835751>,  <26.271460, 38.412586, 35.445663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758558, 38.415421, 34.835751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400064, 38.251495, 34.767845>,  <26.184969, 38.153141, 34.727100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400064, 38.251495, 34.767845>,  <26.758558, 38.415421, 34.835751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400064, 38.251495, 34.767845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180836, 0.687016, -0.703781,
		0.405046, -0.600054, -0.689836,
		-0.896235, -0.409811, -0.169762,
		26.131195, 38.128551, 34.716915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746058, 38.289654, 34.158268>,  <26.758558, 38.415421, 34.835751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746058, 38.289654, 34.158268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388924, 38.354935, 34.326180>,  <26.174643, 38.394104, 34.426926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388924, 38.354935, 34.326180>,  <26.746058, 38.289654, 34.158268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388924, 38.354935, 34.326180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179179, 0.726396, -0.663509,
		-0.413210, -0.667618, -0.619309,
		-0.892834, 0.163201, 0.419777,
		26.121073, 38.403896, 34.452114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552572, 38.250504, 33.483341>,  <26.746058, 38.289654, 34.158268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552572, 38.250504, 33.483341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296980, 38.209068, 33.788227>,  <26.143625, 38.184208, 33.971161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296980, 38.209068, 33.788227>,  <26.552572, 38.250504, 33.483341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296980, 38.209068, 33.788227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555046, 0.748127, -0.363636,
		-0.532568, -0.655421, -0.535532,
		-0.638981, -0.103584, 0.762217,
		26.105286, 38.177994, 34.016891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966208, 38.221188, 33.118748>,  <26.552572, 38.250504, 33.483341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966208, 38.221188, 33.118748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826376, 38.320774, 33.480038>,  <25.742477, 38.380527, 33.696812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826376, 38.320774, 33.480038>,  <25.966208, 38.221188, 33.118748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826376, 38.320774, 33.480038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445827, 0.803702, -0.394082,
		-0.824035, -0.540443, -0.169960,
		-0.349576, 0.248965, 0.903224,
		25.721502, 38.395462, 33.751003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186470, 38.345387, 33.202301>,  <25.966208, 38.221188, 33.118748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186470, 38.345387, 33.202301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380651, 38.557980, 33.479965>,  <25.497160, 38.685535, 33.646564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380651, 38.557980, 33.479965>,  <25.186470, 38.345387, 33.202301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380651, 38.557980, 33.479965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424404, 0.837431, -0.344369,
		-0.764340, -0.127430, 0.632097,
		0.485455, 0.531479, 0.694164,
		25.526287, 38.717422, 33.688213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274637, 39.068974, 33.136864>,  <25.186470, 38.345387, 33.202301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274637, 39.068974, 33.136864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641460, 39.203201, 33.050709>,  <25.861555, 39.283737, 32.999016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641460, 39.203201, 33.050709>,  <25.274637, 39.068974, 33.136864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641460, 39.203201, 33.050709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141172, 0.778407, 0.611681,
		0.372922, -0.530541, 0.761219,
		0.917060, 0.335572, -0.215388,
		25.916578, 39.303875, 32.986092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271055, 39.543015, 33.635033>,  <25.274637, 39.068974, 33.136864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271055, 39.543015, 33.635033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616169, 39.624107, 33.449776>,  <25.823238, 39.672764, 33.338623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616169, 39.624107, 33.449776>,  <25.271055, 39.543015, 33.635033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616169, 39.624107, 33.449776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178028, 0.735581, 0.653625,
		0.473187, -0.646391, 0.598559,
		0.862786, 0.202727, -0.463143,
		25.875006, 39.684925, 33.310833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932724, 39.400787, 33.988400>,  <25.271055, 39.543015, 33.635033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932724, 39.400787, 33.988400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964188, 39.712109, 33.739223>,  <25.983065, 39.898899, 33.589718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964188, 39.712109, 33.739223>,  <25.932724, 39.400787, 33.988400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964188, 39.712109, 33.739223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100501, 0.615506, 0.781698,
		0.991823, -0.124093, -0.029806,
		0.078658, 0.778301, -0.622944,
		25.987785, 39.945599, 33.552341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639128, 39.125751, 34.643402>,  <25.932724, 39.400787, 33.988400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639128, 39.125751, 34.643402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439384, 38.951561, 34.343803>,  <25.319538, 38.847046, 34.164043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439384, 38.951561, 34.343803>,  <25.639128, 39.125751, 34.643402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439384, 38.951561, 34.343803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475118, -0.860559, 0.183577,
		-0.724502, -0.264193, 0.636631,
		-0.499359, -0.435477, -0.749000,
		25.289577, 38.820919, 34.119102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218708, 38.663452, 34.949970>,  <25.639128, 39.125751, 34.643402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218708, 38.663452, 34.949970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366716, 38.581638, 34.587479>,  <25.455521, 38.532551, 34.369984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366716, 38.581638, 34.587479>,  <25.218708, 38.663452, 34.949970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366716, 38.581638, 34.587479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399881, -0.845412, 0.354082,
		-0.838557, -0.493402, -0.231035,
		0.370025, -0.204532, -0.906228,
		25.477722, 38.520279, 34.315609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148829, 37.951183, 34.711876>,  <25.218708, 38.663452, 34.949970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148829, 37.951183, 34.711876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484623, 38.068409, 34.528843>,  <25.686100, 38.138744, 34.419025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484623, 38.068409, 34.528843>,  <25.148829, 37.951183, 34.711876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484623, 38.068409, 34.528843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503659, -0.735720, 0.452818,
		-0.203944, -0.610597, -0.765231,
		0.839485, 0.293066, -0.457578,
		25.736469, 38.156330, 34.391571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209276, 37.335922, 34.408089>,  <25.148829, 37.951183, 34.711876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209276, 37.335922, 34.408089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540514, 37.557671, 34.441387>,  <25.739256, 37.690720, 34.461369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540514, 37.557671, 34.441387>,  <25.209276, 37.335922, 34.408089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540514, 37.557671, 34.441387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459387, -0.756187, 0.465987,
		0.321284, -0.347637, -0.880866,
		0.828094, 0.554373, 0.083251,
		25.788942, 37.723984, 34.466362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825029, 36.942467, 34.159435>,  <25.209276, 37.335922, 34.408089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825029, 36.942467, 34.159435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936592, 37.225113, 34.419559>,  <26.003529, 37.394703, 34.575634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936592, 37.225113, 34.419559>,  <25.825029, 36.942467, 34.159435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936592, 37.225113, 34.419559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462766, -0.692262, 0.553734,
		0.841463, 0.146501, -0.520075,
		0.278906, 0.706619, 0.650308,
		26.020264, 37.437099, 34.614651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508884, 36.867805, 34.241573>,  <25.825029, 36.942467, 34.159435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508884, 36.867805, 34.241573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394829, 37.070179, 34.567204>,  <26.326395, 37.191605, 34.762581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394829, 37.070179, 34.567204>,  <26.508884, 36.867805, 34.241573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394829, 37.070179, 34.567204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474423, -0.663499, 0.578525,
		0.832837, 0.551179, -0.050837,
		-0.285141, 0.505935, 0.814079,
		26.309286, 37.221958, 34.811428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093370, 36.648232, 34.708839>,  <26.508884, 36.867805, 34.241573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093370, 36.648232, 34.708839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805710, 36.827560, 34.921188>,  <26.633114, 36.935158, 35.048599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805710, 36.827560, 34.921188>,  <27.093370, 36.648232, 34.708839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805710, 36.827560, 34.921188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179463, -0.618252, 0.765217,
		0.671278, 0.645580, 0.364160,
		-0.719151, 0.448320, 0.530877,
		26.589964, 36.962055, 35.080452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387442, 36.821480, 35.314781>,  <27.093370, 36.648232, 34.708839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387442, 36.821480, 35.314781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992485, 36.794163, 35.371910>,  <26.755512, 36.777771, 35.406189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992485, 36.794163, 35.371910>,  <27.387442, 36.821480, 35.314781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992485, 36.794163, 35.371910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153618, -0.631311, 0.760163,
		0.038253, 0.772517, 0.633841,
		-0.987390, -0.068291, 0.142822,
		26.696268, 36.773674, 35.414757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274738, 36.813480, 36.005718>,  <27.387442, 36.821480, 35.314781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274738, 36.813480, 36.005718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967041, 36.636200, 35.821617>,  <26.782423, 36.529831, 35.711155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967041, 36.636200, 35.821617>,  <27.274738, 36.813480, 36.005718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967041, 36.636200, 35.821617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178312, -0.840614, 0.511442,
		-0.613570, 0.311354, 0.725665,
		-0.769244, -0.443201, -0.460257,
		26.736267, 36.503239, 35.683540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762367, 36.579613, 36.486359>,  <27.274738, 36.813480, 36.005718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762367, 36.579613, 36.486359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741198, 36.350121, 36.159428>,  <26.728497, 36.212425, 35.963268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741198, 36.350121, 36.159428>,  <26.762367, 36.579613, 36.486359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741198, 36.350121, 36.159428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214148, -0.805957, 0.551882,
		-0.975367, -0.145822, 0.165517,
		-0.052923, -0.573732, -0.817331,
		26.725321, 36.178001, 35.914227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519470, 35.893970, 36.674519>,  <26.762367, 36.579613, 36.486359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519470, 35.893970, 36.674519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734816, 35.885307, 36.337543>,  <26.864023, 35.880108, 36.135361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734816, 35.885307, 36.337543>,  <26.519470, 35.893970, 36.674519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734816, 35.885307, 36.337543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371969, -0.890909, 0.260616,
		-0.756177, -0.453666, -0.471578,
		0.538365, -0.021659, -0.842434,
		26.896324, 35.878811, 36.084812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079756, 35.409817, 36.910896>,  <26.519470, 35.893970, 36.674519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079756, 35.409817, 36.910896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117592, 35.454357, 36.515190>,  <27.140293, 35.481079, 36.277767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117592, 35.454357, 36.515190>,  <27.079756, 35.409817, 36.910896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117592, 35.454357, 36.515190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563069, -0.825486, -0.039072,
		-0.820979, -0.553331, -0.140781,
		0.094593, 0.111347, -0.989270,
		27.145969, 35.487762, 36.218410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913366, 34.821877, 36.559296>,  <27.079756, 35.409817, 36.910896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913366, 34.821877, 36.559296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182884, 35.011837, 36.332855>,  <27.344595, 35.125813, 36.196991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182884, 35.011837, 36.332855>,  <26.913366, 34.821877, 36.559296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182884, 35.011837, 36.332855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587057, -0.809303, 0.019813,
		-0.448739, -0.345684, -0.824097,
		0.673793, 0.474900, -0.566103,
		27.385023, 35.154308, 36.163025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044518, 34.435078, 36.038357>,  <26.913366, 34.821877, 36.559296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044518, 34.435078, 36.038357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375328, 34.659939, 36.039776>,  <27.573814, 34.794857, 36.040627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375328, 34.659939, 36.039776>,  <27.044518, 34.435078, 36.038357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375328, 34.659939, 36.039776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535440, -0.785768, -0.309632,
		-0.171270, 0.257975, -0.950850,
		0.827025, 0.562154, 0.003552,
		27.623436, 34.828587, 36.040840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414295, 34.537807, 35.304817>,  <27.044518, 34.435078, 36.038357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414295, 34.537807, 35.304817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647169, 34.548897, 35.629852>,  <27.786894, 34.555550, 35.824871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647169, 34.548897, 35.629852>,  <27.414295, 34.537807, 35.304817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647169, 34.548897, 35.629852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399064, -0.880497, -0.255877,
		0.708386, 0.473241, -0.523672,
		0.582183, 0.027719, 0.812585,
		27.821825, 34.557213, 35.873627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135761, 34.391674, 35.101192>,  <27.414295, 34.537807, 35.304817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135761, 34.391674, 35.101192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081465, 34.317867, 35.490555>,  <28.048887, 34.273582, 35.724174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081465, 34.317867, 35.490555>,  <28.135761, 34.391674, 35.101192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081465, 34.317867, 35.490555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510205, -0.855228, -0.090967,
		0.849273, 0.484291, 0.210231,
		-0.135741, -0.184517, 0.973410,
		28.040743, 34.262512, 35.782578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787683, 34.340885, 35.487530>,  <28.135761, 34.391674, 35.101192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787683, 34.340885, 35.487530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500227, 34.128868, 35.667580>,  <28.327753, 34.001659, 35.775608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500227, 34.128868, 35.667580>,  <28.787683, 34.340885, 35.487530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500227, 34.128868, 35.667580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589715, -0.807556, -0.009432,
		0.368498, 0.258666, 0.892917,
		-0.718641, -0.530043, 0.450122,
		28.284636, 33.969856, 35.802616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016489, 33.961636, 36.121403>,  <28.787683, 34.340885, 35.487530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016489, 33.961636, 36.121403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742800, 33.814571, 35.869476>,  <28.578587, 33.726334, 35.718323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742800, 33.814571, 35.869476>,  <29.016489, 33.961636, 36.121403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742800, 33.814571, 35.869476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614599, -0.755590, -0.226610,
		-0.392565, -0.542135, 0.742955,
		-0.684223, -0.367661, -0.629814,
		28.537533, 33.704273, 35.680531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743246, 33.309910, 36.404984>,  <29.016489, 33.961636, 36.121403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743246, 33.309910, 36.404984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746260, 33.315948, 36.005039>,  <28.748068, 33.319572, 35.765072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746260, 33.315948, 36.005039>,  <28.743246, 33.309910, 36.404984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746260, 33.315948, 36.005039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515214, -0.857014, -0.009060,
		-0.857029, -0.515072, -0.014237,
		0.007535, 0.015100, -0.999858,
		28.748520, 33.320480, 35.705082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614939, 32.595322, 36.076443>,  <28.743246, 33.309910, 36.404984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614939, 32.595322, 36.076443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812469, 32.842003, 35.831226>,  <28.930988, 32.990009, 35.684097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812469, 32.842003, 35.831226>,  <28.614939, 32.595322, 36.076443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812469, 32.842003, 35.831226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583241, -0.757805, -0.292508,
		-0.644953, -0.213101, -0.733909,
		0.493827, 0.616700, -0.613039,
		28.960617, 33.027012, 35.647316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613178, 32.184391, 35.397194>,  <28.614939, 32.595322, 36.076443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613178, 32.184391, 35.397194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901157, 32.452702, 35.468456>,  <29.073944, 32.613686, 35.511211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901157, 32.452702, 35.468456>,  <28.613178, 32.184391, 35.397194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901157, 32.452702, 35.468456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692358, -0.676353, -0.251371,
		-0.048119, 0.304319, -0.951354,
		0.719948, 0.670773, 0.178152,
		29.117142, 32.653934, 35.521900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183300, 32.135994, 34.769314>,  <28.613178, 32.184391, 35.397194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183300, 32.135994, 34.769314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276068, 32.210144, 35.151276>,  <29.331728, 32.254635, 35.380455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276068, 32.210144, 35.151276>,  <29.183300, 32.135994, 34.769314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276068, 32.210144, 35.151276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800301, -0.594374, -0.078985,
		0.552931, 0.782532, -0.286202,
		0.231919, 0.185375, 0.954908,
		29.345644, 32.265755, 35.437748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824903, 32.510769, 34.803181>,  <29.183300, 32.135994, 34.769314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824903, 32.510769, 34.803181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738937, 32.242790, 35.087429>,  <29.687359, 32.082005, 35.257977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738937, 32.242790, 35.087429>,  <29.824903, 32.510769, 34.803181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738937, 32.242790, 35.087429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734814, -0.590217, -0.334203,
		0.643319, 0.450350, 0.619133,
		-0.214914, -0.669947, 0.710622,
		29.674463, 32.041805, 35.300617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468121, 32.363441, 35.067493>,  <29.824903, 32.510769, 34.803181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468121, 32.363441, 35.067493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221050, 32.055439, 35.131443>,  <30.072807, 31.870636, 35.169815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221050, 32.055439, 35.131443>,  <30.468121, 32.363441, 35.067493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221050, 32.055439, 35.131443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648557, -0.613731, -0.450230,
		0.444804, -0.174406, 0.878483,
		-0.617675, -0.770011, 0.159878,
		30.035748, 31.824436, 35.179405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685429, 31.654854, 35.528458>,  <30.468121, 32.363441, 35.067493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685429, 31.654854, 35.528458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405077, 31.558928, 35.259754>,  <30.236866, 31.501371, 35.098534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405077, 31.558928, 35.259754>,  <30.685429, 31.654854, 35.528458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405077, 31.558928, 35.259754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543398, -0.789589, -0.285076,
		-0.462046, -0.564835, 0.683721,
		-0.700879, -0.239814, -0.671757,
		30.194813, 31.486982, 35.058228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377863, 30.914783, 35.582809>,  <30.685429, 31.654854, 35.528458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377863, 30.914783, 35.582809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353743, 31.051052, 35.207512>,  <30.339272, 31.132812, 34.982334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353743, 31.051052, 35.207512>,  <30.377863, 30.914783, 35.582809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353743, 31.051052, 35.207512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525234, -0.788480, -0.320046,
		-0.848819, -0.512097, -0.131387,
		-0.060299, 0.340670, -0.938247,
		30.335653, 31.153254, 34.926037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289118, 30.299763, 35.175484>,  <30.377863, 30.914783, 35.582809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289118, 30.299763, 35.175484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389807, 30.565027, 34.893532>,  <30.450220, 30.724186, 34.724361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389807, 30.565027, 34.893532>,  <30.289118, 30.299763, 35.175484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389807, 30.565027, 34.893532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567258, -0.691204, -0.447722,
		-0.784126, -0.287145, -0.550177,
		0.251724, 0.663162, -0.704876,
		30.465324, 30.763975, 34.682068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167112, 29.880415, 34.548378>,  <30.289118, 30.299763, 35.175484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167112, 29.880415, 34.548378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408705, 30.197474, 34.515110>,  <30.553659, 30.387709, 34.495148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408705, 30.197474, 34.515110>,  <30.167112, 29.880415, 34.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408705, 30.197474, 34.515110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711820, -0.583426, -0.391058,
		-0.358497, 0.176988, -0.916600,
		0.603981, 0.792647, -0.083173,
		30.589899, 30.435268, 34.490158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220009, 30.025921, 33.819717>,  <30.167112, 29.880415, 34.548378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220009, 30.025921, 33.819717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526985, 30.149416, 34.044472>,  <30.711170, 30.223513, 34.179325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526985, 30.149416, 34.044472>,  <30.220009, 30.025921, 33.819717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526985, 30.149416, 34.044472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638553, -0.446452, -0.626842,
		0.057327, 0.839859, -0.539770,
		0.767440, 0.308737, 0.561888,
		30.757217, 30.242037, 34.213039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767406, 30.203161, 33.327682>,  <30.220009, 30.025921, 33.819717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767406, 30.203161, 33.327682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954056, 30.179626, 33.680679>,  <31.066046, 30.165506, 33.892479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954056, 30.179626, 33.680679>,  <30.767406, 30.203161, 33.327682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954056, 30.179626, 33.680679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746282, -0.509316, -0.428556,
		0.474684, 0.858566, -0.193752,
		0.466624, -0.058835, 0.882497,
		31.094044, 30.161976, 33.945427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359550, 30.438353, 33.195744>,  <30.767406, 30.203161, 33.327682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359550, 30.438353, 33.195744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416636, 30.235588, 33.535786>,  <31.450888, 30.113930, 33.739811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416636, 30.235588, 33.535786>,  <31.359550, 30.438353, 33.195744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416636, 30.235588, 33.535786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705595, -0.550213, -0.446544,
		0.694095, 0.663556, 0.279150,
		0.142715, -0.506911, 0.850102,
		31.459450, 30.083515, 33.790817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150848, 30.426468, 33.282368>,  <31.359550, 30.438353, 33.195744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150848, 30.426468, 33.282368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988804, 30.141661, 33.511772>,  <31.891579, 29.970776, 33.649414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988804, 30.141661, 33.511772>,  <32.150848, 30.426468, 33.282368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988804, 30.141661, 33.511772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681177, -0.653465, -0.330125,
		0.609825, 0.256927, 0.749734,
		-0.405107, -0.712020, 0.573512,
		31.867271, 29.928055, 33.683826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551197, 30.229174, 33.708725>,  <32.150848, 30.426468, 33.282368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551197, 30.229174, 33.708725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328400, 29.897060, 33.700844>,  <32.194721, 29.697792, 33.696117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328400, 29.897060, 33.700844>,  <32.551197, 30.229174, 33.708725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328400, 29.897060, 33.700844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754912, -0.496254, -0.428765,
		0.346221, -0.253690, 0.903201,
		-0.556991, -0.830285, -0.019700,
		32.161301, 29.647974, 33.694935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994965, 29.660713, 33.819916>,  <32.551197, 30.229174, 33.708725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994965, 29.660713, 33.819916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695625, 29.461588, 33.644577>,  <32.516022, 29.342113, 33.539371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695625, 29.461588, 33.644577>,  <32.994965, 29.660713, 33.819916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695625, 29.461588, 33.644577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639323, -0.365255, -0.676650,
		0.176736, -0.786620, 0.591603,
		-0.748352, -0.497813, -0.438351,
		32.471119, 29.312244, 33.513073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111694, 28.948471, 33.909847>,  <32.994965, 29.660713, 33.819916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111694, 28.948471, 33.909847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896595, 28.992638, 33.575508>,  <32.767536, 29.019138, 33.374905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896595, 28.992638, 33.575508>,  <33.111694, 28.948471, 33.909847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896595, 28.992638, 33.575508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648108, -0.579946, -0.493578,
		-0.539244, -0.807137, 0.240303,
		-0.537748, 0.110416, -0.835844,
		32.735271, 29.025763, 33.324757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163258, 28.331154, 33.620201>,  <33.111694, 28.948471, 33.909847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163258, 28.331154, 33.620201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022354, 28.553705, 33.319176>,  <32.937813, 28.687237, 33.138561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022354, 28.553705, 33.319176>,  <33.163258, 28.331154, 33.620201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022354, 28.553705, 33.319176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489975, -0.575468, -0.654798,
		-0.797393, -0.599398, -0.069896,
		-0.352262, 0.556379, -0.752564,
		32.916676, 28.720619, 33.093407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216301, 27.870073, 33.093628>,  <33.163258, 28.331154, 33.620201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216301, 27.870073, 33.093628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188576, 28.217422, 32.897213>,  <33.171940, 28.425833, 32.779362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188576, 28.217422, 32.897213>,  <33.216301, 27.870073, 33.093628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188576, 28.217422, 32.897213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605014, -0.354779, -0.712804,
		-0.793192, -0.346493, -0.500788,
		-0.069313, 0.868375, -0.491041,
		33.167782, 28.477936, 32.749901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984840, 27.761818, 32.377613>,  <33.216301, 27.870073, 33.093628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984840, 27.761818, 32.377613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177986, 28.112083, 32.374577>,  <33.293873, 28.322243, 32.372753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177986, 28.112083, 32.374577>,  <32.984840, 27.761818, 32.377613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177986, 28.112083, 32.374577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476039, -0.269757, -0.837029,
		-0.735005, 0.400554, -0.547106,
		0.482861, 0.875664, -0.007594,
		33.322845, 28.374783, 32.372299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110958, 27.959827, 31.590374>,  <32.984840, 27.761818, 32.377613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110958, 27.959827, 31.590374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363232, 28.198441, 31.788921>,  <33.514595, 28.341608, 31.908049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363232, 28.198441, 31.788921>,  <33.110958, 27.959827, 31.590374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363232, 28.198441, 31.788921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690179, -0.138735, -0.710215,
		-0.354805, 0.790505, -0.499214,
		0.630687, 0.596535, 0.496367,
		33.552437, 28.377401, 31.937832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416920, 28.357904, 31.090046>,  <33.110958, 27.959827, 31.590374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416920, 28.357904, 31.090046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666061, 28.366505, 31.402861>,  <33.815548, 28.371664, 31.590549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666061, 28.366505, 31.402861>,  <33.416920, 28.357904, 31.090046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666061, 28.366505, 31.402861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781300, -0.068486, -0.620387,
		0.040220, 0.997420, -0.059454,
		0.622858, 0.021499, 0.782039,
		33.852921, 28.372955, 31.637472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790348, 28.951721, 31.035395>,  <33.416920, 28.357904, 31.090046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790348, 28.951721, 31.035395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003101, 28.704893, 31.267368>,  <34.130753, 28.556795, 31.406553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003101, 28.704893, 31.267368>,  <33.790348, 28.951721, 31.035395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003101, 28.704893, 31.267368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782231, 0.095690, -0.615596,
		0.324373, 0.781067, 0.533588,
		0.531880, -0.617072, 0.579936,
		34.162666, 28.519772, 31.441349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488911, 29.316191, 31.062651>,  <33.790348, 28.951721, 31.035395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488911, 29.316191, 31.062651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507343, 28.930450, 31.166882>,  <34.518402, 28.699005, 31.229420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507343, 28.930450, 31.166882>,  <34.488911, 29.316191, 31.062651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507343, 28.930450, 31.166882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839651, -0.103920, -0.533092,
		0.541167, 0.243360, 0.804931,
		0.046085, -0.964353, 0.260576,
		34.521168, 28.641144, 31.245054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104267, 29.210533, 31.067257>,  <34.488911, 29.316191, 31.062651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104267, 29.210533, 31.067257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992424, 28.826982, 31.047764>,  <34.925316, 28.596853, 31.036068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992424, 28.826982, 31.047764>,  <35.104267, 29.210533, 31.067257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992424, 28.826982, 31.047764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804499, -0.206286, -0.556981,
		0.524022, -0.194946, 0.829094,
		-0.279612, -0.958875, -0.048735,
		34.908539, 28.539320, 31.033144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767986, 28.801935, 31.022989>,  <35.104267, 29.210533, 31.067257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767986, 28.801935, 31.022989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483768, 28.555763, 30.886538>,  <35.313236, 28.408060, 30.804667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483768, 28.555763, 30.886538>,  <35.767986, 28.801935, 31.022989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483768, 28.555763, 30.886538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610986, -0.299156, -0.732941,
		0.349023, -0.729214, 0.588583,
		-0.710548, -0.615429, -0.341127,
		35.270603, 28.371134, 30.784199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034752, 28.106880, 30.944433>,  <35.767986, 28.801935, 31.022989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034752, 28.106880, 30.944433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725292, 28.152126, 30.695061>,  <35.539616, 28.179274, 30.545437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725292, 28.152126, 30.695061>,  <36.034752, 28.106880, 30.944433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725292, 28.152126, 30.695061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610118, -0.132436, -0.781163,
		-0.170932, -0.984715, 0.033441,
		-0.773652, 0.113123, -0.623430,
		35.493195, 28.186060, 30.508032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127037, 27.601612, 30.442640>,  <36.034752, 28.106880, 30.944433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127037, 27.601612, 30.442640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877010, 27.857595, 30.263870>,  <35.726994, 28.011185, 30.156609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877010, 27.857595, 30.263870>,  <36.127037, 27.601612, 30.442640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877010, 27.857595, 30.263870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545982, -0.050737, -0.836259,
		-0.557846, -0.766733, -0.317691,
		-0.625069, 0.639958, -0.446926,
		35.689491, 28.049583, 30.129793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054428, 27.353561, 29.759159>,  <36.127037, 27.601612, 30.442640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054428, 27.353561, 29.759159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926571, 27.732042, 29.739071>,  <35.849857, 27.959131, 29.727018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926571, 27.732042, 29.739071>,  <36.054428, 27.353561, 29.759159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926571, 27.732042, 29.739071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281402, 0.044185, -0.958572,
		-0.904786, -0.320538, -0.280388,
		-0.319647, 0.946205, -0.050222,
		35.830677, 28.015903, 29.724005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653164, 27.403088, 29.167017>,  <36.054428, 27.353561, 29.759159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653164, 27.403088, 29.167017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784664, 27.770758, 29.253773>,  <35.863564, 27.991360, 29.305826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784664, 27.770758, 29.253773>,  <35.653164, 27.403088, 29.167017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784664, 27.770758, 29.253773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332569, 0.102271, -0.937517,
		-0.883925, 0.380335, -0.272068,
		0.328746, 0.919177, 0.216887,
		35.883289, 28.046511, 29.318838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356926, 27.617052, 28.510275>,  <35.653164, 27.403088, 29.167017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356926, 27.617052, 28.510275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611298, 27.883986, 28.665331>,  <35.763920, 28.044146, 28.758364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611298, 27.883986, 28.665331>,  <35.356926, 27.617052, 28.510275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611298, 27.883986, 28.665331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311517, 0.237588, -0.920059,
		-0.706084, 0.705847, -0.056796,
		0.635927, 0.667332, 0.387640,
		35.802074, 28.084185, 28.781624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281391, 28.217100, 28.168993>,  <35.356926, 27.617052, 28.510275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281391, 28.217100, 28.168993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661804, 28.243359, 28.289806>,  <35.890053, 28.259113, 28.362293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661804, 28.243359, 28.289806>,  <35.281391, 28.217100, 28.168993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661804, 28.243359, 28.289806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251345, 0.404456, -0.879341,
		-0.179882, 0.912199, 0.368152,
		0.951035, 0.065644, 0.302031,
		35.947113, 28.263052, 28.380415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487499, 28.648451, 27.774540>,  <35.281391, 28.217100, 28.168993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487499, 28.648451, 27.774540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829868, 28.533484, 27.946486>,  <36.035290, 28.464504, 28.049652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829868, 28.533484, 27.946486>,  <35.487499, 28.648451, 27.774540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829868, 28.533484, 27.946486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514928, 0.397683, -0.759406,
		0.047317, 0.871344, 0.488386,
		0.855926, -0.287416, 0.429862,
		36.086647, 28.447258, 28.075445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048431, 29.256516, 27.712160>,  <35.487499, 28.648451, 27.774540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048431, 29.256516, 27.712160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200893, 28.887358, 27.734026>,  <36.292370, 28.665863, 27.747145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200893, 28.887358, 27.734026>,  <36.048431, 29.256516, 27.712160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200893, 28.887358, 27.734026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528409, 0.168952, -0.832009,
		0.758622, 0.346007, 0.552062,
		0.381153, -0.922895, 0.054662,
		36.315239, 28.610489, 27.750425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682419, 29.363781, 27.621939>,  <36.048431, 29.256516, 27.712160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682419, 29.363781, 27.621939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659199, 28.969635, 27.557827>,  <36.645267, 28.733149, 27.519360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659199, 28.969635, 27.557827>,  <36.682419, 29.363781, 27.621939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659199, 28.969635, 27.557827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582957, 0.096876, -0.806707,
		0.810427, -0.140265, 0.568801,
		-0.058050, -0.985363, -0.160279,
		36.641785, 28.674026, 27.509743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356586, 29.015177, 27.718594>,  <36.682419, 29.363781, 27.621939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356586, 29.015177, 27.718594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099728, 28.886534, 27.440250>,  <36.945614, 28.809347, 27.273245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099728, 28.886534, 27.440250>,  <37.356586, 29.015177, 27.718594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099728, 28.886534, 27.440250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736302, -0.006140, -0.676625,
		0.213336, -0.946853, 0.240745,
		-0.642143, -0.321609, -0.695859,
		36.907085, 28.790051, 27.231493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570431, 28.361259, 27.483059>,  <37.356586, 29.015177, 27.718594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570431, 28.361259, 27.483059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356804, 28.530354, 27.190193>,  <37.228626, 28.631809, 27.014473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356804, 28.530354, 27.190193>,  <37.570431, 28.361259, 27.483059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356804, 28.530354, 27.190193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740943, -0.183024, -0.646147,
		-0.407152, -0.887580, -0.215474,
		-0.534070, 0.422734, -0.732164,
		37.196583, 28.657173, 26.970543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505890, 27.898794, 26.843775>,  <37.570431, 28.361259, 27.483059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505890, 27.898794, 26.843775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432182, 28.254503, 26.676329>,  <37.387959, 28.467930, 26.575861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432182, 28.254503, 26.676329>,  <37.505890, 27.898794, 26.843775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432182, 28.254503, 26.676329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611017, -0.229966, -0.757479,
		-0.769873, -0.395357, -0.500987,
		-0.184264, 0.889274, -0.418615,
		37.376904, 28.521286, 26.550745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626675, 27.709740, 26.224506>,  <37.505890, 27.898794, 26.843775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626675, 27.709740, 26.224506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613544, 28.108177, 26.191706>,  <37.605667, 28.347239, 26.172026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613544, 28.108177, 26.191706>,  <37.626675, 27.709740, 26.224506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613544, 28.108177, 26.191706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625277, -0.043539, -0.779188,
		-0.779712, -0.076848, -0.621404,
		-0.032823, 0.996092, -0.082000,
		37.603699, 28.407005, 26.167107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580070, 27.834068, 25.562845>,  <37.626675, 27.709740, 26.224506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580070, 27.834068, 25.562845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734344, 28.187366, 25.669527>,  <37.826908, 28.399345, 25.733536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734344, 28.187366, 25.669527>,  <37.580070, 27.834068, 25.562845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734344, 28.187366, 25.669527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683594, -0.079421, -0.725529,
		-0.619637, 0.462139, -0.634411,
		0.385681, 0.883244, 0.266704,
		37.850048, 28.452339, 25.749538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709332, 28.168667, 24.935051>,  <37.580070, 27.834068, 25.562845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709332, 28.168667, 24.935051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941246, 28.354355, 25.202887>,  <38.080395, 28.465767, 25.363588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941246, 28.354355, 25.202887>,  <37.709332, 28.168667, 24.935051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941246, 28.354355, 25.202887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674374, 0.187775, -0.714115,
		-0.457237, 0.865588, -0.204187,
		0.579789, 0.464218, 0.669587,
		38.115181, 28.493620, 25.403763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896286, 28.863873, 24.777761>,  <37.709332, 28.168667, 24.935051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896286, 28.863873, 24.777761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184036, 28.767855, 25.038492>,  <38.356686, 28.710245, 25.194931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184036, 28.767855, 25.038492>,  <37.896286, 28.863873, 24.777761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184036, 28.767855, 25.038492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694588, 0.239535, -0.678359,
		0.006700, 0.940746, 0.339046,
		0.719377, -0.240042, 0.651826,
		38.399849, 28.695843, 25.234039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358814, 29.334467, 24.678583>,  <37.896286, 28.863873, 24.777761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358814, 29.334467, 24.678583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552734, 29.033279, 24.856575>,  <38.669086, 28.852566, 24.963369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552734, 29.033279, 24.856575>,  <38.358814, 29.334467, 24.678583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552734, 29.033279, 24.856575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691778, 0.018801, -0.721865,
		0.535177, 0.657785, 0.530003,
		0.484797, -0.752971, 0.444980,
		38.698174, 28.807388, 24.990068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027588, 29.596399, 24.697250>,  <38.358814, 29.334467, 24.678583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027588, 29.596399, 24.697250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056572, 29.198063, 24.719343>,  <39.073963, 28.959061, 24.732599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056572, 29.198063, 24.719343>,  <39.027588, 29.596399, 24.697250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056572, 29.198063, 24.719343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718782, 0.013748, -0.695100,
		0.691449, 0.090067, 0.716789,
		0.072460, -0.995841, 0.055232,
		39.078308, 28.899311, 24.735912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703365, 29.514128, 24.597033>,  <39.027588, 29.596399, 24.697250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703365, 29.514128, 24.597033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540051, 29.152985, 24.543142>,  <39.442062, 28.936298, 24.510809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540051, 29.152985, 24.543142>,  <39.703365, 29.514128, 24.597033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540051, 29.152985, 24.543142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562876, -0.132807, -0.815802,
		0.718662, -0.408911, 0.562421,
		-0.408284, -0.902859, -0.134723,
		39.417564, 28.882128, 24.502726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242069, 29.051331, 24.468418>,  <39.703365, 29.514128, 24.597033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242069, 29.051331, 24.468418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918678, 28.879776, 24.307215>,  <39.724644, 28.776842, 24.210493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918678, 28.879776, 24.307215>,  <40.242069, 29.051331, 24.468418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918678, 28.879776, 24.307215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471562, -0.062374, -0.879624,
		0.352124, -0.901201, 0.252675,
		-0.808479, -0.428889, -0.403009,
		39.676136, 28.751110, 24.186312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533695, 28.740717, 23.959978>,  <40.242069, 29.051331, 24.468418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533695, 28.740717, 23.959978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146873, 28.687675, 23.873051>,  <39.914780, 28.655849, 23.820894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146873, 28.687675, 23.873051>,  <40.533695, 28.740717, 23.959978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146873, 28.687675, 23.873051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240915, -0.200766, -0.949554,
		0.082287, -0.970623, 0.226098,
		-0.967052, -0.132606, -0.217317,
		39.856758, 28.647894, 23.807856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474262, 28.027468, 23.610586>,  <40.533695, 28.740717, 23.959978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474262, 28.027468, 23.610586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203716, 28.293079, 23.483091>,  <40.041389, 28.452446, 23.406595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203716, 28.293079, 23.483091>,  <40.474262, 28.027468, 23.610586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203716, 28.293079, 23.483091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261469, -0.188093, -0.946707,
		-0.688592, -0.723662, -0.046402,
		-0.676369, 0.664028, -0.318735,
		40.000805, 28.492289, 23.387470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049198, 27.698719, 23.048746>,  <40.474262, 28.027468, 23.610586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049198, 27.698719, 23.048746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991997, 28.089619, 22.986094>,  <39.957676, 28.324158, 22.948502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991997, 28.089619, 22.986094>,  <40.049198, 27.698719, 23.048746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991997, 28.089619, 22.986094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257989, -0.115977, -0.959161,
		-0.955505, -0.177576, -0.235534,
		-0.143008, 0.977249, -0.156629,
		39.949093, 28.382793, 22.939104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652401, 27.783796, 22.453344>,  <40.049198, 27.698719, 23.048746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652401, 27.783796, 22.453344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869473, 28.118847, 22.478264>,  <39.999714, 28.319878, 22.493216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869473, 28.118847, 22.478264>,  <39.652401, 27.783796, 22.453344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869473, 28.118847, 22.478264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269789, -0.103586, -0.957332,
		-0.795435, 0.536329, -0.282197,
		0.542677, 0.837628, 0.062300,
		40.032276, 28.370136, 22.496954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492138, 28.255817, 21.955475>,  <39.652401, 27.783796, 22.453344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492138, 28.255817, 21.955475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869190, 28.377905, 22.009581>,  <40.095421, 28.451157, 22.042044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869190, 28.377905, 22.009581>,  <39.492138, 28.255817, 21.955475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869190, 28.377905, 22.009581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115139, 0.083082, -0.989869,
		-0.313363, 0.948652, 0.043173,
		0.942628, 0.305217, 0.135262,
		40.151978, 28.469469, 22.050159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731529, 28.916433, 21.629810>,  <39.492138, 28.255817, 21.955475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731529, 28.916433, 21.629810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027954, 28.649229, 21.656908>,  <40.205811, 28.488907, 21.673166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027954, 28.649229, 21.656908>,  <39.731529, 28.916433, 21.629810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027954, 28.649229, 21.656908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239866, 0.169151, -0.955956,
		0.627129, 0.724673, 0.285585,
		0.741063, -0.668010, 0.067745,
		40.250275, 28.448826, 21.677231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460766, 29.098885, 21.782291>,  <39.731529, 28.916433, 21.629810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460766, 29.098885, 21.782291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418369, 28.792461, 21.528702>,  <40.392929, 28.608608, 21.376549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418369, 28.792461, 21.528702>,  <40.460766, 29.098885, 21.782291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418369, 28.792461, 21.528702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259601, 0.594135, -0.761321,
		0.959881, -0.245276, 0.135894,
		-0.105994, -0.766056, -0.633973,
		40.386570, 28.562645, 21.338511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074615, 29.002602, 21.198992>,  <40.460766, 29.098885, 21.782291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074615, 29.002602, 21.198992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695293, 28.900301, 21.123829>,  <40.467701, 28.838921, 21.078732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695293, 28.900301, 21.123829>,  <41.074615, 29.002602, 21.198992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695293, 28.900301, 21.123829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038243, 0.679864, -0.732341,
		0.315048, -0.687296, -0.654499,
		-0.948305, -0.255752, -0.187905,
		40.410801, 28.823576, 21.067457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455509, 28.677259, 20.610283>,  <41.074615, 29.002602, 21.198992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455509, 28.677259, 20.610283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648720, 28.936914, 20.375233>,  <41.764645, 29.092709, 20.234201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648720, 28.936914, 20.375233>,  <41.455509, 28.677259, 20.610283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648720, 28.936914, 20.375233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537188, 0.749661, 0.386571,
		0.691459, 0.128942, 0.710816,
		0.483025, 0.649140, -0.587626,
		41.793629, 29.131657, 20.198944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160213, 29.369270, 20.428572>,  <41.455509, 28.677259, 20.610283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160213, 29.369270, 20.428572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017666, 29.665508, 20.200706>,  <40.932137, 29.843250, 20.063988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017666, 29.665508, 20.200706>,  <41.160213, 29.369270, 20.428572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017666, 29.665508, 20.200706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793675, 0.081776, 0.602821,
		0.493031, 0.666957, 0.558649,
		-0.356371, 0.740595, -0.569665,
		40.910755, 29.887688, 20.029808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000126, 29.994987, 20.791630>,  <41.160213, 29.369270, 20.428572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000126, 29.994987, 20.791630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755001, 30.049046, 20.480194>,  <40.607925, 30.081480, 20.293333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755001, 30.049046, 20.480194>,  <41.000126, 29.994987, 20.791630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755001, 30.049046, 20.480194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783713, 0.022329, 0.620722,
		0.101273, 0.990574, 0.092231,
		-0.612812, 0.135145, -0.778587,
		40.571159, 30.089588, 20.246618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598984, 30.539568, 20.976269>,  <41.000126, 29.994987, 20.791630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598984, 30.539568, 20.976269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415848, 30.328091, 20.690369>,  <40.305965, 30.201204, 20.518829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415848, 30.328091, 20.690369>,  <40.598984, 30.539568, 20.976269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415848, 30.328091, 20.690369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859575, 0.057999, 0.507707,
		-0.226968, 0.846828, -0.481008,
		-0.457838, -0.528695, -0.714748,
		40.278496, 30.169481, 20.475945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998314, 30.832653, 20.887621>,  <40.598984, 30.539568, 20.976269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998314, 30.832653, 20.887621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962292, 30.454712, 20.761675>,  <39.940678, 30.227947, 20.686108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962292, 30.454712, 20.761675>,  <39.998314, 30.832653, 20.887621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962292, 30.454712, 20.761675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881292, -0.071664, 0.467107,
		-0.463912, 0.319553, -0.826239,
		-0.090054, -0.944854, -0.314865,
		39.935276, 30.171255, 20.667215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422470, 30.811449, 20.565853>,  <39.998314, 30.832653, 20.887621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422470, 30.811449, 20.565853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541683, 30.474371, 20.745203>,  <39.613213, 30.272123, 20.852812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541683, 30.474371, 20.745203>,  <39.422470, 30.811449, 20.565853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541683, 30.474371, 20.745203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811680, 0.023468, 0.583630,
		-0.502346, -0.537876, -0.677007,
		0.298032, -0.842697, 0.448373,
		39.631092, 30.221561, 20.879715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876541, 30.388567, 20.540092>,  <39.422470, 30.811449, 20.565853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876541, 30.388567, 20.540092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107983, 30.328943, 20.860842>,  <39.246845, 30.293169, 21.053291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107983, 30.328943, 20.860842>,  <38.876541, 30.388567, 20.540092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107983, 30.328943, 20.860842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801363, 0.079069, 0.592929,
		-0.151784, -0.985662, -0.073700,
		0.578600, -0.149057, 0.801875,
		39.281563, 30.284225, 21.101404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624432, 29.780033, 20.875143>,  <38.876541, 30.388567, 20.540092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624432, 29.780033, 20.875143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843410, 30.001717, 21.125952>,  <38.974796, 30.134727, 21.276436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843410, 30.001717, 21.125952>,  <38.624432, 29.780033, 20.875143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843410, 30.001717, 21.125952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798918, 0.123124, 0.588702,
		0.249066, -0.823218, 0.510175,
		0.547444, 0.554214, 0.627018,
		39.007645, 30.167980, 21.314058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361351, 29.589418, 21.446999>,  <38.624432, 29.780033, 20.875143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361351, 29.589418, 21.446999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555794, 29.919590, 21.561802>,  <38.672459, 30.117693, 21.630684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555794, 29.919590, 21.561802>,  <38.361351, 29.589418, 21.446999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555794, 29.919590, 21.561802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679298, 0.150286, 0.718310,
		0.549779, -0.544136, 0.633765,
		0.486104, 0.825427, 0.287006,
		38.701626, 30.167217, 21.647903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247021, 29.616364, 22.194918>,  <38.361351, 29.589418, 21.446999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247021, 29.616364, 22.194918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368729, 29.991093, 22.125889>,  <38.441753, 30.215931, 22.084473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368729, 29.991093, 22.125889>,  <38.247021, 29.616364, 22.194918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368729, 29.991093, 22.125889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689488, 0.341592, 0.638687,
		0.657286, -0.075349, 0.749865,
		0.304273, 0.936823, -0.172571,
		38.460011, 30.272141, 22.074118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361828, 29.914652, 22.863625>,  <38.247021, 29.616364, 22.194918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361828, 29.914652, 22.863625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290234, 30.204014, 22.596897>,  <38.247276, 30.377632, 22.436861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290234, 30.204014, 22.596897>,  <38.361828, 29.914652, 22.863625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290234, 30.204014, 22.596897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742769, 0.345098, 0.573761,
		0.645179, 0.597989, 0.475555,
		-0.178990, 0.723406, -0.666818,
		38.236538, 30.421036, 22.396852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226479, 30.526409, 23.270098>,  <38.361828, 29.914652, 22.863625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226479, 30.526409, 23.270098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092018, 30.640079, 22.910933>,  <38.011341, 30.708281, 22.695433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092018, 30.640079, 22.910933>,  <38.226479, 30.526409, 23.270098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092018, 30.640079, 22.910933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730176, 0.523533, 0.439040,
		0.594852, 0.803217, 0.031513,
		-0.336147, 0.284174, -0.897914,
		37.991173, 30.725332, 22.641558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213554, 31.209368, 23.330677>,  <38.226479, 30.526409, 23.270098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213554, 31.209368, 23.330677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956551, 31.103533, 23.043018>,  <37.802349, 31.040031, 22.870422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956551, 31.103533, 23.043018>,  <38.213554, 31.209368, 23.330677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956551, 31.103533, 23.043018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760820, 0.332085, 0.557560,
		0.091295, 0.905380, -0.414672,
		-0.642510, -0.264588, -0.719149,
		37.763798, 31.024157, 22.827274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786217, 31.822104, 23.187683>,  <38.213554, 31.209368, 23.330677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786217, 31.822104, 23.187683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584175, 31.508091, 23.044243>,  <37.462948, 31.319683, 22.958179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584175, 31.508091, 23.044243>,  <37.786217, 31.822104, 23.187683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584175, 31.508091, 23.044243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801069, 0.271821, 0.533294,
		-0.321177, 0.556633, -0.766162,
		-0.505108, -0.785030, -0.358599,
		37.432644, 31.272581, 22.936663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287052, 32.194416, 22.847399>,  <37.786217, 31.822104, 23.187683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287052, 32.194416, 22.847399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204037, 31.820576, 22.962954>,  <37.154228, 31.596272, 23.032286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204037, 31.820576, 22.962954>,  <37.287052, 32.194416, 22.847399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204037, 31.820576, 22.962954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602007, 0.354794, 0.715338,
		-0.771049, -0.025455, -0.636267,
		-0.207535, -0.934598, 0.288887,
		37.141777, 31.540195, 23.049620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526127, 32.187813, 23.021320>,  <37.287052, 32.194416, 22.847399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526127, 32.187813, 23.021320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677288, 31.862278, 23.197891>,  <36.767982, 31.666956, 23.303835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677288, 31.862278, 23.197891>,  <36.526127, 32.187813, 23.021320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677288, 31.862278, 23.197891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704405, 0.056682, 0.707531,
		-0.600837, -0.578320, -0.551852,
		0.377899, -0.813838, 0.441428,
		36.790657, 31.618126, 23.330320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960072, 31.658720, 23.129829>,  <36.526127, 32.187813, 23.021320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960072, 31.658720, 23.129829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232056, 31.568415, 23.408880>,  <36.395248, 31.514231, 23.576311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232056, 31.568415, 23.408880>,  <35.960072, 31.658720, 23.129829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232056, 31.568415, 23.408880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714577, 0.009303, 0.699495,
		-0.164413, -0.974137, -0.155002,
		0.679962, -0.225767, 0.697626,
		36.436043, 31.500685, 23.618168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597652, 31.331026, 23.571417>,  <35.960072, 31.658720, 23.129829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597652, 31.331026, 23.571417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934986, 31.300901, 23.784254>,  <36.137386, 31.282827, 23.911957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934986, 31.300901, 23.784254>,  <35.597652, 31.331026, 23.571417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934986, 31.300901, 23.784254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536738, -0.167035, 0.827050,
		0.026596, -0.983071, -0.181286,
		0.843330, -0.075307, 0.532094,
		36.187984, 31.278309, 23.943882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580391, 30.726381, 23.975300>,  <35.597652, 31.331026, 23.571417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580391, 30.726381, 23.975300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850300, 30.959904, 24.155899>,  <36.012245, 31.100018, 24.264257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850300, 30.959904, 24.155899>,  <35.580391, 30.726381, 23.975300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850300, 30.959904, 24.155899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292724, -0.349874, 0.889888,
		0.677490, -0.732637, -0.065191,
		0.674774, 0.583807, 0.451497,
		36.052731, 31.135046, 24.291348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912144, 30.309275, 24.482603>,  <35.580391, 30.726381, 23.975300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912144, 30.309275, 24.482603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975861, 30.687439, 24.596325>,  <36.014091, 30.914337, 24.664558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975861, 30.687439, 24.596325>,  <35.912144, 30.309275, 24.482603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975861, 30.687439, 24.596325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329701, -0.220503, 0.917974,
		0.930551, -0.239958, 0.276579,
		0.159289, 0.945409, 0.284303,
		36.023647, 30.971062, 24.681616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067905, 30.220581, 25.209143>,  <35.912144, 30.309275, 24.482603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067905, 30.220581, 25.209143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993454, 30.613272, 25.193310>,  <35.948784, 30.848886, 25.183811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993454, 30.613272, 25.193310>,  <36.067905, 30.220581, 25.209143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993454, 30.613272, 25.193310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212470, -0.000887, 0.977167,
		0.959277, 0.190292, 0.208753,
		-0.186132, 0.981727, -0.039581,
		35.937614, 30.907789, 25.181435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201759, 30.423609, 25.874960>,  <36.067905, 30.220581, 25.209143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201759, 30.423609, 25.874960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972000, 30.715063, 25.725742>,  <35.834145, 30.889936, 25.636211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972000, 30.715063, 25.725742>,  <36.201759, 30.423609, 25.874960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972000, 30.715063, 25.725742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356301, 0.187739, 0.915316,
		0.736967, 0.658667, 0.151777,
		-0.574394, 0.728636, -0.373042,
		35.799683, 30.933655, 25.613831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264133, 31.049669, 26.321838>,  <36.201759, 30.423609, 25.874960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264133, 31.049669, 26.321838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922714, 31.134935, 26.131678>,  <35.717861, 31.186094, 26.017580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922714, 31.134935, 26.131678>,  <36.264133, 31.049669, 26.321838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922714, 31.134935, 26.131678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419686, 0.259383, 0.869819,
		0.308727, 0.941956, -0.131935,
		-0.853552, 0.213166, -0.475404,
		35.666649, 31.198885, 25.989056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985699, 31.703531, 26.622137>,  <36.264133, 31.049669, 26.321838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985699, 31.703531, 26.622137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665588, 31.533674, 26.452795>,  <35.473522, 31.431759, 26.351189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665588, 31.533674, 26.452795>,  <35.985699, 31.703531, 26.622137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665588, 31.533674, 26.452795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485279, 0.043944, 0.873254,
		-0.352218, 0.904293, -0.241238,
		-0.800279, -0.424644, -0.423357,
		35.425503, 31.406281, 26.325788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470291, 32.207088, 26.713249>,  <35.985699, 31.703531, 26.622137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470291, 32.207088, 26.713249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322739, 31.836458, 26.683903>,  <35.234207, 31.614080, 26.666296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322739, 31.836458, 26.683903>,  <35.470291, 32.207088, 26.713249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322739, 31.836458, 26.683903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543379, 0.150938, 0.825807,
		-0.754101, 0.344488, -0.559160,
		-0.368879, -0.926577, -0.073365,
		35.212074, 31.558485, 26.661894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725124, 32.251495, 26.945423>,  <35.470291, 32.207088, 26.713249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725124, 32.251495, 26.945423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795780, 31.857981, 26.957867>,  <34.838173, 31.621872, 26.965332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795780, 31.857981, 26.957867>,  <34.725124, 32.251495, 26.945423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795780, 31.857981, 26.957867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543313, -0.071103, 0.836514,
		-0.820736, -0.164667, -0.547062,
		0.176644, -0.983783, 0.031108,
		34.848774, 31.562845, 26.967199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117413, 32.004822, 27.086170>,  <34.725124, 32.251495, 26.945423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117413, 32.004822, 27.086170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332428, 31.684786, 27.192686>,  <34.461437, 31.492764, 27.256596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332428, 31.684786, 27.192686>,  <34.117413, 32.004822, 27.086170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332428, 31.684786, 27.192686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651186, -0.193233, 0.733906,
		-0.535735, -0.567905, -0.624878,
		0.537536, -0.800091, 0.266290,
		34.493690, 31.444759, 27.272573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653439, 31.432917, 27.171207>,  <34.117413, 32.004822, 27.086170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653439, 31.432917, 27.171207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970100, 31.361099, 27.404806>,  <34.160095, 31.318008, 27.544966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970100, 31.361099, 27.404806>,  <33.653439, 31.432917, 27.171207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970100, 31.361099, 27.404806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610971, -0.234830, 0.756022,
		0.001403, -0.955311, -0.295598,
		0.791652, -0.179541, 0.583997,
		34.207596, 31.307236, 27.580006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550976, 30.865725, 27.505329>,  <33.653439, 31.432917, 27.171207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550976, 30.865725, 27.505329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823925, 31.035849, 27.743145>,  <33.987694, 31.137922, 27.885836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823925, 31.035849, 27.743145>,  <33.550976, 30.865725, 27.505329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823925, 31.035849, 27.743145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598671, -0.141566, 0.788385,
		0.419474, -0.893908, 0.158020,
		0.682373, 0.425309, 0.594540,
		34.028637, 31.163441, 27.921507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669838, 30.431484, 28.142742>,  <33.550976, 30.865725, 27.505329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669838, 30.431484, 28.142742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790405, 30.800472, 28.239241>,  <33.862747, 31.021864, 28.297140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790405, 30.800472, 28.239241>,  <33.669838, 30.431484, 28.142742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790405, 30.800472, 28.239241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706711, 0.046285, 0.705987,
		0.640084, -0.383289, 0.665870,
		0.301417, 0.922468, 0.241248,
		33.880829, 31.077213, 28.311615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823803, 30.419868, 28.864466>,  <33.669838, 30.431484, 28.142742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823803, 30.419868, 28.864466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774338, 30.806534, 28.774782>,  <33.744659, 31.038532, 28.720972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774338, 30.806534, 28.774782>,  <33.823803, 30.419868, 28.864466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774338, 30.806534, 28.774782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664531, 0.087125, 0.742164,
		0.736957, 0.240771, 0.631603,
		-0.123663, 0.966664, -0.224207,
		33.737240, 31.096533, 28.707520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980373, 30.697161, 29.585894>,  <33.823803, 30.419868, 28.864466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980373, 30.697161, 29.585894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792122, 30.960421, 29.350828>,  <33.679173, 31.118376, 29.209789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792122, 30.960421, 29.350828>,  <33.980373, 30.697161, 29.585894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792122, 30.960421, 29.350828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584692, 0.266171, 0.766348,
		0.660790, 0.704267, 0.259547,
		-0.470629, 0.658150, -0.587662,
		33.650932, 31.157866, 29.174530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983006, 31.390972, 30.010050>,  <33.980373, 30.697161, 29.585894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983006, 31.390972, 30.010050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689823, 31.410112, 29.738613>,  <33.513916, 31.421597, 29.575750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689823, 31.410112, 29.738613>,  <33.983006, 31.390972, 30.010050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689823, 31.410112, 29.738613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622900, 0.353764, 0.697744,
		0.273449, 0.934110, -0.229486,
		-0.732954, 0.047851, -0.678593,
		33.469936, 31.424467, 29.535036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583649, 32.030697, 30.116785>,  <33.983006, 31.390972, 30.010050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583649, 32.030697, 30.116785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318436, 31.805820, 29.919065>,  <33.159309, 31.670895, 29.800434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318436, 31.805820, 29.919065>,  <33.583649, 32.030697, 30.116785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318436, 31.805820, 29.919065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716636, 0.285817, 0.636193,
		-0.216382, 0.776048, -0.592391,
		-0.663032, -0.562190, -0.494298,
		33.119526, 31.637163, 29.770777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009579, 32.417145, 30.265484>,  <33.583649, 32.030697, 30.116785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009579, 32.417145, 30.265484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846714, 32.093769, 30.095472>,  <32.748997, 31.899744, 29.993465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846714, 32.093769, 30.095472>,  <33.009579, 32.417145, 30.265484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846714, 32.093769, 30.095472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854816, 0.173372, 0.489114,
		-0.321730, 0.562469, -0.761655,
		-0.407161, -0.808437, -0.425029,
		32.724567, 31.851238, 29.967964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357407, 32.621834, 29.986311>,  <33.009579, 32.417145, 30.265484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357407, 32.621834, 29.986311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351578, 32.225662, 30.041218>,  <32.348080, 31.987959, 30.074162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351578, 32.225662, 30.041218>,  <32.357407, 32.621834, 29.986311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351578, 32.225662, 30.041218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855158, 0.083488, 0.511599,
		-0.518162, -0.109931, -0.848188,
		-0.014572, -0.990427, 0.137269,
		32.347206, 31.928534, 30.082397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591541, 32.509403, 29.927183>,  <32.357407, 32.621834, 29.986311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591541, 32.509403, 29.927183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786905, 32.222313, 30.125706>,  <31.904123, 32.050060, 30.244820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786905, 32.222313, 30.125706>,  <31.591541, 32.509403, 29.927183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786905, 32.222313, 30.125706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779818, -0.103772, 0.617345,
		-0.391583, -0.688548, -0.610380,
		0.488412, -0.717728, 0.496307,
		31.933430, 32.006996, 30.274597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060511, 32.010944, 30.078671>,  <31.591541, 32.509403, 29.927183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060511, 32.010944, 30.078671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367249, 31.965656, 30.331377>,  <31.551292, 31.938482, 30.483002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367249, 31.965656, 30.331377>,  <31.060511, 32.010944, 30.078671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367249, 31.965656, 30.331377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640552, -0.072888, 0.764448,
		-0.040498, -0.990894, -0.128413,
		0.766846, -0.113213, 0.631767,
		31.597301, 31.931690, 30.520906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822767, 31.667477, 30.609306>,  <31.060511, 32.010944, 30.078671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822767, 31.667477, 30.609306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156160, 31.760427, 30.809830>,  <31.356195, 31.816198, 30.930143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156160, 31.760427, 30.809830>,  <30.822767, 31.667477, 30.609306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156160, 31.760427, 30.809830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513047, -0.011399, 0.858285,
		0.205160, -0.972559, 0.109719,
		0.833482, 0.232377, 0.501307,
		31.406204, 31.830139, 30.960222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923410, 31.194468, 31.119884>,  <30.822767, 31.667477, 30.609306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923410, 31.194468, 31.119884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149973, 31.498743, 31.246714>,  <31.285910, 31.681309, 31.322811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149973, 31.498743, 31.246714>,  <30.923410, 31.194468, 31.119884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149973, 31.498743, 31.246714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445193, -0.041350, 0.894479,
		0.693532, -0.647798, 0.315232,
		0.566407, 0.760689, 0.317073,
		31.319895, 31.726950, 31.341835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197018, 30.971952, 31.731890>,  <30.923410, 31.194468, 31.119884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197018, 30.971952, 31.731890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239021, 31.368322, 31.765461>,  <31.264223, 31.606144, 31.785603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239021, 31.368322, 31.765461>,  <31.197018, 30.971952, 31.731890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239021, 31.368322, 31.765461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516782, -0.017730, 0.855933,
		0.849652, -0.133252, 0.510230,
		0.105009, 0.990923, 0.083927,
		31.270523, 31.665600, 31.790640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343723, 31.215952, 32.498146>,  <31.197018, 30.971952, 31.731890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343723, 31.215952, 32.498146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198820, 31.552105, 32.336887>,  <31.111879, 31.753798, 32.240131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198820, 31.552105, 32.336887>,  <31.343723, 31.215952, 32.498146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198820, 31.552105, 32.336887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638205, 0.091590, 0.764399,
		0.679312, 0.534199, 0.503157,
		-0.362257, 0.840383, -0.403147,
		31.090143, 31.804220, 32.215942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261477, 31.673332, 33.055073>,  <31.343723, 31.215952, 32.498146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261477, 31.673332, 33.055073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011288, 31.806341, 32.772736>,  <30.861174, 31.886147, 32.603333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011288, 31.806341, 32.772736>,  <31.261477, 31.673332, 33.055073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011288, 31.806341, 32.772736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621795, 0.334047, 0.708367,
		0.471332, 0.881953, -0.002177,
		-0.625473, 0.332523, -0.705841,
		30.823647, 31.906097, 32.560982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172331, 32.441914, 33.083839>,  <31.261477, 31.673332, 33.055073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172331, 32.441914, 33.083839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856943, 32.344643, 32.857857>,  <30.667711, 32.286282, 32.722267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856943, 32.344643, 32.857857>,  <31.172331, 32.441914, 33.083839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856943, 32.344643, 32.857857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547871, 0.695152, 0.465404,
		0.279559, 0.676482, -0.681336,
		-0.788470, -0.243176, -0.564961,
		30.620401, 32.271690, 32.688370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926216, 33.006996, 32.750614>,  <31.172331, 32.441914, 33.083839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926216, 33.006996, 32.750614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613007, 32.758198, 32.750801>,  <30.425081, 32.608921, 32.750912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613007, 32.758198, 32.750801>,  <30.926216, 33.006996, 32.750614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613007, 32.758198, 32.750801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540203, 0.680425, 0.495179,
		-0.308314, 0.387486, -0.868791,
		-0.783022, -0.621994, 0.000464,
		30.378099, 32.571598, 32.750938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633909, 33.397266, 32.203041>,  <30.926216, 33.006996, 32.750614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633909, 33.397266, 32.203041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585705, 33.706673, 32.451923>,  <30.556782, 33.892319, 32.601254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585705, 33.706673, 32.451923>,  <30.633909, 33.397266, 32.203041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585705, 33.706673, 32.451923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708547, 0.506020, -0.491838,
		-0.695297, 0.381592, -0.609056,
		-0.120513, 0.773519, 0.622210,
		30.549551, 33.938728, 32.638588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622732, 34.007023, 31.787542>,  <30.633909, 33.397266, 32.203041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622732, 34.007023, 31.787542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761232, 34.124523, 32.143929>,  <30.844332, 34.195023, 32.357761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761232, 34.124523, 32.143929>,  <30.622732, 34.007023, 31.787542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761232, 34.124523, 32.143929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884789, 0.213457, -0.414228,
		-0.311864, 0.931743, -0.186000,
		0.346251, 0.293754, 0.890965,
		30.865108, 34.212650, 32.411217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898289, 34.700745, 31.656878>,  <30.622732, 34.007023, 31.787542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898289, 34.700745, 31.656878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070959, 34.575455, 31.995237>,  <31.174562, 34.500278, 32.198254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070959, 34.575455, 31.995237>,  <30.898289, 34.700745, 31.656878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070959, 34.575455, 31.995237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878052, 0.360692, -0.314525,
		-0.206590, 0.878515, 0.430734,
		0.431677, -0.313229, 0.845897,
		31.200462, 34.481487, 32.249008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286116, 35.284405, 31.829390>,  <30.898289, 34.700745, 31.656878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286116, 35.284405, 31.829390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436279, 34.969456, 32.024986>,  <31.526377, 34.780487, 32.142345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436279, 34.969456, 32.024986>,  <31.286116, 35.284405, 31.829390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436279, 34.969456, 32.024986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886184, 0.150341, -0.438264,
		0.271561, 0.597866, 0.754196,
		0.375410, -0.787372, 0.488992,
		31.548903, 34.733246, 32.171684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977884, 35.525372, 32.078804>,  <31.286116, 35.284405, 31.829390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977884, 35.525372, 32.078804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986698, 35.125862, 32.061104>,  <31.991987, 34.886154, 32.050484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986698, 35.125862, 32.061104>,  <31.977884, 35.525372, 32.078804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986698, 35.125862, 32.061104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891583, 0.039658, -0.451117,
		0.452320, -0.029511, 0.891367,
		0.022037, -0.998778, -0.044250,
		31.993309, 34.826229, 32.047829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700802, 35.269451, 32.300503>,  <31.977884, 35.525372, 32.078804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700802, 35.269451, 32.300503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558475, 34.944511, 32.115685>,  <32.473080, 34.749546, 32.004795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558475, 34.944511, 32.115685>,  <32.700802, 35.269451, 32.300503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558475, 34.944511, 32.115685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888950, -0.141628, -0.435556,
		0.288385, -0.565712, 0.772531,
		-0.355812, -0.812349, -0.462046,
		32.451733, 34.700806, 31.977070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273891, 34.842175, 32.298767>,  <32.700802, 35.269451, 32.300503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273891, 34.842175, 32.298767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033405, 34.668964, 32.030132>,  <32.889114, 34.565037, 31.868952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033405, 34.668964, 32.030132>,  <33.273891, 34.842175, 32.298767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033405, 34.668964, 32.030132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796909, -0.262865, -0.543910,
		0.058992, -0.862199, 0.503123,
		-0.601212, -0.433029, -0.671587,
		32.853043, 34.539055, 31.828655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557053, 34.217003, 32.119087>,  <33.273891, 34.842175, 32.298767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557053, 34.217003, 32.119087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319901, 34.287956, 31.804882>,  <33.177608, 34.330528, 31.616360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319901, 34.287956, 31.804882>,  <33.557053, 34.217003, 32.119087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319901, 34.287956, 31.804882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717118, -0.327500, -0.615212,
		-0.366383, -0.928052, 0.066965,
		-0.592879, 0.177381, -0.785513,
		33.142036, 34.341171, 31.569229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685028, 33.736675, 31.688349>,  <33.557053, 34.217003, 32.119087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685028, 33.736675, 31.688349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516857, 33.998528, 31.437048>,  <33.415955, 34.155640, 31.286266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516857, 33.998528, 31.437048>,  <33.685028, 33.736675, 31.688349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516857, 33.998528, 31.437048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569108, -0.349016, -0.744516,
		-0.706653, -0.670557, -0.225820,
		-0.420426, 0.654630, -0.628253,
		33.390728, 34.194916, 31.248571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786682, 33.426243, 31.159178>,  <33.685028, 33.736675, 31.688349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786682, 33.426243, 31.159178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698399, 33.792103, 31.023710>,  <33.645428, 34.011620, 30.942430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698399, 33.792103, 31.023710>,  <33.786682, 33.426243, 31.159178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698399, 33.792103, 31.023710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536513, -0.176126, -0.825308,
		-0.814520, -0.363850, -0.451852,
		-0.220706, 0.914654, -0.338668,
		33.632187, 34.066498, 30.922110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563801, 33.355518, 30.414480>,  <33.786682, 33.426243, 31.159178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563801, 33.355518, 30.414480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738308, 33.707363, 30.490322>,  <33.843010, 33.918472, 30.535828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738308, 33.707363, 30.490322>,  <33.563801, 33.355518, 30.414480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738308, 33.707363, 30.490322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632087, -0.149610, -0.760318,
		-0.640420, 0.451547, -0.621263,
		0.436266, 0.879615, 0.189603,
		33.869186, 33.971249, 30.547203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651474, 33.554340, 29.812506>,  <33.563801, 33.355518, 30.414480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651474, 33.554340, 29.812506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880463, 33.807224, 30.021347>,  <34.017857, 33.958954, 30.146652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880463, 33.807224, 30.021347>,  <33.651474, 33.554340, 29.812506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880463, 33.807224, 30.021347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609674, 0.097558, -0.786626,
		-0.548246, 0.768633, -0.329591,
		0.572472, 0.632207, 0.522101,
		34.052204, 33.996887, 30.177977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810005, 34.180737, 29.387701>,  <33.651474, 33.554340, 29.812506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810005, 34.180737, 29.387701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106968, 34.116165, 29.647787>,  <34.285145, 34.077423, 29.803839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106968, 34.116165, 29.647787>,  <33.810005, 34.180737, 29.387701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106968, 34.116165, 29.647787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669914, 0.168262, -0.723120,
		0.007325, 0.972434, 0.233061,
		0.742402, -0.161428, 0.650215,
		34.329689, 34.067738, 29.842852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293865, 34.776062, 29.283705>,  <33.810005, 34.180737, 29.387701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293865, 34.776062, 29.283705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486267, 34.457012, 29.429272>,  <34.601707, 34.265583, 29.516611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486267, 34.457012, 29.429272>,  <34.293865, 34.776062, 29.283705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486267, 34.457012, 29.429272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699917, 0.099388, -0.707275,
		0.527969, 0.594912, 0.606076,
		0.481003, -0.797622, 0.363915,
		34.630569, 34.217724, 29.538446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953087, 35.034496, 29.415474>,  <34.293865, 34.776062, 29.283705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953087, 35.034496, 29.415474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948307, 34.637348, 29.368046>,  <34.945438, 34.399059, 29.339590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948307, 34.637348, 29.368046>,  <34.953087, 35.034496, 29.415474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948307, 34.637348, 29.368046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784456, 0.064222, -0.616850,
		0.620069, -0.100384, 0.778099,
		-0.011951, -0.992874, -0.118569,
		34.944721, 34.339485, 29.332476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590118, 34.941498, 29.228373>,  <34.953087, 35.034496, 29.415474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590118, 34.941498, 29.228373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449333, 34.573399, 29.159939>,  <35.364864, 34.352539, 29.118877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449333, 34.573399, 29.159939>,  <35.590118, 34.941498, 29.228373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449333, 34.573399, 29.159939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738708, -0.160837, -0.654555,
		0.574835, -0.356760, 0.736402,
		-0.351960, -0.920247, -0.171086,
		35.343746, 34.297325, 29.108612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170982, 34.532673, 29.223940>,  <35.590118, 34.941498, 29.228373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170982, 34.532673, 29.223940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905445, 34.297241, 29.039381>,  <35.746124, 34.155983, 28.928646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905445, 34.297241, 29.039381>,  <36.170982, 34.532673, 29.223940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905445, 34.297241, 29.039381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664293, -0.180654, -0.725313,
		0.343552, -0.787996, 0.510915,
		-0.663843, -0.588579, -0.461396,
		35.706291, 34.120667, 28.900963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510124, 33.888870, 28.993528>,  <36.170982, 34.532673, 29.223940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510124, 33.888870, 28.993528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189068, 33.938412, 28.760145>,  <35.996433, 33.968136, 28.620115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189068, 33.938412, 28.760145>,  <36.510124, 33.888870, 28.993528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189068, 33.938412, 28.760145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566535, -0.147632, -0.810705,
		-0.186546, -0.981257, 0.048329,
		-0.802645, 0.123854, -0.583456,
		35.948273, 33.975567, 28.585108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488682, 33.278618, 28.506180>,  <36.510124, 33.888870, 28.993528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488682, 33.278618, 28.506180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286072, 33.586086, 28.349936>,  <36.164505, 33.770569, 28.256189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286072, 33.586086, 28.349936>,  <36.488682, 33.278618, 28.506180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286072, 33.586086, 28.349936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468552, -0.134906, -0.873075,
		-0.723806, -0.625251, -0.291831,
		-0.506521, 0.768675, -0.390609,
		36.134117, 33.816689, 28.232754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290897, 33.036179, 27.841196>,  <36.488682, 33.278618, 28.506180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290897, 33.036179, 27.841196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237988, 33.432411, 27.827053>,  <36.206242, 33.670151, 27.818567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237988, 33.432411, 27.827053>,  <36.290897, 33.036179, 27.841196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237988, 33.432411, 27.827053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418782, 0.023520, -0.907782,
		-0.898401, -0.134888, -0.417949,
		-0.132279, 0.990582, -0.035359,
		36.198303, 33.729588, 27.816446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858128, 33.172836, 27.288786>,  <36.290897, 33.036179, 27.841196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858128, 33.172836, 27.288786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018585, 33.532280, 27.359880>,  <36.114861, 33.747944, 27.402536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018585, 33.532280, 27.359880>,  <35.858128, 33.172836, 27.288786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018585, 33.532280, 27.359880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321013, 0.043818, -0.946060,
		-0.857924, 0.436563, -0.270887,
		0.401145, 0.898606, 0.177735,
		36.138927, 33.801861, 27.413200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545784, 33.811249, 26.875601>,  <35.858128, 33.172836, 27.288786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545784, 33.811249, 26.875601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932281, 33.862251, 26.965151>,  <36.164181, 33.892853, 27.018881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932281, 33.862251, 26.965151>,  <35.545784, 33.811249, 26.875601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932281, 33.862251, 26.965151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242403, -0.155538, -0.957627,
		-0.087282, 0.979566, -0.181195,
		0.966241, 0.127506, 0.223874,
		36.222153, 33.900505, 27.032312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856358, 34.225628, 26.325117>,  <35.545784, 33.811249, 26.875601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856358, 34.225628, 26.325117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169140, 34.056232, 26.508072>,  <36.356808, 33.954594, 26.617844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169140, 34.056232, 26.508072>,  <35.856358, 34.225628, 26.325117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169140, 34.056232, 26.508072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446249, -0.131985, -0.885122,
		0.435209, 0.896234, 0.085776,
		0.781956, -0.423491, 0.457385,
		36.403725, 33.929184, 26.645287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466312, 34.461132, 25.886992>,  <35.856358, 34.225628, 26.325117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466312, 34.461132, 25.886992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605442, 34.151215, 26.098166>,  <36.688919, 33.965263, 26.224871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605442, 34.151215, 26.098166>,  <36.466312, 34.461132, 25.886992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605442, 34.151215, 26.098166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617543, -0.234363, -0.750810,
		0.705450, 0.587172, 0.396950,
		0.347824, -0.774792, 0.527935,
		36.709789, 33.918777, 26.256546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164055, 34.332817, 25.650097>,  <36.466312, 34.461132, 25.886992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164055, 34.332817, 25.650097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094242, 33.992352, 25.848112>,  <37.052353, 33.788074, 25.966921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094242, 33.992352, 25.848112>,  <37.164055, 34.332817, 25.650097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094242, 33.992352, 25.848112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729652, -0.449386, -0.515422,
		0.661171, 0.271249, 0.699483,
		-0.174531, -0.851161, 0.495039,
		37.041882, 33.737003, 25.996624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735752, 34.133320, 26.133310>,  <37.164055, 34.332817, 25.650097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735752, 34.133320, 26.133310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535995, 33.804165, 26.024899>,  <37.416142, 33.606670, 25.959852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535995, 33.804165, 26.024899>,  <37.735752, 34.133320, 26.133310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535995, 33.804165, 26.024899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804511, -0.324369, -0.497540,
		0.321507, -0.466515, 0.824013,
		-0.499394, -0.822890, -0.271029,
		37.386177, 33.557297, 25.943590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104980, 33.547646, 26.309206>,  <37.735752, 34.133320, 26.133310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104980, 33.547646, 26.309206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862057, 33.438705, 26.010675>,  <37.716301, 33.373341, 25.831558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862057, 33.438705, 26.010675>,  <38.104980, 33.547646, 26.309206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862057, 33.438705, 26.010675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773191, -0.418555, -0.476432,
		-0.182622, -0.866393, 0.464770,
		-0.607310, -0.272349, -0.746325,
		37.679863, 33.357002, 25.786777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196960, 32.800446, 26.153322>,  <38.104980, 33.547646, 26.309206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196960, 32.800446, 26.153322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058067, 32.959209, 25.813465>,  <37.974731, 33.054470, 25.609550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058067, 32.959209, 25.813465>,  <38.196960, 32.800446, 26.153322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058067, 32.959209, 25.813465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693000, -0.501802, -0.517634,
		-0.631808, -0.768540, -0.100821,
		-0.347230, 0.396914, -0.849641,
		37.953899, 33.078285, 25.558573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531868, 32.368835, 25.681505>,  <38.196960, 32.800446, 26.153322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531868, 32.368835, 25.681505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379017, 32.641167, 25.431561>,  <38.287308, 32.804565, 25.281593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379017, 32.641167, 25.431561>,  <38.531868, 32.368835, 25.681505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379017, 32.641167, 25.431561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564300, -0.363556, -0.741210,
		-0.731808, -0.635848, -0.245265,
		-0.382129, 0.680826, -0.624862,
		38.264378, 32.845413, 25.244102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222084, 32.031525, 25.047817>,  <38.531868, 32.368835, 25.681505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222084, 32.031525, 25.047817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324535, 32.403294, 24.941557>,  <38.386005, 32.626354, 24.877802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324535, 32.403294, 24.941557>,  <38.222084, 32.031525, 25.047817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324535, 32.403294, 24.941557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441468, -0.356953, -0.823219,
		-0.859944, 0.093575, -0.501737,
		0.256129, 0.929424, -0.265649,
		38.401375, 32.682121, 24.861862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173664, 31.951500, 24.347904>,  <38.222084, 32.031525, 25.047817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173664, 31.951500, 24.347904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367813, 32.298237, 24.393518>,  <38.484303, 32.506279, 24.420887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367813, 32.298237, 24.393518>,  <38.173664, 31.951500, 24.347904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367813, 32.298237, 24.393518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696913, -0.304827, -0.649148,
		-0.527947, 0.394549, -0.752066,
		0.485371, 0.866840, 0.114033,
		38.513424, 32.558289, 24.427729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354359, 32.195057, 23.583624>,  <38.173664, 31.951500, 24.347904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354359, 32.195057, 23.583624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596138, 32.375999, 23.845928>,  <38.741203, 32.484566, 24.003311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596138, 32.375999, 23.845928>,  <38.354359, 32.195057, 23.583624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596138, 32.375999, 23.845928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750125, -0.045999, -0.659694,
		-0.268253, 0.890650, -0.367128,
		0.604444, 0.452357, 0.655760,
		38.777470, 32.511707, 24.042656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739738, 32.703571, 23.136208>,  <38.354359, 32.195057, 23.583624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739738, 32.703571, 23.136208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933773, 32.649677, 23.481817>,  <39.050194, 32.617340, 23.689182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933773, 32.649677, 23.481817>,  <38.739738, 32.703571, 23.136208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933773, 32.649677, 23.481817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848783, -0.165154, -0.502285,
		0.210374, 0.977021, 0.034248,
		0.485087, -0.134737, 0.864023,
		39.079300, 32.609257, 23.741024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300308, 33.019642, 23.015049>,  <38.739738, 32.703571, 23.136208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300308, 33.019642, 23.015049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376354, 32.766537, 23.315308>,  <39.421982, 32.614674, 23.495462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376354, 32.766537, 23.315308>,  <39.300308, 33.019642, 23.015049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376354, 32.766537, 23.315308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886953, -0.217105, -0.407651,
		0.420915, 0.743288, 0.519955,
		0.190117, -0.632762, 0.750644,
		39.433388, 32.576710, 23.540501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962643, 33.132393, 23.163486>,  <39.300308, 33.019642, 23.015049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962643, 33.132393, 23.163486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912800, 32.767731, 23.320133>,  <39.882893, 32.548935, 23.414122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912800, 32.767731, 23.320133>,  <39.962643, 33.132393, 23.163486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912800, 32.767731, 23.320133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854272, -0.299331, -0.424995,
		0.504671, 0.281591, 0.816097,
		-0.124608, -0.911651, 0.391619,
		39.875416, 32.494236, 23.437618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644939, 32.928356, 23.297573>,  <39.962643, 33.132393, 23.163486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644939, 32.928356, 23.297573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451382, 32.580006, 23.332039>,  <40.335247, 32.370995, 23.352718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451382, 32.580006, 23.332039>,  <40.644939, 32.928356, 23.297573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451382, 32.580006, 23.332039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812407, -0.483637, -0.325714,
		0.325328, -0.087610, 0.941534,
		-0.483897, -0.870873, 0.086166,
		40.306213, 32.318745, 23.357889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073898, 32.534870, 23.792181>,  <40.644939, 32.928356, 23.297573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073898, 32.534870, 23.792181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855888, 32.268604, 23.588285>,  <40.725082, 32.108845, 23.465948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855888, 32.268604, 23.588285>,  <41.073898, 32.534870, 23.792181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855888, 32.268604, 23.588285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805825, -0.583774, -0.099264,
		-0.231496, -0.464862, 0.854583,
		-0.545028, -0.665666, -0.509739,
		40.692379, 32.068905, 23.435364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144184, 31.778025, 24.096258>,  <41.073898, 32.534870, 23.792181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144184, 31.778025, 24.096258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038139, 31.754820, 23.711269>,  <40.974514, 31.740898, 23.480276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038139, 31.754820, 23.711269>,  <41.144184, 31.778025, 24.096258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038139, 31.754820, 23.711269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715841, -0.680579, -0.156154,
		-0.645979, -0.730374, 0.221954,
		-0.265108, -0.058011, -0.962472,
		40.958607, 31.737417, 23.422527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689987, 31.277090, 24.068939>,  <41.144184, 31.778025, 24.096258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689987, 31.277090, 24.068939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961246, 31.181564, 24.346956>,  <42.124001, 31.124249, 24.513767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961246, 31.181564, 24.346956>,  <41.689987, 31.277090, 24.068939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961246, 31.181564, 24.346956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731867, -0.305644, 0.609059,
		0.066985, -0.921710, -0.382051,
		0.678147, -0.238813, 0.695043,
		42.164692, 31.109921, 24.555470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558098, 30.704191, 24.278009>,  <41.689987, 31.277090, 24.068939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558098, 30.704191, 24.278009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800098, 30.803514, 24.580614>,  <41.945301, 30.863108, 24.762177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800098, 30.803514, 24.580614>,  <41.558098, 30.704191, 24.278009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800098, 30.803514, 24.580614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698578, -0.290357, 0.653974,
		0.382045, -0.924141, -0.002205,
		0.605004, 0.248307, 0.756513,
		41.981602, 30.878006, 24.807568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712769, 30.070139, 24.606945>,  <41.558098, 30.704191, 24.278009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712769, 30.070139, 24.606945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722450, 30.385363, 24.852995>,  <41.728260, 30.574497, 25.000626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722450, 30.385363, 24.852995>,  <41.712769, 30.070139, 24.606945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722450, 30.385363, 24.852995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754686, -0.389132, 0.528229,
		0.655640, -0.477011, 0.585318,
		0.024205, 0.788059, 0.615124,
		41.729713, 30.621780, 25.037533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534199, 29.846025, 25.251286>,  <41.712769, 30.070139, 24.606945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534199, 29.846025, 25.251286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529591, 30.238054, 25.330608>,  <41.526825, 30.473272, 25.378202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529591, 30.238054, 25.330608>,  <41.534199, 29.846025, 25.251286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529591, 30.238054, 25.330608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664531, -0.155695, 0.730861,
		0.747172, -0.123362, 0.653082,
		-0.011521, 0.980072, 0.198308,
		41.526134, 30.532076, 25.390100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622173, 29.831600, 25.873018>,  <41.534199, 29.846025, 25.251286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622173, 29.831600, 25.873018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466869, 30.192493, 25.797939>,  <41.373688, 30.409029, 25.752892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466869, 30.192493, 25.797939>,  <41.622173, 29.831600, 25.873018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466869, 30.192493, 25.797939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489538, -0.029365, 0.871487,
		0.780772, 0.430249, 0.453079,
		-0.388261, 0.902232, -0.187696,
		41.350391, 30.463163, 25.741631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522667, 30.077932, 26.482267>,  <41.622173, 29.831600, 25.873018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522667, 30.077932, 26.482267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281559, 30.319975, 26.274225>,  <41.136894, 30.465200, 26.149399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281559, 30.319975, 26.274225>,  <41.522667, 30.077932, 26.482267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281559, 30.319975, 26.274225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639404, 0.023618, 0.768508,
		0.477314, 0.795793, 0.372672,
		-0.602772, 0.605107, -0.520106,
		41.100727, 30.501507, 26.118193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431454, 30.720732, 26.806311>,  <41.522667, 30.077932, 26.482267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431454, 30.720732, 26.806311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093357, 30.673920, 26.597748>,  <40.890499, 30.645832, 26.472610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093357, 30.673920, 26.597748>,  <41.431454, 30.720732, 26.806311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093357, 30.673920, 26.597748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531302, 0.079522, 0.843442,
		-0.057243, 0.989940, -0.129393,
		-0.845246, -0.117028, -0.521405,
		40.839783, 30.638811, 26.441326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035023, 31.317522, 26.971800>,  <41.431454, 30.720732, 26.806311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035023, 31.317522, 26.971800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777866, 31.054098, 26.815344>,  <40.623573, 30.896044, 26.721470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777866, 31.054098, 26.815344>,  <41.035023, 31.317522, 26.971800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777866, 31.054098, 26.815344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659592, 0.216382, 0.719803,
		-0.389398, 0.720748, -0.573491,
		-0.642890, -0.658560, -0.391141,
		40.584999, 30.856531, 26.698002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455608, 31.655754, 27.002073>,  <41.035023, 31.317522, 26.971800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455608, 31.655754, 27.002073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318977, 31.285789, 26.935301>,  <40.237000, 31.063810, 26.895237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318977, 31.285789, 26.935301>,  <40.455608, 31.655754, 27.002073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318977, 31.285789, 26.935301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647807, 0.103011, 0.754808,
		-0.680934, 0.365965, -0.634349,
		-0.341578, -0.924910, -0.166931,
		40.216503, 31.008316, 26.885221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666851, 31.696960, 26.943611>,  <40.455608, 31.655754, 27.002073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666851, 31.696960, 26.943611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779522, 31.325056, 27.038439>,  <39.847122, 31.101913, 27.095335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779522, 31.325056, 27.038439>,  <39.666851, 31.696960, 26.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779522, 31.325056, 27.038439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795167, -0.087914, 0.599985,
		-0.537002, -0.357508, -0.764079,
		0.281673, -0.929763, 0.237068,
		39.864025, 31.046127, 27.109560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165016, 31.278170, 26.729977>,  <39.666851, 31.696960, 26.943611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165016, 31.278170, 26.729977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375782, 31.108467, 27.024557>,  <39.502243, 31.006645, 27.201305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375782, 31.108467, 27.024557>,  <39.165016, 31.278170, 26.729977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375782, 31.108467, 27.024557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814113, -0.003097, 0.580699,
		-0.244086, -0.905536, -0.347026,
		0.526918, -0.424259, 0.736452,
		39.533859, 30.981190, 27.245493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637486, 30.893238, 27.032335>,  <39.165016, 31.278170, 26.729977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637486, 30.893238, 27.032335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913525, 30.896517, 27.321804>,  <39.079147, 30.898483, 27.495485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913525, 30.896517, 27.321804>,  <38.637486, 30.893238, 27.032335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913525, 30.896517, 27.321804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721094, 0.092893, 0.686582,
		-0.061598, -0.995642, 0.070014,
		0.690094, 0.008195, 0.723674,
		39.120552, 30.898975, 27.538906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300571, 30.563370, 27.495871>,  <38.637486, 30.893238, 27.032335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300571, 30.563370, 27.495871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581577, 30.774414, 27.686909>,  <38.750183, 30.901041, 27.801531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581577, 30.774414, 27.686909>,  <38.300571, 30.563370, 27.495871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581577, 30.774414, 27.686909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665991, 0.250850, 0.702517,
		0.250850, -0.811604, 0.527610,
		-0.702517, -0.527610, -0.477595,
		38.792332, 30.932697, 27.830187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156563, 30.442120, 28.174274>,  <38.300571, 30.563370, 27.495871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156563, 30.442120, 28.174274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370590, 30.780039, 28.172426>,  <38.499004, 30.982790, 28.171316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370590, 30.780039, 28.172426>,  <38.156563, 30.442120, 28.174274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370590, 30.780039, 28.172426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486730, 0.312741, 0.815651,
		0.690507, -0.434177, 0.578525,
		0.535065, 0.844798, -0.004623,
		38.531109, 31.033478, 28.171040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378712, 30.458015, 28.823704>,  <38.156563, 30.442120, 28.174274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378712, 30.458015, 28.823704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382851, 30.820581, 28.654799>,  <38.385334, 31.038120, 28.553455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382851, 30.820581, 28.654799>,  <38.378712, 30.458015, 28.823704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382851, 30.820581, 28.654799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461816, 0.378883, 0.801981,
		0.886915, 0.186713, 0.422515,
		0.010343, 0.906414, -0.422265,
		38.385952, 31.092506, 28.528120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473289, 30.917753, 29.443289>,  <38.378712, 30.458015, 28.823704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473289, 30.917753, 29.443289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344772, 31.173357, 29.163736>,  <38.267662, 31.326719, 28.996004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344772, 31.173357, 29.163736>,  <38.473289, 30.917753, 29.443289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344772, 31.173357, 29.163736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525197, 0.493871, 0.693007,
		0.787996, 0.589711, 0.176928,
		-0.321294, 0.639009, -0.698883,
		38.248383, 31.365059, 28.954071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643967, 31.557037, 29.652075>,  <38.473289, 30.917753, 29.443289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643967, 31.557037, 29.652075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368786, 31.637760, 29.373222>,  <38.203678, 31.686193, 29.205912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368786, 31.637760, 29.373222>,  <38.643967, 31.557037, 29.652075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368786, 31.637760, 29.373222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454141, 0.629556, 0.630409,
		0.566102, 0.750289, -0.341459,
		-0.687956, 0.201806, -0.697130,
		38.162399, 31.698301, 29.164083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536598, 32.219120, 29.675844>,  <38.643967, 31.557037, 29.652075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536598, 32.219120, 29.675844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208904, 32.115845, 29.471027>,  <38.012287, 32.053879, 29.348137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208904, 32.115845, 29.471027>,  <38.536598, 32.219120, 29.675844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208904, 32.115845, 29.471027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546760, 0.620925, 0.561698,
		0.172918, 0.740130, -0.649852,
		-0.819239, -0.258185, -0.512043,
		37.963131, 32.038387, 29.317415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170063, 32.849262, 29.483049>,  <38.536598, 32.219120, 29.675844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170063, 32.849262, 29.483049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877174, 32.576981, 29.474237>,  <37.701439, 32.413612, 29.468950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877174, 32.576981, 29.474237>,  <38.170063, 32.849262, 29.483049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877174, 32.576981, 29.474237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575944, 0.601625, 0.553475,
		-0.363501, 0.417956, -0.832574,
		-0.732226, -0.680705, -0.022028,
		37.657505, 32.372768, 29.467628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583687, 33.329453, 29.590157>,  <38.170063, 32.849262, 29.483049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583687, 33.329453, 29.590157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475777, 32.950500, 29.659081>,  <37.411030, 32.723129, 29.700434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475777, 32.950500, 29.659081>,  <37.583687, 33.329453, 29.590157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475777, 32.950500, 29.659081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766097, 0.319573, 0.557645,
		-0.583368, 0.018432, -0.811999,
		-0.269771, -0.947382, 0.172308,
		37.394844, 32.666286, 29.710773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965786, 33.256073, 29.256119>,  <37.583687, 33.329453, 29.590157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965786, 33.256073, 29.256119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962036, 32.976727, 29.542391>,  <36.959785, 32.809120, 29.714153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962036, 32.976727, 29.542391>,  <36.965786, 33.256073, 29.256119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962036, 32.976727, 29.542391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597298, 0.577909, 0.556109,
		-0.801965, -0.422261, -0.422549,
		-0.009372, -0.698368, 0.715678,
		36.959225, 32.767216, 29.757093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298012, 33.082253, 29.468508>,  <36.965786, 33.256073, 29.256119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298012, 33.082253, 29.468508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492935, 32.946083, 29.790163>,  <36.609890, 32.864380, 29.983156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492935, 32.946083, 29.790163>,  <36.298012, 33.082253, 29.468508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492935, 32.946083, 29.790163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691975, 0.411158, 0.593396,
		-0.532636, -0.845612, -0.035205,
		0.487308, -0.340425, 0.804140,
		36.639130, 32.843956, 30.031404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764595, 32.960247, 29.889254>,  <36.298012, 33.082253, 29.468508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764595, 32.960247, 29.889254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092663, 32.947407, 30.117741>,  <36.289505, 32.939701, 30.254833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092663, 32.947407, 30.117741>,  <35.764595, 32.960247, 29.889254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092663, 32.947407, 30.117741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539972, 0.286526, 0.791412,
		-0.189072, -0.957534, 0.217668,
		0.820172, -0.032100, 0.571216,
		36.338715, 32.937778, 30.289104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608696, 32.593285, 30.447020>,  <35.764595, 32.960247, 29.889254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608696, 32.593285, 30.447020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898819, 32.838432, 30.572441>,  <36.072895, 32.985519, 30.647694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898819, 32.838432, 30.572441>,  <35.608696, 32.593285, 30.447020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898819, 32.838432, 30.572441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561818, 0.263738, 0.784094,
		0.397848, -0.744873, 0.535612,
		0.725312, 0.612867, 0.313555,
		36.116413, 33.022293, 30.666508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687145, 32.479523, 31.172079>,  <35.608696, 32.593285, 30.447020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687145, 32.479523, 31.172079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856884, 32.837112, 31.114483>,  <35.958729, 33.051666, 31.079926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856884, 32.837112, 31.114483>,  <35.687145, 32.479523, 31.172079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856884, 32.837112, 31.114483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443387, 0.343793, 0.827777,
		0.789516, -0.287423, 0.542266,
		0.424350, 0.893976, -0.143990,
		35.984188, 33.105305, 31.071285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029343, 32.741184, 31.855394>,  <35.687145, 32.479523, 31.172079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029343, 32.741184, 31.855394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924122, 33.059410, 31.637081>,  <35.860989, 33.250347, 31.506092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924122, 33.059410, 31.637081>,  <36.029343, 32.741184, 31.855394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924122, 33.059410, 31.637081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418988, 0.415375, 0.807411,
		0.869054, 0.441066, 0.224068,
		-0.263050, 0.795565, -0.545785,
		35.845207, 33.298080, 31.473347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126511, 33.285355, 32.445099>,  <36.029343, 32.741184, 31.855394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126511, 33.285355, 32.445099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932312, 33.461445, 32.142975>,  <35.815792, 33.567101, 31.961700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932312, 33.461445, 32.142975>,  <36.126511, 33.285355, 32.445099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932312, 33.461445, 32.142975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472464, 0.594810, 0.650368,
		0.735575, 0.672609, -0.080788,
		-0.485497, 0.440225, -0.755311,
		35.786663, 33.593513, 31.916382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366066, 34.045696, 32.354160>,  <36.126511, 33.285355, 32.445099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366066, 34.045696, 32.354160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996346, 34.007694, 32.206303>,  <35.774513, 33.984894, 32.117588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996346, 34.007694, 32.206303>,  <36.366066, 34.045696, 32.354160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996346, 34.007694, 32.206303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322871, 0.711083, 0.624592,
		0.203512, 0.696660, -0.687930,
		-0.924304, -0.095001, -0.369646,
		35.719055, 33.979195, 32.095409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067326, 34.737415, 32.323349>,  <36.366066, 34.045696, 32.354160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067326, 34.737415, 32.323349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759926, 34.481560, 32.316689>,  <35.575485, 34.328049, 32.312691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759926, 34.481560, 32.316689>,  <36.067326, 34.737415, 32.323349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759926, 34.481560, 32.316689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524310, 0.614594, 0.589384,
		-0.366757, 0.461671, -0.807681,
		-0.768497, -0.639636, -0.016652,
		35.529377, 34.289669, 32.311691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436081, 35.111259, 32.297928>,  <36.067326, 34.737415, 32.323349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436081, 35.111259, 32.297928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298847, 34.751690, 32.406906>,  <35.216507, 34.535946, 32.472294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298847, 34.751690, 32.406906>,  <35.436081, 35.111259, 32.297928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298847, 34.751690, 32.406906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525220, 0.424057, 0.737780,
		-0.778743, 0.110025, -0.617620,
		-0.343080, -0.898927, 0.272444,
		35.195923, 34.482010, 32.488640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769875, 35.223915, 32.545128>,  <35.436081, 35.111259, 32.297928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769875, 35.223915, 32.545128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843708, 34.874420, 32.725132>,  <34.888008, 34.664722, 32.833134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843708, 34.874420, 32.725132>,  <34.769875, 35.223915, 32.545128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843708, 34.874420, 32.725132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457853, 0.328714, 0.826025,
		-0.869656, -0.358506, -0.339370,
		0.184579, -0.873739, 0.450011,
		34.899082, 34.612297, 32.860134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162624, 35.060345, 33.006142>,  <34.769875, 35.223915, 32.545128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162624, 35.060345, 33.006142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448090, 34.814407, 33.140396>,  <34.619370, 34.666847, 33.220947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448090, 34.814407, 33.140396>,  <34.162624, 35.060345, 33.006142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448090, 34.814407, 33.140396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209290, 0.270101, 0.939810,
		-0.668489, -0.740956, 0.064082,
		0.713667, -0.614841, 0.335635,
		34.662189, 34.629955, 33.241085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838581, 34.665844, 33.433643>,  <34.162624, 35.060345, 33.006142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838581, 34.665844, 33.433643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218544, 34.641819, 33.556324>,  <34.446522, 34.627403, 33.629932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218544, 34.641819, 33.556324>,  <33.838581, 34.665844, 33.433643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218544, 34.641819, 33.556324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291162, 0.186520, 0.938315,
		-0.113560, -0.980614, 0.159690,
		0.949910, -0.060059, 0.306698,
		34.503517, 34.623802, 33.648335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868626, 34.178520, 34.091267>,  <33.838581, 34.665844, 33.433643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868626, 34.178520, 34.091267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205215, 34.393860, 34.109608>,  <34.407169, 34.523064, 34.120613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205215, 34.393860, 34.109608>,  <33.868626, 34.178520, 34.091267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205215, 34.393860, 34.109608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091057, 0.057644, 0.994176,
		0.532574, -0.840746, 0.097527,
		0.841471, 0.538353, 0.045856,
		34.457657, 34.555367, 34.123363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162498, 33.989429, 34.686352>,  <33.868626, 34.178520, 34.091267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162498, 33.989429, 34.686352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385666, 34.313435, 34.614117>,  <34.519566, 34.507835, 34.570774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385666, 34.313435, 34.614117>,  <34.162498, 33.989429, 34.686352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385666, 34.313435, 34.614117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112509, 0.289422, 0.950566,
		0.822235, -0.510019, 0.252607,
		0.557917, 0.810009, -0.180591,
		34.553040, 34.556438, 34.559940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667568, 33.975948, 35.093185>,  <34.162498, 33.989429, 34.686352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667568, 33.975948, 35.093185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618950, 34.364960, 35.013783>,  <34.589779, 34.598366, 34.966141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618950, 34.364960, 35.013783>,  <34.667568, 33.975948, 35.093185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618950, 34.364960, 35.013783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007509, 0.200885, 0.979586,
		0.992557, 0.117578, -0.031720,
		-0.121550, 0.972533, -0.198507,
		34.582485, 34.656719, 34.954231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127396, 34.323120, 35.525787>,  <34.667568, 33.975948, 35.093185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127396, 34.323120, 35.525787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846302, 34.587856, 35.421379>,  <34.677647, 34.746696, 35.358734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846302, 34.587856, 35.421379>,  <35.127396, 34.323120, 35.525787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846302, 34.587856, 35.421379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246842, 0.117277, 0.961933,
		0.667255, 0.740417, 0.080954,
		-0.702737, 0.661837, -0.261020,
		34.635479, 34.786407, 35.343075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122887, 34.760708, 36.028877>,  <35.127396, 34.323120, 35.525787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122887, 34.760708, 36.028877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776283, 34.868599, 35.860874>,  <34.568321, 34.933334, 35.760071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776283, 34.868599, 35.860874>,  <35.122887, 34.760708, 36.028877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776283, 34.868599, 35.860874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393629, 0.148177, 0.907249,
		0.306947, 0.951467, -0.022224,
		-0.866510, 0.269729, -0.420007,
		34.516331, 34.949516, 35.734871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931149, 35.326820, 36.383278>,  <35.122887, 34.760708, 36.028877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931149, 35.326820, 36.383278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579197, 35.233185, 36.217857>,  <34.368027, 35.177006, 36.118607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579197, 35.233185, 36.217857>,  <34.931149, 35.326820, 36.383278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579197, 35.233185, 36.217857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470259, 0.303721, 0.828620,
		-0.068365, 0.923557, -0.377318,
		-0.879877, -0.234085, -0.413547,
		34.315235, 35.162960, 36.093792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137024, 35.403378, 37.041279>,  <34.931149, 35.326820, 36.383278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137024, 35.403378, 37.041279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854347, 35.248257, 37.277992>,  <34.684742, 35.155186, 37.420021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854347, 35.248257, 37.277992>,  <35.137024, 35.403378, 37.041279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854347, 35.248257, 37.277992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656649, -0.048054, 0.752664,
		-0.263446, 0.920490, 0.288608,
		-0.706688, -0.387800, 0.591779,
		34.642342, 35.131916, 37.455524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021309, 35.853840, 37.688042>,  <35.137024, 35.403378, 37.041279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021309, 35.853840, 37.688042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957504, 35.461906, 37.736176>,  <34.919220, 35.226746, 37.765057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957504, 35.461906, 37.736176>,  <35.021309, 35.853840, 37.688042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957504, 35.461906, 37.736176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755846, -0.042808, 0.653349,
		-0.635022, 0.195173, 0.747432,
		-0.159512, -0.979834, 0.120337,
		34.909649, 35.167957, 37.772278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019878, 35.650784, 38.464828>,  <35.021309, 35.853840, 37.688042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019878, 35.650784, 38.464828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157757, 35.382496, 38.202129>,  <35.240482, 35.221523, 38.044510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157757, 35.382496, 38.202129>,  <35.019878, 35.650784, 38.464828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157757, 35.382496, 38.202129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827544, -0.113134, 0.549883,
		-0.443119, -0.733029, 0.516055,
		0.344697, -0.670722, -0.656746,
		35.261166, 35.181278, 38.005104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314747, 35.129242, 38.887924>,  <35.019878, 35.650784, 38.464828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314747, 35.129242, 38.887924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457329, 35.154816, 38.515076>,  <35.542877, 35.170158, 38.291367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457329, 35.154816, 38.515076>,  <35.314747, 35.129242, 38.887924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457329, 35.154816, 38.515076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929209, -0.128382, 0.346539,
		-0.097511, -0.989662, -0.105172,
		0.356459, 0.063936, -0.932121,
		35.564266, 35.173996, 38.235439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863544, 34.610626, 38.813904>,  <35.314747, 35.129242, 38.887924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863544, 34.610626, 38.813904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924908, 34.922119, 38.570580>,  <35.961723, 35.109016, 38.424583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924908, 34.922119, 38.570580>,  <35.863544, 34.610626, 38.813904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924908, 34.922119, 38.570580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953734, 0.044401, 0.297356,
		0.258570, -0.625784, -0.735892,
		0.153406, 0.778732, -0.608312,
		35.970928, 35.155739, 38.388084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486145, 34.557919, 38.399006>,  <35.863544, 34.610626, 38.813904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486145, 34.557919, 38.399006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411812, 34.942463, 38.480255>,  <36.367210, 35.173187, 38.529003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411812, 34.942463, 38.480255>,  <36.486145, 34.557919, 38.399006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411812, 34.942463, 38.480255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937183, 0.111307, 0.330604,
		0.295220, 0.251800, -0.921652,
		-0.185833, 0.961357, 0.203123,
		36.356064, 35.230869, 38.541191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684895, 35.118057, 37.906250>,  <36.486145, 34.557919, 38.399006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684895, 35.118057, 37.906250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707993, 35.205940, 38.295792>,  <36.721851, 35.258671, 38.529518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707993, 35.205940, 38.295792>,  <36.684895, 35.118057, 37.906250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707993, 35.205940, 38.295792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998245, -0.025583, -0.053416,
		0.013178, 0.975230, -0.220801,
		0.057741, 0.219709, 0.973855,
		36.725315, 35.271854, 38.587948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471542, 35.111984, 37.768986>,  <36.684895, 35.118057, 37.906250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471542, 35.111984, 37.768986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719784, 35.316914, 38.006432>,  <37.868729, 35.439869, 38.148899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719784, 35.316914, 38.006432>,  <37.471542, 35.111984, 37.768986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719784, 35.316914, 38.006432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695234, -0.009399, -0.718722,
		-0.362636, 0.858743, -0.362016,
		0.620600, 0.512320, 0.593619,
		37.905964, 35.470612, 38.184517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227592, 35.006947, 37.779690>,  <37.471542, 35.111984, 37.768986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227592, 35.006947, 37.779690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082882, 34.776024, 38.072495>,  <37.996056, 34.637470, 38.248177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082882, 34.776024, 38.072495>,  <38.227592, 35.006947, 37.779690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082882, 34.776024, 38.072495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922732, -0.333739, 0.192833,
		0.132978, 0.745211, 0.653435,
		-0.361778, -0.577303, 0.732010,
		37.974350, 34.602833, 38.292099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482979, 35.023201, 38.466713>,  <38.227592, 35.006947, 37.779690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482979, 35.023201, 38.466713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362984, 34.647259, 38.401371>,  <38.290985, 34.421696, 38.362167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362984, 34.647259, 38.401371>,  <38.482979, 35.023201, 38.466713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362984, 34.647259, 38.401371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921584, -0.329752, 0.204810,
		-0.246357, -0.089103, 0.965075,
		-0.299986, -0.939853, -0.163353,
		38.272987, 34.365303, 38.352364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495876, 34.527679, 39.056545>,  <38.482979, 35.023201, 38.466713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495876, 34.527679, 39.056545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548145, 34.336624, 38.709030>,  <38.579506, 34.221992, 38.500523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548145, 34.336624, 38.709030>,  <38.495876, 34.527679, 39.056545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548145, 34.336624, 38.709030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795717, -0.472200, 0.379289,
		-0.591403, -0.740870, 0.318361,
		0.130674, -0.477638, -0.868784,
		38.587349, 34.193333, 38.448395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547249, 33.827942, 39.229557>,  <38.495876, 34.527679, 39.056545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547249, 33.827942, 39.229557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733658, 33.927872, 38.890049>,  <38.845505, 33.987831, 38.686344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733658, 33.927872, 38.890049>,  <38.547249, 33.827942, 39.229557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733658, 33.927872, 38.890049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839406, -0.428080, 0.334881,
		-0.279680, -0.868525, -0.409198,
		0.466022, 0.249824, -0.848771,
		38.873463, 34.002819, 38.635418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867184, 33.234306, 38.989491>,  <38.547249, 33.827942, 39.229557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867184, 33.234306, 38.989491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054756, 33.571781, 38.884953>,  <39.167301, 33.774265, 38.822231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054756, 33.571781, 38.884953>,  <38.867184, 33.234306, 38.989491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054756, 33.571781, 38.884953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858076, -0.365054, 0.361167,
		0.209307, -0.393616, -0.895130,
		0.468932, 0.843684, -0.261344,
		39.195435, 33.824886, 38.806549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467743, 33.102791, 38.519608>,  <38.867184, 33.234306, 38.989491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467743, 33.102791, 38.519608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550804, 33.445427, 38.708561>,  <39.600639, 33.651009, 38.821934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550804, 33.445427, 38.708561>,  <39.467743, 33.102791, 38.519608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550804, 33.445427, 38.708561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872340, -0.380656, 0.306796,
		0.442612, 0.348370, -0.826277,
		0.207648, 0.856586, 0.472380,
		39.613098, 33.702404, 38.850273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051083, 33.379009, 38.237675>,  <39.467743, 33.102791, 38.519608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051083, 33.379009, 38.237675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003052, 33.489048, 38.619228>,  <39.974232, 33.555073, 38.848160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003052, 33.489048, 38.619228>,  <40.051083, 33.379009, 38.237675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003052, 33.489048, 38.619228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879452, -0.416304, 0.230770,
		0.460592, 0.866609, -0.191947,
		-0.120079, 0.275099, 0.953888,
		39.967030, 33.571579, 38.905396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580154, 33.816002, 38.414707>,  <40.051083, 33.379009, 38.237675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580154, 33.816002, 38.414707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464993, 33.641129, 38.755527>,  <40.395897, 33.536205, 38.960018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464993, 33.641129, 38.755527>,  <40.580154, 33.816002, 38.414707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464993, 33.641129, 38.755527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954799, -0.199752, 0.220132,
		0.073960, 0.876910, 0.474930,
		-0.287905, -0.437182, 0.852046,
		40.378620, 33.509975, 39.011143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962212, 34.059872, 38.924694>,  <40.580154, 33.816002, 38.414707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962212, 34.059872, 38.924694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856617, 33.698689, 39.060326>,  <40.793262, 33.481979, 39.141705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856617, 33.698689, 39.060326>,  <40.962212, 34.059872, 38.924694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856617, 33.698689, 39.060326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938363, -0.159105, 0.306856,
		-0.223130, 0.399182, 0.889307,
		-0.263985, -0.902961, 0.339076,
		40.777420, 33.427799, 39.162048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373322, 34.032879, 39.562164>,  <40.962212, 34.059872, 38.924694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373322, 34.032879, 39.562164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240723, 33.662544, 39.489567>,  <41.161163, 33.440342, 39.446007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240723, 33.662544, 39.489567>,  <41.373322, 34.032879, 39.562164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240723, 33.662544, 39.489567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812037, -0.377927, 0.444710,
		-0.480320, 0.000036, 0.877093,
		-0.331494, -0.925835, -0.181497,
		41.141273, 33.384792, 39.435116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572060, 33.823307, 40.142445>,  <41.373322, 34.032879, 39.562164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572060, 33.823307, 40.142445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473534, 33.497803, 39.931873>,  <41.414417, 33.302502, 39.805531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473534, 33.497803, 39.931873>,  <41.572060, 33.823307, 40.142445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473534, 33.497803, 39.931873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737283, -0.509883, 0.443207,
		-0.629079, -0.278955, 0.725564,
		-0.246318, -0.813759, -0.526426,
		41.399639, 33.253674, 39.773945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464855, 33.268757, 40.597862>,  <41.572060, 33.823307, 40.142445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464855, 33.268757, 40.597862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556755, 33.098900, 40.247574>,  <41.611897, 32.996986, 40.037399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556755, 33.098900, 40.247574>,  <41.464855, 33.268757, 40.597862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556755, 33.098900, 40.247574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754654, -0.490469, 0.435819,
		-0.614582, -0.761000, 0.207771,
		0.229753, -0.424641, -0.875724,
		41.625683, 32.971508, 39.984856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558346, 32.549091, 40.760048>,  <41.464855, 33.268757, 40.597862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558346, 32.549091, 40.760048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762222, 32.716171, 40.459187>,  <41.884548, 32.816422, 40.278667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762222, 32.716171, 40.459187>,  <41.558346, 32.549091, 40.760048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762222, 32.716171, 40.459187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837571, -0.440773, 0.322792,
		-0.196698, -0.794508, -0.574515,
		0.509691, 0.417704, -0.752156,
		41.915131, 32.841484, 40.233540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946125, 32.193344, 40.234932>,  <41.558346, 32.549091, 40.760048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946125, 32.193344, 40.234932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130905, 32.541550, 40.302826>,  <42.241776, 32.750473, 40.343563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130905, 32.541550, 40.302826>,  <41.946125, 32.193344, 40.234932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130905, 32.541550, 40.302826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821195, -0.492116, 0.288895,
		0.335017, 0.005932, -0.942194,
		0.461954, 0.870510, 0.169738,
		42.269493, 32.802704, 40.353748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643818, 32.226021, 39.864307>,  <41.946125, 32.193344, 40.234932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643818, 32.226021, 39.864307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652195, 32.472271, 40.179413>,  <42.657223, 32.620022, 40.368477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652195, 32.472271, 40.179413>,  <42.643818, 32.226021, 39.864307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652195, 32.472271, 40.179413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963750, -0.222054, 0.147910,
		0.265983, 0.756107, -0.597960,
		0.020944, 0.615626, 0.787761,
		42.658478, 32.656960, 40.415741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359943, 32.420918, 39.853294>,  <42.643818, 32.226021, 39.864307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359943, 32.420918, 39.853294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211990, 32.542522, 40.204468>,  <43.123219, 32.615486, 40.415173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211990, 32.542522, 40.204468>,  <43.359943, 32.420918, 39.853294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211990, 32.542522, 40.204468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884668, -0.173422, 0.432768,
		0.283818, 0.936752, -0.204802,
		-0.369879, 0.304009, 0.877934,
		43.101028, 32.633724, 40.467850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868328, 32.699692, 39.345516>,  <43.359943, 32.420918, 39.853294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868328, 32.699692, 39.345516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677792, 32.429161, 39.120773>,  <43.563469, 32.266842, 38.985928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677792, 32.429161, 39.120773>,  <43.868328, 32.699692, 39.345516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677792, 32.429161, 39.120773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455557, -0.356716, 0.815611,
		-0.752041, 0.644468, -0.138186,
		-0.476342, -0.676325, -0.561857,
		43.534889, 32.226265, 38.952217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154861, 32.735947, 39.167072>,  <43.868328, 32.699692, 39.345516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154861, 32.735947, 39.167072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247200, 32.346767, 39.163414>,  <43.302605, 32.113258, 39.161221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247200, 32.346767, 39.163414>,  <43.154861, 32.735947, 39.167072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247200, 32.346767, 39.163414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549187, -0.138052, 0.824218,
		-0.803182, -0.185247, -0.566199,
		0.230849, -0.972946, -0.009145,
		43.316456, 32.054882, 39.160671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568092, 32.192432, 38.896103>,  <43.154861, 32.735947, 39.167072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568092, 32.192432, 38.896103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836632, 32.127975, 39.185467>,  <42.997757, 32.089302, 39.359085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836632, 32.127975, 39.185467>,  <42.568092, 32.192432, 38.896103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836632, 32.127975, 39.185467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667997, 0.291249, 0.684802,
		-0.321045, -0.942977, 0.087886,
		0.671350, -0.161145, 0.723410,
		43.038036, 32.079632, 39.402489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009441, 32.711758, 38.783318>,  <42.568092, 32.192432, 38.896103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009441, 32.711758, 38.783318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898853, 32.767200, 39.163708>,  <41.832500, 32.800468, 39.391941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898853, 32.767200, 39.163708>,  <42.009441, 32.711758, 38.783318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898853, 32.767200, 39.163708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956157, 0.059765, -0.286690,
		-0.096574, -0.988542, 0.116012,
		-0.276472, 0.138613, 0.950973,
		41.815910, 32.808784, 39.449001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381283, 32.268143, 38.927044>,  <42.009441, 32.711758, 38.783318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381283, 32.268143, 38.927044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366573, 32.600403, 39.149277>,  <41.357746, 32.799759, 39.282616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366573, 32.600403, 39.149277>,  <41.381283, 32.268143, 38.927044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366573, 32.600403, 39.149277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979089, 0.081361, -0.186452,
		-0.200078, -0.550825, 0.810284,
		-0.036777, 0.830646, 0.555586,
		41.355541, 32.849598, 39.315952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717373, 32.188175, 39.418697>,  <41.381283, 32.268143, 38.927044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717373, 32.188175, 39.418697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842850, 32.567924, 39.425514>,  <40.918137, 32.795773, 39.429604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842850, 32.567924, 39.425514>,  <40.717373, 32.188175, 39.418697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842850, 32.567924, 39.425514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948007, 0.314151, -0.050909,
		-0.053686, -0.000188, 0.998558,
		0.313688, 0.949373, 0.017044,
		40.936954, 32.852737, 39.430626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113964, 32.500481, 39.659752>,  <40.717373, 32.188175, 39.418697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113964, 32.500481, 39.659752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341915, 32.822472, 39.593719>,  <40.478687, 33.015667, 39.554100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341915, 32.822472, 39.593719>,  <40.113964, 32.500481, 39.659752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341915, 32.822472, 39.593719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821310, 0.551554, -0.145733,
		-0.026262, 0.218630, 0.975454,
		0.569877, 0.804977, -0.165078,
		40.512878, 33.063965, 39.544197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979748, 33.073502, 40.173866>,  <40.113964, 32.500481, 39.659752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979748, 33.073502, 40.173866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116894, 33.213108, 39.825008>,  <40.199181, 33.296871, 39.615696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116894, 33.213108, 39.825008>,  <39.979748, 33.073502, 40.173866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116894, 33.213108, 39.825008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874511, 0.457624, -0.160657,
		0.343041, 0.817781, 0.462122,
		0.342861, 0.349019, -0.872142,
		40.219753, 33.317814, 39.563366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839123, 33.904339, 40.181728>,  <39.979748, 33.073502, 40.173866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839123, 33.904339, 40.181728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879181, 33.779491, 39.803829>,  <39.903217, 33.704582, 39.577087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879181, 33.779491, 39.803829>,  <39.839123, 33.904339, 40.181728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879181, 33.779491, 39.803829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857702, 0.454183, -0.240966,
		0.504299, 0.834447, -0.222216,
		0.100147, -0.312114, -0.944751,
		39.909225, 33.685856, 39.520405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815578, 34.484123, 39.750885>,  <39.839123, 33.904339, 40.181728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815578, 34.484123, 39.750885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689922, 34.176266, 39.528549>,  <39.614529, 33.991550, 39.395149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689922, 34.176266, 39.528549>,  <39.815578, 34.484123, 39.750885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689922, 34.176266, 39.528549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865992, 0.472239, -0.164463,
		0.389067, 0.429687, -0.814859,
		-0.314141, -0.769649, -0.555838,
		39.595680, 33.945370, 39.361797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625652, 34.716034, 38.961758>,  <39.815578, 34.484123, 39.750885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625652, 34.716034, 38.961758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431240, 34.408672, 39.128288>,  <39.314594, 34.224255, 39.228207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431240, 34.408672, 39.128288>,  <39.625652, 34.716034, 38.961758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431240, 34.408672, 39.128288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865904, 0.487867, -0.110435,
		-0.118255, -0.414176, -0.902482,
		-0.486031, -0.768404, 0.416329,
		39.285431, 34.178150, 39.253185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175198, 34.846081, 38.564548>,  <39.625652, 34.716034, 38.961758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175198, 34.846081, 38.564548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287800, 35.190540, 38.395229>,  <40.355362, 35.397217, 38.293636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287800, 35.190540, 38.395229>,  <40.175198, 34.846081, 38.564548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287800, 35.190540, 38.395229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627140, -0.168773, -0.760402,
		-0.726259, 0.479526, 0.492548,
		0.281504, 0.861145, -0.423303,
		40.372250, 35.448883, 38.268238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648342, 35.162270, 38.360035>,  <40.175198, 34.846081, 38.564548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648342, 35.162270, 38.360035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931274, 35.295135, 38.110443>,  <40.101036, 35.374855, 37.960690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931274, 35.295135, 38.110443>,  <39.648342, 35.162270, 38.360035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931274, 35.295135, 38.110443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614234, -0.148064, -0.775109,
		-0.349852, 0.931527, 0.099296,
		0.707333, 0.332164, -0.623976,
		40.143475, 35.394783, 37.923248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286873, 35.513302, 37.835823>,  <39.648342, 35.162270, 38.360035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286873, 35.513302, 37.835823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640327, 35.461147, 37.655960>,  <39.852402, 35.429855, 37.548042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640327, 35.461147, 37.655960>,  <39.286873, 35.513302, 37.835823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640327, 35.461147, 37.655960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466927, -0.175328, -0.866741,
		0.034175, 0.975838, -0.215807,
		0.883635, -0.130387, -0.449653,
		39.905418, 35.422031, 37.521065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420391, 36.004654, 37.158855>,  <39.286873, 35.513302, 37.835823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420391, 36.004654, 37.158855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577374, 35.637547, 37.183090>,  <39.671562, 35.417282, 37.197632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577374, 35.637547, 37.183090>,  <39.420391, 36.004654, 37.158855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577374, 35.637547, 37.183090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588521, -0.301194, -0.750284,
		0.706838, 0.258799, -0.658334,
		0.392458, -0.917773, 0.060587,
		39.695110, 35.362213, 37.201267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576824, 35.827782, 36.448486>,  <39.420391, 36.004654, 37.158855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576824, 35.827782, 36.448486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552807, 35.510742, 36.691200>,  <39.538395, 35.320518, 36.836830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552807, 35.510742, 36.691200>,  <39.576824, 35.827782, 36.448486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552807, 35.510742, 36.691200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685277, -0.409270, -0.602407,
		0.725803, -0.451987, -0.518573,
		-0.060043, -0.792595, 0.606785,
		39.534794, 35.272964, 36.873238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667259, 36.341888, 35.892078>,  <39.576824, 35.827782, 36.448486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667259, 36.341888, 35.892078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507843, 35.983383, 35.814232>,  <39.412193, 35.768280, 35.767525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507843, 35.983383, 35.814232>,  <39.667259, 36.341888, 35.892078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507843, 35.983383, 35.814232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774275, -0.215054, -0.595189,
		0.491596, -0.387888, 0.779664,
		-0.398537, -0.896267, -0.194613,
		39.388283, 35.714504, 35.755848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158607, 35.793434, 35.978470>,  <39.667259, 36.341888, 35.892078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158607, 35.793434, 35.978470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891895, 35.659096, 35.712353>,  <39.731869, 35.578495, 35.552681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891895, 35.659096, 35.712353>,  <40.158607, 35.793434, 35.978470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891895, 35.659096, 35.712353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739484, -0.187245, -0.646608,
		0.092587, -0.923118, 0.373203,
		-0.666777, -0.335845, -0.665294,
		39.691864, 35.558342, 35.512764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159203, 35.061760, 35.883690>,  <40.158607, 35.793434, 35.978470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159203, 35.061760, 35.883690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041283, 35.238056, 35.544552>,  <39.970531, 35.343834, 35.341068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041283, 35.238056, 35.544552>,  <40.159203, 35.061760, 35.883690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041283, 35.238056, 35.544552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771965, -0.413084, -0.483148,
		-0.563174, -0.796939, -0.218457,
		-0.294799, 0.440737, -0.847847,
		39.952843, 35.370277, 35.290199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101036, 34.493053, 35.352264>,  <40.159203, 35.061760, 35.883690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101036, 34.493053, 35.352264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204510, 34.856728, 35.221752>,  <40.266594, 35.074932, 35.143444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204510, 34.856728, 35.221752>,  <40.101036, 34.493053, 35.352264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204510, 34.856728, 35.221752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848259, -0.375399, -0.373540,
		-0.462103, -0.180139, -0.868338,
		0.258684, 0.909189, -0.326278,
		40.282116, 35.129486, 35.123867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275852, 34.449959, 34.661457>,  <40.101036, 34.493053, 35.352264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275852, 34.449959, 34.661457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508854, 34.744720, 34.798660>,  <40.648655, 34.921577, 34.880981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508854, 34.744720, 34.798660>,  <40.275852, 34.449959, 34.661457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508854, 34.744720, 34.798660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812692, -0.535624, -0.229431,
		0.014657, 0.412409, -0.910881,
		0.582509, 0.736903, 0.343012,
		40.683605, 34.965790, 34.901566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802864, 34.465061, 34.247471>,  <40.275852, 34.449959, 34.661457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802864, 34.465061, 34.247471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946293, 34.652679, 34.570312>,  <41.032352, 34.765251, 34.764019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946293, 34.652679, 34.570312>,  <40.802864, 34.465061, 34.247471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946293, 34.652679, 34.570312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818806, -0.573253, -0.030628,
		0.448310, 0.671844, -0.589613,
		0.358575, 0.469048, 0.807105,
		41.053864, 34.793392, 34.812443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500561, 34.789436, 34.074245>,  <40.802864, 34.465061, 34.247471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500561, 34.789436, 34.074245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425861, 34.658298, 34.444683>,  <41.381042, 34.579617, 34.666946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425861, 34.658298, 34.444683>,  <41.500561, 34.789436, 34.074245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425861, 34.658298, 34.444683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838196, -0.544847, -0.023851,
		0.512397, 0.771790, 0.376549,
		-0.186753, -0.327843, 0.926090,
		41.369835, 34.559944, 34.722511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158302, 34.801235, 34.578327>,  <41.500561, 34.789436, 34.074245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158302, 34.801235, 34.578327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885109, 34.519669, 34.656326>,  <41.721191, 34.350727, 34.703125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885109, 34.519669, 34.656326>,  <42.158302, 34.801235, 34.578327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885109, 34.519669, 34.656326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706162, -0.704575, -0.070069,
		0.186717, 0.089847, 0.978296,
		-0.682988, -0.703919, 0.195002,
		41.680214, 34.308495, 34.714828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414883, 34.403652, 35.122768>,  <42.158302, 34.801235, 34.578327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414883, 34.403652, 35.122768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158981, 34.198662, 34.893650>,  <42.005440, 34.075668, 34.756180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158981, 34.198662, 34.893650>,  <42.414883, 34.403652, 35.122768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158981, 34.198662, 34.893650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695664, -0.702942, -0.148068,
		-0.326759, -0.493198, 0.806216,
		-0.639750, -0.512473, -0.572792,
		41.967056, 34.044918, 34.721813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220036, 33.811897, 35.511818>,  <42.414883, 34.403652, 35.122768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220036, 33.811897, 35.511818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205597, 33.785126, 35.112976>,  <42.196934, 33.769062, 34.873672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205597, 33.785126, 35.112976>,  <42.220036, 33.811897, 35.511818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205597, 33.785126, 35.112976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765191, -0.643617, 0.015500,
		-0.642791, -0.762415, 0.074451,
		-0.036100, -0.066932, -0.997104,
		42.194767, 33.765045, 34.813847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613781, 33.243458, 35.489231>,  <42.220036, 33.811897, 35.511818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613781, 33.243458, 35.489231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571163, 33.357563, 35.108227>,  <42.545593, 33.426025, 34.879623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571163, 33.357563, 35.108227>,  <42.613781, 33.243458, 35.489231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571163, 33.357563, 35.108227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630228, -0.721577, -0.286600,
		-0.769065, -0.630834, -0.102901,
		-0.106546, 0.285265, -0.952508,
		42.539200, 33.443142, 34.822475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480148, 32.661049, 34.969589>,  <42.613781, 33.243458, 35.489231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480148, 32.661049, 34.969589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670982, 32.959881, 34.784435>,  <42.785484, 33.139179, 34.673344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670982, 32.959881, 34.784435>,  <42.480148, 32.661049, 34.969589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670982, 32.959881, 34.784435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796670, -0.590013, -0.131150,
		-0.371087, -0.306197, -0.876663,
		0.477085, 0.747079, -0.462884,
		42.814110, 33.184006, 34.645569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899540, 32.622601, 34.490273>,  <42.480148, 32.661049, 34.969589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899540, 32.622601, 34.490273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202862, 32.882019, 34.516697>,  <43.384853, 33.037670, 34.532551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202862, 32.882019, 34.516697>,  <42.899540, 32.622601, 34.490273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202862, 32.882019, 34.516697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647464, -0.737462, -0.192198,
		-0.075935, 0.188514, -0.979130,
		0.758304, 0.648546, 0.066057,
		43.430351, 33.076584, 34.536514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248928, 32.569641, 33.904690>,  <42.899540, 32.622601, 34.490273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248928, 32.569641, 33.904690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496990, 32.718452, 34.180950>,  <43.645828, 32.807739, 34.346706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496990, 32.718452, 34.180950>,  <43.248928, 32.569641, 33.904690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496990, 32.718452, 34.180950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668525, -0.711282, -0.217148,
		0.410461, 0.596383, -0.689818,
		0.620158, 0.372029, 0.690650,
		43.683037, 32.830063, 34.388145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891487, 32.659805, 33.551117>,  <43.248928, 32.569641, 33.904690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891487, 32.659805, 33.551117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975029, 32.636345, 33.941593>,  <44.025154, 32.622269, 34.175877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975029, 32.636345, 33.941593>,  <43.891487, 32.659805, 33.551117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975029, 32.636345, 33.941593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685335, -0.703307, -0.188879,
		0.697636, 0.708463, -0.106694,
		0.208853, -0.058647, 0.976187,
		44.037685, 32.618752, 34.234447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601700, 32.737118, 33.625130>,  <43.891487, 32.659805, 33.551117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601700, 32.737118, 33.625130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474358, 32.510899, 33.929447>,  <44.397953, 32.375168, 34.112038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474358, 32.510899, 33.929447>,  <44.601700, 32.737118, 33.625130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474358, 32.510899, 33.929447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617654, -0.732562, -0.286104,
		0.719135, 0.378825, 0.582526,
		-0.318353, -0.565547, 0.760794,
		44.378853, 32.341236, 34.157684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098366, 32.235371, 33.484901>,  <44.601700, 32.737118, 33.625130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098366, 32.235371, 33.484901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902496, 32.109310, 33.810085>,  <44.784977, 32.033672, 34.005196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902496, 32.109310, 33.810085>,  <45.098366, 32.235371, 33.484901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902496, 32.109310, 33.810085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555658, -0.831318, 0.012418,
		0.671912, 0.457806, 0.582192,
		-0.489672, -0.315156, 0.812957,
		44.755596, 32.014763, 34.053974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633621, 31.982609, 33.931511>,  <45.098366, 32.235371, 33.484901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633621, 31.982609, 33.931511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301205, 31.798176, 34.055946>,  <45.101753, 31.687517, 34.130608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301205, 31.798176, 34.055946>,  <45.633621, 31.982609, 33.931511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301205, 31.798176, 34.055946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503476, -0.861297, 0.068407,
		0.236399, 0.213475, 0.947916,
		-0.831040, -0.461081, 0.311089,
		45.051891, 31.659851, 34.149273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000778, 31.314287, 33.812477>,  <45.633621, 31.982609, 33.931511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000778, 31.314287, 33.812477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716972, 31.201384, 34.070755>,  <45.546688, 31.133640, 34.225719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716972, 31.201384, 34.070755>,  <46.000778, 31.314287, 33.812477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716972, 31.201384, 34.070755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288891, 0.719236, 0.631856,
		-0.642752, 0.634846, -0.428767,
		-0.709515, -0.282260, 0.645691,
		45.504116, 31.116705, 34.264462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148056, 31.382925, 33.112820>,  <46.000778, 31.314287, 33.812477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148056, 31.382925, 33.112820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812634, 31.599091, 33.140484>,  <45.611382, 31.728790, 33.157082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812634, 31.599091, 33.140484>,  <46.148056, 31.382925, 33.112820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812634, 31.599091, 33.140484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543414, -0.820508, -0.177390,
		-0.039113, -0.186336, 0.981707,
		-0.838553, 0.540412, 0.069165,
		45.561069, 31.761213, 33.161232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055847, 32.061394, 33.295223>,  <46.148056, 31.382925, 33.112820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055847, 32.061394, 33.295223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073807, 32.418282, 33.115475>,  <46.084583, 32.632412, 33.007626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073807, 32.418282, 33.115475>,  <46.055847, 32.061394, 33.295223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073807, 32.418282, 33.115475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773313, 0.253727, 0.581042,
		0.632432, -0.373596, -0.678568,
		0.044904, 0.892215, -0.449372,
		46.087276, 32.685947, 32.980663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749008, 32.273472, 32.974880>,  <46.055847, 32.061394, 33.295223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749008, 32.273472, 32.974880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554924, 32.617233, 33.039375>,  <46.438473, 32.823490, 33.078072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554924, 32.617233, 33.039375>,  <46.749008, 32.273472, 32.974880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554924, 32.617233, 33.039375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787575, 0.349434, 0.507563,
		0.379861, 0.373260, -0.846394,
		-0.485212, 0.859402, 0.161234,
		46.409359, 32.875053, 33.087746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.270733, 32.963123, 32.697063>,  <46.749008, 32.273472, 32.974880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.270733, 32.963123, 32.697063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998245, 33.050350, 32.976601>,  <46.834751, 33.102688, 33.144321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998245, 33.050350, 32.976601>,  <47.270733, 32.963123, 32.697063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.998245, 33.050350, 32.976601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678005, 0.547993, 0.489911,
		-0.276127, 0.807557, -0.521157,
		-0.681222, 0.218070, 0.698843,
		46.793877, 33.115772, 33.186253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.465580, 33.631554, 32.844376>,  <47.270733, 32.963123, 32.697063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.465580, 33.631554, 32.844376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.224121, 33.490715, 33.130493>,  <47.079247, 33.406212, 33.302162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.224121, 33.490715, 33.130493>,  <47.465580, 33.631554, 32.844376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.224121, 33.490715, 33.130493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550075, 0.465496, 0.693348,
		-0.577090, 0.811999, -0.087314,
		-0.603643, -0.352095, 0.715293,
		47.043030, 33.385086, 33.345081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350315, 34.175175, 33.301414>,  <47.465580, 33.631554, 32.844376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.350315, 34.175175, 33.301414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310421, 33.841812, 33.518852>,  <47.286484, 33.641796, 33.649315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310421, 33.841812, 33.518852>,  <47.350315, 34.175175, 33.301414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.310421, 33.841812, 33.518852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635013, 0.367283, 0.679604,
		-0.766036, 0.412970, 0.492590,
		-0.099736, -0.833402, 0.543593,
		47.280499, 33.591793, 33.681931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.748268, 34.392063, 33.950584>,  <47.350315, 34.175175, 33.301414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.748268, 34.392063, 33.950584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610527, 34.033279, 34.061501>,  <47.527882, 33.818008, 34.128052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610527, 34.033279, 34.061501>,  <47.748268, 34.392063, 33.950584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610527, 34.033279, 34.061501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473224, 0.089267, 0.876408,
		-0.810853, 0.433012, 0.393722,
		-0.344349, -0.896957, 0.277294,
		47.507221, 33.764191, 34.144688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.527588, 34.912964, 34.508980>,  <47.748268, 34.392063, 33.950584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.527588, 34.912964, 34.508980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365063, 35.026302, 34.856457>,  <47.267548, 35.094307, 35.064941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365063, 35.026302, 34.856457>,  <47.527588, 34.912964, 34.508980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365063, 35.026302, 34.856457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668834, -0.555515, 0.494028,
		0.622553, 0.781740, 0.036200,
		-0.406311, 0.283347, 0.868692,
		47.243168, 35.111305, 35.117065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.898567, 35.226551, 35.058754>,  <47.527588, 34.912964, 34.508980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.898567, 35.226551, 35.058754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708225, 34.904922, 35.201324>,  <47.594021, 34.711945, 35.286869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708225, 34.904922, 35.201324>,  <47.898567, 35.226551, 35.058754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708225, 34.904922, 35.201324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872140, -0.483780, 0.072993,
		0.113742, 0.345591, 0.931466,
		-0.475851, -0.804067, 0.356430,
		47.565472, 34.663704, 35.308254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.179688, 28.502974, 31.364067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.924721, 28.224632, 31.231712>,  <38.771740, 28.057629, 31.152300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.924721, 28.224632, 31.231712>,  <39.179688, 28.502974, 31.364067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924721, 28.224632, 31.231712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625283, 0.216214, 0.749849,
		-0.450240, 0.684867, -0.572923,
		-0.637421, -0.695851, -0.330887,
		38.733494, 28.015877, 31.132446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460297, 28.866205, 31.266174>,  <39.179688, 28.502974, 31.364067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460297, 28.866205, 31.266174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400940, 28.472626, 31.305817>,  <38.365326, 28.236479, 31.329603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400940, 28.472626, 31.305817>,  <38.460297, 28.866205, 31.266174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400940, 28.472626, 31.305817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699234, 0.175266, 0.693076,
		-0.699322, 0.033550, -0.714019,
		-0.148396, -0.983949, 0.099108,
		38.356422, 28.177441, 31.335548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796783, 28.853151, 31.220381>,  <38.460297, 28.866205, 31.266174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796783, 28.853151, 31.220381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.916515, 28.513554, 31.394558>,  <37.988354, 28.309795, 31.499063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.916515, 28.513554, 31.394558>,  <37.796783, 28.853151, 31.220381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916515, 28.513554, 31.394558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782416, 0.042793, 0.621284,
		-0.546101, -0.526665, -0.651458,
		0.299331, -0.848995, 0.435441,
		38.006313, 28.258856, 31.525190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287296, 28.308989, 30.942995>,  <37.796783, 28.853151, 31.220381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287296, 28.308989, 30.942995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.466808, 28.233431, 31.292376>,  <37.574516, 28.188097, 31.502005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.466808, 28.233431, 31.292376>,  <37.287296, 28.308989, 30.942995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466808, 28.233431, 31.292376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881616, 0.066230, 0.467298,
		-0.146119, -0.979761, -0.136809,
		0.448779, -0.188894, 0.873451,
		37.601440, 28.176764, 31.554411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828999, 27.857904, 31.314852>,  <37.287296, 28.308989, 30.942995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828999, 27.857904, 31.314852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085739, 27.971413, 31.599808>,  <37.239784, 28.039518, 31.770782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085739, 27.971413, 31.599808>,  <36.828999, 27.857904, 31.314852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085739, 27.971413, 31.599808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766123, 0.277180, 0.579851,
		-0.032917, -0.917958, 0.395310,
		0.641850, 0.283770, 0.712393,
		37.278294, 28.056543, 31.813526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551632, 27.568903, 31.867884>,  <36.828999, 27.857904, 31.314852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551632, 27.568903, 31.867884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780766, 27.874432, 31.986841>,  <36.918243, 28.057749, 32.058216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780766, 27.874432, 31.986841>,  <36.551632, 27.568903, 31.867884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780766, 27.874432, 31.986841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673543, 0.231865, 0.701839,
		0.467125, -0.602341, 0.647286,
		0.572829, 0.763822, 0.297393,
		36.952614, 28.103579, 32.076057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427311, 27.588514, 32.661068>,  <36.551632, 27.568903, 31.867884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427311, 27.588514, 32.661068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581055, 27.946362, 32.569920>,  <36.673302, 28.161070, 32.515232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581055, 27.946362, 32.569920>,  <36.427311, 27.588514, 32.661068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581055, 27.946362, 32.569920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522110, 0.414213, 0.745539,
		0.761361, -0.167580, 0.626296,
		0.384358, 0.894620, -0.227870,
		36.696362, 28.214748, 32.501560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424282, 27.840902, 33.380058>,  <36.427311, 27.588514, 32.661068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424282, 27.840902, 33.380058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497650, 28.161730, 33.152710>,  <36.541672, 28.354227, 33.016300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497650, 28.161730, 33.152710>,  <36.424282, 27.840902, 33.380058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497650, 28.161730, 33.152710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340194, 0.594243, 0.728796,
		0.922294, 0.059681, 0.381854,
		0.183419, 0.802069, -0.568369,
		36.552677, 28.402349, 32.982201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673824, 28.392242, 33.843956>,  <36.424282, 27.840902, 33.380058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673824, 28.392242, 33.843956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519165, 28.560595, 33.515720>,  <36.426369, 28.661606, 33.318779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519165, 28.560595, 33.515720>,  <36.673824, 28.392242, 33.843956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519165, 28.560595, 33.515720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559271, 0.600492, 0.571512,
		0.733293, 0.679905, 0.003205,
		-0.386649, 0.420878, -0.820588,
		36.403172, 28.686857, 33.269543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678177, 29.084330, 33.993065>,  <36.673824, 28.392242, 33.843956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678177, 29.084330, 33.993065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394638, 29.039480, 33.714508>,  <36.224514, 29.012571, 33.547375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394638, 29.039480, 33.714508>,  <36.678177, 29.084330, 33.993065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394638, 29.039480, 33.714508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561992, 0.686413, 0.461522,
		0.426268, 0.718516, -0.549572,
		-0.708845, -0.112123, -0.696396,
		36.181984, 29.005844, 33.505589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474739, 29.749472, 33.819798>,  <36.678177, 29.084330, 33.993065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474739, 29.749472, 33.819798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165318, 29.513563, 33.727024>,  <35.979664, 29.372019, 33.671360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165318, 29.513563, 33.727024>,  <36.474739, 29.749472, 33.819798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165318, 29.513563, 33.727024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617835, 0.620359, 0.483151,
		-0.141067, 0.517036, -0.844259,
		-0.773550, -0.589769, -0.231931,
		35.933254, 29.336632, 33.657444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043217, 30.215385, 33.521282>,  <36.474739, 29.749472, 33.819798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043217, 30.215385, 33.521282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.838669, 29.891279, 33.635807>,  <35.715942, 29.696815, 33.704521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.838669, 29.891279, 33.635807>,  <36.043217, 30.215385, 33.521282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838669, 29.891279, 33.635807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723150, 0.585727, 0.366030,
		-0.464281, -0.019869, -0.885465,
		-0.511368, -0.810265, 0.286310,
		35.685257, 29.648199, 33.721699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298729, 30.329403, 33.331245>,  <36.043217, 30.215385, 33.521282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298729, 30.329403, 33.331245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270920, 30.024658, 33.588844>,  <35.254234, 29.841812, 33.743404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270920, 30.024658, 33.588844>,  <35.298729, 30.329403, 33.331245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270920, 30.024658, 33.588844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852724, 0.380414, 0.357977,
		-0.517714, -0.524266, -0.676104,
		-0.069524, -0.761860, 0.644000,
		35.250061, 29.796101, 33.782043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475487, 30.119165, 33.481491>,  <35.298729, 30.329403, 33.331245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475487, 30.119165, 33.481491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.689770, 29.973015, 33.785995>,  <34.818340, 29.885324, 33.968700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.689770, 29.973015, 33.785995>,  <34.475487, 30.119165, 33.481491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689770, 29.973015, 33.785995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660389, 0.380537, 0.647362,
		-0.526220, -0.849524, -0.037436,
		0.535704, -0.365377, 0.761263,
		34.850479, 29.863401, 34.014374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024868, 29.840065, 33.847519>,  <34.475487, 30.119165, 33.481491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024868, 29.840065, 33.847519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.333492, 29.839216, 34.101982>,  <34.518665, 29.838707, 34.254658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.333492, 29.839216, 34.101982>,  <34.024868, 29.840065, 33.847519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333492, 29.839216, 34.101982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574723, 0.426418, 0.698470,
		-0.272750, -0.904524, 0.327787,
		0.771557, -0.002121, 0.636156,
		34.564960, 29.838579, 34.292828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740292, 29.655369, 34.419430>,  <34.024868, 29.840065, 33.847519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740292, 29.655369, 34.419430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079208, 29.848099, 34.508820>,  <34.282558, 29.963736, 34.562454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079208, 29.848099, 34.508820>,  <33.740292, 29.655369, 34.419430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079208, 29.848099, 34.508820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488812, 0.542834, 0.682930,
		0.207743, -0.687879, 0.695461,
		0.847293, 0.481823, 0.223474,
		34.333397, 29.992645, 34.575863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825607, 29.520781, 35.112129>,  <33.740292, 29.655369, 34.419430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825607, 29.520781, 35.112129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.004570, 29.864178, 35.011875>,  <34.111946, 30.070217, 34.951721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.004570, 29.864178, 35.011875>,  <33.825607, 29.520781, 35.112129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004570, 29.864178, 35.011875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599355, 0.495824, 0.628436,
		0.663780, -0.130944, 0.736376,
		0.447403, 0.858494, -0.250635,
		34.138790, 30.121725, 34.936684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054512, 29.875467, 35.836330>,  <33.825607, 29.520781, 35.112129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054512, 29.875467, 35.836330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.062641, 30.144550, 35.540478>,  <34.067520, 30.306000, 35.362965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.062641, 30.144550, 35.540478>,  <34.054512, 29.875467, 35.836330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062641, 30.144550, 35.540478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403968, 0.682232, 0.609400,
		0.914547, 0.286400, 0.285620,
		0.020327, 0.672706, -0.739630,
		34.068741, 30.346363, 35.318588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240829, 30.474789, 36.149380>,  <34.054512, 29.875467, 35.836330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240829, 30.474789, 36.149380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.072502, 30.617006, 35.815556>,  <33.971504, 30.702337, 35.615261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.072502, 30.617006, 35.815556>,  <34.240829, 30.474789, 36.149380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072502, 30.617006, 35.815556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342016, 0.789915, 0.508980,
		0.840200, 0.499624, -0.210810,
		-0.420820, 0.355544, -0.834565,
		33.946255, 30.723669, 35.565186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464592, 31.168688, 36.189819>,  <34.240829, 30.474789, 36.149380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464592, 31.168688, 36.189819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.163918, 31.201708, 35.928085>,  <33.983513, 31.221519, 35.771046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.163918, 31.201708, 35.928085>,  <34.464592, 31.168688, 36.189819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163918, 31.201708, 35.928085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389284, 0.745338, 0.541230,
		0.532377, 0.661557, -0.528126,
		-0.751687, 0.082548, -0.654334,
		33.938412, 31.226473, 35.731785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413136, 31.856230, 36.134338>,  <34.464592, 31.168688, 36.189819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413136, 31.856230, 36.134338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.063667, 31.690887, 36.031708>,  <33.853985, 31.591682, 35.970131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.063667, 31.690887, 36.031708>,  <34.413136, 31.856230, 36.134338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063667, 31.690887, 36.031708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475925, 0.616721, 0.627017,
		-0.100948, 0.669918, -0.735540,
		-0.873673, -0.413358, -0.256574,
		33.801567, 31.566879, 35.954735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981651, 32.132362, 36.500538>,  <34.413136, 31.856230, 36.134338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981651, 32.132362, 36.500538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796410, 32.476048, 36.413548>,  <34.685265, 32.682259, 36.361355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796410, 32.476048, 36.413548>,  <34.981651, 32.132362, 36.500538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796410, 32.476048, 36.413548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869125, 0.392168, -0.301374,
		-0.173657, -0.328579, -0.928374,
		-0.463104, 0.859209, -0.217473,
		34.657478, 32.733810, 36.348305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027618, 32.244061, 35.770588>,  <34.981651, 32.132362, 36.500538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027618, 32.244061, 35.770588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.945736, 32.610374, 35.908829>,  <34.896606, 32.830162, 35.991772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.945736, 32.610374, 35.908829>,  <35.027618, 32.244061, 35.770588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945736, 32.610374, 35.908829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805602, 0.358175, -0.471928,
		-0.555968, 0.181809, -0.811077,
		-0.204706, 0.915782, 0.345599,
		34.884323, 32.885109, 36.012508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137299, 32.731590, 35.153244>,  <35.027618, 32.244061, 35.770588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137299, 32.731590, 35.153244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.202648, 32.955669, 35.478081>,  <35.241859, 33.090118, 35.672981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.202648, 32.955669, 35.478081>,  <35.137299, 32.731590, 35.153244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202648, 32.955669, 35.478081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833603, 0.361864, -0.417325,
		-0.527650, 0.745138, -0.407865,
		0.163373, 0.560199, 0.812087,
		35.251659, 33.123730, 35.721706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406429, 33.353947, 34.984768>,  <35.137299, 32.731590, 35.153244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406429, 33.353947, 34.984768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534664, 33.301067, 35.359947>,  <35.611607, 33.269341, 35.585056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534664, 33.301067, 35.359947>,  <35.406429, 33.353947, 34.984768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534664, 33.301067, 35.359947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945376, 0.106385, -0.308135,
		-0.059049, 0.985498, 0.159082,
		0.320590, -0.132198, 0.937948,
		35.630840, 33.261410, 35.641331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012157, 33.639965, 34.945206>,  <35.406429, 33.353947, 34.984768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012157, 33.639965, 34.945206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047726, 33.463799, 35.302555>,  <36.069069, 33.358097, 35.516964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047726, 33.463799, 35.302555>,  <36.012157, 33.639965, 34.945206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047726, 33.463799, 35.302555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995934, 0.026356, -0.086138,
		0.014391, 0.897405, 0.440973,
		0.088923, -0.440420, 0.893377,
		36.074402, 33.331673, 35.570568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485580, 34.078186, 35.429790>,  <36.012157, 33.639965, 34.945206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485580, 34.078186, 35.429790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.476933, 33.691956, 35.533470>,  <36.471745, 33.460217, 35.595680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.476933, 33.691956, 35.533470>,  <36.485580, 34.078186, 35.429790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476933, 33.691956, 35.533470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999736, -0.018854, 0.013135,
		-0.007796, 0.259419, 0.965733,
		-0.021615, -0.965581, 0.259204,
		36.470448, 33.402283, 35.611233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142830, 33.999306, 35.729836>,  <36.485580, 34.078186, 35.429790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142830, 33.999306, 35.729836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997211, 33.627815, 35.701736>,  <36.909840, 33.404919, 35.684875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997211, 33.627815, 35.701736>,  <37.142830, 33.999306, 35.729836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997211, 33.627815, 35.701736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928598, -0.356099, -0.104404,
		0.071948, -0.103239, 0.992051,
		-0.364047, -0.928728, -0.070247,
		36.887997, 33.349197, 35.680664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773651, 33.596184, 35.948967>,  <37.142830, 33.999306, 35.729836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773651, 33.596184, 35.948967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532784, 33.369789, 35.723740>,  <37.388264, 33.233952, 35.588604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532784, 33.369789, 35.723740>,  <37.773651, 33.596184, 35.948967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532784, 33.369789, 35.723740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793318, -0.345016, -0.501608,
		0.089639, -0.748744, 0.656770,
		-0.602173, -0.565991, -0.563065,
		37.352131, 33.199993, 35.554821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110771, 32.871593, 36.021389>,  <37.773651, 33.596184, 35.948967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110771, 32.871593, 36.021389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878307, 32.913300, 35.698555>,  <37.738831, 32.938324, 35.504856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878307, 32.913300, 35.698555>,  <38.110771, 32.871593, 36.021389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878307, 32.913300, 35.698555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743558, -0.335015, -0.578693,
		-0.330707, -0.936429, 0.117191,
		-0.581166, 0.104240, -0.807081,
		37.703960, 32.944580, 35.456429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182606, 32.231541, 35.701084>,  <38.110771, 32.871593, 36.021389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182606, 32.231541, 35.701084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051960, 32.479012, 35.415268>,  <37.973572, 32.627495, 35.243778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051960, 32.479012, 35.415268>,  <38.182606, 32.231541, 35.701084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051960, 32.479012, 35.415268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680134, -0.371113, -0.632213,
		-0.656309, -0.692470, -0.299573,
		-0.326613, 0.618677, -0.714537,
		37.953976, 32.664616, 35.200909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152214, 31.878897, 35.157402>,  <38.182606, 32.231541, 35.701084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152214, 31.878897, 35.157402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.143478, 32.231586, 34.968899>,  <38.138237, 32.443199, 34.855797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.143478, 32.231586, 34.968899>,  <38.152214, 31.878897, 35.157402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143478, 32.231586, 34.968899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600387, -0.365341, -0.711379,
		-0.799411, -0.298471, -0.521399,
		-0.021837, 0.881726, -0.471256,
		38.136929, 32.496105, 34.827522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894066, 31.758955, 34.498562>,  <38.152214, 31.878897, 35.157402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894066, 31.758955, 34.498562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073273, 32.114426, 34.459511>,  <38.180798, 32.327709, 34.436081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073273, 32.114426, 34.459511>,  <37.894066, 31.758955, 34.498562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073273, 32.114426, 34.459511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461702, -0.323501, -0.825941,
		-0.765577, 0.324963, -0.555239,
		0.448021, 0.888676, -0.097629,
		38.207680, 32.381027, 34.430222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784496, 32.027592, 33.828411>,  <37.894066, 31.758955, 34.498562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784496, 32.027592, 33.828411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120682, 32.223637, 33.920849>,  <38.322395, 32.341263, 33.976311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120682, 32.223637, 33.920849>,  <37.784496, 32.027592, 33.828411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120682, 32.223637, 33.920849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364973, -0.196801, -0.909980,
		-0.400514, 0.849151, -0.344283,
		0.840466, 0.490114, 0.231096,
		38.372822, 32.370670, 33.990177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853317, 32.391895, 33.203609>,  <37.784496, 32.027592, 33.828411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853317, 32.391895, 33.203609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198196, 32.380894, 33.405941>,  <38.405125, 32.374294, 33.527340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198196, 32.380894, 33.405941>,  <37.853317, 32.391895, 33.203609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198196, 32.380894, 33.405941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422357, -0.512297, -0.747774,
		0.279698, 0.858368, -0.430086,
		0.862197, -0.027501, 0.505826,
		38.456856, 32.372643, 33.557690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347580, 32.649776, 32.731281>,  <37.853317, 32.391895, 33.203609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347580, 32.649776, 32.731281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525024, 32.437038, 33.019821>,  <38.631493, 32.309395, 33.192947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525024, 32.437038, 33.019821>,  <38.347580, 32.649776, 32.731281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525024, 32.437038, 33.019821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583487, -0.439542, -0.682895,
		0.680260, 0.723840, 0.115339,
		0.443610, -0.531844, 0.721354,
		38.658108, 32.277485, 33.236229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064087, 32.681919, 32.461796>,  <38.347580, 32.649776, 32.731281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064087, 32.681919, 32.461796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.054691, 32.379910, 32.723907>,  <39.049053, 32.198704, 32.881176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.054691, 32.379910, 32.723907>,  <39.064087, 32.681919, 32.461796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054691, 32.379910, 32.723907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682257, -0.491205, -0.541520,
		0.730735, 0.434349, 0.526657,
		-0.023488, -0.755023, 0.655278,
		39.047646, 32.153404, 32.920490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792839, 32.475723, 32.649506>,  <39.064087, 32.681919, 32.461796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792839, 32.475723, 32.649506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577473, 32.158813, 32.764332>,  <39.448254, 31.968666, 32.833229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577473, 32.158813, 32.764332>,  <39.792839, 32.475723, 32.649506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577473, 32.158813, 32.764332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646421, -0.606856, -0.462457,
		0.540602, -0.063427, 0.838884,
		-0.538414, -0.792277, 0.287067,
		39.415947, 31.921131, 32.850452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284203, 31.964838, 32.615788>,  <39.792839, 32.475723, 32.649506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284203, 31.964838, 32.615788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.933361, 31.773802, 32.636189>,  <39.722858, 31.659180, 32.648430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.933361, 31.773802, 32.636189>,  <40.284203, 31.964838, 32.615788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933361, 31.773802, 32.636189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345394, -0.700954, -0.623992,
		0.333764, -0.529688, 0.779765,
		-0.877100, -0.477592, 0.051002,
		39.670231, 31.630524, 32.651489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371326, 31.274506, 32.838882>,  <40.284203, 31.964838, 32.615788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371326, 31.274506, 32.838882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.020596, 31.259403, 32.647152>,  <39.810158, 31.250341, 32.532112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.020596, 31.259403, 32.647152>,  <40.371326, 31.274506, 32.838882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020596, 31.259403, 32.647152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339818, -0.753937, -0.562230,
		-0.340155, -0.655860, 0.673901,
		-0.876823, -0.037758, -0.479329,
		39.757549, 31.248075, 32.503353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.239151, 30.590923, 32.682602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.988190, 30.766743, 32.425491>,  <39.837612, 30.872234, 32.271225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.988190, 30.766743, 32.425491>,  <40.239151, 30.590923, 32.682602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988190, 30.766743, 32.425491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166520, -0.730623, -0.662164,
		-0.760682, -0.522478, 0.385201,
		-0.627403, 0.439552, -0.642775,
		39.799969, 30.898607, 32.232658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820129, 30.064707, 32.469147>,  <40.239151, 30.590923, 32.682602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820129, 30.064707, 32.469147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.793610, 30.345749, 32.185753>,  <39.777699, 30.514374, 32.015717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.793610, 30.345749, 32.185753>,  <39.820129, 30.064707, 32.469147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793610, 30.345749, 32.185753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121892, -0.699025, -0.704633,
		-0.990326, -0.133078, -0.039294,
		-0.066303, 0.702606, -0.708484,
		39.773720, 30.556530, 31.973207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438583, 29.812611, 31.838324>,  <39.820129, 30.064707, 32.469147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438583, 29.812611, 31.838324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.651218, 30.124310, 31.705545>,  <39.778801, 30.311329, 31.625877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.651218, 30.124310, 31.705545>,  <39.438583, 29.812611, 31.838324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651218, 30.124310, 31.705545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205625, -0.498912, -0.841905,
		-0.821664, 0.379291, -0.425448,
		0.531589, 0.779246, -0.331947,
		39.810696, 30.358084, 31.605961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112930, 30.067030, 31.300562>,  <39.438583, 29.812611, 31.838324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112930, 30.067030, 31.300562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.493393, 30.186829, 31.270628>,  <39.721672, 30.258707, 31.252668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.493393, 30.186829, 31.270628>,  <39.112930, 30.067030, 31.300562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493393, 30.186829, 31.270628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051360, -0.392567, -0.918288,
		-0.304402, 0.869594, -0.388776,
		0.951158, 0.299496, -0.074835,
		39.778740, 30.276678, 31.248177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150097, 30.136528, 30.546118>,  <39.112930, 30.067030, 31.300562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150097, 30.136528, 30.546118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515697, 30.147415, 30.708036>,  <39.735058, 30.153948, 30.805187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515697, 30.147415, 30.708036>,  <39.150097, 30.136528, 30.546118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515697, 30.147415, 30.708036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386674, -0.360496, -0.848838,
		0.122824, 0.932364, -0.340018,
		0.914001, 0.027219, 0.404798,
		39.789898, 30.155581, 30.829475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609627, 30.493774, 30.098833>,  <39.150097, 30.136528, 30.546118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609627, 30.493774, 30.098833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.872070, 30.292048, 30.323400>,  <40.029537, 30.171011, 30.458141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.872070, 30.292048, 30.323400>,  <39.609627, 30.493774, 30.098833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872070, 30.292048, 30.323400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534759, -0.214233, -0.817397,
		0.532502, 0.836521, 0.129129,
		0.656105, -0.504318, 0.561417,
		40.068901, 30.140753, 30.491825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371861, 30.753847, 30.197823>,  <39.609627, 30.493774, 30.098833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371861, 30.753847, 30.197823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.395302, 30.358562, 30.254395>,  <40.409367, 30.121391, 30.288338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.395302, 30.358562, 30.254395>,  <40.371861, 30.753847, 30.197823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395302, 30.358562, 30.254395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549634, -0.086324, -0.830934,
		0.833348, 0.126431, 0.538096,
		0.058605, -0.988212, 0.141429,
		40.412884, 30.062099, 30.296824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094872, 30.611738, 29.923815>,  <40.371861, 30.753847, 30.197823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094872, 30.611738, 29.923815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.905605, 30.259357, 29.926203>,  <40.792046, 30.047928, 29.927635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.905605, 30.259357, 29.926203>,  <41.094872, 30.611738, 29.923815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905605, 30.259357, 29.926203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505986, -0.277303, -0.816750,
		0.721175, -0.383436, 0.576960,
		-0.473164, -0.880954, 0.005971,
		40.763657, 29.995071, 29.927994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599003, 30.102762, 29.877708>,  <41.094872, 30.611738, 29.923815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599003, 30.102762, 29.877708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.265060, 29.907114, 29.776691>,  <41.064693, 29.789726, 29.716082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.265060, 29.907114, 29.776691>,  <41.599003, 30.102762, 29.877708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265060, 29.907114, 29.776691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511278, -0.518997, -0.685009,
		0.203983, -0.701003, 0.683364,
		-0.834857, -0.489119, -0.252541,
		41.014603, 29.760378, 29.700930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844662, 29.429674, 29.927608>,  <41.599003, 30.102762, 29.877708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844662, 29.429674, 29.927608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516239, 29.381584, 29.704391>,  <41.319187, 29.352730, 29.570461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516239, 29.381584, 29.704391>,  <41.844662, 29.429674, 29.927608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516239, 29.381584, 29.704391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504724, -0.609584, -0.611278,
		-0.266683, -0.783551, 0.561184,
		-0.821057, -0.120226, -0.558043,
		41.269924, 29.345516, 29.536978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711895, 28.669310, 29.776464>,  <41.844662, 29.429674, 29.927608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711895, 28.669310, 29.776464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.548313, 28.899714, 29.493349>,  <41.450165, 29.037956, 29.323479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.548313, 28.899714, 29.493349>,  <41.711895, 28.669310, 29.776464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548313, 28.899714, 29.493349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588246, -0.426563, -0.687030,
		-0.697653, -0.697321, -0.164389,
		-0.408958, 0.576010, -0.707789,
		41.425625, 29.072517, 29.281012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619213, 28.205427, 29.288086>,  <41.711895, 28.669310, 29.776464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619213, 28.205427, 29.288086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.579540, 28.559227, 29.105736>,  <41.555737, 28.771507, 28.996326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.579540, 28.559227, 29.105736>,  <41.619213, 28.205427, 29.288086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579540, 28.559227, 29.105736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491589, -0.354769, -0.795285,
		-0.865161, -0.302982, -0.399624,
		-0.099183, 0.884501, -0.455875,
		41.549786, 28.824577, 28.968973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480988, 28.022860, 28.654211>,  <41.619213, 28.205427, 29.288086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480988, 28.022860, 28.654211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.601604, 28.401062, 28.605072>,  <41.673973, 28.627983, 28.575588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.601604, 28.401062, 28.605072>,  <41.480988, 28.022860, 28.654211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601604, 28.401062, 28.605072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454680, -0.255850, -0.853116,
		-0.838058, 0.201391, -0.507051,
		0.301539, 0.945507, -0.122849,
		41.692066, 28.684713, 28.568218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487373, 28.010414, 27.909664>,  <41.480988, 28.022860, 28.654211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487373, 28.010414, 27.909664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.677925, 28.350843, 27.997967>,  <41.792255, 28.555101, 28.050947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.677925, 28.350843, 27.997967>,  <41.487373, 28.010414, 27.909664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677925, 28.350843, 27.997967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602748, -0.133323, -0.786715,
		-0.640120, 0.507837, -0.576496,
		0.476383, 0.851074, 0.220755,
		41.820839, 28.606165, 28.064194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426395, 28.561829, 27.388592>,  <41.487373, 28.010414, 27.909664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426395, 28.561829, 27.388592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.759068, 28.631966, 27.599331>,  <41.958672, 28.674047, 27.725775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.759068, 28.631966, 27.599331>,  <41.426395, 28.561829, 27.388592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759068, 28.631966, 27.599331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549324, -0.121437, -0.826738,
		-0.080982, 0.976990, -0.197315,
		0.831676, 0.175341, 0.526849,
		42.008572, 28.684568, 27.757385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887962, 29.080864, 27.076944>,  <41.426395, 28.561829, 27.388592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887962, 29.080864, 27.076944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.160900, 28.894617, 27.302372>,  <42.324661, 28.782869, 27.437628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.160900, 28.894617, 27.302372>,  <41.887962, 29.080864, 27.076944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160900, 28.894617, 27.302372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643125, 0.015817, -0.765598,
		0.347560, 0.884846, 0.310241,
		0.682343, -0.465615, 0.563569,
		42.365604, 28.754932, 27.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477703, 29.147219, 26.653156>,  <41.887962, 29.080864, 27.076944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477703, 29.147219, 26.653156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.624016, 28.907898, 26.938320>,  <42.711803, 28.764305, 27.109419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.624016, 28.907898, 26.938320>,  <42.477703, 29.147219, 26.653156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624016, 28.907898, 26.938320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837608, -0.122301, -0.532405,
		0.405727, 0.791884, 0.456406,
		0.365784, -0.598300, 0.712909,
		42.733749, 28.728409, 27.152193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158127, 29.302540, 26.779844>,  <42.477703, 29.147219, 26.653156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158127, 29.302540, 26.779844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.127171, 28.925503, 26.909784>,  <43.108597, 28.699280, 26.987749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.127171, 28.925503, 26.909784>,  <43.158127, 29.302540, 26.779844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127171, 28.925503, 26.909784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780381, -0.260056, -0.568662,
		0.620496, 0.209496, 0.755709,
		-0.077395, -0.942594, 0.324850,
		43.103951, 28.642725, 27.007238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784077, 29.149805, 27.159382>,  <43.158127, 29.302540, 26.779844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784077, 29.149805, 27.159382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.615463, 28.814413, 27.021242>,  <43.514297, 28.613178, 26.938358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.615463, 28.814413, 27.021242>,  <43.784077, 29.149805, 27.159382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615463, 28.814413, 27.021242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795320, -0.158889, -0.584996,
		0.435635, -0.521256, 0.733835,
		-0.421531, -0.838479, -0.345348,
		43.489002, 28.562870, 26.917637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264221, 28.699183, 27.069799>,  <43.784077, 29.149805, 27.159382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264221, 28.699183, 27.069799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.985775, 28.502415, 26.860638>,  <43.818707, 28.384354, 26.735140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.985775, 28.502415, 26.860638>,  <44.264221, 28.699183, 27.069799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985775, 28.502415, 26.860638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672213, -0.190862, -0.715334,
		0.252086, -0.849462, 0.463539,
		-0.696120, -0.491922, -0.522905,
		43.776939, 28.354837, 26.703766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529320, 28.058277, 26.811823>,  <44.264221, 28.699183, 27.069799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529320, 28.058277, 26.811823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.221703, 28.162329, 26.578274>,  <44.037132, 28.224760, 26.438145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.221703, 28.162329, 26.578274>,  <44.529320, 28.058277, 26.811823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221703, 28.162329, 26.578274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511066, -0.298390, -0.806086,
		-0.383911, -0.918311, 0.096529,
		-0.769041, 0.260133, -0.583873,
		43.990990, 28.240368, 26.403112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621773, 27.568764, 26.220821>,  <44.529320, 28.058277, 26.811823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621773, 27.568764, 26.220821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.363239, 27.848312, 26.098293>,  <44.208118, 28.016041, 26.024776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.363239, 27.848312, 26.098293>,  <44.621773, 27.568764, 26.220821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363239, 27.848312, 26.098293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442891, 0.016690, -0.896420,
		-0.621370, -0.715053, -0.320311,
		-0.646334, 0.698871, -0.306320,
		44.169338, 28.057974, 26.006397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382240, 27.353868, 25.565176>,  <44.621773, 27.568764, 26.220821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382240, 27.353868, 25.565176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.337780, 27.748247, 25.615055>,  <44.311104, 27.984875, 25.644983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.337780, 27.748247, 25.615055>,  <44.382240, 27.353868, 25.565176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337780, 27.748247, 25.615055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512636, 0.164377, -0.842725,
		-0.851381, -0.029748, -0.523704,
		-0.111154, 0.985949, 0.124697,
		44.304432, 28.044031, 25.652464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073448, 27.712671, 25.025034>,  <44.382240, 27.353868, 25.565176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073448, 27.712671, 25.025034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.306984, 27.993341, 25.188389>,  <44.447105, 28.161743, 25.286402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.306984, 27.993341, 25.188389>,  <44.073448, 27.712671, 25.025034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306984, 27.993341, 25.188389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541139, 0.038657, -0.840044,
		-0.605226, 0.711447, -0.357135,
		0.583841, 0.701676, 0.408388,
		44.482136, 28.203844, 25.310905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277245, 27.752504, 24.957546>,  <44.073448, 27.712671, 25.025034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277245, 27.752504, 24.957546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.012424, 27.592049, 24.704319>,  <42.853531, 27.495775, 24.552382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.012424, 27.592049, 24.704319>,  <43.277245, 27.752504, 24.957546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012424, 27.592049, 24.704319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707643, 0.056371, 0.704318,
		-0.246844, 0.914280, -0.321185,
		-0.662049, -0.401140, -0.633069,
		42.813808, 27.471706, 24.514399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617905, 28.184496, 25.007736>,  <43.277245, 27.752504, 24.957546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617905, 28.184496, 25.007736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.500175, 27.844677, 24.832628>,  <42.429539, 27.640785, 24.727564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.500175, 27.844677, 24.832628>,  <42.617905, 28.184496, 25.007736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500175, 27.844677, 24.832628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790694, -0.040835, 0.610849,
		-0.536822, 0.525928, -0.659714,
		-0.294323, -0.849548, -0.437768,
		42.411877, 27.589813, 24.701298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886814, 28.305843, 24.779110>,  <42.617905, 28.184496, 25.007736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886814, 28.305843, 24.779110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940197, 27.909500, 24.787018>,  <41.972225, 27.671694, 24.791761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940197, 27.909500, 24.787018>,  <41.886814, 28.305843, 24.779110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940197, 27.909500, 24.787018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824966, -0.100012, 0.556263,
		-0.549200, -0.090543, -0.830771,
		0.133453, -0.990858, 0.019768,
		41.980232, 27.612244, 24.792948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249615, 27.926815, 24.487761>,  <41.886814, 28.305843, 24.779110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249615, 27.926815, 24.487761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.450184, 27.681564, 24.731941>,  <41.570526, 27.534414, 24.878450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.450184, 27.681564, 24.731941>,  <41.249615, 27.926815, 24.487761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450184, 27.681564, 24.731941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791439, -0.039963, 0.609940,
		-0.349576, -0.788973, -0.505291,
		0.501419, -0.613128, 0.610454,
		41.600609, 27.497625, 24.915077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760246, 27.456169, 24.824984>,  <41.249615, 27.926815, 24.487761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760246, 27.456169, 24.824984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.084206, 27.420654, 25.056906>,  <41.278584, 27.399345, 25.196058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.084206, 27.420654, 25.056906>,  <40.760246, 27.456169, 24.824984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084206, 27.420654, 25.056906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580127, 0.024806, 0.814149,
		-0.086668, -0.995742, -0.031417,
		0.809903, -0.088787, 0.579806,
		41.327175, 27.394018, 25.230848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562721, 26.888311, 25.213694>,  <40.760246, 27.456169, 24.824984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562721, 26.888311, 25.213694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.825798, 27.119467, 25.406973>,  <40.983646, 27.258160, 25.522940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.825798, 27.119467, 25.406973>,  <40.562721, 26.888311, 25.213694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825798, 27.119467, 25.406973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552814, -0.065452, 0.830730,
		0.511695, -0.813487, 0.276417,
		0.657696, 0.577888, 0.483199,
		41.023106, 27.292833, 25.551933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528069, 26.519432, 25.895878>,  <40.562721, 26.888311, 25.213694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528069, 26.519432, 25.895878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.692738, 26.876049, 25.971432>,  <40.791538, 27.090019, 26.016764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.692738, 26.876049, 25.971432>,  <40.528069, 26.519432, 25.895878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692738, 26.876049, 25.971432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578786, 0.095681, 0.809847,
		0.703939, -0.442718, 0.555401,
		0.411676, 0.891541, 0.188885,
		40.816242, 27.143511, 26.028097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793186, 26.432411, 26.613588>,  <40.528069, 26.519432, 25.895878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793186, 26.432411, 26.613588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.776379, 26.826576, 26.547623>,  <40.766293, 27.063076, 26.508043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.776379, 26.826576, 26.547623>,  <40.793186, 26.432411, 26.613588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776379, 26.826576, 26.547623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582637, 0.109921, 0.805265,
		0.811645, 0.129924, 0.569519,
		-0.042021, 0.985412, -0.164915,
		40.763771, 27.122200, 26.498148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898167, 26.868526, 27.192217>,  <40.793186, 26.432411, 26.613588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898167, 26.868526, 27.192217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.722534, 27.138109, 26.954563>,  <40.617153, 27.299858, 26.811972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.722534, 27.138109, 26.954563>,  <40.898167, 26.868526, 27.192217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722534, 27.138109, 26.954563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501494, 0.364837, 0.784473,
		0.745461, 0.642400, 0.177792,
		-0.439080, 0.673956, -0.594132,
		40.590809, 27.340296, 26.776323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945820, 27.400335, 27.611856>,  <40.898167, 26.868526, 27.192217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945820, 27.400335, 27.611856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.665462, 27.464218, 27.333792>,  <40.497250, 27.502548, 27.166952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.665462, 27.464218, 27.333792>,  <40.945820, 27.400335, 27.611856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665462, 27.464218, 27.333792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649407, 0.260205, 0.714537,
		0.295000, 0.952254, -0.078660,
		-0.700889, 0.159706, -0.695161,
		40.455196, 27.512131, 27.125244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640827, 28.115047, 27.788578>,  <40.945820, 27.400335, 27.611856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640827, 28.115047, 27.788578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388222, 27.885374, 27.580153>,  <40.236660, 27.747570, 27.455097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388222, 27.885374, 27.580153>,  <40.640827, 28.115047, 27.788578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388222, 27.885374, 27.580153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712549, 0.164794, 0.681995,
		-0.305723, 0.801970, -0.513203,
		-0.631513, -0.574183, -0.521061,
		40.198769, 27.713120, 27.423834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097775, 28.498922, 27.844774>,  <40.640827, 28.115047, 27.788578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097775, 28.498922, 27.844774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.965527, 28.131390, 27.758575>,  <39.886177, 27.910870, 27.706856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.965527, 28.131390, 27.758575>,  <40.097775, 28.498922, 27.844774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965527, 28.131390, 27.758575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692590, 0.081110, 0.716757,
		-0.641100, 0.386224, -0.663190,
		-0.330620, -0.918832, -0.215495,
		39.866341, 27.855740, 27.693928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324780, 28.485500, 27.823093>,  <40.097775, 28.498922, 27.844774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324780, 28.485500, 27.823093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423931, 28.104982, 27.896406>,  <39.483421, 27.876671, 27.940393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423931, 28.104982, 27.896406>,  <39.324780, 28.485500, 27.823093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423931, 28.104982, 27.896406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643951, -0.020447, 0.764794,
		-0.723797, -0.307602, -0.617656,
		0.247881, -0.951295, 0.183281,
		39.498295, 27.819593, 27.951391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678341, 28.035021, 27.905605>,  <39.324780, 28.485500, 27.823093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678341, 28.035021, 27.905605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985649, 27.861818, 28.094187>,  <39.170033, 27.757896, 28.207335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985649, 27.861818, 28.094187>,  <38.678341, 28.035021, 27.905605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985649, 27.861818, 28.094187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606481, -0.256749, 0.752503,
		-0.204786, -0.864056, -0.459858,
		0.768273, -0.432998, 0.471455,
		39.216129, 27.731916, 28.235622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387257, 27.799250, 28.538170>,  <38.678341, 28.035021, 27.905605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387257, 27.799250, 28.538170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.757221, 27.673130, 28.623144>,  <38.979198, 27.597458, 28.674128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.757221, 27.673130, 28.623144>,  <38.387257, 27.799250, 28.538170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757221, 27.673130, 28.623144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275219, -0.169783, 0.946271,
		-0.262289, -0.933681, -0.243810,
		0.924910, -0.315298, 0.212434,
		39.034695, 27.578541, 28.686874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387398, 27.224197, 29.028105>,  <38.387257, 27.799250, 28.538170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387398, 27.224197, 29.028105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763618, 27.350237, 29.078810>,  <38.989353, 27.425859, 29.109234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763618, 27.350237, 29.078810>,  <38.387398, 27.224197, 29.028105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763618, 27.350237, 29.078810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039579, -0.269002, 0.962326,
		0.337327, -0.910138, -0.240541,
		0.940555, 0.315098, 0.126764,
		39.045784, 27.444767, 29.116838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745564, 26.819563, 29.383432>,  <38.387398, 27.224197, 29.028105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745564, 26.819563, 29.383432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931534, 27.164885, 29.461964>,  <39.043118, 27.372078, 29.509083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931534, 27.164885, 29.461964>,  <38.745564, 26.819563, 29.383432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931534, 27.164885, 29.461964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078076, -0.180909, 0.980396,
		0.881899, -0.471141, -0.016706,
		0.464927, 0.863306, 0.196329,
		39.071011, 27.423876, 29.520863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206783, 26.617073, 29.909348>,  <38.745564, 26.819563, 29.383432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206783, 26.617073, 29.909348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187164, 27.016586, 29.911495>,  <39.175392, 27.256294, 29.912785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187164, 27.016586, 29.911495>,  <39.206783, 26.617073, 29.909348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187164, 27.016586, 29.911495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122792, -0.011365, 0.992367,
		0.991220, 0.048012, 0.123200,
		-0.049045, 0.998782, 0.005369,
		39.172451, 27.316221, 29.913107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557846, 26.827295, 30.575640>,  <39.206783, 26.617073, 29.909348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557846, 26.827295, 30.575640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.338333, 27.147047, 30.477793>,  <39.206627, 27.338898, 30.419085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.338333, 27.147047, 30.477793>,  <39.557846, 26.827295, 30.575640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338333, 27.147047, 30.477793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189295, 0.166188, 0.967755,
		0.814254, 0.577387, 0.060118,
		-0.548778, 0.799379, -0.244615,
		39.173698, 27.386860, 30.404408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754784, 27.362690, 31.118162>,  <39.557846, 26.827295, 30.575640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754784, 27.362690, 31.118162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.393173, 27.430410, 30.961149>,  <39.176208, 27.471043, 30.866941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.393173, 27.430410, 30.961149>,  <39.754784, 27.362690, 31.118162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393173, 27.430410, 30.961149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335968, 0.286401, 0.897274,
		0.264331, 0.943034, -0.202033,
		-0.904022, 0.169301, -0.392533,
		39.121967, 27.481201, 30.843390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.353802, 33.104500, 34.217667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.020302, 32.900166, 34.133846>,  <38.820202, 32.777565, 34.083553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.020302, 32.900166, 34.133846>,  <39.353802, 33.104500, 34.217667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020302, 32.900166, 34.133846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462658, 0.439217, 0.770088,
		-0.301351, 0.739009, -0.602538,
		-0.833747, -0.510836, -0.209550,
		38.770176, 32.746914, 34.070980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849583, 33.520882, 34.250114>,  <39.353802, 33.104500, 34.217667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849583, 33.520882, 34.250114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.653576, 33.175995, 34.301441>,  <38.535973, 32.969063, 34.332237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.653576, 33.175995, 34.301441>,  <38.849583, 33.520882, 34.250114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653576, 33.175995, 34.301441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530638, 0.411825, 0.740826,
		-0.691597, 0.294928, -0.659327,
		-0.490018, -0.862217, 0.128317,
		38.506569, 32.917332, 34.339935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114784, 33.678856, 34.406948>,  <38.849583, 33.520882, 34.250114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114784, 33.678856, 34.406948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133743, 33.298565, 34.529499>,  <38.145119, 33.070389, 34.603031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133743, 33.298565, 34.529499>,  <38.114784, 33.678856, 34.406948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133743, 33.298565, 34.529499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786267, 0.153666, 0.598474,
		-0.616067, -0.269259, -0.740244,
		0.047394, -0.950729, 0.306378,
		38.147961, 33.013348, 34.621414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394165, 33.507046, 34.361713>,  <38.114784, 33.678856, 34.406948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394165, 33.507046, 34.361713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.570099, 33.233727, 34.594830>,  <37.675659, 33.069736, 34.734699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.570099, 33.233727, 34.594830>,  <37.394165, 33.507046, 34.361713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570099, 33.233727, 34.594830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844027, -0.092780, 0.528214,
		-0.306856, -0.724221, -0.617530,
		0.439838, -0.683298, 0.582792,
		37.702049, 33.028736, 34.769669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946907, 32.918686, 34.391731>,  <37.394165, 33.507046, 34.361713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946907, 32.918686, 34.391731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.187439, 32.940464, 34.710590>,  <37.331757, 32.953533, 34.901905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.187439, 32.940464, 34.710590>,  <36.946907, 32.918686, 34.391731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187439, 32.940464, 34.710590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788686, 0.200259, 0.581266,
		-0.127986, -0.978229, 0.163365,
		0.601326, 0.054450, 0.797146,
		37.367836, 32.956799, 34.949734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615772, 32.457905, 34.734291>,  <36.946907, 32.918686, 34.391731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615772, 32.457905, 34.734291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.845253, 32.678383, 34.976627>,  <36.982941, 32.810669, 35.122028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.845253, 32.678383, 34.976627>,  <36.615772, 32.457905, 34.734291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845253, 32.678383, 34.976627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755755, 0.071088, 0.650984,
		0.315753, -0.831340, 0.457355,
		0.573702, 0.551199, 0.605844,
		37.017365, 32.843742, 35.158379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441238, 32.171146, 35.360687>,  <36.615772, 32.457905, 34.734291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441238, 32.171146, 35.360687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.602894, 32.518707, 35.475006>,  <36.699886, 32.727245, 35.543598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.602894, 32.518707, 35.475006>,  <36.441238, 32.171146, 35.360687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602894, 32.518707, 35.475006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831242, 0.218489, 0.511175,
		0.381716, -0.444155, 0.810567,
		0.404141, 0.868901, 0.285799,
		36.724136, 32.779377, 35.560745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306080, 32.198975, 36.021355>,  <36.441238, 32.171146, 35.360687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306080, 32.198975, 36.021355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.355846, 32.573986, 35.891392>,  <36.385708, 32.798992, 35.813416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.355846, 32.573986, 35.891392>,  <36.306080, 32.198975, 36.021355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355846, 32.573986, 35.891392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929588, 0.224640, 0.292237,
		0.346967, 0.265670, 0.899463,
		0.124417, 0.937527, -0.324906,
		36.393173, 32.855244, 35.793919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126545, 32.695782, 36.632343>,  <36.306080, 32.198975, 36.021355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126545, 32.695782, 36.632343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.114021, 32.911095, 36.295471>,  <36.106506, 33.040283, 36.093346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.114021, 32.911095, 36.295471>,  <36.126545, 32.695782, 36.632343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114021, 32.911095, 36.295471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892638, 0.364032, 0.265852,
		0.449685, 0.760088, 0.469094,
		-0.031306, 0.538281, -0.842184,
		36.104630, 33.072578, 36.042816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011608, 33.338753, 36.872036>,  <36.126545, 32.695782, 36.632343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011608, 33.338753, 36.872036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.880657, 33.299660, 36.496105>,  <35.802086, 33.276203, 36.270546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.880657, 33.299660, 36.496105>,  <36.011608, 33.338753, 36.872036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880657, 33.299660, 36.496105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933803, 0.185417, 0.305995,
		0.144353, 0.977787, -0.151967,
		-0.327376, -0.097736, -0.939826,
		35.782444, 33.270340, 36.214157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354664, 33.716145, 36.826168>,  <36.011608, 33.338753, 36.872036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354664, 33.716145, 36.826168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.322674, 33.542423, 36.467285>,  <35.303478, 33.438190, 36.251953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.322674, 33.542423, 36.467285>,  <35.354664, 33.716145, 36.826168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322674, 33.542423, 36.467285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994166, -0.030594, 0.103426,
		-0.072368, 0.900247, -0.429324,
		-0.079975, -0.434304, -0.897209,
		35.298683, 33.412132, 36.198124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799541, 34.054455, 36.543091>,  <35.354664, 33.716145, 36.826168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799541, 34.054455, 36.543091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.804741, 33.709496, 36.340668>,  <34.807861, 33.502518, 36.219215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.804741, 33.709496, 36.340668>,  <34.799541, 34.054455, 36.543091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804741, 33.709496, 36.340668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936816, -0.187440, 0.295366,
		-0.349580, 0.470244, -0.810349,
		0.012998, -0.862402, -0.506058,
		34.808640, 33.450775, 36.188850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175110, 33.920815, 36.166115>,  <34.799541, 34.054455, 36.543091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175110, 33.920815, 36.166115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.314808, 33.548008, 36.204830>,  <34.398628, 33.324326, 36.228058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.314808, 33.548008, 36.204830>,  <34.175110, 33.920815, 36.166115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314808, 33.548008, 36.204830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924859, -0.326276, 0.195393,
		-0.150530, -0.157755, -0.975937,
		0.349249, -0.932018, 0.096786,
		34.419582, 33.268402, 36.233868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900803, 34.347488, 36.715771>,  <34.175110, 33.920815, 36.166115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900803, 34.347488, 36.715771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.614708, 34.603916, 36.604443>,  <33.443050, 34.757774, 36.537647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.614708, 34.603916, 36.604443>,  <33.900803, 34.347488, 36.715771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614708, 34.603916, 36.604443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548947, 0.268861, -0.791436,
		-0.432539, -0.718848, -0.544214,
		-0.715240, 0.641071, -0.278316,
		33.400135, 34.796238, 36.520947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539234, 34.201645, 36.024048>,  <33.900803, 34.347488, 36.715771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539234, 34.201645, 36.024048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.561871, 34.598103, 36.072098>,  <33.575451, 34.835976, 36.100925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.561871, 34.598103, 36.072098>,  <33.539234, 34.201645, 36.024048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561871, 34.598103, 36.072098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565894, 0.067279, -0.821728,
		-0.822533, 0.114480, -0.557076,
		0.056592, 0.991145, 0.120122,
		33.578850, 34.895447, 36.108135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306599, 34.697323, 35.501766>,  <33.539234, 34.201645, 36.024048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306599, 34.697323, 35.501766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.610897, 34.868839, 35.696667>,  <33.793476, 34.971748, 35.813606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.610897, 34.868839, 35.696667>,  <33.306599, 34.697323, 35.501766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610897, 34.868839, 35.696667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463015, 0.167571, -0.870366,
		-0.454851, 0.887729, -0.071056,
		0.760742, 0.428786, 0.487252,
		33.839119, 34.997475, 35.842842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427944, 35.305149, 35.197803>,  <33.306599, 34.697323, 35.501766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427944, 35.305149, 35.197803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.770103, 35.185589, 35.367020>,  <33.975399, 35.113853, 35.468548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.770103, 35.185589, 35.367020>,  <33.427944, 35.305149, 35.197803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770103, 35.185589, 35.367020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494259, 0.226689, -0.839238,
		0.154951, 0.926968, 0.341643,
		0.855394, -0.298901, 0.423037,
		34.026722, 35.095917, 35.493931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858540, 35.697468, 34.885189>,  <33.427944, 35.305149, 35.197803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858540, 35.697468, 34.885189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.114410, 35.439610, 35.052643>,  <34.267933, 35.284897, 35.153114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.114410, 35.439610, 35.052643>,  <33.858540, 35.697468, 34.885189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114410, 35.439610, 35.052643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539621, -0.011225, -0.841833,
		0.547379, 0.764403, 0.340682,
		0.639675, -0.644641, 0.418633,
		34.306313, 35.246216, 35.178234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508907, 35.899090, 34.669006>,  <33.858540, 35.697468, 34.885189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508907, 35.899090, 34.669006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532059, 35.511330, 34.764423>,  <34.545948, 35.278671, 34.821674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532059, 35.511330, 34.764423>,  <34.508907, 35.899090, 34.669006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532059, 35.511330, 34.764423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554808, -0.167417, -0.814960,
		0.829962, 0.179515, 0.528145,
		0.057877, -0.969405, 0.238546,
		34.549423, 35.220509, 34.835987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123146, 35.673977, 34.429466>,  <34.508907, 35.899090, 34.669006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123146, 35.673977, 34.429466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.933617, 35.322186, 34.447388>,  <34.819901, 35.111111, 34.458141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.933617, 35.322186, 34.447388>,  <35.123146, 35.673977, 34.429466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933617, 35.322186, 34.447388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333112, -0.226101, -0.915377,
		0.815187, -0.418799, 0.400097,
		-0.473821, -0.879480, 0.044808,
		34.791470, 35.058342, 34.460831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557858, 35.315903, 34.124290>,  <35.123146, 35.673977, 34.429466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557858, 35.315903, 34.124290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.223911, 35.095737, 34.127003>,  <35.023544, 34.963638, 34.128628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.223911, 35.095737, 34.127003>,  <35.557858, 35.315903, 34.124290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223911, 35.095737, 34.127003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218536, -0.342728, -0.913663,
		0.505213, -0.761305, 0.406417,
		-0.834866, -0.550411, 0.006778,
		34.973450, 34.930614, 34.129036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688992, 34.545364, 34.142017>,  <35.557858, 35.315903, 34.124290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688992, 34.545364, 34.142017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.327984, 34.586163, 33.974659>,  <35.111378, 34.610641, 33.874245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.327984, 34.586163, 33.974659>,  <35.688992, 34.545364, 34.142017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327984, 34.586163, 33.974659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294223, -0.563408, -0.772013,
		-0.314464, -0.819860, 0.478481,
		-0.902522, 0.101990, -0.418392,
		35.057228, 34.616760, 33.849140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693302, 33.933643, 33.723175>,  <35.688992, 34.545364, 34.142017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693302, 33.933643, 33.723175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.390503, 34.154144, 33.582848>,  <35.208824, 34.286446, 33.498650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.390503, 34.154144, 33.582848>,  <35.693302, 33.933643, 33.723175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390503, 34.154144, 33.582848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095152, -0.438180, -0.893837,
		-0.646452, -0.710014, 0.279248,
		-0.756998, 0.551252, -0.350822,
		35.163403, 34.319519, 33.477600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207973, 33.568287, 33.471001>,  <35.693302, 33.933643, 33.723175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207973, 33.568287, 33.471001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.108841, 33.905563, 33.280170>,  <35.049362, 34.107929, 33.165672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.108841, 33.905563, 33.280170>,  <35.207973, 33.568287, 33.471001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108841, 33.905563, 33.280170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148036, -0.453700, -0.878773,
		-0.957426, -0.288413, -0.012382,
		-0.247832, 0.843193, -0.477079,
		35.034492, 34.158520, 33.137047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757313, 33.372597, 32.891552>,  <35.207973, 33.568287, 33.471001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757313, 33.372597, 32.891552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.907486, 33.725548, 32.778091>,  <34.997589, 33.937317, 32.710014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.907486, 33.725548, 32.778091>,  <34.757313, 33.372597, 32.891552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907486, 33.725548, 32.778091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294024, -0.403613, -0.866399,
		-0.878976, 0.241875, -0.410970,
		0.375434, 0.882379, -0.283649,
		35.020115, 33.990261, 32.692997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544571, 33.406681, 32.317139>,  <34.757313, 33.372597, 32.891552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544571, 33.406681, 32.317139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.846115, 33.669483, 32.319527>,  <35.027042, 33.827164, 32.320957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.846115, 33.669483, 32.319527>,  <34.544571, 33.406681, 32.317139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846115, 33.669483, 32.319527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274295, -0.306457, -0.911508,
		-0.597034, 0.688790, -0.411239,
		0.753865, 0.657002, 0.005966,
		35.072273, 33.866585, 32.321316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596313, 33.765793, 31.578901>,  <34.544571, 33.406681, 32.317139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596313, 33.765793, 31.578901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.954372, 33.819050, 31.749067>,  <35.169209, 33.851006, 31.851168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.954372, 33.819050, 31.749067>,  <34.596313, 33.765793, 31.578901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954372, 33.819050, 31.749067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442543, -0.379958, -0.812273,
		0.053491, 0.915371, -0.399042,
		0.895151, 0.133144, 0.425415,
		35.222919, 33.858994, 31.876692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008980, 34.112968, 31.036678>,  <34.596313, 33.765793, 31.578901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008980, 34.112968, 31.036678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.247757, 33.935165, 31.303833>,  <35.391026, 33.828484, 31.464125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.247757, 33.935165, 31.303833>,  <35.008980, 34.112968, 31.036678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247757, 33.935165, 31.303833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567085, -0.355096, -0.743183,
		0.567513, 0.822387, 0.040099,
		0.596945, -0.444506, 0.667885,
		35.426842, 33.801815, 31.504198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849941, 34.797714, 30.898434>,  <35.008980, 34.112968, 31.036678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849941, 34.797714, 30.898434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.626305, 34.552681, 30.674952>,  <34.492123, 34.405663, 30.540861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.626305, 34.552681, 30.674952>,  <34.849941, 34.797714, 30.898434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626305, 34.552681, 30.674952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745430, 0.076391, 0.662192,
		-0.362967, 0.786706, -0.499348,
		-0.559096, -0.612583, -0.558707,
		34.458576, 34.368908, 30.507339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147812, 35.176762, 30.711306>,  <34.849941, 34.797714, 30.898434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147812, 35.176762, 30.711306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.051136, 34.799496, 30.620070>,  <33.993130, 34.573135, 30.565327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.051136, 34.799496, 30.620070>,  <34.147812, 35.176762, 30.711306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051136, 34.799496, 30.620070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790776, 0.055214, 0.609611,
		-0.562370, 0.327707, -0.759176,
		-0.241691, -0.943165, -0.228093,
		33.978630, 34.516548, 30.551641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524475, 35.230862, 30.416668>,  <34.147812, 35.176762, 30.711306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524475, 35.230862, 30.416668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.547283, 34.862087, 30.569914>,  <33.560970, 34.640823, 30.661861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.547283, 34.862087, 30.569914>,  <33.524475, 35.230862, 30.416668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547283, 34.862087, 30.569914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828871, 0.170193, 0.532924,
		-0.556527, -0.347941, -0.754463,
		0.057022, -0.921939, 0.383115,
		33.564388, 34.585506, 30.684849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863567, 35.146381, 30.512558>,  <33.524475, 35.230862, 30.416668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863567, 35.146381, 30.512558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.030594, 34.853424, 30.727684>,  <33.130810, 34.677650, 30.856760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.030594, 34.853424, 30.727684>,  <32.863567, 35.146381, 30.512558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030594, 34.853424, 30.727684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801959, -0.018775, 0.597084,
		-0.427202, -0.680625, -0.595187,
		0.417565, -0.732391, 0.537813,
		33.155865, 34.633705, 30.889029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272282, 34.720345, 30.695211>,  <32.863567, 35.146381, 30.512558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272282, 34.720345, 30.695211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.555691, 34.605095, 30.952887>,  <32.725739, 34.535946, 31.107492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.555691, 34.605095, 30.952887>,  <32.272282, 34.720345, 30.695211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555691, 34.605095, 30.952887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678712, -0.028260, 0.733860,
		-0.193234, -0.957177, -0.215573,
		0.708527, -0.288119, 0.644187,
		32.768250, 34.518658, 31.146143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096443, 34.061935, 30.918528>,  <32.272282, 34.720345, 30.695211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096443, 34.061935, 30.918528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.333408, 34.220966, 31.198809>,  <32.475586, 34.316383, 31.366978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.333408, 34.220966, 31.198809>,  <32.096443, 34.061935, 30.918528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333408, 34.220966, 31.198809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744249, -0.062922, 0.664931,
		0.308452, -0.915408, 0.258623,
		0.592410, 0.397579, 0.700700,
		32.511131, 34.340240, 31.409019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917953, 33.683281, 31.382612>,  <32.096443, 34.061935, 30.918528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917953, 33.683281, 31.382612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.082512, 34.005432, 31.553312>,  <32.181248, 34.198723, 31.655733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.082512, 34.005432, 31.553312>,  <31.917953, 33.683281, 31.382612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082512, 34.005432, 31.553312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656455, -0.062999, 0.751730,
		0.632312, -0.589404, 0.502777,
		0.411398, 0.805379, 0.426752,
		32.205933, 34.247047, 31.681337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143944, 33.521408, 32.041542>,  <31.917953, 33.683281, 31.382612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143944, 33.521408, 32.041542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.072762, 33.915024, 32.040764>,  <32.030052, 34.151192, 32.040295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.072762, 33.915024, 32.040764>,  <32.143944, 33.521408, 32.041542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072762, 33.915024, 32.040764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603955, -0.107654, 0.789714,
		0.776899, 0.141707, 0.613472,
		-0.177951, 0.984037, -0.001948,
		32.019375, 34.210236, 32.040180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088150, 33.692131, 32.745735>,  <32.143944, 33.521408, 32.041542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088150, 33.692131, 32.745735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.902685, 33.998829, 32.568142>,  <31.791407, 34.182850, 32.461586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.902685, 33.998829, 32.568142>,  <32.088150, 33.692131, 32.745735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902685, 33.998829, 32.568142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579810, 0.116329, 0.806404,
		0.669956, 0.631322, 0.390630,
		-0.463659, 0.766746, -0.443982,
		31.763588, 34.228851, 32.434948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781525, 33.991470, 33.375561>,  <32.088150, 33.692131, 32.745735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781525, 33.991470, 33.375561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.609129, 34.163586, 33.058296>,  <31.505692, 34.266853, 32.867939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.609129, 34.163586, 33.058296>,  <31.781525, 33.991470, 33.375561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609129, 34.163586, 33.058296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863347, 0.059016, 0.501148,
		0.262448, 0.900760, 0.346053,
		-0.430991, 0.430289, -0.793157,
		31.479832, 34.292671, 32.820351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335443, 34.552616, 33.571293>,  <31.781525, 33.991470, 33.375561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335443, 34.552616, 33.571293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.193708, 34.478046, 33.204754>,  <31.108667, 34.433304, 32.984833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.193708, 34.478046, 33.204754>,  <31.335443, 34.552616, 33.571293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193708, 34.478046, 33.204754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926340, -0.063964, 0.371218,
		-0.127818, 0.980384, -0.150030,
		-0.354340, -0.186427, -0.916345,
		31.087406, 34.422119, 32.929852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734221, 35.031769, 33.419777>,  <31.335443, 34.552616, 33.571293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734221, 35.031769, 33.419777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.711975, 34.695656, 33.204060>,  <30.698627, 34.493988, 33.074631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.711975, 34.695656, 33.204060>,  <30.734221, 35.031769, 33.419777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711975, 34.695656, 33.204060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955806, -0.111369, 0.272088,
		-0.288691, 0.530588, -0.796953,
		-0.055611, -0.840282, -0.539290,
		30.695292, 34.443573, 33.042271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.854000, 34.870415, 27.683126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647640, 34.538204, 27.599157>,  <36.523823, 34.338879, 27.548777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647640, 34.538204, 27.599157>,  <36.854000, 34.870415, 27.683126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647640, 34.538204, 27.599157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682849, 0.250730, 0.686186,
		-0.517263, 0.497352, -0.696477,
		-0.515904, -0.830527, -0.209923,
		36.492870, 34.289047, 27.536180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986721, 35.018566, 27.743647>,  <36.854000, 34.870415, 27.683126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986721, 35.018566, 27.743647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053261, 34.624966, 27.769156>,  <36.093185, 34.388805, 27.784462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053261, 34.624966, 27.769156>,  <35.986721, 35.018566, 27.743647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053261, 34.624966, 27.769156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777630, -0.091142, 0.622081,
		-0.606317, -0.153073, -0.780351,
		0.166347, -0.984003, 0.063773,
		36.103165, 34.329765, 27.788288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365101, 34.727306, 27.686512>,  <35.986721, 35.018566, 27.743647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365101, 34.727306, 27.686512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597485, 34.456909, 27.867849>,  <35.736916, 34.294670, 27.976652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597485, 34.456909, 27.867849>,  <35.365101, 34.727306, 27.686512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597485, 34.456909, 27.867849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693187, -0.119009, 0.710864,
		-0.426584, -0.727238, -0.537727,
		0.580962, -0.675989, 0.453345,
		35.771774, 34.254112, 28.003853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890522, 34.131969, 27.846767>,  <35.365101, 34.727306, 27.686512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890522, 34.131969, 27.846767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221676, 34.098644, 28.068638>,  <35.420368, 34.078651, 28.201761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221676, 34.098644, 28.068638>,  <34.890522, 34.131969, 27.846767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221676, 34.098644, 28.068638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555800, 0.011200, 0.831241,
		-0.075465, -0.996461, -0.037033,
		0.827884, -0.083312, 0.554678,
		35.470039, 34.073650, 28.235041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789219, 33.600212, 28.239328>,  <34.890522, 34.131969, 27.846767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789219, 33.600212, 28.239328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079681, 33.785992, 28.442104>,  <35.253960, 33.897461, 28.563770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079681, 33.785992, 28.442104>,  <34.789219, 33.600212, 28.239328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079681, 33.785992, 28.442104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513198, -0.124514, 0.849190,
		0.457527, -0.876803, 0.147938,
		0.726153, 0.464449, 0.506942,
		35.297527, 33.925327, 28.594187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952629, 33.115967, 28.730701>,  <34.789219, 33.600212, 28.239328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952629, 33.115967, 28.730701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064247, 33.477074, 28.861639>,  <35.131218, 33.693737, 28.940201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064247, 33.477074, 28.861639>,  <34.952629, 33.115967, 28.730701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064247, 33.477074, 28.861639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674805, -0.058183, 0.735699,
		0.683208, -0.426185, 0.592953,
		0.279044, 0.902763, 0.327343,
		35.147961, 33.747902, 28.959843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897064, 33.058754, 29.489182>,  <34.952629, 33.115967, 28.730701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897064, 33.058754, 29.489182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915787, 33.451939, 29.418072>,  <34.927021, 33.687847, 29.375406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915787, 33.451939, 29.418072>,  <34.897064, 33.058754, 29.489182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915787, 33.451939, 29.418072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500048, 0.177124, 0.847691,
		0.864732, 0.049219, 0.499816,
		0.046807, 0.982957, -0.177777,
		34.929829, 33.746826, 29.364738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171131, 33.235424, 30.169399>,  <34.897064, 33.058754, 29.489182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171131, 33.235424, 30.169399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009678, 33.531204, 29.953884>,  <34.912804, 33.708672, 29.824575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009678, 33.531204, 29.953884>,  <35.171131, 33.235424, 30.169399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009678, 33.531204, 29.953884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601844, 0.228947, 0.765092,
		0.689101, 0.633085, 0.352622,
		-0.403637, 0.739450, -0.538786,
		34.888588, 33.753040, 29.792248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415203, 33.778587, 30.528667>,  <35.171131, 33.235424, 30.169399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415203, 33.778587, 30.528667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092148, 33.894733, 30.323378>,  <34.898315, 33.964420, 30.200203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092148, 33.894733, 30.323378>,  <35.415203, 33.778587, 30.528667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092148, 33.894733, 30.323378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498629, 0.128309, 0.857266,
		0.314774, 0.948274, 0.041159,
		-0.807642, 0.290368, -0.513225,
		34.849854, 33.981842, 30.169411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776672, 34.389767, 30.860575>,  <35.415203, 33.778587, 30.528667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776672, 34.389767, 30.860575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783215, 34.039230, 31.053137>,  <35.787140, 33.828907, 31.168674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783215, 34.039230, 31.053137>,  <35.776672, 34.389767, 30.860575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783215, 34.039230, 31.053137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634319, -0.363082, -0.682503,
		0.772898, 0.316531, 0.549943,
		0.016359, -0.876345, 0.481407,
		35.788124, 33.776325, 31.197559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545258, 34.203148, 30.891844>,  <35.776672, 34.389767, 30.860575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545258, 34.203148, 30.891844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335026, 33.864944, 30.929535>,  <36.208885, 33.662022, 30.952150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335026, 33.864944, 30.929535>,  <36.545258, 34.203148, 30.891844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335026, 33.864944, 30.929535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677152, -0.482812, -0.555300,
		0.515006, -0.228049, 0.826295,
		-0.525581, -0.845509, 0.094227,
		36.177353, 33.611290, 30.957804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157433, 33.770176, 30.927633>,  <36.545258, 34.203148, 30.891844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157433, 33.770176, 30.927633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842262, 33.530487, 30.870909>,  <36.653160, 33.386673, 30.836874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842262, 33.530487, 30.870909>,  <37.157433, 33.770176, 30.927633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842262, 33.530487, 30.870909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591658, -0.672905, -0.444004,
		0.170630, -0.433746, 0.884732,
		-0.787925, -0.599219, -0.141811,
		36.605885, 33.350723, 30.828365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366497, 33.046722, 31.112326>,  <37.157433, 33.770176, 30.927633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366497, 33.046722, 31.112326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059566, 33.031879, 30.856251>,  <36.875408, 33.022972, 30.702606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059566, 33.031879, 30.856251>,  <37.366497, 33.046722, 31.112326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059566, 33.031879, 30.856251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502056, -0.655846, -0.563743,
		-0.398941, -0.753982, 0.521878,
		-0.767324, -0.037112, -0.640185,
		36.829369, 33.020744, 30.664196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254967, 32.327576, 31.019278>,  <37.366497, 33.046722, 31.112326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254967, 32.327576, 31.019278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058960, 32.479744, 30.705547>,  <36.941357, 32.571045, 30.517309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058960, 32.479744, 30.705547>,  <37.254967, 32.327576, 31.019278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058960, 32.479744, 30.705547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378142, -0.717925, -0.584459,
		-0.785428, -0.582979, 0.207940,
		-0.490013, 0.380419, -0.784327,
		36.911957, 32.593868, 30.470249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963238, 31.746469, 30.593580>,  <37.254967, 32.327576, 31.019278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963238, 31.746469, 30.593580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976448, 32.071487, 30.360796>,  <36.984375, 32.266499, 30.221127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976448, 32.071487, 30.360796>,  <36.963238, 31.746469, 30.593580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976448, 32.071487, 30.360796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531394, -0.507433, -0.678330,
		-0.846480, -0.286844, -0.448543,
		0.033031, 0.812547, -0.581959,
		36.986359, 32.315250, 30.186209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011383, 31.398392, 30.005123>,  <36.963238, 31.746469, 30.593580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011383, 31.398392, 30.005123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091534, 31.775148, 29.897284>,  <37.139626, 32.001202, 29.832579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091534, 31.775148, 29.897284>,  <37.011383, 31.398392, 30.005123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091534, 31.775148, 29.897284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553111, -0.335890, -0.762395,
		-0.808651, 0.003648, -0.588277,
		0.200378, 0.941894, -0.269600,
		37.151646, 32.057716, 29.816404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763214, 31.485731, 29.328665>,  <37.011383, 31.398392, 30.005123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763214, 31.485731, 29.328665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039757, 31.771944, 29.368736>,  <37.205685, 31.943672, 29.392778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039757, 31.771944, 29.368736>,  <36.763214, 31.485731, 29.328665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039757, 31.771944, 29.368736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505979, -0.380508, -0.774079,
		-0.515761, 0.585854, -0.625112,
		0.691358, 0.715533, 0.100179,
		37.247166, 31.986605, 29.398790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878750, 31.761948, 28.665487>,  <36.763214, 31.485731, 29.328665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878750, 31.761948, 28.665487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209751, 31.851402, 28.871485>,  <37.408352, 31.905075, 28.995083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209751, 31.851402, 28.871485>,  <36.878750, 31.761948, 28.665487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209751, 31.851402, 28.871485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559994, -0.394883, -0.728337,
		0.040480, 0.891097, -0.452003,
		0.827507, 0.223636, 0.514994,
		37.458004, 31.918493, 29.025984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376900, 31.894409, 28.165550>,  <36.878750, 31.761948, 28.665487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376900, 31.894409, 28.165550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617611, 31.878849, 28.484636>,  <37.762039, 31.869513, 28.676088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617611, 31.878849, 28.484636>,  <37.376900, 31.894409, 28.165550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617611, 31.878849, 28.484636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739521, -0.350062, -0.574948,
		0.301616, 0.935918, -0.181892,
		0.601778, -0.038901, 0.797715,
		37.798145, 31.867178, 28.723951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982670, 32.194851, 27.924461>,  <37.376900, 31.894409, 28.165550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982670, 32.194851, 27.924461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044689, 31.948994, 28.233828>,  <38.081902, 31.801479, 28.419447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044689, 31.948994, 28.233828>,  <37.982670, 32.194851, 27.924461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044689, 31.948994, 28.233828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770488, -0.414752, -0.484075,
		0.618310, 0.670964, 0.409268,
		0.155053, -0.614644, 0.773415,
		38.091206, 31.764601, 28.465853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664154, 32.246628, 27.995508>,  <37.982670, 32.194851, 27.924461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664154, 32.246628, 27.995508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558853, 31.904875, 28.174725>,  <38.495674, 31.699823, 28.282253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558853, 31.904875, 28.174725>,  <38.664154, 32.246628, 27.995508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558853, 31.904875, 28.174725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716887, -0.484025, -0.501790,
		0.645580, 0.189099, 0.739911,
		-0.263247, -0.854378, 0.448039,
		38.479877, 31.648561, 28.309135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204514, 32.125515, 28.282343>,  <38.664154, 32.246628, 27.995508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204514, 32.125515, 28.282343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021633, 31.770803, 28.255259>,  <38.911903, 31.557976, 28.239008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021633, 31.770803, 28.255259>,  <39.204514, 32.125515, 28.282343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021633, 31.770803, 28.255259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733246, -0.332770, -0.592971,
		0.503303, -0.320757, 0.802372,
		-0.457205, -0.886780, -0.067710,
		38.884472, 31.504770, 28.234945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754658, 31.568571, 28.459013>,  <39.204514, 32.125515, 28.282343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754658, 31.568571, 28.459013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454529, 31.413921, 28.244524>,  <39.274452, 31.321131, 28.115829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454529, 31.413921, 28.244524>,  <39.754658, 31.568571, 28.459013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454529, 31.413921, 28.244524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661029, -0.429517, -0.615269,
		0.007562, -0.816109, 0.577848,
		-0.750323, -0.386627, -0.536223,
		39.229431, 31.297934, 28.083656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.618813, 27.355574, 27.254927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623692, 27.747911, 27.332687>,  <36.626617, 27.983315, 27.379343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623692, 27.747911, 27.332687>,  <36.618813, 27.355574, 27.254927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623692, 27.747911, 27.332687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327860, -0.179744, 0.927470,
		0.944647, -0.075050, 0.319388,
		0.012199, 0.980846, 0.194400,
		36.627350, 28.042166, 27.391008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992416, 27.463173, 27.870409>,  <36.618813, 27.355574, 27.254927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992416, 27.463173, 27.870409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.779835, 27.801321, 27.848860>,  <36.652287, 28.004210, 27.835930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.779835, 27.801321, 27.848860>,  <36.992416, 27.463173, 27.870409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779835, 27.801321, 27.848860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245192, -0.092646, 0.965038,
		0.810823, 0.526085, 0.256515,
		-0.531457, 0.845370, -0.053873,
		36.620399, 28.054932, 27.832699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149673, 27.787464, 28.475658>,  <36.992416, 27.463173, 27.870409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149673, 27.787464, 28.475658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.831562, 28.004101, 28.366692>,  <36.640694, 28.134083, 28.301311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.831562, 28.004101, 28.366692>,  <37.149673, 27.787464, 28.475658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831562, 28.004101, 28.366692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308604, 0.025122, 0.950859,
		0.521821, 0.840266, 0.147158,
		-0.795278, 0.541592, -0.272419,
		36.592979, 28.166578, 28.284966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041874, 28.386955, 28.873377>,  <37.149673, 27.787464, 28.475658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041874, 28.386955, 28.873377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.682095, 28.289785, 28.728064>,  <36.466225, 28.231483, 28.640875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.682095, 28.289785, 28.728064>,  <37.041874, 28.386955, 28.873377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682095, 28.289785, 28.728064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409340, 0.177159, 0.895017,
		-0.153062, 0.953731, -0.258784,
		-0.899452, -0.242924, -0.363284,
		36.412258, 28.216908, 28.619078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774887, 28.923237, 29.203632>,  <37.041874, 28.386955, 28.873377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774887, 28.923237, 29.203632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.490284, 28.677370, 29.067430>,  <36.319523, 28.529850, 28.985710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.490284, 28.677370, 29.067430>,  <36.774887, 28.923237, 29.203632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490284, 28.677370, 29.067430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506706, 0.113078, 0.854671,
		-0.486836, 0.780638, -0.391912,
		-0.711505, -0.614669, -0.340503,
		36.276833, 28.492970, 28.965279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107361, 29.301041, 29.412354>,  <36.774887, 28.923237, 29.203632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107361, 29.301041, 29.412354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035713, 28.910105, 29.367237>,  <35.992725, 28.675543, 29.340168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035713, 28.910105, 29.367237>,  <36.107361, 29.301041, 29.412354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035713, 28.910105, 29.367237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585976, 0.013891, 0.810210,
		-0.790283, 0.211220, -0.575186,
		-0.179123, -0.977340, -0.112792,
		35.981976, 28.616903, 29.333399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484688, 29.263165, 29.615728>,  <36.107361, 29.301041, 29.412354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484688, 29.263165, 29.615728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.592255, 28.878046, 29.626318>,  <35.656796, 28.646975, 29.632671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.592255, 28.878046, 29.626318>,  <35.484688, 29.263165, 29.615728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592255, 28.878046, 29.626318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513897, -0.120180, 0.849392,
		-0.814611, -0.242024, -0.527098,
		0.268920, -0.962799, 0.026476,
		35.672932, 28.589207, 29.634260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811649, 28.947756, 29.724270>,  <35.484688, 29.263165, 29.615728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811649, 28.947756, 29.724270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.068241, 28.659140, 29.828484>,  <35.222198, 28.485970, 29.891012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.068241, 28.659140, 29.828484>,  <34.811649, 28.947756, 29.724270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068241, 28.659140, 29.828484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597441, -0.256850, 0.759666,
		-0.481211, -0.642968, -0.595843,
		0.641483, -0.721540, 0.260536,
		35.260685, 28.442678, 29.906645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476887, 28.343439, 29.781303>,  <34.811649, 28.947756, 29.724270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476887, 28.343439, 29.781303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.801071, 28.279356, 30.006685>,  <34.995583, 28.240906, 30.141914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.801071, 28.279356, 30.006685>,  <34.476887, 28.343439, 29.781303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801071, 28.279356, 30.006685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585784, -0.225414, 0.778489,
		0.002291, -0.961001, -0.276536,
		0.810464, -0.160207, 0.563455,
		35.044209, 28.231295, 30.175722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243984, 27.735079, 30.248095>,  <34.476887, 28.343439, 29.781303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243984, 27.735079, 30.248095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.563377, 27.906248, 30.417473>,  <34.755013, 28.008949, 30.519100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.563377, 27.906248, 30.417473>,  <34.243984, 27.735079, 30.248095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563377, 27.906248, 30.417473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486964, 0.045540, 0.872234,
		0.353964, -0.902668, 0.244746,
		0.798483, 0.427922, 0.423447,
		34.802921, 28.034624, 30.544506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447247, 27.343876, 30.897923>,  <34.243984, 27.735079, 30.248095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447247, 27.343876, 30.897923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.571316, 27.722300, 30.935373>,  <34.645756, 27.949354, 30.957844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.571316, 27.722300, 30.935373>,  <34.447247, 27.343876, 30.897923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571316, 27.722300, 30.935373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449033, 0.058985, 0.891566,
		0.837952, -0.318577, 0.443108,
		0.310169, 0.946060, 0.093625,
		34.664368, 28.006117, 30.963461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787868, 27.344822, 31.537271>,  <34.447247, 27.343876, 30.897923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787868, 27.344822, 31.537271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677479, 27.721289, 31.459249>,  <34.611244, 27.947168, 31.412437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677479, 27.721289, 31.459249>,  <34.787868, 27.344822, 31.537271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677479, 27.721289, 31.459249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362624, 0.085985, 0.927960,
		0.890136, 0.326825, 0.317559,
		-0.275976, 0.941165, -0.195053,
		34.594685, 28.003637, 31.400734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882668, 27.734547, 32.147427>,  <34.787868, 27.344822, 31.537271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882668, 27.734547, 32.147427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.631638, 27.958279, 31.930798>,  <34.481022, 28.092518, 31.800821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.631638, 27.958279, 31.930798>,  <34.882668, 27.734547, 32.147427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631638, 27.958279, 31.930798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455292, 0.300608, 0.838059,
		0.631555, 0.772516, 0.066006,
		-0.627573, 0.559332, -0.541572,
		34.443367, 28.126078, 31.768326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709496, 28.288729, 32.601967>,  <34.882668, 27.734547, 32.147427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709496, 28.288729, 32.601967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.443604, 28.325190, 32.305367>,  <34.284069, 28.347067, 32.127407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.443604, 28.325190, 32.305367>,  <34.709496, 28.288729, 32.601967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443604, 28.325190, 32.305367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666265, 0.376675, 0.643589,
		0.337971, 0.921850, -0.189655,
		-0.664730, 0.091154, -0.741501,
		34.244183, 28.352535, 32.082916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230179, 28.874901, 32.579273>,  <34.709496, 28.288729, 32.601967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230179, 28.874901, 32.579273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517761, 28.915276, 32.854347>,  <35.690311, 28.939501, 33.019394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517761, 28.915276, 32.854347>,  <35.230179, 28.874901, 32.579273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517761, 28.915276, 32.854347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677300, -0.323941, -0.660550,
		0.156095, 0.940677, -0.301265,
		0.718956, 0.100938, 0.687687,
		35.733448, 28.945557, 33.060654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781467, 29.226177, 32.323750>,  <35.230179, 28.874901, 32.579273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781467, 29.226177, 32.323750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962128, 29.033199, 32.623955>,  <36.070522, 28.917414, 32.804077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962128, 29.033199, 32.623955>,  <35.781467, 29.226177, 32.323750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962128, 29.033199, 32.623955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690257, -0.344037, -0.636541,
		0.565298, 0.805535, 0.177627,
		0.451646, -0.482444, 0.750509,
		36.097622, 28.888466, 32.849106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470436, 29.489489, 32.275986>,  <35.781467, 29.226177, 32.323750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470436, 29.489489, 32.275986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471428, 29.124598, 32.439854>,  <36.472023, 28.905663, 32.538174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471428, 29.124598, 32.439854>,  <36.470436, 29.489489, 32.275986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471428, 29.124598, 32.439854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790311, -0.249221, -0.559730,
		0.612701, 0.325156, 0.720327,
		0.002479, -0.912229, 0.409672,
		36.472172, 28.850929, 32.562756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218288, 29.337122, 32.192860>,  <36.470436, 29.489489, 32.275986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218288, 29.337122, 32.192860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033524, 28.995293, 32.287804>,  <36.922665, 28.790195, 32.344772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033524, 28.995293, 32.287804>,  <37.218288, 29.337122, 32.192860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033524, 28.995293, 32.287804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783311, -0.518593, -0.342761,
		0.416009, 0.027604, 0.908941,
		-0.461909, -0.854575, 0.237362,
		36.894951, 28.738920, 32.359013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716675, 29.040417, 32.658421>,  <37.218288, 29.337122, 32.192860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716675, 29.040417, 32.658421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515141, 28.736830, 32.493439>,  <37.394218, 28.554678, 32.394451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515141, 28.736830, 32.493439>,  <37.716675, 29.040417, 32.658421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515141, 28.736830, 32.493439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863192, -0.424490, -0.273326,
		0.032363, -0.493739, 0.869008,
		-0.503837, -0.758966, -0.412454,
		37.363991, 28.509140, 32.369701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006821, 28.380354, 32.819378>,  <37.716675, 29.040417, 32.658421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006821, 28.380354, 32.819378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789646, 28.287771, 32.496479>,  <37.659344, 28.232222, 32.302738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789646, 28.287771, 32.496479>,  <38.006821, 28.380354, 32.819378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789646, 28.287771, 32.496479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764674, -0.533604, -0.361302,
		-0.347127, -0.813446, 0.466699,
		-0.542932, -0.231455, -0.807250,
		37.626766, 28.218334, 32.254303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302277, 27.759487, 32.569695>,  <38.006821, 28.380354, 32.819378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302277, 27.759487, 32.569695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.058960, 27.875444, 32.274139>,  <37.912971, 27.945019, 32.096806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.058960, 27.875444, 32.274139>,  <38.302277, 27.759487, 32.569695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058960, 27.875444, 32.274139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663676, -0.324824, -0.673813,
		-0.435340, -0.900251, 0.005191,
		-0.608287, 0.289893, -0.738883,
		37.876472, 27.962412, 32.052475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282455, 27.112951, 32.150311>,  <38.302277, 27.759487, 32.569695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282455, 27.112951, 32.150311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200581, 27.449247, 31.949808>,  <38.151455, 27.651024, 31.829506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200581, 27.449247, 31.949808>,  <38.282455, 27.112951, 32.150311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200581, 27.449247, 31.949808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659068, -0.260242, -0.705623,
		-0.723693, -0.474799, -0.500834,
		-0.204691, 0.840738, -0.501260,
		38.139172, 27.701469, 31.799431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189102, 26.897089, 31.459749>,  <38.282455, 27.112951, 32.150311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189102, 26.897089, 31.459749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251202, 27.291254, 31.431858>,  <38.288460, 27.527752, 31.415123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251202, 27.291254, 31.431858>,  <38.189102, 26.897089, 31.459749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251202, 27.291254, 31.431858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523332, -0.141906, -0.840230,
		-0.837867, 0.093954, -0.537728,
		0.155250, 0.985411, -0.069730,
		38.297775, 27.586878, 31.410938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946743, 27.091722, 30.866837>,  <38.189102, 26.897089, 31.459749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946743, 27.091722, 30.866837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214642, 27.378387, 30.944647>,  <38.375381, 27.550386, 30.991333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214642, 27.378387, 30.944647>,  <37.946743, 27.091722, 30.866837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214642, 27.378387, 30.944647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371062, -0.096067, -0.923626,
		-0.643240, 0.690772, -0.330267,
		0.669743, 0.716662, 0.194525,
		38.415565, 27.593386, 31.003004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990715, 27.714931, 30.349136>,  <37.946743, 27.091722, 30.866837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990715, 27.714931, 30.349136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360401, 27.682186, 30.498333>,  <38.582214, 27.662539, 30.587851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360401, 27.682186, 30.498333>,  <37.990715, 27.714931, 30.349136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360401, 27.682186, 30.498333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381368, 0.147840, -0.912525,
		0.019560, 0.985617, 0.167857,
		0.924216, -0.081864, 0.372991,
		38.637665, 27.657627, 30.610229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348690, 28.307814, 30.090019>,  <37.990715, 27.714931, 30.349136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348690, 28.307814, 30.090019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.620411, 28.031734, 30.189764>,  <38.783443, 27.866087, 30.249611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.620411, 28.031734, 30.189764>,  <38.348690, 28.307814, 30.090019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620411, 28.031734, 30.189764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399716, 0.063015, -0.914470,
		0.615451, 0.720873, 0.318689,
		0.679299, -0.690197, 0.249362,
		38.824200, 27.824675, 30.264572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021400, 28.632486, 29.941957>,  <38.348690, 28.307814, 30.090019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021400, 28.632486, 29.941957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064663, 28.234844, 29.938808>,  <39.090618, 27.996260, 29.936918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064663, 28.234844, 29.938808>,  <39.021400, 28.632486, 29.941957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064663, 28.234844, 29.938808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375258, 0.048157, -0.925669,
		0.920589, 0.097160, 0.378253,
		0.108153, -0.994103, -0.007873,
		39.097111, 27.936613, 29.936447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696064, 28.501511, 29.692486>,  <39.021400, 28.632486, 29.941957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696064, 28.501511, 29.692486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.489708, 28.162834, 29.640379>,  <39.365894, 27.959629, 29.609116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.489708, 28.162834, 29.640379>,  <39.696064, 28.501511, 29.692486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489708, 28.162834, 29.640379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250054, -0.003394, -0.968226,
		0.819347, -0.532073, 0.213469,
		-0.515892, -0.846692, -0.130266,
		39.334942, 27.908827, 29.601299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289215, 28.753960, 30.043921>,  <39.696064, 28.501511, 29.692486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289215, 28.753960, 30.043921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.430725, 29.127066, 30.016237>,  <40.515633, 29.350929, 29.999628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.430725, 29.127066, 30.016237>,  <40.289215, 28.753960, 30.043921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430725, 29.127066, 30.016237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405553, 0.219648, 0.887289,
		0.842835, -0.285833, 0.455992,
		0.353774, 0.932767, -0.069206,
		40.536858, 29.406897, 29.995476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628571, 28.843416, 30.663244>,  <40.289215, 28.753960, 30.043921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628571, 28.843416, 30.663244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.565571, 29.216742, 30.534174>,  <40.527771, 29.440737, 30.456732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.565571, 29.216742, 30.534174>,  <40.628571, 28.843416, 30.663244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565571, 29.216742, 30.534174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296604, 0.266960, 0.916929,
		0.941924, 0.240119, 0.234780,
		-0.157495, 0.933314, -0.322676,
		40.518322, 29.496737, 30.437370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801086, 29.390471, 31.190449>,  <40.628571, 28.843416, 30.663244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801086, 29.390471, 31.190449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582592, 29.638857, 30.965584>,  <40.451496, 29.787888, 30.830664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582592, 29.638857, 30.965584>,  <40.801086, 29.390471, 31.190449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582592, 29.638857, 30.965584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242163, 0.525406, 0.815663,
		0.801861, 0.581681, -0.136621,
		-0.546237, 0.620964, -0.562164,
		40.418720, 29.825146, 30.796934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977715, 30.137838, 31.325983>,  <40.801086, 29.390471, 31.190449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977715, 30.137838, 31.325983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.610695, 30.157228, 31.168123>,  <40.390484, 30.168863, 31.073408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.610695, 30.157228, 31.168123>,  <40.977715, 30.137838, 31.325983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610695, 30.157228, 31.168123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218877, 0.767044, 0.603106,
		0.331950, 0.639761, -0.693192,
		-0.917552, 0.048477, -0.394649,
		40.335430, 30.171772, 31.049728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935741, 30.843803, 31.252125>,  <40.977715, 30.137838, 31.325983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935741, 30.843803, 31.252125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.578403, 30.665970, 31.225962>,  <40.364002, 30.559269, 31.210264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.578403, 30.665970, 31.225962>,  <40.935741, 30.843803, 31.252125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578403, 30.665970, 31.225962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398344, 0.716110, 0.573156,
		-0.207978, 0.538081, -0.816831,
		-0.893346, -0.444584, -0.065406,
		40.310398, 30.532595, 31.206341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418732, 31.330221, 31.125116>,  <40.935741, 30.843803, 31.252125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418732, 31.330221, 31.125116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.201752, 31.015453, 31.242764>,  <40.071564, 30.826593, 31.313353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.201752, 31.015453, 31.242764>,  <40.418732, 31.330221, 31.125116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201752, 31.015453, 31.242764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547767, 0.596757, 0.586373,
		-0.636946, 0.156969, -0.754759,
		-0.542450, -0.786919, 0.294119,
		40.039017, 30.779377, 31.330999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601562, 31.544188, 31.130104>,  <40.418732, 31.330221, 31.125116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601562, 31.544188, 31.130104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670284, 31.243856, 31.385208>,  <39.711517, 31.063658, 31.538271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670284, 31.243856, 31.385208>,  <39.601562, 31.544188, 31.130104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670284, 31.243856, 31.385208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438156, 0.521588, 0.732096,
		-0.882327, -0.405219, -0.239366,
		0.171809, -0.750828, 0.637761,
		39.721828, 31.018608, 31.576536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990238, 31.519260, 31.463196>,  <39.601562, 31.544188, 31.130104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990238, 31.519260, 31.463196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.233646, 31.324673, 31.713972>,  <39.379692, 31.207920, 31.864437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.233646, 31.324673, 31.713972>,  <38.990238, 31.519260, 31.463196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233646, 31.324673, 31.713972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442981, 0.447249, 0.777004,
		-0.658387, -0.750543, 0.056662,
		0.608518, -0.486469, 0.626940,
		39.416203, 31.178732, 31.902054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608845, 31.269299, 31.962467>,  <38.990238, 31.519260, 31.463196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608845, 31.269299, 31.962467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969639, 31.243824, 32.133286>,  <39.186115, 31.228539, 32.235775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969639, 31.243824, 32.133286>,  <38.608845, 31.269299, 31.962467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969639, 31.243824, 32.133286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331142, 0.532660, 0.778857,
		-0.277072, -0.843930, 0.459362,
		0.901984, -0.063686, 0.427046,
		39.240234, 31.224718, 32.261398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495113, 31.104797, 32.607704>,  <38.608845, 31.269299, 31.962467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495113, 31.104797, 32.607704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856941, 31.273228, 32.634373>,  <39.074039, 31.374287, 32.650372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856941, 31.273228, 32.634373>,  <38.495113, 31.104797, 32.607704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856941, 31.273228, 32.634373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238095, 0.369256, 0.898310,
		0.353624, -0.828466, 0.434274,
		0.904577, 0.421063, 0.066676,
		39.128311, 31.399551, 32.654373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667240, 30.949799, 33.319847>,  <38.495113, 31.104797, 32.607704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667240, 30.949799, 33.319847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.881187, 31.251127, 33.166786>,  <39.009556, 31.431925, 33.074947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.881187, 31.251127, 33.166786>,  <38.667240, 30.949799, 33.319847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881187, 31.251127, 33.166786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168303, 0.538794, 0.825455,
		0.828003, -0.377109, 0.414970,
		0.534869, 0.753320, -0.382654,
		39.041649, 31.477123, 33.051991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115395, 31.204975, 33.816078>,  <38.667240, 30.949799, 33.319847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115395, 31.204975, 33.816078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.087650, 31.500656, 33.548119>,  <39.071003, 31.678064, 33.387341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.087650, 31.500656, 33.548119>,  <39.115395, 31.204975, 33.816078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087650, 31.500656, 33.548119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285029, 0.628840, 0.723407,
		0.956006, 0.241120, 0.167075,
		-0.069364, 0.739203, -0.669901,
		39.066841, 31.722418, 33.347149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455528, 31.672390, 34.066689>,  <39.115395, 31.204975, 33.816078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455528, 31.672390, 34.066689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.201534, 31.872765, 33.831451>,  <39.049137, 31.992990, 33.690311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.201534, 31.872765, 33.831451>,  <39.455528, 31.672390, 34.066689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201534, 31.872765, 33.831451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334770, 0.507636, 0.793873,
		0.696217, 0.700975, -0.154644,
		-0.634988, 0.500938, -0.588091,
		39.011036, 32.023045, 33.655025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544456, 32.294918, 34.341892>,  <39.455528, 31.672390, 34.066689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544456, 32.294918, 34.341892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217533, 32.327351, 34.113708>,  <39.021378, 32.346809, 33.976799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217533, 32.327351, 34.113708>,  <39.544456, 32.294918, 34.341892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217533, 32.327351, 34.113708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467157, 0.486308, 0.738423,
		0.337291, 0.870017, -0.359589,
		-0.817312, 0.081079, -0.570462,
		38.972340, 32.351673, 33.942570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.018841, 30.897144, 28.469831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.756092, 30.912010, 28.168598>,  <39.598442, 30.920929, 27.987858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.756092, 30.912010, 28.168598>,  <40.018841, 30.897144, 28.469831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756092, 30.912010, 28.168598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665817, -0.440129, -0.602474,
		-0.353844, -0.897165, 0.264366,
		-0.656873, 0.037162, -0.753084,
		39.559029, 30.923159, 27.942673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259750, 30.343016, 28.098433>,  <40.018841, 30.897144, 28.469831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259750, 30.343016, 28.098433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.026264, 30.540714, 27.840754>,  <39.886173, 30.659334, 27.686146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.026264, 30.540714, 27.840754>,  <40.259750, 30.343016, 28.098433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026264, 30.540714, 27.840754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620767, -0.239758, -0.746435,
		-0.523376, -0.835605, -0.166861,
		-0.583718, 0.494247, -0.644199,
		39.851151, 30.688988, 27.647493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209305, 29.857035, 27.499529>,  <40.259750, 30.343016, 28.098433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209305, 29.857035, 27.499529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.111786, 30.229614, 27.391481>,  <40.053276, 30.453163, 27.326653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.111786, 30.229614, 27.391481>,  <40.209305, 29.857035, 27.499529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111786, 30.229614, 27.391481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541432, -0.100360, -0.834733,
		-0.804622, -0.349754, -0.479850,
		-0.243793, 0.931450, -0.270120,
		40.038647, 30.509048, 27.310446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976486, 29.734600, 26.743832>,  <40.209305, 29.857035, 27.499529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976486, 29.734600, 26.743832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.050030, 30.124794, 26.792212>,  <40.094154, 30.358910, 26.821239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.050030, 30.124794, 26.792212>,  <39.976486, 29.734600, 26.743832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050030, 30.124794, 26.792212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547133, 0.000661, -0.837045,
		-0.816604, 0.220072, -0.533598,
		0.183858, 0.975483, 0.120949,
		40.105186, 30.417439, 26.828497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731335, 30.068586, 26.062941>,  <39.976486, 29.734600, 26.743832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731335, 30.068586, 26.062941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.978310, 30.313290, 26.260738>,  <40.126495, 30.460112, 26.379417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.978310, 30.313290, 26.260738>,  <39.731335, 30.068586, 26.062941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978310, 30.313290, 26.260738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467783, 0.219845, -0.856065,
		-0.632417, 0.759881, -0.150430,
		0.617437, 0.611759, 0.494493,
		40.163540, 30.496817, 26.409086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884277, 30.542822, 25.553665>,  <39.731335, 30.068586, 26.062941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884277, 30.542822, 25.553665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.176834, 30.573219, 25.824749>,  <40.352367, 30.591457, 25.987400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.176834, 30.573219, 25.824749>,  <39.884277, 30.542822, 25.553665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176834, 30.573219, 25.824749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645584, 0.243069, -0.723975,
		-0.219749, 0.967028, 0.128717,
		0.731391, 0.075995, 0.677711,
		40.396252, 30.596018, 26.028063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264938, 31.156570, 25.394531>,  <39.884277, 30.542822, 25.553665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264938, 31.156570, 25.394531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.509556, 30.941168, 25.626404>,  <40.656326, 30.811926, 25.765528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.509556, 30.941168, 25.626404>,  <40.264938, 31.156570, 25.394531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509556, 30.941168, 25.626404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789244, 0.363524, -0.494918,
		0.055789, 0.760171, 0.647323,
		0.611540, -0.538507, 0.579680,
		40.693016, 30.779615, 25.800308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772274, 31.593697, 25.390345>,  <40.264938, 31.156570, 25.394531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772274, 31.593697, 25.390345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.949944, 31.257210, 25.513672>,  <41.056545, 31.055317, 25.587669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.949944, 31.257210, 25.513672>,  <40.772274, 31.593697, 25.390345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949944, 31.257210, 25.513672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818338, 0.240831, -0.521845,
		0.364732, 0.484102, 0.795372,
		0.444176, -0.841217, 0.308320,
		41.083195, 31.004845, 25.606169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373878, 31.812244, 25.706223>,  <40.772274, 31.593697, 25.390345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373878, 31.812244, 25.706223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.419521, 31.430117, 25.597155>,  <41.446907, 31.200840, 25.531713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.419521, 31.430117, 25.597155>,  <41.373878, 31.812244, 25.706223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419521, 31.430117, 25.597155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920782, 0.204749, -0.332021,
		0.373014, -0.213181, 0.903003,
		0.114108, -0.955318, -0.272668,
		41.453754, 31.143522, 25.515354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026443, 31.513248, 25.973986>,  <41.373878, 31.812244, 25.706223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026443, 31.513248, 25.973986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.933220, 31.257660, 25.680756>,  <41.877285, 31.104307, 25.504818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.933220, 31.257660, 25.680756>,  <42.026443, 31.513248, 25.973986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933220, 31.257660, 25.680756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928865, 0.076915, -0.362345,
		0.287912, -0.765376, 0.575592,
		-0.233058, -0.638970, -0.733076,
		41.863304, 31.065969, 25.460833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648838, 31.185829, 25.859129>,  <42.026443, 31.513248, 25.973986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648838, 31.185829, 25.859129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.443306, 31.077652, 25.533470>,  <42.319988, 31.012745, 25.338074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.443306, 31.077652, 25.533470>,  <42.648838, 31.185829, 25.859129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443306, 31.077652, 25.533470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835493, 0.057691, -0.546465,
		0.194757, -0.961006, 0.196311,
		-0.513830, -0.270445, -0.814149,
		42.289158, 30.996519, 25.289225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994858, 30.551945, 25.505150>,  <42.648838, 31.185829, 25.859129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994858, 30.551945, 25.505150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.781006, 30.793732, 25.268915>,  <42.652695, 30.938803, 25.127174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.781006, 30.793732, 25.268915>,  <42.994858, 30.551945, 25.505150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781006, 30.793732, 25.268915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835900, 0.275492, -0.474738,
		-0.124261, -0.747480, -0.652559,
		-0.534631, 0.604466, -0.590585,
		42.620617, 30.975071, 25.091740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604355, 30.122473, 25.093956>,  <42.994858, 30.551945, 25.505150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604355, 30.122473, 25.093956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.899761, 29.894043, 24.950588>,  <44.077003, 29.756985, 24.864567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.899761, 29.894043, 24.950588>,  <43.604355, 30.122473, 25.093956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899761, 29.894043, 24.950588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520446, 0.144888, 0.841512,
		-0.428636, -0.808010, 0.404217,
		0.738517, -0.571076, -0.358422,
		44.121315, 29.722721, 24.843061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668869, 29.618500, 25.612944>,  <43.604355, 30.122473, 25.093956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668869, 29.618500, 25.612944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.998451, 29.708015, 25.404707>,  <44.196201, 29.761724, 25.279764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.998451, 29.708015, 25.404707>,  <43.668869, 29.618500, 25.612944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998451, 29.708015, 25.404707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526650, 0.036644, 0.849292,
		0.209140, -0.973948, -0.087667,
		0.823954, 0.223791, -0.520594,
		44.245636, 29.775152, 25.248529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326153, 28.929663, 25.673725>,  <43.668869, 29.618500, 25.612944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326153, 28.929663, 25.673725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.589340, 28.642664, 25.765179>,  <43.747253, 28.470465, 25.820051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.589340, 28.642664, 25.765179>,  <43.326153, 28.929663, 25.673725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589340, 28.642664, 25.765179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577873, -0.286407, 0.764222,
		-0.482844, -0.634957, -0.603069,
		0.657971, -0.717497, 0.228634,
		43.786732, 28.427416, 25.833769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924873, 28.428045, 25.747911>,  <43.326153, 28.929663, 25.673725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924873, 28.428045, 25.747911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.273205, 28.386822, 25.940174>,  <43.482204, 28.362087, 26.055532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.273205, 28.386822, 25.940174>,  <42.924873, 28.428045, 25.747911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273205, 28.386822, 25.940174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491569, -0.175789, 0.852912,
		-0.003407, -0.979018, -0.203744,
		0.870832, -0.103060, 0.480656,
		43.534454, 28.355904, 26.084372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735786, 27.891567, 26.045107>,  <42.924873, 28.428045, 25.747911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735786, 27.891567, 26.045107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.057144, 28.038338, 26.232689>,  <43.249958, 28.126400, 26.345238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.057144, 28.038338, 26.232689>,  <42.735786, 27.891567, 26.045107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057144, 28.038338, 26.232689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468567, -0.096400, 0.878153,
		0.367426, -0.925241, 0.094482,
		0.803395, 0.366927, 0.468957,
		43.298164, 28.148417, 26.373377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801212, 27.493790, 26.656744>,  <42.735786, 27.891567, 26.045107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801212, 27.493790, 26.656744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.008213, 27.830256, 26.719521>,  <43.132416, 28.032135, 26.757187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.008213, 27.830256, 26.719521>,  <42.801212, 27.493790, 26.656744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008213, 27.830256, 26.719521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480362, 0.133806, 0.866804,
		0.708124, -0.523965, 0.473308,
		0.517506, 0.841164, 0.156942,
		43.163464, 28.082605, 26.766603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993023, 27.403770, 27.390543>,  <42.801212, 27.493790, 26.656744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993023, 27.403770, 27.390543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.007809, 27.778704, 27.251957>,  <43.016682, 28.003664, 27.168804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.007809, 27.778704, 27.251957>,  <42.993023, 27.403770, 27.390543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007809, 27.778704, 27.251957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505139, 0.316674, 0.802840,
		0.862246, 0.145338, 0.485189,
		0.036963, 0.937334, -0.346467,
		43.018898, 28.059904, 27.148018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181152, 27.798569, 27.915892>,  <42.993023, 27.403770, 27.390543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181152, 27.798569, 27.915892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009346, 28.072641, 27.680592>,  <42.906261, 28.237085, 27.539412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009346, 28.072641, 27.680592>,  <43.181152, 27.798569, 27.915892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009346, 28.072641, 27.680592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483761, 0.375470, 0.790568,
		0.762554, 0.624136, 0.170194,
		-0.429519, 0.685184, -0.588249,
		42.880489, 28.278196, 27.504118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249264, 28.366207, 28.294880>,  <43.181152, 27.798569, 27.915892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249264, 28.366207, 28.294880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.959454, 28.467228, 28.038355>,  <42.785568, 28.527840, 27.884439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.959454, 28.467228, 28.038355>,  <43.249264, 28.366207, 28.294880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959454, 28.467228, 28.038355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580972, 0.276869, 0.765386,
		0.370859, 0.927125, -0.053872,
		-0.724524, 0.252552, -0.641313,
		42.742096, 28.542994, 27.845961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948383, 28.998232, 28.581072>,  <43.249264, 28.366207, 28.294880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948383, 28.998232, 28.581072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.673637, 28.879726, 28.315609>,  <42.508789, 28.808622, 28.156330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.673637, 28.879726, 28.315609>,  <42.948383, 28.998232, 28.581072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673637, 28.879726, 28.315609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722993, 0.371681, 0.582352,
		0.074140, 0.879819, -0.469492,
		-0.686865, -0.296264, -0.663659,
		42.467579, 28.790848, 28.116510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642643, 29.576378, 28.316013>,  <42.948383, 28.998232, 28.581072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642643, 29.576378, 28.316013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.378002, 29.281622, 28.260477>,  <42.219219, 29.104769, 28.227156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.378002, 29.281622, 28.260477>,  <42.642643, 29.576378, 28.316013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378002, 29.281622, 28.260477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630008, 0.445834, 0.635863,
		-0.406662, 0.508159, -0.759211,
		-0.661602, -0.736890, -0.138841,
		42.179523, 29.060555, 28.218824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088867, 29.947739, 28.448547>,  <42.642643, 29.576378, 28.316013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088867, 29.947739, 28.448547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.969734, 29.566370, 28.467661>,  <41.898254, 29.337549, 28.479130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.969734, 29.566370, 28.467661>,  <42.088867, 29.947739, 28.448547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969734, 29.566370, 28.467661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728994, 0.259471, 0.633437,
		-0.616332, 0.153822, -0.772317,
		-0.297830, -0.953422, 0.047785,
		41.880386, 29.280344, 28.481997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314468, 29.914469, 28.227871>,  <42.088867, 29.947739, 28.448547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314468, 29.914469, 28.227871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.405586, 29.601969, 28.460339>,  <41.460258, 29.414469, 28.599819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.405586, 29.601969, 28.460339>,  <41.314468, 29.914469, 28.227871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405586, 29.601969, 28.460339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782291, 0.208542, 0.586967,
		-0.579767, -0.588351, -0.563661,
		0.227795, -0.781251, 0.581168,
		41.473927, 29.367594, 28.634689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667633, 29.688940, 28.340763>,  <41.314468, 29.914469, 28.227871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667633, 29.688940, 28.340763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.896214, 29.529829, 28.627878>,  <41.033360, 29.434362, 28.800146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.896214, 29.529829, 28.627878>,  <40.667633, 29.688940, 28.340763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896214, 29.529829, 28.627878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705017, 0.209683, 0.677484,
		-0.419997, -0.893199, -0.160618,
		0.571449, -0.397779, 0.717786,
		41.067650, 29.410496, 28.843214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252487, 29.416002, 28.766773>,  <40.667633, 29.688940, 28.340763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252487, 29.416002, 28.766773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.577812, 29.426748, 28.999254>,  <40.773006, 29.433195, 29.138742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.577812, 29.426748, 28.999254>,  <40.252487, 29.416002, 28.766773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577812, 29.426748, 28.999254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569682, 0.239775, 0.786111,
		-0.118241, -0.970457, 0.210316,
		0.813315, 0.026863, 0.581203,
		40.821808, 29.434807, 29.173615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153206, 28.948412, 29.280363>,  <40.252487, 29.416002, 28.766773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153206, 28.948412, 29.280363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.406879, 29.214027, 29.438789>,  <40.559082, 29.373396, 29.533846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.406879, 29.214027, 29.438789>,  <40.153206, 28.948412, 29.280363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406879, 29.214027, 29.438789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641819, 0.166479, 0.748567,
		0.431141, -0.728929, 0.531771,
		0.634180, 0.664039, 0.396065,
		40.597134, 29.413239, 29.557610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120552, 28.158396, 29.222935>,  <40.153206, 28.948412, 29.280363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120552, 28.158396, 29.222935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.758381, 27.991186, 29.193388>,  <39.541077, 27.890860, 29.175661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.758381, 27.991186, 29.193388>,  <40.120552, 28.158396, 29.222935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758381, 27.991186, 29.193388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213836, -0.298823, -0.930043,
		0.366709, -0.857881, 0.359951,
		-0.905427, -0.418025, -0.073865,
		39.486752, 27.865778, 29.171228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274727, 27.476982, 29.000317>,  <40.120552, 28.158396, 29.222935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274727, 27.476982, 29.000317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.888138, 27.478754, 28.897617>,  <39.656185, 27.479818, 28.835999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.888138, 27.478754, 28.897617>,  <40.274727, 27.476982, 29.000317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888138, 27.478754, 28.897617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228384, -0.442236, -0.867334,
		-0.117386, -0.896888, 0.426395,
		-0.966469, 0.004431, -0.256747,
		39.598198, 27.480083, 28.820593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007137, 26.828720, 28.701628>,  <40.274727, 27.476982, 29.000317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007137, 26.828720, 28.701628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.799934, 27.128994, 28.537607>,  <39.675613, 27.309158, 28.439196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.799934, 27.128994, 28.537607>,  <40.007137, 26.828720, 28.701628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799934, 27.128994, 28.537607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245181, -0.328960, -0.911960,
		-0.819485, -0.572939, -0.013650,
		-0.518007, 0.750684, -0.410051,
		39.644531, 27.354198, 28.414591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747417, 26.548124, 28.089872>,  <40.007137, 26.828720, 28.701628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747417, 26.548124, 28.089872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.692043, 26.942259, 28.049965>,  <39.658821, 27.178740, 28.026020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.692043, 26.942259, 28.049965>,  <39.747417, 26.548124, 28.089872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692043, 26.942259, 28.049965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309617, -0.052631, -0.949404,
		-0.940731, -0.162317, -0.297790,
		-0.138431, 0.985334, -0.099768,
		39.650513, 27.237860, 28.020035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480644, 26.661484, 27.390150>,  <39.747417, 26.548124, 28.089872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480644, 26.661484, 27.390150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.613091, 27.020662, 27.506115>,  <39.692558, 27.236170, 27.575693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.613091, 27.020662, 27.506115>,  <39.480644, 26.661484, 27.390150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613091, 27.020662, 27.506115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503214, 0.091864, -0.859265,
		-0.798208, 0.430407, -0.421442,
		0.331118, 0.897948, 0.289913,
		39.712425, 27.290047, 27.593088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305664, 27.014061, 26.852362>,  <39.480644, 26.661484, 27.390150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305664, 27.014061, 26.852362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.590790, 27.207695, 27.055363>,  <39.761864, 27.323875, 27.177164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.590790, 27.207695, 27.055363>,  <39.305664, 27.014061, 26.852362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590790, 27.207695, 27.055363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524467, 0.112519, -0.843963,
		-0.465654, 0.867756, -0.173682,
		0.712812, 0.484085, 0.507504,
		39.804634, 27.352921, 27.207615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472031, 27.634951, 26.327791>,  <39.305664, 27.014061, 26.852362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472031, 27.634951, 26.327791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.784721, 27.580254, 26.571169>,  <39.972336, 27.547436, 26.717196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.784721, 27.580254, 26.571169>,  <39.472031, 27.634951, 26.327791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784721, 27.580254, 26.571169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620072, 0.066459, -0.781725,
		0.066459, 0.988375, 0.136743,
		0.781725, -0.136743, 0.608447,
		40.019238, 27.539230, 26.753702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223606, 28.293407, 26.117241>,  <39.472031, 27.634951, 26.327791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223606, 28.293407, 26.117241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.980198, 28.415987, 25.824450>,  <38.834152, 28.489534, 25.648775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.980198, 28.415987, 25.824450>,  <39.223606, 28.293407, 26.117241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980198, 28.415987, 25.824450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774912, -0.030808, 0.631318,
		0.170916, 0.951388, 0.256218,
		-0.608522, 0.306449, -0.731977,
		38.797642, 28.507921, 25.604856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914791, 28.903223, 26.307314>,  <39.223606, 28.293407, 26.117241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914791, 28.903223, 26.307314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660408, 28.799263, 26.016655>,  <38.507778, 28.736887, 25.842260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660408, 28.799263, 26.016655>,  <38.914791, 28.903223, 26.307314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660408, 28.799263, 26.016655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771195, 0.248943, 0.585905,
		0.028618, 0.932995, -0.358749,
		-0.635955, -0.259898, -0.726646,
		38.469620, 28.721294, 25.798662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507046, 29.426817, 26.181208>,  <38.914791, 28.903223, 26.307314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507046, 29.426817, 26.181208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.290539, 29.117418, 26.049307>,  <38.160637, 28.931778, 25.970167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.290539, 29.117418, 26.049307>,  <38.507046, 29.426817, 26.181208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290539, 29.117418, 26.049307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803124, 0.359409, 0.475203,
		-0.249052, 0.522041, -0.815749,
		-0.541263, -0.773498, -0.329752,
		38.128159, 28.885368, 25.950382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745964, 29.689138, 26.196642>,  <38.507046, 29.426817, 26.181208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745964, 29.689138, 26.196642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.691673, 29.295513, 26.150690>,  <37.659100, 29.059338, 26.123119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.691673, 29.295513, 26.150690>,  <37.745964, 29.689138, 26.196642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691673, 29.295513, 26.150690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864300, 0.060926, 0.499273,
		-0.484317, 0.167058, -0.858795,
		-0.135730, -0.984063, -0.114881,
		37.650955, 29.000294, 26.116226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012688, 29.658171, 26.051146>,  <37.745964, 29.689138, 26.196642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012688, 29.658171, 26.051146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.126404, 29.307783, 26.207022>,  <37.194633, 29.097551, 26.300547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.126404, 29.307783, 26.207022>,  <37.012688, 29.658171, 26.051146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126404, 29.307783, 26.207022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801996, 0.005436, 0.597304,
		-0.525338, -0.482337, -0.700978,
		0.284292, -0.875969, 0.389688,
		37.211693, 29.044992, 26.323929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466866, 29.124863, 26.012215>,  <37.012688, 29.658171, 26.051146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466866, 29.124863, 26.012215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700279, 28.976727, 26.301306>,  <36.840328, 28.887844, 26.474760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700279, 28.976727, 26.301306>,  <36.466866, 29.124863, 26.012215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700279, 28.976727, 26.301306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811636, -0.236214, 0.534275,
		-0.027145, -0.898360, -0.438421,
		0.583533, -0.370341, 0.722729,
		36.875340, 28.865623, 26.518124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288788, 28.336878, 26.172190>,  <36.466866, 29.124863, 26.012215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288788, 28.336878, 26.172190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.440502, 28.532307, 26.486498>,  <36.531532, 28.649563, 26.675083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.440502, 28.532307, 26.486498>,  <36.288788, 28.336878, 26.172190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440502, 28.532307, 26.486498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893340, -0.027835, 0.448519,
		0.241006, -0.872079, 0.425903,
		0.379289, 0.488572, 0.785771,
		36.554291, 28.678879, 26.722229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.565342, 31.603323, 22.238592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.682682, 31.641212, 22.619112>,  <40.753086, 31.663946, 22.847424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.682682, 31.641212, 22.619112>,  <40.565342, 31.603323, 22.238592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682682, 31.641212, 22.619112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954485, 0.085123, 0.285853,
		-0.053903, -0.991858, 0.115376,
		0.293347, 0.094717, 0.951303,
		40.770687, 31.669630, 22.904503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183376, 31.173647, 22.720427>,  <40.565342, 31.603323, 22.238592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183376, 31.173647, 22.720427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.316364, 31.464737, 22.960386>,  <40.396156, 31.639391, 23.104362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.316364, 31.464737, 22.960386>,  <40.183376, 31.173647, 22.720427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316364, 31.464737, 22.960386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913905, 0.091516, 0.395477,
		0.232898, -0.679736, 0.695498,
		0.332469, 0.727726, 0.599900,
		40.416103, 31.683054, 23.140356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750389, 31.151031, 23.265654>,  <40.183376, 31.173647, 22.720427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750389, 31.151031, 23.265654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.899879, 31.518469, 23.317060>,  <39.989574, 31.738932, 23.347904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.899879, 31.518469, 23.317060>,  <39.750389, 31.151031, 23.265654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899879, 31.518469, 23.317060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692858, 0.184357, 0.697108,
		0.616667, -0.349569, 0.705354,
		0.373724, 0.918593, 0.128515,
		40.011997, 31.794046, 23.355616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613167, 31.336948, 23.965712>,  <39.750389, 31.151031, 23.265654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613167, 31.336948, 23.965712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.716068, 31.690170, 23.808722>,  <39.777809, 31.902103, 23.714527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.716068, 31.690170, 23.808722>,  <39.613167, 31.336948, 23.965712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716068, 31.690170, 23.808722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680973, 0.453824, 0.574734,
		0.685636, 0.119415, 0.718083,
		0.257251, 0.883054, -0.392476,
		39.793243, 31.955086, 23.690979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721882, 31.745516, 24.556171>,  <39.613167, 31.336948, 23.965712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721882, 31.745516, 24.556171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.644199, 31.997671, 24.255533>,  <39.597591, 32.148964, 24.075150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.644199, 31.997671, 24.255533>,  <39.721882, 31.745516, 24.556171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644199, 31.997671, 24.255533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594570, 0.533766, 0.601315,
		0.780238, 0.563653, 0.271151,
		-0.194202, 0.630388, -0.751596,
		39.585938, 32.186787, 24.030054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662567, 32.454678, 24.895142>,  <39.721882, 31.745516, 24.556171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662567, 32.454678, 24.895142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.482117, 32.501728, 24.541271>,  <39.373848, 32.529957, 24.328949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.482117, 32.501728, 24.541271>,  <39.662567, 32.454678, 24.895142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482117, 32.501728, 24.541271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702512, 0.564562, 0.433298,
		0.550421, 0.816966, -0.172054,
		-0.451125, 0.117627, -0.884675,
		39.346779, 32.537018, 24.275869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581238, 33.120941, 24.823252>,  <39.662567, 32.454678, 24.895142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581238, 33.120941, 24.823252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.321697, 32.930553, 24.585781>,  <39.165974, 32.816322, 24.443298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.321697, 32.930553, 24.585781>,  <39.581238, 33.120941, 24.823252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321697, 32.930553, 24.585781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760130, 0.440943, 0.477255,
		0.034622, 0.760938, -0.647900,
		-0.648848, -0.475965, -0.593678,
		39.127045, 32.787766, 24.407679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159439, 33.675671, 24.520090>,  <39.581238, 33.120941, 24.823252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159439, 33.675671, 24.520090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.963696, 33.326881, 24.514471>,  <38.846249, 33.117607, 24.511101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.963696, 33.326881, 24.514471>,  <39.159439, 33.675671, 24.520090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963696, 33.326881, 24.514471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680953, 0.371995, 0.630811,
		-0.544823, 0.318257, -0.775810,
		-0.489357, -0.871970, -0.014046,
		38.816887, 33.065289, 24.510258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570431, 33.951340, 24.527390>,  <39.159439, 33.675671, 24.520090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570431, 33.951340, 24.527390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.516724, 33.562653, 24.605101>,  <38.484501, 33.329441, 24.651728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.516724, 33.562653, 24.605101>,  <38.570431, 33.951340, 24.527390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516724, 33.562653, 24.605101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782137, 0.224301, 0.581336,
		-0.608469, -0.073896, -0.790130,
		-0.134268, -0.971714, 0.194277,
		38.476444, 33.271137, 24.663383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895866, 33.871910, 24.478504>,  <38.570431, 33.951340, 24.527390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895866, 33.871910, 24.478504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.995693, 33.554562, 24.700594>,  <38.055592, 33.364151, 24.833847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.995693, 33.554562, 24.700594>,  <37.895866, 33.871910, 24.478504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995693, 33.554562, 24.700594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794037, 0.160524, 0.586292,
		-0.554275, -0.587190, -0.589905,
		0.249570, -0.793372, 0.555225,
		38.070564, 33.316551, 24.867161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244625, 33.472824, 24.521559>,  <37.895866, 33.871910, 24.478504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244625, 33.472824, 24.521559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.476700, 33.346954, 24.822054>,  <37.615944, 33.271431, 25.002352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.476700, 33.346954, 24.822054>,  <37.244625, 33.472824, 24.521559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476700, 33.346954, 24.822054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785689, 0.026843, 0.618039,
		-0.214649, -0.948819, -0.231665,
		0.580188, -0.314678, 0.751239,
		37.650757, 33.252552, 25.047426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858311, 32.899429, 24.855122>,  <37.244625, 33.472824, 24.521559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858311, 32.899429, 24.855122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.104809, 33.011684, 25.149464>,  <37.252708, 33.079037, 25.326069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.104809, 33.011684, 25.149464>,  <36.858311, 32.899429, 24.855122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104809, 33.011684, 25.149464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787472, 0.232907, 0.570651,
		-0.011243, -0.931128, 0.364519,
		0.616249, 0.280632, 0.735856,
		37.289684, 33.095875, 25.370220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820274, 32.077957, 24.732033>,  <36.858311, 32.899429, 24.855122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820274, 32.077957, 24.732033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596397, 31.771154, 24.606529>,  <36.462070, 31.587072, 24.531227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596397, 31.771154, 24.606529>,  <36.820274, 32.077957, 24.732033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596397, 31.771154, 24.606529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441527, 0.044405, -0.896148,
		0.701287, -0.640097, 0.313802,
		-0.559688, -0.767009, -0.313761,
		36.428490, 31.541052, 24.512402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303776, 31.470644, 24.639475>,  <36.820274, 32.077957, 24.732033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303776, 31.470644, 24.639475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.973186, 31.412235, 24.421991>,  <36.774834, 31.377190, 24.291502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.973186, 31.412235, 24.421991>,  <37.303776, 31.470644, 24.639475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973186, 31.412235, 24.421991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553085, -0.030370, -0.832571,
		0.105061, -0.988815, 0.105862,
		-0.826474, -0.146022, -0.543708,
		36.725243, 31.368429, 24.258879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420013, 30.920231, 24.195860>,  <37.303776, 31.470644, 24.639475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420013, 30.920231, 24.195860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.108959, 31.105627, 24.025940>,  <36.922325, 31.216864, 23.923988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.108959, 31.105627, 24.025940>,  <37.420013, 30.920231, 24.195860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108959, 31.105627, 24.025940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378437, -0.194486, -0.904965,
		-0.502060, -0.864495, -0.024162,
		-0.777638, 0.463490, -0.424800,
		36.875668, 31.244675, 23.898500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054482, 30.463518, 23.864853>,  <37.420013, 30.920231, 24.195860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054482, 30.463518, 23.864853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.975449, 30.815546, 23.692141>,  <36.928028, 31.026764, 23.588512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.975449, 30.815546, 23.692141>,  <37.054482, 30.463518, 23.864853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975449, 30.815546, 23.692141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381014, -0.336890, -0.861007,
		-0.903211, -0.334632, -0.268757,
		-0.197580, 0.880072, -0.431782,
		36.916176, 31.079567, 23.562607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818172, 30.236647, 23.252420>,  <37.054482, 30.463518, 23.864853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818172, 30.236647, 23.252420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.916012, 30.620916, 23.199844>,  <36.974716, 30.851479, 23.168299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.916012, 30.620916, 23.199844>,  <36.818172, 30.236647, 23.252420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916012, 30.620916, 23.199844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396246, -0.222756, -0.890712,
		-0.884965, 0.165780, -0.435149,
		0.244595, 0.960675, -0.131442,
		36.989391, 30.909119, 23.160412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713543, 30.284637, 22.562635>,  <36.818172, 30.236647, 23.252420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713543, 30.284637, 22.562635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.939800, 30.592409, 22.681314>,  <37.075554, 30.777073, 22.752522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.939800, 30.592409, 22.681314>,  <36.713543, 30.284637, 22.562635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939800, 30.592409, 22.681314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628254, -0.169015, -0.759428,
		-0.534180, 0.615965, -0.578999,
		0.565641, 0.769429, 0.296697,
		37.109493, 30.823238, 22.770323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883423, 30.655890, 21.953394>,  <36.713543, 30.284637, 22.562635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883423, 30.655890, 21.953394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162498, 30.762192, 22.219507>,  <37.329945, 30.825974, 22.379175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162498, 30.762192, 22.219507>,  <36.883423, 30.655890, 21.953394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162498, 30.762192, 22.219507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709341, -0.126238, -0.693469,
		-0.100308, 0.955740, -0.276586,
		0.697692, 0.265754, 0.665282,
		37.371807, 30.841919, 22.419092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364456, 30.999863, 21.546471>,  <36.883423, 30.655890, 21.953394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364456, 30.999863, 21.546471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.548027, 30.886078, 21.883154>,  <37.658169, 30.817806, 22.085163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.548027, 30.886078, 21.883154>,  <37.364456, 30.999863, 21.546471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548027, 30.886078, 21.883154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862155, -0.086304, -0.499240,
		0.214658, 0.954794, 0.205644,
		0.458924, -0.284463, 0.841706,
		37.685703, 30.800739, 22.135666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992126, 31.398129, 21.568893>,  <37.364456, 30.999863, 21.546471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992126, 31.398129, 21.568893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040077, 31.082783, 21.810261>,  <38.068848, 30.893576, 21.955080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040077, 31.082783, 21.810261>,  <37.992126, 31.398129, 21.568893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040077, 31.082783, 21.810261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843124, -0.240072, -0.481152,
		0.524186, 0.566434, 0.635910,
		0.119876, -0.788364, 0.603417,
		38.076038, 30.846273, 21.991285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693161, 31.437077, 21.593561>,  <37.992126, 31.398129, 21.568893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693161, 31.437077, 21.593561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.626106, 31.087648, 21.776327>,  <38.585873, 30.877991, 21.885986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.626106, 31.087648, 21.776327>,  <38.693161, 31.437077, 21.593561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626106, 31.087648, 21.776327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900844, -0.324011, -0.288959,
		0.400472, 0.363167, 0.841268,
		-0.167640, -0.873571, 0.456914,
		38.575813, 30.825577, 21.913401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185196, 31.284203, 21.958855>,  <38.693161, 31.437077, 21.593561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185196, 31.284203, 21.958855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030258, 30.931543, 21.851032>,  <38.937294, 30.719948, 21.786339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030258, 30.931543, 21.851032>,  <39.185196, 31.284203, 21.958855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030258, 30.931543, 21.851032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876413, -0.261386, -0.404448,
		0.286123, -0.392903, 0.873934,
		-0.387343, -0.881649, -0.269557,
		38.914055, 30.667049, 21.770164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659885, 30.957201, 22.189739>,  <39.185196, 31.284203, 21.958855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659885, 30.957201, 22.189739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.471554, 30.737665, 21.913450>,  <39.358555, 30.605944, 21.747677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.471554, 30.737665, 21.913450>,  <39.659885, 30.957201, 22.189739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471554, 30.737665, 21.913450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880128, -0.238262, -0.410616,
		0.060790, -0.801253, 0.595230,
		-0.470828, -0.548840, -0.690721,
		39.330307, 30.573013, 21.706234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019611, 30.306763, 22.189554>,  <39.659885, 30.957201, 22.189739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019611, 30.306763, 22.189554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.812172, 30.305252, 21.847549>,  <39.687710, 30.304346, 21.642347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.812172, 30.305252, 21.847549>,  <40.019611, 30.306763, 22.189554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812172, 30.305252, 21.847549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811433, -0.317376, -0.490764,
		-0.269506, -0.948293, 0.167655,
		-0.518598, -0.003777, -0.855010,
		39.656593, 30.304119, 21.591045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190552, 29.747272, 22.631445>,  <40.019611, 30.306763, 22.189554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190552, 29.747272, 22.631445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.073910, 29.372297, 22.555368>,  <40.003925, 29.147312, 22.509722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.073910, 29.372297, 22.555368>,  <40.190552, 29.747272, 22.631445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073910, 29.372297, 22.555368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352420, -0.079554, 0.932454,
		-0.889250, 0.338938, -0.307174,
		-0.291607, -0.937439, -0.190192,
		39.986427, 29.091066, 22.498310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614815, 29.699919, 23.056782>,  <40.190552, 29.747272, 22.631445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614815, 29.699919, 23.056782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.696289, 29.312307, 23.000940>,  <39.745174, 29.079741, 22.967436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.696289, 29.312307, 23.000940>,  <39.614815, 29.699919, 23.056782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696289, 29.312307, 23.000940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331446, -0.202429, 0.921502,
		-0.921224, -0.141429, -0.362414,
		0.203690, -0.969031, -0.139606,
		39.757397, 29.021599, 22.959059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039993, 29.331377, 23.191782>,  <39.614815, 29.699919, 23.056782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039993, 29.331377, 23.191782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.321411, 29.051638, 23.242271>,  <39.490261, 28.883795, 23.272566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.321411, 29.051638, 23.242271>,  <39.039993, 29.331377, 23.191782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321411, 29.051638, 23.242271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451208, -0.302372, 0.839632,
		-0.549029, -0.647675, -0.528285,
		0.703547, -0.699348, 0.126225,
		39.532475, 28.841833, 23.280138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655807, 28.800566, 23.358147>,  <39.039993, 29.331377, 23.191782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655807, 28.800566, 23.358147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.018482, 28.722176, 23.507553>,  <39.236088, 28.675142, 23.597197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.018482, 28.722176, 23.507553>,  <38.655807, 28.800566, 23.358147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018482, 28.722176, 23.507553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419384, -0.324057, 0.848000,
		-0.045147, -0.925516, -0.376007,
		0.906686, -0.195976, 0.373516,
		39.290489, 28.663383, 23.619608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574966, 28.177774, 23.712557>,  <38.655807, 28.800566, 23.358147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574966, 28.177774, 23.712557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.912884, 28.350582, 23.838848>,  <39.115635, 28.454268, 23.914623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.912884, 28.350582, 23.838848>,  <38.574966, 28.177774, 23.712557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912884, 28.350582, 23.838848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204909, -0.283877, 0.936710,
		0.494305, -0.856022, -0.151292,
		0.844793, 0.432020, 0.315728,
		39.166321, 28.480188, 23.933567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733315, 27.808205, 24.266260>,  <38.574966, 28.177774, 23.712557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733315, 27.808205, 24.266260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.973892, 28.121977, 24.326834>,  <39.118240, 28.310240, 24.363178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.973892, 28.121977, 24.326834>,  <38.733315, 27.808205, 24.266260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973892, 28.121977, 24.326834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214803, -0.023791, 0.976367,
		0.769495, -0.619761, 0.154189,
		0.601446, 0.784430, 0.151434,
		39.154327, 28.357306, 24.372263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119846, 27.609852, 24.793293>,  <38.733315, 27.808205, 24.266260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119846, 27.609852, 24.793293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102146, 28.009220, 24.779459>,  <39.091526, 28.248842, 24.771158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102146, 28.009220, 24.779459>,  <39.119846, 27.609852, 24.793293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102146, 28.009220, 24.779459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299041, 0.019794, 0.954035,
		0.953214, 0.052558, 0.297693,
		-0.044250, 0.998422, -0.034585,
		39.088871, 28.308746, 24.769083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534309, 27.926249, 25.414965>,  <39.119846, 27.609852, 24.793293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534309, 27.926249, 25.414965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.251724, 28.176455, 25.282513>,  <39.082172, 28.326578, 25.203041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.251724, 28.176455, 25.282513>,  <39.534309, 27.926249, 25.414965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251724, 28.176455, 25.282513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476078, -0.073795, 0.876301,
		0.523704, 0.776714, 0.349927,
		-0.706458, 0.625515, -0.331130,
		39.039787, 28.364109, 25.183174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003212, 28.150997, 26.027248>,  <39.534309, 27.926249, 25.414965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003212, 28.150997, 26.027248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.183090, 27.895081, 26.276548>,  <40.291016, 27.741531, 26.426128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.183090, 27.895081, 26.276548>,  <40.003212, 28.150997, 26.027248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183090, 27.895081, 26.276548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756001, -0.098946, -0.647049,
		0.475644, 0.762154, 0.439186,
		0.449696, -0.639790, 0.623252,
		40.317997, 27.703144, 26.463524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680138, 28.403955, 26.122103>,  <40.003212, 28.150997, 26.027248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680138, 28.403955, 26.122103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.709976, 28.021250, 26.234558>,  <40.727879, 27.791626, 26.302031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.709976, 28.021250, 26.234558>,  <40.680138, 28.403955, 26.122103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709976, 28.021250, 26.234558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726502, -0.140979, -0.672547,
		0.683103, 0.254415, 0.684575,
		0.074596, -0.956764, 0.281136,
		40.732353, 27.734221, 26.318899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362808, 28.271305, 26.293892>,  <40.680138, 28.403955, 26.122103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362808, 28.271305, 26.293892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.213947, 27.911657, 26.201727>,  <41.124630, 27.695869, 26.146429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.213947, 27.911657, 26.201727>,  <41.362808, 28.271305, 26.293892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213947, 27.911657, 26.201727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761770, -0.154045, -0.629267,
		0.530292, -0.409704, 0.742249,
		-0.372153, -0.899118, -0.230411,
		41.102303, 27.641922, 26.132603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975853, 27.876606, 26.195831>,  <41.362808, 28.271305, 26.293892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975853, 27.876606, 26.195831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.704498, 27.652027, 26.006277>,  <41.541687, 27.517279, 25.892544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.704498, 27.652027, 26.006277>,  <41.975853, 27.876606, 26.195831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704498, 27.652027, 26.006277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694761, -0.280447, -0.662311,
		0.238954, -0.778540, 0.580325,
		-0.678386, -0.561449, -0.473885,
		41.500984, 27.483593, 25.864111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283730, 27.251986, 26.116009>,  <41.975853, 27.876606, 26.195831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283730, 27.251986, 26.116009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.998249, 27.287699, 25.838116>,  <41.826962, 27.309126, 25.671379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.998249, 27.287699, 25.838116>,  <42.283730, 27.251986, 26.116009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998249, 27.287699, 25.838116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668621, -0.208740, -0.713704,
		-0.208740, -0.973887, 0.089282,
		0.713704, -0.089282, 0.694734,
		41.784138, 27.314484, 25.629696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216236, 26.607580, 25.616520>,  <42.283730, 27.251986, 26.116009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216236, 26.607580, 25.616520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.024067, 26.883883, 25.400354>,  <41.908764, 27.049664, 25.270655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.024067, 26.883883, 25.400354>,  <42.216236, 26.607580, 25.616520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024067, 26.883883, 25.400354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546770, -0.245888, -0.800363,
		-0.685739, -0.679995, -0.259556,
		-0.480422, 0.690757, -0.540416,
		41.879940, 27.091110, 25.238230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006798, 26.323900, 24.961027>,  <42.216236, 26.607580, 25.616520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006798, 26.323900, 24.961027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.039516, 26.721355, 24.930061>,  <42.059147, 26.959829, 24.911482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.039516, 26.721355, 24.930061>,  <42.006798, 26.323900, 24.961027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039516, 26.721355, 24.930061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546955, -0.109685, -0.829946,
		-0.833157, 0.025546, -0.552447,
		0.081797, 0.993638, -0.077412,
		42.064056, 27.019447, 24.906837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924850, 26.437159, 24.199497>,  <42.006798, 26.323900, 24.961027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924850, 26.437159, 24.199497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.075218, 26.781330, 24.337099>,  <42.165440, 26.987833, 24.419661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.075218, 26.781330, 24.337099>,  <41.924850, 26.437159, 24.199497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075218, 26.781330, 24.337099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498348, 0.125257, -0.857881,
		-0.781236, 0.493933, -0.381707,
		0.375924, 0.860431, 0.344006,
		42.187996, 27.039459, 24.440300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815540, 26.868584, 23.715321>,  <41.924850, 26.437159, 24.199497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815540, 26.868584, 23.715321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.113838, 27.025944, 23.930391>,  <42.292816, 27.120359, 24.059433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.113838, 27.025944, 23.930391>,  <41.815540, 26.868584, 23.715321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113838, 27.025944, 23.930391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550816, 0.089926, -0.829768,
		-0.374783, 0.914958, -0.149630,
		0.745748, 0.393401, 0.537676,
		42.337563, 27.143965, 24.091694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.674423, 31.080853, 36.317970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906548, 31.384052, 36.198856>,  <33.045822, 31.565971, 36.127388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906548, 31.384052, 36.198856>,  <32.674423, 31.080853, 36.317970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906548, 31.384052, 36.198856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463613, -0.608102, -0.644419,
		-0.669555, 0.235904, -0.704305,
		0.580310, 0.757998, -0.297789,
		33.080639, 31.611452, 36.109520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601292, 31.081829, 35.577526>,  <32.674423, 31.080853, 36.317970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601292, 31.081829, 35.577526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953667, 31.240902, 35.680130>,  <33.165092, 31.336346, 35.741692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953667, 31.240902, 35.680130>,  <32.601292, 31.081829, 35.577526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953667, 31.240902, 35.680130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449405, -0.533183, -0.716764,
		-0.148275, 0.746703, -0.648421,
		0.880937, 0.397682, 0.256514,
		33.217949, 31.360207, 35.757084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888107, 31.181862, 34.978958>,  <32.601292, 31.081829, 35.577526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888107, 31.181862, 34.978958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.198799, 31.183620, 35.230888>,  <33.385212, 31.184675, 35.382046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.198799, 31.183620, 35.230888>,  <32.888107, 31.181862, 34.978958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198799, 31.183620, 35.230888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501395, -0.609506, -0.614089,
		0.381179, 0.792769, -0.475625,
		0.776727, 0.004398, 0.629822,
		33.431816, 31.184940, 35.419834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491531, 31.139843, 34.456230>,  <32.888107, 31.181862, 34.978958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491531, 31.139843, 34.456230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661346, 31.035028, 34.802895>,  <33.763237, 30.972139, 35.010895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661346, 31.035028, 34.802895>,  <33.491531, 31.139843, 34.456230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661346, 31.035028, 34.802895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548631, -0.687011, -0.476467,
		0.720258, 0.677756, -0.147901,
		0.424538, -0.262036, 0.866663,
		33.788708, 30.956417, 35.062893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138962, 31.321278, 34.459797>,  <33.491531, 31.139843, 34.456230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138962, 31.321278, 34.459797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126228, 31.028072, 34.731586>,  <34.118587, 30.852150, 34.894661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126228, 31.028072, 34.731586>,  <34.138962, 31.321278, 34.459797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126228, 31.028072, 34.731586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660655, -0.525559, -0.536024,
		0.750014, 0.431834, 0.500997,
		-0.031830, -0.733012, 0.679470,
		34.116680, 30.808168, 34.935429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835293, 31.194731, 34.725761>,  <34.138962, 31.321278, 34.459797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835293, 31.194731, 34.725761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614002, 30.862724, 34.754078>,  <34.481228, 30.663521, 34.771069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614002, 30.862724, 34.754078>,  <34.835293, 31.194731, 34.725761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614002, 30.862724, 34.754078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698109, -0.508317, -0.504239,
		0.454511, -0.229539, 0.860657,
		-0.553229, -0.830016, 0.070792,
		34.448032, 30.613720, 34.775314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375641, 30.649309, 34.897316>,  <34.835293, 31.194731, 34.725761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375641, 30.649309, 34.897316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046715, 30.456341, 34.776608>,  <34.849358, 30.340561, 34.704182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046715, 30.456341, 34.776608>,  <35.375641, 30.649309, 34.897316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046715, 30.456341, 34.776608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565850, -0.637276, -0.523157,
		0.060069, -0.600958, 0.797020,
		-0.822317, -0.482419, -0.301772,
		34.800018, 30.311615, 34.686077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554646, 30.023003, 35.173500>,  <35.375641, 30.649309, 34.897316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554646, 30.023003, 35.173500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268929, 29.982595, 34.896492>,  <35.097500, 29.958351, 34.730286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268929, 29.982595, 34.896492>,  <35.554646, 30.023003, 35.173500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268929, 29.982595, 34.896492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603090, -0.590886, -0.535851,
		-0.355071, -0.800406, 0.482986,
		-0.714288, -0.101019, -0.692523,
		35.054642, 29.952290, 34.688736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559261, 29.322248, 34.950508>,  <35.554646, 30.023003, 35.173500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559261, 29.322248, 34.950508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329639, 29.477121, 34.661911>,  <35.191868, 29.570045, 34.488754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329639, 29.477121, 34.661911>,  <35.559261, 29.322248, 34.950508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329639, 29.477121, 34.661911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426511, -0.610773, -0.667117,
		-0.698965, -0.690685, 0.185479,
		-0.574053, 0.387183, -0.721493,
		35.157425, 29.593277, 34.445461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148827, 28.795424, 34.658096>,  <35.559261, 29.322248, 34.950508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148827, 28.795424, 34.658096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195251, 29.091532, 34.393208>,  <35.223106, 29.269196, 34.234276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195251, 29.091532, 34.393208>,  <35.148827, 28.795424, 34.658096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195251, 29.091532, 34.393208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387060, -0.647724, -0.656230,
		-0.914721, -0.180156, -0.361704,
		0.116061, 0.740268, -0.662218,
		35.230068, 29.313612, 34.194542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131920, 28.479565, 34.034622>,  <35.148827, 28.795424, 34.658096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131920, 28.479565, 34.034622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321404, 28.821209, 33.948742>,  <35.435093, 29.026196, 33.897213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321404, 28.821209, 33.948742>,  <35.131920, 28.479565, 34.034622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321404, 28.821209, 33.948742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407308, -0.428623, -0.806463,
		-0.780836, 0.294576, -0.550927,
		0.473705, 0.854112, -0.214701,
		35.463516, 29.077442, 33.884331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885143, 28.664278, 33.243172>,  <35.131920, 28.479565, 34.034622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885143, 28.664278, 33.243172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212597, 28.843517, 33.386860>,  <35.409069, 28.951061, 33.473072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212597, 28.843517, 33.386860>,  <34.885143, 28.664278, 33.243172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212597, 28.843517, 33.386860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514375, -0.293864, -0.805644,
		-0.255443, 0.844306, -0.471058,
		0.818637, 0.448097, 0.359224,
		35.458187, 28.977947, 33.494629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425983, 29.047541, 32.605885>,  <34.885143, 28.664278, 33.243172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425983, 29.047541, 32.605885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.155991, 28.833105, 32.403103>,  <33.993996, 28.704443, 32.281433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.155991, 28.833105, 32.403103>,  <34.425983, 29.047541, 32.605885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155991, 28.833105, 32.403103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737152, 0.519458, 0.432169,
		0.031662, 0.665411, -0.745805,
		-0.674985, -0.536089, -0.506956,
		33.953495, 28.672279, 32.251015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914024, 29.539366, 32.366547>,  <34.425983, 29.047541, 32.605885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914024, 29.539366, 32.366547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740612, 29.178946, 32.361626>,  <33.636562, 28.962692, 32.358673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740612, 29.178946, 32.361626>,  <33.914024, 29.539366, 32.366547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740612, 29.178946, 32.361626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774449, 0.365574, 0.516319,
		-0.460735, 0.233367, -0.856308,
		-0.433536, -0.901053, -0.012299,
		33.610550, 28.908630, 32.357937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189400, 29.667297, 32.192245>,  <33.914024, 29.539366, 32.366547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189400, 29.667297, 32.192245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145718, 29.296347, 32.335381>,  <33.119511, 29.073776, 32.421261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145718, 29.296347, 32.335381>,  <33.189400, 29.667297, 32.192245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145718, 29.296347, 32.335381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841513, 0.277863, 0.463301,
		-0.529085, -0.250535, -0.810741,
		-0.109201, -0.927375, 0.357842,
		33.112957, 29.018135, 32.442734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444454, 29.394962, 32.096443>,  <33.189400, 29.667297, 32.192245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444454, 29.394962, 32.096443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589306, 29.189659, 32.407681>,  <32.676216, 29.066477, 32.594421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589306, 29.189659, 32.407681>,  <32.444454, 29.394962, 32.096443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589306, 29.189659, 32.407681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835647, 0.191082, 0.514959,
		-0.412987, -0.836692, -0.359706,
		0.362128, -0.513259, 0.778093,
		32.697945, 29.035681, 32.641109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889156, 28.943640, 32.332344>,  <32.444454, 29.394962, 32.096443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889156, 28.943640, 32.332344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140102, 28.994637, 32.639629>,  <32.290668, 29.025234, 32.824001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140102, 28.994637, 32.639629>,  <31.889156, 28.943640, 32.332344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140102, 28.994637, 32.639629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773230, 0.218963, 0.595122,
		-0.092337, -0.967368, 0.235951,
		0.627366, 0.127492, 0.768217,
		32.328312, 29.032885, 32.870094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493423, 28.639780, 32.896053>,  <31.889156, 28.943640, 32.332344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493423, 28.639780, 32.896053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.773952, 28.852407, 33.086037>,  <31.942270, 28.979984, 33.200027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.773952, 28.852407, 33.086037>,  <31.493423, 28.639780, 32.896053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773952, 28.852407, 33.086037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674532, 0.279369, 0.683345,
		0.230553, -0.799619, 0.554486,
		0.701322, 0.531565, 0.474959,
		31.984348, 29.011879, 33.228523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398357, 28.678076, 33.726421>,  <31.493423, 28.639780, 32.896053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398357, 28.678076, 33.726421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634884, 29.000624, 33.722233>,  <31.776800, 29.194153, 33.719719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634884, 29.000624, 33.722233>,  <31.398357, 28.678076, 33.726421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634884, 29.000624, 33.722233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550535, 0.413134, 0.725418,
		0.589283, -0.423187, 0.688228,
		0.591318, 0.806371, -0.010474,
		31.812279, 29.242535, 33.719090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435942, 28.905041, 34.500538>,  <31.398357, 28.678076, 33.726421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435942, 28.905041, 34.500538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.551546, 29.199093, 34.255245>,  <31.620909, 29.375525, 34.108070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.551546, 29.199093, 34.255245>,  <31.435942, 28.905041, 34.500538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551546, 29.199093, 34.255245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564789, 0.648146, 0.510804,
		0.772972, 0.198719, 0.602515,
		0.289012, 0.735131, -0.613233,
		31.638250, 29.419632, 34.071274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562881, 29.434837, 34.967766>,  <31.435942, 28.905041, 34.500538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562881, 29.434837, 34.967766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.534863, 29.618849, 34.613712>,  <31.518051, 29.729256, 34.401279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.534863, 29.618849, 34.613712>,  <31.562881, 29.434837, 34.967766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534863, 29.618849, 34.613712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462699, 0.771107, 0.437383,
		0.883744, 0.440189, 0.158842,
		-0.070047, 0.460030, -0.885136,
		31.513849, 29.756859, 34.348171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793190, 30.150869, 35.019184>,  <31.562881, 29.434837, 34.967766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793190, 30.150869, 35.019184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557936, 30.164394, 34.695961>,  <31.416782, 30.172510, 34.502029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557936, 30.164394, 34.695961>,  <31.793190, 30.150869, 35.019184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557936, 30.164394, 34.695961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529931, 0.738650, 0.416616,
		0.610956, 0.673240, -0.416509,
		-0.588137, 0.033813, -0.808054,
		31.381495, 30.174538, 34.453545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799362, 30.873175, 34.775791>,  <31.793190, 30.150869, 35.019184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799362, 30.873175, 34.775791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.480825, 30.689878, 34.617878>,  <31.289703, 30.579901, 34.523129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.480825, 30.689878, 34.617878>,  <31.799362, 30.873175, 34.775791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480825, 30.689878, 34.617878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565876, 0.794945, 0.218739,
		0.213599, 0.397591, -0.892355,
		-0.796341, -0.458240, -0.394787,
		31.241922, 30.552406, 34.499443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453985, 31.419493, 34.423599>,  <31.799362, 30.873175, 34.775791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453985, 31.419493, 34.423599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189598, 31.119408, 34.416618>,  <31.030966, 30.939358, 34.412430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189598, 31.119408, 34.416618>,  <31.453985, 31.419493, 34.423599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189598, 31.119408, 34.416618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745509, 0.659124, -0.098852,
		0.085660, -0.052330, -0.994949,
		-0.660968, -0.750211, -0.017448,
		30.991308, 30.894344, 34.411385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973257, 31.646059, 33.853561>,  <31.453985, 31.419493, 34.423599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973257, 31.646059, 33.853561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.801430, 31.379864, 34.097725>,  <30.698334, 31.220146, 34.244225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.801430, 31.379864, 34.097725>,  <30.973257, 31.646059, 33.853561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801430, 31.379864, 34.097725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778262, 0.615669, 0.123529,
		-0.458016, -0.421993, -0.782396,
		-0.429568, -0.665488, 0.610407,
		30.672560, 31.180218, 34.280846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333967, 31.598679, 33.721569>,  <30.973257, 31.646059, 33.853561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333967, 31.598679, 33.721569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.337074, 31.469145, 34.100002>,  <30.338940, 31.391424, 34.327061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.337074, 31.469145, 34.100002>,  <30.333967, 31.598679, 33.721569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337074, 31.469145, 34.100002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768202, 0.603748, 0.212965,
		-0.640160, -0.728437, -0.244080,
		0.007768, -0.323834, 0.946082,
		30.339405, 31.371994, 34.383827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559690, 31.390366, 33.885487>,  <30.333967, 31.598679, 33.721569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559690, 31.390366, 33.885487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.803152, 31.459789, 34.195175>,  <29.949230, 31.501444, 34.380989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.803152, 31.459789, 34.195175>,  <29.559690, 31.390366, 33.885487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803152, 31.459789, 34.195175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571187, 0.773124, 0.275727,
		-0.550712, -0.610047, 0.569701,
		0.608656, 0.173560, 0.774219,
		29.985748, 31.511858, 34.427441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600994, 31.859655, 33.334595>,  <29.559690, 31.390366, 33.885487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600994, 31.859655, 33.334595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.675488, 32.185883, 33.115444>,  <29.720182, 32.381618, 32.983955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.675488, 32.185883, 33.115444>,  <29.600994, 31.859655, 33.334595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675488, 32.185883, 33.115444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385337, -0.573585, -0.722852,
		-0.903788, -0.076499, -0.421088,
		0.186232, 0.815566, -0.547878,
		29.731358, 32.430553, 32.951080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396482, 31.689667, 32.613113>,  <29.600994, 31.859655, 33.334595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396482, 31.689667, 32.613113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.679592, 31.971649, 32.631413>,  <29.849457, 32.140839, 32.642391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.679592, 31.971649, 32.631413>,  <29.396482, 31.689667, 32.613113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679592, 31.971649, 32.631413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578001, -0.540642, -0.611246,
		-0.406170, 0.459065, -0.790117,
		0.707772, 0.704958, 0.045748,
		29.891924, 32.183136, 32.645138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729393, 31.752956, 31.928085>,  <29.396482, 31.689667, 32.613113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729393, 31.752956, 31.928085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.979834, 31.944162, 32.174500>,  <30.130098, 32.058884, 32.322350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.979834, 31.944162, 32.174500>,  <29.729393, 31.752956, 31.928085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979834, 31.944162, 32.174500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760013, -0.197526, -0.619164,
		-0.174285, 0.855855, -0.486967,
		0.626103, 0.478012, 0.616035,
		30.167664, 32.087566, 32.359310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073200, 32.374126, 31.605608>,  <29.729393, 31.752956, 31.928085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073200, 32.374126, 31.605608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.312479, 32.239838, 31.896662>,  <30.456045, 32.159264, 32.071293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.312479, 32.239838, 31.896662>,  <30.073200, 32.374126, 31.605608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312479, 32.239838, 31.896662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784872, 0.062263, -0.616522,
		0.161674, 0.939902, 0.300742,
		0.598195, -0.335719, 0.727637,
		30.491938, 32.139122, 32.114952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616051, 32.858013, 31.565754>,  <30.073200, 32.374126, 31.605608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616051, 32.858013, 31.565754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.730635, 32.529205, 31.762623>,  <30.799385, 32.331921, 31.880743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.730635, 32.529205, 31.762623>,  <30.616051, 32.858013, 31.565754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730635, 32.529205, 31.762623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733236, -0.142555, -0.664863,
		0.616689, 0.551335, 0.561895,
		0.286461, -0.822015, 0.492171,
		30.816572, 32.282600, 31.910275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264923, 32.950188, 31.849350>,  <30.616051, 32.858013, 31.565754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264923, 32.950188, 31.849350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258106, 32.551033, 31.824268>,  <31.254015, 32.311539, 31.809219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258106, 32.551033, 31.824268>,  <31.264923, 32.950188, 31.849350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258106, 32.551033, 31.824268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786430, 0.025348, -0.617159,
		0.617444, -0.059832, 0.784336,
		-0.017044, -0.997887, -0.062704,
		31.252993, 32.251667, 31.805456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034721, 32.703663, 31.842882>,  <31.264923, 32.950188, 31.849350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034721, 32.703663, 31.842882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802073, 32.422817, 31.678564>,  <31.662483, 32.254311, 31.579973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802073, 32.422817, 31.678564>,  <32.034721, 32.703663, 31.842882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802073, 32.422817, 31.678564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659361, -0.111163, -0.743563,
		0.476400, -0.703336, 0.527600,
		-0.581624, -0.702112, -0.410794,
		31.627584, 32.212185, 31.555326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435471, 32.221653, 31.567751>,  <32.034721, 32.703663, 31.842882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435471, 32.221653, 31.567751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.117298, 32.073235, 31.376076>,  <31.926395, 31.984182, 31.261070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.117298, 32.073235, 31.376076>,  <32.435471, 32.221653, 31.567751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117298, 32.073235, 31.376076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595245, -0.329682, -0.732798,
		0.113924, -0.868120, 0.483102,
		-0.795427, -0.371047, -0.479186,
		31.878670, 31.961920, 31.232319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440887, 31.525530, 31.402431>,  <32.435471, 32.221653, 31.567751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440887, 31.525530, 31.402431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195847, 31.659723, 31.116167>,  <32.048824, 31.740240, 30.944408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195847, 31.659723, 31.116167>,  <32.440887, 31.525530, 31.402431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195847, 31.659723, 31.116167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511271, -0.522314, -0.682488,
		-0.602766, -0.783988, 0.148445,
		-0.612597, 0.335484, -0.715663,
		32.012066, 31.760368, 30.901468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266293, 30.948881, 30.960157>,  <32.440887, 31.525530, 31.402431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266293, 30.948881, 30.960157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190823, 31.278246, 30.746092>,  <32.145542, 31.475864, 30.617653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190823, 31.278246, 30.746092>,  <32.266293, 30.948881, 30.960157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190823, 31.278246, 30.746092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421437, -0.424328, -0.801459,
		-0.887013, -0.376752, -0.266956,
		-0.188674, 0.823410, -0.535162,
		32.134220, 31.525269, 30.585543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209911, 30.663820, 30.257877>,  <32.266293, 30.948881, 30.960157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209911, 30.663820, 30.257877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243557, 31.057320, 30.194427>,  <32.263744, 31.293419, 30.156357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243557, 31.057320, 30.194427>,  <32.209911, 30.663820, 30.257877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243557, 31.057320, 30.194427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577230, -0.177862, -0.796976,
		-0.812238, -0.024529, -0.582810,
		0.084111, 0.983750, -0.158625,
		32.268791, 31.352444, 30.146839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213703, 30.693111, 29.557833>,  <32.209911, 30.663820, 30.257877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213703, 30.693111, 29.557833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.379379, 31.040115, 29.668013>,  <32.478783, 31.248318, 29.734121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.379379, 31.040115, 29.668013>,  <32.213703, 30.693111, 29.557833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379379, 31.040115, 29.668013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676784, -0.091174, -0.730514,
		-0.608616, 0.488990, -0.624881,
		0.414187, 0.867512, 0.275451,
		32.503635, 31.300369, 29.750648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299721, 31.067854, 28.975052>,  <32.213703, 30.693111, 29.557833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299721, 31.067854, 28.975052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.565010, 31.229128, 29.227266>,  <32.724182, 31.325893, 29.378595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.565010, 31.229128, 29.227266>,  <32.299721, 31.067854, 28.975052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565010, 31.229128, 29.227266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656208, 0.091864, -0.748967,
		-0.359898, 0.910495, -0.203648,
		0.663223, 0.403187, 0.630536,
		32.763977, 31.350084, 29.416428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586468, 31.610544, 28.634117>,  <32.299721, 31.067854, 28.975052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586468, 31.610544, 28.634117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855110, 31.513475, 28.914133>,  <33.016296, 31.455235, 29.082144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855110, 31.513475, 28.914133>,  <32.586468, 31.610544, 28.634117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855110, 31.513475, 28.914133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737286, 0.125546, -0.663813,
		0.073203, 0.961950, 0.263237,
		0.671603, -0.242674, 0.700042,
		33.056591, 31.440674, 29.124146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062138, 32.064495, 28.417307>,  <32.586468, 31.610544, 28.634117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062138, 32.064495, 28.417307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244347, 31.811642, 28.668036>,  <33.353672, 31.659931, 28.818474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244347, 31.811642, 28.668036>,  <33.062138, 32.064495, 28.417307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244347, 31.811642, 28.668036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837852, 0.066490, -0.541833,
		0.300832, 0.772004, 0.559920,
		0.455527, -0.632130, 0.626823,
		33.381004, 31.622002, 28.856083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696854, 32.418915, 28.620968>,  <33.062138, 32.064495, 28.417307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696854, 32.418915, 28.620968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.729759, 32.022129, 28.659431>,  <33.749504, 31.784058, 28.682510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.729759, 32.022129, 28.659431>,  <33.696854, 32.418915, 28.620968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729759, 32.022129, 28.659431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858417, 0.021508, -0.512501,
		0.506313, 0.124705, 0.853285,
		0.082264, -0.991961, 0.096159,
		33.754440, 31.724541, 28.688278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370907, 32.112476, 28.830406>,  <33.696854, 32.418915, 28.620968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370907, 32.112476, 28.830406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200783, 31.820372, 28.616556>,  <34.098709, 31.645109, 28.488247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200783, 31.820372, 28.616556>,  <34.370907, 32.112476, 28.830406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200783, 31.820372, 28.616556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867309, -0.160073, -0.471329,
		0.258616, -0.664147, 0.701446,
		-0.425314, -0.730264, -0.534623,
		34.073189, 31.601292, 28.456169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956474, 31.671139, 28.687458>,  <34.370907, 32.112476, 28.830406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956474, 31.671139, 28.687458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.684750, 31.514771, 28.439034>,  <34.521713, 31.420950, 28.289978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.684750, 31.514771, 28.439034>,  <34.956474, 31.671139, 28.687458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684750, 31.514771, 28.439034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707555, -0.124382, -0.695626,
		0.194687, -0.911980, 0.361094,
		-0.679311, -0.390923, -0.621060,
		34.480957, 31.397493, 28.252716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243401, 31.095467, 28.362131>,  <34.956474, 31.671139, 28.687458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243401, 31.095467, 28.362131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.942631, 31.181309, 28.112793>,  <34.762169, 31.232815, 27.963190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.942631, 31.181309, 28.112793>,  <35.243401, 31.095467, 28.362131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942631, 31.181309, 28.112793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646722, 0.056640, -0.760620,
		-0.127927, -0.975057, -0.181379,
		-0.751921, 0.214606, -0.623345,
		34.717056, 31.245691, 27.925789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364960, 30.604563, 27.718685>,  <35.243401, 31.095467, 28.362131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364960, 30.604563, 27.718685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090252, 30.859415, 27.578737>,  <34.925426, 31.012327, 27.494768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090252, 30.859415, 27.578737>,  <35.364960, 30.604563, 27.718685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090252, 30.859415, 27.578737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369680, -0.108274, -0.922829,
		-0.625846, -0.763111, -0.161176,
		-0.686770, 0.637133, -0.349870,
		34.884220, 31.050554, 27.473776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111500, 30.326620, 27.024973>,  <35.364960, 30.604563, 27.718685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111500, 30.326620, 27.024973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030483, 30.718330, 27.024601>,  <34.981873, 30.953356, 27.024378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030483, 30.718330, 27.024601>,  <35.111500, 30.326620, 27.024973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030483, 30.718330, 27.024601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293782, 0.059854, -0.953997,
		-0.934168, -0.193495, -0.299816,
		-0.202538, 0.979274, -0.000931,
		34.969723, 31.012112, 27.024323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634449, 30.403616, 26.553825>,  <35.111500, 30.326620, 27.024973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634449, 30.403616, 26.553825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815407, 30.759180, 26.582617>,  <34.923981, 30.972519, 26.599892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815407, 30.759180, 26.582617>,  <34.634449, 30.403616, 26.553825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815407, 30.759180, 26.582617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255913, -0.052076, -0.965296,
		-0.854313, 0.455113, -0.251043,
		0.452392, 0.888910, 0.071980,
		34.951126, 31.025852, 26.604212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434700, 30.799538, 25.779295>,  <34.634449, 30.403616, 26.553825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434700, 30.799538, 25.779295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743427, 30.972462, 25.965799>,  <34.928665, 31.076216, 26.077702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743427, 30.972462, 25.965799>,  <34.434700, 30.799538, 25.779295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743427, 30.972462, 25.965799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444822, 0.156866, -0.881775,
		-0.454339, 0.887977, -0.071228,
		0.771822, 0.432308, 0.466262,
		34.974976, 31.102154, 26.105679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541534, 31.403099, 25.396957>,  <34.434700, 30.799538, 25.779295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541534, 31.403099, 25.396957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894642, 31.336475, 25.572676>,  <35.106506, 31.296501, 25.678106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894642, 31.336475, 25.572676>,  <34.541534, 31.403099, 25.396957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894642, 31.336475, 25.572676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442579, -0.018901, -0.896530,
		0.157627, 0.985851, 0.057030,
		0.882767, -0.166557, 0.439296,
		35.159473, 31.286509, 25.704464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007492, 31.794348, 25.014540>,  <34.541534, 31.403099, 25.396957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007492, 31.794348, 25.014540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270805, 31.566420, 25.211300>,  <35.428795, 31.429663, 25.329355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270805, 31.566420, 25.211300>,  <35.007492, 31.794348, 25.014540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270805, 31.566420, 25.211300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660052, 0.122750, -0.741123,
		0.361927, 0.812550, 0.456915,
		0.658286, -0.569820, 0.491899,
		35.468292, 31.395473, 25.358870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591595, 32.159882, 25.178350>,  <35.007492, 31.794348, 25.014540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591595, 32.159882, 25.178350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711781, 31.778383, 25.174669>,  <35.783894, 31.549484, 25.172461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711781, 31.778383, 25.174669>,  <35.591595, 32.159882, 25.178350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711781, 31.778383, 25.174669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671285, 0.218314, -0.708319,
		0.677567, 0.206648, 0.705833,
		0.300466, -0.953748, -0.009203,
		35.801922, 31.492258, 25.171909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242039, 32.176983, 25.166376>,  <35.591595, 32.159882, 25.178350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242039, 32.176983, 25.166376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177151, 31.812986, 25.013750>,  <36.138218, 31.594587, 24.922174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177151, 31.812986, 25.013750>,  <36.242039, 32.176983, 25.166376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177151, 31.812986, 25.013750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699512, 0.166680, -0.694910,
		0.695965, -0.379640, 0.609514,
		-0.162222, -0.909995, -0.381566,
		36.128483, 31.539988, 24.899281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687984, 32.497650, 25.694523>,  <36.242039, 32.176983, 25.166376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687984, 32.497650, 25.694523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.910080, 32.823715, 25.760530>,  <37.043335, 33.019352, 25.800135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.910080, 32.823715, 25.760530>,  <36.687984, 32.497650, 25.694523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910080, 32.823715, 25.760530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624187, 0.277297, 0.730409,
		0.549641, -0.508550, 0.662776,
		0.555235, 0.815159, 0.165016,
		37.076653, 33.068264, 25.810036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754749, 32.580090, 26.468378>,  <36.687984, 32.497650, 25.694523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754749, 32.580090, 26.468378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839661, 32.945683, 26.330061>,  <36.890606, 33.165039, 26.247070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839661, 32.945683, 26.330061>,  <36.754749, 32.580090, 26.468378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839661, 32.945683, 26.330061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265454, 0.394483, 0.879726,
		0.940464, -0.094954, 0.326361,
		0.212277, 0.913984, -0.345791,
		36.903343, 33.219879, 26.226324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141064, 32.939976, 26.925917>,  <36.754749, 32.580090, 26.468378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141064, 32.939976, 26.925917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012917, 33.263172, 26.728123>,  <36.936028, 33.457092, 26.609447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012917, 33.263172, 26.728123>,  <37.141064, 32.939976, 26.925917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012917, 33.263172, 26.728123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114476, 0.485148, 0.866906,
		0.940352, 0.334333, -0.062928,
		-0.320365, 0.807993, -0.494483,
		36.916805, 33.505569, 26.579779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386513, 33.459629, 27.333570>,  <37.141064, 32.939976, 26.925917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386513, 33.459629, 27.333570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085861, 33.606640, 27.114491>,  <36.905468, 33.694847, 26.983042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085861, 33.606640, 27.114491>,  <37.386513, 33.459629, 27.333570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085861, 33.606640, 27.114491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420293, 0.373090, 0.827138,
		0.508336, 0.851897, -0.125958,
		-0.751631, 0.367525, -0.547701,
		36.860371, 33.716896, 26.950180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380711, 34.193489, 27.523771>,  <37.386513, 33.459629, 27.333570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380711, 34.193489, 27.523771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026512, 34.083706, 27.373800>,  <36.813992, 34.017838, 27.283817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026512, 34.083706, 27.373800>,  <37.380711, 34.193489, 27.523771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026512, 34.083706, 27.373800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454304, 0.342096, 0.822543,
		-0.097491, 0.898690, -0.427612,
		-0.885496, -0.274457, -0.374928,
		36.760864, 34.001369, 27.261322>
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
