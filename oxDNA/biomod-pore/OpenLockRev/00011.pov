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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.280174, 35.988583, 48.872944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122105, 35.682419, 49.076115>,  <40.027264, 35.498722, 49.198017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122105, 35.682419, 49.076115>,  <40.280174, 35.988583, 48.872944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122105, 35.682419, 49.076115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821167, -0.046514, 0.568790,
		-0.411730, 0.641862, 0.646909,
		-0.395175, -0.765408, 0.507925,
		40.003551, 35.452797, 49.228493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446091, 36.161377, 49.509361>,  <40.280174, 35.988583, 48.872944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446091, 36.161377, 49.509361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365917, 35.773064, 49.562134>,  <40.317814, 35.540077, 49.593796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365917, 35.773064, 49.562134>,  <40.446091, 36.161377, 49.509361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365917, 35.773064, 49.562134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810111, -0.088500, 0.579559,
		-0.550950, 0.223041, 0.804181,
		-0.200435, -0.970783, 0.131929,
		40.305786, 35.481827, 49.601711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479424, 36.044197, 50.172501>,  <40.446091, 36.161377, 49.509361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479424, 36.044197, 50.172501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555595, 35.688641, 50.005833>,  <40.601299, 35.475307, 49.905830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555595, 35.688641, 50.005833>,  <40.479424, 36.044197, 50.172501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555595, 35.688641, 50.005833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874522, -0.039246, 0.483395,
		-0.446037, -0.456439, 0.769880,
		0.190426, -0.888889, -0.416671,
		40.612724, 35.421974, 49.880833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656551, 35.532558, 50.762341>,  <40.479424, 36.044197, 50.172501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656551, 35.532558, 50.762341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815235, 35.371025, 50.432602>,  <40.910446, 35.274105, 50.234760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815235, 35.371025, 50.432602>,  <40.656551, 35.532558, 50.762341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815235, 35.371025, 50.432602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855924, -0.161760, 0.491150,
		-0.331689, -0.900417, 0.281482,
		0.396707, -0.403836, -0.824342,
		40.934246, 35.249874, 50.185299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991627, 34.946590, 51.006153>,  <40.656551, 35.532558, 50.762341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991627, 34.946590, 51.006153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143917, 35.017311, 50.643105>,  <41.235291, 35.059746, 50.425274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143917, 35.017311, 50.643105>,  <40.991627, 34.946590, 51.006153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143917, 35.017311, 50.643105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913231, -0.225920, 0.339072,
		-0.145101, -0.957967, -0.247479,
		0.380730, 0.176806, -0.907626,
		41.258137, 35.070354, 50.370815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614109, 34.548141, 51.068726>,  <40.991627, 34.946590, 51.006153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614109, 34.548141, 51.068726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657661, 34.782253, 50.747330>,  <41.683792, 34.922722, 50.554493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657661, 34.782253, 50.747330>,  <41.614109, 34.548141, 51.068726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657661, 34.782253, 50.747330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991515, -0.121688, 0.045724,
		-0.071013, -0.801647, -0.593564,
		0.108884, 0.585281, -0.803486,
		41.690327, 34.957836, 50.506283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916153, 34.106899, 50.595230>,  <41.614109, 34.548141, 51.068726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916153, 34.106899, 50.595230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001118, 34.493969, 50.540855>,  <42.052097, 34.726212, 50.508228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001118, 34.493969, 50.540855>,  <41.916153, 34.106899, 50.595230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001118, 34.493969, 50.540855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972082, -0.195060, 0.130419,
		0.099687, -0.159849, -0.982095,
		0.212415, 0.967678, -0.135941,
		42.064842, 34.784271, 50.500072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524849, 34.058353, 50.187904>,  <41.916153, 34.106899, 50.595230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524849, 34.058353, 50.187904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531185, 34.432819, 50.328388>,  <42.534985, 34.657497, 50.412678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531185, 34.432819, 50.328388>,  <42.524849, 34.058353, 50.187904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531185, 34.432819, 50.328388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998377, 0.004415, -0.056790,
		-0.054715, 0.351536, -0.934574,
		0.015837, 0.936164, 0.351207,
		42.535934, 34.713669, 50.433750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156410, 34.377945, 49.824219>,  <42.524849, 34.058353, 50.187904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156410, 34.377945, 49.824219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093365, 34.628834, 50.129311>,  <43.055538, 34.779366, 50.312366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093365, 34.628834, 50.129311>,  <43.156410, 34.377945, 49.824219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093365, 34.628834, 50.129311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986086, 0.141295, 0.087583,
		-0.052836, 0.765920, -0.640762,
		-0.157617, 0.627218, 0.762728,
		43.046078, 34.816998, 50.358128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631149, 34.893864, 49.680271>,  <43.156410, 34.377945, 49.824219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631149, 34.893864, 49.680271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532848, 34.918480, 50.067223>,  <43.473869, 34.933250, 50.299393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532848, 34.918480, 50.067223>,  <43.631149, 34.893864, 49.680271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532848, 34.918480, 50.067223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933735, 0.283002, 0.219202,
		-0.260280, 0.957143, -0.127012,
		-0.245752, 0.061541, 0.967377,
		43.459122, 34.936943, 50.357437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981628, 35.561108, 50.022663>,  <43.631149, 34.893864, 49.680271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981628, 35.561108, 50.022663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881374, 35.316589, 50.322929>,  <43.821220, 35.169876, 50.503090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881374, 35.316589, 50.322929>,  <43.981628, 35.561108, 50.022663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881374, 35.316589, 50.322929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900566, 0.137277, 0.412475,
		-0.355195, 0.779402, 0.516110,
		-0.250634, -0.611300, 0.750663,
		43.806183, 35.133198, 50.548130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299145, 35.827618, 50.517975>,  <43.981628, 35.561108, 50.022663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299145, 35.827618, 50.517975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212749, 35.467533, 50.669224>,  <44.160912, 35.251484, 50.759972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212749, 35.467533, 50.669224>,  <44.299145, 35.827618, 50.517975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212749, 35.467533, 50.669224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912637, -0.048480, 0.405886,
		-0.347050, 0.432753, 0.832034,
		-0.215985, -0.900208, 0.378122,
		44.147953, 35.197472, 50.782661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614643, 35.874680, 51.237366>,  <44.299145, 35.827618, 50.517975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614643, 35.874680, 51.237366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569416, 35.482101, 51.175415>,  <44.542282, 35.246555, 51.138245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569416, 35.482101, 51.175415>,  <44.614643, 35.874680, 51.237366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569416, 35.482101, 51.175415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881299, -0.171044, 0.440517,
		-0.458833, -0.086686, 0.884284,
		-0.113065, -0.981442, -0.154877,
		44.535496, 35.187668, 51.128952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588104, 35.452595, 51.921261>,  <44.614643, 35.874680, 51.237366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588104, 35.452595, 51.921261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723274, 35.202698, 51.639694>,  <44.804379, 35.052757, 51.470753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723274, 35.202698, 51.639694>,  <44.588104, 35.452595, 51.921261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723274, 35.202698, 51.639694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807460, -0.191807, 0.557870,
		-0.483543, -0.756904, 0.439640,
		0.337927, -0.624746, -0.703916,
		44.824654, 35.015274, 51.428520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.988461, 34.881351, 52.288418>,  <44.588104, 35.452595, 51.921261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.988461, 34.881351, 52.288418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116547, 34.884960, 51.909496>,  <45.193398, 34.887127, 51.682144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116547, 34.884960, 51.909496>,  <44.988461, 34.881351, 52.288418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116547, 34.884960, 51.909496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903937, -0.302134, 0.302675,
		-0.283481, -0.953223, -0.104904,
		0.320212, 0.009024, -0.947303,
		45.212608, 34.887669, 51.625305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434624, 34.412445, 52.355221>,  <44.988461, 34.881351, 52.288418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434624, 34.412445, 52.355221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530602, 34.590645, 52.010208>,  <45.588188, 34.697563, 51.803200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530602, 34.590645, 52.010208>,  <45.434624, 34.412445, 52.355221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530602, 34.590645, 52.010208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946422, -0.305156, 0.105664,
		-0.216133, -0.841670, -0.494851,
		0.239941, 0.445500, -0.862530,
		45.602585, 34.724297, 51.751450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835541, 33.889481, 51.942532>,  <45.434624, 34.412445, 52.355221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835541, 33.889481, 51.942532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950947, 34.244629, 51.799175>,  <46.020191, 34.457718, 51.713161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950947, 34.244629, 51.799175>,  <45.835541, 33.889481, 51.942532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.950947, 34.244629, 51.799175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957292, -0.260164, 0.126119,
		0.018736, -0.379476, -0.925012,
		0.288514, 0.887870, -0.358395,
		46.037502, 34.510990, 51.691658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564301, 33.827705, 51.712463>,  <45.835541, 33.889481, 51.942532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564301, 33.827705, 51.712463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.519455, 34.224937, 51.726414>,  <46.492546, 34.463276, 51.734783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.519455, 34.224937, 51.726414>,  <46.564301, 33.827705, 51.712463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.519455, 34.224937, 51.726414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970335, 0.101846, 0.219265,
		0.214196, 0.058427, -0.975042,
		-0.112115, 0.993083, 0.034879,
		46.485821, 34.522861, 51.736877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066730, 34.170555, 51.287426>,  <46.564301, 33.827705, 51.712463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066730, 34.170555, 51.287426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946209, 34.437088, 51.560253>,  <46.873894, 34.597008, 51.723949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946209, 34.437088, 51.560253>,  <47.066730, 34.170555, 51.287426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.946209, 34.437088, 51.560253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926336, 0.374155, 0.043687,
		-0.226088, 0.644984, -0.729986,
		-0.301305, 0.666336, 0.682064,
		46.855816, 34.636990, 51.764874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.635464, 34.709087, 51.299564>,  <47.066730, 34.170555, 51.287426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.635464, 34.709087, 51.299564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446766, 34.767414, 51.647404>,  <47.333549, 34.802410, 51.856106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446766, 34.767414, 51.647404>,  <47.635464, 34.709087, 51.299564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446766, 34.767414, 51.647404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876924, 0.180492, 0.445452,
		-0.092001, 0.972708, -0.213014,
		-0.471742, 0.145815, 0.869596,
		47.305244, 34.811157, 51.908283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.884762, 35.405029, 51.583038>,  <47.635464, 34.709087, 51.299564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.884762, 35.405029, 51.583038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725937, 35.174507, 51.868755>,  <47.630642, 35.036194, 52.040184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725937, 35.174507, 51.868755>,  <47.884762, 35.405029, 51.583038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.725937, 35.174507, 51.868755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828400, 0.109986, 0.549233,
		-0.395087, 0.809801, 0.433738,
		-0.397064, -0.576304, 0.714293,
		47.606819, 35.001617, 52.083042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.125710, 35.151031, 51.974689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.293947, 34.788258, 51.984295>,  <24.394890, 34.570595, 51.990059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.293947, 34.788258, 51.984295>,  <24.125710, 35.151031, 51.974689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293947, 34.788258, 51.984295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888654, 0.406498, -0.212259,
		0.182741, 0.110618, 0.976918,
		0.420595, -0.906930, 0.024017,
		24.420126, 34.516178, 51.991501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760813, 35.164730, 52.309311>,  <24.125710, 35.151031, 51.974689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760813, 35.164730, 52.309311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.787132, 34.852131, 52.061138>,  <24.802923, 34.664570, 51.912235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.787132, 34.852131, 52.061138>,  <24.760813, 35.164730, 52.309311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.787132, 34.852131, 52.061138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965231, 0.207487, -0.158991,
		0.252982, -0.588395, 0.767978,
		0.065796, -0.781498, -0.620428,
		24.806871, 34.617680, 51.875011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210546, 34.717140, 52.577354>,  <24.760813, 35.164730, 52.309311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210546, 34.717140, 52.577354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.212301, 34.652332, 52.182644>,  <25.213354, 34.613449, 51.945816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.212301, 34.652332, 52.182644>,  <25.210546, 34.717140, 52.577354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212301, 34.652332, 52.182644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990663, -0.133759, 0.026364,
		-0.136262, -0.977680, 0.159919,
		0.004385, -0.162018, -0.986778,
		25.213617, 34.603725, 51.886612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708136, 34.200516, 52.501240>,  <25.210546, 34.717140, 52.577354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708136, 34.200516, 52.501240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.673342, 34.340336, 52.128090>,  <25.652466, 34.424229, 51.904202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.673342, 34.340336, 52.128090>,  <25.708136, 34.200516, 52.501240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673342, 34.340336, 52.128090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984134, -0.115207, -0.134934,
		-0.154639, -0.929807, -0.333984,
		-0.086985, 0.349551, -0.932871,
		25.647245, 34.445202, 51.848228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191828, 33.829227, 52.249176>,  <25.708136, 34.200516, 52.501240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191828, 33.829227, 52.249176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.144735, 34.126320, 51.985512>,  <26.116480, 34.304577, 51.827312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.144735, 34.126320, 51.985512>,  <26.191828, 33.829227, 52.249176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144735, 34.126320, 51.985512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966319, -0.067275, -0.248400,
		-0.228839, -0.666202, -0.709795,
		-0.117733, 0.742731, -0.659158,
		26.109415, 34.349140, 51.787766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717993, 33.671696, 51.737221>,  <26.191828, 33.829227, 52.249176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717993, 33.671696, 51.737221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.627430, 34.048691, 51.638874>,  <26.573092, 34.274887, 51.579865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.627430, 34.048691, 51.638874>,  <26.717993, 33.671696, 51.737221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627430, 34.048691, 51.638874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845400, 0.064773, -0.530192,
		-0.483776, -0.327894, -0.811447,
		-0.226407, 0.942491, -0.245866,
		26.559507, 34.331440, 51.565113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876005, 33.644985, 51.052559>,  <26.717993, 33.671696, 51.737221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876005, 33.644985, 51.052559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.899229, 34.031067, 51.154549>,  <26.913164, 34.262714, 51.215740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.899229, 34.031067, 51.154549>,  <26.876005, 33.644985, 51.052559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899229, 34.031067, 51.154549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926257, 0.043188, -0.374409,
		-0.372393, 0.257909, -0.891519,
		0.058061, 0.965204, 0.254973,
		26.916647, 34.320629, 51.231041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157364, 34.016270, 50.546944>,  <26.876005, 33.644985, 51.052559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157364, 34.016270, 50.546944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.223063, 34.282650, 50.838020>,  <27.262482, 34.442478, 51.012665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.223063, 34.282650, 50.838020>,  <27.157364, 34.016270, 50.546944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223063, 34.282650, 50.838020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981901, -0.039842, -0.185159,
		-0.094314, 0.744932, -0.660441,
		0.164244, 0.665950, 0.727691,
		27.272335, 34.482433, 51.056328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448540, 34.595768, 50.273659>,  <27.157364, 34.016270, 50.546944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448540, 34.595768, 50.273659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.571058, 34.626225, 50.653214>,  <27.644569, 34.644501, 50.880947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.571058, 34.626225, 50.653214>,  <27.448540, 34.595768, 50.273659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571058, 34.626225, 50.653214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949623, 0.045008, -0.310144,
		-0.066323, 0.996081, -0.058522,
		0.306295, 0.076144, 0.948886,
		27.662947, 34.649067, 50.937878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018114, 35.101208, 50.328053>,  <27.448540, 34.595768, 50.273659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018114, 35.101208, 50.328053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.059307, 34.910587, 50.677292>,  <28.084023, 34.796215, 50.886833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.059307, 34.910587, 50.677292>,  <28.018114, 35.101208, 50.328053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059307, 34.910587, 50.677292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993800, 0.086266, -0.070136,
		-0.041895, 0.874904, 0.482480,
		0.102984, -0.476550, 0.873095,
		28.090202, 34.767624, 50.939220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607206, 35.348988, 50.436077>,  <28.018114, 35.101208, 50.328053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607206, 35.348988, 50.436077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.580191, 35.081966, 50.732674>,  <28.563982, 34.921753, 50.910629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.580191, 35.081966, 50.732674>,  <28.607206, 35.348988, 50.436077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580191, 35.081966, 50.732674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986897, 0.064454, 0.147921,
		-0.146538, 0.741763, 0.654457,
		-0.067539, -0.667558, 0.741489,
		28.559929, 34.881699, 50.955120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011347, 35.548321, 51.021278>,  <28.607206, 35.348988, 50.436077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011347, 35.548321, 51.021278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.996502, 35.148624, 51.016457>,  <28.987595, 34.908806, 51.013565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.996502, 35.148624, 51.016457>,  <29.011347, 35.548321, 51.021278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996502, 35.148624, 51.016457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992211, -0.035410, -0.119429,
		0.118912, -0.016388, 0.992770,
		-0.037111, -0.999238, -0.012050,
		28.985369, 34.848854, 51.012840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546362, 35.362240, 51.452660>,  <29.011347, 35.548321, 51.021278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546362, 35.362240, 51.452660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.468491, 35.037968, 51.231792>,  <29.421768, 34.843403, 51.099270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.468491, 35.037968, 51.231792>,  <29.546362, 35.362240, 51.452660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468491, 35.037968, 51.231792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978401, -0.120608, -0.167884,
		0.069504, -0.572927, 0.816654,
		-0.194680, -0.810684, -0.552170,
		29.410086, 34.794762, 51.066143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034195, 34.879852, 51.690765>,  <29.546362, 35.362240, 51.452660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034195, 34.879852, 51.690765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.922911, 34.760910, 51.325432>,  <29.856140, 34.689545, 51.106232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.922911, 34.760910, 51.325432>,  <30.034195, 34.879852, 51.690765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922911, 34.760910, 51.325432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959339, -0.038895, -0.279563,
		0.047606, -0.953975, 0.296084,
		-0.278212, -0.297354, -0.913334,
		29.839447, 34.671703, 51.051430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444475, 34.262115, 51.583714>,  <30.034195, 34.879852, 51.690765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444475, 34.262115, 51.583714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.313364, 34.381523, 51.225174>,  <30.234697, 34.453167, 51.010048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.313364, 34.381523, 51.225174>,  <30.444475, 34.262115, 51.583714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313364, 34.381523, 51.225174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924765, -0.092757, -0.369060,
		-0.193314, -0.949886, -0.245656,
		-0.327779, 0.298519, -0.896352,
		30.215031, 34.471077, 50.956268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749521, 33.825230, 51.189556>,  <30.444475, 34.262115, 51.583714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749521, 33.825230, 51.189556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.641727, 34.116131, 50.937054>,  <30.577051, 34.290672, 50.785553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.641727, 34.116131, 50.937054>,  <30.749521, 33.825230, 51.189556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641727, 34.116131, 50.937054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936620, 0.045544, -0.347374,
		-0.223879, -0.684857, -0.693433,
		-0.269483, 0.727252, -0.631255,
		30.560883, 34.334305, 50.747677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919882, 33.600124, 50.500381>,  <30.749521, 33.825230, 51.189556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919882, 33.600124, 50.500381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.913721, 34.000027, 50.506813>,  <30.910025, 34.239967, 50.510674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.913721, 34.000027, 50.506813>,  <30.919882, 33.600124, 50.500381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913721, 34.000027, 50.506813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919354, 0.020483, -0.392897,
		-0.393129, 0.008729, -0.919442,
		-0.015403, 0.999752, 0.016078,
		30.909100, 34.299953, 50.511635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259474, 33.706623, 49.893929>,  <30.919882, 33.600124, 50.500381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259474, 33.706623, 49.893929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.257074, 34.076145, 50.047058>,  <31.255634, 34.297859, 50.138935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.257074, 34.076145, 50.047058>,  <31.259474, 33.706623, 49.893929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257074, 34.076145, 50.047058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845849, 0.208889, -0.490820,
		-0.533388, 0.320870, -0.782649,
		-0.005998, 0.923801, 0.382826,
		31.255276, 34.353287, 50.161907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332329, 34.084057, 49.350159>,  <31.259474, 33.706623, 49.893929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332329, 34.084057, 49.350159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.432928, 34.329510, 49.649544>,  <31.493288, 34.476784, 49.829174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.432928, 34.329510, 49.649544>,  <31.332329, 34.084057, 49.350159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432928, 34.329510, 49.649544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782531, 0.326154, -0.530348,
		-0.569555, 0.719079, -0.398161,
		0.251500, 0.613635, 0.748465,
		31.508379, 34.513599, 49.874084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560156, 34.752834, 48.991585>,  <31.332329, 34.084057, 49.350159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560156, 34.752834, 48.991585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.716063, 34.781982, 49.358795>,  <31.809607, 34.799473, 49.579121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.716063, 34.781982, 49.358795>,  <31.560156, 34.752834, 48.991585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716063, 34.781982, 49.358795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861749, 0.322688, -0.391487,
		-0.324765, 0.943696, 0.062975,
		0.389766, 0.072872, 0.918026,
		31.832993, 34.803844, 49.634205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693426, 35.370556, 49.016472>,  <31.560156, 34.752834, 48.991585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693426, 35.370556, 49.016472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.916008, 35.188282, 49.294384>,  <32.049557, 35.078918, 49.461132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.916008, 35.188282, 49.294384>,  <31.693426, 35.370556, 49.016472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916008, 35.188282, 49.294384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830034, 0.342579, -0.440095,
		-0.037471, 0.821579, 0.568861,
		0.556452, -0.455683, 0.694776,
		32.082943, 35.051579, 49.502815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.537834, 34.922550, 34.678993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.472094, 34.700462, 35.005112>,  <24.432650, 34.567207, 35.200783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.472094, 34.700462, 35.005112>,  <24.537834, 34.922550, 34.678993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472094, 34.700462, 35.005112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106691, -0.831697, -0.544883,
		0.980615, -0.002568, 0.195928,
		-0.164352, -0.555224, 0.815301,
		24.422789, 34.533894, 35.249702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635363, 35.662601, 34.660801>,  <24.537834, 34.922550, 34.678993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635363, 35.662601, 34.660801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.632998, 36.023628, 34.488594>,  <24.631578, 36.240242, 34.385269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.632998, 36.023628, 34.488594>,  <24.635363, 35.662601, 34.660801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.632998, 36.023628, 34.488594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972611, 0.105231, 0.207254,
		0.232363, -0.417499, -0.878466,
		-0.005913, 0.902564, -0.430515,
		24.631224, 36.294399, 34.359440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077696, 35.945045, 34.015331>,  <24.635363, 35.662601, 34.660801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077696, 35.945045, 34.015331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.026239, 36.240757, 34.279732>,  <24.995365, 36.418182, 34.438374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.026239, 36.240757, 34.279732>,  <25.077696, 35.945045, 34.015331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.026239, 36.240757, 34.279732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968078, -0.050973, 0.245413,
		0.215121, 0.671471, -0.709119,
		-0.128642, 0.739276, 0.661001,
		24.987646, 36.462540, 34.478031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748140, 36.465717, 33.999969>,  <25.077696, 35.945045, 34.015331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748140, 36.465717, 33.999969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.540485, 36.444317, 34.341175>,  <25.415892, 36.431477, 34.545898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.540485, 36.444317, 34.341175>,  <25.748140, 36.465717, 33.999969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540485, 36.444317, 34.341175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840194, -0.214978, 0.497855,
		0.156744, 0.975152, 0.156554,
		-0.519140, -0.053500, 0.853013,
		25.384743, 36.428268, 34.597080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144354, 36.764198, 34.441708>,  <25.748140, 36.465717, 33.999969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144354, 36.764198, 34.441708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.896881, 36.530788, 34.652130>,  <25.748398, 36.390743, 34.778381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.896881, 36.530788, 34.652130>,  <26.144354, 36.764198, 34.441708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896881, 36.530788, 34.652130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765804, -0.298396, 0.569653,
		-0.175435, 0.755286, 0.631479,
		-0.618682, -0.583526, 0.526052,
		25.711277, 36.355732, 34.809944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178442, 36.928795, 35.116787>,  <26.144354, 36.764198, 34.441708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178442, 36.928795, 35.116787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.117836, 36.538502, 35.053547>,  <26.081472, 36.304325, 35.015602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.117836, 36.538502, 35.053547>,  <26.178442, 36.928795, 35.116787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117836, 36.538502, 35.053547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916004, -0.198709, 0.348500,
		-0.371457, -0.092016, 0.923879,
		-0.151515, -0.975729, -0.158099,
		26.072382, 36.245785, 35.006119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211571, 37.669319, 34.858139>,  <26.178442, 36.928795, 35.116787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211571, 37.669319, 34.858139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.961075, 37.448242, 35.078087>,  <25.810778, 37.315598, 35.210056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.961075, 37.448242, 35.078087>,  <26.211571, 37.669319, 34.858139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961075, 37.448242, 35.078087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454844, 0.313819, 0.833447,
		-0.633199, 0.772042, 0.054863,
		-0.626239, -0.552692, 0.549869,
		25.773203, 37.282433, 35.243046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730949, 38.118923, 35.222530>,  <26.211571, 37.669319, 34.858139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730949, 38.118923, 35.222530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.767971, 38.317894, 35.567551>,  <26.790184, 38.437279, 35.774563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.767971, 38.317894, 35.567551>,  <26.730949, 38.118923, 35.222530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767971, 38.317894, 35.567551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484608, -0.734245, 0.475436,
		0.869821, -0.462005, 0.173100,
		0.092556, 0.497430, 0.862553,
		26.795738, 38.467121, 35.826317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785265, 37.534561, 35.692295>,  <26.730949, 38.118923, 35.222530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785265, 37.534561, 35.692295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.667263, 37.863365, 35.887138>,  <26.596462, 38.060646, 36.004044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.667263, 37.863365, 35.887138>,  <26.785265, 37.534561, 35.692295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667263, 37.863365, 35.887138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739345, -0.519311, 0.428586,
		0.605262, -0.233706, 0.760947,
		-0.295005, 0.822009, 0.487108,
		26.578762, 38.109966, 36.033272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822706, 37.530754, 36.458183>,  <26.785265, 37.534561, 35.692295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822706, 37.530754, 36.458183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.500111, 37.767006, 36.447319>,  <26.306553, 37.908756, 36.440800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.500111, 37.767006, 36.447319>,  <26.822706, 37.530754, 36.458183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500111, 37.767006, 36.447319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518994, -0.685172, 0.511062,
		0.283238, 0.426260, 0.859115,
		-0.806487, 0.590628, -0.027159,
		26.258165, 37.944195, 36.439171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261875, 37.277271, 36.819450>,  <26.822706, 37.530754, 36.458183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261875, 37.277271, 36.819450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.624544, 37.108707, 36.827080>,  <26.842146, 37.007568, 36.831657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.624544, 37.108707, 36.827080>,  <26.261875, 37.277271, 36.819450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624544, 37.108707, 36.827080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391725, 0.857864, 0.332599,
		-0.156519, -0.294087, 0.942876,
		0.906672, -0.421406, 0.019071,
		26.896545, 36.982285, 36.832802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243944, 37.441677, 37.484932>,  <26.261875, 37.277271, 36.819450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243944, 37.441677, 37.484932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.351313, 37.136757, 37.720509>,  <26.415733, 36.953804, 37.861855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.351313, 37.136757, 37.720509>,  <26.243944, 37.441677, 37.484932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351313, 37.136757, 37.720509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455284, 0.639175, 0.619816,
		-0.848921, 0.101763, 0.518631,
		0.268422, -0.762299, 0.588939,
		26.431839, 36.908066, 37.897190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983772, 37.462105, 38.221912>,  <26.243944, 37.441677, 37.484932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983772, 37.462105, 38.221912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.305040, 37.224155, 38.234879>,  <26.497801, 37.081387, 38.242657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.305040, 37.224155, 38.234879>,  <25.983772, 37.462105, 38.221912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305040, 37.224155, 38.234879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386763, 0.562031, 0.731120,
		-0.453140, -0.574675, 0.681479,
		0.803168, -0.594870, 0.032416,
		26.545990, 37.045696, 38.244602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034885, 36.968506, 38.830914>,  <25.983772, 37.462105, 38.221912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034885, 36.968506, 38.830914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.371889, 37.106419, 38.665359>,  <26.574091, 37.189167, 38.566025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.371889, 37.106419, 38.665359>,  <26.034885, 36.968506, 38.830914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371889, 37.106419, 38.665359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211069, 0.495608, 0.842510,
		0.495608, -0.797181, 0.344782,
		-0.842510, -0.344782, 0.413888,
		26.624641, 37.209854, 38.541195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977100, 36.529057, 39.418831>,  <26.034885, 36.968506, 38.830914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977100, 36.529057, 39.418831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.672255, 36.697842, 39.222416>,  <25.489347, 36.799114, 39.104565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.672255, 36.697842, 39.222416>,  <25.977100, 36.529057, 39.418831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672255, 36.697842, 39.222416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180169, -0.866702, -0.465153,
		-0.621865, -0.266030, 0.736554,
		-0.762117, 0.421967, -0.491041,
		25.443619, 36.824432, 39.075104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564693, 37.022026, 39.834728>,  <25.977100, 36.529057, 39.418831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564693, 37.022026, 39.834728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.275385, 37.099438, 39.569572>,  <25.101799, 37.145885, 39.410477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.275385, 37.099438, 39.569572>,  <25.564693, 37.022026, 39.834728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275385, 37.099438, 39.569572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535825, -0.762824, 0.361928,
		-0.435626, 0.616965, 0.655426,
		-0.723272, 0.193528, -0.662891,
		25.058403, 37.157497, 39.370705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398664, 37.171085, 40.558002>,  <25.564693, 37.022026, 39.834728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398664, 37.171085, 40.558002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.539772, 37.095661, 40.924610>,  <25.624435, 37.050407, 41.144573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.539772, 37.095661, 40.924610>,  <25.398664, 37.171085, 40.558002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539772, 37.095661, 40.924610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878453, 0.404113, -0.254976,
		-0.322297, 0.895063, 0.308200,
		0.352768, -0.188561, 0.916515,
		25.645603, 37.039093, 41.199566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595560, 37.730762, 40.963619>,  <25.398664, 37.171085, 40.558002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595560, 37.730762, 40.963619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.806660, 37.421291, 41.103851>,  <25.933319, 37.235611, 41.187992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.806660, 37.421291, 41.103851>,  <25.595560, 37.730762, 40.963619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806660, 37.421291, 41.103851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845546, 0.517793, -0.130163,
		-0.080824, 0.365126, 0.927443,
		0.527750, -0.773675, 0.350581,
		25.964985, 37.189190, 41.209026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050129, 37.850132, 41.612255>,  <25.595560, 37.730762, 40.963619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050129, 37.850132, 41.612255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.218485, 37.567966, 41.384136>,  <26.319498, 37.398666, 41.247265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.218485, 37.567966, 41.384136>,  <26.050129, 37.850132, 41.612255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218485, 37.567966, 41.384136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860618, 0.509224, 0.005277,
		0.286688, -0.493031, 0.821420,
		0.420889, -0.705415, -0.570300,
		26.344751, 37.356342, 41.213047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574713, 37.423996, 42.018684>,  <26.050129, 37.850132, 41.612255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574713, 37.423996, 42.018684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.625908, 37.454155, 41.623123>,  <26.656626, 37.472252, 41.385784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.625908, 37.454155, 41.623123>,  <26.574713, 37.423996, 42.018684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625908, 37.454155, 41.623123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731915, 0.665684, 0.145484,
		0.669268, -0.742415, 0.030015,
		0.127990, 0.075399, -0.988905,
		26.664305, 37.476776, 41.326450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317692, 37.429970, 41.950729>,  <26.574713, 37.423996, 42.018684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317692, 37.429970, 41.950729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.147240, 37.666428, 41.676804>,  <27.044970, 37.808300, 41.512447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.147240, 37.666428, 41.676804>,  <27.317692, 37.429970, 41.950729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147240, 37.666428, 41.676804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582232, 0.758577, 0.292518,
		0.692402, -0.274070, -0.667432,
		-0.426128, 0.591140, -0.684812,
		27.019402, 37.843769, 41.471359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021358, 37.066986, 41.731457>,  <27.317692, 37.429970, 41.950729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021358, 37.066986, 41.731457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.789478, 36.760670, 41.620094>,  <27.650351, 36.576881, 41.553276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.789478, 36.760670, 41.620094>,  <28.021358, 37.066986, 41.731457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789478, 36.760670, 41.620094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744896, 0.636543, -0.199858,
		0.330265, 0.091524, -0.939440,
		-0.579703, -0.765791, -0.278403,
		27.615568, 36.530933, 41.536572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468861, 37.390652, 42.277939>,  <28.021358, 37.066986, 41.731457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468861, 37.390652, 42.277939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772127, 37.649895, 42.249252>,  <28.954086, 37.805439, 42.232040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772127, 37.649895, 42.249252>,  <28.468861, 37.390652, 42.277939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772127, 37.649895, 42.249252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650680, -0.744802, 0.147940,
		0.042464, -0.158830, -0.986392,
		0.758164, 0.648108, -0.071720,
		28.999577, 37.844326, 42.227737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058241, 37.130135, 41.842850>,  <28.468861, 37.390652, 42.277939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058241, 37.130135, 41.842850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.283981, 37.398617, 42.035095>,  <29.419426, 37.559708, 42.150444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.283981, 37.398617, 42.035095>,  <29.058241, 37.130135, 41.842850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283981, 37.398617, 42.035095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678853, -0.708599, 0.192475,
		0.469752, 0.217642, -0.855549,
		0.564350, 0.671207, 0.480613,
		29.453287, 37.599979, 42.179279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740574, 37.024952, 41.695793>,  <29.058241, 37.130135, 41.842850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740574, 37.024952, 41.695793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.813280, 37.225426, 42.034206>,  <29.856903, 37.345711, 42.237255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.813280, 37.225426, 42.034206>,  <29.740574, 37.024952, 41.695793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813280, 37.225426, 42.034206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695298, -0.673902, 0.249834,
		0.695358, 0.542836, -0.470963,
		0.181764, 0.501183, 0.846036,
		29.867809, 37.375782, 42.288017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479387, 37.249783, 41.796761>,  <29.740574, 37.024952, 41.695793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479387, 37.249783, 41.796761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.301535, 37.205681, 42.152321>,  <30.194824, 37.179218, 42.365658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.301535, 37.205681, 42.152321>,  <30.479387, 37.249783, 41.796761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301535, 37.205681, 42.152321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733194, -0.614855, 0.290482,
		0.514520, 0.780895, 0.354221,
		-0.444631, -0.110254, 0.888903,
		30.168146, 37.172604, 42.418991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904888, 37.306023, 42.419662>,  <30.479387, 37.249783, 41.796761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904888, 37.306023, 42.419662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610544, 37.067493, 42.547981>,  <30.433937, 36.924377, 42.624973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610544, 37.067493, 42.547981>,  <30.904888, 37.306023, 42.419662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610544, 37.067493, 42.547981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675531, -0.679066, 0.287275,
		0.046531, 0.428101, 0.902532,
		-0.735862, -0.596321, 0.320793,
		30.389786, 36.888596, 42.644218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900181, 37.037228, 43.240589>,  <30.904888, 37.306023, 42.419662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900181, 37.037228, 43.240589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.767109, 36.779083, 42.965538>,  <30.687265, 36.624195, 42.800507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.767109, 36.779083, 42.965538>,  <30.900181, 37.037228, 43.240589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767109, 36.779083, 42.965538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732686, -0.635943, 0.242378,
		-0.593714, -0.423181, 0.684413,
		-0.332678, -0.645363, -0.687628,
		30.667305, 36.585476, 42.759251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024311, 36.585323, 43.743244>,  <30.900181, 37.037228, 43.240589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024311, 36.585323, 43.743244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936964, 36.893829, 43.982399>,  <30.884556, 37.078934, 44.125893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936964, 36.893829, 43.982399>,  <31.024311, 36.585323, 43.743244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936964, 36.893829, 43.982399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080590, -0.596329, 0.798684,
		0.972533, 0.222592, 0.068064,
		-0.218369, 0.771261, 0.597889,
		30.871452, 37.125206, 44.161766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687168, 36.742920, 44.145142>,  <31.024311, 36.585323, 43.743244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687168, 36.742920, 44.145142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318350, 36.790886, 44.292358>,  <31.097059, 36.819664, 44.380688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318350, 36.790886, 44.292358>,  <31.687168, 36.742920, 44.145142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318350, 36.790886, 44.292358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218867, -0.622722, 0.751209,
		0.319268, 0.773200, 0.547932,
		-0.922044, 0.119913, 0.368043,
		31.041737, 36.826859, 44.402771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585012, 37.128979, 44.708569>,  <31.687168, 36.742920, 44.145142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585012, 37.128979, 44.708569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.279739, 36.871426, 44.730362>,  <31.096575, 36.716896, 44.743439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.279739, 36.871426, 44.730362>,  <31.585012, 37.128979, 44.708569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279739, 36.871426, 44.730362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304522, -0.284011, 0.909178,
		-0.569925, 0.710463, 0.412828,
		-0.763185, -0.643879, 0.054487,
		31.050783, 36.678261, 44.746708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179436, 37.309200, 45.326115>,  <31.585012, 37.128979, 44.708569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179436, 37.309200, 45.326115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.048344, 36.943665, 45.230209>,  <30.969688, 36.724342, 45.172665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.048344, 36.943665, 45.230209>,  <31.179436, 37.309200, 45.326115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048344, 36.943665, 45.230209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057829, -0.272711, 0.960356,
		-0.943000, 0.300870, 0.142221,
		-0.327728, -0.913841, -0.239768,
		30.950026, 36.669514, 45.158279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116077, 37.262146, 45.966972>,  <31.179436, 37.309200, 45.326115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116077, 37.262146, 45.966972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.194340, 37.492008, 46.284836>,  <31.241297, 37.629929, 46.475555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.194340, 37.492008, 46.284836>,  <31.116077, 37.262146, 45.966972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194340, 37.492008, 46.284836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775997, -0.586186, 0.232839,
		0.599622, 0.571097, -0.560627,
		0.195658, 0.574660, 0.794659,
		31.253036, 37.664406, 46.523235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867365, 37.475494, 46.011265>,  <31.116077, 37.262146, 45.966972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867365, 37.475494, 46.011265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697357, 37.470776, 46.373306>,  <31.595352, 37.467945, 46.590530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697357, 37.470776, 46.373306>,  <31.867365, 37.475494, 46.011265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697357, 37.470776, 46.373306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708539, -0.626612, 0.324546,
		0.563321, 0.779242, 0.274684,
		-0.425020, -0.011800, 0.905107,
		31.569851, 37.467236, 46.644836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402607, 37.765045, 46.508865>,  <31.867365, 37.475494, 46.011265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402607, 37.765045, 46.508865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122669, 37.573589, 46.720947>,  <31.954706, 37.458717, 46.848198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122669, 37.573589, 46.720947>,  <32.402607, 37.765045, 46.508865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122669, 37.573589, 46.720947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713808, -0.441238, 0.543864,
		-0.026368, 0.759086, 0.650455,
		-0.699845, -0.478641, 0.530207,
		31.912716, 37.429996, 46.880009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435745, 38.019253, 47.135948>,  <32.402607, 37.765045, 46.508865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435745, 38.019253, 47.135948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309017, 37.642273, 47.093208>,  <32.232983, 37.416084, 47.067566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309017, 37.642273, 47.093208>,  <32.435745, 38.019253, 47.135948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309017, 37.642273, 47.093208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784029, -0.323615, 0.529690,
		-0.533784, 0.084040, 0.841434,
		-0.316816, -0.942449, -0.106851,
		32.213974, 37.359539, 47.061153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315060, 37.570976, 47.835007>,  <32.435745, 38.019253, 47.135948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315060, 37.570976, 47.835007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.409969, 37.318188, 47.539898>,  <32.466915, 37.166515, 47.362831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.409969, 37.318188, 47.539898>,  <32.315060, 37.570976, 47.835007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409969, 37.318188, 47.539898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769872, -0.340844, 0.539558,
		-0.592452, -0.696015, 0.405663,
		0.237272, -0.631971, -0.737777,
		32.481152, 37.128597, 47.318565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179058, 36.838421, 48.136921>,  <32.315060, 37.570976, 47.835007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179058, 36.838421, 48.136921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.441746, 36.919617, 47.846401>,  <32.599358, 36.968334, 47.672089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.441746, 36.919617, 47.846401>,  <32.179058, 36.838421, 48.136921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441746, 36.919617, 47.846401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753313, -0.131727, 0.644335,
		0.035121, -0.970280, -0.239423,
		0.656724, 0.202990, -0.726298,
		32.638763, 36.980515, 47.628513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974127, 36.373276, 48.692421>,  <32.179058, 36.838421, 48.136921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974127, 36.373276, 48.692421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.830221, 36.427597, 48.323177>,  <31.743877, 36.460190, 48.101631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.830221, 36.427597, 48.323177>,  <31.974127, 36.373276, 48.692421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830221, 36.427597, 48.323177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927012, -0.164341, 0.337108,
		-0.105922, 0.977010, 0.185018,
		-0.359764, 0.135807, -0.923107,
		31.722292, 36.468338, 48.046246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167526, 35.883244, 49.291889>,  <31.974127, 36.373276, 48.692421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167526, 35.883244, 49.291889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.337112, 35.534927, 49.391464>,  <32.438866, 35.325935, 49.451210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.337112, 35.534927, 49.391464>,  <32.167526, 35.883244, 49.291889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337112, 35.534927, 49.391464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876429, 0.325181, -0.355148,
		0.228311, 0.368746, 0.901055,
		0.423965, -0.870795, 0.248937,
		32.464302, 35.273689, 49.466145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785690, 36.110023, 49.597553>,  <32.167526, 35.883244, 49.291889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785690, 36.110023, 49.597553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.828064, 35.724602, 49.499302>,  <32.853489, 35.493347, 49.440353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.828064, 35.724602, 49.499302>,  <32.785690, 36.110023, 49.597553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828064, 35.724602, 49.499302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857025, 0.213742, -0.468852,
		0.504267, -0.160839, 0.848437,
		0.105937, -0.963559, -0.245626,
		32.859844, 35.435535, 49.425613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483032, 35.830471, 49.816124>,  <32.785690, 36.110023, 49.597553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483032, 35.830471, 49.816124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.361614, 35.606209, 49.507961>,  <33.288765, 35.471649, 49.323063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.361614, 35.606209, 49.507961>,  <33.483032, 35.830471, 49.816124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361614, 35.606209, 49.507961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873499, 0.159240, -0.460046,
		0.380609, -0.812590, 0.441400,
		-0.303540, -0.560660, -0.770405,
		33.270554, 35.438011, 49.276840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954487, 35.347195, 49.842365>,  <33.483032, 35.830471, 49.816124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954487, 35.347195, 49.842365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801254, 35.347031, 49.472878>,  <33.709316, 35.346931, 49.251186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801254, 35.347031, 49.472878>,  <33.954487, 35.347195, 49.842365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801254, 35.347031, 49.472878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914431, 0.141256, -0.379292,
		0.130636, -0.989973, -0.053738,
		-0.383080, -0.000409, -0.923716,
		33.686329, 35.346909, 49.195763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493809, 34.830196, 49.523281>,  <33.954487, 35.347195, 49.842365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493809, 34.830196, 49.523281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.303646, 35.066414, 49.262436>,  <34.189548, 35.208145, 49.105930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.303646, 35.066414, 49.262436>,  <34.493809, 34.830196, 49.523281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303646, 35.066414, 49.262436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867870, 0.193305, -0.457640,
		-0.144199, -0.783514, -0.604411,
		-0.475403, 0.590542, -0.652114,
		34.161026, 35.243576, 49.066803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631599, 34.577305, 48.863831>,  <34.493809, 34.830196, 49.523281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631599, 34.577305, 48.863831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522724, 34.954144, 48.785473>,  <34.457401, 35.180244, 48.738457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522724, 34.954144, 48.785473>,  <34.631599, 34.577305, 48.863831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522724, 34.954144, 48.785473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727725, 0.068342, -0.682456,
		-0.629549, -0.328313, -0.704186,
		-0.272185, 0.942093, -0.195897,
		34.441071, 35.236771, 48.726704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676174, 34.723557, 48.188698>,  <34.631599, 34.577305, 48.863831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676174, 34.723557, 48.188698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676788, 35.094769, 48.337696>,  <34.677155, 35.317497, 48.427094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676788, 35.094769, 48.337696>,  <34.676174, 34.723557, 48.188698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676788, 35.094769, 48.337696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740451, 0.249303, -0.624164,
		-0.672109, 0.276767, -0.686782,
		0.001531, 0.928035, 0.372491,
		34.677246, 35.373180, 48.449444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752312, 35.159828, 47.545330>,  <34.676174, 34.723557, 48.188698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752312, 35.159828, 47.545330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862175, 35.373310, 47.865261>,  <34.928093, 35.501400, 48.057220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862175, 35.373310, 47.865261>,  <34.752312, 35.159828, 47.545330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862175, 35.373310, 47.865261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829256, 0.289574, -0.477997,
		-0.486719, 0.794546, -0.363044,
		0.274663, 0.533707, 0.799823,
		34.944572, 35.533421, 48.105209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014679, 35.696728, 47.235722>,  <34.752312, 35.159828, 47.545330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014679, 35.696728, 47.235722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146015, 35.696724, 47.613544>,  <35.224819, 35.696724, 47.840237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146015, 35.696724, 47.613544>,  <35.014679, 35.696728, 47.235722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146015, 35.696724, 47.613544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895639, 0.317649, -0.311336,
		-0.300035, 0.948208, 0.104305,
		0.328344, -0.000007, 0.944558,
		35.244518, 35.696720, 47.896912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352592, 36.368652, 47.360714>,  <35.014679, 35.696728, 47.235722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352592, 36.368652, 47.360714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513821, 36.105251, 47.614929>,  <35.610558, 35.947212, 47.767460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513821, 36.105251, 47.614929>,  <35.352592, 36.368652, 47.360714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513821, 36.105251, 47.614929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913297, 0.333848, -0.233313,
		-0.058537, 0.674477, 0.735971,
		0.403067, -0.658503, 0.635540,
		35.634739, 35.907700, 47.805592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972244, 36.724682, 47.625443>,  <35.352592, 36.368652, 47.360714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972244, 36.724682, 47.625443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054665, 36.347710, 47.730789>,  <36.104118, 36.121525, 47.793999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054665, 36.347710, 47.730789>,  <35.972244, 36.724682, 47.625443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054665, 36.347710, 47.730789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916809, 0.091850, -0.388619,
		0.342057, 0.321533, 0.882957,
		0.206054, -0.942433, 0.263366,
		36.116482, 36.064980, 47.809799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604839, 36.752476, 48.045628>,  <35.972244, 36.724682, 47.625443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604839, 36.752476, 48.045628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577988, 36.366127, 47.945560>,  <36.561878, 36.134319, 47.885521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577988, 36.366127, 47.945560>,  <36.604839, 36.752476, 48.045628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577988, 36.366127, 47.945560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993071, -0.040437, -0.110339,
		0.096457, -0.255843, 0.961894,
		-0.067125, -0.965872, -0.250170,
		36.557850, 36.076366, 47.870510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023552, 36.309601, 48.395580>,  <36.604839, 36.752476, 48.045628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023552, 36.309601, 48.395580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942036, 36.106590, 48.060703>,  <36.893127, 35.984783, 47.859776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942036, 36.106590, 48.060703>,  <37.023552, 36.309601, 48.395580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942036, 36.106590, 48.060703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952265, 0.095770, -0.289861,
		0.227289, -0.856299, 0.463780,
		-0.203792, -0.507523, -0.837191,
		36.880898, 35.954334, 47.809547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663712, 35.963814, 48.245483>,  <37.023552, 36.309601, 48.395580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663712, 35.963814, 48.245483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.455524, 35.919765, 47.906784>,  <37.330612, 35.893337, 47.703564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.455524, 35.919765, 47.906784>,  <37.663712, 35.963814, 48.245483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455524, 35.919765, 47.906784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818282, 0.219015, -0.531458,
		0.243978, -0.969487, -0.023876,
		-0.520471, -0.110127, -0.846748,
		37.299381, 35.886726, 47.652760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075020, 35.657166, 47.568310>,  <37.663712, 35.963814, 48.245483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075020, 35.657166, 47.568310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.769985, 35.870235, 47.421490>,  <37.586964, 35.998077, 47.333397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.769985, 35.870235, 47.421490>,  <38.075020, 35.657166, 47.568310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769985, 35.870235, 47.421490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631405, 0.489516, -0.601417,
		-0.140682, -0.690388, -0.709629,
		-0.762585, 0.532672, -0.367048,
		37.541210, 36.030037, 47.311375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787575, 35.431957, 47.292194>,  <38.075020, 35.657166, 47.568310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787575, 35.431957, 47.292194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163971, 35.316284, 47.221863>,  <39.389809, 35.246880, 47.179665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163971, 35.316284, 47.221863>,  <38.787575, 35.431957, 47.292194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163971, 35.316284, 47.221863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058485, -0.650638, 0.757132,
		-0.333351, -0.702169, -0.629156,
		0.940987, -0.289186, -0.175824,
		39.446266, 35.229527, 47.169117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876862, 34.748154, 47.595139>,  <38.787575, 35.431957, 47.292194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876862, 34.748154, 47.595139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253059, 34.882137, 47.572250>,  <39.478779, 34.962528, 47.558517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253059, 34.882137, 47.572250>,  <38.876862, 34.748154, 47.595139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253059, 34.882137, 47.572250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258138, -0.594742, 0.761346,
		0.220991, -0.730811, -0.645817,
		0.940494, 0.334961, -0.057217,
		39.535206, 34.982624, 47.555084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239914, 34.155396, 47.581131>,  <38.876862, 34.748154, 47.595139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239914, 34.155396, 47.581131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.451828, 34.469769, 47.708649>,  <39.578976, 34.658394, 47.785160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.451828, 34.469769, 47.708649>,  <39.239914, 34.155396, 47.581131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451828, 34.469769, 47.708649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379600, -0.555861, 0.739542,
		0.758441, -0.270782, -0.592828,
		0.529785, 0.785936, 0.318799,
		39.610764, 34.705551, 47.804287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540447, 33.909264, 47.794552>,  <39.239914, 34.155396, 47.581131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540447, 33.909264, 47.794552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.811695, 33.779797, 48.058487>,  <38.974445, 33.702118, 48.216846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.811695, 33.779797, 48.058487>,  <38.540447, 33.909264, 47.794552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811695, 33.779797, 48.058487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642410, 0.175078, 0.746094,
		-0.357011, -0.929831, -0.089203,
		0.678124, -0.323668, 0.659838,
		39.015133, 33.682697, 48.256439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305161, 33.333057, 47.984482>,  <38.540447, 33.909264, 47.794552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305161, 33.333057, 47.984482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550724, 33.447144, 48.278900>,  <38.698063, 33.515594, 48.455551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550724, 33.447144, 48.278900>,  <38.305161, 33.333057, 47.984482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550724, 33.447144, 48.278900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721313, -0.176079, 0.669853,
		0.320655, -0.942151, 0.097633,
		0.613912, 0.285215, 0.736046,
		38.734898, 33.532707, 48.499714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129364, 32.936977, 48.622356>,  <38.305161, 33.333057, 47.984482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129364, 32.936977, 48.622356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356331, 33.235249, 48.762066>,  <38.492512, 33.414211, 48.845894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356331, 33.235249, 48.762066>,  <38.129364, 32.936977, 48.622356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356331, 33.235249, 48.762066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507718, -0.017112, 0.861353,
		0.648271, -0.666085, 0.368886,
		0.567422, 0.745680, 0.349277,
		38.526558, 33.458954, 48.866848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577545, 32.908089, 49.275288>,  <38.129364, 32.936977, 48.622356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577545, 32.908089, 49.275288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432083, 33.280506, 49.263241>,  <38.344807, 33.503956, 49.256012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432083, 33.280506, 49.263241>,  <38.577545, 32.908089, 49.275288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432083, 33.280506, 49.263241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374972, -0.116709, 0.919660,
		0.852730, 0.345737, 0.391558,
		-0.363659, 0.931045, -0.030121,
		38.322987, 33.559818, 49.254204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687931, 33.194946, 49.921692>,  <38.577545, 32.908089, 49.275288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687931, 33.194946, 49.921692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411922, 33.442684, 49.771877>,  <38.246319, 33.591328, 49.681988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411922, 33.442684, 49.771877>,  <38.687931, 33.194946, 49.921692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411922, 33.442684, 49.771877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520812, -0.065518, 0.851154,
		0.502620, 0.782379, 0.367772,
		-0.690021, 0.619347, -0.374541,
		38.204918, 33.628487, 49.659515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723660, 33.748226, 50.342304>,  <38.687931, 33.194946, 49.921692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723660, 33.748226, 50.342304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366791, 33.793682, 50.167435>,  <38.152672, 33.820957, 50.062511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366791, 33.793682, 50.167435>,  <38.723660, 33.748226, 50.342304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366791, 33.793682, 50.167435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442487, -0.025382, 0.896416,
		0.090775, 0.993198, 0.072930,
		-0.892169, 0.113642, -0.437173,
		38.099140, 33.827774, 50.036282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464180, 34.388557, 50.549442>,  <38.723660, 33.748226, 50.342304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464180, 34.388557, 50.549442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152779, 34.162277, 50.440693>,  <37.965939, 34.026508, 50.375443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152779, 34.162277, 50.440693>,  <38.464180, 34.388557, 50.549442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152779, 34.162277, 50.440693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383890, 0.086474, 0.919321,
		-0.496546, 0.820067, -0.284486,
		-0.778505, -0.565697, -0.271877,
		37.919228, 33.992569, 50.359131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791821, 34.705891, 50.829582>,  <38.464180, 34.388557, 50.549442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791821, 34.705891, 50.829582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672077, 34.331303, 50.756470>,  <37.600231, 34.106548, 50.712601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672077, 34.331303, 50.756470>,  <37.791821, 34.705891, 50.829582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672077, 34.331303, 50.756470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632982, 0.051577, 0.772447,
		-0.713946, 0.346935, -0.608208,
		-0.299359, -0.936470, -0.182780,
		37.582268, 34.050362, 50.701637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249413, 34.596466, 51.269073>,  <37.791821, 34.705891, 50.829582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249413, 34.596466, 51.269073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247162, 34.228527, 51.112179>,  <37.245811, 34.007763, 51.018044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247162, 34.228527, 51.112179>,  <37.249413, 34.596466, 51.269073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247162, 34.228527, 51.112179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508051, -0.335219, 0.793419,
		-0.861309, 0.203736, -0.465445,
		-0.005622, -0.919848, -0.392235,
		37.245476, 33.952572, 50.994507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557732, 34.421730, 51.178207>,  <37.249413, 34.596466, 51.269073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557732, 34.421730, 51.178207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791756, 34.101559, 51.230385>,  <36.932171, 33.909454, 51.261692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791756, 34.101559, 51.230385>,  <36.557732, 34.421730, 51.178207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791756, 34.101559, 51.230385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511031, -0.238971, 0.825676,
		-0.629725, -0.549729, -0.548857,
		0.585059, -0.800431, 0.130443,
		36.967274, 33.861431, 51.269516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095558, 33.703308, 51.171135>,  <36.557732, 34.421730, 51.178207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095558, 33.703308, 51.171135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446587, 33.700996, 51.362900>,  <36.657204, 33.699608, 51.477959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446587, 33.700996, 51.362900>,  <36.095558, 33.703308, 51.171135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446587, 33.700996, 51.362900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478870, -0.059772, 0.875849,
		0.023599, -0.998195, -0.055219,
		0.877569, -0.005774, 0.479417,
		36.709858, 33.699261, 51.506725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977089, 33.155468, 51.658745>,  <36.095558, 33.703308, 51.171135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977089, 33.155468, 51.658745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308258, 33.321045, 51.810112>,  <36.506958, 33.420391, 51.900932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308258, 33.321045, 51.810112>,  <35.977089, 33.155468, 51.658745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308258, 33.321045, 51.810112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430677, 0.037044, 0.901745,
		0.359256, -0.909547, 0.208947,
		0.827920, 0.413946, 0.378413,
		36.556633, 33.445229, 51.923637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185101, 32.640034, 52.203190>,  <35.977089, 33.155468, 51.658745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185101, 32.640034, 52.203190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.338863, 33.003517, 52.268272>,  <36.431122, 33.221607, 52.307323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.338863, 33.003517, 52.268272>,  <36.185101, 32.640034, 52.203190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338863, 33.003517, 52.268272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420479, 0.015441, 0.907171,
		0.821846, -0.417136, 0.388030,
		0.384405, 0.908713, 0.162707,
		36.454185, 33.276131, 52.317085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521477, 32.651264, 52.906544>,  <36.185101, 32.640034, 52.203190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521477, 32.651264, 52.906544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410763, 33.027798, 52.829315>,  <36.344334, 33.253719, 52.782978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410763, 33.027798, 52.829315>,  <36.521477, 32.651264, 52.906544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410763, 33.027798, 52.829315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414460, 0.064330, 0.907791,
		0.866956, 0.331285, 0.372340,
		-0.276785, 0.941335, -0.193076,
		36.327728, 33.310200, 52.771393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523010, 32.964779, 53.531460>,  <36.521477, 32.651264, 52.906544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523010, 32.964779, 53.531460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333057, 33.253426, 53.329960>,  <36.219086, 33.426613, 53.209061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333057, 33.253426, 53.329960>,  <36.523010, 32.964779, 53.531460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333057, 33.253426, 53.329960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612203, 0.140337, 0.778147,
		0.632218, 0.677921, 0.375132,
		-0.474877, 0.721615, -0.503749,
		36.190594, 33.469910, 53.178837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450153, 33.523697, 53.955463>,  <36.523010, 32.964779, 53.531460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450153, 33.523697, 53.955463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153530, 33.566288, 53.690510>,  <35.975555, 33.591843, 53.531536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153530, 33.566288, 53.690510>,  <36.450153, 33.523697, 53.955463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153530, 33.566288, 53.690510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643177, 0.168007, 0.747059,
		0.190831, 0.980018, -0.056102,
		-0.741557, 0.106479, -0.662386,
		35.931065, 33.598232, 53.491795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049034, 34.028484, 54.312916>,  <36.450153, 33.523697, 53.955463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049034, 34.028484, 54.312916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.794498, 33.872204, 54.046856>,  <35.641777, 33.778435, 53.887222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.794498, 33.872204, 54.046856>,  <36.049034, 34.028484, 54.312916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794498, 33.872204, 54.046856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743345, 0.080119, 0.664093,
		-0.206172, 0.917024, -0.341410,
		-0.636342, -0.390702, -0.665147,
		35.603596, 33.754993, 53.847313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479500, 34.462433, 54.264381>,  <36.049034, 34.028484, 54.312916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479500, 34.462433, 54.264381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370163, 34.092083, 54.160049>,  <35.304562, 33.869873, 54.097450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370163, 34.092083, 54.160049>,  <35.479500, 34.462433, 54.264381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370163, 34.092083, 54.160049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785592, 0.058394, 0.615984,
		-0.555096, 0.373280, -0.743324,
		-0.273340, -0.925879, -0.260831,
		35.288162, 33.814320, 54.081799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894096, 34.597805, 54.028576>,  <35.479500, 34.462433, 54.264381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894096, 34.597805, 54.028576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884346, 34.209694, 54.124886>,  <34.878498, 33.976830, 54.182671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884346, 34.209694, 54.124886>,  <34.894096, 34.597805, 54.028576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884346, 34.209694, 54.124886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820563, 0.156990, 0.549574,
		-0.571037, -0.184176, -0.799998,
		-0.024373, -0.970275, 0.240775,
		34.877033, 33.918610, 54.197117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195309, 34.451649, 53.896835>,  <34.894096, 34.597805, 54.028576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195309, 34.451649, 53.896835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331352, 34.179005, 54.155983>,  <34.412979, 34.015419, 54.311470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331352, 34.179005, 54.155983>,  <34.195309, 34.451649, 53.896835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331352, 34.179005, 54.155983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800180, 0.152148, 0.580140,
		-0.494001, -0.715723, -0.493664,
		0.340109, -0.681609, 0.647868,
		34.433384, 33.974522, 54.350342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687630, 34.028484, 54.014603>,  <34.195309, 34.451649, 53.896835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687630, 34.028484, 54.014603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.920288, 33.987648, 54.337406>,  <34.059883, 33.963146, 54.531090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.920288, 33.987648, 54.337406>,  <33.687630, 34.028484, 54.014603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920288, 33.987648, 54.337406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812154, -0.017121, 0.583192,
		-0.045734, -0.994626, -0.092888,
		0.581648, -0.102111, 0.807006,
		34.094784, 33.957020, 54.579510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431641, 33.461861, 54.452400>,  <33.687630, 34.028484, 54.014603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431641, 33.461861, 54.452400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667774, 33.687843, 54.682991>,  <33.809456, 33.823433, 54.821346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667774, 33.687843, 54.682991>,  <33.431641, 33.461861, 54.452400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667774, 33.687843, 54.682991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749118, 0.117546, 0.651924,
		0.300546, -0.816705, 0.492611,
		0.590334, 0.564957, 0.576481,
		33.844875, 33.857330, 54.855934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205791, 33.252720, 55.115051>,  <33.431641, 33.461861, 54.452400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205791, 33.252720, 55.115051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418568, 33.579762, 55.203197>,  <33.546234, 33.775986, 55.256084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418568, 33.579762, 55.203197>,  <33.205791, 33.252720, 55.115051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418568, 33.579762, 55.203197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666465, 0.243705, 0.704579,
		0.522361, -0.521665, 0.674541,
		0.531943, 0.817602, 0.220369,
		33.578152, 33.825043, 55.269310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206921, 33.234505, 55.784061>,  <33.205791, 33.252720, 55.115051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206921, 33.234505, 55.784061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337830, 33.607418, 55.722439>,  <33.416374, 33.831165, 55.685467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337830, 33.607418, 55.722439>,  <33.206921, 33.234505, 55.784061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337830, 33.607418, 55.722439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600953, 0.331168, 0.727450,
		0.729210, -0.145495, 0.668643,
		0.327274, 0.932287, -0.154056,
		33.436012, 33.887104, 55.676224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227535, 33.574387, 56.491047>,  <33.206921, 33.234505, 55.784061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227535, 33.574387, 56.491047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215118, 33.874096, 56.226433>,  <33.207668, 34.053921, 56.067665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215118, 33.874096, 56.226433>,  <33.227535, 33.574387, 56.491047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215118, 33.874096, 56.226433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675145, 0.472327, 0.566645,
		0.737032, 0.464223, 0.491203,
		-0.031041, 0.749269, -0.661538,
		33.205807, 34.098877, 56.027973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429153, 34.256653, 56.840359>,  <33.227535, 33.574387, 56.491047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429153, 34.256653, 56.840359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198036, 34.318676, 56.519833>,  <33.059368, 34.355892, 56.327515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198036, 34.318676, 56.519833>,  <33.429153, 34.256653, 56.840359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198036, 34.318676, 56.519833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671146, 0.468430, 0.574574,
		0.464457, 0.869787, -0.166586,
		-0.577791, 0.155061, -0.801320,
		33.024700, 34.365196, 56.279438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343044, 35.025059, 56.878212>,  <33.429153, 34.256653, 56.840359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343044, 35.025059, 56.878212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071239, 34.809296, 56.679295>,  <32.908157, 34.679836, 56.559944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071239, 34.809296, 56.679295>,  <33.343044, 35.025059, 56.878212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071239, 34.809296, 56.679295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730783, 0.437632, 0.523866,
		-0.064949, 0.719385, -0.691569,
		-0.679513, -0.539411, -0.497290,
		32.867386, 34.647472, 56.530109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834942, 35.460838, 56.747726>,  <33.343044, 35.025059, 56.878212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834942, 35.460838, 56.747726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621105, 35.126534, 56.697594>,  <32.492802, 34.925949, 56.667515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621105, 35.126534, 56.697594>,  <32.834942, 35.460838, 56.747726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621105, 35.126534, 56.697594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709187, 0.362995, 0.604390,
		-0.459633, 0.411987, -0.786768,
		-0.534594, -0.835764, -0.125331,
		32.460728, 34.875805, 56.659996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150417, 35.703949, 56.790604>,  <32.834942, 35.460838, 56.747726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150417, 35.703949, 56.790604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145073, 35.308552, 56.850864>,  <32.141865, 35.071312, 56.887020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145073, 35.308552, 56.850864>,  <32.150417, 35.703949, 56.790604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145073, 35.308552, 56.850864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757318, 0.108384, 0.643989,
		-0.652909, -0.105486, -0.750055,
		-0.013363, -0.988497, 0.150652,
		32.141064, 35.012001, 56.896061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504438, 35.611389, 56.911892>,  <32.150417, 35.703949, 56.790604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504438, 35.611389, 56.911892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.641970, 35.260487, 57.045879>,  <31.724489, 35.049946, 57.126270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.641970, 35.260487, 57.045879>,  <31.504438, 35.611389, 56.911892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641970, 35.260487, 57.045879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637352, 0.043952, 0.769319,
		-0.689613, -0.478004, -0.544009,
		0.343828, -0.877257, 0.334966,
		31.745117, 34.997311, 57.146370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912073, 35.121590, 57.042267>,  <31.504438, 35.611389, 56.911892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912073, 35.121590, 57.042267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.227205, 35.033234, 57.272236>,  <31.416285, 34.980221, 57.410217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.227205, 35.033234, 57.272236>,  <30.912073, 35.121590, 57.042267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227205, 35.033234, 57.272236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572608, 0.081088, 0.815809,
		-0.226821, -0.971923, -0.062598,
		0.787828, -0.220887, 0.574923,
		31.463554, 34.966969, 57.444714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709702, 34.508057, 57.484962>,  <30.912073, 35.121590, 57.042267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709702, 34.508057, 57.484962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.008944, 34.720703, 57.643822>,  <31.188490, 34.848289, 57.739136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.008944, 34.720703, 57.643822>,  <30.709702, 34.508057, 57.484962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008944, 34.720703, 57.643822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564587, 0.195444, 0.801899,
		0.348683, -0.824128, 0.446356,
		0.748105, 0.531616, 0.397144,
		31.233376, 34.880188, 57.762966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639511, 34.304276, 58.310966>,  <30.709702, 34.508057, 57.484962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639511, 34.304276, 58.310966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936720, 34.571392, 58.293190>,  <31.115046, 34.731663, 58.282524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936720, 34.571392, 58.293190>,  <30.639511, 34.304276, 58.310966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936720, 34.571392, 58.293190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098495, 0.174790, 0.979667,
		0.661978, -0.723538, 0.195647,
		0.743023, 0.667788, -0.044442,
		31.159628, 34.771729, 58.279858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229765, 34.144993, 58.701042>,  <30.639511, 34.304276, 58.310966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229765, 34.144993, 58.701042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.214649, 34.543003, 58.664188>,  <31.205580, 34.781811, 58.642078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.214649, 34.543003, 58.664188>,  <31.229765, 34.144993, 58.701042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214649, 34.543003, 58.664188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123540, 0.086838, 0.988533,
		0.991620, 0.048736, 0.119645,
		-0.037788, 0.995030, -0.092131,
		31.203314, 34.841511, 58.636551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702259, 34.444897, 59.173717>,  <31.229765, 34.144993, 58.701042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702259, 34.444897, 59.173717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465096, 34.755840, 59.089642>,  <31.322798, 34.942406, 59.039196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465096, 34.755840, 59.089642>,  <31.702259, 34.444897, 59.173717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465096, 34.755840, 59.089642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020757, 0.246173, 0.969004,
		0.805001, 0.578894, -0.129823,
		-0.592910, 0.777355, -0.210185,
		31.287222, 34.989048, 59.026585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954027, 35.001179, 59.536201>,  <31.702259, 34.444897, 59.173717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954027, 35.001179, 59.536201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569302, 35.071175, 59.452023>,  <31.338467, 35.113171, 59.401516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569302, 35.071175, 59.452023>,  <31.954027, 35.001179, 59.536201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569302, 35.071175, 59.452023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182333, 0.163784, 0.969500,
		0.204121, 0.970852, -0.125623,
		-0.961816, 0.174990, -0.210450,
		31.280756, 35.123672, 59.388889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787497, 35.472225, 60.086025>,  <31.954027, 35.001179, 59.536201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787497, 35.472225, 60.086025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.457340, 35.327179, 59.912941>,  <31.259247, 35.240150, 59.809090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.457340, 35.327179, 59.912941>,  <31.787497, 35.472225, 60.086025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457340, 35.327179, 59.912941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521251, 0.195064, 0.830811,
		-0.216860, 0.911295, -0.350019,
		-0.825391, -0.362617, -0.432711,
		31.209723, 35.218395, 59.783127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249941, 35.924686, 60.419456>,  <31.787497, 35.472225, 60.086025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249941, 35.924686, 60.419456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.021812, 35.642597, 60.250984>,  <30.884935, 35.473343, 60.149902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.021812, 35.642597, 60.250984>,  <31.249941, 35.924686, 60.419456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021812, 35.642597, 60.250984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637065, 0.056074, 0.768768,
		-0.518537, 0.706763, -0.481254,
		-0.570323, -0.705224, -0.421177,
		30.850716, 35.431030, 60.124630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574947, 36.208214, 60.475163>,  <31.249941, 35.924686, 60.419456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574947, 36.208214, 60.475163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547729, 35.811443, 60.432365>,  <30.531399, 35.573380, 60.406689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547729, 35.811443, 60.432365>,  <30.574947, 36.208214, 60.475163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547729, 35.811443, 60.432365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573752, -0.048823, 0.817573,
		-0.816198, 0.117018, -0.565799,
		-0.068046, -0.991929, -0.106988,
		30.527315, 35.513866, 60.400269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887861, 36.072544, 60.580528>,  <30.574947, 36.208214, 60.475163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887861, 36.072544, 60.580528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.114609, 35.749657, 60.646332>,  <30.250656, 35.555923, 60.685814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.114609, 35.749657, 60.646332>,  <29.887861, 36.072544, 60.580528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114609, 35.749657, 60.646332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522347, -0.197771, 0.829482,
		-0.637037, -0.556137, -0.533757,
		0.566867, -0.807217, 0.164509,
		30.284668, 35.507492, 60.695686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453745, 35.747185, 61.004379>,  <29.887861, 36.072544, 60.580528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453745, 35.747185, 61.004379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.786264, 35.533764, 61.066689>,  <29.985777, 35.405712, 61.104073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.786264, 35.533764, 61.066689>,  <29.453745, 35.747185, 61.004379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786264, 35.533764, 61.066689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333910, -0.255338, 0.907362,
		-0.444352, -0.806302, -0.390421,
		0.831297, -0.533554, 0.155772,
		30.035654, 35.373699, 61.113419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243017, 35.167702, 61.359520>,  <29.453745, 35.747185, 61.004379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243017, 35.167702, 61.359520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.631981, 35.174770, 61.452564>,  <29.865358, 35.179012, 61.508392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.631981, 35.174770, 61.452564>,  <29.243017, 35.167702, 61.359520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631981, 35.174770, 61.452564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231028, -0.065367, 0.970749,
		0.032356, -0.997705, -0.059482,
		0.972409, 0.017668, 0.232613,
		29.923704, 35.180073, 61.522346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305990, 34.609032, 61.800701>,  <29.243017, 35.167702, 61.359520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305990, 34.609032, 61.800701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.621386, 34.840286, 61.884644>,  <29.810623, 34.979038, 61.935009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.621386, 34.840286, 61.884644>,  <29.305990, 34.609032, 61.800701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621386, 34.840286, 61.884644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135982, -0.168894, 0.976209,
		0.599830, -0.798266, -0.054555,
		0.788488, 0.578141, 0.209858,
		29.857931, 35.013729, 61.947601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649754, 34.262177, 62.280842>,  <29.305990, 34.609032, 61.800701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649754, 34.262177, 62.280842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.766714, 34.642010, 62.326099>,  <29.836889, 34.869907, 62.353256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.766714, 34.642010, 62.326099>,  <29.649754, 34.262177, 62.280842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766714, 34.642010, 62.326099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139788, -0.074605, 0.987367,
		0.946024, -0.304522, 0.110925,
		0.292399, 0.949579, 0.113146,
		29.854433, 34.926884, 62.360043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245081, 34.386780, 62.807140>,  <29.649754, 34.262177, 62.280842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245081, 34.386780, 62.807140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023180, 34.717072, 62.766312>,  <29.890039, 34.915249, 62.741814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023180, 34.717072, 62.766312>,  <30.245081, 34.386780, 62.807140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023180, 34.717072, 62.766312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147534, 0.023105, 0.988787,
		0.818831, 0.563590, 0.109006,
		-0.554752, 0.825732, -0.102068,
		29.856754, 34.964790, 62.735691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500179, 35.029079, 63.085648>,  <30.245081, 34.386780, 62.807140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500179, 35.029079, 63.085648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103868, 34.977180, 63.101273>,  <29.866081, 34.946041, 63.110649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103868, 34.977180, 63.101273>,  <30.500179, 35.029079, 63.085648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103868, 34.977180, 63.101273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033920, 0.041608, 0.998558,
		-0.131190, 0.990673, -0.036824,
		-0.990777, -0.129752, 0.039062,
		29.806635, 34.938255, 63.112991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213289, 35.546490, 63.554592>,  <30.500179, 35.029079, 63.085648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213289, 35.546490, 63.554592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.946083, 35.248978, 63.545204>,  <29.785759, 35.070473, 63.539574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.946083, 35.248978, 63.545204>,  <30.213289, 35.546490, 63.554592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946083, 35.248978, 63.545204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070971, 0.032285, 0.996956,
		-0.740756, 0.667647, -0.074353,
		-0.668015, -0.743778, -0.023468,
		29.745678, 35.025845, 63.538162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756134, 35.755867, 64.089874>,  <30.213289, 35.546490, 63.554592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756134, 35.755867, 64.089874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.728111, 35.358128, 64.057983>,  <29.711298, 35.119484, 64.038849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.728111, 35.358128, 64.057983>,  <29.756134, 35.755867, 64.089874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728111, 35.358128, 64.057983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087407, -0.073499, 0.993457,
		-0.993706, 0.076568, -0.081765,
		-0.070058, -0.994352, -0.079729,
		29.707094, 35.059822, 64.034065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972878, 35.870922, 63.709099>,  <29.756134, 35.755867, 64.089874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972878, 35.870922, 63.709099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.897049, 35.838909, 64.100540>,  <28.851553, 35.819702, 64.335403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.897049, 35.838909, 64.100540>,  <28.972878, 35.870922, 63.709099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897049, 35.838909, 64.100540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389189, 0.908908, 0.149727,
		-0.901441, 0.409244, -0.141154,
		-0.189570, -0.080034, 0.978600,
		28.840178, 35.814899, 64.394119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465979, 36.415573, 64.101379>,  <28.972878, 35.870922, 63.709099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465979, 36.415573, 64.101379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.750202, 36.307777, 64.361374>,  <28.920736, 36.243099, 64.517372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.750202, 36.307777, 64.361374>,  <28.465979, 36.415573, 64.101379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750202, 36.307777, 64.361374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258192, 0.959173, 0.115431,
		-0.654553, 0.085799, 0.751132,
		0.710561, -0.269492, 0.649982,
		28.963371, 36.226929, 64.556366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422308, 36.666168, 64.879593>,  <28.465979, 36.415573, 64.101379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422308, 36.666168, 64.879593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.767527, 36.637493, 64.679588>,  <28.974657, 36.620285, 64.559586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.767527, 36.637493, 64.679588>,  <28.422308, 36.666168, 64.879593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767527, 36.637493, 64.679588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224395, 0.941255, 0.252359,
		0.452546, -0.329997, 0.828435,
		0.863046, -0.071693, -0.500011,
		29.026440, 36.615986, 64.529587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424217, 37.454311, 64.821648>,  <28.422308, 36.666168, 64.879593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424217, 37.454311, 64.821648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.401926, 37.828621, 64.682373>,  <28.388552, 38.053207, 64.598808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.401926, 37.828621, 64.682373>,  <28.424217, 37.454311, 64.821648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401926, 37.828621, 64.682373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432449, -0.291691, -0.853173,
		-0.899935, -0.198116, -0.388417,
		-0.055729, 0.935771, -0.348178,
		28.385208, 38.109352, 64.577919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989433, 37.557934, 64.222038>,  <28.424217, 37.454311, 64.821648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989433, 37.557934, 64.222038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.304949, 37.799751, 64.266479>,  <28.494257, 37.944843, 64.293144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.304949, 37.799751, 64.266479>,  <27.989433, 37.557934, 64.222038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304949, 37.799751, 64.266479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417790, -0.394739, -0.818310,
		-0.450851, 0.691886, -0.563938,
		0.788786, 0.604544, 0.111095,
		28.541584, 37.981113, 64.299805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205265, 37.926254, 63.582920>,  <27.989433, 37.557934, 64.222038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205265, 37.926254, 63.582920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.512770, 37.866917, 63.831757>,  <28.697273, 37.831314, 63.981060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.512770, 37.866917, 63.831757>,  <28.205265, 37.926254, 63.582920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512770, 37.866917, 63.831757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557870, -0.320072, -0.765725,
		0.312704, 0.935707, -0.163303,
		0.768763, -0.148343, 0.622091,
		28.743399, 37.822414, 64.018387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661011, 38.239857, 63.193901>,  <28.205265, 37.926254, 63.582920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661011, 38.239857, 63.193901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.841742, 37.971397, 63.428989>,  <28.950180, 37.810322, 63.570042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.841742, 37.971397, 63.428989>,  <28.661011, 38.239857, 63.193901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841742, 37.971397, 63.428989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650761, -0.202676, -0.731732,
		0.610216, 0.713083, 0.345181,
		0.451825, -0.671145, 0.587723,
		28.977289, 37.770054, 63.605305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329878, 38.454418, 63.210190>,  <28.661011, 38.239857, 63.193901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329878, 38.454418, 63.210190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.308451, 38.059666, 63.271111>,  <29.295595, 37.822815, 63.307663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.308451, 38.059666, 63.271111>,  <29.329878, 38.454418, 63.210190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308451, 38.059666, 63.271111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670942, -0.148536, -0.726481,
		0.739573, 0.063273, 0.670096,
		-0.053567, -0.986881, 0.152306,
		29.292381, 37.763603, 63.316803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956219, 38.210709, 63.283703>,  <29.329878, 38.454418, 63.210190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956219, 38.210709, 63.283703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.764162, 37.888535, 63.144714>,  <29.648928, 37.695229, 63.061321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.764162, 37.888535, 63.144714>,  <29.956219, 38.210709, 63.283703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764162, 37.888535, 63.144714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641111, -0.051858, -0.765694,
		0.598698, -0.590410, 0.541273,
		-0.480143, -0.805436, -0.347471,
		29.620119, 37.646904, 63.040474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441982, 37.704983, 63.018623>,  <29.956219, 38.210709, 63.283703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441982, 37.704983, 63.018623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.091879, 37.601128, 62.855400>,  <29.881817, 37.538815, 62.757465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.091879, 37.601128, 62.855400>,  <30.441982, 37.704983, 63.018623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091879, 37.601128, 62.855400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453477, -0.147162, -0.879035,
		0.168179, -0.954428, 0.246544,
		-0.875257, -0.259637, -0.408061,
		29.829302, 37.523235, 62.732983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661678, 37.263927, 62.575348>,  <30.441982, 37.704983, 63.018623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661678, 37.263927, 62.575348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.304190, 37.406971, 62.466991>,  <30.089697, 37.492798, 62.401978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.304190, 37.406971, 62.466991>,  <30.661678, 37.263927, 62.575348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304190, 37.406971, 62.466991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255391, -0.090885, -0.962557,
		-0.368838, -0.929439, -0.010105,
		-0.893719, 0.357608, -0.270892,
		30.036074, 37.514252, 62.385723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433531, 36.865231, 61.994263>,  <30.661678, 37.263927, 62.575348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433531, 36.865231, 61.994263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.208858, 37.179218, 61.889702>,  <30.074055, 37.367611, 61.826965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.208858, 37.179218, 61.889702>,  <30.433531, 36.865231, 61.994263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208858, 37.179218, 61.889702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293886, -0.106047, -0.949939,
		-0.773398, -0.610385, -0.171128,
		-0.561681, 0.784974, -0.261400,
		30.040354, 37.414711, 61.811283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090265, 36.771317, 61.337147>,  <30.433531, 36.865231, 61.994263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090265, 36.771317, 61.337147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.069698, 37.169426, 61.370121>,  <30.057358, 37.408291, 61.389904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.069698, 37.169426, 61.370121>,  <30.090265, 36.771317, 61.337147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069698, 37.169426, 61.370121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176032, 0.090284, -0.980235,
		-0.983041, -0.035891, -0.179841,
		-0.051419, 0.995269, 0.082435,
		30.054274, 37.468006, 61.394852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830881, 36.887718, 60.714397>,  <30.090265, 36.771317, 61.337147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830881, 36.887718, 60.714397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.956274, 37.249920, 60.828789>,  <30.031509, 37.467243, 60.897423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.956274, 37.249920, 60.828789>,  <29.830881, 36.887718, 60.714397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956274, 37.249920, 60.828789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174869, 0.240964, -0.954650,
		-0.933354, 0.349275, -0.082807,
		0.313482, 0.905507, 0.285982,
		30.050318, 37.521572, 60.914585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583895, 37.251736, 60.255123>,  <29.830881, 36.887718, 60.714397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583895, 37.251736, 60.255123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.869390, 37.489765, 60.402885>,  <30.040688, 37.632584, 60.491543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.869390, 37.489765, 60.402885>,  <29.583895, 37.251736, 60.255123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869390, 37.489765, 60.402885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199311, 0.333050, -0.921603,
		-0.671455, 0.731411, 0.119105,
		0.713739, 0.595076, 0.369406,
		30.083511, 37.668289, 60.513706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481321, 37.834370, 59.823524>,  <29.583895, 37.251736, 60.255123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481321, 37.834370, 59.823524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.848877, 37.873344, 59.976444>,  <30.069410, 37.896729, 60.068195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.848877, 37.873344, 59.976444>,  <29.481321, 37.834370, 59.823524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848877, 37.873344, 59.976444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337982, 0.305428, -0.890214,
		-0.203506, 0.947216, 0.247722,
		0.918887, 0.097438, 0.382298,
		30.124542, 37.902576, 60.091133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738115, 38.494083, 59.674911>,  <29.481321, 37.834370, 59.823524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738115, 38.494083, 59.674911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073902, 38.284981, 59.734268>,  <30.275375, 38.159519, 59.769882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073902, 38.284981, 59.734268>,  <29.738115, 38.494083, 59.674911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073902, 38.284981, 59.734268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372808, 0.355359, -0.857167,
		0.395358, 0.774884, 0.493200,
		0.839468, -0.522757, 0.148389,
		30.325743, 38.128155, 59.778786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233099, 39.018810, 59.520470>,  <29.738115, 38.494083, 59.674911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233099, 39.018810, 59.520470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438131, 38.675354, 59.520653>,  <30.561150, 38.469280, 59.520763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438131, 38.675354, 59.520653>,  <30.233099, 39.018810, 59.520470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438131, 38.675354, 59.520653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438718, 0.261437, -0.859754,
		0.738098, 0.440894, 0.510708,
		0.512579, -0.858640, 0.000462,
		30.591906, 38.417763, 59.520790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970270, 39.174595, 59.365833>,  <30.233099, 39.018810, 59.520470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970270, 39.174595, 59.365833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.901375, 38.793678, 59.265049>,  <30.860037, 38.565128, 59.204578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.901375, 38.793678, 59.265049>,  <30.970270, 39.174595, 59.365833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901375, 38.793678, 59.265049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459036, 0.148719, -0.875881,
		0.871562, -0.266518, 0.411519,
		-0.172238, -0.952287, -0.251959,
		30.849703, 38.507992, 59.189461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590933, 38.954624, 59.084728>,  <30.970270, 39.174595, 59.365833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590933, 38.954624, 59.084728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.327078, 38.693291, 58.936119>,  <31.168764, 38.536491, 58.846954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.327078, 38.693291, 58.936119>,  <31.590933, 38.954624, 59.084728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327078, 38.693291, 58.936119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436584, 0.069284, -0.896992,
		0.611777, -0.753892, 0.239534,
		-0.659639, -0.653336, -0.371523,
		31.129187, 38.497292, 58.824661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995548, 38.507370, 58.949085>,  <31.590933, 38.954624, 59.084728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995548, 38.507370, 58.949085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.671783, 38.444538, 58.722748>,  <31.477524, 38.406837, 58.586945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.671783, 38.444538, 58.722748>,  <31.995548, 38.507370, 58.949085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671783, 38.444538, 58.722748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573434, -0.003703, -0.819243,
		0.126592, -0.987579, 0.093072,
		-0.809412, -0.157081, -0.565843,
		31.428961, 38.397415, 58.552994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202091, 37.925980, 58.567307>,  <31.995548, 38.507370, 58.949085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202091, 37.925980, 58.567307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920427, 38.148090, 58.390293>,  <31.751431, 38.281357, 58.284084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920427, 38.148090, 58.390293>,  <32.202091, 37.925980, 58.567307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920427, 38.148090, 58.390293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516956, -0.026327, -0.855607,
		-0.486746, -0.831252, -0.268513,
		-0.704156, 0.555273, -0.442535,
		31.709181, 38.314671, 58.257534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193977, 37.643272, 57.851440>,  <32.202091, 37.925980, 58.567307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193977, 37.643272, 57.851440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981770, 37.980690, 57.818001>,  <31.854445, 38.183140, 57.797935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981770, 37.980690, 57.818001>,  <32.193977, 37.643272, 57.851440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981770, 37.980690, 57.818001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418747, 0.175049, -0.891072,
		-0.737022, -0.507737, -0.446097,
		-0.530519, 0.843541, -0.083598,
		31.822615, 38.233753, 57.792923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786428, 37.571869, 57.214115>,  <32.193977, 37.643272, 57.851440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786428, 37.571869, 57.214115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.846697, 37.959324, 57.293140>,  <31.882858, 38.191799, 57.340557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.846697, 37.959324, 57.293140>,  <31.786428, 37.571869, 57.214115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846697, 37.959324, 57.293140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369869, 0.130097, -0.919930,
		-0.916785, 0.211682, -0.338668,
		0.150673, 0.968641, 0.197565,
		31.891899, 38.249916, 57.352409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583740, 38.022469, 56.567471>,  <31.786428, 37.571869, 57.214115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583740, 38.022469, 56.567471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.822012, 38.250648, 56.793659>,  <31.964975, 38.387554, 56.929371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.822012, 38.250648, 56.793659>,  <31.583740, 38.022469, 56.567471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822012, 38.250648, 56.793659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444218, 0.352577, -0.823626,
		-0.669207, 0.741809, -0.043380,
		0.595679, 0.570447, 0.565471,
		32.000717, 38.421783, 56.963299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559355, 38.677814, 56.250423>,  <31.583740, 38.022469, 56.567471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559355, 38.677814, 56.250423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894123, 38.656063, 56.468269>,  <32.094986, 38.643013, 56.598976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894123, 38.656063, 56.468269>,  <31.559355, 38.677814, 56.250423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894123, 38.656063, 56.468269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491348, 0.513006, -0.703848,
		-0.241117, 0.856661, 0.456064,
		0.836923, -0.054376, 0.544613,
		32.145199, 38.639751, 56.631653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920177, 39.285660, 56.107399>,  <31.559355, 38.677814, 56.250423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920177, 39.285660, 56.107399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194794, 39.036808, 56.257931>,  <32.359562, 38.887497, 56.348251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194794, 39.036808, 56.257931>,  <31.920177, 39.285660, 56.107399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194794, 39.036808, 56.257931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639493, 0.270357, -0.719692,
		0.345997, 0.734756, 0.583456,
		0.686539, -0.622127, 0.376328,
		32.400757, 38.850170, 56.370831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512554, 39.624973, 55.873646>,  <31.920177, 39.285660, 56.107399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512554, 39.624973, 55.873646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621944, 39.261921, 56.001026>,  <32.687580, 39.044090, 56.077454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621944, 39.261921, 56.001026>,  <32.512554, 39.624973, 55.873646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621944, 39.261921, 56.001026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778147, 0.014154, -0.627923,
		0.565417, 0.419524, 0.710143,
		0.273480, -0.907634, 0.318449,
		32.703987, 38.989632, 56.096561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219437, 39.692501, 55.849651>,  <32.512554, 39.624973, 55.873646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219437, 39.692501, 55.849651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.167267, 39.296726, 55.874950>,  <33.135967, 39.059261, 55.890129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.167267, 39.296726, 55.874950>,  <33.219437, 39.692501, 55.849651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167267, 39.296726, 55.874950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594775, -0.129120, -0.793455,
		0.793242, -0.065864, 0.605334,
		-0.130421, -0.989439, 0.063249,
		33.128139, 38.999893, 55.893925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914539, 39.435280, 55.863949>,  <33.219437, 39.692501, 55.849651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914539, 39.435280, 55.863949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659470, 39.151726, 55.743378>,  <33.506428, 38.981594, 55.671036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659470, 39.151726, 55.743378>,  <33.914539, 39.435280, 55.863949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659470, 39.151726, 55.743378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519866, -0.107283, -0.847484,
		0.568429, -0.697120, 0.436935,
		-0.637674, -0.708882, -0.301426,
		33.468166, 38.939060, 55.652950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405819, 38.919125, 55.713150>,  <33.914539, 39.435280, 55.863949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405819, 38.919125, 55.713150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071487, 38.824562, 55.514957>,  <33.870888, 38.767826, 55.396042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071487, 38.824562, 55.514957>,  <34.405819, 38.919125, 55.713150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071487, 38.824562, 55.514957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514164, -0.020777, -0.857440,
		0.192408, -0.971433, 0.138916,
		-0.835832, -0.236404, -0.495478,
		33.820740, 38.753639, 55.366314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475647, 38.217216, 55.420948>,  <34.405819, 38.919125, 55.713150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475647, 38.217216, 55.420948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.190472, 38.395050, 55.204037>,  <34.019367, 38.501751, 55.073891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.190472, 38.395050, 55.204037>,  <34.475647, 38.217216, 55.420948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190472, 38.395050, 55.204037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486663, -0.243057, -0.839096,
		-0.504855, -0.862128, -0.043080,
		-0.712938, 0.444587, -0.542275,
		33.976589, 38.528427, 55.041355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199390, 37.733837, 54.955284>,  <34.475647, 38.217216, 55.420948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199390, 37.733837, 54.955284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083973, 38.078785, 54.788887>,  <34.014721, 38.285755, 54.689049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083973, 38.078785, 54.788887>,  <34.199390, 37.733837, 54.955284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083973, 38.078785, 54.788887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235883, -0.357059, -0.903808,
		-0.927956, -0.358915, -0.100392,
		-0.288545, 0.862374, -0.415997,
		33.997410, 38.337498, 54.664089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723270, 37.543724, 54.444958>,  <34.199390, 37.733837, 54.955284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723270, 37.543724, 54.444958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814003, 37.918587, 54.338905>,  <33.868443, 38.143505, 54.275272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814003, 37.918587, 54.338905>,  <33.723270, 37.543724, 54.444958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814003, 37.918587, 54.338905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162599, -0.304844, -0.938420,
		-0.960265, 0.169753, -0.221528,
		0.226831, 0.937152, -0.265130,
		33.882053, 38.199734, 54.259365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387135, 37.515915, 53.872581>,  <33.723270, 37.543724, 54.444958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387135, 37.515915, 53.872581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.619678, 37.840389, 53.847324>,  <33.759205, 38.035076, 53.832169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.619678, 37.840389, 53.847324>,  <33.387135, 37.515915, 53.872581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619678, 37.840389, 53.847324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175758, -0.200978, -0.963700,
		-0.794434, 0.549162, -0.259414,
		0.581364, 0.811190, -0.063144,
		33.794086, 38.083748, 53.828381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142754, 37.925842, 53.338371>,  <33.387135, 37.515915, 53.872581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142754, 37.925842, 53.338371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526382, 38.031929, 53.378033>,  <33.756561, 38.095581, 53.401829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526382, 38.031929, 53.378033>,  <33.142754, 37.925842, 53.338371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526382, 38.031929, 53.378033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159828, -0.218015, -0.962769,
		-0.233727, 0.939217, -0.251483,
		0.959076, 0.265219, 0.099157,
		33.814106, 38.111496, 53.407780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395428, 38.304996, 52.636772>,  <33.142754, 37.925842, 53.338371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395428, 38.304996, 52.636772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731213, 38.238041, 52.843567>,  <33.932686, 38.197868, 52.967644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731213, 38.238041, 52.843567>,  <33.395428, 38.304996, 52.636772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731213, 38.238041, 52.843567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436548, -0.358825, -0.825028,
		0.323613, 0.918272, -0.228145,
		0.839465, -0.167393, 0.516990,
		33.983051, 38.187824, 52.998665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990246, 38.596176, 52.271873>,  <33.395428, 38.304996, 52.636772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990246, 38.596176, 52.271873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140755, 38.304661, 52.500706>,  <34.231060, 38.129749, 52.638008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140755, 38.304661, 52.500706>,  <33.990246, 38.596176, 52.271873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140755, 38.304661, 52.500706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630955, -0.250595, -0.734233,
		0.678463, 0.637234, 0.365541,
		0.376275, -0.728790, 0.572085,
		34.253639, 38.086025, 52.672333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681828, 38.703194, 52.243809>,  <33.990246, 38.596176, 52.271873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681828, 38.703194, 52.243809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635666, 38.317932, 52.340988>,  <34.607971, 38.086777, 52.399296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635666, 38.317932, 52.340988>,  <34.681828, 38.703194, 52.243809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635666, 38.317932, 52.340988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588636, -0.263318, -0.764311,
		0.800119, 0.054804, 0.597333,
		-0.115401, -0.963151, 0.242945,
		34.601044, 38.028988, 52.413872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357647, 38.306927, 52.209652>,  <34.681828, 38.703194, 52.243809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357647, 38.306927, 52.209652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.096249, 38.004585, 52.193546>,  <34.939407, 37.823181, 52.183884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.096249, 38.004585, 52.193546>,  <35.357647, 38.306927, 52.209652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096249, 38.004585, 52.193546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385520, -0.286590, -0.877064,
		0.651395, -0.588682, 0.478684,
		-0.653498, -0.755857, -0.040265,
		34.900200, 37.777828, 52.181465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791203, 37.807125, 51.995453>,  <35.357647, 38.306927, 52.209652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791203, 37.807125, 51.995453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427910, 37.678303, 51.888577>,  <35.209934, 37.601009, 51.824451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427910, 37.678303, 51.888577>,  <35.791203, 37.807125, 51.995453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427910, 37.678303, 51.888577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414644, -0.606551, -0.678356,
		0.056401, -0.726895, 0.684429,
		-0.908234, -0.322054, -0.267192,
		35.155441, 37.581688, 51.808418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885490, 37.123932, 51.900887>,  <35.791203, 37.807125, 51.995453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885490, 37.123932, 51.900887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541084, 37.188248, 51.707886>,  <35.334442, 37.226837, 51.592087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541084, 37.188248, 51.707886>,  <35.885490, 37.123932, 51.900887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541084, 37.188248, 51.707886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291530, -0.621339, -0.727288,
		-0.416736, -0.766867, 0.488105,
		-0.861012, 0.160790, -0.482499,
		35.282780, 37.236485, 51.563137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702473, 36.491211, 51.793705>,  <35.885490, 37.123932, 51.900887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702473, 36.491211, 51.793705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534081, 36.721069, 51.512974>,  <35.433044, 36.858982, 51.344536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534081, 36.721069, 51.512974>,  <35.702473, 36.491211, 51.793705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534081, 36.721069, 51.512974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310580, -0.635646, -0.706749,
		-0.852242, -0.515501, 0.089121,
		-0.420980, 0.574642, -0.701828,
		35.407787, 36.893463, 51.302425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369427, 36.064686, 51.318306>,  <35.702473, 36.491211, 51.793705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369427, 36.064686, 51.318306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388599, 36.413731, 51.123882>,  <35.400101, 36.623158, 51.007229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388599, 36.413731, 51.123882>,  <35.369427, 36.064686, 51.318306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388599, 36.413731, 51.123882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118780, -0.488144, -0.864642,
		-0.991763, -0.016291, -0.127045,
		0.047930, 0.872611, -0.486059,
		35.402977, 36.675514, 50.978065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897030, 36.018829, 50.736195>,  <35.369427, 36.064686, 51.318306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897030, 36.018829, 50.736195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154942, 36.301041, 50.618553>,  <35.309689, 36.470367, 50.547970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154942, 36.301041, 50.618553>,  <34.897030, 36.018829, 50.736195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154942, 36.301041, 50.618553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032185, -0.359362, -0.932643,
		-0.763695, 0.610811, -0.209000,
		0.644775, 0.705528, -0.294102,
		35.348373, 36.512699, 50.530323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689747, 36.202961, 50.056255>,  <34.897030, 36.018829, 50.736195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689747, 36.202961, 50.056255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056435, 36.359024, 50.090679>,  <35.276447, 36.452663, 50.111332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056435, 36.359024, 50.090679>,  <34.689747, 36.202961, 50.056255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056435, 36.359024, 50.090679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083384, 0.023827, -0.996233,
		-0.390739, 0.920440, -0.010690,
		0.916717, 0.390158, 0.086060,
		35.331451, 36.476070, 50.116497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719921, 36.787270, 49.658493>,  <34.689747, 36.202961, 50.056255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719921, 36.787270, 49.658493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106514, 36.691936, 49.696667>,  <35.338470, 36.634739, 49.719570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106514, 36.691936, 49.696667>,  <34.719921, 36.787270, 49.658493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106514, 36.691936, 49.696667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122860, 0.102955, -0.987069,
		0.225423, 0.965711, 0.128786,
		0.966483, -0.238331, 0.095439,
		35.396458, 36.620438, 49.725300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772598, 37.420811, 49.266922>,  <34.719921, 36.787270, 49.658493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772598, 37.420811, 49.266922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.482311, 37.637794, 49.097656>,  <34.308140, 37.767982, 48.996098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.482311, 37.637794, 49.097656>,  <34.772598, 37.420811, 49.266922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482311, 37.637794, 49.097656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381445, 0.194635, 0.903668,
		0.572563, 0.817227, 0.065666,
		-0.725721, 0.542455, -0.423168,
		34.264595, 37.800529, 48.970707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651871, 37.947491, 49.715027>,  <34.772598, 37.420811, 49.266922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651871, 37.947491, 49.715027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.303223, 37.953537, 49.519047>,  <34.094032, 37.957165, 49.401459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.303223, 37.953537, 49.519047>,  <34.651871, 37.947491, 49.715027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303223, 37.953537, 49.519047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479127, 0.184816, 0.858068,
		0.103524, 0.982657, -0.153845,
		-0.871619, 0.015119, -0.489951,
		34.041737, 37.958073, 49.372063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296394, 38.519718, 49.954323>,  <34.651871, 37.947491, 49.715027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296394, 38.519718, 49.954323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005966, 38.293251, 49.798229>,  <33.831711, 38.157372, 49.704575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005966, 38.293251, 49.798229>,  <34.296394, 38.519718, 49.954323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005966, 38.293251, 49.798229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616097, 0.283610, 0.734840,
		-0.305368, 0.773964, -0.554734,
		-0.726068, -0.566167, -0.390232,
		33.788147, 38.123402, 49.681160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640247, 38.895317, 49.952526>,  <34.296394, 38.519718, 49.954323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640247, 38.895317, 49.952526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526100, 38.511986, 49.947392>,  <33.457611, 38.281986, 49.944313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526100, 38.511986, 49.947392>,  <33.640247, 38.895317, 49.952526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526100, 38.511986, 49.947392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744365, 0.213181, 0.632830,
		-0.603725, 0.190144, -0.774184,
		-0.285370, -0.958331, -0.012834,
		33.440491, 38.224487, 49.943542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894955, 38.905102, 50.085827>,  <33.640247, 38.895317, 49.952526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894955, 38.905102, 50.085827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992744, 38.519707, 50.129490>,  <33.051418, 38.288467, 50.155689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992744, 38.519707, 50.129490>,  <32.894955, 38.905102, 50.085827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992744, 38.519707, 50.129490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760791, -0.120800, 0.637655,
		-0.601188, -0.238942, -0.762548,
		0.244478, -0.963491, 0.109161,
		33.066090, 38.230659, 50.162239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338947, 38.615562, 49.960300>,  <32.894955, 38.905102, 50.085827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338947, 38.615562, 49.960300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.538170, 38.357502, 50.192066>,  <32.657703, 38.202667, 50.331127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.538170, 38.357502, 50.192066>,  <32.338947, 38.615562, 49.960300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538170, 38.357502, 50.192066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799597, -0.083132, 0.594756,
		-0.335536, -0.759523, -0.557262,
		0.498057, -0.645147, 0.579418,
		32.687588, 38.163960, 50.365891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948307, 38.035511, 49.962181>,  <32.338947, 38.615562, 49.960300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948307, 38.035511, 49.962181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.174381, 38.021183, 50.291855>,  <32.310024, 38.012585, 50.489658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.174381, 38.021183, 50.291855>,  <31.948307, 38.035511, 49.962181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174381, 38.021183, 50.291855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823154, 0.041661, 0.566288,
		-0.054622, -0.998489, -0.005941,
		0.565186, -0.035823, 0.824186,
		32.343937, 38.010437, 50.539112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775915, 37.500664, 50.350452>,  <31.948307, 38.035511, 49.962181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775915, 37.500664, 50.350452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.956476, 37.730843, 50.623241>,  <32.064812, 37.868950, 50.786915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.956476, 37.730843, 50.623241>,  <31.775915, 37.500664, 50.350452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956476, 37.730843, 50.623241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646772, -0.315535, 0.694351,
		0.614752, -0.754516, 0.229752,
		0.451404, 0.575451, 0.681975,
		32.091896, 37.903477, 50.827835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531904, 37.140110, 50.951218>,  <31.775915, 37.500664, 50.350452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531904, 37.140110, 50.951218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697744, 37.470444, 51.104115>,  <31.797249, 37.668644, 51.195854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697744, 37.470444, 51.104115>,  <31.531904, 37.140110, 50.951218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697744, 37.470444, 51.104115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656348, -0.019577, 0.754204,
		0.630329, -0.563576, 0.533917,
		0.414599, 0.825832, 0.382242,
		31.822124, 37.718193, 51.218788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418985, 37.019699, 51.689934>,  <31.531904, 37.140110, 50.951218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418985, 37.019699, 51.689934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.478168, 37.411121, 51.632610>,  <31.513678, 37.645973, 51.598217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.478168, 37.411121, 51.632610>,  <31.418985, 37.019699, 51.689934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478168, 37.411121, 51.632610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648180, 0.205390, 0.733265,
		0.746975, -0.015602, 0.664669,
		0.147957, 0.978556, -0.143308,
		31.522556, 37.704689, 51.589619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432070, 37.322323, 52.380390>,  <31.418985, 37.019699, 51.689934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432070, 37.322323, 52.380390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348454, 37.621120, 52.127945>,  <31.298285, 37.800400, 51.976479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348454, 37.621120, 52.127945>,  <31.432070, 37.322323, 52.380390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348454, 37.621120, 52.127945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646648, 0.378546, 0.662231,
		0.733586, 0.546544, 0.403908,
		-0.209040, 0.746989, -0.631117,
		31.285742, 37.845219, 51.938610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409491, 37.839752, 52.828239>,  <31.432070, 37.322323, 52.380390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409491, 37.839752, 52.828239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193834, 37.912472, 52.499294>,  <31.064440, 37.956104, 52.301929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193834, 37.912472, 52.499294>,  <31.409491, 37.839752, 52.828239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193834, 37.912472, 52.499294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699410, 0.447326, 0.557427,
		0.469204, 0.875698, -0.114019,
		-0.539142, 0.181801, -0.822359,
		31.032091, 37.967010, 52.252586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454443, 38.527046, 52.853092>,  <31.409491, 37.839752, 52.828239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454443, 38.527046, 52.853092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160582, 38.415291, 52.605797>,  <30.984264, 38.348236, 52.457420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160582, 38.415291, 52.605797>,  <31.454443, 38.527046, 52.853092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160582, 38.415291, 52.605797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671280, 0.431392, 0.602731,
		0.098309, 0.857813, -0.504473,
		-0.734656, -0.279388, -0.618242,
		30.940186, 38.331474, 52.420322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126003, 39.069485, 52.620399>,  <31.454443, 38.527046, 52.853092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126003, 39.069485, 52.620399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.853731, 38.776512, 52.614498>,  <30.690367, 38.600727, 52.610958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.853731, 38.776512, 52.614498>,  <31.126003, 39.069485, 52.620399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853731, 38.776512, 52.614498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566620, 0.513612, 0.644318,
		-0.464342, 0.446933, -0.764616,
		-0.680683, -0.732430, -0.014750,
		30.649527, 38.556782, 52.610073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573673, 39.400940, 52.834175>,  <31.126003, 39.069485, 52.620399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573673, 39.400940, 52.834175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.426088, 39.029167, 52.832619>,  <30.337538, 38.806103, 52.831684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.426088, 39.029167, 52.832619>,  <30.573673, 39.400940, 52.834175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426088, 39.029167, 52.832619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731997, 0.287996, 0.617446,
		-0.572755, 0.230666, -0.786604,
		-0.368962, -0.929437, -0.003896,
		30.315399, 38.750336, 52.831451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842342, 39.450714, 52.710495>,  <30.573673, 39.400940, 52.834175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842342, 39.450714, 52.710495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938105, 39.104401, 52.886265>,  <29.995562, 38.896610, 52.991726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938105, 39.104401, 52.886265>,  <29.842342, 39.450714, 52.710495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938105, 39.104401, 52.886265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369170, 0.337426, 0.865943,
		-0.897997, -0.369536, -0.238841,
		0.239406, -0.865787, 0.439429,
		30.009926, 38.844666, 53.018093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232573, 39.233395, 53.084705>,  <29.842342, 39.450714, 52.710495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232573, 39.233395, 53.084705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.529909, 39.014130, 53.238049>,  <29.708311, 38.882572, 53.330055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.529909, 39.014130, 53.238049>,  <29.232573, 39.233395, 53.084705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529909, 39.014130, 53.238049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417645, 0.067345, 0.906111,
		-0.522513, -0.833657, -0.178877,
		0.743339, -0.548161, 0.383362,
		29.752911, 38.849682, 53.353058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938015, 38.734951, 53.484028>,  <29.232573, 39.233395, 53.084705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938015, 38.734951, 53.484028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.308123, 38.750011, 53.635006>,  <29.530188, 38.759048, 53.725594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.308123, 38.750011, 53.635006>,  <28.938015, 38.734951, 53.484028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308123, 38.750011, 53.635006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373276, -0.086501, 0.923679,
		0.067429, -0.995540, -0.065981,
		0.925267, 0.037654, 0.377444,
		29.585703, 38.761307, 53.748238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999832, 38.299339, 54.023922>,  <28.938015, 38.734951, 53.484028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999832, 38.299339, 54.023922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.343311, 38.476391, 54.127243>,  <29.549398, 38.582623, 54.189236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.343311, 38.476391, 54.127243>,  <28.999832, 38.299339, 54.023922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343311, 38.476391, 54.127243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260450, -0.057172, 0.963793,
		0.441368, -0.894882, 0.066189,
		0.858697, 0.442626, 0.258306,
		29.600920, 38.609180, 54.204735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303865, 37.943211, 54.538761>,  <28.999832, 38.299339, 54.023922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303865, 37.943211, 54.538761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.476913, 38.300785, 54.585606>,  <29.580742, 38.515331, 54.613712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.476913, 38.300785, 54.585606>,  <29.303865, 37.943211, 54.538761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476913, 38.300785, 54.585606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235365, -0.013410, 0.971814,
		0.870313, -0.447989, 0.204601,
		0.432618, 0.893939, 0.117112,
		29.606699, 38.568966, 54.620739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603922, 37.882912, 55.133068>,  <29.303865, 37.943211, 54.538761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603922, 37.882912, 55.133068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.591122, 38.278576, 55.075756>,  <29.583443, 38.515976, 55.041370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.591122, 38.278576, 55.075756>,  <29.603922, 37.882912, 55.133068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591122, 38.278576, 55.075756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177334, 0.135457, 0.974784,
		0.983630, 0.056601, 0.171078,
		-0.032000, 0.989165, -0.143277,
		29.581522, 38.575325, 55.032772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085979, 38.141933, 55.618778>,  <29.603922, 37.882912, 55.133068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085979, 38.141933, 55.618778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.856613, 38.457664, 55.530994>,  <29.718994, 38.647102, 55.478325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.856613, 38.457664, 55.530994>,  <30.085979, 38.141933, 55.618778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856613, 38.457664, 55.530994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230474, 0.101636, 0.967756,
		0.786179, 0.605504, 0.123639,
		-0.573414, 0.789325, -0.219457,
		29.684589, 38.694462, 55.465157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195051, 38.543388, 56.161213>,  <30.085979, 38.141933, 55.618778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195051, 38.543388, 56.161213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.853430, 38.679619, 56.003937>,  <29.648457, 38.761356, 55.909569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.853430, 38.679619, 56.003937>,  <30.195051, 38.543388, 56.161213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853430, 38.679619, 56.003937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429539, -0.035375, 0.902355,
		0.293410, 0.939552, 0.176502,
		-0.854053, 0.340575, -0.393195,
		29.597214, 38.781792, 55.885979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849880, 39.210144, 56.645657>,  <30.195051, 38.543388, 56.161213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849880, 39.210144, 56.645657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.575506, 39.017178, 56.427750>,  <29.410881, 38.901398, 56.297005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.575506, 39.017178, 56.427750>,  <29.849880, 39.210144, 56.645657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575506, 39.017178, 56.427750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647969, 0.064295, 0.758948,
		-0.331101, 0.873581, -0.356691,
		-0.685936, -0.482413, -0.544765,
		29.369726, 38.872452, 56.264320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155533, 39.461433, 56.933327>,  <29.849880, 39.210144, 56.645657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155533, 39.461433, 56.933327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.083412, 39.127163, 56.725811>,  <29.040140, 38.926601, 56.601303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.083412, 39.127163, 56.725811>,  <29.155533, 39.461433, 56.933327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083412, 39.127163, 56.725811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710610, -0.254009, 0.656135,
		-0.680092, 0.486955, -0.548041,
		-0.180301, -0.835675, -0.518785,
		29.029322, 38.876461, 56.570175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402493, 39.311020, 56.934441>,  <29.155533, 39.461433, 56.933327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402493, 39.311020, 56.934441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.576733, 38.961830, 56.846645>,  <28.681276, 38.752316, 56.793968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.576733, 38.961830, 56.846645>,  <28.402493, 39.311020, 56.934441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576733, 38.961830, 56.846645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560707, -0.453901, 0.692518,
		-0.704175, -0.178590, -0.687199,
		0.435598, -0.872972, -0.219489,
		28.707413, 38.699940, 56.780800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884129, 38.697033, 56.694920>,  <28.402493, 39.311020, 56.934441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884129, 38.697033, 56.694920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.217196, 38.596680, 56.892395>,  <28.417036, 38.536469, 57.010880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.217196, 38.596680, 56.892395>,  <27.884129, 38.697033, 56.694920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217196, 38.596680, 56.892395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553123, -0.420073, 0.719440,
		0.026894, -0.872123, -0.488547,
		0.832665, -0.250878, 0.493688,
		28.466995, 38.521416, 57.040501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843811, 37.953419, 56.949074>,  <27.884129, 38.697033, 56.694920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.843811, 37.953419, 56.949074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.136763, 38.100533, 57.178280>,  <28.312534, 38.188801, 57.315804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.136763, 38.100533, 57.178280>,  <27.843811, 37.953419, 56.949074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136763, 38.100533, 57.178280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348203, -0.520895, 0.779373,
		0.585127, -0.770325, -0.253428,
		0.732380, 0.367788, 0.573020,
		28.356476, 38.210869, 57.350185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064199, 37.434772, 57.367588>,  <27.843811, 37.953419, 56.949074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064199, 37.434772, 57.367588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.200401, 37.759857, 57.556713>,  <28.282122, 37.954910, 57.670189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.200401, 37.759857, 57.556713>,  <28.064199, 37.434772, 57.367588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200401, 37.759857, 57.556713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304811, -0.380289, 0.873196,
		0.889464, -0.441445, 0.118234,
		0.340505, 0.812715, 0.472811,
		28.302553, 38.003674, 57.698555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463682, 37.178413, 57.973930>,  <28.064199, 37.434772, 57.367588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463682, 37.178413, 57.973930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.384655, 37.558155, 58.071663>,  <28.337238, 37.785999, 58.130302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.384655, 37.558155, 58.071663>,  <28.463682, 37.178413, 57.973930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384655, 37.558155, 58.071663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195666, -0.282418, 0.939125,
		0.960564, 0.137732, 0.241552,
		-0.197566, 0.949352, 0.244331,
		28.325386, 37.842960, 58.144962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650736, 37.189781, 58.646343>,  <28.463682, 37.178413, 57.973930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650736, 37.189781, 58.646343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.401846, 37.502468, 58.629574>,  <28.252512, 37.690079, 58.619511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.401846, 37.502468, 58.629574>,  <28.650736, 37.189781, 58.646343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401846, 37.502468, 58.629574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506310, -0.361004, 0.783151,
		0.597066, 0.508524, 0.620416,
		-0.622224, 0.781716, -0.041928,
		28.215179, 37.736984, 58.616997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528345, 37.345707, 59.366917>,  <28.650736, 37.189781, 58.646343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528345, 37.345707, 59.366917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242815, 37.569530, 59.198467>,  <28.071497, 37.703823, 59.097397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242815, 37.569530, 59.198467>,  <28.528345, 37.345707, 59.366917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242815, 37.569530, 59.198467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615399, -0.214162, 0.758564,
		0.334272, 0.800643, 0.497226,
		-0.713825, 0.559559, -0.421126,
		28.028667, 37.737396, 59.072128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165470, 37.849697, 59.786495>,  <28.528345, 37.345707, 59.366917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165470, 37.849697, 59.786495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.918863, 37.685707, 59.517620>,  <27.770899, 37.587315, 59.356297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.918863, 37.685707, 59.517620>,  <28.165470, 37.849697, 59.786495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918863, 37.685707, 59.517620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648170, -0.220386, 0.728907,
		-0.446971, 0.885073, -0.129859,
		-0.616516, -0.409971, -0.672184,
		27.733908, 37.562717, 59.315964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539320, 37.811264, 60.134762>,  <28.165470, 37.849697, 59.786495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539320, 37.811264, 60.134762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.443007, 37.591965, 59.814400>,  <27.385218, 37.460384, 59.622185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.443007, 37.591965, 59.814400>,  <27.539320, 37.811264, 60.134762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443007, 37.591965, 59.814400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700434, -0.473070, 0.534413,
		-0.671875, 0.689658, -0.270104,
		-0.240784, -0.548249, -0.800903,
		27.370771, 37.427490, 59.574127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767424, 37.945328, 60.006725>,  <27.539320, 37.811264, 60.134762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767424, 37.945328, 60.006725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.880545, 37.598347, 59.842995>,  <26.948418, 37.390160, 59.744755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.880545, 37.598347, 59.842995>,  <26.767424, 37.945328, 60.006725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880545, 37.598347, 59.842995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656231, -0.486220, 0.577019,
		-0.699561, 0.105433, -0.706752,
		0.282801, -0.867452, -0.409329,
		26.965385, 37.338112, 59.720196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177923, 37.544926, 60.021576>,  <26.767424, 37.945328, 60.006725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177923, 37.544926, 60.021576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.449633, 37.257320, 59.962776>,  <26.612658, 37.084759, 59.927498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.449633, 37.257320, 59.962776>,  <26.177923, 37.544926, 60.021576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449633, 37.257320, 59.962776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580919, -0.649193, 0.491000,
		-0.448465, -0.248130, -0.858668,
		0.679273, -0.719013, -0.146997,
		26.653414, 37.041618, 59.918678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914227, 36.887299, 59.780499>,  <26.177923, 37.544926, 60.021576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914227, 36.887299, 59.780499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.252211, 36.764465, 59.955650>,  <26.455002, 36.690765, 60.060741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.252211, 36.764465, 59.955650>,  <25.914227, 36.887299, 59.780499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252211, 36.764465, 59.955650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509435, -0.711405, 0.484127,
		0.162846, -0.632141, -0.757548,
		0.844960, -0.307084, 0.437884,
		26.505699, 36.672340, 60.087017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754284, 36.183136, 59.828751>,  <25.914227, 36.887299, 59.780499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754284, 36.183136, 59.828751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.087725, 36.211315, 60.047894>,  <26.287790, 36.228222, 60.179379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.087725, 36.211315, 60.047894>,  <25.754284, 36.183136, 59.828751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087725, 36.211315, 60.047894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464641, -0.446902, 0.764453,
		0.298688, -0.891805, -0.339807,
		0.833604, 0.070444, 0.547853,
		26.337805, 36.232449, 60.212250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013575, 35.904163, 59.774181>,  <25.754284, 36.183136, 59.828751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013575, 35.904163, 59.774181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.855156, 35.547283, 59.687344>,  <24.760105, 35.333157, 59.635242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.855156, 35.547283, 59.687344>,  <25.013575, 35.904163, 59.774181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855156, 35.547283, 59.687344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386688, 0.052383, -0.920722,
		0.832837, -0.448598, 0.324255,
		-0.396049, -0.892197, -0.217094,
		24.736341, 35.279625, 59.622215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628265, 35.433041, 59.558563>,  <25.013575, 35.904163, 59.774181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628265, 35.433041, 59.558563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.276537, 35.293564, 59.428818>,  <25.065500, 35.209877, 59.350971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.276537, 35.293564, 59.428818>,  <25.628265, 35.433041, 59.558563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276537, 35.293564, 59.428818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338805, 0.020626, -0.940630,
		0.334678, -0.937011, 0.100001,
		-0.879319, -0.348689, -0.324367,
		25.012741, 35.188957, 59.331509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764618, 34.991116, 59.083836>,  <25.628265, 35.433041, 59.558563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764618, 34.991116, 59.083836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.384758, 35.080883, 58.996384>,  <25.156841, 35.134743, 58.943913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.384758, 35.080883, 58.996384>,  <25.764618, 34.991116, 59.083836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384758, 35.080883, 58.996384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253190, 0.138686, -0.957424,
		-0.184548, -0.964572, -0.188525,
		-0.949651, 0.224424, -0.218626,
		25.099863, 35.148209, 58.930798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433861, 34.476074, 58.519054>,  <25.764618, 34.991116, 59.083836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433861, 34.476074, 58.519054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.240599, 34.826263, 58.514801>,  <25.124641, 35.036377, 58.512249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.240599, 34.826263, 58.514801>,  <25.433861, 34.476074, 58.519054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240599, 34.826263, 58.514801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208470, 0.103236, -0.972565,
		-0.850354, -0.472117, -0.232388,
		-0.483156, 0.875470, -0.010635,
		25.095652, 35.088905, 58.511612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933470, 34.389515, 58.005108>,  <25.433861, 34.476074, 58.519054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933470, 34.389515, 58.005108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.985521, 34.785618, 58.024921>,  <25.016752, 35.023281, 58.036808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.985521, 34.785618, 58.024921>,  <24.933470, 34.389515, 58.005108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985521, 34.785618, 58.024921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109139, 0.035344, -0.993398,
		-0.985472, 0.134675, -0.103477,
		0.130128, 0.990259, 0.049529,
		25.024559, 35.082695, 58.039780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.620199, 34.706944, 57.384998>,  <24.933470, 34.389515, 58.005108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.620199, 34.706944, 57.384998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.865118, 34.985672, 57.534416>,  <25.012070, 35.152908, 57.624065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.865118, 34.985672, 57.534416>,  <24.620199, 34.706944, 57.384998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865118, 34.985672, 57.534416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257743, 0.270728, -0.927510,
		-0.747435, 0.664191, -0.013834,
		0.612298, 0.696819, 0.373542,
		25.048807, 35.194717, 57.646481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.401791, 35.245537, 56.974243>,  <24.620199, 34.706944, 57.384998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.401791, 35.245537, 56.974243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.764500, 35.325676, 57.122635>,  <24.982124, 35.373760, 57.211670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.764500, 35.325676, 57.122635>,  <24.401791, 35.245537, 56.974243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764500, 35.325676, 57.122635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274420, 0.387560, -0.880052,
		-0.320090, 0.899811, 0.296451,
		0.906772, 0.200344, 0.370980,
		25.036531, 35.385780, 57.233929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.493065, 36.024223, 56.885254>,  <24.401791, 35.245537, 56.974243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.493065, 36.024223, 56.885254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.852976, 35.852825, 56.918228>,  <25.068922, 35.749989, 56.938011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.852976, 35.852825, 56.918228>,  <24.493065, 36.024223, 56.885254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852976, 35.852825, 56.918228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313667, 0.503821, -0.804847,
		0.303337, 0.750040, 0.587730,
		0.899778, -0.428491, 0.082435,
		25.122910, 35.724277, 56.942959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.802284, 36.475548, 56.566578>,  <24.493065, 36.024223, 56.885254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.802284, 36.475548, 56.566578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.071922, 36.183689, 56.612560>,  <25.233706, 36.008575, 56.640148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.071922, 36.183689, 56.612560>,  <24.802284, 36.475548, 56.566578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071922, 36.183689, 56.612560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489798, 0.325054, -0.808973,
		0.552897, 0.601629, 0.576496,
		0.674094, -0.729645, 0.114955,
		25.274151, 35.964794, 56.647045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471941, 36.799259, 56.548916>,  <24.802284, 36.475548, 56.566578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471941, 36.799259, 56.548916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.522341, 36.413967, 56.454002>,  <25.552580, 36.182793, 56.397053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.522341, 36.413967, 56.454002>,  <25.471941, 36.799259, 56.548916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522341, 36.413967, 56.454002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505221, 0.268152, -0.820272,
		0.853742, -0.016527, 0.520433,
		0.125999, -0.963235, -0.237283,
		25.560141, 36.124996, 56.382816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138355, 36.673241, 56.470146>,  <25.471941, 36.799259, 56.548916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138355, 36.673241, 56.470146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.953693, 36.401329, 56.242191>,  <25.842896, 36.238182, 56.105419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.953693, 36.401329, 56.242191>,  <26.138355, 36.673241, 56.470146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953693, 36.401329, 56.242191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481305, 0.347703, -0.804642,
		0.745130, -0.645759, 0.166661,
		-0.461656, -0.679778, -0.569891,
		25.815197, 36.197395, 56.071224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592960, 36.199493, 56.142853>,  <26.138355, 36.673241, 56.470146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592960, 36.199493, 56.142853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.277260, 36.173100, 55.898647>,  <26.087839, 36.157265, 55.752125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.277260, 36.173100, 55.898647>,  <26.592960, 36.199493, 56.142853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277260, 36.173100, 55.898647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590952, 0.188629, -0.784344,
		0.166911, -0.979830, -0.109886,
		-0.789251, -0.065978, -0.610516,
		26.040485, 36.153305, 55.715492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815451, 35.820042, 55.586983>,  <26.592960, 36.199493, 56.142853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815451, 35.820042, 55.586983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.501574, 36.020626, 55.441223>,  <26.313248, 36.140976, 55.353767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.501574, 36.020626, 55.441223>,  <26.815451, 35.820042, 55.586983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501574, 36.020626, 55.441223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528498, 0.233997, -0.816049,
		-0.323951, -0.832934, -0.448640,
		-0.784695, 0.501465, -0.364400,
		26.266165, 36.171066, 55.331902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773611, 35.471680, 54.953564>,  <26.815451, 35.820042, 55.586983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773611, 35.471680, 54.953564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.588737, 35.823826, 54.910954>,  <26.477814, 36.035114, 54.885387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.588737, 35.823826, 54.910954>,  <26.773611, 35.471680, 54.953564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588737, 35.823826, 54.910954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426236, 0.115206, -0.897246,
		-0.777630, -0.460097, -0.428489,
		-0.462184, 0.880363, -0.106522,
		26.450083, 36.087936, 54.878998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782261, 35.462051, 54.272850>,  <26.773611, 35.471680, 54.953564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782261, 35.462051, 54.272850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.653725, 35.836063, 54.332794>,  <26.576603, 36.060471, 54.368763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.653725, 35.836063, 54.332794>,  <26.782261, 35.462051, 54.272850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653725, 35.836063, 54.332794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301273, 0.250978, -0.919916,
		-0.897761, -0.250457, -0.362349,
		-0.321341, 0.935030, 0.149863,
		26.557322, 36.116573, 54.377754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417603, 35.727604, 53.650627>,  <26.782261, 35.462051, 54.272850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417603, 35.727604, 53.650627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.541731, 36.040524, 53.866669>,  <26.616207, 36.228275, 53.996292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.541731, 36.040524, 53.866669>,  <26.417603, 35.727604, 53.650627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541731, 36.040524, 53.866669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410141, 0.402379, -0.818460,
		-0.857605, 0.475503, -0.195985,
		0.310320, 0.782296, 0.540105,
		26.634827, 36.275211, 54.028702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338987, 36.219273, 53.145550>,  <26.417603, 35.727604, 53.650627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338987, 36.219273, 53.145550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.566511, 36.371788, 53.437050>,  <26.703026, 36.463299, 53.611950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.566511, 36.371788, 53.437050>,  <26.338987, 36.219273, 53.145550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566511, 36.371788, 53.437050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529821, 0.507847, -0.679251,
		-0.629083, 0.772471, 0.086854,
		0.568810, 0.381288, 0.728749,
		26.737154, 36.486176, 53.655674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393709, 36.894783, 53.010410>,  <26.338987, 36.219273, 53.145550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393709, 36.894783, 53.010410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.711775, 36.807701, 53.236797>,  <26.902615, 36.755451, 53.372631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.711775, 36.807701, 53.236797>,  <26.393709, 36.894783, 53.010410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711775, 36.807701, 53.236797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598569, 0.431241, -0.675090,
		-0.097097, 0.875578, 0.473219,
		0.795165, -0.217705, 0.565966,
		26.950325, 36.742390, 53.406586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743504, 37.486443, 53.117210>,  <26.393709, 36.894783, 53.010410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743504, 37.486443, 53.117210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.012449, 37.198738, 53.187168>,  <27.173817, 37.026115, 53.229141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.012449, 37.198738, 53.187168>,  <26.743504, 37.486443, 53.117210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012449, 37.198738, 53.187168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676975, 0.501945, -0.538290,
		0.299387, 0.480323, 0.824413,
		0.672363, -0.719264, 0.174891,
		27.214159, 36.982960, 53.239635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423912, 37.895107, 53.152359>,  <26.743504, 37.486443, 53.117210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423912, 37.895107, 53.152359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.523092, 37.509777, 53.111309>,  <27.582602, 37.278580, 53.086678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.523092, 37.509777, 53.111309>,  <27.423912, 37.895107, 53.152359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523092, 37.509777, 53.111309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774319, 0.260731, -0.576585,
		0.582194, 0.063500, 0.810566,
		0.247953, -0.963321, -0.102627,
		27.597479, 37.220779, 53.080521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100586, 37.916557, 53.054722>,  <27.423912, 37.895107, 53.152359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100586, 37.916557, 53.054722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.050406, 37.542534, 52.922100>,  <28.020298, 37.318119, 52.842525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.050406, 37.542534, 52.922100>,  <28.100586, 37.916557, 53.054722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050406, 37.542534, 52.922100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792633, 0.106520, -0.600322,
		0.596653, -0.338112, 0.727795,
		-0.125452, -0.935058, -0.331554,
		28.012770, 37.262016, 52.822632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753794, 37.653122, 53.012051>,  <28.100586, 37.916557, 53.054722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753794, 37.653122, 53.012051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.525444, 37.419178, 52.781559>,  <28.388435, 37.278812, 52.643265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.525444, 37.419178, 52.781559>,  <28.753794, 37.653122, 53.012051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525444, 37.419178, 52.781559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664451, 0.083172, -0.742689,
		0.482297, -0.806858, 0.341131,
		-0.570872, -0.584862, -0.576231,
		28.354183, 37.243721, 52.608688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224506, 37.062782, 52.690460>,  <28.753794, 37.653122, 53.012051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224506, 37.062782, 52.690460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.888069, 37.103500, 52.477970>,  <28.686207, 37.127930, 52.350475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.888069, 37.103500, 52.477970>,  <29.224506, 37.062782, 52.690460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888069, 37.103500, 52.477970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532522, -0.016266, -0.846260,
		-0.094784, -0.994672, -0.040525,
		-0.841092, 0.101793, -0.531227,
		28.635742, 37.134037, 52.318604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463808, 36.697018, 52.126953>,  <29.224506, 37.062782, 52.690460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463808, 36.697018, 52.126953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.134611, 36.883183, 51.996674>,  <28.937094, 36.994881, 51.918507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.134611, 36.883183, 51.996674>,  <29.463808, 36.697018, 52.126953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134611, 36.883183, 51.996674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416347, 0.104155, -0.903220,
		-0.386445, -0.878946, -0.279491,
		-0.822992, 0.465410, -0.325696,
		28.887714, 37.022804, 51.898964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173330, 36.364792, 51.513023>,  <29.463808, 36.697018, 52.126953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173330, 36.364792, 51.513023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.036245, 36.739391, 51.483318>,  <28.953995, 36.964153, 51.465496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.036245, 36.739391, 51.483318>,  <29.173330, 36.364792, 51.513023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036245, 36.739391, 51.483318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425279, 0.084176, -0.901140,
		-0.837667, -0.340412, -0.427122,
		-0.342712, 0.936501, -0.074258,
		28.933432, 37.020340, 51.461040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731321, 36.376587, 50.918747>,  <29.173330, 36.364792, 51.513023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731321, 36.376587, 50.918747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.857386, 36.750759, 50.982792>,  <28.933023, 36.975262, 51.021217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.857386, 36.750759, 50.982792>,  <28.731321, 36.376587, 50.918747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857386, 36.750759, 50.982792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309470, 0.058191, -0.949127,
		-0.897163, 0.348677, -0.271149,
		0.315161, 0.935434, 0.160112,
		28.951933, 37.031391, 51.030827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450058, 36.767403, 50.447765>,  <28.731321, 36.376587, 50.918747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450058, 36.767403, 50.447765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.747231, 37.011879, 50.556938>,  <28.925535, 37.158566, 50.622440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.747231, 37.011879, 50.556938>,  <28.450058, 36.767403, 50.447765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747231, 37.011879, 50.556938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288251, 0.075875, -0.954544,
		-0.604120, 0.787836, -0.119807,
		0.742934, 0.611194, 0.272932,
		28.970110, 37.195236, 50.638817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506824, 37.313850, 49.942520>,  <28.450058, 36.767403, 50.447765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506824, 37.313850, 49.942520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.868198, 37.295116, 50.112988>,  <29.085022, 37.283875, 50.215267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.868198, 37.295116, 50.112988>,  <28.506824, 37.313850, 49.942520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868198, 37.295116, 50.112988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425775, -0.018489, -0.904640,
		0.050250, 0.998731, 0.003239,
		0.903433, -0.046837, 0.426164,
		29.139229, 37.281067, 50.240837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983223, 37.761066, 49.515388>,  <28.506824, 37.313850, 49.942520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983223, 37.761066, 49.515388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.191828, 37.491611, 49.724861>,  <29.316992, 37.329941, 49.850544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.191828, 37.491611, 49.724861>,  <28.983223, 37.761066, 49.515388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191828, 37.491611, 49.724861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468569, -0.286814, -0.835572,
		0.713068, 0.681143, 0.166066,
		0.521514, -0.673633, 0.523681,
		29.348282, 37.289520, 49.881966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744535, 37.856110, 49.205048>,  <28.983223, 37.761066, 49.515388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744535, 37.856110, 49.205048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726433, 37.512150, 49.408428>,  <29.715572, 37.305775, 49.530457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726433, 37.512150, 49.408428>,  <29.744535, 37.856110, 49.205048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726433, 37.512150, 49.408428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348932, -0.490525, -0.798519,
		0.936055, 0.141279, 0.322245,
		-0.045255, -0.859899, 0.508455,
		29.712856, 37.254181, 49.560966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387419, 37.468941, 48.973679>,  <29.744535, 37.856110, 49.205048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387419, 37.468941, 48.973679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.136755, 37.187366, 49.107410>,  <29.986357, 37.018421, 49.187649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.136755, 37.187366, 49.107410>,  <30.387419, 37.468941, 48.973679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136755, 37.187366, 49.107410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277734, -0.602587, -0.748167,
		0.728122, -0.375991, 0.573122,
		-0.626660, -0.703932, 0.334331,
		29.948757, 36.976189, 49.207710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690956, 36.883724, 48.877502>,  <30.387419, 37.468941, 48.973679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690956, 36.883724, 48.877502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322069, 36.740936, 48.936951>,  <30.100737, 36.655262, 48.972618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322069, 36.740936, 48.936951>,  <30.690956, 36.883724, 48.877502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322069, 36.740936, 48.936951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214676, -0.792348, -0.571051,
		0.321609, -0.494727, 0.807349,
		-0.922216, -0.356974, 0.148620,
		30.045404, 36.633842, 48.981537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766827, 36.221184, 49.066101>,  <30.690956, 36.883724, 48.877502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766827, 36.221184, 49.066101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.402077, 36.231915, 48.902264>,  <30.183228, 36.238354, 48.803963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.402077, 36.231915, 48.902264>,  <30.766827, 36.221184, 49.066101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402077, 36.231915, 48.902264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271281, -0.709475, -0.650424,
		-0.308045, -0.704220, 0.639674,
		-0.911874, 0.026828, -0.409592,
		30.128515, 36.239964, 48.779385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745474, 35.553574, 48.824295>,  <30.766827, 36.221184, 49.066101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745474, 35.553574, 48.824295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455074, 35.739971, 48.621994>,  <30.280834, 35.851810, 48.500614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455074, 35.739971, 48.621994>,  <30.745474, 35.553574, 48.824295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455074, 35.739971, 48.621994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205851, -0.554449, -0.806357,
		-0.656166, -0.689522, 0.306604,
		-0.725997, 0.465989, -0.505749,
		30.237276, 35.879768, 48.470268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304705, 35.002129, 48.661274>,  <30.745474, 35.553574, 48.824295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304705, 35.002129, 48.661274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222548, 35.306301, 48.414837>,  <30.173254, 35.488804, 48.266975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222548, 35.306301, 48.414837>,  <30.304705, 35.002129, 48.661274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222548, 35.306301, 48.414837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219856, -0.577569, -0.786179,
		-0.953665, -0.296925, -0.048557,
		-0.205391, 0.760427, -0.616089,
		30.160931, 35.534428, 48.230011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900963, 34.688553, 48.110172>,  <30.304705, 35.002129, 48.661274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900963, 34.688553, 48.110172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074081, 35.029930, 47.994019>,  <30.177952, 35.234756, 47.924328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074081, 35.029930, 47.994019>,  <29.900963, 34.688553, 48.110172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074081, 35.029930, 47.994019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158027, -0.388952, -0.907603,
		-0.887533, 0.346919, -0.303204,
		0.432797, 0.853442, -0.290385,
		30.203920, 35.285961, 47.906902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767769, 34.542339, 47.442516>,  <29.900963, 34.688553, 48.110172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767769, 34.542339, 47.442516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.998846, 34.868824, 47.446041>,  <30.137491, 35.064713, 47.448154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.998846, 34.868824, 47.446041>,  <29.767769, 34.542339, 47.442516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998846, 34.868824, 47.446041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377878, -0.257855, -0.889224,
		-0.723520, 0.517026, -0.457387,
		0.577692, 0.816208, 0.008810,
		30.172153, 35.113686, 47.448685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740625, 34.923626, 46.806610>,  <29.767769, 34.542339, 47.442516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740625, 34.923626, 46.806610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.095488, 35.025303, 46.960670>,  <30.308405, 35.086308, 47.053108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.095488, 35.025303, 46.960670>,  <29.740625, 34.923626, 46.806610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095488, 35.025303, 46.960670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461358, -0.470142, -0.752407,
		-0.010182, 0.845194, -0.534363,
		0.887156, 0.254194, 0.385149,
		30.361635, 35.101562, 47.076214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155981, 35.225544, 46.204746>,  <29.740625, 34.923626, 46.806610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155981, 35.225544, 46.204746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377415, 35.074902, 46.501854>,  <30.510275, 34.984516, 46.680119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377415, 35.074902, 46.501854>,  <30.155981, 35.225544, 46.204746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377415, 35.074902, 46.501854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476017, -0.588748, -0.653287,
		0.683338, 0.715223, -0.146651,
		0.553586, -0.376607, 0.742771,
		30.543491, 34.961918, 46.724686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792828, 35.248169, 45.857578>,  <30.155981, 35.225544, 46.204746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792828, 35.248169, 45.857578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846874, 35.007061, 46.172138>,  <30.879303, 34.862396, 46.360874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846874, 35.007061, 46.172138>,  <30.792828, 35.248169, 45.857578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846874, 35.007061, 46.172138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667727, -0.530985, -0.521723,
		0.732041, 0.595591, 0.330738,
		0.135117, -0.602765, 0.786395,
		30.887409, 34.826233, 46.408058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451851, 35.214577, 46.266399>,  <30.792828, 35.248169, 45.857578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451851, 35.214577, 46.266399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276445, 34.855274, 46.254772>,  <31.171202, 34.639694, 46.247795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276445, 34.855274, 46.254772>,  <31.451851, 35.214577, 46.266399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276445, 34.855274, 46.254772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823487, -0.388639, -0.413314,
		0.359962, -0.205186, 0.910124,
		-0.438516, -0.898253, -0.029072,
		31.144890, 34.585800, 46.246052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968252, 34.825706, 46.512493>,  <31.451851, 35.214577, 46.266399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968252, 34.825706, 46.512493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.700048, 34.617355, 46.301170>,  <31.539127, 34.492344, 46.174377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.700048, 34.617355, 46.301170>,  <31.968252, 34.825706, 46.512493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700048, 34.617355, 46.301170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741873, -0.477046, -0.471223,
		-0.006578, -0.707895, 0.706287,
		-0.670508, -0.520876, -0.528306,
		31.498896, 34.461094, 46.142677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031113, 34.108562, 46.586449>,  <31.968252, 34.825706, 46.512493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031113, 34.108562, 46.586449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896688, 34.170609, 46.214855>,  <31.816034, 34.207836, 45.991901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896688, 34.170609, 46.214855>,  <32.031113, 34.108562, 46.586449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896688, 34.170609, 46.214855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755203, -0.545006, -0.364194,
		-0.562791, -0.823959, 0.066012,
		-0.336057, 0.155113, -0.928981,
		31.795872, 34.217144, 45.936161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177586, 33.433475, 46.136261>,  <32.031113, 34.108562, 46.586449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177586, 33.433475, 46.136261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152302, 33.763214, 45.911243>,  <32.137131, 33.961056, 45.776234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152302, 33.763214, 45.911243>,  <32.177586, 33.433475, 46.136261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152302, 33.763214, 45.911243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889333, -0.209261, -0.406568,
		-0.452872, -0.525990, -0.719890,
		-0.063206, 0.824345, -0.562548,
		32.133339, 34.010517, 45.742477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900890, 33.421253, 45.924480>,  <32.177586, 33.433475, 46.136261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900890, 33.421253, 45.924480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.763252, 33.769756, 45.784470>,  <32.680672, 33.978859, 45.700462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.763252, 33.769756, 45.784470>,  <32.900890, 33.421253, 45.924480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763252, 33.769756, 45.784470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854388, 0.135939, -0.501539,
		-0.389386, -0.471633, -0.791165,
		-0.344092, 0.871254, -0.350025,
		32.660023, 34.031132, 45.679462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667336, 33.408348, 45.935345>,  <32.900890, 33.421253, 45.924480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667336, 33.408348, 45.935345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.770069, 33.782242, 46.033573>,  <33.831711, 34.006577, 46.092510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.770069, 33.782242, 46.033573>,  <33.667336, 33.408348, 45.935345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770069, 33.782242, 46.033573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959776, -0.216869, -0.178322,
		-0.113427, 0.281493, -0.952836,
		0.256837, 0.934735, 0.245571,
		33.847118, 34.062664, 46.107243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182831, 33.668907, 45.574268>,  <33.667336, 33.408348, 45.935345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182831, 33.668907, 45.574268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.204430, 33.881519, 45.912395>,  <34.217388, 34.009087, 46.115273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.204430, 33.881519, 45.912395>,  <34.182831, 33.668907, 45.574268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204430, 33.881519, 45.912395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992434, -0.122051, 0.013347,
		0.110266, 0.838200, -0.534099,
		0.054000, 0.531530, 0.845316,
		34.220631, 34.040977, 46.165989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789242, 34.166977, 45.529503>,  <34.182831, 33.668907, 45.574268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789242, 34.166977, 45.529503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.722942, 34.152859, 45.923717>,  <34.683163, 34.144386, 46.160248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.722942, 34.152859, 45.923717>,  <34.789242, 34.166977, 45.529503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722942, 34.152859, 45.923717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973014, 0.156831, 0.169258,
		-0.160537, 0.986994, 0.008351,
		-0.165747, -0.035298, 0.985536,
		34.673218, 34.142269, 46.219379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267872, 34.660980, 45.875031>,  <34.789242, 34.166977, 45.529503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267872, 34.660980, 45.875031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147141, 34.436714, 46.183460>,  <35.074699, 34.302155, 46.368519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147141, 34.436714, 46.183460>,  <35.267872, 34.660980, 45.875031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147141, 34.436714, 46.183460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931738, -0.002198, 0.363124,
		-0.201897, 0.828039, 0.523058,
		-0.301830, -0.560667, 0.771072,
		35.056591, 34.268513, 46.414783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399601, 35.042938, 46.542080>,  <35.267872, 34.660980, 45.875031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399601, 35.042938, 46.542080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407341, 34.652378, 46.628113>,  <35.411983, 34.418041, 46.679733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407341, 34.652378, 46.628113>,  <35.399601, 35.042938, 46.542080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407341, 34.652378, 46.628113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944906, 0.088168, 0.315244,
		-0.326769, 0.197137, 0.924315,
		0.019349, -0.976403, 0.215087,
		35.413147, 34.359459, 46.692638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639248, 35.001282, 47.344002>,  <35.399601, 35.042938, 46.542080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639248, 35.001282, 47.344002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717724, 34.680309, 47.118572>,  <35.764809, 34.487728, 46.983315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717724, 34.680309, 47.118572>,  <35.639248, 35.001282, 47.344002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717724, 34.680309, 47.118572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930979, -0.028029, 0.363994,
		-0.307875, -0.596092, 0.741544,
		0.196189, -0.802427, -0.563578,
		35.776581, 34.439583, 46.949497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931705, 34.468254, 47.857883>,  <35.639248, 35.001282, 47.344002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931705, 34.468254, 47.857883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047749, 34.310410, 47.509144>,  <36.117374, 34.215702, 47.299900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047749, 34.310410, 47.509144>,  <35.931705, 34.468254, 47.857883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047749, 34.310410, 47.509144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921934, -0.129087, 0.365205,
		-0.256659, -0.909734, 0.326358,
		0.290111, -0.394614, -0.871846,
		36.134781, 34.192024, 47.247589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358219, 33.975235, 48.078175>,  <35.931705, 34.468254, 47.857883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358219, 33.975235, 48.078175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433048, 34.001709, 47.686131>,  <36.477947, 34.017593, 47.450905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433048, 34.001709, 47.686131>,  <36.358219, 33.975235, 48.078175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433048, 34.001709, 47.686131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964206, -0.203223, 0.170313,
		-0.187909, -0.976893, -0.101838,
		0.187074, 0.066189, -0.980113,
		36.489170, 34.021564, 47.392097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870052, 33.405300, 47.961224>,  <36.358219, 33.975235, 48.078175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870052, 33.405300, 47.961224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896152, 33.679337, 47.671009>,  <36.911812, 33.843758, 47.496880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896152, 33.679337, 47.671009>,  <36.870052, 33.405300, 47.961224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896152, 33.679337, 47.671009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991194, -0.128453, -0.032156,
		-0.115226, -0.717046, -0.687436,
		0.065246, 0.685087, -0.725533,
		36.915726, 33.884861, 47.453350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154404, 33.109619, 47.293362>,  <36.870052, 33.405300, 47.961224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154404, 33.109619, 47.293362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217762, 33.503998, 47.314629>,  <37.255779, 33.740623, 47.327389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217762, 33.503998, 47.314629>,  <37.154404, 33.109619, 47.293362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217762, 33.503998, 47.314629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982898, -0.152331, -0.103479,
		-0.093925, 0.068648, -0.993210,
		0.158400, 0.985942, 0.053166,
		37.265282, 33.799782, 47.330578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767284, 33.172623, 47.017414>,  <37.154404, 33.109619, 47.293362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767284, 33.172623, 47.017414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743900, 33.544220, 47.163597>,  <37.729870, 33.767178, 47.251308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743900, 33.544220, 47.163597>,  <37.767284, 33.172623, 47.017414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743900, 33.544220, 47.163597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991625, 0.011809, 0.128608,
		0.115160, 0.369916, -0.921900,
		-0.058461, 0.928990, 0.365458,
		37.726360, 33.822918, 47.273235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261707, 33.555855, 46.637856>,  <37.767284, 33.172623, 47.017414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261707, 33.555855, 46.637856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187126, 33.765606, 46.970184>,  <38.142380, 33.891457, 47.169582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187126, 33.765606, 46.970184>,  <38.261707, 33.555855, 46.637856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187126, 33.765606, 46.970184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977256, 0.185949, 0.101951,
		-0.101030, 0.830934, -0.547120,
		-0.186451, 0.524377, 0.830822,
		38.131191, 33.922920, 47.219433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690128, 34.246815, 46.536736>,  <38.261707, 33.555855, 46.637856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690128, 34.246815, 46.536736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616653, 34.193314, 46.926273>,  <38.572567, 34.161213, 47.159996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616653, 34.193314, 46.926273>,  <38.690128, 34.246815, 46.536736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616653, 34.193314, 46.926273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947446, 0.239891, 0.211656,
		-0.261925, 0.961542, 0.082654,
		-0.183688, -0.133748, 0.973843,
		38.561546, 34.153191, 47.218426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411190, 34.503178, 46.293633>,  <38.690128, 34.246815, 46.536736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411190, 34.503178, 46.293633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056973, 34.571526, 46.120842>,  <38.844440, 34.612534, 46.017166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056973, 34.571526, 46.120842>,  <39.411190, 34.503178, 46.293633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056973, 34.571526, 46.120842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334817, 0.879373, -0.338527,
		0.322027, -0.444417, -0.835938,
		-0.885548, 0.170871, -0.431980,
		38.791309, 34.622787, 45.991249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530159, 34.671131, 45.679180>,  <39.411190, 34.503178, 46.293633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530159, 34.671131, 45.679180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187592, 34.858616, 45.765766>,  <38.982052, 34.971107, 45.817719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187592, 34.858616, 45.765766>,  <39.530159, 34.671131, 45.679180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187592, 34.858616, 45.765766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416927, 0.875168, -0.245465,
		-0.304491, -0.119973, -0.944930,
		-0.856421, 0.468708, 0.216461,
		38.930664, 34.999229, 45.830704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207863, 35.076225, 45.091473>,  <39.530159, 34.671131, 45.679180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207863, 35.076225, 45.091473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163540, 35.265949, 45.440815>,  <39.136948, 35.379784, 45.650421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163540, 35.265949, 45.440815>,  <39.207863, 35.076225, 45.091473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163540, 35.265949, 45.440815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447533, 0.808444, -0.382273,
		-0.887377, 0.348500, -0.301845,
		-0.110803, 0.474306, 0.873359,
		39.130299, 35.408241, 45.702824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724384, 35.655975, 45.043396>,  <39.207863, 35.076225, 45.091473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724384, 35.655975, 45.043396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985687, 35.719681, 45.339474>,  <39.142467, 35.757904, 45.517120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985687, 35.719681, 45.339474>,  <38.724384, 35.655975, 45.043396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985687, 35.719681, 45.339474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285867, 0.853385, -0.435906,
		-0.701095, 0.496356, 0.511953,
		0.653257, 0.159261, 0.740196,
		39.181664, 35.767460, 45.561531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259270, 35.913467, 44.550079>,  <38.724384, 35.655975, 45.043396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259270, 35.913467, 44.550079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.992241, 35.833038, 44.263329>,  <38.832024, 35.784782, 44.091278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.992241, 35.833038, 44.263329>,  <39.259270, 35.913467, 44.550079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992241, 35.833038, 44.263329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594003, -0.724342, -0.349986,
		-0.448894, -0.659470, 0.602988,
		-0.667574, -0.201070, -0.716879,
		38.791969, 35.772717, 44.048264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964272, 35.192127, 44.419357>,  <39.259270, 35.913467, 44.550079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964272, 35.192127, 44.419357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940685, 35.370644, 44.062180>,  <38.926533, 35.477753, 43.847874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940685, 35.370644, 44.062180>,  <38.964272, 35.192127, 44.419357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940685, 35.370644, 44.062180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556490, -0.727920, -0.400566,
		-0.828759, -0.520534, -0.205432,
		-0.058970, 0.446294, -0.892941,
		38.922993, 35.504532, 43.794296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714767, 34.740997, 43.876213>,  <38.964272, 35.192127, 44.419357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714767, 34.740997, 43.876213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.963902, 35.033684, 43.765461>,  <39.113384, 35.209293, 43.699009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.963902, 35.033684, 43.765461>,  <38.714767, 34.740997, 43.876213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963902, 35.033684, 43.765461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721700, -0.673998, -0.157720,
		-0.302025, -0.101593, -0.947871,
		0.622840, 0.731714, -0.276884,
		39.150753, 35.253197, 43.682396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927216, 34.534489, 43.286751>,  <38.714767, 34.740997, 43.876213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927216, 34.534489, 43.286751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.206371, 34.786366, 43.423241>,  <39.373867, 34.937492, 43.505135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.206371, 34.786366, 43.423241>,  <38.927216, 34.534489, 43.286751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206371, 34.786366, 43.423241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716202, -0.612943, -0.333701,
		-0.000976, 0.477274, -0.878754,
		0.697893, 0.629691, 0.341226,
		39.415741, 34.975273, 43.525608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597771, 34.793846, 42.666687>,  <38.927216, 34.534489, 43.286751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597771, 34.793846, 42.666687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756916, 34.549301, 42.393059>,  <38.852402, 34.402576, 42.228882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756916, 34.549301, 42.393059>,  <38.597771, 34.793846, 42.666687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756916, 34.549301, 42.393059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644883, 0.716701, -0.265453,
		0.652559, -0.335531, 0.679401,
		0.397860, -0.611358, -0.684068,
		38.876274, 34.365894, 42.187840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283577, 34.640892, 42.615658>,  <38.597771, 34.793846, 42.666687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283577, 34.640892, 42.615658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224716, 34.513233, 42.241173>,  <39.189400, 34.436638, 42.016483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224716, 34.513233, 42.241173>,  <39.283577, 34.640892, 42.615658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224716, 34.513233, 42.241173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937847, 0.255755, -0.234590,
		0.314309, -0.912543, 0.261677,
		-0.147148, -0.319146, -0.936212,
		39.180573, 34.417488, 41.960308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854824, 34.301090, 42.572929>,  <39.283577, 34.640892, 42.615658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854824, 34.301090, 42.572929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.739811, 34.456203, 42.222626>,  <39.670803, 34.549271, 42.012444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.739811, 34.456203, 42.222626>,  <39.854824, 34.301090, 42.572929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739811, 34.456203, 42.222626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948445, 0.242580, -0.203979,
		0.133341, -0.889257, -0.437542,
		-0.287529, 0.387786, -0.875757,
		39.653553, 34.572540, 41.959900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194069, 34.008343, 42.060383>,  <39.854824, 34.301090, 42.572929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194069, 34.008343, 42.060383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.081039, 34.364704, 41.918152>,  <40.013222, 34.578522, 41.832813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.081039, 34.364704, 41.918152>,  <40.194069, 34.008343, 42.060383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081039, 34.364704, 41.918152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958319, 0.245892, -0.145469,
		-0.042164, -0.381866, -0.923255,
		-0.282571, 0.890907, -0.355582,
		39.996269, 34.631977, 41.811478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649662, 34.082329, 41.488411>,  <40.194069, 34.008343, 42.060383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649662, 34.082329, 41.488411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535210, 34.445580, 41.610676>,  <40.466537, 34.663532, 41.684036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535210, 34.445580, 41.610676>,  <40.649662, 34.082329, 41.488411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535210, 34.445580, 41.610676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882313, 0.374117, -0.285589,
		-0.373706, 0.187976, -0.908300,
		-0.286126, 0.908131, 0.305664,
		40.449371, 34.718018, 41.702374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994640, 34.492432, 40.928909>,  <40.649662, 34.082329, 41.488411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994640, 34.492432, 40.928909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.927666, 34.708241, 41.258972>,  <40.887482, 34.837727, 41.457008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.927666, 34.708241, 41.258972>,  <40.994640, 34.492432, 40.928909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927666, 34.708241, 41.258972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597804, 0.721109, -0.350189,
		-0.783962, 0.434648, -0.443267,
		-0.167435, 0.539521, 0.825156,
		40.877434, 34.870098, 41.506519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561207, 35.074306, 40.799133>,  <40.994640, 34.492432, 40.928909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561207, 35.074306, 40.799133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.822678, 35.116554, 41.098881>,  <40.979561, 35.141903, 41.278728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.822678, 35.116554, 41.098881>,  <40.561207, 35.074306, 40.799133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822678, 35.116554, 41.098881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507388, 0.673520, -0.537520,
		-0.561489, 0.731584, 0.386672,
		0.653672, 0.105618, 0.749371,
		41.018780, 35.148239, 41.323692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778233, 35.769276, 40.868496>,  <40.561207, 35.074306, 40.799133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778233, 35.769276, 40.868496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.095715, 35.586662, 41.029301>,  <41.286201, 35.477093, 41.125782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.095715, 35.586662, 41.029301>,  <40.778233, 35.769276, 40.868496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095715, 35.586662, 41.029301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608243, 0.605219, -0.513566,
		-0.008843, 0.652138, 0.758049,
		0.793702, -0.456537, 0.402010,
		41.333824, 35.449703, 41.149902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072048, 36.342876, 41.126301>,  <40.778233, 35.769276, 40.868496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072048, 36.342876, 41.126301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325764, 36.041260, 41.058060>,  <41.477993, 35.860291, 41.017117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325764, 36.041260, 41.058060>,  <41.072048, 36.342876, 41.126301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325764, 36.041260, 41.058060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577827, 0.608994, -0.543362,
		0.513609, 0.246071, 0.821982,
		0.634288, -0.754039, -0.170598,
		41.516048, 35.815048, 41.006882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769646, 36.592937, 41.168041>,  <41.072048, 36.342876, 41.126301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769646, 36.592937, 41.168041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.777649, 36.249889, 40.962486>,  <41.782452, 36.044060, 40.839153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.777649, 36.249889, 40.962486>,  <41.769646, 36.592937, 41.168041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777649, 36.249889, 40.962486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712990, 0.372564, -0.594004,
		0.700888, -0.354511, 0.618932,
		0.020011, -0.857624, -0.513889,
		41.783653, 35.992603, 40.808319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544163, 36.398125, 40.997826>,  <41.769646, 36.592937, 41.168041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544163, 36.398125, 40.997826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.296051, 36.229527, 40.733223>,  <42.147182, 36.128368, 40.574459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.296051, 36.229527, 40.733223>,  <42.544163, 36.398125, 40.997826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296051, 36.229527, 40.733223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658229, 0.178967, -0.731235,
		0.426601, -0.888995, 0.166431,
		-0.620279, -0.421495, -0.661510,
		42.109966, 36.103077, 40.534771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016682, 35.979790, 40.522644>,  <42.544163, 36.398125, 40.997826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016682, 35.979790, 40.522644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.683498, 36.028046, 40.306637>,  <42.483589, 36.056999, 40.177032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.683498, 36.028046, 40.306637>,  <43.016682, 35.979790, 40.522644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683498, 36.028046, 40.306637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551432, 0.100226, -0.828177,
		-0.045789, -0.987624, -0.150009,
		-0.832962, 0.120641, -0.540018,
		42.433609, 36.064240, 40.144630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073055, 35.535294, 40.013657>,  <43.016682, 35.979790, 40.522644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073055, 35.535294, 40.013657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.820656, 35.823673, 39.899067>,  <42.669216, 35.996700, 39.830311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.820656, 35.823673, 39.899067>,  <43.073055, 35.535294, 40.013657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820656, 35.823673, 39.899067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427161, 0.014625, -0.904057,
		-0.647593, -0.692830, -0.317191,
		-0.630997, 0.720953, -0.286479,
		42.631355, 36.039959, 39.813122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699463, 35.333714, 39.341091>,  <43.073055, 35.535294, 40.013657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699463, 35.333714, 39.341091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.801846, 35.714146, 39.410290>,  <42.863277, 35.942406, 39.451809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.801846, 35.714146, 39.410290>,  <42.699463, 35.333714, 39.341091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801846, 35.714146, 39.410290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504880, 0.021088, -0.862932,
		-0.824367, 0.308220, -0.474784,
		0.255960, 0.951082, 0.172998,
		42.878635, 35.999470, 39.462189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435802, 35.769638, 38.775188>,  <42.699463, 35.333714, 39.341091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435802, 35.769638, 38.775188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.785770, 35.861343, 38.945816>,  <42.995750, 35.916367, 39.048191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.785770, 35.861343, 38.945816>,  <42.435802, 35.769638, 38.775188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785770, 35.861343, 38.945816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462590, -0.135021, -0.876230,
		-0.143292, 0.963954, -0.224187,
		0.874916, 0.229264, 0.426568,
		43.048244, 35.930122, 39.073788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522861, 36.416740, 38.543648>,  <42.435802, 35.769638, 38.775188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522861, 36.416740, 38.543648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.820183, 36.160294, 38.620026>,  <42.998577, 36.006424, 38.665852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.820183, 36.160294, 38.620026>,  <42.522861, 36.416740, 38.543648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820183, 36.160294, 38.620026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164849, -0.101087, -0.981125,
		0.648320, 0.760755, 0.030549,
		0.743307, -0.641119, 0.190946,
		43.043175, 35.967957, 38.677311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143547, 36.655281, 38.222233>,  <42.522861, 36.416740, 38.543648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143547, 36.655281, 38.222233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.137363, 36.258678, 38.273876>,  <43.133652, 36.020718, 38.304863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.137363, 36.258678, 38.273876>,  <43.143547, 36.655281, 38.222233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137363, 36.258678, 38.273876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192679, -0.123746, -0.973428,
		0.981140, -0.039923, -0.189130,
		-0.015458, -0.991510, 0.129105,
		43.132725, 35.961224, 38.312607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266117, 36.416718, 37.646172>,  <43.143547, 36.655281, 38.222233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266117, 36.416718, 37.646172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.121319, 36.063442, 37.765465>,  <43.034439, 35.851479, 37.837040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.121319, 36.063442, 37.765465>,  <43.266117, 36.416718, 37.646172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121319, 36.063442, 37.765465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152516, -0.259508, -0.953622,
		0.919619, -0.390690, -0.040760,
		-0.361993, -0.883185, 0.298235,
		43.012722, 35.798485, 37.854935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354527, 36.969318, 37.181690>,  <43.266117, 36.416718, 37.646172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354527, 36.969318, 37.181690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.508007, 37.258938, 37.410957>,  <43.600098, 37.432709, 37.548519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.508007, 37.258938, 37.410957>,  <43.354527, 36.969318, 37.181690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508007, 37.258938, 37.410957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199131, -0.541203, 0.816974,
		0.901730, -0.427613, -0.063482,
		0.383705, 0.724049, 0.573170,
		43.623119, 37.476154, 37.582909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911911, 36.738091, 37.598869>,  <43.354527, 36.969318, 37.181690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911911, 36.738091, 37.598869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.758312, 37.040627, 37.810719>,  <43.666153, 37.222149, 37.937828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.758312, 37.040627, 37.810719>,  <43.911911, 36.738091, 37.598869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758312, 37.040627, 37.810719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056786, -0.591854, 0.804042,
		0.921587, 0.278674, 0.270219,
		-0.383996, 0.756339, 0.529620,
		43.643112, 37.267529, 37.969604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102299, 36.203045, 37.114754>,  <43.911911, 36.738091, 37.598869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102299, 36.203045, 37.114754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.421803, 36.282928, 36.887737>,  <44.613503, 36.330856, 36.751526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.421803, 36.282928, 36.887737>,  <44.102299, 36.203045, 37.114754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421803, 36.282928, 36.887737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531950, 0.206317, 0.821257,
		0.281105, -0.957888, 0.058562,
		0.798755, 0.199707, -0.567545,
		44.661430, 36.342842, 36.717472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665779, 35.817471, 37.442230>,  <44.102299, 36.203045, 37.114754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665779, 35.817471, 37.442230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.814098, 36.123844, 37.232143>,  <44.903091, 36.307671, 37.106091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.814098, 36.123844, 37.232143>,  <44.665779, 35.817471, 37.442230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814098, 36.123844, 37.232143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752858, 0.083238, 0.652899,
		0.543797, -0.637505, -0.545777,
		0.370797, 0.765937, -0.525215,
		44.925339, 36.353626, 37.074577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430737, 35.756111, 37.408722>,  <44.665779, 35.817471, 37.442230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430737, 35.756111, 37.408722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.324753, 36.141750, 37.401638>,  <45.261162, 36.373135, 37.397388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.324753, 36.141750, 37.401638>,  <45.430737, 35.756111, 37.408722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324753, 36.141750, 37.401638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752207, 0.218147, 0.621769,
		0.603309, 0.151421, -0.783000,
		-0.264958, 0.964097, -0.017710,
		45.245266, 36.430981, 37.396324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512894, 36.191841, 36.783054>,  <45.430737, 35.756111, 37.408722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512894, 36.191841, 36.783054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.856583, 36.226734, 36.984699>,  <46.062798, 36.247669, 37.105686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.856583, 36.226734, 36.984699>,  <45.512894, 36.191841, 36.783054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856583, 36.226734, 36.984699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021374, -0.990617, 0.134986,
		0.511155, -0.105208, -0.853025,
		0.859223, 0.087231, 0.504110,
		46.114349, 36.252903, 37.135933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692081, 35.371948, 36.638954>,  <45.512894, 36.191841, 36.783054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692081, 35.371948, 36.638954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.468697, 35.286366, 36.959541>,  <45.334667, 35.235016, 37.151894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.468697, 35.286366, 36.959541>,  <45.692081, 35.371948, 36.638954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468697, 35.286366, 36.959541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367099, -0.930152, 0.007477,
		0.743883, 0.298392, 0.597996,
		-0.558458, -0.213961, 0.801464,
		45.301159, 35.222176, 37.199982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.135086, 35.096634, 37.024715>,  <45.692081, 35.371948, 36.638954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.135086, 35.096634, 37.024715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.761414, 34.969685, 37.089935>,  <45.537212, 34.893513, 37.129066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.761414, 34.969685, 37.089935>,  <46.135086, 35.096634, 37.024715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761414, 34.969685, 37.089935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320940, -0.947088, -0.004711,
		0.155920, 0.047929, 0.986606,
		-0.934177, -0.317376, 0.163052,
		45.481159, 34.874474, 37.138851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.776062, 35.230644, 36.587101>,  <46.135086, 35.096634, 37.024715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.776062, 35.230644, 36.587101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.518440, 35.531513, 36.642868>,  <46.363869, 35.712036, 36.676327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.518440, 35.531513, 36.642868>,  <46.776062, 35.230644, 36.587101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518440, 35.531513, 36.642868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488506, -0.264141, -0.831620,
		-0.588695, -0.603710, 0.537561,
		-0.644049, 0.752172, 0.139417,
		46.325226, 35.757164, 36.684692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.876041, 36.037930, 36.929195>,  <46.776062, 35.230644, 36.587101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.876041, 36.037930, 36.929195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.135006, 35.830246, 37.152367>,  <47.290386, 35.705635, 37.286270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.135006, 35.830246, 37.152367>,  <46.876041, 36.037930, 36.929195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.135006, 35.830246, 37.152367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440890, -0.341982, -0.829858,
		0.621672, 0.783242, 0.007512,
		0.647411, -0.519211, 0.557924,
		47.329227, 35.674484, 37.319744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.571831, 36.219284, 36.799152>,  <46.876041, 36.037930, 36.929195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.571831, 36.219284, 36.799152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.550323, 35.832981, 36.900681>,  <47.537418, 35.601200, 36.961597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.550323, 35.832981, 36.900681>,  <47.571831, 36.219284, 36.799152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.550323, 35.832981, 36.900681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408484, -0.253222, -0.876938,
		0.911181, 0.056535, 0.408110,
		-0.053765, -0.965755, 0.253825,
		47.534195, 35.543255, 36.976830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.320900, 35.936325, 36.564102>,  <47.571831, 36.219284, 36.799152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.320900, 35.936325, 36.564102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.020691, 35.671989, 36.565681>,  <47.840565, 35.513390, 36.566631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.020691, 35.671989, 36.565681>,  <48.320900, 35.936325, 36.564102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.020691, 35.671989, 36.565681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188802, -0.220147, -0.957021,
		0.633304, -0.717517, 0.289992,
		-0.750520, -0.660837, 0.003951,
		47.795536, 35.473740, 36.566868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.482819, 35.289871, 36.291378>,  <48.320900, 35.936325, 36.564102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.482819, 35.289871, 36.291378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.089092, 35.337952, 36.239716>,  <47.852856, 35.366798, 36.208717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.089092, 35.337952, 36.239716>,  <48.482819, 35.289871, 36.291378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.089092, 35.337952, 36.239716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094051, -0.261912, -0.960498,
		-0.149276, -0.957578, 0.246499,
		-0.984313, 0.120196, -0.129158,
		47.793800, 35.374012, 36.200970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.168419, 34.669846, 36.021755>,  <48.482819, 35.289871, 36.291378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.168419, 34.669846, 36.021755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.985687, 35.012863, 35.927162>,  <47.876049, 35.218674, 35.870407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.985687, 35.012863, 35.927162>,  <48.168419, 34.669846, 36.021755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.985687, 35.012863, 35.927162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222708, -0.147121, -0.963720,
		-0.861225, -0.492922, -0.123773,
		-0.456829, 0.857545, -0.236482,
		47.848637, 35.270126, 35.856216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.620789, 34.613781, 35.547935>,  <48.168419, 34.669846, 36.021755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.620789, 34.613781, 35.547935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.711967, 34.997822, 35.483147>,  <47.766674, 35.228249, 35.444271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.711967, 34.997822, 35.483147>,  <47.620789, 34.613781, 35.547935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.711967, 34.997822, 35.483147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080113, -0.184285, -0.979602,
		-0.970371, 0.210324, -0.118925,
		0.227950, 0.960105, -0.161975,
		47.780354, 35.285854, 35.434555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.189968, 34.996563, 34.999649>,  <47.620789, 34.613781, 35.547935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.189968, 34.996563, 34.999649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.584160, 35.063530, 35.010971>,  <47.820675, 35.103710, 35.017765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.584160, 35.063530, 35.010971>,  <47.189968, 34.996563, 34.999649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.584160, 35.063530, 35.010971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049990, -0.126791, -0.990669,
		-0.162270, 0.977698, -0.133319,
		0.985479, 0.167420, 0.028301,
		47.879803, 35.113754, 35.019463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.293558, 31.309355, 55.730785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.635992, 31.406908, 55.913055>,  <31.841452, 31.465439, 56.022419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.635992, 31.406908, 55.913055>,  <31.293558, 31.309355, 55.730785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635992, 31.406908, 55.913055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474003, -0.019037, -0.880318,
		-0.206018, 0.969618, -0.131898,
		0.856083, 0.243881, 0.455680,
		31.892817, 31.480072, 56.049759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603622, 31.704763, 55.237762>,  <31.293558, 31.309355, 55.730785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603622, 31.704763, 55.237762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.909443, 31.608511, 55.476948>,  <32.092934, 31.550760, 55.620461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.909443, 31.608511, 55.476948>,  <31.603622, 31.704763, 55.237762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909443, 31.608511, 55.476948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632922, 0.104755, -0.767096,
		0.121947, 0.964947, 0.232392,
		0.764551, -0.240631, 0.597962,
		32.138809, 31.536322, 55.656338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054085, 32.262348, 55.227722>,  <31.603622, 31.704763, 55.237762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054085, 32.262348, 55.227722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.248188, 31.929966, 55.336555>,  <32.364651, 31.730536, 55.401855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.248188, 31.929966, 55.336555>,  <32.054085, 32.262348, 55.227722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248188, 31.929966, 55.336555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672938, 0.156246, -0.723009,
		0.558279, 0.533942, 0.635004,
		0.485262, -0.830959, 0.272082,
		32.393768, 31.680677, 55.418179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657860, 32.472206, 55.164101>,  <32.054085, 32.262348, 55.227722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657860, 32.472206, 55.164101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.697319, 32.074257, 55.173054>,  <32.720993, 31.835487, 55.178425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.697319, 32.074257, 55.173054>,  <32.657860, 32.472206, 55.164101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697319, 32.074257, 55.173054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662205, 0.048834, -0.747730,
		0.742801, 0.088585, 0.663626,
		0.098646, -0.994871, 0.022388,
		32.726913, 31.775795, 55.179771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350330, 32.403130, 55.079796>,  <32.657860, 32.472206, 55.164101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350330, 32.403130, 55.079796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.188114, 32.049782, 54.985817>,  <33.090786, 31.837774, 54.929428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.188114, 32.049782, 54.985817>,  <33.350330, 32.403130, 55.079796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188114, 32.049782, 54.985817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624547, -0.080091, -0.776870,
		0.667444, -0.461788, 0.584184,
		-0.405537, -0.883367, -0.234951,
		33.066452, 31.784771, 54.915333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916931, 31.947041, 55.076172>,  <33.350330, 32.403130, 55.079796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916931, 31.947041, 55.076172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.617020, 31.796179, 54.858700>,  <33.437073, 31.705662, 54.728218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.617020, 31.796179, 54.858700>,  <33.916931, 31.947041, 55.076172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617020, 31.796179, 54.858700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586562, 0.001427, -0.809903,
		0.306236, -0.926148, 0.220156,
		-0.749776, -0.377157, -0.543680,
		33.392086, 31.683031, 54.695595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151375, 31.398317, 54.771900>,  <33.916931, 31.947041, 55.076172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151375, 31.398317, 54.771900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.827019, 31.504797, 54.563442>,  <33.632404, 31.568686, 54.438370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.827019, 31.504797, 54.563442>,  <34.151375, 31.398317, 54.771900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827019, 31.504797, 54.563442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507489, -0.123542, -0.852756,
		-0.291386, -0.955968, -0.034914,
		-0.810894, 0.266199, -0.521141,
		33.583752, 31.584656, 54.407101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313862, 31.146210, 54.103695>,  <34.151375, 31.398317, 54.771900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313862, 31.146210, 54.103695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.989395, 31.357790, 54.003925>,  <33.794716, 31.484739, 53.944065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.989395, 31.357790, 54.003925>,  <34.313862, 31.146210, 54.103695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989395, 31.357790, 54.003925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346539, 0.091207, -0.933591,
		-0.471076, -0.843736, -0.257287,
		-0.811171, 0.528953, -0.249422,
		33.746044, 31.516476, 53.929100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024185, 30.825394, 53.435638>,  <34.313862, 31.146210, 54.103695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024185, 30.825394, 53.435638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.877892, 31.197369, 53.450916>,  <33.790115, 31.420553, 53.460083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.877892, 31.197369, 53.450916>,  <34.024185, 30.825394, 53.435638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877892, 31.197369, 53.450916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400285, 0.194214, -0.895574,
		-0.840245, -0.312252, -0.443269,
		-0.365734, 0.929935, 0.038198,
		33.768173, 31.476349, 53.462376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748444, 30.934982, 52.777519>,  <34.024185, 30.825394, 53.435638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748444, 30.934982, 52.777519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.830318, 31.289543, 52.943600>,  <33.879444, 31.502279, 53.043247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.830318, 31.289543, 52.943600>,  <33.748444, 30.934982, 52.777519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830318, 31.289543, 52.943600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347172, 0.330860, -0.877498,
		-0.915191, 0.323761, -0.240010,
		0.204690, 0.886403, 0.415201,
		33.891724, 31.555464, 53.068161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332066, 31.379395, 52.440182>,  <33.748444, 30.934982, 52.777519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332066, 31.379395, 52.440182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.652237, 31.585699, 52.562366>,  <33.844341, 31.709482, 52.635677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.652237, 31.585699, 52.562366>,  <33.332066, 31.379395, 52.440182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652237, 31.585699, 52.562366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141740, 0.332283, -0.932469,
		-0.582428, 0.789671, 0.192866,
		0.800430, 0.515759, 0.305459,
		33.892365, 31.740427, 52.654003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234005, 32.125217, 52.409645>,  <33.332066, 31.379395, 52.440182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234005, 32.125217, 52.409645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.628544, 32.063023, 52.387924>,  <33.865265, 32.025703, 52.374889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.628544, 32.063023, 52.387924>,  <33.234005, 32.125217, 52.409645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628544, 32.063023, 52.387924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021011, 0.445821, -0.894876,
		0.163356, 0.881514, 0.443000,
		0.986343, -0.155491, -0.054306,
		33.924446, 32.016376, 52.371632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451714, 32.768806, 52.154037>,  <33.234005, 32.125217, 52.409645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451714, 32.768806, 52.154037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.749485, 32.507263, 52.099945>,  <33.928150, 32.350338, 52.067490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.749485, 32.507263, 52.099945>,  <33.451714, 32.768806, 52.154037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749485, 32.507263, 52.099945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205556, 0.417123, -0.885299,
		0.635271, 0.631247, 0.444925,
		0.744431, -0.653862, -0.135229,
		33.972813, 32.311104, 52.059376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001228, 33.124302, 51.979431>,  <33.451714, 32.768806, 52.154037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001228, 33.124302, 51.979431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.109718, 32.766479, 51.837326>,  <34.174812, 32.551785, 51.752064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.109718, 32.766479, 51.837326>,  <34.001228, 33.124302, 51.979431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109718, 32.766479, 51.837326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213299, 0.415778, -0.884099,
		0.938585, 0.164009, 0.303576,
		0.271221, -0.894555, -0.355260,
		34.191086, 32.498112, 51.730747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553909, 33.307766, 51.605762>,  <34.001228, 33.124302, 51.979431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553909, 33.307766, 51.605762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.474548, 32.933548, 51.488873>,  <34.426933, 32.709019, 51.418739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.474548, 32.933548, 51.488873>,  <34.553909, 33.307766, 51.605762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474548, 32.933548, 51.488873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083448, 0.280944, -0.956089,
		0.976562, -0.214073, 0.022330,
		-0.198400, -0.935544, -0.292223,
		34.415028, 32.652885, 51.401207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076828, 33.129818, 51.020565>,  <34.553909, 33.307766, 51.605762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076828, 33.129818, 51.020565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.755611, 32.894627, 50.981747>,  <34.562881, 32.753513, 50.958458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.755611, 32.894627, 50.981747>,  <35.076828, 33.129818, 51.020565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755611, 32.894627, 50.981747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011564, 0.147439, -0.989004,
		0.595817, -0.795328, -0.111599,
		-0.803037, -0.587975, -0.097044,
		34.514702, 32.718235, 50.952633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154274, 32.541687, 50.484016>,  <35.076828, 33.129818, 51.020565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154274, 32.541687, 50.484016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.760792, 32.609116, 50.509029>,  <34.524704, 32.649570, 50.524036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.760792, 32.609116, 50.509029>,  <35.154274, 32.541687, 50.484016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760792, 32.609116, 50.509029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040919, 0.128765, -0.990831,
		-0.175075, -0.977243, -0.119769,
		-0.983704, 0.168569, 0.062532,
		34.465679, 32.659687, 50.527790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861622, 32.270344, 49.850441>,  <35.154274, 32.541687, 50.484016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861622, 32.270344, 49.850441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.563919, 32.494076, 49.996445>,  <34.385300, 32.628315, 50.084045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.563919, 32.494076, 49.996445>,  <34.861622, 32.270344, 49.850441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563919, 32.494076, 49.996445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182493, 0.355409, -0.916723,
		-0.642480, -0.748887, -0.162441,
		-0.744255, 0.559332, 0.365009,
		34.340641, 32.661877, 50.105949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198246, 32.108719, 49.431015>,  <34.861622, 32.270344, 49.850441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198246, 32.108719, 49.431015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.130138, 32.468502, 49.592007>,  <34.089275, 32.684372, 49.688602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.130138, 32.468502, 49.592007>,  <34.198246, 32.108719, 49.431015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130138, 32.468502, 49.592007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084698, 0.393575, -0.915382,
		-0.981751, -0.189950, 0.009169,
		-0.170268, 0.899454, 0.402481,
		34.079060, 32.738338, 49.712749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553802, 32.263603, 49.231983>,  <34.198246, 32.108719, 49.431015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553802, 32.263603, 49.231983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.737923, 32.611324, 49.304020>,  <33.848396, 32.819958, 49.347244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.737923, 32.611324, 49.304020>,  <33.553802, 32.263603, 49.231983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737923, 32.611324, 49.304020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256886, 0.324611, -0.910295,
		-0.849784, 0.372745, 0.372730,
		0.460300, 0.869304, 0.180096,
		33.876011, 32.872116, 49.358047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118885, 32.828926, 48.959774>,  <33.553802, 32.263603, 49.231983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118885, 32.828926, 48.959774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.466644, 33.023823, 48.992630>,  <33.675301, 33.140759, 49.012344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.466644, 33.023823, 48.992630>,  <33.118885, 32.828926, 48.959774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466644, 33.023823, 48.992630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154088, 0.425298, -0.891840,
		-0.469474, 0.762706, 0.444830,
		0.869397, 0.487239, 0.082142,
		33.727463, 33.169994, 49.017273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989487, 33.453651, 48.638721>,  <33.118885, 32.828926, 48.959774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989487, 33.453651, 48.638721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.386978, 33.415199, 48.615902>,  <33.625473, 33.392128, 48.602211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.386978, 33.415199, 48.615902>,  <32.989487, 33.453651, 48.638721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386978, 33.415199, 48.615902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002624, 0.530276, -0.847821,
		0.111754, 0.842358, 0.527204,
		0.993732, -0.096131, -0.057051,
		33.685097, 33.386360, 48.598785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449173, 33.469772, 48.107368>,  <32.989487, 33.453651, 48.638721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449173, 33.469772, 48.107368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.266041, 33.194057, 47.882774>,  <32.156162, 33.028629, 47.748016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.266041, 33.194057, 47.882774>,  <32.449173, 33.469772, 48.107368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266041, 33.194057, 47.882774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434132, -0.377808, 0.817796,
		-0.775833, 0.618174, -0.126270,
		-0.457834, -0.689291, -0.561485,
		32.128689, 32.987270, 47.714329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816626, 33.437698, 48.342613>,  <32.449173, 33.469772, 48.107368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816626, 33.437698, 48.342613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.844275, 33.079330, 48.167095>,  <31.860865, 32.864307, 48.061783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.844275, 33.079330, 48.167095>,  <31.816626, 33.437698, 48.342613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844275, 33.079330, 48.167095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364717, -0.432098, 0.824787,
		-0.928549, 0.103025, -0.356626,
		0.069124, -0.895923, -0.438799,
		31.865011, 32.810555, 48.035454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252644, 33.147850, 48.654667>,  <31.816626, 33.437698, 48.342613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252644, 33.147850, 48.654667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.493685, 32.871487, 48.494907>,  <31.638309, 32.705669, 48.399052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.493685, 32.871487, 48.494907>,  <31.252644, 33.147850, 48.654667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493685, 32.871487, 48.494907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264933, -0.645285, 0.716531,
		-0.752783, -0.325968, -0.571893,
		0.602601, -0.690906, -0.399400,
		31.674465, 32.664215, 48.375088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860106, 32.452385, 48.468925>,  <31.252644, 33.147850, 48.654667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860106, 32.452385, 48.468925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.244949, 32.366085, 48.535622>,  <31.475855, 32.314304, 48.575638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.244949, 32.366085, 48.535622>,  <30.860106, 32.452385, 48.468925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244949, 32.366085, 48.535622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272588, -0.745969, 0.607640,
		-0.006716, -0.630066, -0.776513,
		0.962107, -0.215749, 0.166739,
		31.533581, 32.301361, 48.585644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803049, 31.723642, 48.617146>,  <30.860106, 32.452385, 48.468925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803049, 31.723642, 48.617146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.153208, 31.863804, 48.750347>,  <31.363304, 31.947901, 48.830269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.153208, 31.863804, 48.750347>,  <30.803049, 31.723642, 48.617146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153208, 31.863804, 48.750347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010213, -0.675320, 0.737454,
		0.483294, -0.648967, -0.587596,
		0.875399, 0.350406, 0.333006,
		31.415827, 31.968925, 48.850250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984411, 31.181349, 48.953400>,  <30.803049, 31.723642, 48.617146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984411, 31.181349, 48.953400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.247040, 31.449247, 49.092171>,  <31.404617, 31.609987, 49.175430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.247040, 31.449247, 49.092171>,  <30.984411, 31.181349, 48.953400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247040, 31.449247, 49.092171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010642, -0.451677, 0.892118,
		0.754190, -0.589430, -0.289430,
		0.656570, 0.669746, 0.346923,
		31.444012, 31.650171, 49.196247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429855, 30.811821, 49.327843>,  <30.984411, 31.181349, 48.953400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429855, 30.811821, 49.327843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.479523, 31.183847, 49.466152>,  <31.509323, 31.407063, 49.549137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.479523, 31.183847, 49.466152>,  <31.429855, 30.811821, 49.327843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479523, 31.183847, 49.466152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170406, -0.323306, 0.930825,
		0.977520, -0.174499, 0.118345,
		0.124167, 0.930066, 0.345774,
		31.516773, 31.462868, 49.569885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796480, 30.724510, 49.933113>,  <31.429855, 30.811821, 49.327843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796480, 30.724510, 49.933113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.608923, 31.075197, 49.976017>,  <31.496387, 31.285610, 50.001759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.608923, 31.075197, 49.976017>,  <31.796480, 30.724510, 49.933113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608923, 31.075197, 49.976017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317083, -0.280425, 0.905992,
		0.824377, 0.390805, 0.409482,
		-0.468894, 0.876718, 0.107258,
		31.468254, 31.338213, 50.008194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074211, 31.146353, 50.512478>,  <31.796480, 30.724510, 49.933113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074211, 31.146353, 50.512478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.696041, 31.259649, 50.448040>,  <31.469139, 31.327627, 50.409378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.696041, 31.259649, 50.448040>,  <32.074211, 31.146353, 50.512478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696041, 31.259649, 50.448040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230139, -0.230429, 0.945483,
		0.230679, 0.930955, 0.283037,
		-0.945422, 0.283241, -0.161094,
		31.412415, 31.344622, 50.399712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846132, 30.913572, 51.121891>,  <32.074211, 31.146353, 50.512478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846132, 30.913572, 51.121891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.538349, 31.124859, 50.978268>,  <31.353680, 31.251631, 50.892094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.538349, 31.124859, 50.978268>,  <31.846132, 30.913572, 51.121891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538349, 31.124859, 50.978268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573283, -0.323347, 0.752857,
		0.281570, 0.785134, 0.551618,
		-0.769458, 0.528215, -0.359059,
		31.307512, 31.283323, 50.870548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626873, 31.291157, 51.672867>,  <31.846132, 30.913572, 51.121891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626873, 31.291157, 51.672867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.309891, 31.242067, 51.433884>,  <31.119701, 31.212614, 51.290493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.309891, 31.242067, 51.433884>,  <31.626873, 31.291157, 51.672867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309891, 31.242067, 51.433884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563545, -0.227373, 0.794178,
		-0.233310, 0.966044, 0.111022,
		-0.792454, -0.122724, -0.597457,
		31.072155, 31.205250, 51.254646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154839, 31.671797, 51.948746>,  <31.626873, 31.291157, 51.672867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154839, 31.671797, 51.948746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.925779, 31.417154, 51.742134>,  <30.788343, 31.264370, 51.618168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.925779, 31.417154, 51.742134>,  <31.154839, 31.671797, 51.948746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925779, 31.417154, 51.742134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580796, -0.129634, 0.803662,
		-0.578574, 0.760217, -0.295502,
		-0.572650, -0.636604, -0.516533,
		30.753984, 31.226173, 51.587173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401665, 31.941349, 52.069180>,  <31.154839, 31.671797, 51.948746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401665, 31.941349, 52.069180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.416777, 31.558704, 51.953621>,  <30.425844, 31.329117, 51.884285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.416777, 31.558704, 51.953621>,  <30.401665, 31.941349, 52.069180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416777, 31.558704, 51.953621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643785, -0.244415, 0.725122,
		-0.764273, 0.158594, -0.625087,
		0.037781, -0.956613, -0.288901,
		30.428110, 31.271721, 51.866951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644876, 31.726292, 51.902447>,  <30.401665, 31.941349, 52.069180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644876, 31.726292, 51.902447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.853992, 31.387802, 51.943619>,  <29.979462, 31.184708, 51.968323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.853992, 31.387802, 51.943619>,  <29.644876, 31.726292, 51.902447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853992, 31.387802, 51.943619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608049, -0.285542, 0.740771,
		-0.597467, -0.449855, -0.663825,
		0.522790, -0.846225, 0.102932,
		30.010830, 31.133934, 51.974499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116100, 31.256577, 51.961159>,  <29.644876, 31.726292, 51.902447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116100, 31.256577, 51.961159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.432127, 31.059715, 52.107353>,  <29.621744, 30.941599, 52.195068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.432127, 31.059715, 52.107353>,  <29.116100, 31.256577, 51.961159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432127, 31.059715, 52.107353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547064, -0.297021, 0.782623,
		-0.276605, -0.818274, -0.503902,
		0.790070, -0.492144, 0.365491,
		29.669147, 30.912069, 52.216999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804440, 30.754698, 52.390625>,  <29.116100, 31.256577, 51.961159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804440, 30.754698, 52.390625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.183805, 30.718657, 52.512207>,  <29.411425, 30.697031, 52.585155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.183805, 30.718657, 52.512207>,  <28.804440, 30.754698, 52.390625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183805, 30.718657, 52.512207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316433, -0.210473, 0.924971,
		-0.019370, -0.973439, -0.228128,
		0.948417, -0.090104, 0.303951,
		29.468330, 30.691626, 52.603394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823288, 30.157627, 52.739494>,  <28.804440, 30.754698, 52.390625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823288, 30.157627, 52.739494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.110128, 30.379286, 52.908581>,  <29.282232, 30.512281, 53.010033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.110128, 30.379286, 52.908581>,  <28.823288, 30.157627, 52.739494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110128, 30.379286, 52.908581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460935, -0.077866, 0.884011,
		0.522787, -0.828769, 0.199588,
		0.717100, 0.554147, 0.422716,
		29.325258, 30.545530, 53.035397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067245, 29.823895, 53.403847>,  <28.823288, 30.157627, 52.739494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067245, 29.823895, 53.403847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.194817, 30.201372, 53.439003>,  <29.271358, 30.427858, 53.460098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.194817, 30.201372, 53.439003>,  <29.067245, 29.823895, 53.403847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194817, 30.201372, 53.439003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380128, 0.042409, 0.923961,
		0.868210, -0.328087, 0.372250,
		0.318927, 0.943695, 0.087895,
		29.290495, 30.484480, 53.465370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.671949, 29.904909, 54.190750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545063, 30.269201, 54.084965>,  <29.468931, 30.487778, 54.021492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545063, 30.269201, 54.084965>,  <29.671949, 29.904909, 54.190750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545063, 30.269201, 54.084965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025737, 0.270497, 0.962377,
		0.948004, 0.312089, -0.062367,
		-0.317217, 0.910731, -0.264465,
		29.449898, 30.542421, 54.005627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204678, 30.471058, 54.505692>,  <29.671949, 29.904909, 54.190750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204678, 30.471058, 54.505692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847134, 30.630270, 54.423145>,  <29.632608, 30.725798, 54.373615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847134, 30.630270, 54.423145>,  <30.204678, 30.471058, 54.505692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847134, 30.630270, 54.423145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054406, 0.553180, 0.831283,
		0.445036, 0.731822, -0.516120,
		-0.893859, 0.398031, -0.206369,
		29.578976, 30.749680, 54.361233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277227, 31.123016, 54.680614>,  <30.204678, 30.471058, 54.505692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277227, 31.123016, 54.680614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883877, 31.052345, 54.697361>,  <29.647865, 31.009943, 54.707409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883877, 31.052345, 54.697361>,  <30.277227, 31.123016, 54.680614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883877, 31.052345, 54.697361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079303, 0.625345, 0.776308,
		-0.163335, 0.760085, -0.628961,
		-0.983378, -0.176676, 0.041864,
		29.588863, 30.999342, 54.709919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972973, 31.734884, 54.906506>,  <30.277227, 31.123016, 54.680614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972973, 31.734884, 54.906506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646357, 31.512968, 54.970337>,  <29.450386, 31.379818, 55.008636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646357, 31.512968, 54.970337>,  <29.972973, 31.734884, 54.906506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646357, 31.512968, 54.970337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182479, 0.510299, 0.840414,
		-0.547686, 0.657115, -0.517919,
		-0.816543, -0.554792, 0.159574,
		29.401394, 31.346531, 55.018208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563564, 32.065399, 55.252266>,  <29.972973, 31.734884, 54.906506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563564, 32.065399, 55.252266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347574, 31.734514, 55.314415>,  <29.217979, 31.535982, 55.351704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347574, 31.734514, 55.314415>,  <29.563564, 32.065399, 55.252266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347574, 31.734514, 55.314415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425616, 0.427621, 0.797491,
		-0.726138, 0.364495, -0.582980,
		-0.539976, -0.827214, 0.155377,
		29.185581, 31.486349, 55.361027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800873, 32.303001, 55.535759>,  <29.563564, 32.065399, 55.252266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800873, 32.303001, 55.535759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849049, 31.919241, 55.637772>,  <28.877954, 31.688984, 55.698978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849049, 31.919241, 55.637772>,  <28.800873, 32.303001, 55.535759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849049, 31.919241, 55.637772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454746, 0.175044, 0.873250,
		-0.882440, -0.221147, -0.415203,
		0.120438, -0.959403, 0.255031,
		28.885180, 31.631420, 55.714279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187340, 32.146355, 55.938816>,  <28.800873, 32.303001, 55.535759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187340, 32.146355, 55.938816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454540, 31.861912, 56.026539>,  <28.614861, 31.691246, 56.079174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454540, 31.861912, 56.026539>,  <28.187340, 32.146355, 55.938816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454540, 31.861912, 56.026539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476682, -0.182586, 0.859905,
		-0.571445, -0.678958, -0.460942,
		0.668001, -0.711111, 0.219309,
		28.654940, 31.648579, 56.092331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878813, 31.531500, 56.145790>,  <28.187340, 32.146355, 55.938816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878813, 31.531500, 56.145790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232859, 31.525280, 56.331833>,  <28.445286, 31.521547, 56.443459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232859, 31.525280, 56.331833>,  <27.878813, 31.531500, 56.145790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232859, 31.525280, 56.331833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465274, -0.009395, 0.885117,
		-0.009395, -0.999835, -0.015551,
		-0.885117, 0.015551, -0.465109,
		28.498394, 31.520615, 56.471367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823828, 31.153597, 56.749641>,  <27.878813, 31.531500, 56.145790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823828, 31.153597, 56.749641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176878, 31.314341, 56.847195>,  <28.388708, 31.410786, 56.905727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176878, 31.314341, 56.847195>,  <27.823828, 31.153597, 56.749641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176878, 31.314341, 56.847195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290576, 0.058589, 0.955056,
		0.369508, -0.913826, 0.168483,
		0.882626, 0.401858, 0.243887,
		28.441666, 31.434898, 56.920361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964108, 30.838013, 57.261478>,  <27.823828, 31.153597, 56.749641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964108, 30.838013, 57.261478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176359, 31.174135, 57.305878>,  <28.303709, 31.375809, 57.332520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176359, 31.174135, 57.305878>,  <27.964108, 30.838013, 57.261478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176359, 31.174135, 57.305878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381128, 0.119571, 0.916758,
		0.757084, -0.528763, 0.383711,
		0.530628, 0.840305, 0.111001,
		28.335548, 31.426228, 57.339176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079737, 30.804918, 57.931229>,  <27.964108, 30.838013, 57.261478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079737, 30.804918, 57.931229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158819, 31.189596, 57.855278>,  <28.206268, 31.420403, 57.809708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158819, 31.189596, 57.855278>,  <28.079737, 30.804918, 57.931229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158819, 31.189596, 57.855278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382610, 0.254041, 0.888298,
		0.902509, -0.102972, 0.418180,
		0.197705, 0.961697, -0.189876,
		28.218130, 31.478106, 57.798317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480671, 31.127159, 58.505024>,  <28.079737, 30.804918, 57.931229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480671, 31.127159, 58.505024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305750, 31.429213, 58.309662>,  <28.200798, 31.610445, 58.192444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305750, 31.429213, 58.309662>,  <28.480671, 31.127159, 58.505024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305750, 31.429213, 58.309662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441955, 0.292529, 0.847999,
		0.783226, 0.586684, 0.205813,
		-0.437301, 0.755135, -0.488405,
		28.174561, 31.655752, 58.163139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549932, 31.690001, 58.977245>,  <28.480671, 31.127159, 58.505024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549932, 31.690001, 58.977245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267731, 31.830051, 58.730774>,  <28.098410, 31.914082, 58.582890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267731, 31.830051, 58.730774>,  <28.549932, 31.690001, 58.977245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267731, 31.830051, 58.730774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540643, 0.296262, 0.787359,
		0.458226, 0.888617, -0.019720,
		-0.705502, 0.350127, -0.616180,
		28.056080, 31.935089, 58.545921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375095, 32.337185, 59.241470>,  <28.549932, 31.690001, 58.977245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375095, 32.337185, 59.241470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062057, 32.239498, 59.012421>,  <27.874235, 32.180885, 58.874989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062057, 32.239498, 59.012421>,  <28.375095, 32.337185, 59.241470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062057, 32.239498, 59.012421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622046, 0.343084, 0.703813,
		0.024573, 0.907000, -0.420412,
		-0.782595, -0.244221, -0.572626,
		27.827278, 32.166233, 58.840633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934864, 32.848648, 59.350098>,  <28.375095, 32.337185, 59.241470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934864, 32.848648, 59.350098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697027, 32.580120, 59.173103>,  <27.554325, 32.419003, 59.066906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697027, 32.580120, 59.173103>,  <27.934864, 32.848648, 59.350098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697027, 32.580120, 59.173103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773228, 0.326566, 0.543574,
		-0.220408, 0.665349, -0.713253,
		-0.594591, -0.671315, -0.442489,
		27.518650, 32.378727, 59.040356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319565, 33.178242, 59.171364>,  <27.934864, 32.848648, 59.350098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319565, 33.178242, 59.171364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208218, 32.794613, 59.192123>,  <27.141409, 32.564434, 59.204578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208218, 32.794613, 59.192123>,  <27.319565, 33.178242, 59.171364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208218, 32.794613, 59.192123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737200, 0.247985, 0.628522,
		-0.615668, 0.136700, -0.776058,
		-0.278370, -0.959071, 0.051901,
		27.124706, 32.506893, 59.207695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542299, 33.299362, 59.014847>,  <27.319565, 33.178242, 59.171364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542299, 33.299362, 59.014847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591333, 32.945992, 59.195747>,  <26.620754, 32.733971, 59.304287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591333, 32.945992, 59.195747>,  <26.542299, 33.299362, 59.014847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591333, 32.945992, 59.195747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596673, 0.298537, 0.744887,
		-0.793066, -0.361162, -0.490518,
		0.122587, -0.883424, 0.452255,
		26.628109, 32.680965, 59.331425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891594, 33.010288, 59.055721>,  <26.542299, 33.299362, 59.014847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891594, 33.010288, 59.055721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121191, 32.830112, 59.329258>,  <26.258949, 32.722008, 59.493382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121191, 32.830112, 59.329258>,  <25.891594, 33.010288, 59.055721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121191, 32.830112, 59.329258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629914, 0.290701, 0.720209,
		-0.523205, -0.844154, -0.116879,
		0.573990, -0.450440, 0.683841,
		26.293388, 32.694981, 59.534409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452488, 32.551521, 59.483368>,  <25.891594, 33.010288, 59.055721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452488, 32.551521, 59.483368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782820, 32.603249, 59.702923>,  <25.981020, 32.634285, 59.834656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782820, 32.603249, 59.702923>,  <25.452488, 32.551521, 59.483368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782820, 32.603249, 59.702923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561861, 0.271716, 0.781334,
		-0.048102, -0.953650, 0.297050,
		0.825832, 0.129317, 0.548889,
		26.030569, 32.642044, 59.867588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176691, 32.296101, 60.061100>,  <25.452488, 32.551521, 59.483368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176691, 32.296101, 60.061100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489717, 32.509380, 60.189651>,  <25.677534, 32.637348, 60.266781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489717, 32.509380, 60.189651>,  <25.176691, 32.296101, 60.061100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489717, 32.509380, 60.189651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513934, 0.261942, 0.816859,
		0.351372, -0.804412, 0.479020,
		0.782566, 0.533206, 0.321376,
		25.724487, 32.669342, 60.286064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290133, 32.178112, 60.791752>,  <25.176691, 32.296101, 60.061100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290133, 32.178112, 60.791752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467054, 32.531544, 60.730236>,  <25.573208, 32.743603, 60.693325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467054, 32.531544, 60.730236>,  <25.290133, 32.178112, 60.791752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467054, 32.531544, 60.730236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606309, 0.420940, 0.674685,
		0.660875, -0.205171, 0.721907,
		0.442305, 0.883581, -0.153791,
		25.599747, 32.796619, 60.684097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653618, 32.475666, 61.509106>,  <25.290133, 32.178112, 60.791752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653618, 32.475666, 61.509106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577869, 32.773956, 61.253593>,  <25.532421, 32.952930, 61.100288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577869, 32.773956, 61.253593>,  <25.653618, 32.475666, 61.509106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577869, 32.773956, 61.253593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568580, 0.447105, 0.690517,
		0.800535, 0.493960, 0.339335,
		-0.189370, 0.745722, -0.638779,
		25.521059, 32.997673, 61.061958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860380, 32.517300, 62.333050>,  <25.653618, 32.475666, 61.509106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860380, 32.517300, 62.333050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668297, 32.854477, 62.430077>,  <25.553047, 33.056786, 62.488293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668297, 32.854477, 62.430077>,  <25.860380, 32.517300, 62.333050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668297, 32.854477, 62.430077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778501, 0.282168, 0.560640,
		0.404145, 0.458063, -0.791736,
		-0.480211, 0.842947, 0.242566,
		25.524233, 33.107361, 62.502846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651506, 32.575603, 62.307865>,  <25.860380, 32.517300, 62.333050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651506, 32.575603, 62.307865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913967, 32.867470, 62.384853>,  <27.071444, 33.042591, 62.431046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913967, 32.867470, 62.384853>,  <26.651506, 32.575603, 62.307865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913967, 32.867470, 62.384853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561998, -0.302291, -0.769921,
		-0.503608, 0.613353, -0.608423,
		0.656154, 0.729670, 0.192467,
		27.110813, 33.086372, 62.442593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921047, 32.816692, 61.651497>,  <26.651506, 32.575603, 62.307865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921047, 32.816692, 61.651497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183739, 32.967609, 61.912682>,  <27.341354, 33.058159, 62.069393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183739, 32.967609, 61.912682>,  <26.921047, 32.816692, 61.651497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183739, 32.967609, 61.912682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705846, -0.002699, -0.708360,
		-0.265495, 0.926091, -0.268082,
		0.656729, 0.377291, 0.652961,
		27.380758, 33.080795, 62.108570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261787, 33.343723, 61.353050>,  <26.921047, 32.816692, 61.651497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261787, 33.343723, 61.353050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527485, 33.265865, 61.641743>,  <27.686903, 33.219151, 61.814957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527485, 33.265865, 61.641743>,  <27.261787, 33.343723, 61.353050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527485, 33.265865, 61.641743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744655, 0.087933, -0.661631,
		0.065321, 0.976924, 0.203355,
		0.664245, -0.194648, 0.721728,
		27.726759, 33.207470, 61.858261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893684, 33.856003, 61.294609>,  <27.261787, 33.343723, 61.353050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893684, 33.856003, 61.294609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017868, 33.529964, 61.490253>,  <28.092379, 33.334339, 61.607639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017868, 33.529964, 61.490253>,  <27.893684, 33.856003, 61.294609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017868, 33.529964, 61.490253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858241, 0.019124, -0.512891,
		0.408702, 0.579007, 0.705488,
		0.310459, -0.815098, 0.489112,
		28.111006, 33.285435, 61.636986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521662, 34.030457, 61.493961>,  <27.893684, 33.856003, 61.294609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521662, 34.030457, 61.493961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514027, 33.630657, 61.504059>,  <28.509445, 33.390778, 61.510117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514027, 33.630657, 61.504059>,  <28.521662, 34.030457, 61.493961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514027, 33.630657, 61.504059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841344, -0.029697, -0.539683,
		0.540163, 0.010936, 0.841490,
		-0.019087, -0.999499, 0.025242,
		28.508301, 33.330807, 61.511631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149807, 33.815044, 61.652653>,  <28.521662, 34.030457, 61.493961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149807, 33.815044, 61.652653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011171, 33.466969, 61.512573>,  <28.927990, 33.258121, 61.428524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011171, 33.466969, 61.512573>,  <29.149807, 33.815044, 61.652653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011171, 33.466969, 61.512573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820755, -0.100586, -0.562355,
		0.454132, -0.482334, 0.749078,
		-0.346590, -0.870193, -0.350199,
		28.907194, 33.205910, 61.407513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720409, 33.362572, 61.727165>,  <29.149807, 33.815044, 61.652653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720409, 33.362572, 61.727165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467186, 33.224049, 61.450237>,  <29.315252, 33.140934, 61.284081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467186, 33.224049, 61.450237>,  <29.720409, 33.362572, 61.727165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467186, 33.224049, 61.450237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774069, -0.291632, -0.561932,
		-0.007299, -0.891639, 0.452689,
		-0.633058, -0.346311, -0.692319,
		29.277267, 33.120155, 61.242542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109074, 32.860920, 61.479050>,  <29.720409, 33.362572, 61.727165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109074, 32.860920, 61.479050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834398, 32.888969, 61.189625>,  <29.669594, 32.905800, 61.015968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834398, 32.888969, 61.189625>,  <30.109074, 32.860920, 61.479050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834398, 32.888969, 61.189625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714425, -0.118892, -0.689538,
		-0.134378, -0.990428, 0.031545,
		-0.686688, 0.070122, -0.723562,
		29.628391, 32.910004, 60.972557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336609, 32.371403, 60.984341>,  <30.109074, 32.860920, 61.479050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336609, 32.371403, 60.984341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088806, 32.619835, 60.792309>,  <29.940125, 32.768894, 60.677090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088806, 32.619835, 60.792309>,  <30.336609, 32.371403, 60.984341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088806, 32.619835, 60.792309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353583, -0.325239, -0.877040,
		-0.700850, -0.713079, -0.018115,
		-0.619507, 0.621078, -0.480076,
		29.902954, 32.806160, 60.648285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124554, 31.977158, 60.444645>,  <30.336609, 32.371403, 60.984341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124554, 31.977158, 60.444645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025785, 32.351704, 60.344845>,  <29.966524, 32.576431, 60.284966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025785, 32.351704, 60.344845>,  <30.124554, 31.977158, 60.444645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025785, 32.351704, 60.344845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176073, -0.209831, -0.961753,
		-0.952906, -0.281405, -0.113058,
		-0.246919, 0.936367, -0.249497,
		29.951710, 32.632614, 60.269997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652552, 31.971926, 59.859348>,  <30.124554, 31.977158, 60.444645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652552, 31.971926, 59.859348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823460, 32.333546, 59.854679>,  <29.926004, 32.550518, 59.851879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823460, 32.333546, 59.854679>,  <29.652552, 31.971926, 59.859348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823460, 32.333546, 59.854679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323153, -0.164759, -0.931894,
		-0.844401, 0.394399, -0.362542,
		0.427270, 0.904049, -0.011671,
		29.951641, 32.604759, 59.851177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320240, 32.490494, 59.377861>,  <29.652552, 31.971926, 59.859348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320240, 32.490494, 59.377861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708714, 32.574890, 59.422188>,  <29.941797, 32.625526, 59.448784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708714, 32.574890, 59.422188>,  <29.320240, 32.490494, 59.377861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708714, 32.574890, 59.422188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138851, -0.123022, -0.982642,
		-0.193696, 0.969716, -0.148774,
		0.971186, 0.210991, 0.110817,
		30.000069, 32.638187, 59.455433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410398, 32.773952, 58.735821>,  <29.320240, 32.490494, 59.377861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410398, 32.773952, 58.735821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772306, 32.707382, 58.892635>,  <29.989452, 32.667439, 58.986725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772306, 32.707382, 58.892635>,  <29.410398, 32.773952, 58.735821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772306, 32.707382, 58.892635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349738, -0.234973, -0.906902,
		0.243048, 0.957649, -0.154391,
		0.904771, -0.166424, 0.392036,
		30.043737, 32.657455, 59.010246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981497, 33.249599, 58.358002>,  <29.410398, 32.773952, 58.735821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981497, 33.249599, 58.358002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153385, 32.935764, 58.536777>,  <30.256517, 32.747463, 58.644043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153385, 32.935764, 58.536777>,  <29.981497, 33.249599, 58.358002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153385, 32.935764, 58.536777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551362, -0.163989, -0.817990,
		0.715081, 0.597934, 0.362124,
		0.429720, -0.784590, 0.446944,
		30.282301, 32.700386, 58.670860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612846, 33.224895, 58.082882>,  <29.981497, 33.249599, 58.358002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612846, 33.224895, 58.082882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665213, 32.867592, 58.254906>,  <30.696632, 32.653210, 58.358120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665213, 32.867592, 58.254906>,  <30.612846, 33.224895, 58.082882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665213, 32.867592, 58.254906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611828, -0.268538, -0.744012,
		0.780082, 0.360524, 0.511365,
		0.130914, -0.893258, 0.430060,
		30.704487, 32.599613, 58.383923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359680, 33.079224, 58.128002>,  <30.612846, 33.224895, 58.082882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359680, 33.079224, 58.128002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155506, 32.735474, 58.115746>,  <31.033003, 32.529224, 58.108391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155506, 32.735474, 58.115746>,  <31.359680, 33.079224, 58.128002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155506, 32.735474, 58.115746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606204, -0.334330, -0.721623,
		0.609898, -0.386916, 0.691607,
		-0.510433, -0.859371, -0.030643,
		31.002377, 32.477661, 58.106552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884573, 32.506050, 58.019936>,  <31.359680, 33.079224, 58.128002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884573, 32.506050, 58.019936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534592, 32.341446, 57.917858>,  <31.324604, 32.242683, 57.856613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534592, 32.341446, 57.917858>,  <31.884573, 32.506050, 58.019936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534592, 32.341446, 57.917858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430604, -0.420228, -0.798742,
		0.221451, -0.808746, 0.544876,
		-0.874951, -0.411508, -0.255190,
		31.272106, 32.217995, 57.841301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978989, 31.794451, 57.844719>,  <31.884573, 32.506050, 58.019936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978989, 31.794451, 57.844719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621851, 31.830990, 57.668316>,  <31.407568, 31.852913, 57.562473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621851, 31.830990, 57.668316>,  <31.978989, 31.794451, 57.844719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621851, 31.830990, 57.668316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356577, -0.454762, -0.816115,
		-0.275103, -0.885916, 0.373459,
		-0.892845, 0.091349, -0.441004,
		31.353998, 31.858395, 57.536015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891739, 31.137140, 57.527637>,  <31.978989, 31.794451, 57.844719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891739, 31.137140, 57.527637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651754, 31.392973, 57.335396>,  <31.507765, 31.546473, 57.220051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651754, 31.392973, 57.335396>,  <31.891739, 31.137140, 57.527637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651754, 31.392973, 57.335396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360322, -0.320337, -0.876100,
		-0.714295, -0.698798, -0.038267,
		-0.599959, 0.639582, -0.480608,
		31.471767, 31.584848, 57.191212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710728, 30.735165, 56.960300>,  <31.891739, 31.137140, 57.527637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710728, 30.735165, 56.960300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643999, 31.117529, 56.863628>,  <31.603962, 31.346947, 56.805626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643999, 31.117529, 56.863628>,  <31.710728, 30.735165, 56.960300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643999, 31.117529, 56.863628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511448, -0.125667, -0.850076,
		-0.842966, -0.265416, -0.467934,
		-0.166820, 0.955909, -0.241680,
		31.593952, 31.404301, 56.791122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402750, 30.685358, 56.282238>,  <31.710728, 30.735165, 56.960300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402750, 30.685358, 56.282238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603739, 31.023865, 56.353069>,  <31.724333, 31.226969, 56.395569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603739, 31.023865, 56.353069>,  <31.402750, 30.685358, 56.282238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603739, 31.023865, 56.353069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415087, -0.056456, -0.908028,
		-0.758435, 0.529762, -0.379641,
		0.502472, 0.846265, 0.177079,
		31.754480, 31.277744, 56.406193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.122597, 34.489384, 53.107121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.301823, 34.645885, 52.785587>,  <47.409359, 34.739788, 52.592667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.301823, 34.645885, 52.785587>,  <47.122597, 34.489384, 53.107121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.301823, 34.645885, 52.785587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885099, 0.067586, -0.460469,
		-0.125834, 0.917796, 0.376585,
		0.448068, 0.391258, -0.803836,
		47.436241, 34.763264, 52.544437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771832, 35.043800, 53.097984>,  <47.122597, 34.489384, 53.107121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771832, 35.043800, 53.097984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.920921, 34.976749, 52.732914>,  <47.010376, 34.936520, 52.513870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.920921, 34.976749, 52.732914>,  <46.771832, 35.043800, 53.097984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920921, 34.976749, 52.732914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907961, 0.137129, -0.395984,
		0.191532, 0.976267, -0.101087,
		0.372724, -0.167627, -0.912676,
		47.032738, 34.926460, 52.459110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.416039, 35.473095, 52.629318>,  <46.771832, 35.043800, 53.097984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.416039, 35.473095, 52.629318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.572304, 35.211498, 52.370186>,  <46.666065, 35.054543, 52.214706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.572304, 35.211498, 52.370186>,  <46.416039, 35.473095, 52.629318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.572304, 35.211498, 52.370186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834177, 0.046084, -0.549568,
		0.389264, 0.755100, -0.527538,
		0.390668, -0.653987, -0.647826,
		46.689503, 35.015301, 52.175838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490822, 35.792828, 52.006542>,  <46.416039, 35.473095, 52.629318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490822, 35.792828, 52.006542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.482750, 35.407505, 51.899490>,  <46.477905, 35.176311, 51.835258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.482750, 35.407505, 51.899490>,  <46.490822, 35.792828, 52.006542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482750, 35.407505, 51.899490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750335, 0.191504, -0.632711,
		0.660750, 0.188045, -0.726670,
		-0.020182, -0.963310, -0.267634,
		46.476696, 35.118511, 51.819199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.393032, 35.634064, 51.238209>,  <46.490822, 35.792828, 52.006542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.393032, 35.634064, 51.238209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.267849, 35.284225, 51.386337>,  <46.192738, 35.074322, 51.475216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.267849, 35.284225, 51.386337>,  <46.393032, 35.634064, 51.238209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.267849, 35.284225, 51.386337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871768, 0.109776, -0.477461,
		0.376933, -0.472262, -0.796800,
		-0.312956, -0.874596, 0.370325,
		46.173962, 35.021847, 51.497437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971348, 35.332539, 50.659496>,  <46.393032, 35.634064, 51.238209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971348, 35.332539, 50.659496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.856052, 35.141243, 50.991329>,  <45.786877, 35.026466, 51.190430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.856052, 35.141243, 50.991329>,  <45.971348, 35.332539, 50.659496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856052, 35.141243, 50.991329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925064, -0.084708, -0.370245,
		0.247337, -0.874137, -0.417982,
		-0.288239, -0.478235, 0.829584,
		45.769581, 34.997772, 51.240204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566181, 34.800053, 50.407490>,  <45.971348, 35.332539, 50.659496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566181, 34.800053, 50.407490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.480305, 34.836346, 50.796474>,  <45.428780, 34.858124, 51.029865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.480305, 34.836346, 50.796474>,  <45.566181, 34.800053, 50.407490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480305, 34.836346, 50.796474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970696, -0.129894, -0.202181,
		0.107971, -0.987368, 0.115963,
		-0.214690, 0.090735, 0.972458,
		45.415897, 34.863567, 51.088211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106316, 34.217442, 50.438431>,  <45.566181, 34.800053, 50.407490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106316, 34.217442, 50.438431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.031151, 34.475712, 50.734482>,  <44.986053, 34.630672, 50.912113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.031151, 34.475712, 50.734482>,  <45.106316, 34.217442, 50.438431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031151, 34.475712, 50.734482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959702, 0.039612, -0.278214,
		-0.208954, -0.762583, 0.612213,
		-0.187910, 0.645676, 0.740130,
		44.974777, 34.669415, 50.956520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596321, 33.923203, 50.811443>,  <45.106316, 34.217442, 50.438431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596321, 33.923203, 50.811443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.569237, 34.312908, 50.897434>,  <44.552986, 34.546734, 50.949028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.569237, 34.312908, 50.897434>,  <44.596321, 33.923203, 50.811443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569237, 34.312908, 50.897434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995101, -0.050385, -0.085064,
		-0.072043, -0.219687, 0.972907,
		-0.067707, 0.974268, 0.214981,
		44.548923, 34.605190, 50.961929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050400, 34.004944, 51.257473>,  <44.596321, 33.923203, 50.811443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050400, 34.004944, 51.257473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.101299, 34.363430, 51.087486>,  <44.131840, 34.578522, 50.985493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.101299, 34.363430, 51.087486>,  <44.050400, 34.004944, 51.257473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101299, 34.363430, 51.087486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986878, 0.071465, -0.144791,
		-0.099394, 0.437816, 0.893553,
		0.127249, 0.896220, -0.424968,
		44.139473, 34.632298, 50.959995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597923, 34.504311, 51.664803>,  <44.050400, 34.004944, 51.257473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597923, 34.504311, 51.664803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.671894, 34.640778, 51.296150>,  <43.716278, 34.722660, 51.074959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.671894, 34.640778, 51.296150>,  <43.597923, 34.504311, 51.664803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671894, 34.640778, 51.296150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966198, 0.234519, -0.107057,
		0.179615, 0.910276, 0.373008,
		0.184929, 0.341171, -0.921631,
		43.727371, 34.743130, 51.019661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156551, 35.015064, 51.630981>,  <43.597923, 34.504311, 51.664803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156551, 35.015064, 51.630981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.252010, 34.986320, 51.243603>,  <43.309284, 34.969074, 51.011177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.252010, 34.986320, 51.243603>,  <43.156551, 35.015064, 51.630981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252010, 34.986320, 51.243603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881242, 0.402961, -0.247053,
		0.407998, 0.912392, 0.032841,
		0.238643, -0.071856, -0.968445,
		43.323605, 34.964764, 50.953068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732773, 35.488369, 51.380047>,  <43.156551, 35.015064, 51.630981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732773, 35.488369, 51.380047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.848553, 35.295757, 51.049145>,  <42.918022, 35.180191, 50.850605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.848553, 35.295757, 51.049145>,  <42.732773, 35.488369, 51.380047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848553, 35.295757, 51.049145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883825, 0.197388, -0.424137,
		0.367523, 0.853915, -0.368451,
		0.289449, -0.481527, -0.827255,
		42.935387, 35.151299, 50.800968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609646, 35.951893, 50.874218>,  <42.732773, 35.488369, 51.380047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609646, 35.951893, 50.874218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.578743, 35.585014, 50.717865>,  <42.560200, 35.364887, 50.624054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.578743, 35.585014, 50.717865>,  <42.609646, 35.951893, 50.874218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578743, 35.585014, 50.717865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944563, 0.192818, -0.265748,
		0.319111, 0.348678, -0.881244,
		-0.077260, -0.917194, -0.390879,
		42.555565, 35.309856, 50.600601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331505, 36.037941, 50.178478>,  <42.609646, 35.951893, 50.874218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331505, 36.037941, 50.178478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.258286, 35.652760, 50.257687>,  <42.214355, 35.421650, 50.305210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.258286, 35.652760, 50.257687>,  <42.331505, 36.037941, 50.178478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258286, 35.652760, 50.257687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944240, 0.116134, -0.308097,
		0.273687, -0.243374, -0.930519,
		-0.183048, -0.962955, 0.198019,
		42.203373, 35.363873, 50.317093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036785, 35.691067, 49.484013>,  <42.331505, 36.037941, 50.178478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036785, 35.691067, 49.484013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.936722, 35.440491, 49.779308>,  <41.876682, 35.290146, 49.956486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.936722, 35.440491, 49.779308>,  <42.036785, 35.691067, 49.484013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936722, 35.440491, 49.779308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942468, -0.017080, -0.333860,
		0.221753, -0.779282, -0.586128,
		-0.250160, -0.626441, 0.738235,
		41.861675, 35.252560, 50.000778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718597, 35.186474, 49.164635>,  <42.036785, 35.691067, 49.484013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718597, 35.186474, 49.164635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.577396, 35.158436, 49.537834>,  <41.492676, 35.141613, 49.761753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.577396, 35.158436, 49.537834>,  <41.718597, 35.186474, 49.164635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577396, 35.158436, 49.537834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927319, -0.106360, -0.358842,
		0.124388, -0.991854, -0.027458,
		-0.352998, -0.070098, 0.932995,
		41.471497, 35.137409, 49.817734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290691, 34.624626, 49.102909>,  <41.718597, 35.186474, 49.164635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290691, 34.624626, 49.102909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.180641, 34.797562, 49.446396>,  <41.114613, 34.901325, 49.652489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.180641, 34.797562, 49.446396>,  <41.290691, 34.624626, 49.102909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180641, 34.797562, 49.446396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954959, -0.019601, -0.296088,
		-0.111181, -0.901494, 0.418266,
		-0.275120, 0.432347, 0.858711,
		41.098106, 34.927265, 49.704010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816921, 34.200035, 49.553352>,  <41.290691, 34.624626, 49.102909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816921, 34.200035, 49.553352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.759239, 34.587955, 49.632027>,  <40.724628, 34.820709, 49.679230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.759239, 34.587955, 49.632027>,  <40.816921, 34.200035, 49.553352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759239, 34.587955, 49.632027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931670, -0.066083, -0.357244,
		-0.333459, -0.234763, 0.913067,
		-0.144206, 0.969804, 0.196686,
		40.715977, 34.878895, 49.691032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152225, 34.215420, 49.682396>,  <40.816921, 34.200035, 49.553352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152225, 34.215420, 49.682396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.182056, 34.614304, 49.683365>,  <40.199955, 34.853634, 49.683945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.182056, 34.614304, 49.683365>,  <40.152225, 34.215420, 49.682396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182056, 34.614304, 49.683365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953136, 0.071996, -0.293852,
		-0.293207, 0.019606, 0.955848,
		0.074579, 0.997212, 0.002422,
		40.204430, 34.913467, 49.684093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542156, 34.455418, 49.880672>,  <40.152225, 34.215420, 49.682396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542156, 34.455418, 49.880672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.691124, 34.760525, 49.669205>,  <39.780506, 34.943588, 49.542324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.691124, 34.760525, 49.669205>,  <39.542156, 34.455418, 49.880672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691124, 34.760525, 49.669205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857940, 0.065740, -0.509526,
		-0.353896, 0.643322, 0.678892,
		0.372420, 0.762768, -0.528667,
		39.802849, 34.989353, 49.510605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023842, 34.889324, 49.851868>,  <39.542156, 34.455418, 49.880672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023842, 34.889324, 49.851868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.249340, 35.001839, 49.541237>,  <39.384640, 35.069347, 49.354858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.249340, 35.001839, 49.541237>,  <39.023842, 34.889324, 49.851868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249340, 35.001839, 49.541237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825757, 0.212149, -0.522607,
		0.017750, 0.935881, 0.351870,
		0.563747, 0.281283, -0.776576,
		39.418465, 35.086224, 49.308266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593266, 35.511112, 49.614086>,  <39.023842, 34.889324, 49.851868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593266, 35.511112, 49.614086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411995, 35.170197, 49.718582>,  <38.303234, 34.965649, 49.781281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411995, 35.170197, 49.718582>,  <38.593266, 35.511112, 49.614086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411995, 35.170197, 49.718582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704911, 0.163241, -0.690256,
		0.545650, -0.496953, -0.674762,
		-0.453173, -0.852286, 0.261235,
		38.276043, 34.914513, 49.796951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598721, 34.990086, 49.038269>,  <38.593266, 35.511112, 49.614086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598721, 34.990086, 49.038269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288853, 35.009289, 49.290485>,  <38.102932, 35.020809, 49.441814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288853, 35.009289, 49.290485>,  <38.598721, 34.990086, 49.038269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288853, 35.009289, 49.290485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627373, 0.066748, -0.775853,
		-0.079337, -0.996614, -0.021587,
		-0.774666, 0.048011, 0.630545,
		38.056454, 35.023693, 49.479649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882267, 34.733227, 49.072124>,  <38.598721, 34.990086, 49.038269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882267, 34.733227, 49.072124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.958870, 34.341953, 49.104340>,  <38.004833, 34.107189, 49.123669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.958870, 34.341953, 49.104340>,  <37.882267, 34.733227, 49.072124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958870, 34.341953, 49.104340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594447, 0.050308, -0.802559,
		0.780997, 0.201572, 0.591112,
		0.191511, -0.978181, 0.080533,
		38.016323, 34.048500, 49.128498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999489, 34.638828, 48.285290>,  <37.882267, 34.733227, 49.072124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999489, 34.638828, 48.285290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033333, 34.397068, 47.968418>,  <38.053638, 34.252010, 47.778297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033333, 34.397068, 47.968418>,  <37.999489, 34.638828, 48.285290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033333, 34.397068, 47.968418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891120, 0.309806, -0.331549,
		0.445809, 0.733975, -0.512381,
		0.084610, -0.604401, -0.792175,
		38.058716, 34.215748, 47.730766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655636, 35.028194, 47.804691>,  <37.999489, 34.638828, 48.285290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655636, 35.028194, 47.804691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671352, 34.660480, 47.648041>,  <37.680782, 34.439854, 47.554050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671352, 34.660480, 47.648041>,  <37.655636, 35.028194, 47.804691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671352, 34.660480, 47.648041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957611, 0.077293, -0.277504,
		0.285375, 0.385927, -0.877281,
		0.039289, -0.919286, -0.391625,
		37.683140, 34.384693, 47.530552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246017, 35.096603, 47.159039>,  <37.655636, 35.028194, 47.804691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246017, 35.096603, 47.159039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.276356, 34.699562, 47.196957>,  <37.294559, 34.461338, 47.219707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.276356, 34.699562, 47.196957>,  <37.246017, 35.096603, 47.159039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276356, 34.699562, 47.196957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912140, -0.107469, -0.395538,
		0.402800, -0.056465, -0.913545,
		0.075844, -0.992604, 0.094793,
		37.299110, 34.401779, 47.225395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069168, 34.788887, 46.463688>,  <37.246017, 35.096603, 47.159039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069168, 34.788887, 46.463688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003094, 34.525154, 46.757080>,  <36.963451, 34.366913, 46.933117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003094, 34.525154, 46.757080>,  <37.069168, 34.788887, 46.463688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003094, 34.525154, 46.757080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899405, -0.204466, -0.386347,
		0.404703, -0.723515, -0.559233,
		-0.165183, -0.659333, 0.733481,
		36.953537, 34.327354, 46.977123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775879, 34.221886, 46.123932>,  <37.069168, 34.788887, 46.463688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775879, 34.221886, 46.123932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688694, 34.162888, 46.509830>,  <36.636383, 34.127487, 46.741371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688694, 34.162888, 46.509830>,  <36.775879, 34.221886, 46.123932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688694, 34.162888, 46.509830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910502, -0.325183, -0.255427,
		0.351393, -0.934078, -0.063417,
		-0.217966, -0.147497, 0.964746,
		36.623302, 34.118637, 46.799255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503220, 33.532951, 46.194782>,  <36.775879, 34.221886, 46.123932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503220, 33.532951, 46.194782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376942, 33.738506, 46.513847>,  <36.301174, 33.861839, 46.705284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376942, 33.738506, 46.513847>,  <36.503220, 33.532951, 46.194782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376942, 33.738506, 46.513847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945920, -0.236573, -0.221966,
		0.074639, -0.824594, 0.560779,
		-0.315696, 0.513885, 0.797658,
		36.282234, 33.892673, 46.753143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031384, 33.159225, 46.588303>,  <36.503220, 33.532951, 46.194782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031384, 33.159225, 46.588303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938091, 33.534096, 46.692078>,  <35.882114, 33.759018, 46.754341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938091, 33.534096, 46.692078>,  <36.031384, 33.159225, 46.588303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938091, 33.534096, 46.692078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968176, -0.248699, 0.027992,
		0.090755, -0.244653, 0.965354,
		-0.233234, 0.937173, 0.259438,
		35.868122, 33.815247, 46.769909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470181, 33.094707, 47.012241>,  <36.031384, 33.159225, 46.588303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470181, 33.094707, 47.012241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.454517, 33.484493, 46.923809>,  <35.445118, 33.718365, 46.870750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.454517, 33.484493, 46.923809>,  <35.470181, 33.094707, 47.012241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454517, 33.484493, 46.923809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998777, -0.044855, -0.020796,
		-0.030182, 0.219998, 0.975033,
		-0.039160, 0.974468, -0.221083,
		35.442768, 33.776833, 46.857483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836803, 33.336258, 47.321911>,  <35.470181, 33.094707, 47.012241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836803, 33.336258, 47.321911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920742, 33.609089, 47.041702>,  <34.971107, 33.772789, 46.873577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920742, 33.609089, 47.041702>,  <34.836803, 33.336258, 47.321911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920742, 33.609089, 47.041702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974293, 0.085825, -0.208294,
		-0.081950, 0.726226, 0.682554,
		0.209849, 0.682078, -0.700524,
		34.983696, 33.813713, 46.831547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472630, 33.995712, 47.456596>,  <34.836803, 33.336258, 47.321911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472630, 33.995712, 47.456596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.517384, 33.995621, 47.059109>,  <34.544235, 33.995567, 46.820614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.517384, 33.995621, 47.059109>,  <34.472630, 33.995712, 47.456596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517384, 33.995621, 47.059109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978785, 0.172705, -0.110241,
		0.171646, 0.984974, 0.019101,
		0.111883, -0.000226, -0.993721,
		34.550949, 33.995552, 46.760994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.968349, 30.485695, 50.828880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.219627, 30.701244, 51.053375>,  <30.370394, 30.830574, 51.188072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.219627, 30.701244, 51.053375>,  <29.968349, 30.485695, 50.828880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219627, 30.701244, 51.053375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324226, 0.474418, -0.818416,
		-0.707284, 0.696092, 0.123310,
		0.628194, 0.538872, 0.561239,
		30.408085, 30.862906, 51.221748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030489, 31.037497, 50.505974>,  <29.968349, 30.485695, 50.828880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030489, 31.037497, 50.505974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.340374, 31.123957, 50.743664>,  <30.526304, 31.175833, 50.886276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.340374, 31.123957, 50.743664>,  <30.030489, 31.037497, 50.505974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340374, 31.123957, 50.743664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431967, 0.505363, -0.747003,
		-0.461762, 0.835397, 0.298141,
		0.774713, 0.216150, 0.594221,
		30.572788, 31.188803, 50.921928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169355, 31.713148, 50.456074>,  <30.030489, 31.037497, 50.505974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169355, 31.713148, 50.456074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.519260, 31.542034, 50.547104>,  <30.729202, 31.439365, 50.601723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.519260, 31.542034, 50.547104>,  <30.169355, 31.713148, 50.456074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519260, 31.542034, 50.547104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460151, 0.586220, -0.666789,
		0.151833, 0.688001, 0.709649,
		0.874761, -0.427786, 0.227577,
		30.781689, 31.413698, 50.615376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505470, 32.230495, 50.514206>,  <30.169355, 31.713148, 50.456074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505470, 32.230495, 50.514206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.759111, 31.936192, 50.419064>,  <30.911297, 31.759609, 50.361980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.759111, 31.936192, 50.419064>,  <30.505470, 32.230495, 50.514206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759111, 31.936192, 50.419064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469160, 0.610595, -0.638014,
		0.614655, 0.292977, 0.732369,
		0.634105, -0.735757, -0.237852,
		30.949343, 31.715464, 50.347710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876276, 32.518776, 50.034004>,  <30.505470, 32.230495, 50.514206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876276, 32.518776, 50.034004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.038548, 32.153179, 50.031345>,  <31.135910, 31.933821, 50.029751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.038548, 32.153179, 50.031345>,  <30.876276, 32.518776, 50.034004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038548, 32.153179, 50.031345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526668, 0.239698, -0.815577,
		0.747024, 0.327359, 0.578611,
		0.405679, -0.913992, -0.006651,
		31.160252, 31.878983, 50.029350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585947, 32.653343, 49.989697>,  <30.876276, 32.518776, 50.034004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585947, 32.653343, 49.989697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.563860, 32.283478, 49.838997>,  <31.550608, 32.061558, 49.748577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.563860, 32.283478, 49.838997>,  <31.585947, 32.653343, 49.989697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563860, 32.283478, 49.838997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376606, 0.330171, -0.865538,
		0.924727, -0.189680, 0.330003,
		-0.055217, -0.924667, -0.376752,
		31.547295, 32.006077, 49.725971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181225, 32.667885, 49.614689>,  <31.585947, 32.653343, 49.989697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181225, 32.667885, 49.614689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966801, 32.348320, 49.505596>,  <31.838146, 32.156582, 49.440140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966801, 32.348320, 49.505596>,  <32.181225, 32.667885, 49.614689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966801, 32.348320, 49.505596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294116, 0.126084, -0.947417,
		0.791290, -0.588084, 0.167385,
		-0.536056, -0.798912, -0.272734,
		31.805984, 32.108646, 49.423775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639481, 32.178482, 49.254368>,  <32.181225, 32.667885, 49.614689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639481, 32.178482, 49.254368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.260380, 32.119328, 49.141304>,  <32.032921, 32.083836, 49.073467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.260380, 32.119328, 49.141304>,  <32.639481, 32.178482, 49.254368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260380, 32.119328, 49.141304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257883, 0.166393, -0.951740,
		0.187787, -0.974906, -0.119560,
		-0.947751, -0.147892, -0.282659,
		31.976053, 32.074963, 49.056507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722698, 31.867512, 48.603363>,  <32.639481, 32.178482, 49.254368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722698, 31.867512, 48.603363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344559, 31.997932, 48.604527>,  <32.117676, 32.076183, 48.605225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344559, 31.997932, 48.604527>,  <32.722698, 31.867512, 48.603363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344559, 31.997932, 48.604527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106532, 0.317294, -0.942324,
		-0.308171, -0.890514, -0.334688,
		-0.945348, 0.326052, 0.002913,
		32.060955, 32.095749, 48.605400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439556, 31.641758, 47.908398>,  <32.722698, 31.867512, 48.603363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439556, 31.641758, 47.908398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.208691, 31.934614, 48.053093>,  <32.070171, 32.110329, 48.139908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.208691, 31.934614, 48.053093>,  <32.439556, 31.641758, 47.908398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208691, 31.934614, 48.053093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050526, 0.474128, -0.879005,
		-0.815065, -0.489052, -0.310641,
		-0.577162, 0.732141, 0.361735,
		32.035542, 32.154255, 48.161613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862970, 31.662226, 47.514759>,  <32.439556, 31.641758, 47.908398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862970, 31.662226, 47.514759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.855431, 32.034534, 47.660805>,  <31.850906, 32.257919, 47.748432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.855431, 32.034534, 47.660805>,  <31.862970, 31.662226, 47.514759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855431, 32.034534, 47.660805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121458, 0.360343, -0.924879,
		-0.992418, -0.061778, 0.106257,
		-0.018848, 0.930772, 0.365114,
		31.849775, 32.313766, 47.770340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506861, 32.043098, 47.018311>,  <31.862970, 31.662226, 47.514759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506861, 32.043098, 47.018311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.670734, 32.335659, 47.236378>,  <31.769058, 32.511196, 47.367218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.670734, 32.335659, 47.236378>,  <31.506861, 32.043098, 47.018311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670734, 32.335659, 47.236378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318823, 0.445134, -0.836784,
		-0.854700, 0.516628, -0.050825,
		0.409682, 0.731404, 0.545169,
		31.793638, 32.555080, 47.399929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195274, 32.764626, 46.799469>,  <31.506861, 32.043098, 47.018311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195274, 32.764626, 46.799469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.575890, 32.762573, 46.922462>,  <31.804258, 32.761341, 46.996258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.575890, 32.762573, 46.922462>,  <31.195274, 32.764626, 46.799469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575890, 32.762573, 46.922462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277540, 0.444971, -0.851453,
		-0.132449, 0.895530, 0.424833,
		0.951540, -0.005134, 0.307481,
		31.861351, 32.761032, 47.014706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462706, 33.386433, 46.816078>,  <31.195274, 32.764626, 46.799469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462706, 33.386433, 46.816078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758438, 33.122597, 46.761913>,  <31.935877, 32.964294, 46.729416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758438, 33.122597, 46.761913>,  <31.462706, 33.386433, 46.816078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758438, 33.122597, 46.761913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367781, 0.564029, -0.739330,
		0.564029, 0.496806, 0.659587,
		0.739330, -0.659587, -0.135413,
		31.980236, 32.924721, 46.721291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050581, 33.941154, 47.337872>,  <31.462706, 33.386433, 46.816078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050581, 33.941154, 47.337872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.036749, 34.242748, 47.075478>,  <31.028450, 34.423706, 46.918041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.036749, 34.242748, 47.075478>,  <31.050581, 33.941154, 47.337872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036749, 34.242748, 47.075478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290612, 0.620424, 0.728436,
		0.956216, 0.215826, 0.197662,
		-0.034582, 0.753985, -0.655981,
		31.026375, 34.468945, 46.878685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386150, 34.517212, 47.656708>,  <31.050581, 33.941154, 47.337872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386150, 34.517212, 47.656708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.121216, 34.654572, 47.390358>,  <30.962255, 34.736988, 47.230549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.121216, 34.654572, 47.390358>,  <31.386150, 34.517212, 47.656708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121216, 34.654572, 47.390358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329022, 0.665164, 0.670299,
		0.673095, 0.663051, -0.327577,
		-0.662335, 0.343395, -0.665877,
		30.922516, 34.757591, 47.190594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470366, 35.252213, 47.672318>,  <31.386150, 34.517212, 47.656708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470366, 35.252213, 47.672318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.128847, 35.218178, 47.466877>,  <30.923935, 35.197758, 47.343613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.128847, 35.218178, 47.466877>,  <31.470366, 35.252213, 47.672318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128847, 35.218178, 47.466877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376499, 0.782277, 0.496277,
		0.359551, 0.617091, -0.699944,
		-0.853798, -0.085091, -0.513603,
		30.872707, 35.192650, 47.312798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194057, 35.926060, 47.546852>,  <31.470366, 35.252213, 47.672318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194057, 35.926060, 47.546852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.870047, 35.692368, 47.526733>,  <30.675640, 35.552155, 47.514664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.870047, 35.692368, 47.526733>,  <31.194057, 35.926060, 47.546852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870047, 35.692368, 47.526733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486772, 0.622114, 0.613211,
		-0.326964, 0.521202, -0.788316,
		-0.810029, -0.584228, -0.050298,
		30.627037, 35.517097, 47.511642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660837, 36.315914, 47.333157>,  <31.194057, 35.926060, 47.546852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660837, 36.315914, 47.333157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.480675, 35.997894, 47.495651>,  <30.372578, 35.807083, 47.593147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.480675, 35.997894, 47.495651>,  <30.660837, 36.315914, 47.333157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480675, 35.997894, 47.495651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502054, 0.601790, 0.621120,
		-0.738292, 0.075803, -0.670208,
		-0.450408, -0.795049, 0.406239,
		30.345552, 35.759380, 47.617523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942564, 36.559059, 47.484634>,  <30.660837, 36.315914, 47.333157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942564, 36.559059, 47.484634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016842, 36.232956, 47.704044>,  <30.061409, 36.037296, 47.835690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016842, 36.232956, 47.704044>,  <29.942564, 36.559059, 47.484634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016842, 36.232956, 47.704044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451347, 0.425089, 0.784593,
		-0.872813, -0.393270, -0.289025,
		0.185696, -0.815253, 0.548524,
		30.072550, 35.988380, 47.868603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308573, 36.297543, 47.724731>,  <29.942564, 36.559059, 47.484634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308573, 36.297543, 47.724731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.616268, 36.226070, 47.970119>,  <29.800886, 36.183189, 48.117352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.616268, 36.226070, 47.970119>,  <29.308573, 36.297543, 47.724731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616268, 36.226070, 47.970119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467001, 0.498068, 0.730642,
		-0.436101, -0.848529, 0.299690,
		0.769238, -0.178678, 0.613472,
		29.847040, 36.172466, 48.154160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914751, 36.298908, 48.332233>,  <29.308573, 36.297543, 47.724731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914751, 36.298908, 48.332233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.299446, 36.287346, 48.441208>,  <29.530264, 36.280407, 48.506592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.299446, 36.287346, 48.441208>,  <28.914751, 36.298908, 48.332233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299446, 36.287346, 48.441208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203605, 0.589948, 0.781349,
		-0.183311, -0.806924, 0.561490,
		0.961739, -0.028907, 0.272438,
		29.587967, 36.278675, 48.522938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792364, 36.288689, 49.010944>,  <28.914751, 36.298908, 48.332233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792364, 36.288689, 49.010944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.182405, 36.377239, 49.005806>,  <29.416430, 36.430370, 49.002724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.182405, 36.377239, 49.005806>,  <28.792364, 36.288689, 49.010944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182405, 36.377239, 49.005806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112864, 0.545333, 0.830587,
		0.190880, -0.808458, 0.556741,
		0.975103, 0.221379, -0.012847,
		29.474936, 36.443653, 49.001953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085793, 36.132492, 49.746307>,  <28.792364, 36.288689, 49.010944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085793, 36.132492, 49.746307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.353771, 36.378334, 49.579723>,  <29.514559, 36.525837, 49.479774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.353771, 36.378334, 49.579723>,  <29.085793, 36.132492, 49.746307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353771, 36.378334, 49.579723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115334, 0.467986, 0.876178,
		0.733398, -0.635022, 0.242640,
		0.669945, 0.614602, -0.416459,
		29.554754, 36.562714, 49.454784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727270, 36.103516, 50.188126>,  <29.085793, 36.132492, 49.746307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727270, 36.103516, 50.188126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.714163, 36.447491, 49.984386>,  <29.706299, 36.653877, 49.862144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.714163, 36.447491, 49.984386>,  <29.727270, 36.103516, 50.188126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714163, 36.447491, 49.984386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050916, 0.507521, 0.860134,
		0.998165, 0.054117, 0.027155,
		-0.032766, 0.859938, -0.509346,
		29.704332, 36.705471, 49.831581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128510, 36.593586, 50.566475>,  <29.727270, 36.103516, 50.188126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128510, 36.593586, 50.566475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.884851, 36.806473, 50.331295>,  <29.738657, 36.934204, 50.190186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.884851, 36.806473, 50.331295>,  <30.128510, 36.593586, 50.566475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884851, 36.806473, 50.331295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272504, 0.555770, 0.785405,
		0.744770, 0.638647, -0.193515,
		-0.609146, 0.532213, -0.587954,
		29.702108, 36.966137, 50.154907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337240, 37.268028, 50.756332>,  <30.128510, 36.593586, 50.566475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337240, 37.268028, 50.756332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970261, 37.246418, 50.598663>,  <29.750072, 37.233452, 50.504063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970261, 37.246418, 50.598663>,  <30.337240, 37.268028, 50.756332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970261, 37.246418, 50.598663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360941, 0.529801, 0.767484,
		0.167365, 0.846399, -0.505566,
		-0.917448, -0.054030, -0.394170,
		29.695026, 37.230209, 50.480412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979292, 37.935524, 50.887119>,  <30.337240, 37.268028, 50.756332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979292, 37.935524, 50.887119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.664356, 37.699352, 50.816147>,  <29.475395, 37.557648, 50.773563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.664356, 37.699352, 50.816147>,  <29.979292, 37.935524, 50.887119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664356, 37.699352, 50.816147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389661, 0.253543, 0.885370,
		-0.477764, 0.766227, -0.429694,
		-0.787340, -0.590433, -0.177435,
		29.428154, 37.522221, 50.762917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431597, 38.346397, 51.215176>,  <29.979292, 37.935524, 50.887119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431597, 38.346397, 51.215176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.614576, 38.220432, 51.547817>,  <30.724363, 38.144852, 51.747402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.614576, 38.220432, 51.547817>,  <30.431597, 38.346397, 51.215176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614576, 38.220432, 51.547817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884541, 0.065166, -0.461889,
		0.091263, 0.946880, 0.308365,
		0.457448, -0.314915, 0.831607,
		30.751810, 38.125957, 51.797298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982456, 38.779861, 51.102516>,  <30.431597, 38.346397, 51.215176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982456, 38.779861, 51.102516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.071260, 38.502831, 51.377048>,  <31.124542, 38.336613, 51.541767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.071260, 38.502831, 51.377048>,  <30.982456, 38.779861, 51.102516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071260, 38.502831, 51.377048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851955, -0.204561, -0.482004,
		0.474220, 0.691734, 0.544627,
		0.222009, -0.692574, 0.686333,
		31.137863, 38.295059, 51.582947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559523, 38.962540, 51.342873>,  <30.982456, 38.779861, 51.102516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559523, 38.962540, 51.342873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.563017, 38.570545, 51.422428>,  <31.565113, 38.335350, 51.470161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.563017, 38.570545, 51.422428>,  <31.559523, 38.962540, 51.342873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563017, 38.570545, 51.422428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844474, -0.099287, -0.526313,
		0.535525, 0.172556, 0.826703,
		0.008737, -0.979983, 0.198890,
		31.565638, 38.276550, 51.482094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203758, 38.905090, 51.493237>,  <31.559523, 38.962540, 51.342873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203758, 38.905090, 51.493237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089622, 38.527191, 51.428696>,  <32.021141, 38.300453, 51.389969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089622, 38.527191, 51.428696>,  <32.203758, 38.905090, 51.493237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089622, 38.527191, 51.428696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846348, -0.169375, -0.504982,
		0.449750, -0.280656, 0.847914,
		-0.285341, -0.944746, -0.161356,
		32.004021, 38.243767, 51.380287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774704, 38.528107, 51.714390>,  <32.203758, 38.905090, 51.493237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774704, 38.528107, 51.714390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561752, 38.310917, 51.454620>,  <32.433979, 38.180603, 51.298759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561752, 38.310917, 51.454620>,  <32.774704, 38.528107, 51.714390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561752, 38.310917, 51.454620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833130, -0.200256, -0.515549,
		0.149880, -0.815522, 0.558981,
		-0.532382, -0.542975, -0.649422,
		32.402039, 38.148026, 51.259792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197308, 37.918789, 51.503677>,  <32.774704, 38.528107, 51.714390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197308, 37.918789, 51.503677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917728, 37.943737, 51.218700>,  <32.749981, 37.958706, 51.047714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917728, 37.943737, 51.218700>,  <33.197308, 37.918789, 51.503677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917728, 37.943737, 51.218700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678939, -0.255183, -0.688421,
		-0.224741, -0.964879, 0.136015,
		-0.698952, 0.062371, -0.712444,
		32.708042, 37.962448, 51.004967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380405, 37.296688, 51.053051>,  <33.197308, 37.918789, 51.503677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380405, 37.296688, 51.053051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177773, 37.567532, 50.839550>,  <33.056190, 37.730038, 50.711449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177773, 37.567532, 50.839550>,  <33.380405, 37.296688, 51.053051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177773, 37.567532, 50.839550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638504, -0.121378, -0.759987,
		-0.579383, -0.725799, -0.370851,
		-0.506584, 0.677114, -0.533750,
		33.025799, 37.770664, 50.679424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434120, 37.040295, 50.463802>,  <33.380405, 37.296688, 51.053051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434120, 37.040295, 50.463802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289703, 37.395466, 50.349796>,  <33.203053, 37.608570, 50.281395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289703, 37.395466, 50.349796>,  <33.434120, 37.040295, 50.463802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289703, 37.395466, 50.349796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559185, -0.038452, -0.828151,
		-0.746298, -0.458371, -0.482634,
		-0.361042, 0.887929, -0.285011,
		33.181389, 37.661846, 50.264294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173889, 36.984016, 49.833771>,  <33.434120, 37.040295, 50.463802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173889, 36.984016, 49.833771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246078, 37.377041, 49.851677>,  <33.289391, 37.612854, 49.862423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246078, 37.377041, 49.851677>,  <33.173889, 36.984016, 49.833771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246078, 37.377041, 49.851677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465333, -0.045191, -0.883981,
		-0.866543, 0.180364, -0.465373,
		0.180469, 0.982561, 0.044770,
		33.300220, 37.671810, 49.865108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997025, 37.261124, 49.096058>,  <33.173889, 36.984016, 49.833771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997025, 37.261124, 49.096058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230347, 37.505630, 49.310013>,  <33.370342, 37.652332, 49.438385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230347, 37.505630, 49.310013>,  <32.997025, 37.261124, 49.096058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230347, 37.505630, 49.310013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581338, 0.145734, -0.800505,
		-0.567271, 0.777894, -0.270342,
		0.583310, 0.611263, 0.534890,
		33.405338, 37.689011, 49.470478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965149, 37.854687, 48.716770>,  <32.997025, 37.261124, 49.096058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965149, 37.854687, 48.716770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300980, 37.866070, 48.933769>,  <33.502480, 37.872902, 49.063969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300980, 37.866070, 48.933769>,  <32.965149, 37.854687, 48.716770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300980, 37.866070, 48.933769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534004, 0.140136, -0.833787,
		-0.099754, 0.989723, 0.102456,
		0.839577, 0.028461, 0.542495,
		33.552853, 37.874607, 49.096519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244778, 38.436100, 48.505886>,  <32.965149, 37.854687, 48.716770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244778, 38.436100, 48.505886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538563, 38.197018, 48.634449>,  <33.714836, 38.053566, 48.711586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538563, 38.197018, 48.634449>,  <33.244778, 38.436100, 48.505886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538563, 38.197018, 48.634449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608952, 0.371387, -0.700891,
		0.299562, 0.710504, 0.636747,
		0.734466, -0.597709, 0.321410,
		33.758904, 38.017704, 48.730873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.284090, 37.591839, 56.400764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.090414, 37.920151, 56.522011>,  <28.974209, 38.117138, 56.594761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.090414, 37.920151, 56.522011>,  <29.284090, 37.591839, 56.400764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090414, 37.920151, 56.522011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332366, 0.493003, -0.804040,
		-0.809378, -0.288561, -0.511507,
		-0.484189, 0.820780, 0.303118,
		28.945158, 38.166386, 56.612946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908838, 37.812450, 55.790245>,  <29.284090, 37.591839, 56.400764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908838, 37.812450, 55.790245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.946943, 38.119350, 56.043938>,  <28.969807, 38.303490, 56.196152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.946943, 38.119350, 56.043938>,  <28.908838, 37.812450, 55.790245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946943, 38.119350, 56.043938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345806, 0.571941, -0.743843,
		-0.933458, 0.290182, -0.210835,
		0.095265, 0.767254, 0.634229,
		28.975523, 38.349525, 56.234207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418810, 38.398415, 55.555122>,  <28.908838, 37.812450, 55.790245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418810, 38.398415, 55.555122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.721605, 38.555779, 55.763813>,  <28.903282, 38.650196, 55.889027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.721605, 38.555779, 55.763813>,  <28.418810, 38.398415, 55.555122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721605, 38.555779, 55.763813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281073, 0.524755, -0.803511,
		-0.589887, 0.754892, 0.286657,
		0.756989, 0.393409, 0.521726,
		28.948702, 38.673801, 55.920330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436844, 39.103580, 55.386185>,  <28.418810, 38.398415, 55.555122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436844, 39.103580, 55.386185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.799765, 39.016811, 55.530270>,  <29.017517, 38.964748, 55.616718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.799765, 39.016811, 55.530270>,  <28.436844, 39.103580, 55.386185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799765, 39.016811, 55.530270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408341, 0.250155, -0.877884,
		0.100324, 0.943593, 0.315544,
		0.907300, -0.216923, 0.360210,
		29.071955, 38.951733, 55.638332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899477, 39.673027, 55.226768>,  <28.436844, 39.103580, 55.386185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899477, 39.673027, 55.226768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138439, 39.357193, 55.282860>,  <29.281816, 39.167694, 55.316513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138439, 39.357193, 55.282860>,  <28.899477, 39.673027, 55.226768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138439, 39.357193, 55.282860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396914, 0.139185, -0.907241,
		0.696824, 0.597651, 0.396546,
		0.597407, -0.789582, 0.140229,
		29.317661, 39.120319, 55.324928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509413, 39.834530, 54.856300>,  <28.899477, 39.673027, 55.226768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509413, 39.834530, 54.856300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563568, 39.446232, 54.935619>,  <29.596062, 39.213253, 54.983212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563568, 39.446232, 54.935619>,  <29.509413, 39.834530, 54.856300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563568, 39.446232, 54.935619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487460, -0.108983, -0.866317,
		0.862585, 0.213954, 0.458444,
		0.135390, -0.970745, 0.198301,
		29.604185, 39.155006, 54.995110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131195, 39.784290, 54.689384>,  <29.509413, 39.834530, 54.856300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131195, 39.784290, 54.689384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.967098, 39.419571, 54.682198>,  <29.868639, 39.200741, 54.677887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.967098, 39.419571, 54.682198>,  <30.131195, 39.784290, 54.689384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967098, 39.419571, 54.682198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425851, -0.174109, -0.887883,
		0.806444, -0.371898, 0.459718,
		-0.410243, -0.911799, -0.017964,
		29.844025, 39.146030, 54.676807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612856, 39.360939, 54.429207>,  <30.131195, 39.784290, 54.689384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612856, 39.360939, 54.429207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283463, 39.146168, 54.355907>,  <30.085827, 39.017303, 54.311928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283463, 39.146168, 54.355907>,  <30.612856, 39.360939, 54.429207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283463, 39.146168, 54.355907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401512, -0.323361, -0.856870,
		0.400825, -0.779194, 0.481867,
		-0.823485, -0.536930, -0.183245,
		30.036417, 38.985088, 54.300934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838667, 38.875595, 54.038528>,  <30.612856, 39.360939, 54.429207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838667, 38.875595, 54.038528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.447311, 38.812473, 53.985081>,  <30.212498, 38.774601, 53.953014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.447311, 38.812473, 53.985081>,  <30.838667, 38.875595, 54.038528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447311, 38.812473, 53.985081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186521, -0.394611, -0.899718,
		0.089254, -0.905196, 0.415517,
		-0.978388, -0.157806, -0.133617,
		30.153795, 38.765133, 53.944996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656675, 38.129112, 53.858780>,  <30.838667, 38.875595, 54.038528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656675, 38.129112, 53.858780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.414734, 38.403652, 53.697250>,  <30.269569, 38.568375, 53.600330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.414734, 38.403652, 53.697250>,  <30.656675, 38.129112, 53.858780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414734, 38.403652, 53.697250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046363, -0.475894, -0.878280,
		-0.794986, -0.549954, 0.256025,
		-0.604854, 0.686350, -0.403827,
		30.233278, 38.609558, 53.576103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167959, 37.671150, 53.464813>,  <30.656675, 38.129112, 53.858780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167959, 37.671150, 53.464813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.145433, 38.053448, 53.349316>,  <30.131918, 38.282825, 53.280018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.145433, 38.053448, 53.349316>,  <30.167959, 37.671150, 53.464813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145433, 38.053448, 53.349316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033803, -0.290865, -0.956167,
		-0.997841, -0.044083, 0.048687,
		-0.056312, 0.955748, -0.288746,
		30.128540, 38.340172, 53.262691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799686, 37.598526, 52.908054>,  <30.167959, 37.671150, 53.464813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799686, 37.598526, 52.908054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962555, 37.962944, 52.882099>,  <30.060276, 38.181595, 52.866528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962555, 37.962944, 52.882099>,  <29.799686, 37.598526, 52.908054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962555, 37.962944, 52.882099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104929, -0.117232, -0.987546,
		-0.907304, 0.395294, -0.143329,
		0.407173, 0.911043, -0.064887,
		30.084707, 38.236256, 52.862633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625837, 37.798317, 52.231716>,  <29.799686, 37.598526, 52.908054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625837, 37.798317, 52.231716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937134, 38.029743, 52.329372>,  <30.123911, 38.168598, 52.387966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937134, 38.029743, 52.329372>,  <29.625837, 37.798317, 52.231716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937134, 38.029743, 52.329372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349600, -0.076216, -0.933794,
		-0.521654, 0.812066, -0.261581,
		0.778239, 0.578566, 0.244140,
		30.170605, 38.203312, 52.402615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878796, 38.085163, 51.612778>,  <29.625837, 37.798317, 52.231716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878796, 38.085163, 51.612778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.185431, 38.146523, 51.862198>,  <30.369411, 38.183338, 52.011848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.185431, 38.146523, 51.862198>,  <29.878796, 38.085163, 51.612778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185431, 38.146523, 51.862198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632395, -0.011815, -0.774556,
		-0.111451, 0.988093, -0.106067,
		0.766587, 0.153401, 0.623548,
		30.415407, 38.192543, 52.049263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258562, 38.285820, 51.292206>,  <29.878796, 38.085163, 51.612778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258562, 38.285820, 51.292206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.157143, 37.914959, 51.181866>,  <29.096291, 37.692440, 51.115662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.157143, 37.914959, 51.181866>,  <29.258562, 38.285820, 51.292206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157143, 37.914959, 51.181866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565148, -0.089453, 0.820125,
		-0.785060, 0.363839, -0.501300,
		-0.253550, -0.927157, -0.275849,
		29.081078, 37.636810, 51.099110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561319, 38.261826, 51.396511>,  <29.258562, 38.285820, 51.292206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561319, 38.261826, 51.396511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.651501, 37.872173, 51.402603>,  <28.705610, 37.638382, 51.406258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.651501, 37.872173, 51.402603>,  <28.561319, 38.261826, 51.396511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651501, 37.872173, 51.402603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514768, -0.105838, 0.850772,
		-0.827154, -0.199650, -0.525315,
		0.225455, -0.974135, 0.015229,
		28.719137, 37.579933, 51.407173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954733, 37.816677, 51.471737>,  <28.561319, 38.261826, 51.396511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954733, 37.816677, 51.471737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.231375, 37.554588, 51.593304>,  <28.397360, 37.397335, 51.666245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.231375, 37.554588, 51.593304>,  <27.954733, 37.816677, 51.471737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231375, 37.554588, 51.593304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600263, -0.287384, 0.746388,
		-0.401707, -0.698637, -0.592062,
		0.691604, -0.655222, 0.303922,
		28.438856, 37.358021, 51.684479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547487, 37.254993, 51.624416>,  <27.954733, 37.816677, 51.471737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547487, 37.254993, 51.624416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886850, 37.228710, 51.834515>,  <28.090467, 37.212940, 51.960575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886850, 37.228710, 51.834515>,  <27.547487, 37.254993, 51.624416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886850, 37.228710, 51.834515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503521, -0.406301, 0.762486,
		0.163309, -0.911374, -0.377794,
		0.848408, -0.065706, 0.525249,
		28.141373, 37.209000, 51.992088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512424, 36.592251, 51.818531>,  <27.547487, 37.254993, 51.624416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512424, 36.592251, 51.818531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.781782, 36.749458, 52.068996>,  <27.943398, 36.843781, 52.219276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.781782, 36.749458, 52.068996>,  <27.512424, 36.592251, 51.818531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781782, 36.749458, 52.068996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497637, -0.385387, 0.777068,
		0.546713, -0.834875, -0.063939,
		0.673396, 0.393015, 0.626161,
		27.983801, 36.867363, 52.256844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690619, 36.133430, 52.303020>,  <27.512424, 36.592251, 51.818531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690619, 36.133430, 52.303020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.803417, 36.465569, 52.495270>,  <27.871096, 36.664852, 52.610619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.803417, 36.465569, 52.495270>,  <27.690619, 36.133430, 52.303020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803417, 36.465569, 52.495270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327670, -0.387477, 0.861681,
		0.901727, -0.400476, 0.162814,
		0.281996, 0.830350, 0.480622,
		27.888016, 36.714672, 52.639458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987589, 35.937500, 52.926739>,  <27.690619, 36.133430, 52.303020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987589, 35.937500, 52.926739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.868649, 36.317352, 52.966305>,  <27.797285, 36.545265, 52.990044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.868649, 36.317352, 52.966305>,  <27.987589, 35.937500, 52.926739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868649, 36.317352, 52.966305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365203, -0.208848, 0.907199,
		0.882163, 0.233630, 0.408909,
		-0.297349, 0.949631, 0.098916,
		27.779444, 36.602242, 52.995979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142750, 36.097935, 53.542980>,  <27.987589, 35.937500, 52.926739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142750, 36.097935, 53.542980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871981, 36.378788, 53.454636>,  <27.709518, 36.547302, 53.401630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871981, 36.378788, 53.454636>,  <28.142750, 36.097935, 53.542980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871981, 36.378788, 53.454636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513995, -0.236145, 0.824648,
		0.526861, 0.671744, 0.520747,
		-0.676924, 0.702136, -0.220857,
		27.668903, 36.589428, 53.388378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992189, 36.449577, 54.165531>,  <28.142750, 36.097935, 53.542980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992189, 36.449577, 54.165531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675579, 36.506004, 53.927677>,  <27.485613, 36.539860, 53.784966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675579, 36.506004, 53.927677>,  <27.992189, 36.449577, 54.165531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675579, 36.506004, 53.927677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609096, -0.102686, 0.786420,
		0.049878, 0.984660, 0.167203,
		-0.791526, 0.141068, -0.594631,
		27.438122, 36.548325, 53.749287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646072, 36.952396, 54.423302>,  <27.992189, 36.449577, 54.165531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646072, 36.952396, 54.423302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357924, 36.804382, 54.188648>,  <27.185034, 36.715572, 54.047855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357924, 36.804382, 54.188648>,  <27.646072, 36.952396, 54.423302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357924, 36.804382, 54.188648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637719, 0.020799, 0.769988,
		-0.272722, 0.928784, -0.250963,
		-0.720372, -0.370037, -0.586631,
		27.141811, 36.693371, 54.012657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043461, 37.402733, 54.479877>,  <27.646072, 36.952396, 54.423302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043461, 37.402733, 54.479877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.917814, 37.041359, 54.363167>,  <26.842426, 36.824535, 54.293140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.917814, 37.041359, 54.363167>,  <27.043461, 37.402733, 54.479877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917814, 37.041359, 54.363167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732646, 0.035215, 0.679698,
		-0.603789, 0.427275, -0.672960,
		-0.314116, -0.903436, -0.291778,
		26.823580, 36.770329, 54.275635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378126, 37.328156, 54.656658>,  <27.043461, 37.402733, 54.479877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378126, 37.328156, 54.656658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.408392, 36.942127, 54.556320>,  <26.426552, 36.710510, 54.496117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.408392, 36.942127, 54.556320>,  <26.378126, 37.328156, 54.656658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408392, 36.942127, 54.556320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784555, -0.212882, 0.582369,
		-0.615425, 0.152738, -0.773255,
		0.075663, -0.965066, -0.250844,
		26.431091, 36.652607, 54.481068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735104, 37.065861, 54.432758>,  <26.378126, 37.328156, 54.656658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735104, 37.065861, 54.432758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.937664, 36.746723, 54.563602>,  <26.059200, 36.555241, 54.642109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.937664, 36.746723, 54.563602>,  <25.735104, 37.065861, 54.432758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937664, 36.746723, 54.563602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729418, -0.194023, 0.655976,
		-0.459898, -0.570791, -0.680215,
		0.506403, -0.797843, 0.327114,
		26.089584, 36.507370, 54.661736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268415, 36.581345, 54.588242>,  <25.735104, 37.065861, 54.432758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268415, 36.581345, 54.588242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.566824, 36.468758, 54.829647>,  <25.745869, 36.401207, 54.974491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.566824, 36.468758, 54.829647>,  <25.268415, 36.581345, 54.588242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566824, 36.468758, 54.829647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641404, -0.060062, 0.764849,
		-0.179029, -0.957690, -0.225340,
		0.746023, -0.281464, 0.603513,
		25.790630, 36.384319, 55.010700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.538540, 34.542942, 58.121201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219490, 34.688061, 57.928467>,  <32.028061, 34.775131, 57.812824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219490, 34.688061, 57.928467>,  <32.538540, 34.542942, 58.121201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219490, 34.688061, 57.928467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326984, -0.411184, -0.850888,
		-0.506825, -0.836244, 0.209342,
		-0.797628, 0.362800, -0.481837,
		31.980202, 34.796902, 57.783916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477924, 34.106274, 57.663822>,  <32.538540, 34.542942, 58.121201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477924, 34.106274, 57.663822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254692, 34.401287, 57.511726>,  <32.120750, 34.578297, 57.420467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254692, 34.401287, 57.511726>,  <32.477924, 34.106274, 57.663822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254692, 34.401287, 57.511726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309638, -0.240040, -0.920057,
		-0.769848, -0.631206, -0.094406,
		-0.558084, 0.737536, -0.380240,
		32.087265, 34.622547, 57.397655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127094, 33.749153, 57.202835>,  <32.477924, 34.106274, 57.663822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127094, 33.749153, 57.202835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118099, 34.132130, 57.087738>,  <32.112701, 34.361916, 57.018681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118099, 34.132130, 57.087738>,  <32.127094, 33.749153, 57.202835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118099, 34.132130, 57.087738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339170, -0.263437, -0.903086,
		-0.940457, -0.117902, -0.318811,
		-0.022489, 0.957445, -0.287740,
		32.111351, 34.419361, 57.001415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797720, 33.778191, 56.443829>,  <32.127094, 33.749153, 57.202835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797720, 33.778191, 56.443829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012054, 34.103985, 56.532818>,  <32.140656, 34.299461, 56.586212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012054, 34.103985, 56.532818>,  <31.797720, 33.778191, 56.443829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012054, 34.103985, 56.532818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460858, -0.061358, -0.885350,
		-0.707451, 0.576935, -0.408238,
		0.535838, 0.814482, 0.222478,
		32.172806, 34.348328, 56.599560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056377, 33.926651, 55.743176>,  <31.797720, 33.778191, 56.443829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056377, 33.926651, 55.743176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281979, 34.144627, 55.991352>,  <32.417339, 34.275410, 56.140259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281979, 34.144627, 55.991352>,  <32.056377, 33.926651, 55.743176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281979, 34.144627, 55.991352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734973, 0.011259, -0.678002,
		-0.376454, 0.838401, -0.394164,
		0.564000, 0.544937, 0.620441,
		32.451180, 34.308109, 56.177483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349365, 34.366661, 55.272106>,  <32.056377, 33.926651, 55.743176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349365, 34.366661, 55.272106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600090, 34.433952, 55.576424>,  <32.750526, 34.474327, 55.759014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600090, 34.433952, 55.576424>,  <32.349365, 34.366661, 55.272106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600090, 34.433952, 55.576424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772346, -0.263091, -0.578156,
		0.102899, 0.949992, -0.294836,
		0.626812, 0.168224, 0.760794,
		32.788136, 34.484421, 55.804661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859524, 34.924248, 55.089008>,  <32.349365, 34.366661, 55.272106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859524, 34.924248, 55.089008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000011, 34.677776, 55.370991>,  <33.084305, 34.529892, 55.540180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000011, 34.677776, 55.370991>,  <32.859524, 34.924248, 55.089008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000011, 34.677776, 55.370991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748926, -0.266986, -0.606488,
		0.561921, 0.740971, 0.367704,
		0.351218, -0.616182, 0.704958,
		33.105377, 34.492920, 55.582478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605595, 35.120785, 55.222042>,  <32.859524, 34.924248, 55.089008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605595, 35.120785, 55.222042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583981, 34.759243, 55.391808>,  <33.571014, 34.542316, 55.493668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583981, 34.759243, 55.391808>,  <33.605595, 35.120785, 55.222042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583981, 34.759243, 55.391808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770401, -0.308140, -0.558150,
		0.635265, 0.296814, 0.712979,
		-0.054031, -0.903854, 0.424416,
		33.567772, 34.488087, 55.519131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258736, 34.918518, 55.507706>,  <33.605595, 35.120785, 55.222042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258736, 34.918518, 55.507706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060257, 34.580196, 55.429321>,  <33.941170, 34.377201, 55.382290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060257, 34.580196, 55.429321>,  <34.258736, 34.918518, 55.507706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060257, 34.580196, 55.429321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769217, -0.323607, -0.550984,
		0.402613, -0.424130, 0.811182,
		-0.496193, -0.845809, -0.195960,
		33.911400, 34.326454, 55.370533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744019, 34.435856, 55.654877>,  <34.258736, 34.918518, 55.507706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744019, 34.435856, 55.654877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477333, 34.247559, 55.423744>,  <34.317322, 34.134579, 55.285065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477333, 34.247559, 55.423744>,  <34.744019, 34.435856, 55.654877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477333, 34.247559, 55.423744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744914, -0.395451, -0.537328,
		0.024441, -0.788679, 0.614319,
		-0.666712, -0.470748, -0.577833,
		34.277321, 34.106335, 55.250393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838341, 33.706699, 55.632088>,  <34.744019, 34.435856, 55.654877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838341, 33.706699, 55.632088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618595, 33.787487, 55.307762>,  <34.486748, 33.835960, 55.113167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618595, 33.787487, 55.307762>,  <34.838341, 33.706699, 55.632088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618595, 33.787487, 55.307762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665776, -0.480554, -0.570798,
		-0.504924, -0.853390, 0.129526,
		-0.549358, 0.201975, -0.810810,
		34.453789, 33.848080, 55.064518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993961, 33.182896, 55.148441>,  <34.838341, 33.706699, 55.632088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993961, 33.182896, 55.148441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792599, 33.413143, 54.890686>,  <34.671780, 33.551292, 54.736031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792599, 33.413143, 54.890686>,  <34.993961, 33.182896, 55.148441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792599, 33.413143, 54.890686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642103, -0.249812, -0.724774,
		-0.578174, -0.778622, -0.243852,
		-0.503408, 0.575623, -0.644390,
		34.641575, 33.585831, 54.697369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837280, 32.696014, 54.524200>,  <34.993961, 33.182896, 55.148441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837280, 32.696014, 54.524200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859245, 33.077663, 54.406467>,  <34.872425, 33.306652, 54.335827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859245, 33.077663, 54.406467>,  <34.837280, 32.696014, 54.524200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859245, 33.077663, 54.406467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672827, -0.253165, -0.695133,
		-0.737758, -0.159861, -0.655864,
		0.054917, 0.954124, -0.294333,
		34.875721, 33.363899, 54.318169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751415, 32.686775, 53.765476>,  <34.837280, 32.696014, 54.524200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751415, 32.686775, 53.765476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940987, 33.020901, 53.876930>,  <35.054729, 33.221378, 53.943802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940987, 33.020901, 53.876930>,  <34.751415, 32.686775, 53.765476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940987, 33.020901, 53.876930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628648, -0.099384, -0.771314,
		-0.616601, 0.540709, -0.572221,
		0.473926, 0.835318, 0.278635,
		35.083164, 33.271496, 53.960522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163132, 32.739189, 53.441917>,  <34.751415, 32.686775, 53.765476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163132, 32.739189, 53.441917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050549, 32.375782, 53.318386>,  <33.982998, 32.157738, 53.244267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050549, 32.375782, 53.318386>,  <34.163132, 32.739189, 53.441917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050549, 32.375782, 53.318386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506023, -0.132922, 0.852216,
		-0.815305, 0.396135, -0.422321,
		-0.281457, -0.908520, -0.308825,
		33.966110, 32.103226, 53.225739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408157, 32.715549, 53.543156>,  <34.163132, 32.739189, 53.441917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408157, 32.715549, 53.543156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536373, 32.336773, 53.533669>,  <33.613304, 32.109509, 53.527977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536373, 32.336773, 53.533669>,  <33.408157, 32.715549, 53.543156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536373, 32.336773, 53.533669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691331, -0.250989, 0.677544,
		-0.647546, -0.200780, -0.735100,
		0.320539, -0.946938, -0.023722,
		33.632534, 32.052692, 53.526550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852371, 32.353397, 53.624195>,  <33.408157, 32.715549, 53.543156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852371, 32.353397, 53.624195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106617, 32.062893, 53.728916>,  <33.259167, 31.888592, 53.791748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106617, 32.062893, 53.728916>,  <32.852371, 32.353397, 53.624195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106617, 32.062893, 53.728916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600331, -0.251769, 0.759088,
		-0.485381, -0.639656, -0.596024,
		0.635616, -0.726259, 0.261801,
		33.297302, 31.845015, 53.807457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543423, 31.784639, 53.749489>,  <32.852371, 32.353397, 53.624195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543423, 31.784639, 53.749489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878151, 31.729210, 53.961349>,  <33.078987, 31.695951, 54.088467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878151, 31.729210, 53.961349>,  <32.543423, 31.784639, 53.749489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878151, 31.729210, 53.961349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547133, -0.246206, 0.800017,
		0.019541, -0.959260, -0.281849,
		0.836818, -0.138576, 0.529654,
		33.129196, 31.687637, 54.120247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343632, 31.150764, 54.163074>,  <32.543423, 31.784639, 53.749489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343632, 31.150764, 54.163074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.687477, 31.278728, 54.322437>,  <32.893784, 31.355507, 54.418056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.687477, 31.278728, 54.322437>,  <32.343632, 31.150764, 54.163074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687477, 31.278728, 54.322437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264001, -0.389508, 0.882376,
		0.437465, -0.863679, -0.250368,
		0.859609, 0.319911, 0.398408,
		32.945358, 31.374702, 54.441959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567543, 30.594135, 54.632221>,  <32.343632, 31.150764, 54.163074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567543, 30.594135, 54.632221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753971, 30.934044, 54.730743>,  <32.865829, 31.137989, 54.789856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753971, 30.934044, 54.730743>,  <32.567543, 30.594135, 54.632221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753971, 30.934044, 54.730743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312156, -0.102547, 0.944480,
		0.827849, -0.517082, 0.217466,
		0.466073, 0.849770, 0.246303,
		32.893795, 31.188974, 54.804634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915310, 30.482487, 55.266788>,  <32.567543, 30.594135, 54.632221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915310, 30.482487, 55.266788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874168, 30.878944, 55.233189>,  <32.849483, 31.116819, 55.213028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874168, 30.878944, 55.233189>,  <32.915310, 30.482487, 55.266788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874168, 30.878944, 55.233189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434186, 0.031238, 0.900282,
		0.894932, 0.129072, 0.427127,
		-0.102858, 0.991143, -0.083997,
		32.843311, 31.176287, 55.207989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099827, 30.670198, 55.971577>,  <32.915310, 30.482487, 55.266788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099827, 30.670198, 55.971577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904427, 30.984026, 55.818829>,  <32.787186, 31.172321, 55.727180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904427, 30.984026, 55.818829>,  <33.099827, 30.670198, 55.971577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904427, 30.984026, 55.818829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425089, 0.168208, 0.889385,
		0.762015, 0.596792, 0.251341,
		-0.488500, 0.784567, -0.381867,
		32.757877, 31.219397, 55.704269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139660, 31.285326, 56.403576>,  <33.099827, 30.670198, 55.971577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139660, 31.285326, 56.403576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827515, 31.374825, 56.170006>,  <32.640228, 31.428524, 56.029865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827515, 31.374825, 56.170006>,  <33.139660, 31.285326, 56.403576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827515, 31.374825, 56.170006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523915, 0.275840, 0.805869,
		0.341380, 0.934799, -0.098032,
		-0.780367, 0.223747, -0.583921,
		32.593403, 31.441948, 55.994831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943245, 31.993927, 56.581139>,  <33.139660, 31.285326, 56.403576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943245, 31.993927, 56.581139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.626472, 31.823755, 56.405933>,  <32.436409, 31.721651, 56.300812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.626472, 31.823755, 56.405933>,  <32.943245, 31.993927, 56.581139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626472, 31.823755, 56.405933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562106, 0.227751, 0.795089,
		-0.238499, 0.875864, -0.419501,
		-0.791932, -0.425431, -0.438010,
		32.388893, 31.696125, 56.274532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248466, 32.469505, 56.521488>,  <32.943245, 31.993927, 56.581139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248466, 32.469505, 56.521488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077633, 32.109615, 56.485508>,  <31.975132, 31.893681, 56.463921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077633, 32.109615, 56.485508>,  <32.248466, 32.469505, 56.521488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077633, 32.109615, 56.485508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730075, 0.284434, 0.621359,
		-0.533469, 0.331041, -0.778346,
		-0.427084, -0.899727, -0.089949,
		31.949509, 31.839697, 56.458523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476940, 32.581833, 56.413048>,  <32.248466, 32.469505, 56.521488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476940, 32.581833, 56.413048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546608, 32.224358, 56.578449>,  <31.588409, 32.009872, 56.677692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546608, 32.224358, 56.578449>,  <31.476940, 32.581833, 56.413048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546608, 32.224358, 56.578449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679996, 0.194571, 0.706929,
		-0.712230, -0.404308, -0.573815,
		0.174169, -0.893687, 0.413507,
		31.598858, 31.956251, 56.702503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793905, 32.452690, 56.565590>,  <31.476940, 32.581833, 56.413048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793905, 32.452690, 56.565590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007252, 32.177216, 56.762051>,  <31.135260, 32.011929, 56.879925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007252, 32.177216, 56.762051>,  <30.793905, 32.452690, 56.565590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007252, 32.177216, 56.762051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646416, 0.042654, 0.761792,
		-0.545588, -0.723800, -0.422430,
		0.533367, -0.688690, 0.491147,
		31.167261, 31.970608, 56.909393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186438, 32.051239, 56.954445>,  <30.793905, 32.452690, 56.565590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186438, 32.051239, 56.954445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.537956, 31.979494, 57.131325>,  <30.748867, 31.936447, 57.237453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.537956, 31.979494, 57.131325>,  <30.186438, 32.051239, 56.954445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537956, 31.979494, 57.131325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375331, 0.312456, 0.872638,
		-0.294687, -0.932845, 0.207266,
		0.878798, -0.179362, 0.442203,
		30.801596, 31.925686, 57.263985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732351, 31.439045, 56.920113>,  <30.186438, 32.051239, 56.954445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732351, 31.439045, 56.920113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.354141, 31.446575, 56.790112>,  <29.127214, 31.451094, 56.712112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.354141, 31.446575, 56.790112>,  <29.732351, 31.439045, 56.920113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354141, 31.446575, 56.790112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320707, -0.117633, -0.939845,
		-0.055924, -0.992879, 0.105188,
		-0.945526, 0.018825, -0.325001,
		29.070484, 31.452223, 56.692612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728653, 30.995073, 56.394203>,  <29.732351, 31.439045, 56.920113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728653, 30.995073, 56.394203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.383240, 31.170935, 56.295395>,  <29.175993, 31.276451, 56.236111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.383240, 31.170935, 56.295395>,  <29.728653, 30.995073, 56.394203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383240, 31.170935, 56.295395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238981, -0.074571, -0.968157,
		-0.444074, -0.895066, -0.040674,
		-0.863532, 0.439653, -0.247019,
		29.124180, 31.302830, 56.221291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249945, 30.452374, 56.001122>,  <29.728653, 30.995073, 56.394203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249945, 30.452374, 56.001122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.129269, 30.824917, 55.919586>,  <29.056864, 31.048443, 55.870663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.129269, 30.824917, 55.919586>,  <29.249945, 30.452374, 56.001122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129269, 30.824917, 55.919586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010244, -0.210623, -0.977514,
		-0.953351, -0.296995, 0.054003,
		-0.301690, 0.931360, -0.203840,
		29.038761, 31.104324, 55.858433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594950, 30.382833, 55.574154>,  <29.249945, 30.452374, 56.001122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594950, 30.382833, 55.574154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.794851, 30.722521, 55.505951>,  <28.914793, 30.926332, 55.465031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.794851, 30.722521, 55.505951>,  <28.594950, 30.382833, 55.574154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794851, 30.722521, 55.505951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045490, -0.222315, -0.973913,
		-0.864971, 0.478962, -0.149734,
		0.499756, 0.849218, -0.170508,
		28.944778, 30.977285, 55.454800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362686, 30.505693, 54.976044>,  <28.594950, 30.382833, 55.574154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362686, 30.505693, 54.976044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.675875, 30.753010, 55.003387>,  <28.863787, 30.901400, 55.019794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.675875, 30.753010, 55.003387>,  <28.362686, 30.505693, 54.976044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675875, 30.753010, 55.003387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191142, -0.134554, -0.972296,
		-0.591966, 0.774344, -0.223533,
		0.782969, 0.618293, 0.068358,
		28.910765, 30.938498, 55.023895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275974, 31.067339, 54.641384>,  <28.362686, 30.505693, 54.976044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275974, 31.067339, 54.641384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.673405, 31.022089, 54.640053>,  <28.911863, 30.994940, 54.639256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.673405, 31.022089, 54.640053>,  <28.275974, 31.067339, 54.641384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673405, 31.022089, 54.640053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009512, 0.112771, -0.993575,
		0.112771, 0.987160, 0.113123,
		0.993575, -0.113123, -0.003328,
		28.971478, 30.988152, 54.639053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454973, 31.276993, 54.025230>,  <28.275974, 31.067339, 54.641384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454973, 31.276993, 54.025230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.808815, 31.129538, 54.139481>,  <29.021120, 31.041063, 54.208031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.808815, 31.129538, 54.139481>,  <28.454973, 31.276993, 54.025230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808815, 31.129538, 54.139481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194416, -0.265190, -0.944392,
		0.423884, 0.890943, -0.162918,
		0.884604, -0.368639, 0.285623,
		29.074196, 31.018946, 54.225166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952566, 31.701105, 53.701588>,  <28.454973, 31.276993, 54.025230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952566, 31.701105, 53.701588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.114647, 31.351046, 53.807365>,  <29.211895, 31.141010, 53.870831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.114647, 31.351046, 53.807365>,  <28.952566, 31.701105, 53.701588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114647, 31.351046, 53.807365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191345, -0.201666, -0.960582,
		0.893980, 0.439828, 0.085740,
		0.405200, -0.875147, 0.264445,
		29.236206, 31.088501, 53.886700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644030, 31.712132, 53.503662>,  <28.952566, 31.701105, 53.701588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644030, 31.712132, 53.503662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.563919, 31.321335, 53.532997>,  <29.515852, 31.086857, 53.550598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.563919, 31.321335, 53.532997>,  <29.644030, 31.712132, 53.503662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563919, 31.321335, 53.532997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368535, -0.144480, -0.918317,
		0.907784, -0.156889, 0.388992,
		-0.200276, -0.976991, 0.073337,
		29.503836, 31.028238, 53.554996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267420, 31.321220, 53.491108>,  <29.644030, 31.712132, 53.503662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267420, 31.321220, 53.491108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.972336, 31.091473, 53.349190>,  <29.795284, 30.953623, 53.264038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.972336, 31.091473, 53.349190>,  <30.267420, 31.321220, 53.491108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972336, 31.091473, 53.349190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503408, -0.117820, -0.855978,
		0.449847, -0.810072, 0.376060,
		-0.737712, -0.574371, -0.354795,
		29.751022, 30.919161, 53.242752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608894, 30.851137, 53.203495>,  <30.267420, 31.321220, 53.491108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608894, 30.851137, 53.203495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.261467, 30.809608, 53.009666>,  <30.053011, 30.784691, 52.893368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.261467, 30.809608, 53.009666>,  <30.608894, 30.851137, 53.203495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261467, 30.809608, 53.009666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495465, -0.202071, -0.844797,
		-0.010208, -0.973852, 0.226953,
		-0.868568, -0.103823, -0.484572,
		30.000896, 30.778461, 52.864296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737446, 30.349501, 52.754787>,  <30.608894, 30.851137, 53.203495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737446, 30.349501, 52.754787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.426022, 30.531183, 52.581562>,  <30.239168, 30.640192, 52.477627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.426022, 30.531183, 52.581562>,  <30.737446, 30.349501, 52.754787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426022, 30.531183, 52.581562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389104, -0.192045, -0.900953,
		-0.492386, -0.869952, -0.027215,
		-0.778559, 0.454206, -0.433062,
		30.192453, 30.667444, 52.451645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701130, 30.058346, 52.085270>,  <30.737446, 30.349501, 52.754787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701130, 30.058346, 52.085270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.467169, 30.379990, 52.042751>,  <30.326792, 30.572975, 52.017242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.467169, 30.379990, 52.042751>,  <30.701130, 30.058346, 52.085270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467169, 30.379990, 52.042751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408133, 0.178527, -0.895296,
		-0.700938, -0.567044, -0.432604,
		-0.584904, 0.804108, -0.106293,
		30.291698, 30.621222, 52.010864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303761, 30.071293, 51.312550>,  <30.701130, 30.058346, 52.085270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303761, 30.071293, 51.312550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.338932, 30.430292, 51.485416>,  <30.360035, 30.645691, 51.589138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.338932, 30.430292, 51.485416>,  <30.303761, 30.071293, 51.312550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338932, 30.430292, 51.485416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398811, 0.365841, -0.840898,
		-0.912808, 0.246293, -0.325763,
		0.087930, 0.897497, 0.432166,
		30.365311, 30.699541, 51.615067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.008680, 35.712231, 55.095299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.354229, 35.800148, 55.276592>,  <25.561558, 35.852898, 55.385368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.354229, 35.800148, 55.276592>,  <25.008680, 35.712231, 55.095299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354229, 35.800148, 55.276592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327930, -0.437587, 0.837245,
		0.382347, -0.871900, -0.305943,
		0.863871, 0.219790, 0.453232,
		25.613390, 35.866085, 55.412563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470745, 35.111275, 55.444393>,  <25.008680, 35.712231, 55.095299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470745, 35.111275, 55.444393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.556034, 35.461170, 55.618462>,  <25.607206, 35.671108, 55.722904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.556034, 35.461170, 55.618462>,  <25.470745, 35.111275, 55.444393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556034, 35.461170, 55.618462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240100, -0.384841, 0.891207,
		0.947042, -0.294509, 0.127968,
		0.213221, 0.874735, 0.435172,
		25.620001, 35.723591, 55.749012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678986, 34.840034, 56.089153>,  <25.470745, 35.111275, 55.444393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678986, 34.840034, 56.089153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.641899, 35.227757, 56.180233>,  <25.619648, 35.460392, 56.234882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.641899, 35.227757, 56.180233>,  <25.678986, 34.840034, 56.089153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641899, 35.227757, 56.180233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202706, -0.242270, 0.948797,
		0.974841, 0.041812, 0.218946,
		-0.092715, 0.969307, 0.227699,
		25.614084, 35.518547, 56.248543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136635, 34.975792, 56.708340>,  <25.678986, 34.840034, 56.089153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136635, 34.975792, 56.708340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.842451, 35.245892, 56.685921>,  <25.665941, 35.407951, 56.672470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.842451, 35.245892, 56.685921>,  <26.136635, 34.975792, 56.708340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842451, 35.245892, 56.685921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184158, -0.119605, 0.975592,
		0.652062, 0.727830, 0.212317,
		-0.735460, 0.675246, -0.056046,
		25.621813, 35.448467, 56.669106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317162, 35.367283, 57.177387>,  <26.136635, 34.975792, 56.708340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317162, 35.367283, 57.177387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.925566, 35.421566, 57.116505>,  <25.690609, 35.454136, 57.079975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.925566, 35.421566, 57.116505>,  <26.317162, 35.367283, 57.177387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925566, 35.421566, 57.116505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144430, 0.065486, 0.987346,
		0.143954, 0.988583, -0.044510,
		-0.978988, 0.135704, -0.152208,
		25.631870, 35.462276, 57.070843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183653, 35.904976, 57.660797>,  <26.317162, 35.367283, 57.177387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183653, 35.904976, 57.660797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.840261, 35.743053, 57.534851>,  <25.634226, 35.645901, 57.459282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.840261, 35.743053, 57.534851>,  <26.183653, 35.904976, 57.660797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840261, 35.743053, 57.534851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269655, -0.165946, 0.948551,
		-0.436233, 0.899217, 0.033302,
		-0.858479, -0.404809, -0.314869,
		25.582718, 35.621609, 57.440392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726627, 36.180855, 58.124416>,  <26.183653, 35.904976, 57.660797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726627, 36.180855, 58.124416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.546703, 35.864822, 57.957829>,  <25.438749, 35.675205, 57.857876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.546703, 35.864822, 57.957829>,  <25.726627, 36.180855, 58.124416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546703, 35.864822, 57.957829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349778, -0.273223, 0.896105,
		-0.821782, 0.548749, -0.153453,
		-0.449810, -0.790078, -0.416470,
		25.411760, 35.627800, 57.832886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001730, 36.371246, 58.238781>,  <25.726627, 36.180855, 58.124416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001730, 36.371246, 58.238781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.002260, 35.976543, 58.173897>,  <25.002579, 35.739723, 58.134968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.002260, 35.976543, 58.173897>,  <25.001730, 36.371246, 58.238781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.002260, 35.976543, 58.173897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470517, -0.143749, 0.870604,
		-0.882390, 0.075168, -0.464475,
		0.001326, -0.986755, -0.162210,
		25.002659, 35.680515, 58.125233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.329250, 36.112404, 58.356255>,  <25.001730, 36.371246, 58.238781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.329250, 36.112404, 58.356255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.584187, 35.810257, 58.417194>,  <24.737148, 35.628967, 58.453758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.584187, 35.810257, 58.417194>,  <24.329250, 36.112404, 58.356255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.584187, 35.810257, 58.417194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541266, -0.298120, 0.786229,
		-0.548478, -0.583555, -0.598861,
		0.637341, -0.755372, 0.152346,
		24.775389, 35.583645, 58.462898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.933899, 35.558239, 58.500370>,  <24.329250, 36.112404, 58.356255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.933899, 35.558239, 58.500370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.280676, 35.410141, 58.633835>,  <24.488743, 35.321281, 58.713913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.280676, 35.410141, 58.633835>,  <23.933899, 35.558239, 58.500370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.280676, 35.410141, 58.633835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434090, -0.231959, 0.870495,
		-0.244929, -0.899496, -0.361825,
		0.866935, -0.370274, 0.333648,
		24.540758, 35.299068, 58.733932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.751680, 34.846867, 58.955589>,  <23.933899, 35.558239, 58.500370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.751680, 34.846867, 58.955589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.133858, 34.920406, 59.047958>,  <24.363165, 34.964531, 59.103378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.133858, 34.920406, 59.047958>,  <23.751680, 34.846867, 58.955589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.133858, 34.920406, 59.047958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179338, -0.259804, 0.948862,
		0.234447, -0.947998, -0.215256,
		0.955444, 0.183855, 0.230922,
		24.420490, 34.975563, 59.117233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.079700, 34.205505, 59.273663>,  <23.751680, 34.846867, 58.955589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.079700, 34.205505, 59.273663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.255589, 34.548809, 59.379517>,  <24.361120, 34.754791, 59.443027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.255589, 34.548809, 59.379517>,  <24.079700, 34.205505, 59.273663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255589, 34.548809, 59.379517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086049, -0.253036, 0.963622,
		0.894004, -0.446494, -0.037411,
		0.439718, 0.858263, 0.264636,
		24.387505, 34.806290, 59.458908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.622597, 34.167206, 59.750900>,  <24.079700, 34.205505, 59.273663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.622597, 34.167206, 59.750900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.447672, 34.513927, 59.846745>,  <24.342716, 34.721958, 59.904251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.447672, 34.513927, 59.846745>,  <24.622597, 34.167206, 59.750900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.447672, 34.513927, 59.846745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072035, -0.231815, 0.970089,
		0.896420, 0.441492, 0.038935,
		-0.437313, 0.866802, 0.239607,
		24.316479, 34.773968, 59.918625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873648, 33.800190, 60.322346>,  <24.622597, 34.167206, 59.750900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873648, 33.800190, 60.322346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.118807, 33.722656, 60.628754>,  <25.265902, 33.676136, 60.812599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.118807, 33.722656, 60.628754>,  <24.873648, 33.800190, 60.322346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118807, 33.722656, 60.628754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589632, -0.533170, -0.606683,
		0.526013, 0.823504, -0.212488,
		0.612898, -0.193834, 0.766019,
		25.302675, 33.664505, 60.858559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696499, 33.933491, 60.114670>,  <24.873648, 33.800190, 60.322346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696499, 33.933491, 60.114670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.632286, 33.659302, 60.398743>,  <25.593758, 33.494789, 60.569187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.632286, 33.659302, 60.398743>,  <25.696499, 33.933491, 60.114670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632286, 33.659302, 60.398743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566547, -0.653173, -0.502384,
		0.808241, 0.321700, 0.493209,
		-0.160534, -0.685474, 0.710180,
		25.584126, 33.453659, 60.611797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314926, 33.791924, 60.439186>,  <25.696499, 33.933491, 60.114670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314926, 33.791924, 60.439186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.071125, 33.483360, 60.512329>,  <25.924845, 33.298222, 60.556217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.071125, 33.483360, 60.512329>,  <26.314926, 33.791924, 60.439186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071125, 33.483360, 60.512329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617355, -0.606537, -0.500984,
		0.497375, -0.192461, 0.845918,
		-0.609501, -0.771409, 0.182860,
		25.888275, 33.251938, 60.567188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687845, 33.305691, 60.865719>,  <26.314926, 33.791924, 60.439186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687845, 33.305691, 60.865719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.409628, 33.116806, 60.649117>,  <26.242697, 33.003475, 60.519154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.409628, 33.116806, 60.649117>,  <26.687845, 33.305691, 60.865719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409628, 33.116806, 60.649117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717095, -0.503083, -0.482372,
		-0.044642, -0.723825, 0.688538,
		-0.695545, -0.472213, -0.541510,
		26.200964, 32.975143, 60.486664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050768, 32.701458, 60.702827>,  <26.687845, 33.305691, 60.865719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050768, 32.701458, 60.702827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.743452, 32.680668, 60.447632>,  <26.559063, 32.668194, 60.294514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.743452, 32.680668, 60.447632>,  <27.050768, 32.701458, 60.702827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743452, 32.680668, 60.447632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575850, -0.491348, -0.653432,
		-0.279511, -0.869411, 0.407428,
		-0.768290, -0.051976, -0.637988,
		26.512964, 32.665077, 60.256237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007481, 32.037495, 60.429966>,  <27.050768, 32.701458, 60.702827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007481, 32.037495, 60.429966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.801287, 32.242813, 60.155506>,  <26.677570, 32.366005, 59.990829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.801287, 32.242813, 60.155506>,  <27.007481, 32.037495, 60.429966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801287, 32.242813, 60.155506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592988, -0.364352, -0.718062,
		-0.618581, -0.777027, -0.116563,
		-0.515484, 0.513299, -0.686149,
		26.646641, 32.396801, 59.949661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861490, 31.590221, 59.938328>,  <27.007481, 32.037495, 60.429966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861490, 31.590221, 59.938328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.783800, 31.922619, 59.729816>,  <26.737186, 32.122059, 59.604710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.783800, 31.922619, 59.729816>,  <26.861490, 31.590221, 59.938328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783800, 31.922619, 59.729816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427272, -0.406673, -0.807500,
		-0.883015, -0.379563, -0.276074,
		-0.194225, 0.830993, -0.521275,
		26.725533, 32.171917, 59.573433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693186, 31.293964, 59.331745>,  <26.861490, 31.590221, 59.938328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693186, 31.293964, 59.331745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.822037, 31.669573, 59.283627>,  <26.899347, 31.894938, 59.254753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.822037, 31.669573, 59.283627>,  <26.693186, 31.293964, 59.331745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822037, 31.669573, 59.283627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502079, -0.277185, -0.819198,
		-0.802590, 0.203486, -0.560752,
		0.322128, 0.939022, -0.120300,
		26.918674, 31.951279, 59.247536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847195, 31.344028, 58.719280>,  <26.693186, 31.293964, 59.331745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847195, 31.344028, 58.719280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.023054, 31.695183, 58.795204>,  <27.128571, 31.905874, 58.840759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.023054, 31.695183, 58.795204>,  <26.847195, 31.344028, 58.719280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023054, 31.695183, 58.795204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644440, -0.161119, -0.747488,
		-0.625625, 0.450955, -0.636579,
		0.439648, 0.877884, 0.189813,
		27.154949, 31.958548, 58.852146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880207, 31.731951, 58.083534>,  <26.847195, 31.344028, 58.719280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880207, 31.731951, 58.083534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.166847, 31.869068, 58.326508>,  <27.338831, 31.951338, 58.472290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.166847, 31.869068, 58.326508>,  <26.880207, 31.731951, 58.083534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166847, 31.869068, 58.326508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633843, 0.043385, -0.772244,
		-0.291074, 0.938408, -0.186188,
		0.716602, 0.342794, 0.607432,
		27.381828, 31.971907, 58.508736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147804, 32.352901, 57.749359>,  <26.880207, 31.731951, 58.083534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147804, 32.352901, 57.749359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.432571, 32.210178, 57.991306>,  <27.603432, 32.124546, 58.136475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.432571, 32.210178, 57.991306>,  <27.147804, 32.352901, 57.749359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432571, 32.210178, 57.991306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665383, 0.067272, -0.743465,
		0.224585, 0.931752, 0.285307,
		0.711918, -0.356809, 0.604864,
		27.646147, 32.103134, 58.172764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718185, 32.714725, 57.629459>,  <27.147804, 32.352901, 57.749359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718185, 32.714725, 57.629459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.859739, 32.377747, 57.791962>,  <27.944672, 32.175560, 57.889465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.859739, 32.377747, 57.791962>,  <27.718185, 32.714725, 57.629459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859739, 32.377747, 57.791962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596764, -0.131075, -0.791639,
		0.720165, 0.522591, 0.456357,
		0.353887, -0.842448, 0.406259,
		27.965906, 32.125011, 57.913837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460211, 32.800556, 57.614403>,  <27.718185, 32.714725, 57.629459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460211, 32.800556, 57.614403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.377909, 32.410095, 57.642067>,  <28.328527, 32.175819, 57.658665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.377909, 32.410095, 57.642067>,  <28.460211, 32.800556, 57.614403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377909, 32.410095, 57.642067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599278, -0.181560, -0.779680,
		0.773647, -0.118977, 0.622346,
		-0.205757, -0.976156, 0.069163,
		28.316181, 32.117249, 57.662815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951641, 32.541607, 57.284988>,  <28.460211, 32.800556, 57.614403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951641, 32.541607, 57.284988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.777685, 32.186840, 57.347286>,  <28.673311, 31.973980, 57.384663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.777685, 32.186840, 57.347286>,  <28.951641, 32.541607, 57.284988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777685, 32.186840, 57.347286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540259, -0.395353, -0.742843,
		0.720410, -0.238915, 0.651099,
		-0.434890, -0.886913, 0.155740,
		28.647219, 31.920767, 57.394009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519335, 32.077301, 57.230331>,  <28.951641, 32.541607, 57.284988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519335, 32.077301, 57.230331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.193741, 31.862778, 57.141068>,  <28.998384, 31.734062, 57.087509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.193741, 31.862778, 57.141068>,  <29.519335, 32.077301, 57.230331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193741, 31.862778, 57.141068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433844, -0.305827, -0.847496,
		0.386276, -0.786663, 0.481614,
		-0.813984, -0.536313, -0.223156,
		28.949545, 31.701883, 57.074120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055479, 31.635864, 57.538811>,  <29.519335, 32.077301, 57.230331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055479, 31.635864, 57.538811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.414209, 31.797096, 57.611729>,  <30.629448, 31.893835, 57.655479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.414209, 31.797096, 57.611729>,  <30.055479, 31.635864, 57.538811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414209, 31.797096, 57.611729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289574, 0.223349, 0.930732,
		0.334444, -0.887492, 0.317026,
		0.896825, 0.403080, 0.182297,
		30.683256, 31.918020, 57.666416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278688, 31.370146, 58.248901>,  <30.055479, 31.635864, 57.538811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278688, 31.370146, 58.248901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.492105, 31.702023, 58.183239>,  <30.620155, 31.901148, 58.143841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.492105, 31.702023, 58.183239>,  <30.278688, 31.370146, 58.248901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492105, 31.702023, 58.183239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330175, 0.383009, 0.862722,
		0.778665, -0.406098, 0.478294,
		0.533540, 0.829692, -0.164152,
		30.652168, 31.950930, 58.133995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515497, 31.417645, 58.905983>,  <30.278688, 31.370146, 58.248901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515497, 31.417645, 58.905983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.577557, 31.769041, 58.725239>,  <30.614792, 31.979879, 58.616791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.577557, 31.769041, 58.725239>,  <30.515497, 31.417645, 58.905983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577557, 31.769041, 58.725239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192793, 0.475532, 0.858312,
		0.968896, -0.046051, 0.243145,
		0.155149, 0.878492, -0.451863,
		30.624102, 32.032589, 58.589680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077372, 31.800770, 59.189953>,  <30.515497, 31.417645, 58.905983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077372, 31.800770, 59.189953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.825249, 32.065304, 59.027302>,  <30.673975, 32.224026, 58.929710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.825249, 32.065304, 59.027302>,  <31.077372, 31.800770, 59.189953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825249, 32.065304, 59.027302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123672, 0.431546, 0.893573,
		0.766430, 0.613515, -0.190219,
		-0.630309, 0.661337, -0.406624,
		30.636156, 32.263706, 58.905315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227295, 32.485439, 59.456982>,  <31.077372, 31.800770, 59.189953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227295, 32.485439, 59.456982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.844479, 32.499653, 59.341873>,  <30.614788, 32.508183, 59.272808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.844479, 32.499653, 59.341873>,  <31.227295, 32.485439, 59.456982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844479, 32.499653, 59.341873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197254, 0.647635, 0.735975,
		0.212521, 0.761121, -0.612804,
		-0.957040, 0.035533, -0.287771,
		30.557367, 32.510311, 59.255543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200720, 33.086136, 59.713951>,  <31.227295, 32.485439, 59.456982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200720, 33.086136, 59.713951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.841972, 32.932961, 59.625423>,  <30.626724, 32.841053, 59.572308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.841972, 32.932961, 59.625423>,  <31.200720, 33.086136, 59.713951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841972, 32.932961, 59.625423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393203, 0.461189, 0.795422,
		-0.202530, 0.800413, -0.564199,
		-0.896868, -0.382942, -0.221320,
		30.572912, 32.818077, 59.559029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671553, 33.678261, 59.693581>,  <31.200720, 33.086136, 59.713951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671553, 33.678261, 59.693581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.433321, 33.360504, 59.741295>,  <30.290382, 33.169849, 59.769924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.433321, 33.360504, 59.741295>,  <30.671553, 33.678261, 59.693581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433321, 33.360504, 59.741295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521362, 0.495236, 0.694927,
		-0.611118, 0.351693, -0.709117,
		-0.595581, -0.794389, 0.119288,
		30.254646, 33.122189, 59.777081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332188, 34.355984, 59.604744>,  <30.671553, 33.678261, 59.693581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332188, 34.355984, 59.604744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.449362, 34.706215, 59.758396>,  <30.519667, 34.916351, 59.850590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.449362, 34.706215, 59.758396>,  <30.332188, 34.355984, 59.604744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449362, 34.706215, 59.758396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372974, 0.265287, -0.889108,
		-0.880385, 0.403725, -0.248853,
		0.292938, 0.875573, 0.384134,
		30.537243, 34.968887, 59.873638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053873, 34.934338, 59.259052>,  <30.332188, 34.355984, 59.604744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053873, 34.934338, 59.259052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.408651, 35.016068, 59.424740>,  <30.621519, 35.065105, 59.524151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.408651, 35.016068, 59.424740>,  <30.053873, 34.934338, 59.259052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408651, 35.016068, 59.424740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353449, 0.277043, -0.893488,
		-0.297317, 0.938882, 0.173504,
		0.886948, 0.204324, 0.414217,
		30.674736, 35.077366, 59.549004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150085, 35.629822, 59.058651>,  <30.053873, 34.934338, 59.259052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150085, 35.629822, 59.058651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.492430, 35.454666, 59.168743>,  <30.697836, 35.349571, 59.234798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.492430, 35.454666, 59.168743>,  <30.150085, 35.629822, 59.058651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492430, 35.454666, 59.168743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406428, 0.240300, -0.881517,
		0.319868, 0.866319, 0.383634,
		0.855862, -0.437889, 0.275232,
		30.749189, 35.323299, 59.251312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711229, 36.121674, 58.974972>,  <30.150085, 35.629822, 59.058651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711229, 36.121674, 58.974972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.843477, 35.745083, 58.948715>,  <30.922827, 35.519127, 58.932961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.843477, 35.745083, 58.948715>,  <30.711229, 36.121674, 58.974972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843477, 35.745083, 58.948715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453948, 0.219623, -0.863538,
		0.827418, 0.255706, 0.499994,
		0.330622, -0.941478, -0.065642,
		30.942663, 35.462639, 58.929024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184677, 36.117290, 58.372837>,  <30.711229, 36.121674, 58.974972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184677, 36.117290, 58.372837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.189430, 35.731571, 58.478657>,  <31.192282, 35.500137, 58.542149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.189430, 35.731571, 58.478657>,  <31.184677, 36.117290, 58.372837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189430, 35.731571, 58.478657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448984, -0.231249, -0.863097,
		0.893461, 0.129034, 0.430207,
		0.011884, -0.964300, 0.264546,
		31.192995, 35.442280, 58.558022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911499, 35.864540, 58.271091>,  <31.184677, 36.117290, 58.372837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911499, 35.864540, 58.271091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.694427, 35.528564, 58.270393>,  <31.564184, 35.326981, 58.269974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.694427, 35.528564, 58.270393>,  <31.911499, 35.864540, 58.271091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694427, 35.528564, 58.270393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385383, -0.247142, -0.889045,
		0.746310, -0.483141, 0.457817,
		-0.542680, -0.839938, -0.001750,
		31.531624, 35.276585, 58.269867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398911, 35.422462, 58.152153>,  <31.911499, 35.864540, 58.271091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398911, 35.422462, 58.152153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048687, 35.252186, 58.060772>,  <31.838552, 35.150021, 58.005943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048687, 35.252186, 58.060772>,  <32.398911, 35.422462, 58.152153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048687, 35.252186, 58.060772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404005, -0.385854, -0.829395,
		0.264914, -0.818478, 0.509817,
		-0.875557, -0.425687, -0.228452,
		31.786020, 35.124481, 57.992237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.373026, 36.497860, 60.998337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083601, 36.378532, 60.749352>,  <26.909946, 36.306934, 60.599960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083601, 36.378532, 60.749352>,  <27.373026, 36.497860, 60.998337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083601, 36.378532, 60.749352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359451, 0.607017, -0.708749,
		0.589286, -0.736567, -0.331979,
		-0.723558, -0.298326, -0.622467,
		26.866533, 36.289036, 60.562611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636431, 36.190315, 60.442051>,  <27.373026, 36.497860, 60.998337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636431, 36.190315, 60.442051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282482, 36.327900, 60.316391>,  <27.070112, 36.410450, 60.240993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282482, 36.327900, 60.316391>,  <27.636431, 36.190315, 60.442051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282482, 36.327900, 60.316391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438760, 0.388831, -0.810124,
		-0.156498, -0.854694, -0.494982,
		-0.884872, 0.343961, -0.314154,
		27.017021, 36.431087, 60.222145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611217, 36.142212, 59.626957>,  <27.636431, 36.190315, 60.442051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611217, 36.142212, 59.626957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332134, 36.408245, 59.733437>,  <27.164684, 36.567867, 59.797325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332134, 36.408245, 59.733437>,  <27.611217, 36.142212, 59.626957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332134, 36.408245, 59.733437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246757, 0.571966, -0.782283,
		-0.672541, -0.480120, -0.563181,
		-0.697710, 0.665086, 0.266198,
		27.122822, 36.607773, 59.813297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187506, 36.248112, 59.079357>,  <27.611217, 36.142212, 59.626957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187506, 36.248112, 59.079357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141300, 36.576786, 59.302605>,  <27.113577, 36.773991, 59.436554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141300, 36.576786, 59.302605>,  <27.187506, 36.248112, 59.079357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141300, 36.576786, 59.302605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318610, 0.562841, -0.762691,
		-0.940822, 0.089722, -0.326810,
		-0.115512, 0.821681, 0.558119,
		27.106647, 36.823292, 59.470039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017342, 36.736893, 58.536480>,  <27.187506, 36.248112, 59.079357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017342, 36.736893, 58.536480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142126, 36.932674, 58.862209>,  <27.216997, 37.050144, 59.057648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142126, 36.932674, 58.862209>,  <27.017342, 36.736893, 58.536480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142126, 36.932674, 58.862209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435258, 0.688237, -0.580413,
		-0.844529, 0.535506, 0.001666,
		0.311962, 0.489451, 0.814320,
		27.235714, 37.079510, 59.106506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877865, 37.445820, 58.381748>,  <27.017342, 36.736893, 58.536480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877865, 37.445820, 58.381748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135597, 37.475876, 58.686169>,  <27.290237, 37.493912, 58.868820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135597, 37.475876, 58.686169>,  <26.877865, 37.445820, 58.381748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135597, 37.475876, 58.686169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519824, 0.686876, -0.507922,
		-0.560911, 0.722880, 0.403514,
		0.644330, 0.075142, 0.761047,
		27.328896, 37.498417, 58.914482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960712, 38.208519, 58.513851>,  <26.877865, 37.445820, 58.381748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960712, 38.208519, 58.513851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279819, 38.019413, 58.663555>,  <27.471283, 37.905949, 58.753376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279819, 38.019413, 58.663555>,  <26.960712, 38.208519, 58.513851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279819, 38.019413, 58.663555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600048, 0.561457, -0.569832,
		0.059266, 0.679164, 0.731590,
		0.797766, -0.472760, 0.374256,
		27.519150, 37.877586, 58.775833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369219, 38.729340, 58.593903>,  <26.960712, 38.208519, 58.513851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369219, 38.729340, 58.593903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622536, 38.420116, 58.579380>,  <27.774527, 38.234581, 58.570667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622536, 38.420116, 58.579380>,  <27.369219, 38.729340, 58.593903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622536, 38.420116, 58.579380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594791, 0.516197, -0.616250,
		0.495138, 0.368674, 0.786713,
		0.633294, -0.773059, -0.036304,
		27.812525, 38.188198, 58.568489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951960, 39.019032, 58.368633>,  <27.369219, 38.729340, 58.593903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951960, 39.019032, 58.368633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076870, 38.642109, 58.320389>,  <28.151817, 38.415955, 58.291443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076870, 38.642109, 58.320389>,  <27.951960, 39.019032, 58.368633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076870, 38.642109, 58.320389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622840, 0.298944, -0.722982,
		0.717323, 0.150653, 0.680258,
		0.312278, -0.942304, -0.120607,
		28.170553, 38.359417, 58.284206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733562, 39.023045, 58.361156>,  <27.951960, 39.019032, 58.368633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733562, 39.023045, 58.361156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629074, 38.690342, 58.165222>,  <28.566381, 38.490719, 58.047661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629074, 38.690342, 58.165222>,  <28.733562, 39.023045, 58.361156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629074, 38.690342, 58.165222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532764, 0.298935, -0.791707,
		0.804939, -0.467780, 0.365042,
		-0.261221, -0.831757, -0.489841,
		28.550709, 38.440815, 58.018269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295824, 38.799244, 58.010571>,  <28.733562, 39.023045, 58.361156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295824, 38.799244, 58.010571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004105, 38.607910, 57.814888>,  <28.829073, 38.493111, 57.697479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004105, 38.607910, 57.814888>,  <29.295824, 38.799244, 58.010571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004105, 38.607910, 57.814888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412791, 0.262606, -0.872148,
		0.545644, -0.837996, 0.005933,
		-0.729299, -0.478331, -0.489206,
		28.785315, 38.464413, 57.668125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640175, 38.277546, 57.659939>,  <29.295824, 38.799244, 58.010571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640175, 38.277546, 57.659939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291609, 38.363365, 57.483482>,  <29.082470, 38.414856, 57.377609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291609, 38.363365, 57.483482>,  <29.640175, 38.277546, 57.659939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291609, 38.363365, 57.483482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488955, 0.307447, -0.816333,
		-0.039513, -0.927063, -0.372817,
		-0.871414, 0.214546, -0.441144,
		29.030184, 38.427731, 57.351139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357069, 38.184044, 57.874481>,  <29.640175, 38.277546, 57.659939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357069, 38.184044, 57.874481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697464, 38.213642, 58.082458>,  <30.901701, 38.231400, 58.207245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697464, 38.213642, 58.082458>,  <30.357069, 38.184044, 57.874481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697464, 38.213642, 58.082458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474835, -0.314590, 0.821928,
		0.224387, -0.946339, -0.232577,
		0.850989, 0.073994, 0.519945,
		30.952761, 38.235840, 58.238441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440983, 37.488136, 58.319801>,  <30.357069, 38.184044, 57.874481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440983, 37.488136, 58.319801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656530, 37.778736, 58.490364>,  <30.785858, 37.953094, 58.592701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656530, 37.778736, 58.490364>,  <30.440983, 37.488136, 58.319801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656530, 37.778736, 58.490364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234178, -0.357043, 0.904257,
		0.809185, -0.587132, -0.022270,
		0.538869, 0.726497, 0.426407,
		30.818192, 37.996685, 58.618286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660025, 37.228519, 58.948277>,  <30.440983, 37.488136, 58.319801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660025, 37.228519, 58.948277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724689, 37.617245, 59.016918>,  <30.763489, 37.850479, 59.058102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724689, 37.617245, 59.016918>,  <30.660025, 37.228519, 58.948277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724689, 37.617245, 59.016918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058033, -0.164229, 0.984714,
		0.985138, -0.169151, 0.029847,
		0.161664, 0.971811, 0.171604,
		30.773190, 37.908787, 59.068401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183636, 37.245491, 59.474037>,  <30.660025, 37.228519, 58.948277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183636, 37.245491, 59.474037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989895, 37.595112, 59.489178>,  <30.873652, 37.804886, 59.498260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989895, 37.595112, 59.489178>,  <31.183636, 37.245491, 59.474037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989895, 37.595112, 59.489178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093899, -0.094951, 0.991044,
		0.869820, 0.476458, 0.128063,
		-0.484351, 0.874055, 0.037851,
		30.844589, 37.857327, 59.500534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366817, 37.498940, 60.144470>,  <31.183636, 37.245491, 59.474037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366817, 37.498940, 60.144470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050617, 37.707809, 60.016441>,  <30.860897, 37.833130, 59.939625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050617, 37.707809, 60.016441>,  <31.366817, 37.498940, 60.144470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050617, 37.707809, 60.016441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392007, -0.029847, 0.919478,
		0.470571, 0.852319, 0.228289,
		-0.790502, 0.522171, -0.320070,
		30.813467, 37.864460, 59.920422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339664, 38.021271, 60.630604>,  <31.366817, 37.498940, 60.144470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339664, 38.021271, 60.630604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979788, 37.991295, 60.458588>,  <30.763863, 37.973309, 60.355377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979788, 37.991295, 60.458588>,  <31.339664, 38.021271, 60.630604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979788, 37.991295, 60.458588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432001, 0.011395, 0.901801,
		-0.062682, 0.997123, -0.042627,
		-0.899692, -0.074942, -0.430043,
		30.709881, 37.968811, 60.329575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956907, 38.473026, 60.921406>,  <31.339664, 38.021271, 60.630604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956907, 38.473026, 60.921406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684622, 38.215199, 60.782177>,  <30.521250, 38.060501, 60.698639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684622, 38.215199, 60.782177>,  <30.956907, 38.473026, 60.921406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684622, 38.215199, 60.782177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377994, -0.097941, 0.920613,
		-0.627493, 0.758243, -0.176975,
		-0.680715, -0.644574, -0.348069,
		30.480408, 38.021828, 60.677757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382711, 38.775940, 61.137909>,  <30.956907, 38.473026, 60.921406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382711, 38.775940, 61.137909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296597, 38.388401, 61.088936>,  <30.244928, 38.155876, 61.059551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296597, 38.388401, 61.088936>,  <30.382711, 38.775940, 61.137909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296597, 38.388401, 61.088936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432422, -0.017831, 0.901495,
		-0.875593, 0.247022, -0.415112,
		-0.215287, -0.968846, -0.122431,
		30.232010, 38.097748, 61.052208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736691, 38.678917, 61.278759>,  <30.382711, 38.775940, 61.137909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736691, 38.678917, 61.278759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864218, 38.304138, 61.336021>,  <29.940735, 38.079273, 61.370377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864218, 38.304138, 61.336021>,  <29.736691, 38.678917, 61.278759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864218, 38.304138, 61.336021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551241, -0.060432, 0.832155,
		-0.771030, -0.344218, -0.535748,
		0.318819, -0.936943, 0.143152,
		29.959864, 38.023056, 61.378967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317471, 38.451385, 61.788673>,  <29.736691, 38.678917, 61.278759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317471, 38.451385, 61.788673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561630, 38.134880, 61.803158>,  <29.708126, 37.944977, 61.811848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561630, 38.134880, 61.803158>,  <29.317471, 38.451385, 61.788673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561630, 38.134880, 61.803158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493545, -0.344181, 0.798720,
		-0.619537, -0.505409, -0.600613,
		0.610399, -0.791266, 0.036209,
		29.744751, 37.897499, 61.814022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873035, 37.886986, 61.700035>,  <29.317471, 38.451385, 61.788673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873035, 37.886986, 61.700035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201765, 37.812965, 61.915577>,  <29.399002, 37.768551, 62.044903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201765, 37.812965, 61.915577>,  <28.873035, 37.886986, 61.700035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201765, 37.812965, 61.915577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569391, -0.233557, 0.788190,
		-0.020004, -0.954571, -0.297310,
		0.821823, -0.185053, 0.538853,
		29.448313, 37.757450, 62.077232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712994, 37.376614, 62.152988>,  <28.873035, 37.886986, 61.700035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712994, 37.376614, 62.152988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073364, 37.391754, 62.325916>,  <29.289587, 37.400841, 62.429672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073364, 37.391754, 62.325916>,  <28.712994, 37.376614, 62.152988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073364, 37.391754, 62.325916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428368, -0.082052, 0.899871,
		0.069538, -0.995909, -0.057707,
		0.900925, 0.037855, 0.432321,
		29.343641, 37.403111, 62.455612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794384, 36.782803, 62.527599>,  <28.712994, 37.376614, 62.152988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794384, 36.782803, 62.527599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046824, 37.050045, 62.685253>,  <29.198288, 37.210392, 62.779846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046824, 37.050045, 62.685253>,  <28.794384, 36.782803, 62.527599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046824, 37.050045, 62.685253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400066, -0.154965, 0.903290,
		0.664575, -0.727746, 0.169490,
		0.631101, 0.668111, 0.394132,
		29.236155, 37.250477, 62.803493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062698, 36.416046, 63.200127>,  <28.794384, 36.782803, 62.527599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062698, 36.416046, 63.200127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129869, 36.807995, 63.243294>,  <29.170172, 37.043163, 63.269196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129869, 36.807995, 63.243294>,  <29.062698, 36.416046, 63.200127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129869, 36.807995, 63.243294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345269, -0.044081, 0.937468,
		0.923358, -0.194689, 0.330918,
		0.167927, 0.979874, 0.107922,
		29.180248, 37.101955, 63.275669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592566, 36.248646, 62.671997>,  <29.062698, 36.416046, 63.200127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592566, 36.248646, 62.671997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671993, 35.857368, 62.696354>,  <29.719650, 35.622601, 62.710968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671993, 35.857368, 62.696354>,  <29.592566, 36.248646, 62.671997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671993, 35.857368, 62.696354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605858, 0.073671, -0.792155,
		0.770394, 0.194191, 0.607275,
		0.198567, -0.978193, 0.060896,
		29.731564, 35.563911, 62.714622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270756, 36.149845, 62.572586>,  <29.592566, 36.248646, 62.671997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270756, 36.149845, 62.572586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152403, 35.774113, 62.503174>,  <30.081392, 35.548672, 62.461525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152403, 35.774113, 62.503174>,  <30.270756, 36.149845, 62.572586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152403, 35.774113, 62.503174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380355, 0.050788, -0.923445,
		0.876234, -0.339232, 0.342252,
		-0.295880, -0.939331, -0.173530,
		30.063639, 35.492313, 62.451115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839119, 35.802723, 62.289482>,  <30.270756, 36.149845, 62.572586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839119, 35.802723, 62.289482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535517, 35.565388, 62.182251>,  <30.353355, 35.422985, 62.117912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535517, 35.565388, 62.182251>,  <30.839119, 35.802723, 62.289482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535517, 35.565388, 62.182251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424363, -0.138559, -0.894828,
		0.493791, -0.792938, 0.356957,
		-0.759004, -0.593338, -0.268074,
		30.307816, 35.387386, 62.101830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169090, 35.261429, 61.927830>,  <30.839119, 35.802723, 62.289482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169090, 35.261429, 61.927830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787861, 35.252716, 61.807049>,  <30.559122, 35.247486, 61.734581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787861, 35.252716, 61.807049>,  <31.169090, 35.261429, 61.927830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787861, 35.252716, 61.807049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300649, -0.184985, -0.935623,
		-0.035473, -0.982500, 0.182855,
		-0.953075, -0.021786, -0.301949,
		30.501938, 35.246181, 61.716465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147934, 34.760620, 61.362934>,  <31.169090, 35.261429, 61.927830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147934, 34.760620, 61.362934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797995, 34.932247, 61.273006>,  <30.588032, 35.035221, 61.219048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797995, 34.932247, 61.273006>,  <31.147934, 34.760620, 61.362934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797995, 34.932247, 61.273006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118031, -0.261321, -0.958008,
		-0.469798, -0.864648, 0.177974,
		-0.874848, 0.429064, -0.224823,
		30.535540, 35.060966, 61.205559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824759, 34.326305, 60.837620>,  <31.147934, 34.760620, 61.362934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824759, 34.326305, 60.837620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669134, 34.691395, 60.787704>,  <30.575760, 34.910446, 60.757755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669134, 34.691395, 60.787704>,  <30.824759, 34.326305, 60.837620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669134, 34.691395, 60.787704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061025, -0.109623, -0.992098,
		-0.919188, -0.393604, -0.013049,
		-0.389063, 0.912721, -0.124784,
		30.552416, 34.965210, 60.750271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506886, 34.216087, 60.284393>,  <30.824759, 34.326305, 60.837620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506886, 34.216087, 60.284393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519415, 34.613159, 60.331051>,  <30.526932, 34.851402, 60.359047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519415, 34.613159, 60.331051>,  <30.506886, 34.216087, 60.284393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519415, 34.613159, 60.331051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252844, 0.105037, -0.961789,
		-0.967000, 0.059619, -0.247703,
		0.031323, 0.992680, 0.116645,
		30.528812, 34.910965, 60.366043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913074, 33.891453, 59.978588>,  <30.506886, 34.216087, 60.284393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913074, 33.891453, 59.978588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903879, 33.499519, 60.057976>,  <29.898363, 33.264359, 60.105610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903879, 33.499519, 60.057976>,  <29.913074, 33.891453, 59.978588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903879, 33.499519, 60.057976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734894, 0.151155, 0.661122,
		-0.677792, -0.130658, -0.723551,
		-0.022987, -0.979837, 0.198471,
		29.896982, 33.205566, 60.117516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238686, 33.678284, 59.978336>,  <29.913074, 33.891453, 59.978588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238686, 33.678284, 59.978336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420706, 33.378574, 60.170803>,  <29.529919, 33.198750, 60.286285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420706, 33.378574, 60.170803>,  <29.238686, 33.678284, 59.978336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420706, 33.378574, 60.170803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724806, 0.002240, 0.688949,
		-0.517286, -0.662262, -0.542055,
		0.455051, -0.749269, 0.481170,
		29.557220, 33.153793, 60.315155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725130, 33.183643, 60.108082>,  <29.238686, 33.678284, 59.978336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725130, 33.183643, 60.108082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011063, 33.095490, 60.373547>,  <29.182623, 33.042599, 60.532825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011063, 33.095490, 60.373547>,  <28.725130, 33.183643, 60.108082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011063, 33.095490, 60.373547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696747, -0.143495, 0.702817,
		-0.059658, -0.964801, -0.256126,
		0.714832, -0.220384, 0.663661,
		29.225512, 33.029373, 60.572647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465425, 32.537720, 60.359707>,  <28.725130, 33.183643, 60.108082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465425, 32.537720, 60.359707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712029, 32.743904, 60.597771>,  <28.859991, 32.867615, 60.740608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712029, 32.743904, 60.597771>,  <28.465425, 32.537720, 60.359707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712029, 32.743904, 60.597771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586853, -0.203106, 0.783806,
		0.524902, -0.832495, 0.177284,
		0.616507, 0.515460, 0.595163,
		28.896980, 32.898540, 60.776321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534204, 32.089367, 60.955002>,  <28.465425, 32.537720, 60.359707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534204, 32.089367, 60.955002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638800, 32.451687, 61.088356>,  <28.701557, 32.669079, 61.168369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638800, 32.451687, 61.088356>,  <28.534204, 32.089367, 60.955002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638800, 32.451687, 61.088356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629103, -0.102012, 0.770599,
		0.732020, -0.411236, 0.543168,
		0.261488, 0.905803, 0.333385,
		28.717247, 32.723427, 61.188370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611879, 32.054897, 61.676476>,  <28.534204, 32.089367, 60.955002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611879, 32.054897, 61.676476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568884, 32.449799, 61.629524>,  <28.543087, 32.686741, 61.601353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568884, 32.449799, 61.629524>,  <28.611879, 32.054897, 61.676476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568884, 32.449799, 61.629524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496649, 0.048954, 0.866570,
		0.861270, 0.151442, 0.485056,
		-0.107489, 0.987253, -0.117376,
		28.536636, 32.745975, 61.594311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478106, 32.237080, 62.303391>,  <28.611879, 32.054897, 61.676476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478106, 32.237080, 62.303391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374657, 32.570343, 62.107857>,  <28.312588, 32.770302, 61.990536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374657, 32.570343, 62.107857>,  <28.478106, 32.237080, 62.303391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374657, 32.570343, 62.107857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647235, 0.226202, 0.727956,
		0.717079, 0.504656, 0.480750,
		-0.258621, 0.833160, -0.488836,
		28.297070, 32.820290, 61.961205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333164, 32.617813, 62.864746>,  <28.478106, 32.237080, 62.303391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333164, 32.617813, 62.864746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171576, 32.803795, 62.549625>,  <28.074623, 32.915382, 62.360554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171576, 32.803795, 62.549625>,  <28.333164, 32.617813, 62.864746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171576, 32.803795, 62.549625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667521, 0.439015, 0.601400,
		0.625479, 0.768818, 0.133019,
		-0.403970, 0.464956, -0.787797,
		28.050385, 32.943283, 62.313286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320192, 33.369663, 62.938705>,  <28.333164, 32.617813, 62.864746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320192, 33.369663, 62.938705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015936, 33.296593, 62.689529>,  <27.833382, 33.252750, 62.540024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015936, 33.296593, 62.689529>,  <28.320192, 33.369663, 62.938705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015936, 33.296593, 62.689529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642765, 0.346438, 0.683253,
		0.090999, 0.920115, -0.380930,
		-0.760640, -0.182673, -0.622943,
		27.787745, 33.241791, 62.502647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.509895, 35.735233, 46.644833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767132, 35.739330, 46.951122>,  <36.921474, 35.741791, 47.134895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767132, 35.739330, 46.951122>,  <36.509895, 35.735233, 46.644833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767132, 35.739330, 46.951122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735072, -0.272098, 0.620992,
		0.214714, -0.962215, -0.167452,
		0.643091, 0.010246, 0.765721,
		36.960060, 35.742405, 47.180840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553593, 35.071354, 46.938461>,  <36.509895, 35.735233, 46.644833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553593, 35.071354, 46.938461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668430, 35.339756, 47.211906>,  <36.737335, 35.500797, 47.375973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668430, 35.339756, 47.211906>,  <36.553593, 35.071354, 46.938461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668430, 35.339756, 47.211906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872111, -0.112098, 0.476294,
		0.396228, -0.732929, 0.553010,
		0.287098, 0.671007, 0.683611,
		36.754559, 35.541058, 47.416988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535519, 34.812111, 47.582958>,  <36.553593, 35.071354, 46.938461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535519, 34.812111, 47.582958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.510189, 35.203876, 47.659622>,  <36.494991, 35.438938, 47.705620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.510189, 35.203876, 47.659622>,  <36.535519, 34.812111, 47.582958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510189, 35.203876, 47.659622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891572, -0.141810, 0.430103,
		0.448429, -0.143639, 0.882201,
		-0.063325, 0.979417, 0.191656,
		36.491192, 35.497704, 47.717117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458042, 34.908550, 48.280643>,  <36.535519, 34.812111, 47.582958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458042, 34.908550, 48.280643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313007, 35.258495, 48.152176>,  <36.225986, 35.468464, 48.075096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313007, 35.258495, 48.152176>,  <36.458042, 34.908550, 48.280643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313007, 35.258495, 48.152176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823409, -0.139318, 0.550080,
		0.436499, 0.463905, 0.770883,
		-0.362583, 0.874862, -0.321171,
		36.204231, 35.520954, 48.055824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029896, 35.110477, 48.794514>,  <36.458042, 34.908550, 48.280643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029896, 35.110477, 48.794514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931583, 35.377350, 48.513241>,  <35.872597, 35.537472, 48.344479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931583, 35.377350, 48.513241>,  <36.029896, 35.110477, 48.794514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931583, 35.377350, 48.513241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857501, 0.188602, 0.478666,
		0.451977, 0.720628, 0.525750,
		-0.245782, 0.667177, -0.703183,
		35.857849, 35.577503, 48.302284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729664, 35.653534, 49.120819>,  <36.029896, 35.110477, 48.794514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729664, 35.653534, 49.120819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.584034, 35.661919, 48.748363>,  <35.496658, 35.666950, 48.524891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.584034, 35.661919, 48.748363>,  <35.729664, 35.653534, 49.120819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584034, 35.661919, 48.748363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931309, 0.003255, 0.364214,
		0.010664, 0.999775, 0.018334,
		-0.364073, 0.020958, -0.931135,
		35.474812, 35.668205, 48.469025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241001, 36.282925, 49.092999>,  <35.729664, 35.653534, 49.120819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241001, 36.282925, 49.092999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.155239, 36.039780, 48.787178>,  <35.103783, 35.893894, 48.603687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.155239, 36.039780, 48.787178>,  <35.241001, 36.282925, 49.092999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155239, 36.039780, 48.787178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975054, 0.087144, 0.204147,
		-0.057468, 0.789246, -0.611382,
		-0.214400, -0.607863, -0.764549,
		35.090919, 35.857422, 48.557812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661770, 36.615810, 48.843246>,  <35.241001, 36.282925, 49.092999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661770, 36.615810, 48.843246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651875, 36.240326, 48.705715>,  <34.645939, 36.015038, 48.623196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651875, 36.240326, 48.705715>,  <34.661770, 36.615810, 48.843246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651875, 36.240326, 48.705715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892283, -0.134360, 0.431020,
		-0.450799, 0.317454, -0.834268,
		-0.024737, -0.938707, -0.343828,
		34.644455, 35.958714, 48.602566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005199, 36.465866, 48.542244>,  <34.661770, 36.615810, 48.843246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005199, 36.465866, 48.542244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145126, 36.096458, 48.605160>,  <34.229084, 35.874813, 48.642910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145126, 36.096458, 48.605160>,  <34.005199, 36.465866, 48.542244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145126, 36.096458, 48.605160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907848, -0.292762, 0.300170,
		-0.231163, -0.247803, -0.940828,
		0.349821, -0.923517, 0.157292,
		34.250072, 35.819405, 48.652348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445923, 36.044785, 48.231274>,  <34.005199, 36.465866, 48.542244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445923, 36.044785, 48.231274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.666637, 35.806984, 48.465233>,  <33.799065, 35.664303, 48.605610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.666637, 35.806984, 48.465233>,  <33.445923, 36.044785, 48.231274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666637, 35.806984, 48.465233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829878, -0.460938, 0.314388,
		0.082699, -0.658868, -0.747699,
		0.551782, -0.594500, 0.584899,
		33.832172, 35.628635, 48.640701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054714, 35.494907, 48.084091>,  <33.445923, 36.044785, 48.231274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054714, 35.494907, 48.084091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.281204, 35.444088, 48.409851>,  <33.417099, 35.413597, 48.605309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.281204, 35.444088, 48.409851>,  <33.054714, 35.494907, 48.084091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281204, 35.444088, 48.409851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733335, -0.528743, 0.427376,
		0.376313, -0.839220, -0.392554,
		0.566223, -0.127047, 0.814402,
		33.451073, 35.405975, 48.654171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902489, 34.657356, 48.336208>,  <33.054714, 35.494907, 48.084091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902489, 34.657356, 48.336208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.009243, 34.896324, 48.638695>,  <33.073296, 35.039707, 48.820187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.009243, 34.896324, 48.638695>,  <32.902489, 34.657356, 48.336208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009243, 34.896324, 48.638695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749077, -0.365100, 0.552798,
		0.606348, -0.713994, 0.350078,
		0.266881, 0.597424, 0.756214,
		33.089306, 35.075550, 48.865559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972233, 34.277630, 48.904816>,  <32.902489, 34.657356, 48.336208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972233, 34.277630, 48.904816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.926266, 34.647343, 49.050415>,  <32.898685, 34.869171, 49.137775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.926266, 34.647343, 49.050415>,  <32.972233, 34.277630, 48.904816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926266, 34.647343, 49.050415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566947, -0.361909, 0.739995,
		0.815699, -0.121328, 0.565610,
		-0.114917, 0.924284, 0.363996,
		32.891792, 34.924629, 49.159615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097782, 34.175629, 49.594898>,  <32.972233, 34.277630, 48.904816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097782, 34.175629, 49.594898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.895641, 34.518112, 49.551960>,  <32.774357, 34.723602, 49.526199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.895641, 34.518112, 49.551960>,  <33.097782, 34.175629, 49.594898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895641, 34.518112, 49.551960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666334, -0.308162, 0.678995,
		0.548283, 0.414659, 0.726253,
		-0.505355, 0.856209, -0.107342,
		32.744034, 34.774975, 49.519756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797009, 34.291176, 50.267494>,  <33.097782, 34.175629, 49.594898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797009, 34.291176, 50.267494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.577316, 34.532818, 50.036526>,  <32.445503, 34.677803, 49.897945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.577316, 34.532818, 50.036526>,  <32.797009, 34.291176, 50.267494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577316, 34.532818, 50.036526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806535, -0.202320, 0.555489,
		0.218750, 0.770796, 0.598349,
		-0.549227, 0.604103, -0.577417,
		32.412548, 34.714050, 49.863300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522472, 34.666904, 50.752686>,  <32.797009, 34.291176, 50.267494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522472, 34.666904, 50.752686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.304119, 34.712307, 50.420631>,  <32.173107, 34.739548, 50.221397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.304119, 34.712307, 50.420631>,  <32.522472, 34.666904, 50.752686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304119, 34.712307, 50.420631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837839, -0.081318, 0.539827,
		-0.006233, 0.990204, 0.139488,
		-0.545882, 0.113504, -0.830139,
		32.140354, 34.746357, 50.171589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980755, 35.192440, 50.885998>,  <32.522472, 34.666904, 50.752686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980755, 35.192440, 50.885998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.836704, 34.973316, 50.583946>,  <31.750275, 34.841843, 50.402714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.836704, 34.973316, 50.583946>,  <31.980755, 35.192440, 50.885998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836704, 34.973316, 50.583946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874115, -0.084658, 0.478284,
		-0.325934, 0.832311, -0.448358,
		-0.360124, -0.547806, -0.755129,
		31.728666, 34.808975, 50.357407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320211, 35.496677, 50.757080>,  <31.980755, 35.192440, 50.885998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320211, 35.496677, 50.757080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307934, 35.140320, 50.575809>,  <31.300568, 34.926506, 50.467049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307934, 35.140320, 50.575809>,  <31.320211, 35.496677, 50.757080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307934, 35.140320, 50.575809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949436, -0.115746, 0.291847,
		-0.312458, 0.439217, -0.842294,
		-0.030692, -0.890894, -0.453174,
		31.298727, 34.873051, 50.439857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687092, 35.537197, 50.557819>,  <31.320211, 35.496677, 50.757080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687092, 35.537197, 50.557819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.793842, 35.151794, 50.549553>,  <30.857893, 34.920551, 50.544594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.793842, 35.151794, 50.549553>,  <30.687092, 35.537197, 50.557819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793842, 35.151794, 50.549553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963711, -0.266671, -0.012187,
		0.006232, 0.023164, -0.999712,
		0.266876, -0.963509, -0.020662,
		30.873905, 34.862743, 50.543354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190687, 35.314304, 49.982594>,  <30.687092, 35.537197, 50.557819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190687, 35.314304, 49.982594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.316010, 35.028595, 50.232922>,  <30.391203, 34.857170, 50.383118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.316010, 35.028595, 50.232922>,  <30.190687, 35.314304, 49.982594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316010, 35.028595, 50.232922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949330, -0.252766, 0.186769,
		0.024781, -0.652625, -0.757275,
		0.313304, -0.714275, 0.625820,
		30.410000, 34.814312, 50.420670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831223, 34.814548, 49.723637>,  <30.190687, 35.314304, 49.982594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831223, 34.814548, 49.723637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.933050, 34.722794, 50.099419>,  <29.994146, 34.667740, 50.324886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.933050, 34.722794, 50.099419>,  <29.831223, 34.814548, 49.723637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933050, 34.722794, 50.099419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870561, -0.477368, 0.119344,
		0.421091, -0.848235, -0.321215,
		0.254570, -0.229383, 0.939456,
		30.009420, 34.653980, 50.381256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498745, 34.217510, 49.852577>,  <29.831223, 34.814548, 49.723637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498745, 34.217510, 49.852577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.547052, 34.363823, 50.221710>,  <29.576036, 34.451611, 50.443192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.547052, 34.363823, 50.221710>,  <29.498745, 34.217510, 49.852577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547052, 34.363823, 50.221710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909869, -0.330933, 0.250242,
		0.396929, -0.869879, 0.292846,
		0.120768, 0.365780, 0.922833,
		29.583282, 34.473557, 50.498562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123856, 33.819050, 50.288330>,  <29.498745, 34.217510, 49.852577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123856, 33.819050, 50.288330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.214294, 34.107140, 50.550674>,  <29.268559, 34.279995, 50.708080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.214294, 34.107140, 50.550674>,  <29.123856, 33.819050, 50.288330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214294, 34.107140, 50.550674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943657, -0.005077, 0.330886,
		0.241642, -0.693721, 0.678499,
		0.226097, 0.720226, 0.655861,
		29.282124, 34.323208, 50.747433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809807, 33.652077, 50.911190>,  <29.123856, 33.819050, 50.288330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809807, 33.652077, 50.911190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.889799, 34.034809, 50.995544>,  <28.937796, 34.264450, 51.046158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.889799, 34.034809, 50.995544>,  <28.809807, 33.652077, 50.911190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889799, 34.034809, 50.995544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880411, 0.081030, 0.467237,
		0.429981, -0.279107, 0.858613,
		0.199983, 0.956835, 0.210888,
		28.949795, 34.321861, 51.058811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731665, 33.795158, 51.642052>,  <28.809807, 33.652077, 50.911190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731665, 33.795158, 51.642052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.662497, 34.139389, 51.450428>,  <28.620996, 34.345928, 51.335453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.662497, 34.139389, 51.450428>,  <28.731665, 33.795158, 51.642052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662497, 34.139389, 51.450428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923649, 0.027208, 0.382272,
		0.342011, 0.508587, 0.790170,
		-0.172920, 0.860581, -0.479062,
		28.610620, 34.397564, 51.306709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284113, 34.234093, 52.092972>,  <28.731665, 33.795158, 51.642052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284113, 34.234093, 52.092972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.222614, 34.371986, 51.722561>,  <28.185715, 34.454723, 51.500317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.222614, 34.371986, 51.722561>,  <28.284113, 34.234093, 52.092972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222614, 34.371986, 51.722561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922758, 0.285074, 0.259327,
		0.353384, 0.894368, 0.274274,
		-0.153745, 0.344730, -0.926025,
		28.176491, 34.475407, 51.444752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815098, 34.753025, 52.214912>,  <28.284113, 34.234093, 52.092972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815098, 34.753025, 52.214912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.778044, 34.725204, 51.817604>,  <27.755812, 34.708511, 51.579220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.778044, 34.725204, 51.817604>,  <27.815098, 34.753025, 52.214912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778044, 34.725204, 51.817604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979290, 0.186730, 0.078258,
		0.180030, 0.979947, -0.085406,
		-0.092636, -0.069548, -0.993268,
		27.750254, 34.704342, 51.519623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422697, 35.371449, 51.997150>,  <27.815098, 34.753025, 52.214912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422697, 35.371449, 51.997150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.375450, 35.084663, 51.722336>,  <27.347101, 34.912594, 51.557449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.375450, 35.084663, 51.722336>,  <27.422697, 35.371449, 51.997150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375450, 35.084663, 51.722336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991382, 0.124620, 0.040397,
		0.056655, 0.685883, -0.725503,
		-0.118120, -0.716961, -0.687033,
		27.340014, 34.869576, 51.516228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962875, 35.622089, 51.601368>,  <27.422697, 35.371449, 51.997150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962875, 35.622089, 51.601368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.952604, 35.229717, 51.524307>,  <26.946442, 34.994293, 51.478069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.952604, 35.229717, 51.524307>,  <26.962875, 35.622089, 51.601368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952604, 35.229717, 51.524307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970553, -0.021713, 0.239905,
		-0.239514, 0.193141, -0.951488,
		-0.025676, -0.980931, -0.192654,
		26.944902, 34.935436, 51.466511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391539, 35.581886, 51.270115>,  <26.962875, 35.622089, 51.601368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391539, 35.581886, 51.270115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.434311, 35.195263, 51.363358>,  <26.459974, 34.963291, 51.419304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.434311, 35.195263, 51.363358>,  <26.391539, 35.581886, 51.270115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434311, 35.195263, 51.363358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929827, -0.014186, 0.367723,
		-0.352118, -0.256067, -0.900246,
		0.106932, -0.966555, 0.233103,
		26.466391, 34.905296, 51.433289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842525, 35.220520, 50.918156>,  <26.391539, 35.581886, 51.270115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842525, 35.220520, 50.918156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.955362, 34.949982, 51.190327>,  <26.023064, 34.787659, 51.353630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.955362, 34.949982, 51.190327>,  <25.842525, 35.220520, 50.918156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955362, 34.949982, 51.190327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959360, -0.193473, 0.205420,
		-0.007290, -0.710724, -0.703433,
		0.282092, -0.676343, 0.680430,
		26.039989, 34.747078, 51.394455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549110, 34.694004, 50.576183>,  <25.842525, 35.220520, 50.918156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549110, 34.694004, 50.576183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.581333, 34.634529, 50.970421>,  <25.600666, 34.598846, 51.206963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.581333, 34.634529, 50.970421>,  <25.549110, 34.694004, 50.576183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581333, 34.634529, 50.970421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937675, -0.346659, 0.024345,
		0.338047, -0.926132, -0.167342,
		0.080558, -0.148683, 0.985598,
		25.605501, 34.589924, 51.266102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.980385, 34.260830, 50.667847>,  <25.549110, 34.694004, 50.576183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.980385, 34.260830, 50.667847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.087929, 34.364605, 51.038879>,  <25.152454, 34.426868, 51.261497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.087929, 34.364605, 51.038879>,  <24.980385, 34.260830, 50.667847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.087929, 34.364605, 51.038879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940237, -0.138248, 0.311194,
		0.208972, -0.955814, 0.206763,
		0.268858, 0.259437, 0.927581,
		25.168587, 34.442436, 51.317154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074102, 33.653023, 51.043488>,  <24.980385, 34.260830, 50.667847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074102, 33.653023, 51.043488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.981722, 33.945530, 51.300209>,  <24.926294, 34.121037, 51.454243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.981722, 33.945530, 51.300209>,  <25.074102, 33.653023, 51.043488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981722, 33.945530, 51.300209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878135, -0.440710, 0.186154,
		0.418977, -0.520594, 0.743935,
		-0.230949, 0.731270, 0.641800,
		24.912437, 34.164909, 51.492748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874519, 33.467136, 51.720985>,  <25.074102, 33.653023, 51.043488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874519, 33.467136, 51.720985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.679605, 33.811459, 51.662231>,  <24.562658, 34.018051, 51.626980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.679605, 33.811459, 51.662231>,  <24.874519, 33.467136, 51.720985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679605, 33.811459, 51.662231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857294, -0.439566, 0.268008,
		0.166134, 0.256522, 0.952153,
		-0.487284, 0.860801, -0.146888,
		24.533421, 34.069698, 51.618164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<34.967129, 33.444309, 48.651634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.568207, 33.414967, 48.650711>,  <34.328854, 33.397362, 48.650158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.568207, 33.414967, 48.650711>,  <34.967129, 33.444309, 48.651634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568207, 33.414967, 48.650711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001406, -0.012365, 0.999923,
		-0.073382, 0.997229, 0.012228,
		-0.997303, -0.073359, -0.002309,
		34.269016, 33.392960, 48.650017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781372, 33.899830, 49.162674>,  <34.967129, 33.444309, 48.651634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781372, 33.899830, 49.162674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453003, 33.674404, 49.125828>,  <34.255981, 33.539146, 49.103718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453003, 33.674404, 49.125828>,  <34.781372, 33.899830, 49.162674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453003, 33.674404, 49.125828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008086, -0.149829, 0.988679,
		-0.570988, 0.812370, 0.118441,
		-0.820919, -0.563566, -0.092119,
		34.206726, 33.505333, 49.098190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257919, 34.104435, 49.678967>,  <34.781372, 33.899830, 49.162674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257919, 34.104435, 49.678967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.151592, 33.730057, 49.586582>,  <34.087795, 33.505428, 49.531151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.151592, 33.730057, 49.586582>,  <34.257919, 34.104435, 49.678967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151592, 33.730057, 49.586582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100445, -0.211388, 0.972227,
		-0.958777, 0.281630, -0.037822,
		-0.265814, -0.935948, -0.230963,
		34.071850, 33.449272, 49.517292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915100, 33.915955, 50.208981>,  <34.257919, 34.104435, 49.678967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915100, 33.915955, 50.208981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942596, 33.546486, 50.058193>,  <33.959095, 33.324806, 49.967720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942596, 33.546486, 50.058193>,  <33.915100, 33.915955, 50.208981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942596, 33.546486, 50.058193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081119, -0.381788, 0.920683,
		-0.994331, -0.032712, -0.101173,
		0.068744, -0.923671, -0.376970,
		33.963219, 33.269386, 49.945103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439697, 33.440907, 50.493637>,  <33.915100, 33.915955, 50.208981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439697, 33.440907, 50.493637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.721550, 33.191586, 50.358002>,  <33.890663, 33.041992, 50.276619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.721550, 33.191586, 50.358002>,  <33.439697, 33.440907, 50.493637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721550, 33.191586, 50.358002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023312, -0.457287, 0.889014,
		-0.709186, -0.634336, -0.307691,
		0.704636, -0.623303, -0.339089,
		33.932941, 33.004593, 50.256275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209454, 32.702858, 50.645523>,  <33.439697, 33.440907, 50.493637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209454, 32.702858, 50.645523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.608173, 32.704784, 50.613628>,  <33.847404, 32.705940, 50.594490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.608173, 32.704784, 50.613628>,  <33.209454, 32.702858, 50.645523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608173, 32.704784, 50.613628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070634, -0.519371, 0.851625,
		-0.037313, -0.854535, -0.518051,
		0.996804, 0.004815, -0.079738,
		33.907215, 32.706230, 50.589706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473316, 32.004726, 50.753860>,  <33.209454, 32.702858, 50.645523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473316, 32.004726, 50.753860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.799351, 32.221478, 50.835846>,  <33.994972, 32.351528, 50.885036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.799351, 32.221478, 50.835846>,  <33.473316, 32.004726, 50.753860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799351, 32.221478, 50.835846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079196, -0.454671, 0.887132,
		0.573907, -0.706853, -0.413508,
		0.815082, 0.541880, 0.204959,
		34.043877, 32.384041, 50.897335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958061, 31.529270, 50.954739>,  <33.473316, 32.004726, 50.753860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958061, 31.529270, 50.954739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105156, 31.880554, 51.077061>,  <34.193413, 32.091324, 51.150455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105156, 31.880554, 51.077061>,  <33.958061, 31.529270, 50.954739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105156, 31.880554, 51.077061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110091, -0.367649, 0.923425,
		0.923389, -0.305914, -0.231882,
		0.367740, 0.878209, 0.305805,
		34.215477, 32.144016, 51.168800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474194, 31.315123, 51.344212>,  <33.958061, 31.529270, 50.954739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474194, 31.315123, 51.344212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423122, 31.692883, 51.465408>,  <34.392479, 31.919538, 51.538128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423122, 31.692883, 51.465408>,  <34.474194, 31.315123, 51.344212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423122, 31.692883, 51.465408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101253, -0.291485, 0.951201,
		0.986634, 0.152124, -0.058408,
		-0.127675, 0.944402, 0.302992,
		34.384819, 31.976204, 51.556305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987331, 31.545475, 51.895489>,  <34.474194, 31.315123, 51.344212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987331, 31.545475, 51.895489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673435, 31.790920, 51.930511>,  <34.485100, 31.938187, 51.951527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673435, 31.790920, 51.930511>,  <34.987331, 31.545475, 51.895489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673435, 31.790920, 51.930511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065310, -0.058621, 0.996142,
		0.616378, 0.787428, 0.005927,
		-0.784738, 0.613612, 0.087559,
		34.438015, 31.975004, 51.956779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154179, 32.072269, 52.473427>,  <34.987331, 31.545475, 51.895489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154179, 32.072269, 52.473427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.762798, 32.010780, 52.418293>,  <34.527969, 31.973886, 52.385212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.762798, 32.010780, 52.418293>,  <35.154179, 32.072269, 52.473427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762798, 32.010780, 52.418293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115924, -0.143387, 0.982854,
		-0.170852, 0.977655, 0.122477,
		-0.978454, -0.153725, -0.137832,
		34.469261, 31.964663, 52.376942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862667, 32.489193, 52.956486>,  <35.154179, 32.072269, 52.473427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862667, 32.489193, 52.956486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.549667, 32.256824, 52.866844>,  <34.361866, 32.117401, 52.813061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.549667, 32.256824, 52.866844>,  <34.862667, 32.489193, 52.956486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549667, 32.256824, 52.866844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168142, -0.149399, 0.974376,
		-0.599519, 0.800130, 0.019227,
		-0.782500, -0.580924, -0.224103,
		34.314919, 32.082546, 52.799614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745865, 33.264294, 53.015324>,  <34.862667, 32.489193, 52.956486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745865, 33.264294, 53.015324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009956, 33.446144, 53.254459>,  <35.168411, 33.555256, 53.397942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009956, 33.446144, 53.254459>,  <34.745865, 33.264294, 53.015324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009956, 33.446144, 53.254459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721696, -0.163597, -0.672600,
		-0.207978, 0.875528, -0.436114,
		0.660227, 0.454628, 0.597841,
		35.208023, 33.582531, 53.433811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033855, 33.671070, 52.559448>,  <34.745865, 33.264294, 53.015324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033855, 33.671070, 52.559448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292618, 33.651958, 52.863876>,  <35.447876, 33.640491, 53.046532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292618, 33.651958, 52.863876>,  <35.033855, 33.671070, 52.559448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292618, 33.651958, 52.863876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753835, -0.110527, -0.647700,
		0.115064, 0.992724, -0.035484,
		0.646910, -0.047777, 0.761068,
		35.486691, 33.637627, 53.092197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472786, 34.242775, 52.519527>,  <35.033855, 33.671070, 52.559448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472786, 34.242775, 52.519527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684940, 33.958641, 52.704620>,  <35.812233, 33.788162, 52.815674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684940, 33.958641, 52.704620>,  <35.472786, 34.242775, 52.519527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684940, 33.958641, 52.704620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745265, 0.130522, -0.653868,
		0.404067, 0.691660, 0.598613,
		0.530387, -0.710331, 0.462730,
		35.844055, 33.745541, 52.843441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056530, 34.563530, 52.562004>,  <35.472786, 34.242775, 52.519527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056530, 34.563530, 52.562004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128616, 34.171436, 52.594666>,  <36.171867, 33.936180, 52.614262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128616, 34.171436, 52.594666>,  <36.056530, 34.563530, 52.562004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128616, 34.171436, 52.594666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653699, 0.057327, -0.754580,
		0.734982, 0.189369, 0.651107,
		0.180220, -0.980231, 0.081656,
		36.182682, 33.877365, 52.619164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882385, 34.511059, 52.531555>,  <36.056530, 34.563530, 52.562004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882385, 34.511059, 52.531555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.773132, 34.128563, 52.489594>,  <36.707581, 33.899067, 52.464417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.773132, 34.128563, 52.489594>,  <36.882385, 34.511059, 52.531555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773132, 34.128563, 52.489594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691162, -0.119220, -0.712799,
		0.669101, -0.267190, 0.693480,
		-0.273129, -0.956241, -0.104901,
		36.691193, 33.841690, 52.458122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548244, 34.027256, 52.522480>,  <36.882385, 34.511059, 52.531555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548244, 34.027256, 52.522480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254463, 33.841484, 52.324539>,  <37.078194, 33.730019, 52.205772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254463, 33.841484, 52.324539>,  <37.548244, 34.027256, 52.522480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254463, 33.841484, 52.324539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569191, -0.024439, -0.821842,
		0.369597, -0.885270, 0.282301,
		-0.734452, -0.464434, -0.494855,
		37.034126, 33.702152, 52.176083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824955, 33.385578, 52.187778>,  <37.548244, 34.027256, 52.522480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824955, 33.385578, 52.187778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.501247, 33.490059, 51.977310>,  <37.307022, 33.552746, 51.851028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.501247, 33.490059, 51.977310>,  <37.824955, 33.385578, 52.187778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501247, 33.490059, 51.977310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524158, -0.083309, -0.847536,
		-0.265211, -0.961683, -0.069489,
		-0.809272, 0.261199, -0.526169,
		37.258465, 33.568417, 51.819458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865005, 33.007748, 51.621700>,  <37.824955, 33.385578, 52.187778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865005, 33.007748, 51.621700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.576836, 33.261200, 51.508923>,  <37.403934, 33.413273, 51.441257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.576836, 33.261200, 51.508923>,  <37.865005, 33.007748, 51.621700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576836, 33.261200, 51.508923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393236, 0.038338, -0.918638,
		-0.571272, -0.772682, -0.276787,
		-0.720426, 0.633635, -0.281945,
		37.360706, 33.451290, 51.424339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608307, 32.718594, 50.951469>,  <37.865005, 33.007748, 51.621700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608307, 32.718594, 50.951469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500645, 33.102989, 50.976963>,  <37.436047, 33.333626, 50.992260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500645, 33.102989, 50.976963>,  <37.608307, 32.718594, 50.951469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500645, 33.102989, 50.976963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207378, 0.122449, -0.970567,
		-0.940506, -0.248015, -0.232245,
		-0.269153, 0.960986, 0.063731,
		37.419899, 33.391285, 50.996082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236664, 32.833668, 50.391647>,  <37.608307, 32.718594, 50.951469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236664, 32.833668, 50.391647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353024, 33.200500, 50.500713>,  <37.422840, 33.420601, 50.566151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353024, 33.200500, 50.500713>,  <37.236664, 32.833668, 50.391647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353024, 33.200500, 50.500713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265961, 0.196242, -0.943797,
		-0.919045, 0.347064, -0.186822,
		0.290896, 0.917080, 0.272661,
		37.440292, 33.475624, 50.582512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877937, 33.289642, 49.954765>,  <37.236664, 32.833668, 50.391647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877937, 33.289642, 49.954765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207024, 33.477467, 50.082928>,  <37.404476, 33.590160, 50.159824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207024, 33.477467, 50.082928>,  <36.877937, 33.289642, 49.954765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207024, 33.477467, 50.082928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287898, 0.141827, -0.947100,
		-0.490160, 0.871436, -0.018502,
		0.822713, 0.469558, 0.320403,
		37.453838, 33.618336, 50.179050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896851, 33.890987, 49.477829>,  <36.877937, 33.289642, 49.954765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896851, 33.890987, 49.477829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259640, 33.855213, 49.642460>,  <37.477314, 33.833748, 49.741238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259640, 33.855213, 49.642460>,  <36.896851, 33.890987, 49.477829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259640, 33.855213, 49.642460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419220, 0.285950, -0.861677,
		-0.040631, 0.954062, 0.296840,
		0.906975, -0.089431, 0.411581,
		37.531731, 33.828384, 49.765934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208191, 34.459045, 49.294830>,  <36.896851, 33.890987, 49.477829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208191, 34.459045, 49.294830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503040, 34.204636, 49.386143>,  <37.679951, 34.051991, 49.440929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503040, 34.204636, 49.386143>,  <37.208191, 34.459045, 49.294830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503040, 34.204636, 49.386143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490239, 0.270818, -0.828446,
		0.465090, 0.722585, 0.511432,
		0.737128, -0.636026, 0.228285,
		37.724178, 34.013828, 49.454628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616692, 34.881924, 49.215694>,  <37.208191, 34.459045, 49.294830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616692, 34.881924, 49.215694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.409389, 34.719391, 49.516705>,  <36.285007, 34.621872, 49.697311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.409389, 34.719391, 49.516705>,  <36.616692, 34.881924, 49.215694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409389, 34.719391, 49.516705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849595, -0.345415, 0.398593,
		0.097972, 0.845919, 0.524235,
		-0.518256, -0.406336, 0.752530,
		36.253914, 34.597488, 49.742462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665737, 35.168465, 49.908817>,  <36.616692, 34.881924, 49.215694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665737, 35.168465, 49.908817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625912, 34.770622, 49.920498>,  <36.602016, 34.531918, 49.927505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625912, 34.770622, 49.920498>,  <36.665737, 35.168465, 49.908817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625912, 34.770622, 49.920498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873604, -0.073328, 0.481081,
		-0.476344, 0.073405, 0.876190,
		-0.099563, -0.994603, 0.029197,
		36.596043, 34.472240, 49.929256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381783, 35.817356, 49.654339>,  <36.665737, 35.168465, 49.908817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381783, 35.817356, 49.654339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.146908, 36.122185, 49.545189>,  <36.005981, 36.305080, 49.479698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.146908, 36.122185, 49.545189>,  <36.381783, 35.817356, 49.654339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146908, 36.122185, 49.545189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055910, 0.374494, 0.925542,
		0.807518, 0.528210, -0.262506,
		-0.587188, 0.762068, -0.272878,
		35.970753, 36.350803, 49.463326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611485, 36.314350, 50.038147>,  <36.381783, 35.817356, 49.654339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611485, 36.314350, 50.038147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238258, 36.404800, 49.926247>,  <36.014324, 36.459068, 49.859104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238258, 36.404800, 49.926247>,  <36.611485, 36.314350, 50.038147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238258, 36.404800, 49.926247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195814, 0.333096, 0.922336,
		0.301747, 0.915377, -0.266522,
		-0.933063, 0.226123, -0.279754,
		35.958340, 36.472637, 49.842319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593201, 36.930176, 50.155804>,  <36.611485, 36.314350, 50.038147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593201, 36.930176, 50.155804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.221588, 36.782566, 50.145077>,  <35.998619, 36.694000, 50.138641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.221588, 36.782566, 50.145077>,  <36.593201, 36.930176, 50.155804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221588, 36.782566, 50.145077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215557, 0.480923, 0.849852,
		-0.300716, 0.795322, -0.526339,
		-0.929034, -0.369020, -0.026816,
		35.942879, 36.671860, 50.137032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136513, 37.504761, 50.240288>,  <36.593201, 36.930176, 50.155804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136513, 37.504761, 50.240288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904053, 37.193226, 50.334675>,  <35.764576, 37.006306, 50.391308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904053, 37.193226, 50.334675>,  <36.136513, 37.504761, 50.240288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904053, 37.193226, 50.334675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391057, 0.521549, 0.758328,
		-0.713679, 0.348428, -0.607668,
		-0.581151, -0.778835, 0.235963,
		35.729706, 36.959576, 50.405464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530018, 37.729046, 50.166710>,  <36.136513, 37.504761, 50.240288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530018, 37.729046, 50.166710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494789, 37.418621, 50.416500>,  <35.473652, 37.232368, 50.566376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494789, 37.418621, 50.416500>,  <35.530018, 37.729046, 50.166710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494789, 37.418621, 50.416500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455389, 0.588937, 0.667664,
		-0.885926, -0.225579, -0.405278,
		-0.088072, -0.776059, 0.624480,
		35.468369, 37.185802, 50.603844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835503, 37.686283, 50.465324>,  <35.530018, 37.729046, 50.166710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835503, 37.686283, 50.465324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017624, 37.437733, 50.720383>,  <35.126896, 37.288605, 50.873417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017624, 37.437733, 50.720383>,  <34.835503, 37.686283, 50.465324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017624, 37.437733, 50.720383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452709, 0.455127, 0.766756,
		-0.766653, -0.637774, -0.074081,
		0.455300, -0.621373, 0.637650,
		35.154213, 37.251320, 50.911678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221260, 37.621613, 50.868217>,  <34.835503, 37.686283, 50.465324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221260, 37.621613, 50.868217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534267, 37.475834, 51.070148>,  <34.722073, 37.388367, 51.191307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534267, 37.475834, 51.070148>,  <34.221260, 37.621613, 50.868217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534267, 37.475834, 51.070148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413175, 0.302599, 0.858906,
		-0.465785, -0.880688, 0.086208,
		0.782515, -0.364447, 0.504825,
		34.769024, 37.366501, 51.221596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982738, 37.173714, 51.479290>,  <34.221260, 37.621613, 50.868217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982738, 37.173714, 51.479290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348026, 37.304207, 51.576942>,  <34.567200, 37.382504, 51.635532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348026, 37.304207, 51.576942>,  <33.982738, 37.173714, 51.479290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348026, 37.304207, 51.576942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318873, 0.199192, 0.926630,
		0.253668, -0.924064, 0.285934,
		0.913221, 0.326233, 0.244130,
		34.621994, 37.402077, 51.650181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009926, 36.803627, 52.091808>,  <33.982738, 37.173714, 51.479290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009926, 36.803627, 52.091808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277061, 37.101063, 52.104816>,  <34.437344, 37.279526, 52.112621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277061, 37.101063, 52.104816>,  <34.009926, 36.803627, 52.091808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277061, 37.101063, 52.104816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280305, 0.210788, 0.936482,
		0.689506, -0.634537, 0.349205,
		0.667840, 0.743593, 0.032524,
		34.477413, 37.324142, 52.114574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279346, 36.816647, 52.797058>,  <34.009926, 36.803627, 52.091808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279346, 36.816647, 52.797058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383816, 37.181946, 52.671982>,  <34.446495, 37.401123, 52.596935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383816, 37.181946, 52.671982>,  <34.279346, 36.816647, 52.797058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383816, 37.181946, 52.671982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177464, 0.363840, 0.914400,
		0.948840, -0.183322, 0.257091,
		0.261169, 0.913243, -0.312693,
		34.462166, 37.455917, 52.578175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791794, 37.078613, 53.241680>,  <34.279346, 36.816647, 52.797058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791794, 37.078613, 53.241680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612106, 37.388245, 53.063236>,  <34.504295, 37.574024, 52.956169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612106, 37.388245, 53.063236>,  <34.791794, 37.078613, 53.241680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612106, 37.388245, 53.063236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102304, 0.451474, 0.886400,
		0.887546, 0.443825, -0.123619,
		-0.449217, 0.774074, -0.446109,
		34.477341, 37.620468, 52.929405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036495, 37.657063, 53.677765>,  <34.791794, 37.078613, 53.241680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036495, 37.657063, 53.677765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737446, 37.803516, 53.456131>,  <34.558018, 37.891388, 53.323151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737446, 37.803516, 53.456131>,  <35.036495, 37.657063, 53.677765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737446, 37.803516, 53.456131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290045, 0.570528, 0.768357,
		0.597442, 0.735149, -0.320343,
		-0.747621, 0.366134, -0.554083,
		34.513161, 37.913357, 53.289906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105801, 38.307217, 53.756554>,  <35.036495, 37.657063, 53.677765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105801, 38.307217, 53.756554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724499, 38.247108, 53.651695>,  <34.495716, 38.211044, 53.588779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724499, 38.247108, 53.651695>,  <35.105801, 38.307217, 53.756554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724499, 38.247108, 53.651695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302015, 0.500941, 0.811077,
		0.009439, 0.852336, -0.522909,
		-0.953256, -0.150270, -0.262147,
		34.438522, 38.202026, 53.573051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739990, 38.936176, 53.779606>,  <35.105801, 38.307217, 53.756554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739990, 38.936176, 53.779606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414673, 38.705093, 53.751881>,  <34.219482, 38.566444, 53.735245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414673, 38.705093, 53.751881>,  <34.739990, 38.936176, 53.779606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414673, 38.705093, 53.751881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406523, 0.478960, 0.778033,
		-0.416279, 0.660947, -0.624388,
		-0.813296, -0.577708, -0.069309,
		34.170685, 38.531780, 53.731087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221054, 39.386425, 53.903282>,  <34.739990, 38.936176, 53.779606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221054, 39.386425, 53.903282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.102123, 39.019894, 54.010571>,  <34.030766, 38.799976, 54.074944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.102123, 39.019894, 54.010571>,  <34.221054, 39.386425, 53.903282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102123, 39.019894, 54.010571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341025, 0.364318, 0.866588,
		-0.891797, 0.166185, -0.420810,
		-0.297322, -0.916327, 0.268225,
		34.012928, 38.744995, 54.091038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551849, 39.398853, 54.111820>,  <34.221054, 39.386425, 53.903282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551849, 39.398853, 54.111820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.675438, 39.064316, 54.292957>,  <33.749592, 38.863594, 54.401638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.675438, 39.064316, 54.292957>,  <33.551849, 39.398853, 54.111820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675438, 39.064316, 54.292957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563300, 0.222719, 0.795669,
		-0.766311, -0.500920, -0.402301,
		0.308967, -0.836347, 0.452840,
		33.768127, 38.813412, 54.428810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031567, 39.081127, 54.356636>,  <33.551849, 39.398853, 54.111820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031567, 39.081127, 54.356636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312656, 38.888458, 54.566082>,  <33.481308, 38.772858, 54.691750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312656, 38.888458, 54.566082>,  <33.031567, 39.081127, 54.356636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312656, 38.888458, 54.566082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588067, 0.020998, 0.808540,
		-0.400448, -0.876098, -0.268501,
		0.702722, -0.481675, 0.523613,
		33.523472, 38.743958, 54.723167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677887, 38.602837, 54.754986>,  <33.031567, 39.081127, 54.356636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677887, 38.602837, 54.754986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.022038, 38.673973, 54.946037>,  <33.228527, 38.716656, 55.060669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.022038, 38.673973, 54.946037>,  <32.677887, 38.602837, 54.754986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022038, 38.673973, 54.946037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497626, 0.090659, 0.862641,
		0.110135, -0.979869, 0.166512,
		0.860372, 0.177868, 0.477624,
		33.280151, 38.727325, 55.089325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637444, 38.068104, 55.210037>,  <32.677887, 38.602837, 54.754986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637444, 38.068104, 55.210037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.903976, 38.332291, 55.348480>,  <33.063896, 38.490803, 55.431545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.903976, 38.332291, 55.348480>,  <32.637444, 38.068104, 55.210037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903976, 38.332291, 55.348480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297195, -0.190462, 0.935628,
		0.683869, -0.726298, 0.069377,
		0.666331, 0.660466, 0.346103,
		33.103874, 38.530430, 55.452312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618504, 37.802147, 55.794964>,  <32.637444, 38.068104, 55.210037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618504, 37.802147, 55.794964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801003, 38.156349, 55.830116>,  <32.910503, 38.368870, 55.851208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801003, 38.156349, 55.830116>,  <32.618504, 37.802147, 55.794964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801003, 38.156349, 55.830116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294172, 0.056887, 0.954058,
		0.839821, -0.461140, 0.286445,
		0.456249, 0.885502, 0.087880,
		32.937878, 38.422001, 55.856480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099396, 37.826027, 56.393318>,  <32.618504, 37.802147, 55.794964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099396, 37.826027, 56.393318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995411, 38.200397, 56.298275>,  <32.933022, 38.425022, 56.241249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995411, 38.200397, 56.298275>,  <33.099396, 37.826027, 56.393318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995411, 38.200397, 56.298275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285645, 0.160517, 0.944797,
		0.922404, 0.313479, 0.225616,
		-0.259959, 0.935930, -0.237605,
		32.917423, 38.481178, 56.226994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319180, 38.122570, 56.934780>,  <33.099396, 37.826027, 56.393318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319180, 38.122570, 56.934780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.041206, 38.360050, 56.772499>,  <32.874424, 38.502537, 56.675133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.041206, 38.360050, 56.772499>,  <33.319180, 38.122570, 56.934780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041206, 38.360050, 56.772499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587472, -0.143399, 0.796438,
		0.414668, 0.791806, 0.448434,
		-0.694930, 0.593700, -0.405701,
		32.832729, 38.538158, 56.650787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076466, 38.467312, 57.514809>,  <33.319180, 38.122570, 56.934780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076466, 38.467312, 57.514809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.800480, 38.543953, 57.235600>,  <32.634888, 38.589939, 57.068073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.800480, 38.543953, 57.235600>,  <33.076466, 38.467312, 57.514809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800480, 38.543953, 57.235600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710162, 0.007389, 0.704000,
		0.140046, 0.981445, 0.130970,
		-0.689969, 0.191602, -0.698020,
		32.593491, 38.601433, 57.026192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757835, 39.114056, 57.749031>,  <33.076466, 38.467312, 57.514809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757835, 39.114056, 57.749031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.513855, 38.930336, 57.490726>,  <32.367466, 38.820103, 57.335743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.513855, 38.930336, 57.490726>,  <32.757835, 39.114056, 57.749031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513855, 38.930336, 57.490726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710350, -0.044283, 0.702455,
		-0.351232, 0.887178, -0.299252,
		-0.609951, -0.459298, -0.645760,
		32.330872, 38.792545, 57.296997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015873, 39.506020, 57.649281>,  <32.757835, 39.114056, 57.749031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015873, 39.506020, 57.649281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.949778, 39.125206, 57.546268>,  <31.910120, 38.896717, 57.484463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.949778, 39.125206, 57.546268>,  <32.015873, 39.506020, 57.649281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949778, 39.125206, 57.546268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708375, -0.067113, 0.702638,
		-0.686221, 0.298532, -0.663309,
		-0.165243, -0.952037, -0.257527,
		31.900206, 38.839596, 57.469009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193789, 39.386150, 57.631264>,  <32.015873, 39.506020, 57.649281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193789, 39.386150, 57.631264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.371618, 39.028294, 57.649040>,  <31.478315, 38.813580, 57.659706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.371618, 39.028294, 57.649040>,  <31.193789, 39.386150, 57.631264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371618, 39.028294, 57.649040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636989, -0.280880, 0.717880,
		-0.629762, -0.347458, -0.694747,
		0.444573, -0.894639, 0.044439,
		31.504990, 38.759903, 57.662373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738649, 38.909286, 57.616924>,  <31.193789, 39.386150, 57.631264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738649, 38.909286, 57.616924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.030495, 38.745441, 57.835972>,  <31.205601, 38.647137, 57.967400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.030495, 38.745441, 57.835972>,  <30.738649, 38.909286, 57.616924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030495, 38.745441, 57.835972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674921, -0.302242, 0.673150,
		-0.110215, -0.860738, -0.496973,
		0.729612, -0.409609, 0.547619,
		31.249378, 38.622559, 58.000256>
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
