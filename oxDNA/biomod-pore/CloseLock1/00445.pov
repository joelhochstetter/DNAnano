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
	<23.977728, 35.511852, 34.944504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213110, 35.194138, 35.004944>,  <24.354340, 35.003510, 35.041206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213110, 35.194138, 35.004944>,  <23.977728, 35.511852, 34.944504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213110, 35.194138, 35.004944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669666, 0.374083, -0.641568,
		0.453067, 0.478717, 0.752038,
		0.588454, -0.794287, 0.151095,
		24.389647, 34.955853, 35.050274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595650, 35.676952, 35.095074>,  <23.977728, 35.511852, 34.944504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595650, 35.676952, 35.095074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614759, 35.319763, 34.916046>,  <24.626226, 35.105450, 34.808628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614759, 35.319763, 34.916046>,  <24.595650, 35.676952, 35.095074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.614759, 35.319763, 34.916046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721891, 0.340558, -0.602407,
		0.690356, -0.294317, 0.660898,
		0.047776, -0.892971, -0.447571,
		24.629093, 35.051872, 34.781776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385778, 35.345913, 35.018196>,  <24.595650, 35.676952, 35.095074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385778, 35.345913, 35.018196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135426, 35.182625, 34.752377>,  <24.985214, 35.084652, 34.592884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135426, 35.182625, 34.752377>,  <25.385778, 35.345913, 35.018196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135426, 35.182625, 34.752377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665430, 0.164917, -0.728014,
		0.406787, -0.897863, 0.168424,
		-0.625881, -0.408221, -0.664551,
		24.947660, 35.060158, 34.553013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677603, 34.756886, 34.682884>,  <25.385778, 35.345913, 35.018196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677603, 34.756886, 34.682884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416317, 34.950520, 34.450001>,  <25.259546, 35.066700, 34.310268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416317, 34.950520, 34.450001>,  <25.677603, 34.756886, 34.682884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416317, 34.950520, 34.450001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742916, 0.261249, -0.616300,
		-0.146243, -0.835109, -0.530289,
		-0.653215, 0.484090, -0.582210,
		25.220352, 35.095745, 34.275337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803518, 34.580280, 34.009018>,  <25.677603, 34.756886, 34.682884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803518, 34.580280, 34.009018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647760, 34.948406, 34.023956>,  <25.554306, 35.169281, 34.032921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647760, 34.948406, 34.023956>,  <25.803518, 34.580280, 34.009018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647760, 34.948406, 34.023956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750610, 0.340571, -0.566212,
		-0.533812, -0.192446, -0.823413,
		-0.389396, 0.920313, 0.037349,
		25.530941, 35.224499, 34.035160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686972, 34.843952, 33.329060>,  <25.803518, 34.580280, 34.009018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686972, 34.843952, 33.329060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732046, 35.138359, 33.596066>,  <25.759090, 35.315002, 33.756271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732046, 35.138359, 33.596066>,  <25.686972, 34.843952, 33.329060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732046, 35.138359, 33.596066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878546, 0.240028, -0.412969,
		-0.464176, 0.632979, -0.619579,
		0.112685, 0.736019, 0.667517,
		25.765852, 35.359165, 33.796322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557062, 35.527843, 33.198349>,  <25.686972, 34.843952, 33.329060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557062, 35.527843, 33.198349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870596, 35.541904, 33.446339>,  <26.058716, 35.550343, 33.595131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870596, 35.541904, 33.446339>,  <25.557062, 35.527843, 33.198349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870596, 35.541904, 33.446339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597028, 0.231884, -0.767976,
		-0.170758, 0.972108, 0.160772,
		0.783836, 0.035152, 0.619972,
		26.105747, 35.552448, 33.632332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016706, 36.143742, 33.120186>,  <25.557062, 35.527843, 33.198349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016706, 36.143742, 33.120186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254690, 35.855076, 33.261734>,  <26.397480, 35.681877, 33.346664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254690, 35.855076, 33.261734>,  <26.016706, 36.143742, 33.120186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254690, 35.855076, 33.261734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666973, 0.197603, -0.718401,
		0.448517, 0.663442, 0.598896,
		0.594961, -0.721663, 0.353870,
		26.433178, 35.638577, 33.367893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678049, 36.385910, 33.252033>,  <26.016706, 36.143742, 33.120186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678049, 36.385910, 33.252033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701134, 35.989429, 33.204376>,  <26.714985, 35.751541, 33.175781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701134, 35.989429, 33.204376>,  <26.678049, 36.385910, 33.252033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701134, 35.989429, 33.204376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633145, 0.128613, -0.763273,
		0.771878, -0.031388, 0.634995,
		0.057711, -0.991198, -0.119147,
		26.718447, 35.692070, 33.168633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043074, 36.369808, 32.807117>,  <26.678049, 36.385910, 33.252033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043074, 36.369808, 32.807117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996698, 35.972507, 32.808239>,  <26.968872, 35.734127, 32.808910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996698, 35.972507, 32.808239>,  <27.043074, 36.369808, 32.807117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996698, 35.972507, 32.808239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472013, -0.057576, -0.879710,
		0.873935, -0.100672, 0.475503,
		-0.115940, -0.993252, 0.002799,
		26.961916, 35.674530, 32.809078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654985, 35.986771, 32.715183>,  <27.043074, 36.369808, 32.807117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654985, 35.986771, 32.715183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361090, 35.751507, 32.579994>,  <27.184752, 35.610348, 32.498878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361090, 35.751507, 32.579994>,  <27.654985, 35.986771, 32.715183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361090, 35.751507, 32.579994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456190, -0.059674, -0.887879,
		0.502044, -0.806542, 0.312157,
		-0.734740, -0.588158, -0.337977,
		27.140667, 35.575058, 32.478600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998056, 35.487701, 32.195385>,  <27.654985, 35.986771, 32.715183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998056, 35.487701, 32.195385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601305, 35.457020, 32.154804>,  <27.363255, 35.438610, 32.130455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601305, 35.457020, 32.154804>,  <27.998056, 35.487701, 32.195385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601305, 35.457020, 32.154804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122300, -0.356267, -0.926346,
		0.034913, -0.931230, 0.362755,
		-0.991879, -0.076707, -0.101451,
		27.303741, 35.434010, 32.124371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998251, 34.822594, 31.969707>,  <27.998056, 35.487701, 32.195385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998251, 34.822594, 31.969707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677469, 35.044865, 31.881987>,  <27.485001, 35.178226, 31.829355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677469, 35.044865, 31.881987>,  <27.998251, 34.822594, 31.969707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677469, 35.044865, 31.881987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159429, -0.154704, -0.975012,
		-0.575721, -0.816876, 0.035474,
		-0.801952, 0.555679, -0.219300,
		27.436884, 35.211567, 31.816196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651716, 34.431580, 31.535198>,  <27.998251, 34.822594, 31.969707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651716, 34.431580, 31.535198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512283, 34.798084, 31.456251>,  <27.428623, 35.017986, 31.408884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512283, 34.798084, 31.456251>,  <27.651716, 34.431580, 31.535198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512283, 34.798084, 31.456251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212207, -0.127953, -0.968812,
		-0.912939, -0.379594, -0.149834,
		-0.348583, 0.916263, -0.197366,
		27.407709, 35.072964, 31.397041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396336, 34.407860, 30.728708>,  <27.651716, 34.431580, 31.535198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396336, 34.407860, 30.728708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392004, 34.798676, 30.813829>,  <27.389404, 35.033165, 30.864902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392004, 34.798676, 30.813829>,  <27.396336, 34.407860, 30.728708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392004, 34.798676, 30.813829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356773, 0.202584, -0.911961,
		-0.934128, 0.066048, -0.350773,
		-0.010828, 0.977035, 0.212804,
		27.388756, 35.091785, 30.877670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930132, 34.815975, 30.146904>,  <27.396336, 34.407860, 30.728708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930132, 34.815975, 30.146904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184143, 35.076164, 30.313580>,  <27.336550, 35.232277, 30.413584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184143, 35.076164, 30.313580>,  <26.930132, 34.815975, 30.146904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184143, 35.076164, 30.313580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317625, 0.271840, -0.908415,
		-0.704169, 0.709219, -0.033980,
		0.635028, 0.650470, 0.416687,
		27.374651, 35.271305, 30.438585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807997, 35.489807, 29.865271>,  <26.930132, 34.815975, 30.146904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807997, 35.489807, 29.865271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180439, 35.519978, 30.008017>,  <27.403904, 35.538082, 30.093664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180439, 35.519978, 30.008017>,  <26.807997, 35.489807, 29.865271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180439, 35.519978, 30.008017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305845, 0.371654, -0.876546,
		-0.198746, 0.925302, 0.322981,
		0.931106, 0.075428, 0.356863,
		27.459770, 35.542606, 30.115076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999514, 36.198296, 29.662512>,  <26.807997, 35.489807, 29.865271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999514, 36.198296, 29.662512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321404, 35.969849, 29.727308>,  <27.514538, 35.832779, 29.766186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321404, 35.969849, 29.727308>,  <26.999514, 36.198296, 29.662512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321404, 35.969849, 29.727308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338159, 0.216721, -0.915795,
		0.487923, 0.791740, 0.367531,
		0.804723, -0.571122, 0.161991,
		27.562820, 35.798512, 29.775906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633963, 36.624023, 29.438190>,  <26.999514, 36.198296, 29.662512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633963, 36.624023, 29.438190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797045, 36.258793, 29.434780>,  <27.894894, 36.039654, 29.432734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797045, 36.258793, 29.434780>,  <27.633963, 36.624023, 29.438190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797045, 36.258793, 29.434780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319546, 0.151418, -0.935395,
		0.855375, 0.378641, 0.353503,
		0.407706, -0.913073, -0.008526,
		27.919357, 35.984871, 29.432222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308727, 36.765099, 29.159695>,  <27.633963, 36.624023, 29.438190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308727, 36.765099, 29.159695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209181, 36.379021, 29.127514>,  <28.149454, 36.147373, 29.108206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209181, 36.379021, 29.127514>,  <28.308727, 36.765099, 29.159695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209181, 36.379021, 29.127514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339821, -0.009228, -0.940445,
		0.906966, -0.261383, 0.330288,
		-0.248865, -0.965191, -0.080454,
		28.134521, 36.089462, 29.103378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014690, 36.347759, 28.900030>,  <28.308727, 36.765099, 29.159695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014690, 36.347759, 28.900030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681648, 36.142494, 28.816673>,  <28.481823, 36.019333, 28.766659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681648, 36.142494, 28.816673>,  <29.014690, 36.347759, 28.900030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681648, 36.142494, 28.816673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306575, -0.113640, -0.945039,
		0.461280, -0.850733, 0.251941,
		-0.832606, -0.513166, -0.208394,
		28.431866, 35.988544, 28.754154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287699, 35.962791, 28.335909>,  <29.014690, 36.347759, 28.900030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287699, 35.962791, 28.335909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889429, 35.926292, 28.328892>,  <28.650467, 35.904392, 28.324680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889429, 35.926292, 28.328892>,  <29.287699, 35.962791, 28.335909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889429, 35.926292, 28.328892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034808, -0.191220, -0.980930,
		0.086152, -0.977297, 0.193569,
		-0.995674, -0.091247, -0.017544,
		28.590727, 35.898918, 28.323629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174980, 35.312202, 27.954027>,  <29.287699, 35.962791, 28.335909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174980, 35.312202, 27.954027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854258, 35.551220, 27.956934>,  <28.661823, 35.694630, 27.958677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854258, 35.551220, 27.956934>,  <29.174980, 35.312202, 27.954027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854258, 35.551220, 27.956934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076829, -0.091019, -0.992881,
		-0.592625, -0.796656, 0.118888,
		-0.801806, 0.597540, 0.007266,
		28.613716, 35.730480, 27.959114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717619, 34.979080, 27.495005>,  <29.174980, 35.312202, 27.954027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717619, 34.979080, 27.495005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610451, 35.363926, 27.515215>,  <28.546150, 35.594833, 27.527342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610451, 35.363926, 27.515215>,  <28.717619, 34.979080, 27.495005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610451, 35.363926, 27.515215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080811, 0.074700, -0.993926,
		-0.960047, -0.262208, -0.097763,
		-0.267918, 0.962116, 0.050526,
		28.530075, 35.652561, 27.530373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229855, 34.981850, 27.011507>,  <28.717619, 34.979080, 27.495005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229855, 34.981850, 27.011507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347107, 35.358898, 27.075443>,  <28.417458, 35.585125, 27.113804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347107, 35.358898, 27.075443>,  <28.229855, 34.981850, 27.011507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347107, 35.358898, 27.075443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146514, 0.120920, -0.981790,
		-0.944780, 0.311211, -0.102662,
		0.293130, 0.942617, 0.159839,
		28.435045, 35.641682, 27.123396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972794, 35.556301, 26.579914>,  <28.229855, 34.981850, 27.011507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972794, 35.556301, 26.579914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303181, 35.752110, 26.691732>,  <28.501413, 35.869595, 26.758823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303181, 35.752110, 26.691732>,  <27.972794, 35.556301, 26.579914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303181, 35.752110, 26.691732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075249, 0.395719, -0.915284,
		-0.558670, 0.777032, 0.290016,
		0.825969, 0.489518, 0.279548,
		28.550972, 35.898964, 26.775597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872524, 36.178566, 26.407124>,  <27.972794, 35.556301, 26.579914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872524, 36.178566, 26.407124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267576, 36.125179, 26.374189>,  <28.504606, 36.093147, 26.354429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267576, 36.125179, 26.374189>,  <27.872524, 36.178566, 26.407124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267576, 36.125179, 26.374189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000232, 0.523794, -0.851845,
		0.156818, 0.841325, 0.517282,
		0.987628, -0.133464, -0.082336,
		28.563864, 36.085140, 26.349489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862988, 36.989738, 26.512999>,  <27.872524, 36.178566, 26.407124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862988, 36.989738, 26.512999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182938, 37.223019, 26.569685>,  <28.374907, 37.362988, 26.603697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182938, 37.223019, 26.569685>,  <27.862988, 36.989738, 26.512999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182938, 37.223019, 26.569685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424516, -0.382857, -0.820492,
		-0.424251, 0.716451, -0.553814,
		0.799873, 0.583197, 0.141717,
		28.422899, 37.397976, 26.612200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965006, 37.269188, 25.903324>,  <27.862988, 36.989738, 26.512999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965006, 37.269188, 25.903324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310068, 37.260460, 26.105453>,  <28.517105, 37.255222, 26.226730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310068, 37.260460, 26.105453>,  <27.965006, 37.269188, 25.903324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310068, 37.260460, 26.105453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482018, -0.267230, -0.834414,
		0.153247, 0.963386, -0.220008,
		0.862655, -0.021823, 0.505322,
		28.568865, 37.253914, 26.257050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516531, 37.619621, 25.439604>,  <27.965006, 37.269188, 25.903324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516531, 37.619621, 25.439604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712303, 37.381973, 25.694941>,  <28.829767, 37.239384, 25.848143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712303, 37.381973, 25.694941>,  <28.516531, 37.619621, 25.439604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712303, 37.381973, 25.694941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506392, -0.402313, -0.762700,
		0.709947, 0.696541, 0.103952,
		0.489431, -0.594117, 0.638344,
		28.859133, 37.203739, 25.886444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310125, 37.802700, 25.504095>,  <28.516531, 37.619621, 25.439604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310125, 37.802700, 25.504095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215357, 37.421242, 25.578310>,  <29.158495, 37.192368, 25.622839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215357, 37.421242, 25.578310>,  <29.310125, 37.802700, 25.504095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215357, 37.421242, 25.578310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669613, -0.298656, -0.680017,
		0.703909, -0.036873, 0.709333,
		-0.236921, -0.953648, 0.185536,
		29.144281, 37.135147, 25.633970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868654, 37.425556, 25.624071>,  <29.310125, 37.802700, 25.504095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868654, 37.425556, 25.624071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616432, 37.147343, 25.486296>,  <29.465099, 36.980415, 25.403631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616432, 37.147343, 25.486296>,  <29.868654, 37.425556, 25.624071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616432, 37.147343, 25.486296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718785, -0.355872, -0.597246,
		0.292827, -0.624173, 0.724334,
		-0.630556, -0.695530, -0.344437,
		29.427265, 36.938683, 25.382965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656223, 37.399475, 25.687315>,  <29.868654, 37.425556, 25.624071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656223, 37.399475, 25.687315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044333, 37.485809, 25.731096>,  <31.277199, 37.537609, 25.757366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044333, 37.485809, 25.731096>,  <30.656223, 37.399475, 25.687315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044333, 37.485809, 25.731096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136497, 0.114607, 0.983989,
		0.199843, -0.969679, 0.140662,
		0.970274, 0.215843, 0.109455,
		31.335415, 37.550560, 25.763933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673054, 37.137325, 26.425703>,  <30.656223, 37.399475, 25.687315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673054, 37.137325, 26.425703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980186, 37.351879, 26.285574>,  <31.164467, 37.480610, 26.201496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980186, 37.351879, 26.285574>,  <30.673054, 37.137325, 26.425703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980186, 37.351879, 26.285574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067003, 0.476591, 0.876568,
		0.637136, -0.696531, 0.330003,
		0.767834, 0.536382, -0.350322,
		31.210537, 37.512794, 26.180477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322498, 36.978043, 26.802094>,  <30.673054, 37.137325, 26.425703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322498, 36.978043, 26.802094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274632, 37.351990, 26.668407>,  <31.245911, 37.576359, 26.588196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274632, 37.351990, 26.668407>,  <31.322498, 36.978043, 26.802094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274632, 37.351990, 26.668407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133064, 0.348697, 0.927741,
		0.983856, 0.066549, -0.166125,
		-0.119668, 0.934870, -0.334213,
		31.238731, 37.632450, 26.568144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927214, 37.372356, 26.963663>,  <31.322498, 36.978043, 26.802094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927214, 37.372356, 26.963663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606533, 37.611252, 26.954067>,  <31.414124, 37.754589, 26.948309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606533, 37.611252, 26.954067>,  <31.927214, 37.372356, 26.963663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606533, 37.611252, 26.954067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120708, 0.201078, 0.972110,
		0.585408, 0.776447, -0.233297,
		-0.801703, 0.597241, -0.023989,
		31.366022, 37.790424, 26.946871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110355, 38.102726, 27.216820>,  <31.927214, 37.372356, 26.963663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110355, 38.102726, 27.216820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733271, 37.988419, 27.285683>,  <31.507021, 37.919834, 27.327000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733271, 37.988419, 27.285683>,  <32.110355, 38.102726, 27.216820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733271, 37.988419, 27.285683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116554, 0.201404, 0.972549,
		-0.312593, 0.936897, -0.156558,
		-0.942709, -0.285765, 0.172157,
		31.450459, 37.902691, 27.337330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942846, 38.497105, 27.771868>,  <32.110355, 38.102726, 27.216820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942846, 38.497105, 27.771868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668455, 38.206612, 27.753893>,  <31.503820, 38.032314, 27.743107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668455, 38.206612, 27.753893>,  <31.942846, 38.497105, 27.771868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668455, 38.206612, 27.753893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231453, 0.159238, 0.959725,
		-0.689827, 0.668753, -0.277322,
		-0.685979, -0.726232, -0.044938,
		31.462662, 37.988743, 27.740412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445702, 38.788635, 28.076906>,  <31.942846, 38.497105, 27.771868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445702, 38.788635, 28.076906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349506, 38.400635, 28.091162>,  <31.291790, 38.167835, 28.099716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349506, 38.400635, 28.091162>,  <31.445702, 38.788635, 28.076906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349506, 38.400635, 28.091162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189413, 0.082909, 0.978391,
		-0.951992, 0.228539, -0.203668,
		-0.240486, -0.969998, 0.035641,
		31.277361, 38.109634, 28.101854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839041, 38.707272, 28.469316>,  <31.445702, 38.788635, 28.076906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839041, 38.707272, 28.469316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984955, 38.335079, 28.482817>,  <31.072504, 38.111763, 28.490917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984955, 38.335079, 28.482817>,  <30.839041, 38.707272, 28.469316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984955, 38.335079, 28.482817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276847, -0.073782, 0.958077,
		-0.888981, -0.358836, -0.284515,
		0.364785, -0.930480, 0.033752,
		31.094391, 38.055935, 28.492943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353743, 38.389057, 28.854834>,  <30.839041, 38.707272, 28.469316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353743, 38.389057, 28.854834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688894, 38.170738, 28.858097>,  <30.889984, 38.039745, 28.860054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688894, 38.170738, 28.858097>,  <30.353743, 38.389057, 28.854834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688894, 38.170738, 28.858097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147898, -0.212608, 0.965880,
		-0.525441, -0.810495, -0.258862,
		0.837878, -0.545798, 0.008158,
		30.940258, 38.007000, 28.860544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078976, 37.801994, 28.990263>,  <30.353743, 38.389057, 28.854834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078976, 37.801994, 28.990263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470470, 37.801193, 29.072304>,  <30.705368, 37.800713, 29.121529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470470, 37.801193, 29.072304>,  <30.078976, 37.801994, 28.990263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470470, 37.801193, 29.072304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194739, -0.323032, 0.926136,
		0.064404, -0.946386, -0.316553,
		0.978739, -0.001999, 0.205102,
		30.764091, 37.800594, 29.133835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222755, 37.235710, 29.396763>,  <30.078976, 37.801994, 28.990263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222755, 37.235710, 29.396763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511089, 37.499504, 29.482063>,  <30.684090, 37.657780, 29.533243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511089, 37.499504, 29.482063>,  <30.222755, 37.235710, 29.396763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511089, 37.499504, 29.482063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092699, -0.213181, 0.972605,
		0.686883, -0.720854, -0.092534,
		0.720832, 0.659488, 0.213253,
		30.727339, 37.697350, 29.546040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609747, 36.926769, 29.981712>,  <30.222755, 37.235710, 29.396763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609747, 36.926769, 29.981712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710438, 37.313801, 29.973480>,  <30.770853, 37.546021, 29.968542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710438, 37.313801, 29.973480>,  <30.609747, 36.926769, 29.981712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710438, 37.313801, 29.973480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000020, 0.021268, 0.999774,
		0.967798, -0.251669, 0.005373,
		0.251727, 0.967579, -0.020578,
		30.785955, 37.604076, 29.967306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105919, 37.038921, 30.418041>,  <30.609747, 36.926769, 29.981712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105919, 37.038921, 30.418041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954214, 37.407524, 30.384624>,  <30.863192, 37.628685, 30.364574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954214, 37.407524, 30.384624>,  <31.105919, 37.038921, 30.418041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954214, 37.407524, 30.384624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206542, 0.003697, 0.978431,
		0.901943, 0.388336, 0.188929,
		-0.379261, 0.921511, -0.083542,
		30.840435, 37.683979, 30.359562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214075, 37.404442, 31.047443>,  <31.105919, 37.038921, 30.418041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214075, 37.404442, 31.047443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912222, 37.613708, 30.889040>,  <30.731110, 37.739269, 30.793999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912222, 37.613708, 30.889040>,  <31.214075, 37.404442, 31.047443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912222, 37.613708, 30.889040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412007, 0.091903, 0.906534,
		0.510666, 0.847259, 0.146196,
		-0.754633, 0.523170, -0.396008,
		30.685831, 37.770660, 30.770237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992582, 37.818432, 31.664097>,  <31.214075, 37.404442, 31.047443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992582, 37.818432, 31.664097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700531, 37.867825, 31.395271>,  <30.525301, 37.897461, 31.233976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700531, 37.867825, 31.395271>,  <30.992582, 37.818432, 31.664097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700531, 37.867825, 31.395271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680094, -0.035979, 0.732241,
		0.066242, 0.991694, 0.110252,
		-0.730126, 0.123486, -0.672062,
		30.481493, 37.904869, 31.193653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593683, 38.290924, 32.032681>,  <30.992582, 37.818432, 31.664097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593683, 38.290924, 32.032681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354525, 38.149597, 31.744879>,  <30.211029, 38.064800, 31.572197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354525, 38.149597, 31.744879>,  <30.593683, 38.290924, 32.032681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354525, 38.149597, 31.744879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745705, -0.084077, 0.660950,
		-0.294018, 0.931718, -0.213200,
		-0.597895, -0.353315, -0.719507,
		30.175156, 38.043602, 31.529026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852934, 38.535278, 32.180824>,  <30.593683, 38.290924, 32.032681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852934, 38.535278, 32.180824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852722, 38.190125, 31.978662>,  <29.852594, 37.983032, 31.857367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852722, 38.190125, 31.978662>,  <29.852934, 38.535278, 32.180824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852722, 38.190125, 31.978662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699272, -0.360970, 0.617024,
		-0.714855, 0.353739, -0.603200,
		-0.000529, -0.862884, -0.505401,
		29.852564, 37.931259, 31.827042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227680, 38.303318, 32.216290>,  <29.852934, 38.535278, 32.180824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227680, 38.303318, 32.216290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433825, 37.974033, 32.121025>,  <29.557510, 37.776463, 32.063866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433825, 37.974033, 32.121025>,  <29.227680, 38.303318, 32.216290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433825, 37.974033, 32.121025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412117, -0.481736, 0.773363,
		-0.751376, -0.300409, -0.587528,
		0.515358, -0.823216, -0.238161,
		29.588432, 37.727070, 32.049576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829149, 37.756542, 32.432953>,  <29.227680, 38.303318, 32.216290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829149, 37.756542, 32.432953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159494, 37.537407, 32.379551>,  <29.357700, 37.405926, 32.347507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159494, 37.537407, 32.379551>,  <28.829149, 37.756542, 32.432953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159494, 37.537407, 32.379551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324890, -0.655831, 0.681419,
		-0.460866, -0.519383, -0.719614,
		0.825862, -0.547838, -0.133508,
		29.407253, 37.373055, 32.339497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584810, 37.106770, 32.535446>,  <28.829149, 37.756542, 32.432953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584810, 37.106770, 32.535446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978443, 37.036320, 32.544975>,  <29.214622, 36.994049, 32.550694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978443, 37.036320, 32.544975>,  <28.584810, 37.106770, 32.535446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978443, 37.036320, 32.544975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151621, -0.762037, 0.629532,
		-0.092720, -0.623122, -0.776609,
		0.984080, -0.176120, 0.023822,
		29.273666, 36.983482, 32.552120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668295, 36.476776, 32.255394>,  <28.584810, 37.106770, 32.535446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668295, 36.476776, 32.255394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988573, 36.553658, 32.482353>,  <29.180740, 36.599789, 32.618530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988573, 36.553658, 32.482353>,  <28.668295, 36.476776, 32.255394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988573, 36.553658, 32.482353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141015, -0.860050, 0.490335,
		0.582240, -0.472621, -0.661533,
		0.800695, 0.192207, 0.567402,
		29.228781, 36.611320, 32.652573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957155, 35.822876, 32.351341>,  <28.668295, 36.476776, 32.255394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957155, 35.822876, 32.351341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095057, 36.041523, 32.656590>,  <29.177797, 36.172710, 32.839737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095057, 36.041523, 32.656590>,  <28.957155, 35.822876, 32.351341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095057, 36.041523, 32.656590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186730, -0.756778, 0.626434,
		0.919933, -0.358463, -0.158832,
		0.344754, 0.546619, 0.763121,
		29.198483, 36.205509, 32.885525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125671, 35.378014, 32.861485>,  <28.957155, 35.822876, 32.351341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125671, 35.378014, 32.861485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146992, 35.703098, 33.093575>,  <29.159784, 35.898148, 33.232830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146992, 35.703098, 33.093575>,  <29.125671, 35.378014, 32.861485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146992, 35.703098, 33.093575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218825, -0.557426, 0.800869,
		0.974307, -0.169654, 0.148131,
		0.053299, 0.812708, 0.580229,
		29.162981, 35.946911, 33.267643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611595, 35.300919, 33.319756>,  <29.125671, 35.378014, 32.861485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611595, 35.300919, 33.319756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360645, 35.561333, 33.490658>,  <29.210075, 35.717583, 33.593201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360645, 35.561333, 33.490658>,  <29.611595, 35.300919, 33.319756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360645, 35.561333, 33.490658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118291, -0.621976, 0.774050,
		0.769682, 0.435077, 0.467223,
		-0.627373, 0.651040, 0.427258,
		29.172434, 35.756645, 33.618835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718662, 35.206783, 34.030952>,  <29.611595, 35.300919, 33.319756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718662, 35.206783, 34.030952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376713, 35.413902, 34.017834>,  <29.171543, 35.538174, 34.009960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376713, 35.413902, 34.017834>,  <29.718662, 35.206783, 34.030952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376713, 35.413902, 34.017834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203259, -0.276067, 0.939400,
		0.477366, 0.809735, 0.341249,
		-0.854873, 0.517799, -0.032801,
		29.120251, 35.569241, 34.007992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717489, 35.558445, 34.671898>,  <29.718662, 35.206783, 34.030952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717489, 35.558445, 34.671898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343321, 35.522633, 34.535095>,  <29.118820, 35.501144, 34.453014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343321, 35.522633, 34.535095>,  <29.717489, 35.558445, 34.671898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343321, 35.522633, 34.535095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289410, -0.361688, 0.886241,
		-0.203044, 0.927991, 0.312420,
		-0.935422, -0.089529, -0.342009,
		29.062695, 35.495773, 34.432491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342073, 35.970093, 35.097126>,  <29.717489, 35.558445, 34.671898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342073, 35.970093, 35.097126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183107, 35.635780, 34.945587>,  <29.087729, 35.435192, 34.854664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183107, 35.635780, 34.945587>,  <29.342073, 35.970093, 35.097126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183107, 35.635780, 34.945587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160941, -0.342968, 0.925457,
		-0.903415, 0.428763, 0.001789,
		-0.397415, -0.835784, -0.378848,
		29.063883, 35.385044, 34.831932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763670, 35.822002, 35.466301>,  <29.342073, 35.970093, 35.097126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763670, 35.822002, 35.466301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904936, 35.471672, 35.334724>,  <28.989695, 35.261475, 35.255779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904936, 35.471672, 35.334724>,  <28.763670, 35.822002, 35.466301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904936, 35.471672, 35.334724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076998, -0.377618, 0.922754,
		-0.932388, -0.300554, -0.200798,
		0.353163, -0.875826, -0.328945,
		29.010885, 35.208923, 35.236042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210300, 35.344826, 35.688984>,  <28.763670, 35.822002, 35.466301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210300, 35.344826, 35.688984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596256, 35.244434, 35.658001>,  <28.827829, 35.184200, 35.639412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596256, 35.244434, 35.658001>,  <28.210300, 35.344826, 35.688984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596256, 35.244434, 35.658001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016347, -0.351712, 0.935966,
		-0.262150, -0.901836, -0.343466,
		0.964889, -0.250978, -0.077459,
		28.885723, 35.169140, 35.634762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252426, 34.682716, 36.057823>,  <28.210300, 35.344826, 35.688984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252426, 34.682716, 36.057823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598862, 34.882671, 36.057777>,  <28.806723, 35.002644, 36.057751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598862, 34.882671, 36.057777>,  <28.252426, 34.682716, 36.057823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598862, 34.882671, 36.057777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117281, -0.202965, 0.972137,
		0.485936, -0.841972, -0.234414,
		0.866090, 0.499889, -0.000119,
		28.858688, 35.032639, 36.057743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767500, 34.190300, 36.210918>,  <28.252426, 34.682716, 36.057823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767500, 34.190300, 36.210918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838486, 34.571945, 36.307400>,  <28.881077, 34.800934, 36.365288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838486, 34.571945, 36.307400>,  <28.767500, 34.190300, 36.210918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838486, 34.571945, 36.307400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018157, -0.241876, 0.970138,
		0.983960, -0.176543, -0.025600,
		0.177463, 0.954112, 0.241202,
		28.891726, 34.858177, 36.379761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351688, 34.235126, 36.629105>,  <28.767500, 34.190300, 36.210918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351688, 34.235126, 36.629105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071184, 34.512409, 36.695679>,  <28.902882, 34.678780, 36.735622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071184, 34.512409, 36.695679>,  <29.351688, 34.235126, 36.629105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071184, 34.512409, 36.695679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070360, -0.165017, 0.983778,
		0.709423, 0.701596, 0.066947,
		-0.701262, 0.693205, 0.166431,
		28.860806, 34.720371, 36.745609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953262, 34.612068, 36.750408>,  <29.351688, 34.235126, 36.629105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953262, 34.612068, 36.750408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216038, 34.322132, 36.833385>,  <30.373703, 34.148170, 36.883171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216038, 34.322132, 36.833385>,  <29.953262, 34.612068, 36.750408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216038, 34.322132, 36.833385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394862, 0.565173, 0.724337,
		-0.642272, -0.393934, 0.657497,
		0.656941, -0.724842, 0.207446,
		30.413120, 34.104679, 36.895618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947014, 34.553955, 37.426067>,  <29.953262, 34.612068, 36.750408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947014, 34.553955, 37.426067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304226, 34.403641, 37.327045>,  <30.518553, 34.313454, 37.267632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304226, 34.403641, 37.327045>,  <29.947014, 34.553955, 37.426067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304226, 34.403641, 37.327045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428952, 0.544620, 0.720687,
		-0.135998, -0.749785, 0.647555,
		0.893031, -0.375782, -0.247554,
		30.572136, 34.290905, 37.252781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305733, 34.446072, 38.060146>,  <29.947014, 34.553955, 37.426067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305733, 34.446072, 38.060146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596014, 34.419331, 37.786247>,  <30.770184, 34.403286, 37.621906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596014, 34.419331, 37.786247>,  <30.305733, 34.446072, 38.060146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596014, 34.419331, 37.786247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655144, 0.371078, 0.658094,
		0.210100, -0.926192, 0.313092,
		0.725703, -0.066855, -0.684752,
		30.813725, 34.399273, 37.580822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829521, 34.131310, 38.417282>,  <30.305733, 34.446072, 38.060146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829521, 34.131310, 38.417282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003214, 34.333961, 38.119350>,  <31.107430, 34.455555, 37.940594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003214, 34.333961, 38.119350>,  <30.829521, 34.131310, 38.417282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003214, 34.333961, 38.119350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616222, 0.436040, 0.655850,
		0.657050, -0.743768, -0.122857,
		0.434230, 0.506634, -0.744826,
		31.133484, 34.485950, 37.895901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476776, 33.992996, 38.561256>,  <30.829521, 34.131310, 38.417282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476776, 33.992996, 38.561256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484650, 34.309887, 38.317295>,  <31.489374, 34.500023, 38.170918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484650, 34.309887, 38.317295>,  <31.476776, 33.992996, 38.561256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484650, 34.309887, 38.317295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635103, 0.461231, 0.619605,
		0.772177, -0.399550, -0.494068,
		0.019684, 0.792229, -0.609907,
		31.490555, 34.547554, 38.134323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191238, 34.069122, 38.353935>,  <31.476776, 33.992996, 38.561256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191238, 34.069122, 38.353935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997080, 34.418697, 38.363892>,  <31.880583, 34.628441, 38.369865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997080, 34.418697, 38.363892>,  <32.191238, 34.069122, 38.353935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997080, 34.418697, 38.363892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667092, 0.351815, 0.656669,
		0.565132, 0.335350, -0.753768,
		-0.485401, 0.873938, 0.024887,
		31.851460, 34.680878, 38.371357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648674, 34.458542, 38.620728>,  <32.191238, 34.069122, 38.353935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648674, 34.458542, 38.620728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328945, 34.697815, 38.643551>,  <32.137108, 34.841381, 38.657246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328945, 34.697815, 38.643551>,  <32.648674, 34.458542, 38.620728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328945, 34.697815, 38.643551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339490, 0.371207, 0.864264,
		0.495809, 0.710198, -0.499792,
		-0.799325, 0.598184, 0.057057,
		32.089149, 34.877270, 38.660667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860394, 35.075623, 38.823742>,  <32.648674, 34.458542, 38.620728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860394, 35.075623, 38.823742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471111, 35.104080, 38.911198>,  <32.237541, 35.121155, 38.963673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471111, 35.104080, 38.911198>,  <32.860394, 35.075623, 38.823742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471111, 35.104080, 38.911198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227388, 0.438564, 0.869458,
		-0.034033, 0.895880, -0.442991,
		-0.973209, 0.071141, 0.218638,
		32.179150, 35.125423, 38.976788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760647, 35.750656, 38.971596>,  <32.860394, 35.075623, 38.823742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760647, 35.750656, 38.971596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465519, 35.541142, 39.141895>,  <32.288441, 35.415432, 39.244076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465519, 35.541142, 39.141895>,  <32.760647, 35.750656, 38.971596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465519, 35.541142, 39.141895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126253, 0.512528, 0.849338,
		-0.663085, 0.680412, -0.312023,
		-0.737820, -0.523789, 0.425753,
		32.244171, 35.384007, 39.269623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365707, 36.246292, 39.388866>,  <32.760647, 35.750656, 38.971596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365707, 36.246292, 39.388866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277046, 35.875736, 39.510639>,  <32.223850, 35.653404, 39.583702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277046, 35.875736, 39.510639>,  <32.365707, 36.246292, 39.388866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277046, 35.875736, 39.510639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043851, 0.302417, 0.952167,
		-0.974140, 0.224397, -0.026408,
		-0.221649, -0.926385, 0.304437,
		32.210552, 35.597820, 39.601971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947048, 36.359688, 39.889030>,  <32.365707, 36.246292, 39.388866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947048, 36.359688, 39.889030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052647, 35.983540, 39.974831>,  <32.116005, 35.757851, 40.026310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052647, 35.983540, 39.974831>,  <31.947048, 36.359688, 39.889030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052647, 35.983540, 39.974831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059170, 0.206184, 0.976723,
		-0.962707, -0.270544, -0.001210,
		0.263997, -0.940369, 0.214503,
		32.131847, 35.701427, 40.039181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682430, 36.145447, 40.520081>,  <31.947048, 36.359688, 39.889030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682430, 36.145447, 40.520081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958208, 35.857014, 40.492657>,  <32.123676, 35.683952, 40.476200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958208, 35.857014, 40.492657>,  <31.682430, 36.145447, 40.520081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958208, 35.857014, 40.492657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106865, 0.007638, 0.994244,
		-0.716413, -0.692802, 0.082325,
		0.689443, -0.721087, -0.068564,
		32.165043, 35.640686, 40.472088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495462, 35.602352, 41.036144>,  <31.682430, 36.145447, 40.520081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495462, 35.602352, 41.036144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879217, 35.533913, 40.946430>,  <32.109470, 35.492847, 40.892601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879217, 35.533913, 40.946430>,  <31.495462, 35.602352, 41.036144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879217, 35.533913, 40.946430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217616, -0.057030, 0.974367,
		-0.179509, -0.983601, -0.017478,
		0.959385, -0.171104, -0.224284,
		32.167034, 35.482582, 40.879147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714750, 34.892929, 41.167805>,  <31.495462, 35.602352, 41.036144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714750, 34.892929, 41.167805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054230, 35.102722, 41.195000>,  <32.257919, 35.228600, 41.211319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054230, 35.102722, 41.195000>,  <31.714750, 34.892929, 41.167805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054230, 35.102722, 41.195000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019482, -0.097466, 0.995048,
		0.528517, -0.845821, -0.072501,
		0.848699, 0.524488, 0.067991,
		32.308838, 35.260067, 41.215397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162510, 34.494381, 41.553905>,  <31.714750, 34.892929, 41.167805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162510, 34.494381, 41.553905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318104, 34.861149, 41.589558>,  <32.411461, 35.081211, 41.610950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318104, 34.861149, 41.589558>,  <32.162510, 34.494381, 41.553905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318104, 34.861149, 41.589558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094108, -0.056694, 0.993946,
		0.916425, -0.395017, 0.064237,
		0.388984, 0.916923, 0.089131,
		32.434799, 35.136227, 41.616299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775188, 34.444202, 42.013092>,  <32.162510, 34.494381, 41.553905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775188, 34.444202, 42.013092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675259, 34.831474, 42.019032>,  <32.615299, 35.063835, 42.022594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675259, 34.831474, 42.019032>,  <32.775188, 34.444202, 42.013092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675259, 34.831474, 42.019032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125032, -0.047463, 0.991017,
		0.960185, 0.245723, 0.132910,
		-0.249824, 0.968177, 0.014850,
		32.600311, 35.121929, 42.023487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266273, 34.705086, 42.517765>,  <32.775188, 34.444202, 42.013092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266273, 34.705086, 42.517765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955158, 34.952026, 42.470566>,  <32.768490, 35.100189, 42.442245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955158, 34.952026, 42.470566>,  <33.266273, 34.705086, 42.517765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955158, 34.952026, 42.470566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086214, 0.081167, 0.992965,
		0.622582, 0.782492, -0.009906,
		-0.777791, 0.617348, -0.117995,
		32.721821, 35.137230, 42.435169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281116, 35.103050, 43.045410>,  <33.266273, 34.705086, 42.517765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281116, 35.103050, 43.045410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914616, 35.197838, 42.916206>,  <32.694717, 35.254711, 42.838684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914616, 35.197838, 42.916206>,  <33.281116, 35.103050, 43.045410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914616, 35.197838, 42.916206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311228, 0.086620, 0.946379,
		0.252243, 0.967647, -0.005614,
		-0.916248, 0.236970, -0.323008,
		32.639740, 35.268929, 42.819305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127823, 35.634850, 43.426968>,  <33.281116, 35.103050, 43.045410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127823, 35.634850, 43.426968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781597, 35.473297, 43.308525>,  <32.573860, 35.376366, 43.237461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781597, 35.473297, 43.308525>,  <33.127823, 35.634850, 43.426968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781597, 35.473297, 43.308525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337430, 0.033435, 0.940757,
		-0.370053, 0.914201, -0.165221,
		-0.865565, -0.403880, -0.296106,
		32.521927, 35.352135, 43.219692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582466, 36.078876, 43.804607>,  <33.127823, 35.634850, 43.426968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582466, 36.078876, 43.804607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438728, 35.728138, 43.676849>,  <32.352486, 35.517696, 43.600193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438728, 35.728138, 43.676849>,  <32.582466, 36.078876, 43.804607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438728, 35.728138, 43.676849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417695, -0.154938, 0.895280,
		-0.834509, 0.455121, -0.310578,
		-0.359340, -0.876846, -0.319399,
		32.330925, 35.465084, 43.581028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914867, 36.178989, 44.142647>,  <32.582466, 36.078876, 43.804607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914867, 36.178989, 44.142647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967089, 35.795399, 44.041996>,  <31.998423, 35.565243, 43.981606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967089, 35.795399, 44.041996>,  <31.914867, 36.178989, 44.142647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967089, 35.795399, 44.041996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165872, -0.271350, 0.948080,
		-0.977467, -0.082038, -0.194494,
		0.130555, -0.958978, -0.251628,
		32.006256, 35.507706, 43.966507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501461, 35.919964, 44.516521>,  <31.914867, 36.178989, 44.142647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501461, 35.919964, 44.516521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720510, 35.600227, 44.417595>,  <31.851940, 35.408386, 44.358238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720510, 35.600227, 44.417595>,  <31.501461, 35.919964, 44.516521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720510, 35.600227, 44.417595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160342, -0.390355, 0.906595,
		-0.821217, -0.456819, -0.341936,
		0.547625, -0.799337, -0.247319,
		31.884798, 35.360428, 44.343399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172543, 35.405567, 44.890514>,  <31.501461, 35.919964, 44.516521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172543, 35.405567, 44.890514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528656, 35.262478, 44.777786>,  <31.742325, 35.176624, 44.710148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528656, 35.262478, 44.777786>,  <31.172543, 35.405567, 44.890514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528656, 35.262478, 44.777786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086963, -0.473912, 0.876267,
		-0.447016, -0.804639, -0.390810,
		0.890289, -0.357719, -0.281820,
		31.795742, 35.155159, 44.693241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288486, 34.623596, 45.032909>,  <31.172543, 35.405567, 44.890514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288486, 34.623596, 45.032909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649328, 34.796066, 45.026073>,  <31.865833, 34.899548, 45.021973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649328, 34.796066, 45.026073>,  <31.288486, 34.623596, 45.032909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649328, 34.796066, 45.026073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204904, -0.393164, 0.896346,
		0.379765, -0.812100, -0.443025,
		0.902105, 0.431179, -0.017093,
		31.919960, 34.925419, 45.020947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691263, 34.103359, 45.230679>,  <31.288486, 34.623596, 45.032909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691263, 34.103359, 45.230679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912205, 34.431355, 45.290714>,  <32.044769, 34.628151, 45.326736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912205, 34.431355, 45.290714>,  <31.691263, 34.103359, 45.230679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912205, 34.431355, 45.290714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374911, -0.405173, 0.833833,
		0.744543, -0.404301, -0.531221,
		0.552356, 0.819985, 0.150092,
		32.077911, 34.677349, 45.335743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404728, 33.881725, 45.296013>,  <31.691263, 34.103359, 45.230679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404728, 33.881725, 45.296013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378189, 34.252026, 45.444920>,  <32.362267, 34.474205, 45.534264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378189, 34.252026, 45.444920>,  <32.404728, 33.881725, 45.296013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378189, 34.252026, 45.444920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490864, -0.294537, 0.819939,
		0.868707, 0.237128, -0.434878,
		-0.066343, 0.925753, 0.372264,
		32.358288, 34.529751, 45.556599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984154, 33.931000, 45.596699>,  <32.404728, 33.881725, 45.296013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984154, 33.931000, 45.596699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770176, 34.213116, 45.782772>,  <32.641788, 34.382385, 45.894417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770176, 34.213116, 45.782772>,  <32.984154, 33.931000, 45.596699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770176, 34.213116, 45.782772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432354, -0.244521, 0.867917,
		0.725880, 0.665415, -0.174129,
		-0.534947, 0.705289, 0.465188,
		32.609692, 34.424702, 45.922329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354286, 34.319321, 45.957462>,  <32.984154, 33.931000, 45.596699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354286, 34.319321, 45.957462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015942, 34.363426, 46.166214>,  <32.812935, 34.389889, 46.291466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015942, 34.363426, 46.166214>,  <33.354286, 34.319321, 45.957462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015942, 34.363426, 46.166214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506631, -0.139993, 0.850721,
		0.166861, 0.983994, 0.062554,
		-0.845862, 0.110260, 0.521882,
		32.762184, 34.396503, 46.322777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342686, 34.961594, 46.405743>,  <33.354286, 34.319321, 45.957462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342686, 34.961594, 46.405743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134640, 34.642853, 46.528713>,  <33.009811, 34.451607, 46.602497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134640, 34.642853, 46.528713>,  <33.342686, 34.961594, 46.405743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134640, 34.642853, 46.528713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355898, 0.125002, 0.926127,
		-0.776414, 0.591103, 0.218583,
		-0.520113, -0.796851, 0.307426,
		32.978607, 34.403797, 46.620941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211792, 35.178520, 46.977768>,  <33.342686, 34.961594, 46.405743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211792, 35.178520, 46.977768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196995, 34.779331, 46.998455>,  <33.188118, 34.539818, 47.010868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196995, 34.779331, 46.998455>,  <33.211792, 35.178520, 46.977768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196995, 34.779331, 46.998455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467219, 0.028481, 0.883683,
		-0.883368, 0.056855, 0.465220,
		-0.036992, -0.997976, 0.051723,
		33.185898, 34.479939, 47.013973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837097, 35.013386, 47.622608>,  <33.211792, 35.178520, 46.977768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837097, 35.013386, 47.622608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058144, 34.689827, 47.542316>,  <33.190773, 34.495689, 47.494141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058144, 34.689827, 47.542316>,  <32.837097, 35.013386, 47.622608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058144, 34.689827, 47.542316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434259, 0.073896, 0.897752,
		-0.711360, -0.583282, 0.392109,
		0.552618, -0.808901, -0.200729,
		33.223930, 34.447155, 47.482098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940247, 34.664890, 48.164848>,  <32.837097, 35.013386, 47.622608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940247, 34.664890, 48.164848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230312, 34.470398, 47.969826>,  <33.404350, 34.353703, 47.852810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230312, 34.470398, 47.969826>,  <32.940247, 34.664890, 48.164848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230312, 34.470398, 47.969826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534741, -0.048420, 0.843628,
		-0.433807, -0.872487, 0.224896,
		0.725165, -0.486232, -0.487560,
		33.447861, 34.324528, 47.823559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069527, 34.020485, 48.499954>,  <32.940247, 34.664890, 48.164848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069527, 34.020485, 48.499954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393040, 34.106033, 48.280819>,  <33.587147, 34.157364, 48.149338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393040, 34.106033, 48.280819>,  <33.069527, 34.020485, 48.499954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393040, 34.106033, 48.280819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582518, -0.163213, 0.796263,
		0.080883, -0.963131, -0.256588,
		0.808783, 0.213871, -0.547840,
		33.635674, 34.170193, 48.116467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436085, 33.456131, 48.474331>,  <33.069527, 34.020485, 48.499954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436085, 33.456131, 48.474331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721977, 33.729252, 48.413746>,  <33.893513, 33.893124, 48.377396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721977, 33.729252, 48.413746>,  <33.436085, 33.456131, 48.474331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721977, 33.729252, 48.413746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511633, -0.362788, 0.778856,
		0.476859, -0.634162, -0.608641,
		0.714728, 0.682805, -0.151460,
		33.936398, 33.934093, 48.368309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159500, 33.077766, 48.377811>,  <33.436085, 33.456131, 48.474331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159500, 33.077766, 48.377811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196758, 33.461044, 48.486031>,  <34.219112, 33.691010, 48.550961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196758, 33.461044, 48.486031>,  <34.159500, 33.077766, 48.377811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196758, 33.461044, 48.486031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562286, -0.274868, 0.779925,
		0.821681, 0.079481, -0.564379,
		0.093141, 0.958191, 0.270545,
		34.224701, 33.748501, 48.567196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843281, 33.137657, 48.514431>,  <34.159500, 33.077766, 48.377811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843281, 33.137657, 48.514431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702503, 33.448246, 48.723515>,  <34.618038, 33.634602, 48.848965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702503, 33.448246, 48.723515>,  <34.843281, 33.137657, 48.514431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702503, 33.448246, 48.723515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421735, -0.366996, 0.829128,
		0.835629, 0.512248, -0.198306,
		-0.351943, 0.776476, 0.522705,
		34.596920, 33.681190, 48.880325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336979, 33.324585, 48.830208>,  <34.843281, 33.137657, 48.514431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336979, 33.324585, 48.830208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052944, 33.487160, 49.060196>,  <34.882523, 33.584705, 49.198189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052944, 33.487160, 49.060196>,  <35.336979, 33.324585, 48.830208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052944, 33.487160, 49.060196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573805, -0.139234, 0.807070,
		0.408078, 0.903008, -0.134348,
		-0.710085, 0.406437, 0.574968,
		34.839920, 33.609089, 49.232685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753155, 33.576710, 49.414471>,  <35.336979, 33.324585, 48.830208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753155, 33.576710, 49.414471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381870, 33.625927, 49.554920>,  <35.159100, 33.655457, 49.639191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381870, 33.625927, 49.554920>,  <35.753155, 33.576710, 49.414471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381870, 33.625927, 49.554920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318364, -0.225719, 0.920704,
		0.192537, 0.966392, 0.170343,
		-0.928210, 0.123039, 0.351123,
		35.103409, 33.662838, 49.660255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784229, 34.149433, 49.959610>,  <35.753155, 33.576710, 49.414471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784229, 34.149433, 49.959610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470531, 33.911552, 50.030361>,  <35.282314, 33.768822, 50.072811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470531, 33.911552, 50.030361>,  <35.784229, 34.149433, 49.959610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470531, 33.911552, 50.030361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386089, -0.244599, 0.889442,
		-0.485691, 0.765831, 0.421435,
		-0.784245, -0.594705, 0.176879,
		35.235256, 33.733139, 50.083424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637646, 34.211155, 50.650085>,  <35.784229, 34.149433, 49.959610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637646, 34.211155, 50.650085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443981, 33.871929, 50.563950>,  <35.327782, 33.668392, 50.512268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443981, 33.871929, 50.563950>,  <35.637646, 34.211155, 50.650085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443981, 33.871929, 50.563950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492861, -0.467689, 0.733727,
		-0.722961, 0.249110, 0.644415,
		-0.484165, -0.848064, -0.215344,
		35.298733, 33.617512, 50.499348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225609, 33.956158, 51.275539>,  <35.637646, 34.211155, 50.650085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225609, 33.956158, 51.275539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417450, 33.703117, 51.032291>,  <35.532555, 33.551292, 50.886345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417450, 33.703117, 51.032291>,  <35.225609, 33.956158, 51.275539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417450, 33.703117, 51.032291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459655, -0.409213, 0.788201,
		-0.747463, -0.657545, 0.094518,
		0.479600, -0.632597, -0.608116,
		35.561329, 33.513340, 50.849857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000881, 33.237961, 51.389462>,  <35.225609, 33.956158, 51.275539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000881, 33.237961, 51.389462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380112, 33.304169, 51.280830>,  <35.607651, 33.343891, 51.215652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380112, 33.304169, 51.280830>,  <35.000881, 33.237961, 51.389462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380112, 33.304169, 51.280830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317546, -0.444826, 0.837433,
		0.017804, -0.880190, -0.474288,
		0.948075, 0.165518, -0.271581,
		35.664536, 33.353825, 51.199356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342823, 32.599525, 51.485355>,  <35.000881, 33.237961, 51.389462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342823, 32.599525, 51.485355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556259, 32.919060, 51.596455>,  <35.684322, 33.110779, 51.663116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556259, 32.919060, 51.596455>,  <35.342823, 32.599525, 51.485355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556259, 32.919060, 51.596455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241464, -0.458635, 0.855190,
		0.810540, -0.389254, -0.437613,
		0.533591, 0.798834, 0.277751,
		35.716335, 33.158710, 51.679779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908661, 32.310856, 51.928230>,  <35.342823, 32.599525, 51.485355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908661, 32.310856, 51.928230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818245, 32.692127, 52.008579>,  <35.763996, 32.920891, 52.056789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818245, 32.692127, 52.008579>,  <35.908661, 32.310856, 51.928230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818245, 32.692127, 52.008579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063462, -0.191365, 0.979465,
		0.972049, 0.234144, -0.017235,
		-0.226038, 0.953182, 0.200875,
		35.750435, 32.978081, 52.068840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337761, 32.490997, 52.497986>,  <35.908661, 32.310856, 51.928230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337761, 32.490997, 52.497986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045311, 32.763863, 52.493565>,  <35.869843, 32.927582, 52.490913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045311, 32.763863, 52.493565>,  <36.337761, 32.490997, 52.497986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045311, 32.763863, 52.493565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005132, 0.010698, 0.999930,
		0.682229, 0.731126, -0.004320,
		-0.731121, 0.682159, -0.011051,
		35.825974, 32.968510, 52.490250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820770, 32.990608, 52.926289>,  <36.337761, 32.490997, 52.497986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820770, 32.990608, 52.926289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195488, 32.851875, 52.907860>,  <37.420319, 32.768635, 52.896801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195488, 32.851875, 52.907860>,  <36.820770, 32.990608, 52.926289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195488, 32.851875, 52.907860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292376, -0.848348, 0.441387,
		-0.192171, -0.400019, -0.896133,
		0.936796, -0.346829, -0.046072,
		37.476528, 32.747826, 52.894039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473354, 33.677349, 52.593597>,  <36.820770, 32.990608, 52.926289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473354, 33.677349, 52.593597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672520, 33.930473, 52.356400>,  <36.792019, 34.082348, 52.214081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672520, 33.930473, 52.356400>,  <36.473354, 33.677349, 52.593597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672520, 33.930473, 52.356400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073013, -0.711939, -0.698436,
		-0.864149, 0.304463, -0.400685,
		0.497911, 0.632808, -0.592991,
		36.821892, 34.120316, 52.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270962, 33.575600, 52.056126>,  <36.473354, 33.677349, 52.593597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270962, 33.575600, 52.056126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612328, 33.755913, 51.951447>,  <36.817146, 33.864101, 51.888638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612328, 33.755913, 51.951447>,  <36.270962, 33.575600, 52.056126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612328, 33.755913, 51.951447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156241, -0.700214, -0.696627,
		-0.497270, 0.553622, -0.668001,
		0.853412, 0.450780, -0.261698,
		36.868351, 33.891148, 51.872936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367855, 33.934616, 51.306900>,  <36.270962, 33.575600, 52.056126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367855, 33.934616, 51.306900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711388, 33.780853, 51.442333>,  <36.917507, 33.688595, 51.523594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711388, 33.780853, 51.442333>,  <36.367855, 33.934616, 51.306900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711388, 33.780853, 51.442333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038707, -0.610375, -0.791166,
		0.510798, 0.692582, -0.509328,
		0.858829, -0.384411, 0.338587,
		36.969036, 33.665531, 51.543911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886902, 33.823261, 50.709709>,  <36.367855, 33.934616, 51.306900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886902, 33.823261, 50.709709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946671, 33.586926, 51.026840>,  <36.982533, 33.445122, 51.217117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946671, 33.586926, 51.026840>,  <36.886902, 33.823261, 50.709709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946671, 33.586926, 51.026840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036973, -0.797931, -0.601614,
		0.988082, 0.119207, -0.097382,
		0.149420, -0.590843, 0.792829,
		36.991497, 33.409672, 51.264690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556705, 33.489372, 50.775486>,  <36.886902, 33.823261, 50.709709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556705, 33.489372, 50.775486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249908, 33.278042, 50.921143>,  <37.065830, 33.151241, 51.008537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249908, 33.278042, 50.921143>,  <37.556705, 33.489372, 50.775486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249908, 33.278042, 50.921143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200094, -0.736130, -0.646588,
		0.609666, -0.423063, 0.670318,
		-0.766988, -0.528329, 0.364141,
		37.019814, 33.119545, 51.030384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730247, 32.747856, 50.931957>,  <37.556705, 33.489372, 50.775486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730247, 32.747856, 50.931957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346939, 32.769360, 50.819656>,  <37.116955, 32.782261, 50.752277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346939, 32.769360, 50.819656>,  <37.730247, 32.747856, 50.931957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346939, 32.769360, 50.819656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125890, -0.802410, -0.583344,
		-0.256637, -0.594347, 0.762161,
		-0.958274, 0.053759, -0.280750,
		37.059456, 32.785488, 50.735432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570686, 32.042042, 50.808929>,  <37.730247, 32.747856, 50.931957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570686, 32.042042, 50.808929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289078, 32.245571, 50.610756>,  <37.120113, 32.367687, 50.491852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289078, 32.245571, 50.610756>,  <37.570686, 32.042042, 50.808929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289078, 32.245571, 50.610756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033628, -0.720717, -0.692414,
		-0.709381, -0.470815, 0.524512,
		-0.704023, 0.508823, -0.495430,
		37.077869, 32.398216, 50.462128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084686, 31.590755, 50.674751>,  <37.570686, 32.042042, 50.808929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084686, 31.590755, 50.674751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040855, 31.872303, 50.394020>,  <37.014557, 32.041233, 50.225582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040855, 31.872303, 50.394020>,  <37.084686, 31.590755, 50.674751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040855, 31.872303, 50.394020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127774, -0.710195, -0.692312,
		-0.985732, 0.013814, 0.167757,
		-0.109577, 0.703869, -0.701827,
		37.007984, 32.083466, 50.183472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516785, 31.341820, 50.273403>,  <37.084686, 31.590755, 50.674751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516785, 31.341820, 50.273403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679016, 31.604090, 50.018658>,  <36.776356, 31.761452, 49.865810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679016, 31.604090, 50.018658>,  <36.516785, 31.341820, 50.273403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679016, 31.604090, 50.018658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187506, -0.622246, -0.760034,
		-0.894620, 0.427673, -0.129430,
		0.405583, 0.655673, -0.636864,
		36.800690, 31.800791, 49.827599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058655, 31.443689, 49.691551>,  <36.516785, 31.341820, 50.273403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058655, 31.443689, 49.691551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418282, 31.533730, 49.541348>,  <36.634056, 31.587753, 49.451225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418282, 31.533730, 49.541348>,  <36.058655, 31.443689, 49.691551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418282, 31.533730, 49.541348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180935, -0.589988, -0.786877,
		-0.398671, 0.775399, -0.489712,
		0.899068, 0.225100, -0.375508,
		36.688004, 31.601259, 49.428696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966446, 31.657640, 48.992023>,  <36.058655, 31.443689, 49.691551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966446, 31.657640, 48.992023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361549, 31.595402, 48.996449>,  <36.598610, 31.558058, 48.999104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361549, 31.595402, 48.996449>,  <35.966446, 31.657640, 48.992023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361549, 31.595402, 48.996449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051627, -0.392983, -0.918095,
		0.147200, 0.906285, -0.396206,
		0.987759, -0.155598, 0.011058,
		36.657875, 31.548723, 48.999767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134190, 31.852303, 48.307743>,  <35.966446, 31.657640, 48.992023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134190, 31.852303, 48.307743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451847, 31.652790, 48.446625>,  <36.642441, 31.533083, 48.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451847, 31.652790, 48.446625>,  <36.134190, 31.852303, 48.307743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451847, 31.652790, 48.446625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076498, -0.484730, -0.871312,
		0.602893, 0.718509, -0.346790,
		0.794146, -0.498780, 0.347205,
		36.690090, 31.503157, 48.550785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718853, 31.985218, 47.843632>,  <36.134190, 31.852303, 48.307743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718853, 31.985218, 47.843632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779083, 31.637342, 48.031662>,  <36.815220, 31.428617, 48.144478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779083, 31.637342, 48.031662>,  <36.718853, 31.985218, 47.843632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779083, 31.637342, 48.031662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035231, -0.470472, -0.881711,
		0.987971, 0.149326, -0.040201,
		0.150576, -0.869689, 0.470073,
		36.824257, 31.376436, 48.172684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282784, 31.624615, 47.457481>,  <36.718853, 31.985218, 47.843632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282784, 31.624615, 47.457481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084724, 31.343723, 47.662109>,  <36.965889, 31.175188, 47.784885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084724, 31.343723, 47.662109>,  <37.282784, 31.624615, 47.457481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084724, 31.343723, 47.662109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049969, -0.564823, -0.823698,
		0.867370, -0.433415, 0.244582,
		-0.495149, -0.702230, 0.511568,
		36.936180, 31.133055, 47.815578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598186, 31.075956, 47.200603>,  <37.282784, 31.624615, 47.457481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598186, 31.075956, 47.200603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249237, 30.937040, 47.338211>,  <37.039867, 30.853691, 47.420776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249237, 30.937040, 47.338211>,  <37.598186, 31.075956, 47.200603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249237, 30.937040, 47.338211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145930, -0.486639, -0.861329,
		0.466542, -0.801606, 0.373853,
		-0.872378, -0.347289, 0.344016,
		36.987522, 30.832853, 47.441418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546501, 30.310505, 46.947739>,  <37.598186, 31.075956, 47.200603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546501, 30.310505, 46.947739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181362, 30.427370, 47.061821>,  <36.962276, 30.497490, 47.130272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181362, 30.427370, 47.061821>,  <37.546501, 30.310505, 46.947739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181362, 30.427370, 47.061821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394357, -0.449975, -0.801252,
		-0.105762, -0.843897, 0.525977,
		-0.912851, 0.292165, 0.285207,
		36.907505, 30.515020, 47.147385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233429, 29.764105, 46.854240>,  <37.546501, 30.310505, 46.947739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233429, 29.764105, 46.854240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937328, 30.032961, 46.860744>,  <36.759670, 30.194275, 46.864647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937328, 30.032961, 46.860744>,  <37.233429, 29.764105, 46.854240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937328, 30.032961, 46.860744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397747, -0.418290, -0.816597,
		-0.542063, -0.610952, 0.576979,
		-0.740247, 0.672139, 0.016265,
		36.715256, 30.234602, 46.865623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531868, 29.416960, 46.667973>,  <37.233429, 29.764105, 46.854240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531868, 29.416960, 46.667973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498119, 29.811829, 46.613750>,  <36.477871, 30.048750, 46.581219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498119, 29.811829, 46.613750>,  <36.531868, 29.416960, 46.667973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498119, 29.811829, 46.613750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489670, -0.159556, -0.857185,
		-0.867817, -0.005941, 0.496849,
		-0.084368, 0.987171, -0.135556,
		36.472809, 30.107981, 46.573082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788651, 29.497650, 46.432957>,  <36.531868, 29.416960, 46.667973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788651, 29.497650, 46.432957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946518, 29.845070, 46.313049>,  <36.041237, 30.053522, 46.241104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946518, 29.845070, 46.313049>,  <35.788651, 29.497650, 46.432957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946518, 29.845070, 46.313049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446107, -0.104083, -0.888907,
		-0.803260, 0.484550, 0.346388,
		0.394667, 0.868550, -0.299767,
		36.064919, 30.105635, 46.223118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273346, 29.881458, 46.263092>,  <35.788651, 29.497650, 46.432957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273346, 29.881458, 46.263092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581093, 30.055983, 46.076454>,  <35.765739, 30.160698, 45.964474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581093, 30.055983, 46.076454>,  <35.273346, 29.881458, 46.263092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581093, 30.055983, 46.076454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476922, -0.093619, -0.873945,
		-0.424995, 0.894912, 0.136059,
		0.769366, 0.436312, -0.466591,
		35.811901, 30.186876, 45.936478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823433, 30.398245, 45.796936>,  <35.273346, 29.881458, 46.263092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823433, 30.398245, 45.796936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181896, 30.356520, 45.624413>,  <35.396973, 30.331486, 45.520901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181896, 30.356520, 45.624413>,  <34.823433, 30.398245, 45.796936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181896, 30.356520, 45.624413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443523, -0.180249, -0.877951,
		0.013838, 0.978074, -0.207796,
		0.896156, -0.104311, -0.431304,
		35.450745, 30.325226, 45.495022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855396, 30.905462, 45.303764>,  <34.823433, 30.398245, 45.796936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855396, 30.905462, 45.303764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118374, 30.616020, 45.219704>,  <35.276161, 30.442354, 45.169266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118374, 30.616020, 45.219704>,  <34.855396, 30.905462, 45.303764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118374, 30.616020, 45.219704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335313, -0.031192, -0.941590,
		0.674786, 0.689507, -0.263142,
		0.657441, -0.723607, -0.210153,
		35.315605, 30.398937, 45.156658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095242, 31.093288, 44.613762>,  <34.855396, 30.905462, 45.303764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095242, 31.093288, 44.613762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203915, 30.709190, 44.639412>,  <35.269119, 30.478731, 44.654804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203915, 30.709190, 44.639412>,  <35.095242, 31.093288, 44.613762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203915, 30.709190, 44.639412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570292, -0.214313, -0.792992,
		0.775212, 0.178874, -0.605847,
		0.271687, -0.960247, 0.064128,
		35.285419, 30.421116, 44.658649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181091, 30.921387, 43.957062>,  <35.095242, 31.093288, 44.613762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181091, 30.921387, 43.957062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154125, 30.560944, 44.128391>,  <35.137947, 30.344677, 44.231190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154125, 30.560944, 44.128391>,  <35.181091, 30.921387, 43.957062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154125, 30.560944, 44.128391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331455, -0.384690, -0.861482,
		0.941059, -0.200047, -0.272742,
		-0.067416, -0.901108, 0.428322,
		35.133900, 30.290611, 44.256889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425797, 30.300360, 43.449715>,  <35.181091, 30.921387, 43.957062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425797, 30.300360, 43.449715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157692, 30.146019, 43.703289>,  <34.996830, 30.053415, 43.855434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157692, 30.146019, 43.703289>,  <35.425797, 30.300360, 43.449715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157692, 30.146019, 43.703289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462492, -0.450877, -0.763421,
		0.580394, -0.804878, 0.123750,
		-0.670257, -0.385851, 0.633935,
		34.956615, 30.030264, 43.893471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259628, 29.646931, 43.180988>,  <35.425797, 30.300360, 43.449715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259628, 29.646931, 43.180988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953758, 29.724968, 43.426659>,  <34.770237, 29.771790, 43.574059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953758, 29.724968, 43.426659>,  <35.259628, 29.646931, 43.180988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953758, 29.724968, 43.426659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634357, -0.395609, -0.664142,
		0.113403, -0.897459, 0.426271,
		-0.764677, 0.195092, 0.614173,
		34.724354, 29.783495, 43.610912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881065, 29.073053, 43.104229>,  <35.259628, 29.646931, 43.180988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881065, 29.073053, 43.104229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637474, 29.336720, 43.280704>,  <34.491318, 29.494919, 43.386589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637474, 29.336720, 43.280704>,  <34.881065, 29.073053, 43.104229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637474, 29.336720, 43.280704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705971, -0.196867, -0.680330,
		-0.361597, -0.725770, 0.585240,
		-0.608977, 0.659168, 0.441186,
		34.454781, 29.534470, 43.413059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278904, 28.692877, 43.135517>,  <34.881065, 29.073053, 43.104229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278904, 28.692877, 43.135517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188751, 29.082060, 43.155735>,  <34.134659, 29.315569, 43.167866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188751, 29.082060, 43.155735>,  <34.278904, 28.692877, 43.135517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188751, 29.082060, 43.155735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689329, -0.122588, -0.714001,
		-0.688496, -0.195770, 0.698317,
		-0.225385, 0.972958, 0.050548,
		34.121136, 29.373947, 43.170898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591152, 28.676085, 43.245342>,  <34.278904, 28.692877, 43.135517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591152, 28.676085, 43.245342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689949, 29.033356, 43.095020>,  <33.749226, 29.247719, 43.004826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689949, 29.033356, 43.095020>,  <33.591152, 28.676085, 43.245342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689949, 29.033356, 43.095020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788085, -0.040511, -0.614232,
		-0.563842, 0.447876, 0.693894,
		0.246989, 0.893178, -0.375806,
		33.764046, 29.301310, 42.982277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012951, 28.968048, 43.137562>,  <33.591152, 28.676085, 43.245342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012951, 28.968048, 43.137562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240211, 29.218603, 42.924080>,  <33.376568, 29.368937, 42.795990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240211, 29.218603, 42.924080>,  <33.012951, 28.968048, 43.137562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240211, 29.218603, 42.924080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793363, 0.244674, -0.557413,
		-0.218573, 0.740118, 0.635965,
		0.568156, 0.626387, -0.533703,
		33.410660, 29.406519, 42.763969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595078, 29.578217, 43.046749>,  <33.012951, 28.968048, 43.137562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595078, 29.578217, 43.046749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881702, 29.575193, 42.767757>,  <33.053677, 29.573380, 42.600361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881702, 29.575193, 42.767757>,  <32.595078, 29.578217, 43.046749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881702, 29.575193, 42.767757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679394, 0.218912, -0.700358,
		0.157979, 0.975716, 0.151730,
		0.716566, -0.007558, -0.697478,
		33.096672, 29.572926, 42.558514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325394, 30.104166, 42.669060>,  <32.595078, 29.578217, 43.046749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325394, 30.104166, 42.669060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590000, 29.897455, 42.451679>,  <32.748764, 29.773430, 42.321251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590000, 29.897455, 42.451679>,  <32.325394, 30.104166, 42.669060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590000, 29.897455, 42.451679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453136, 0.301984, -0.838733,
		0.597551, 0.801092, -0.034403,
		0.661514, -0.516775, -0.543455,
		32.788456, 29.742422, 42.288643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531677, 30.558798, 42.127426>,  <32.325394, 30.104166, 42.669060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531677, 30.558798, 42.127426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609333, 30.185709, 42.005875>,  <32.655926, 29.961855, 41.932945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609333, 30.185709, 42.005875>,  <32.531677, 30.558798, 42.127426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609333, 30.185709, 42.005875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277717, 0.244842, -0.928938,
		0.940843, 0.264732, -0.211500,
		0.194135, -0.932722, -0.303878,
		32.667572, 29.905893, 41.914711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978996, 30.677799, 41.530910>,  <32.531677, 30.558798, 42.127426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978996, 30.677799, 41.530910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778744, 30.331821, 41.516811>,  <32.658592, 30.124235, 41.508350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778744, 30.331821, 41.516811>,  <32.978996, 30.677799, 41.530910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778744, 30.331821, 41.516811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379065, 0.255646, -0.889356,
		0.778255, -0.431876, -0.455854,
		-0.500629, -0.864944, -0.035249,
		32.628555, 30.072338, 41.506237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003033, 30.490154, 40.870255>,  <32.978996, 30.677799, 41.530910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003033, 30.490154, 40.870255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718102, 30.232519, 40.981785>,  <32.547142, 30.077938, 41.048702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718102, 30.232519, 40.981785>,  <33.003033, 30.490154, 40.870255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718102, 30.232519, 40.981785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452908, 0.118359, -0.883666,
		0.536157, -0.755740, -0.376022,
		-0.712328, -0.644087, 0.278822,
		32.504402, 30.039293, 41.065430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887619, 30.307238, 40.256451>,  <33.003033, 30.490154, 40.870255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887619, 30.307238, 40.256451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574913, 30.182415, 40.472404>,  <32.387291, 30.107521, 40.601974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574913, 30.182415, 40.472404>,  <32.887619, 30.307238, 40.256451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574913, 30.182415, 40.472404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612511, 0.221883, -0.758682,
		0.116959, -0.923791, -0.364596,
		-0.781761, -0.312054, 0.539881,
		32.340385, 30.088799, 40.634369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500111, 29.852188, 39.839119>,  <32.887619, 30.307238, 40.256451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500111, 29.852188, 39.839119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250786, 29.984377, 40.122604>,  <32.101189, 30.063690, 40.292694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250786, 29.984377, 40.122604>,  <32.500111, 29.852188, 39.839119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250786, 29.984377, 40.122604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696033, 0.178593, -0.695444,
		-0.356395, -0.926765, 0.118699,
		-0.623314, 0.330471, 0.708709,
		32.063793, 30.083519, 40.335217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900806, 29.502113, 39.643307>,  <32.500111, 29.852188, 39.839119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900806, 29.502113, 39.643307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789265, 29.810507, 39.872330>,  <31.722340, 29.995543, 40.009743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789265, 29.810507, 39.872330>,  <31.900806, 29.502113, 39.643307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789265, 29.810507, 39.872330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612725, 0.316251, -0.724261,
		-0.739466, -0.552785, 0.384212,
		-0.278853, 0.770982, 0.572562,
		31.705608, 30.041801, 40.044098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108974, 29.594563, 39.657131>,  <31.900806, 29.502113, 39.643307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108974, 29.594563, 39.657131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253323, 29.958576, 39.738731>,  <31.339931, 30.176985, 39.787689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253323, 29.958576, 39.738731>,  <31.108974, 29.594563, 39.657131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253323, 29.958576, 39.738731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631757, 0.399440, -0.664327,
		-0.686043, 0.110859, 0.719065,
		0.360870, 0.910032, 0.203997,
		31.361584, 30.231586, 39.799931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538965, 30.129747, 39.624928>,  <31.108974, 29.594563, 39.657131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538965, 30.129747, 39.624928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873499, 30.345636, 39.586456>,  <31.074219, 30.475170, 39.563374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873499, 30.345636, 39.586456>,  <30.538965, 30.129747, 39.624928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873499, 30.345636, 39.586456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453495, 0.582518, -0.674548,
		-0.308043, 0.607762, 0.731939,
		0.836332, 0.539721, -0.096176,
		31.124399, 30.507553, 39.557602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239180, 30.701935, 39.243263>,  <30.538965, 30.129747, 39.624928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239180, 30.701935, 39.243263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629377, 30.787058, 39.220901>,  <30.863497, 30.838131, 39.207485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629377, 30.787058, 39.220901>,  <30.239180, 30.701935, 39.243263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629377, 30.787058, 39.220901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182705, 0.641877, -0.744723,
		-0.122600, 0.736686, 0.665028,
		0.975494, 0.212807, -0.055902,
		30.922026, 30.850901, 39.204132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339724, 31.489355, 39.298599>,  <30.239180, 30.701935, 39.243263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339724, 31.489355, 39.298599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668011, 31.349516, 39.117844>,  <30.864983, 31.265612, 39.009388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668011, 31.349516, 39.117844>,  <30.339724, 31.489355, 39.298599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668011, 31.349516, 39.117844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080074, 0.712749, -0.696833,
		0.565696, 0.608087, 0.556972,
		0.820717, -0.349597, -0.451891,
		30.914227, 31.244637, 38.982277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623543, 32.139774, 38.956314>,  <30.339724, 31.489355, 39.298599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623543, 32.139774, 38.956314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787901, 31.823626, 38.774555>,  <30.886517, 31.633938, 38.665501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787901, 31.823626, 38.774555>,  <30.623543, 32.139774, 38.956314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787901, 31.823626, 38.774555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285957, 0.361535, -0.887424,
		0.865674, 0.494579, -0.077458,
		0.410897, -0.790369, -0.454400,
		30.911171, 31.586515, 38.638237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053473, 32.391068, 38.440296>,  <30.623543, 32.139774, 38.956314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053473, 32.391068, 38.440296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931639, 32.021511, 38.347645>,  <30.858538, 31.799778, 38.292053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931639, 32.021511, 38.347645>,  <31.053473, 32.391068, 38.440296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931639, 32.021511, 38.347645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315566, 0.327332, -0.890658,
		0.898691, -0.198188, -0.391250,
		-0.304586, -0.923892, -0.231628,
		30.840263, 31.744343, 38.278156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470776, 31.951851, 37.949478>,  <31.053473, 32.391068, 38.440296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470776, 31.951851, 37.949478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073282, 31.938091, 37.992027>,  <30.834787, 31.929836, 38.017555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073282, 31.938091, 37.992027>,  <31.470776, 31.951851, 37.949478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073282, 31.938091, 37.992027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107991, 0.541439, -0.833776,
		-0.028914, -0.840036, -0.541760,
		-0.993731, -0.034398, 0.106372,
		30.775164, 31.927773, 38.023937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618412, 32.388931, 37.329079>,  <31.470776, 31.951851, 37.949478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618412, 32.388931, 37.329079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841665, 32.536274, 37.031677>,  <31.975616, 32.624680, 36.853237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841665, 32.536274, 37.031677>,  <31.618412, 32.388931, 37.329079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841665, 32.536274, 37.031677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825981, -0.331981, 0.455570,
		-0.079018, -0.868391, -0.489545,
		0.558132, 0.368356, -0.743507,
		32.009106, 32.646782, 36.808624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032227, 31.800142, 36.942314>,  <31.618412, 32.388931, 37.329079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032227, 31.800142, 36.942314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213631, 32.154999, 36.908131>,  <32.322475, 32.367912, 36.887623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213631, 32.154999, 36.908131>,  <32.032227, 31.800142, 36.942314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213631, 32.154999, 36.908131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811278, -0.371221, 0.451689,
		0.368989, -0.274176, -0.888074,
		0.453513, 0.887143, -0.085456,
		32.349686, 32.421143, 36.882492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821510, 31.700741, 36.858185>,  <32.032227, 31.800142, 36.942314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821510, 31.700741, 36.858185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816017, 32.089008, 36.954197>,  <32.812721, 32.321968, 37.011803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816017, 32.089008, 36.954197>,  <32.821510, 31.700741, 36.858185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816017, 32.089008, 36.954197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827103, -0.123863, 0.548233,
		0.561883, 0.206057, -0.801142,
		-0.013735, 0.970669, 0.240027,
		32.811897, 32.380211, 37.026207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466118, 31.892317, 36.779167>,  <32.821510, 31.700741, 36.858185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466118, 31.892317, 36.779167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314484, 32.165180, 37.029274>,  <33.223503, 32.328899, 37.179337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314484, 32.165180, 37.029274>,  <33.466118, 31.892317, 36.779167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314484, 32.165180, 37.029274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763005, -0.151883, 0.628295,
		0.523563, 0.715257, -0.462914,
		-0.379084, 0.682158, 0.625265,
		33.200760, 32.369827, 37.216854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151409, 32.318989, 36.986832>,  <33.466118, 31.892317, 36.779167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151409, 32.318989, 36.986832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866856, 32.394958, 37.257492>,  <33.696121, 32.440540, 37.419888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866856, 32.394958, 37.257492>,  <34.151409, 32.318989, 36.986832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866856, 32.394958, 37.257492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683275, -0.038474, 0.729147,
		0.164518, 0.981044, -0.102402,
		-0.711386, 0.189927, 0.676652,
		33.653439, 32.451935, 37.460487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404896, 32.834377, 37.442215>,  <34.151409, 32.318989, 36.986832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404896, 32.834377, 37.442215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111057, 32.661079, 37.651089>,  <33.934753, 32.557102, 37.776413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111057, 32.661079, 37.651089>,  <34.404896, 32.834377, 37.442215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111057, 32.661079, 37.651089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584781, -0.013969, 0.811071,
		-0.344098, 0.901168, 0.263615,
		-0.734593, -0.433245, 0.522180,
		33.890678, 32.531105, 37.807743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499481, 33.138462, 38.068588>,  <34.404896, 32.834377, 37.442215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499481, 33.138462, 38.068588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316154, 32.785469, 38.110867>,  <34.206158, 32.573673, 38.136234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316154, 32.785469, 38.110867>,  <34.499481, 33.138462, 38.068588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316154, 32.785469, 38.110867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548956, -0.187542, 0.814540,
		-0.698992, 0.431345, 0.570397,
		-0.458321, -0.882479, 0.105699,
		34.178658, 32.520725, 38.142578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246059, 33.078762, 38.708694>,  <34.499481, 33.138462, 38.068588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246059, 33.078762, 38.708694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273121, 32.691479, 38.612366>,  <34.289356, 32.459110, 38.554569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273121, 32.691479, 38.612366>,  <34.246059, 33.078762, 38.708694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273121, 32.691479, 38.612366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376994, -0.198676, 0.904657,
		-0.923742, -0.151989, 0.351568,
		0.067650, -0.968208, -0.240824,
		34.293415, 32.401016, 38.540119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093182, 32.681931, 39.365566>,  <34.246059, 33.078762, 38.708694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093182, 32.681931, 39.365566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237919, 32.412254, 39.108028>,  <34.324760, 32.250446, 38.953506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237919, 32.412254, 39.108028>,  <34.093182, 32.681931, 39.365566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237919, 32.412254, 39.108028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551303, -0.402174, 0.730972,
		-0.751754, -0.619449, 0.226162,
		0.361844, -0.674195, -0.643840,
		34.346474, 32.209995, 38.914875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098858, 32.070980, 39.723007>,  <34.093182, 32.681931, 39.365566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098858, 32.070980, 39.723007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357090, 31.981718, 39.430862>,  <34.512032, 31.928160, 39.255577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357090, 31.981718, 39.430862>,  <34.098858, 32.070980, 39.723007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357090, 31.981718, 39.430862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581409, -0.476463, 0.659505,
		-0.495164, -0.850401, -0.177847,
		0.645582, -0.223161, -0.730358,
		34.550766, 31.914770, 39.211754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242245, 31.272333, 39.739582>,  <34.098858, 32.070980, 39.723007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242245, 31.272333, 39.739582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541855, 31.479149, 39.573872>,  <34.721622, 31.603239, 39.474445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541855, 31.479149, 39.573872>,  <34.242245, 31.272333, 39.739582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541855, 31.479149, 39.573872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662495, -0.577397, 0.477193,
		0.007526, -0.631887, -0.775024,
		0.749029, 0.517041, -0.414276,
		34.766563, 31.634262, 39.449589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762306, 30.763969, 39.749870>,  <34.242245, 31.272333, 39.739582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762306, 30.763969, 39.749870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973892, 31.091381, 39.660244>,  <35.100842, 31.287828, 39.606468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973892, 31.091381, 39.660244>,  <34.762306, 30.763969, 39.749870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973892, 31.091381, 39.660244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801562, -0.395167, 0.448710,
		0.278740, -0.416952, -0.865133,
		0.528962, 0.818532, -0.224064,
		35.132580, 31.336941, 39.593025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450462, 30.583210, 39.666481>,  <34.762306, 30.763969, 39.749870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450462, 30.583210, 39.666481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475800, 30.951073, 39.821514>,  <35.491001, 31.171789, 39.914536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475800, 30.951073, 39.821514>,  <35.450462, 30.583210, 39.666481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475800, 30.951073, 39.821514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666752, -0.327973, 0.669235,
		0.742582, 0.216028, -0.633958,
		0.063348, 0.919655, 0.387584,
		35.494804, 31.226969, 39.937790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132618, 30.541746, 39.939381>,  <35.450462, 30.583210, 39.666481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132618, 30.541746, 39.939381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003498, 30.892235, 40.082512>,  <35.926025, 31.102528, 40.168392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003498, 30.892235, 40.082512>,  <36.132618, 30.541746, 39.939381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003498, 30.892235, 40.082512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620073, -0.089849, 0.779382,
		0.715061, 0.473460, -0.514318,
		-0.322796, 0.876221, 0.357827,
		35.906658, 31.155102, 40.189861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761234, 30.925203, 40.000546>,  <36.132618, 30.541746, 39.939381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761234, 30.925203, 40.000546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487724, 31.066727, 40.255817>,  <36.323616, 31.151640, 40.408981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487724, 31.066727, 40.255817>,  <36.761234, 30.925203, 40.000546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487724, 31.066727, 40.255817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665847, -0.055222, 0.744041,
		0.298488, 0.933687, -0.197821,
		-0.683778, 0.353806, 0.638176,
		36.282593, 31.172869, 40.447269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164387, 31.281507, 40.675583>,  <36.761234, 30.925203, 40.000546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164387, 31.281507, 40.675583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782875, 31.253347, 40.792442>,  <36.553967, 31.236450, 40.862556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782875, 31.253347, 40.792442>,  <37.164387, 31.281507, 40.675583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782875, 31.253347, 40.792442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294737, -0.029530, 0.955122,
		-0.058616, 0.997081, 0.048915,
		-0.953779, -0.070402, 0.292146,
		36.496742, 31.232227, 40.880085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035316, 31.803673, 41.147259>,  <37.164387, 31.281507, 40.675583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035316, 31.803673, 41.147259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756714, 31.530727, 41.236038>,  <36.589554, 31.366961, 41.289307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756714, 31.530727, 41.236038>,  <37.035316, 31.803673, 41.147259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756714, 31.530727, 41.236038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274900, 0.031969, 0.960941,
		-0.662808, 0.730312, 0.165315,
		-0.696502, -0.682365, 0.221952,
		36.547764, 31.326017, 41.302624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817398, 32.039272, 41.785557>,  <37.035316, 31.803673, 41.147259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817398, 32.039272, 41.785557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666283, 31.668917, 41.786354>,  <36.575615, 31.446703, 41.786831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666283, 31.668917, 41.786354>,  <36.817398, 32.039272, 41.785557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666283, 31.668917, 41.786354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191440, -0.076007, 0.978557,
		-0.905886, 0.370066, 0.205967,
		-0.377785, -0.925891, 0.001991,
		36.552948, 31.391150, 41.786953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440338, 31.965048, 42.336132>,  <36.817398, 32.039272, 41.785557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440338, 31.965048, 42.336132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554008, 31.592930, 42.243355>,  <36.622211, 31.369659, 42.187691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554008, 31.592930, 42.243355>,  <36.440338, 31.965048, 42.336132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554008, 31.592930, 42.243355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367383, -0.117792, 0.922580,
		-0.885592, -0.347385, 0.308301,
		0.284175, -0.930295, -0.231939,
		36.639259, 31.313841, 42.173775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269016, 31.592411, 42.989857>,  <36.440338, 31.965048, 42.336132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269016, 31.592411, 42.989857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521080, 31.361538, 42.782104>,  <36.672318, 31.223015, 42.657452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521080, 31.361538, 42.782104>,  <36.269016, 31.592411, 42.989857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521080, 31.361538, 42.782104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498864, -0.211629, 0.840445,
		-0.595008, -0.788716, 0.154576,
		0.630159, -0.577184, -0.519383,
		36.710129, 31.188383, 42.626289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278370, 30.918550, 43.359417>,  <36.269016, 31.592411, 42.989857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278370, 30.918550, 43.359417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627171, 30.967964, 43.169952>,  <36.836449, 30.997612, 43.056274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627171, 30.967964, 43.169952>,  <36.278370, 30.918550, 43.359417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627171, 30.967964, 43.169952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487777, -0.137987, 0.861994,
		0.041126, -0.982700, -0.180582,
		0.871999, 0.123534, -0.473664,
		36.888771, 31.005024, 43.027855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776115, 30.366501, 43.761765>,  <36.278370, 30.918550, 43.359417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776115, 30.366501, 43.761765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991745, 30.646444, 43.574322>,  <37.121124, 30.814411, 43.461857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991745, 30.646444, 43.574322>,  <36.776115, 30.366501, 43.761765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991745, 30.646444, 43.574322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672839, -0.023164, 0.739427,
		0.506640, -0.713905, -0.483380,
		0.539077, 0.699860, -0.468607,
		37.153469, 30.856401, 43.433739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463638, 30.171297, 43.873577>,  <36.776115, 30.366501, 43.761765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463638, 30.171297, 43.873577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486095, 30.561516, 43.788578>,  <37.499569, 30.795647, 43.737579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486095, 30.561516, 43.788578>,  <37.463638, 30.171297, 43.873577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486095, 30.561516, 43.788578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528799, 0.151476, 0.835121,
		0.846888, -0.159257, -0.507364,
		0.056145, 0.975547, -0.212498,
		37.502937, 30.854179, 43.724827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229603, 30.411163, 43.993065>,  <37.463638, 30.171297, 43.873577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229603, 30.411163, 43.993065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993134, 30.733637, 44.002720>,  <37.851254, 30.927120, 44.008511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993134, 30.733637, 44.002720>,  <38.229603, 30.411163, 43.993065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993134, 30.733637, 44.002720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479228, 0.327034, 0.814487,
		0.648734, 0.493068, -0.579679,
		-0.591172, 0.806184, 0.024134,
		37.815781, 30.975492, 44.009960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691319, 30.820803, 44.334343>,  <38.229603, 30.411163, 43.993065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691319, 30.820803, 44.334343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364262, 31.050575, 44.349785>,  <38.168026, 31.188438, 44.359051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364262, 31.050575, 44.349785>,  <38.691319, 30.820803, 44.334343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364262, 31.050575, 44.349785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210924, 0.236493, 0.948463,
		0.535699, 0.783645, -0.314528,
		-0.817642, 0.574432, 0.038601,
		38.118969, 31.222904, 44.361366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974606, 31.501892, 44.589184>,  <38.691319, 30.820803, 44.334343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974606, 31.501892, 44.589184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584183, 31.481604, 44.673798>,  <38.349930, 31.469431, 44.724567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584183, 31.481604, 44.673798>,  <38.974606, 31.501892, 44.589184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584183, 31.481604, 44.673798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150304, 0.545729, 0.824372,
		-0.157253, 0.836426, -0.525037,
		-0.976053, -0.050720, 0.211536,
		38.291367, 31.466387, 44.737259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642590, 32.228958, 44.695126>,  <38.974606, 31.501892, 44.589184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642590, 32.228958, 44.695126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403767, 31.974375, 44.890446>,  <38.260475, 31.821623, 45.007637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403767, 31.974375, 44.890446>,  <38.642590, 32.228958, 44.695126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403767, 31.974375, 44.890446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022238, 0.621602, 0.783017,
		-0.801892, 0.456646, -0.385285,
		-0.597055, -0.636463, 0.488303,
		38.224651, 31.783436, 45.036938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256077, 32.616283, 45.110329>,  <38.642590, 32.228958, 44.695126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256077, 32.616283, 45.110329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201122, 32.258968, 45.281517>,  <38.168148, 32.044579, 45.384228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201122, 32.258968, 45.281517>,  <38.256077, 32.616283, 45.110329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201122, 32.258968, 45.281517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140293, 0.410161, 0.901158,
		-0.980532, 0.183847, 0.068972,
		-0.137385, -0.893290, 0.427969,
		38.159908, 31.990982, 45.409908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931568, 32.749985, 45.725750>,  <38.256077, 32.616283, 45.110329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931568, 32.749985, 45.725750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095955, 32.388752, 45.775635>,  <38.194588, 32.172012, 45.805565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095955, 32.388752, 45.775635>,  <37.931568, 32.749985, 45.725750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095955, 32.388752, 45.775635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247028, 0.241991, 0.938306,
		-0.877544, -0.354805, 0.322536,
		0.410967, -0.903080, 0.124711,
		38.219246, 32.117828, 45.813049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785191, 32.555752, 46.457710>,  <37.931568, 32.749985, 45.725750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785191, 32.555752, 46.457710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072327, 32.286854, 46.385265>,  <38.244606, 32.125515, 46.341797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072327, 32.286854, 46.385265>,  <37.785191, 32.555752, 46.457710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072327, 32.286854, 46.385265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383689, 0.164916, 0.908617,
		-0.580943, -0.721729, 0.376314,
		0.717836, -0.672243, -0.181113,
		38.287678, 32.085182, 46.330933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865295, 32.081921, 47.117947>,  <37.785191, 32.555752, 46.457710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865295, 32.081921, 47.117947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205242, 32.037228, 46.911938>,  <38.409210, 32.010414, 46.788334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205242, 32.037228, 46.911938>,  <37.865295, 32.081921, 47.117947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205242, 32.037228, 46.911938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502591, -0.122146, 0.855852,
		-0.158534, -0.986203, -0.047652,
		0.849864, -0.111732, -0.515021,
		38.460201, 32.003708, 46.757431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193691, 31.429440, 47.359226>,  <37.865295, 32.081921, 47.117947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193691, 31.429440, 47.359226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469177, 31.669979, 47.197212>,  <38.634468, 31.814302, 47.100002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469177, 31.669979, 47.197212>,  <38.193691, 31.429440, 47.359226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469177, 31.669979, 47.197212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513244, -0.009779, 0.858187,
		0.512110, -0.798925, -0.315375,
		0.688711, 0.601350, -0.405036,
		38.675789, 31.850384, 47.075703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765579, 31.357376, 47.830849>,  <38.193691, 31.429440, 47.359226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765579, 31.357376, 47.830849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904552, 31.662031, 47.612053>,  <38.987938, 31.844826, 47.480778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904552, 31.662031, 47.612053>,  <38.765579, 31.357376, 47.830849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904552, 31.662031, 47.612053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427983, 0.390222, 0.815204,
		0.834338, -0.517331, -0.190392,
		0.347435, 0.761640, -0.546986,
		39.008781, 31.890524, 47.447956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547688, 31.356487, 47.858177>,  <38.765579, 31.357376, 47.830849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547688, 31.356487, 47.858177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406227, 31.726896, 47.805389>,  <39.321350, 31.949142, 47.773716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406227, 31.726896, 47.805389>,  <39.547688, 31.356487, 47.858177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406227, 31.726896, 47.805389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510128, 0.309196, 0.802601,
		0.784029, 0.216521, -0.581737,
		-0.353650, 0.926022, -0.131966,
		39.300133, 32.004704, 47.765800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064812, 31.755058, 48.084934>,  <39.547688, 31.356487, 47.858177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064812, 31.755058, 48.084934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762852, 32.017139, 48.073391>,  <39.581676, 32.174389, 48.066463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762852, 32.017139, 48.073391>,  <40.064812, 31.755058, 48.084934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762852, 32.017139, 48.073391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293809, 0.377202, 0.878291,
		0.586346, 0.654543, -0.477255,
		-0.754900, 0.655204, -0.028860,
		39.536381, 32.213699, 48.064732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430893, 32.327538, 48.275612>,  <40.064812, 31.755058, 48.084934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430893, 32.327538, 48.275612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037628, 32.364651, 48.338585>,  <39.801670, 32.386917, 48.376369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037628, 32.364651, 48.338585>,  <40.430893, 32.327538, 48.275612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037628, 32.364651, 48.338585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170347, 0.153520, 0.973352,
		0.066141, 0.983780, -0.166741,
		-0.983162, 0.092782, 0.157430,
		39.742680, 32.392487, 48.385815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371029, 32.801437, 48.658546>,  <40.430893, 32.327538, 48.275612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371029, 32.801437, 48.658546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999485, 32.664150, 48.714287>,  <39.776558, 32.581779, 48.747730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999485, 32.664150, 48.714287>,  <40.371029, 32.801437, 48.658546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999485, 32.664150, 48.714287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072258, 0.201092, 0.976904,
		-0.363313, 0.917477, -0.161986,
		-0.928861, -0.343218, 0.139354,
		39.720825, 32.561184, 48.756092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017330, 33.250599, 49.156258>,  <40.371029, 32.801437, 48.658546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017330, 33.250599, 49.156258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831615, 32.898335, 49.193954>,  <39.720188, 32.686977, 49.216572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831615, 32.898335, 49.193954>,  <40.017330, 33.250599, 49.156258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831615, 32.898335, 49.193954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068592, 0.070331, 0.995163,
		-0.883024, 0.468506, 0.027752,
		-0.464288, -0.880656, 0.094240,
		39.692329, 32.634136, 49.222225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703869, 33.608887, 48.622719>,  <40.017330, 33.250599, 49.156258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703869, 33.608887, 48.622719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694744, 33.959148, 48.815681>,  <39.689270, 34.169304, 48.931458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694744, 33.959148, 48.815681>,  <39.703869, 33.608887, 48.622719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694744, 33.959148, 48.815681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457398, 0.419927, -0.783868,
		-0.888970, -0.238533, 0.390941,
		-0.022812, 0.875650, 0.482407,
		39.687901, 34.221844, 48.960403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020790, 33.852974, 48.824162>,  <39.703869, 33.608887, 48.622719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020790, 33.852974, 48.824162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266533, 34.164314, 48.772427>,  <39.413979, 34.351120, 48.741386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266533, 34.164314, 48.772427>,  <39.020790, 33.852974, 48.824162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266533, 34.164314, 48.772427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649682, 0.405995, -0.642715,
		-0.447748, 0.478887, 0.755109,
		0.614358, 0.778354, -0.129341,
		39.450840, 34.397820, 48.733624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641083, 34.314323, 48.695564>,  <39.020790, 33.852974, 48.824162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641083, 34.314323, 48.695564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944786, 34.521538, 48.537998>,  <39.127007, 34.645866, 48.443459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944786, 34.521538, 48.537998>,  <38.641083, 34.314323, 48.695564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944786, 34.521538, 48.537998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573117, 0.245478, -0.781842,
		-0.308323, 0.819379, 0.483275,
		0.759258, 0.518034, -0.393914,
		39.172565, 34.676949, 48.419823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318821, 34.876942, 48.310555>,  <38.641083, 34.314323, 48.695564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318821, 34.876942, 48.310555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690201, 34.832027, 48.168919>,  <38.913029, 34.805080, 48.083939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690201, 34.832027, 48.168919>,  <38.318821, 34.876942, 48.310555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690201, 34.832027, 48.168919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322794, 0.227847, -0.918635,
		0.183826, 0.967201, 0.175299,
		0.928446, -0.112283, -0.354091,
		38.968735, 34.798344, 48.062691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458305, 35.447872, 47.855747>,  <38.318821, 34.876942, 48.310555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458305, 35.447872, 47.855747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708183, 35.149494, 47.763382>,  <38.858109, 34.970467, 47.707962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708183, 35.149494, 47.763382>,  <38.458305, 35.447872, 47.855747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708183, 35.149494, 47.763382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293672, 0.049570, -0.954620,
		0.723541, 0.664159, -0.188097,
		0.624696, -0.745946, -0.230911,
		38.895592, 34.925709, 47.694107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984245, 35.646282, 47.346046>,  <38.458305, 35.447872, 47.855747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984245, 35.646282, 47.346046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938095, 35.251328, 47.302681>,  <38.910404, 35.014355, 47.276661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938095, 35.251328, 47.302681>,  <38.984245, 35.646282, 47.346046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938095, 35.251328, 47.302681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124752, 0.122684, -0.984574,
		0.985456, -0.100075, -0.137333,
		-0.115380, -0.987387, -0.108415,
		38.903481, 34.955112, 47.270157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120613, 35.621006, 46.656235>,  <38.984245, 35.646282, 47.346046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120613, 35.621006, 46.656235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970924, 35.258213, 46.733521>,  <38.881111, 35.040535, 46.779892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970924, 35.258213, 46.733521>,  <39.120613, 35.621006, 46.656235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970924, 35.258213, 46.733521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297206, -0.080062, -0.951451,
		0.878422, -0.413480, -0.239601,
		-0.374223, -0.906986, 0.193217,
		38.858658, 34.986118, 46.791485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157009, 35.314926, 46.034435>,  <39.120613, 35.621006, 46.656235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157009, 35.314926, 46.034435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905304, 35.082336, 46.240704>,  <38.754280, 34.942783, 46.364464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905304, 35.082336, 46.240704>,  <39.157009, 35.314926, 46.034435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905304, 35.082336, 46.240704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534241, -0.158266, -0.830385,
		0.564461, -0.798022, -0.211056,
		-0.629262, -0.581475, 0.515671,
		38.716526, 34.907894, 46.395405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126694, 34.803196, 45.623787>,  <39.157009, 35.314926, 46.034435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126694, 34.803196, 45.623787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798634, 34.783150, 45.851765>,  <38.601799, 34.771122, 45.988552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798634, 34.783150, 45.851765>,  <39.126694, 34.803196, 45.623787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798634, 34.783150, 45.851765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541741, -0.252404, -0.801754,
		0.184038, -0.966323, 0.179860,
		-0.820150, -0.050116, 0.569949,
		38.552589, 34.768116, 46.022751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820274, 34.171314, 45.543880>,  <39.126694, 34.803196, 45.623787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820274, 34.171314, 45.543880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504997, 34.371464, 45.687202>,  <38.315830, 34.491554, 45.773193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504997, 34.371464, 45.687202>,  <38.820274, 34.171314, 45.543880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504997, 34.371464, 45.687202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553175, -0.320857, -0.768797,
		-0.269715, -0.804167, 0.529687,
		-0.788195, 0.500366, 0.358305,
		38.268539, 34.521576, 45.794693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252525, 33.674915, 45.460907>,  <38.820274, 34.171314, 45.543880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252525, 33.674915, 45.460907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053005, 34.016354, 45.521008>,  <37.933292, 34.221218, 45.557068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053005, 34.016354, 45.521008>,  <38.252525, 33.674915, 45.460907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053005, 34.016354, 45.521008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587296, -0.205385, -0.782880,
		-0.637405, -0.478737, 0.603759,
		-0.498797, 0.853597, 0.150247,
		37.903366, 34.272434, 45.566082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488094, 33.470955, 45.514084>,  <38.252525, 33.674915, 45.460907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488094, 33.470955, 45.514084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525951, 33.851440, 45.396622>,  <37.548664, 34.079731, 45.326145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525951, 33.851440, 45.396622>,  <37.488094, 33.470955, 45.514084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525951, 33.851440, 45.396622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651326, -0.163918, -0.740881,
		-0.752872, 0.261384, 0.604038,
		0.094642, 0.951215, -0.293655,
		37.554344, 34.136806, 45.308525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755863, 33.737457, 45.440872>,  <37.488094, 33.470955, 45.514084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755863, 33.737457, 45.440872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983841, 33.996529, 45.238617>,  <37.120628, 34.151970, 45.117264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983841, 33.996529, 45.238617>,  <36.755863, 33.737457, 45.440872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983841, 33.996529, 45.238617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559415, -0.144874, -0.816129,
		-0.601842, 0.748015, 0.279749,
		0.569948, 0.647676, -0.505643,
		37.154827, 34.190830, 45.086926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333652, 34.302464, 45.152588>,  <36.755863, 33.737457, 45.440872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333652, 34.302464, 45.152588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658596, 34.303524, 44.919327>,  <36.853561, 34.304161, 44.779369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658596, 34.303524, 44.919327>,  <36.333652, 34.302464, 45.152588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658596, 34.303524, 44.919327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582115, 0.063341, -0.810635,
		0.034790, 0.997989, 0.052998,
		0.812362, 0.002649, -0.583148,
		36.902306, 34.304317, 44.744381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250580, 34.805668, 44.624893>,  <36.333652, 34.302464, 45.152588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250580, 34.805668, 44.624893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538704, 34.569946, 44.478535>,  <36.711578, 34.428513, 44.390720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538704, 34.569946, 44.478535>,  <36.250580, 34.805668, 44.624893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538704, 34.569946, 44.478535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449982, 0.004463, -0.893026,
		0.527898, 0.807898, -0.261962,
		0.720305, -0.589305, -0.365896,
		36.754795, 34.393154, 44.368767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387798, 35.171646, 43.960190>,  <36.250580, 34.805668, 44.624893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387798, 35.171646, 43.960190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531116, 34.798416, 43.972775>,  <36.617107, 34.574478, 43.980324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531116, 34.798416, 43.972775>,  <36.387798, 35.171646, 43.960190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531116, 34.798416, 43.972775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449164, -0.201821, -0.870356,
		0.818460, 0.297713, -0.491417,
		0.358295, -0.933078, 0.031460,
		36.638603, 34.518494, 43.982212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749409, 35.111729, 43.367325>,  <36.387798, 35.171646, 43.960190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749409, 35.111729, 43.367325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701454, 34.729900, 43.476444>,  <36.672680, 34.500805, 43.541916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701454, 34.729900, 43.476444>,  <36.749409, 35.111729, 43.367325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701454, 34.729900, 43.476444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358898, -0.214530, -0.908388,
		0.925646, -0.206810, -0.316874,
		-0.119885, -0.954571, 0.272802,
		36.665489, 34.443527, 43.558285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019989, 34.820988, 42.758411>,  <36.749409, 35.111729, 43.367325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019989, 34.820988, 42.758411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798813, 34.545055, 42.945335>,  <36.666107, 34.379494, 43.057491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798813, 34.545055, 42.945335>,  <37.019989, 34.820988, 42.758411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798813, 34.545055, 42.945335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370181, -0.299075, -0.879500,
		0.746472, -0.659304, -0.089992,
		-0.552943, -0.689835, 0.467313,
		36.632931, 34.338104, 43.085529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106728, 34.292549, 42.297981>,  <37.019989, 34.820988, 42.758411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106728, 34.292549, 42.297981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787064, 34.189758, 42.515354>,  <36.595264, 34.128086, 42.645779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787064, 34.189758, 42.515354>,  <37.106728, 34.292549, 42.297981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787064, 34.189758, 42.515354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448155, -0.347813, -0.823519,
		0.400634, -0.901660, 0.162793,
		-0.799155, -0.256973, 0.543429,
		36.547318, 34.112667, 42.678383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837360, 33.588135, 42.058270>,  <37.106728, 34.292549, 42.297981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837360, 33.588135, 42.058270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521645, 33.717022, 42.267342>,  <36.332214, 33.794353, 42.392784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521645, 33.717022, 42.267342>,  <36.837360, 33.588135, 42.058270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521645, 33.717022, 42.267342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606279, -0.274241, -0.746470,
		-0.097191, -0.906070, 0.411813,
		-0.789291, 0.322224, 0.522677,
		36.284859, 33.813690, 42.424145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291634, 33.040287, 41.972733>,  <36.837360, 33.588135, 42.058270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291634, 33.040287, 41.972733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122757, 33.390453, 42.066891>,  <36.021431, 33.600552, 42.123386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122757, 33.390453, 42.066891>,  <36.291634, 33.040287, 41.972733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122757, 33.390453, 42.066891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546400, -0.038551, -0.836636,
		-0.723327, -0.481837, 0.494601,
		-0.422190, 0.875412, 0.235391,
		35.996101, 33.653076, 42.137508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561691, 32.910252, 42.032944>,  <36.291634, 33.040287, 41.972733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561691, 32.910252, 42.032944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632713, 33.292271, 41.937988>,  <35.675327, 33.521484, 41.881016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632713, 33.292271, 41.937988>,  <35.561691, 32.910252, 42.032944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632713, 33.292271, 41.937988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439876, -0.138767, -0.887272,
		-0.880331, 0.261961, 0.395465,
		0.177553, 0.955049, -0.237392,
		35.685978, 33.578785, 41.866772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994591, 33.127258, 41.663727>,  <35.561691, 32.910252, 42.032944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994591, 33.127258, 41.663727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275112, 33.398022, 41.574318>,  <35.443424, 33.560478, 41.520672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275112, 33.398022, 41.574318>,  <34.994591, 33.127258, 41.663727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275112, 33.398022, 41.574318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326665, 0.026460, -0.944770,
		-0.633608, 0.735592, 0.239679,
		0.701307, 0.676908, -0.223527,
		35.485504, 33.601093, 41.507259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637737, 33.584328, 41.126461>,  <34.994591, 33.127258, 41.663727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637737, 33.584328, 41.126461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021923, 33.686729, 41.082680>,  <35.252434, 33.748169, 41.056412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021923, 33.686729, 41.082680>,  <34.637737, 33.584328, 41.126461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021923, 33.686729, 41.082680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126954, 0.052822, -0.990501,
		-0.247790, 0.965232, 0.083234,
		0.960460, 0.256003, -0.109451,
		35.310062, 33.763531, 41.049843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702633, 34.176800, 40.636810>,  <34.637737, 33.584328, 41.126461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702633, 34.176800, 40.636810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063747, 34.005001, 40.627853>,  <35.280418, 33.901920, 40.622478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063747, 34.005001, 40.627853>,  <34.702633, 34.176800, 40.636810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063747, 34.005001, 40.627853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080323, 0.219537, -0.972292,
		0.422515, 0.875976, 0.232694,
		0.902790, -0.429499, -0.022396,
		35.334583, 33.876152, 40.621136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243279, 34.772873, 40.464401>,  <34.702633, 34.176800, 40.636810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243279, 34.772873, 40.464401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417957, 34.425739, 40.369617>,  <35.522766, 34.217457, 40.312748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417957, 34.425739, 40.369617>,  <35.243279, 34.772873, 40.464401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417957, 34.425739, 40.369617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232719, 0.363421, -0.902090,
		0.868984, 0.338798, 0.360669,
		0.436701, -0.867837, -0.236963,
		35.548969, 34.165390, 40.298531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769855, 34.911602, 40.034428>,  <35.243279, 34.772873, 40.464401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769855, 34.911602, 40.034428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683319, 34.530197, 39.950512>,  <35.631397, 34.301353, 39.900162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683319, 34.530197, 39.950512>,  <35.769855, 34.911602, 40.034428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683319, 34.530197, 39.950512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085348, 0.195585, -0.976966,
		0.972580, -0.229263, 0.039067,
		-0.216341, -0.953512, -0.209790,
		35.618416, 34.244144, 39.887573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382896, 34.557926, 39.666641>,  <35.769855, 34.911602, 40.034428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382896, 34.557926, 39.666641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072521, 34.334911, 39.548611>,  <35.886295, 34.201103, 39.477791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072521, 34.334911, 39.548611>,  <36.382896, 34.557926, 39.666641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072521, 34.334911, 39.548611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367784, -0.019814, -0.929700,
		0.512496, -0.829916, 0.220428,
		-0.775940, -0.557537, -0.295075,
		35.839741, 34.167652, 39.460087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704857, 34.088284, 39.235344>,  <36.382896, 34.557926, 39.666641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704857, 34.088284, 39.235344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318375, 34.046562, 39.141048>,  <36.086487, 34.021530, 39.084469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318375, 34.046562, 39.141048>,  <36.704857, 34.088284, 39.235344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318375, 34.046562, 39.141048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249695, -0.151338, -0.956425,
		0.064082, -0.982964, 0.172267,
		-0.966201, -0.104304, -0.235743,
		36.028515, 34.015270, 39.070324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634903, 33.475498, 38.919987>,  <36.704857, 34.088284, 39.235344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634903, 33.475498, 38.919987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315472, 33.684456, 38.800407>,  <36.123814, 33.809830, 38.728661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315472, 33.684456, 38.800407>,  <36.634903, 33.475498, 38.919987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315472, 33.684456, 38.800407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198997, -0.239600, -0.950259,
		-0.568043, -0.818347, 0.087383,
		-0.798579, 0.522399, -0.298952,
		36.075897, 33.841175, 38.710724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522091, 33.229107, 38.316532>,  <36.634903, 33.475498, 38.919987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522091, 33.229107, 38.316532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286087, 33.551235, 38.293369>,  <36.144485, 33.744511, 38.279472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286087, 33.551235, 38.293369>,  <36.522091, 33.229107, 38.316532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286087, 33.551235, 38.293369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081128, -0.012220, -0.996629,
		-0.803310, -0.592718, -0.058124,
		-0.590009, 0.805318, -0.057902,
		36.109085, 33.792831, 38.275997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151024, 33.138931, 37.767197>,  <36.522091, 33.229107, 38.316532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151024, 33.138931, 37.767197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097607, 33.531338, 37.823448>,  <36.065556, 33.766781, 37.857197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097607, 33.531338, 37.823448>,  <36.151024, 33.138931, 37.767197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097607, 33.531338, 37.823448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299327, 0.175196, -0.937928,
		-0.944759, -0.083161, -0.317041,
		-0.133543, 0.981015, 0.140626,
		36.057545, 33.825642, 37.865635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718086, 33.343559, 37.304737>,  <36.151024, 33.138931, 37.767197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718086, 33.343559, 37.304737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943844, 33.654526, 37.415798>,  <36.079300, 33.841106, 37.482433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943844, 33.654526, 37.415798>,  <35.718086, 33.343559, 37.304737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943844, 33.654526, 37.415798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428029, 0.012006, -0.903685,
		-0.705870, 0.628876, -0.325979,
		0.564393, 0.777413, 0.277652,
		36.113163, 33.887749, 37.499092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819115, 33.732586, 36.751606>,  <35.718086, 33.343559, 37.304737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819115, 33.732586, 36.751606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121708, 33.905445, 36.947964>,  <36.303265, 34.009159, 37.065777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121708, 33.905445, 36.947964>,  <35.819115, 33.732586, 36.751606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121708, 33.905445, 36.947964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453649, 0.193934, -0.869823,
		-0.471093, 0.880703, -0.049335,
		0.756487, 0.432149, 0.490891,
		36.348656, 34.035091, 37.095230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013878, 34.449638, 36.513138>,  <35.819115, 33.732586, 36.751606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013878, 34.449638, 36.513138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341240, 34.308121, 36.694267>,  <36.537659, 34.223209, 36.802944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341240, 34.308121, 36.694267>,  <36.013878, 34.449638, 36.513138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341240, 34.308121, 36.694267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564255, 0.345617, -0.749776,
		0.108761, 0.869127, 0.482483,
		0.818405, -0.353790, 0.452820,
		36.586761, 34.201984, 36.830112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448723, 34.995327, 36.283413>,  <36.013878, 34.449638, 36.513138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448723, 34.995327, 36.283413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656212, 34.669979, 36.388763>,  <36.780704, 34.474770, 36.451973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656212, 34.669979, 36.388763>,  <36.448723, 34.995327, 36.283413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656212, 34.669979, 36.388763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654098, 0.179187, -0.734879,
		0.550532, 0.553469, 0.624969,
		0.518720, -0.813366, 0.263375,
		36.811829, 34.425968, 36.467777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164146, 35.244301, 36.334999>,  <36.448723, 34.995327, 36.283413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164146, 35.244301, 36.334999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173241, 34.846916, 36.290241>,  <37.178699, 34.608486, 36.263386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173241, 34.846916, 36.290241>,  <37.164146, 35.244301, 36.334999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173241, 34.846916, 36.290241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769568, 0.088837, -0.632355,
		0.638160, -0.071730, 0.766555,
		0.022740, -0.993460, -0.111893,
		37.180061, 34.548878, 36.256672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814495, 35.022621, 36.523262>,  <37.164146, 35.244301, 36.334999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814495, 35.022621, 36.523262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682880, 34.732040, 36.281933>,  <37.603912, 34.557690, 36.137135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682880, 34.732040, 36.281933>,  <37.814495, 35.022621, 36.523262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682880, 34.732040, 36.281933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828631, 0.084300, -0.553411,
		0.452889, -0.682023, 0.574227,
		-0.329032, -0.726456, -0.603324,
		37.584171, 34.514103, 36.100937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364075, 34.877853, 36.331730>,  <37.814495, 35.022621, 36.523262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364075, 34.877853, 36.331730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130623, 34.676544, 36.076828>,  <37.990551, 34.555759, 35.923889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130623, 34.676544, 36.076828>,  <38.364075, 34.877853, 36.331730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130623, 34.676544, 36.076828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691125, 0.104113, -0.715197,
		0.426288, -0.857831, 0.287063,
		-0.583631, -0.503276, -0.637250,
		37.955532, 34.525562, 35.885654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753365, 34.343147, 35.995152>,  <38.364075, 34.877853, 36.331730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753365, 34.343147, 35.995152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451622, 34.406006, 35.740200>,  <38.270576, 34.443722, 35.587231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451622, 34.406006, 35.740200>,  <38.753365, 34.343147, 35.995152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451622, 34.406006, 35.740200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643073, -0.018206, -0.765588,
		-0.131918, -0.987407, -0.087326,
		-0.754357, 0.157152, -0.637376,
		38.225315, 34.453152, 35.548988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747288, 33.792759, 35.452030>,  <38.753365, 34.343147, 35.995152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747288, 33.792759, 35.452030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634583, 34.158051, 35.334305>,  <38.566959, 34.377224, 35.263672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634583, 34.158051, 35.334305>,  <38.747288, 33.792759, 35.452030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634583, 34.158051, 35.334305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723974, 0.001059, -0.689826,
		-0.629658, -0.407443, -0.661453,
		-0.281765, 0.913230, -0.294311,
		38.550053, 34.432018, 35.246010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514904, 33.821747, 34.681675>,  <38.747288, 33.792759, 35.452030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514904, 33.821747, 34.681675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688984, 34.138279, 34.853436>,  <38.793430, 34.328197, 34.956493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688984, 34.138279, 34.853436>,  <38.514904, 33.821747, 34.681675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688984, 34.138279, 34.853436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751387, -0.056481, -0.657440,
		-0.496002, 0.608769, -0.619179,
		0.435201, 0.791335, 0.429406,
		38.819546, 34.375679, 34.982258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650414, 34.297012, 34.213329>,  <38.514904, 33.821747, 34.681675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650414, 34.297012, 34.213329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923897, 34.346828, 34.500950>,  <39.087986, 34.376717, 34.673523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923897, 34.346828, 34.500950>,  <38.650414, 34.297012, 34.213329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923897, 34.346828, 34.500950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729515, -0.141951, -0.669072,
		0.018744, 0.982008, -0.187905,
		0.683707, 0.124539, 0.719051,
		39.129009, 34.384190, 34.716663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220066, 34.553562, 33.933990>,  <38.650414, 34.297012, 34.213329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220066, 34.553562, 33.933990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382023, 34.410278, 34.270500>,  <39.479198, 34.324306, 34.472404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382023, 34.410278, 34.270500>,  <39.220066, 34.553562, 33.933990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382023, 34.410278, 34.270500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886777, -0.070458, -0.456795,
		0.222905, 0.930978, 0.289126,
		0.404895, -0.358213, 0.841275,
		39.503490, 34.302814, 34.522884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718449, 34.919842, 34.284103>,  <39.220066, 34.553562, 33.933990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718449, 34.919842, 34.284103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777966, 34.524406, 34.293591>,  <39.813675, 34.287148, 34.299282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777966, 34.524406, 34.293591>,  <39.718449, 34.919842, 34.284103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777966, 34.524406, 34.293591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916138, 0.128783, -0.379614,
		0.372226, 0.078211, 0.924841,
		0.148793, -0.988584, 0.023716,
		39.822605, 34.227833, 34.300705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214016, 34.685291, 34.801167>,  <39.718449, 34.919842, 34.284103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214016, 34.685291, 34.801167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219334, 34.446011, 34.480671>,  <40.222527, 34.302444, 34.288372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219334, 34.446011, 34.480671>,  <40.214016, 34.685291, 34.801167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219334, 34.446011, 34.480671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882137, 0.384310, -0.272284,
		0.470804, -0.703182, 0.532803,
		0.013296, -0.598198, -0.801238,
		40.223324, 34.266552, 34.240299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814716, 34.111069, 34.770985>,  <40.214016, 34.685291, 34.801167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814716, 34.111069, 34.770985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699993, 34.272358, 34.423389>,  <40.631157, 34.369133, 34.214832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699993, 34.272358, 34.423389>,  <40.814716, 34.111069, 34.770985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699993, 34.272358, 34.423389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893245, 0.440372, -0.090476,
		0.346197, -0.802173, -0.486484,
		-0.286811, 0.403227, -0.868992,
		40.613949, 34.393326, 34.162693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087551, 34.786167, 34.641476>,  <40.814716, 34.111069, 34.770985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087551, 34.786167, 34.641476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461018, 34.666836, 34.720737>,  <41.685097, 34.595238, 34.768295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461018, 34.666836, 34.720737>,  <41.087551, 34.786167, 34.641476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461018, 34.666836, 34.720737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201037, 0.894461, 0.399403,
		-0.296392, -0.333075, 0.895105,
		0.933668, -0.298329, 0.198151,
		41.741119, 34.577335, 34.780182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237179, 34.855770, 35.323586>,  <41.087551, 34.786167, 34.641476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237179, 34.855770, 35.323586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599861, 34.887611, 35.157913>,  <41.817471, 34.906715, 35.058510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599861, 34.887611, 35.157913>,  <41.237179, 34.855770, 35.323586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599861, 34.887611, 35.157913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213977, 0.759433, 0.614390,
		0.363453, -0.645697, 0.671549,
		0.906706, 0.079606, -0.414183,
		41.871872, 34.911491, 35.033657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720711, 34.920166, 35.976158>,  <41.237179, 34.855770, 35.323586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720711, 34.920166, 35.976158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881077, 35.050987, 35.633858>,  <41.977299, 35.129478, 35.428478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881077, 35.050987, 35.633858>,  <41.720711, 34.920166, 35.976158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881077, 35.050987, 35.633858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158497, 0.895257, 0.416405,
		0.902299, -0.302578, 0.307088,
		0.400918, 0.327049, -0.855747,
		42.001354, 35.149101, 35.377132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058155, 35.555096, 36.140747>,  <41.720711, 34.920166, 35.976158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058155, 35.555096, 36.140747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097080, 35.576389, 35.743214>,  <42.120434, 35.589165, 35.504696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097080, 35.576389, 35.743214>,  <42.058155, 35.555096, 36.140747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097080, 35.576389, 35.743214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285081, 0.955236, 0.079077,
		0.953551, -0.291017, 0.077781,
		0.097312, 0.053231, -0.993830,
		42.126274, 35.592358, 35.445065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713634, 35.769951, 36.078403>,  <42.058155, 35.555096, 36.140747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713634, 35.769951, 36.078403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504860, 35.861725, 35.749786>,  <42.379593, 35.916790, 35.552616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504860, 35.861725, 35.749786>,  <42.713634, 35.769951, 36.078403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504860, 35.861725, 35.749786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253644, 0.961325, 0.107325,
		0.814397, -0.152363, -0.559949,
		-0.521941, 0.229433, -0.821546,
		42.348278, 35.930553, 35.503323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100723, 36.246292, 35.689339>,  <42.713634, 35.769951, 36.078403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100723, 36.246292, 35.689339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727875, 36.282310, 35.549034>,  <42.504166, 36.303921, 35.464851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727875, 36.282310, 35.549034>,  <43.100723, 36.246292, 35.689339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727875, 36.282310, 35.549034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071544, 0.995292, 0.065380,
		0.355002, 0.035847, -0.934178,
		-0.932124, 0.090045, -0.350766,
		42.448238, 36.309322, 35.443806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182938, 36.766041, 35.153481>,  <43.100723, 36.246292, 35.689339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182938, 36.766041, 35.153481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791386, 36.756836, 35.234741>,  <42.556454, 36.751312, 35.283497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791386, 36.756836, 35.234741>,  <43.182938, 36.766041, 35.153481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791386, 36.756836, 35.234741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025163, 0.999651, -0.008030,
		-0.202892, -0.012972, -0.979115,
		-0.978878, -0.023008, 0.203148,
		42.497723, 36.749935, 35.295685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876560, 37.425465, 34.849995>,  <43.182938, 36.766041, 35.153481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876560, 37.425465, 34.849995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602234, 37.288109, 35.106663>,  <42.437637, 37.205696, 35.260662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602234, 37.288109, 35.106663>,  <42.876560, 37.425465, 34.849995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602234, 37.288109, 35.106663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003641, 0.883296, 0.468801,
		-0.727767, 0.319174, -0.607028,
		-0.685815, -0.343389, 0.641671,
		42.396488, 37.185093, 35.299164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356129, 38.007267, 34.945816>,  <42.876560, 37.425465, 34.849995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356129, 38.007267, 34.945816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358784, 37.764301, 35.263557>,  <42.360374, 37.618523, 35.454201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358784, 37.764301, 35.263557>,  <42.356129, 38.007267, 34.945816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358784, 37.764301, 35.263557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125166, 0.787620, 0.603314,
		-0.992114, -0.103428, -0.070804,
		0.006633, -0.607419, 0.794354,
		42.360775, 37.582077, 35.501865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120831, 38.484303, 35.380245>,  <42.356129, 38.007267, 34.945816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120831, 38.484303, 35.380245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223442, 38.171204, 35.607048>,  <42.285011, 37.983345, 35.743130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223442, 38.171204, 35.607048>,  <42.120831, 38.484303, 35.380245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223442, 38.171204, 35.607048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195002, 0.532656, 0.823561,
		-0.946660, -0.321837, -0.015995,
		0.256532, -0.782751, 0.567003,
		42.300404, 37.936378, 35.777149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588123, 38.420628, 35.973274>,  <42.120831, 38.484303, 35.380245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588123, 38.420628, 35.973274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923374, 38.241535, 36.097904>,  <42.124523, 38.134079, 36.172684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923374, 38.241535, 36.097904>,  <41.588123, 38.420628, 35.973274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923374, 38.241535, 36.097904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084687, 0.457472, 0.885182,
		-0.538863, -0.768281, 0.345502,
		0.838126, -0.447732, 0.311578,
		42.174812, 38.107216, 36.191376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477421, 38.233570, 36.660061>,  <41.588123, 38.420628, 35.973274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477421, 38.233570, 36.660061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875923, 38.240295, 36.626118>,  <42.115025, 38.244331, 36.605751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875923, 38.240295, 36.626118>,  <41.477421, 38.233570, 36.660061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875923, 38.240295, 36.626118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070168, 0.416629, 0.906365,
		0.050597, -0.908921, 0.413887,
		0.996251, 0.016818, -0.084857,
		42.174797, 38.245342, 36.600662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801464, 38.008106, 37.300472>,  <41.477421, 38.233570, 36.660061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801464, 38.008106, 37.300472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088684, 38.202141, 37.100834>,  <42.261017, 38.318562, 36.981052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088684, 38.202141, 37.100834>,  <41.801464, 38.008106, 37.300472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088684, 38.202141, 37.100834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282367, 0.452387, 0.845940,
		0.636140, -0.748353, 0.187863,
		0.718049, 0.485090, -0.499092,
		42.304100, 38.347668, 36.951107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542664, 37.892231, 37.624325>,  <41.801464, 38.008106, 37.300472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542664, 37.892231, 37.624325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582924, 38.233879, 37.420227>,  <42.607082, 38.438869, 37.297768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582924, 38.233879, 37.420227>,  <42.542664, 37.892231, 37.624325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582924, 38.233879, 37.420227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415163, 0.430006, 0.801707,
		0.904162, -0.292528, -0.311319,
		0.100653, 0.854121, -0.510242,
		42.613121, 38.490116, 37.267155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150551, 38.143169, 37.964676>,  <42.542664, 37.892231, 37.624325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150551, 38.143169, 37.964676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995625, 38.467442, 37.789051>,  <42.902668, 38.662006, 37.683678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995625, 38.467442, 37.789051>,  <43.150551, 38.143169, 37.964676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995625, 38.467442, 37.789051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366358, 0.572354, 0.733616,
		0.846030, 0.123289, -0.518684,
		-0.387318, 0.810685, -0.439061,
		42.879429, 38.710648, 37.657333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675282, 38.588402, 38.039291>,  <43.150551, 38.143169, 37.964676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675282, 38.588402, 38.039291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345760, 38.811775, 38.000298>,  <43.148048, 38.945801, 37.976902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345760, 38.811775, 38.000298>,  <43.675282, 38.588402, 38.039291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345760, 38.811775, 38.000298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320099, 0.600171, 0.733029,
		0.467860, 0.572663, -0.673175,
		-0.823799, 0.558437, -0.097487,
		43.098621, 38.979305, 37.971050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937813, 39.249611, 37.915661>,  <43.675282, 38.588402, 38.039291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937813, 39.249611, 37.915661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568424, 39.287975, 38.064259>,  <43.346790, 39.310993, 38.153416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568424, 39.287975, 38.064259>,  <43.937813, 39.249611, 37.915661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568424, 39.287975, 38.064259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325706, 0.707721, 0.626934,
		-0.202783, 0.699951, -0.684797,
		-0.923469, 0.095912, 0.371492,
		43.291382, 39.316750, 38.175705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765877, 39.934120, 37.837540>,  <43.937813, 39.249611, 37.915661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765877, 39.934120, 37.837540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466415, 39.836720, 38.084190>,  <43.286739, 39.778278, 38.232182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466415, 39.836720, 38.084190>,  <43.765877, 39.934120, 37.837540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466415, 39.836720, 38.084190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192306, 0.810352, 0.553487,
		-0.634457, 0.532951, -0.559846,
		-0.748654, -0.243503, 0.616623,
		43.241817, 39.763668, 38.269176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309757, 40.544899, 37.942955>,  <43.765877, 39.934120, 37.837540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309757, 40.544899, 37.942955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231842, 40.296185, 38.246387>,  <43.185093, 40.146957, 38.428448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231842, 40.296185, 38.246387>,  <43.309757, 40.544899, 37.942955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231842, 40.296185, 38.246387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239364, 0.719874, 0.651526,
		-0.951189, 0.308488, 0.008607,
		-0.194792, -0.621785, 0.758577,
		43.173405, 40.109650, 38.473961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061588, 40.974342, 38.303764>,  <43.309757, 40.544899, 37.942955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061588, 40.974342, 38.303764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142696, 40.691223, 38.574440>,  <43.191360, 40.521351, 38.736847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142696, 40.691223, 38.574440>,  <43.061588, 40.974342, 38.303764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142696, 40.691223, 38.574440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374124, 0.694615, 0.614444,
		-0.904940, 0.128575, 0.405650,
		0.202768, -0.707799, 0.676688,
		43.203526, 40.478882, 38.777447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852352, 41.207993, 39.037186>,  <43.061588, 40.974342, 38.303764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852352, 41.207993, 39.037186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124298, 40.923992, 39.110588>,  <43.287468, 40.753590, 39.154629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124298, 40.923992, 39.110588>,  <42.852352, 41.207993, 39.037186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124298, 40.923992, 39.110588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334583, 0.522993, 0.783921,
		-0.652560, -0.471564, 0.593121,
		0.679867, -0.710004, 0.183507,
		43.328259, 40.710991, 39.165642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766651, 40.927036, 39.755962>,  <42.852352, 41.207993, 39.037186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766651, 40.927036, 39.755962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135857, 40.940945, 39.602688>,  <43.357380, 40.949291, 39.510723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135857, 40.940945, 39.602688>,  <42.766651, 40.927036, 39.755962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135857, 40.940945, 39.602688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282653, 0.614421, 0.736610,
		0.261053, -0.788212, 0.557291,
		0.923016, 0.034774, -0.383187,
		43.412762, 40.951378, 39.487732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382069, 41.391899, 40.014889>,  <42.766651, 40.927036, 39.755962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382069, 41.391899, 40.014889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052158, 41.303963, 40.223274>,  <42.854210, 41.251202, 40.348305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052158, 41.303963, 40.223274>,  <43.382069, 41.391899, 40.014889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052158, 41.303963, 40.223274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499173, 0.149746, 0.853465,
		-0.265639, 0.963974, -0.013769,
		-0.824780, -0.219841, 0.520968,
		42.804726, 41.238010, 40.379566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182087, 41.949055, 40.512894>,  <43.382069, 41.391899, 40.014889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182087, 41.949055, 40.512894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096951, 41.580334, 40.642490>,  <43.045868, 41.359100, 40.720249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096951, 41.580334, 40.642490>,  <43.182087, 41.949055, 40.512894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096951, 41.580334, 40.642490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655288, 0.111296, 0.747135,
		-0.724773, 0.371330, 0.580360,
		-0.212842, -0.921807, 0.323992,
		43.033096, 41.303791, 40.739689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122231, 41.929237, 41.277851>,  <43.182087, 41.949055, 40.512894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122231, 41.929237, 41.277851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230541, 41.566956, 41.147388>,  <43.295528, 41.349586, 41.069111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230541, 41.566956, 41.147388>,  <43.122231, 41.929237, 41.277851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230541, 41.566956, 41.147388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733036, -0.025621, 0.679708,
		-0.623971, -0.423136, 0.656976,
		0.270776, -0.905704, -0.326160,
		43.311775, 41.295246, 41.049541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204369, 41.489456, 41.782967>,  <43.122231, 41.929237, 41.277851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204369, 41.489456, 41.782967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470539, 41.366451, 41.510895>,  <43.630241, 41.292648, 41.347652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470539, 41.366451, 41.510895>,  <43.204369, 41.489456, 41.782967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470539, 41.366451, 41.510895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737508, 0.130093, 0.662690,
		-0.115297, -0.942610, 0.313358,
		0.665424, -0.307510, -0.680183,
		43.670166, 41.274197, 41.306839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504166, 40.913624, 42.122242>,  <43.204369, 41.489456, 41.782967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504166, 40.913624, 42.122242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731205, 41.083683, 41.840225>,  <43.867428, 41.185719, 41.671017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731205, 41.083683, 41.840225>,  <43.504166, 40.913624, 42.122242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731205, 41.083683, 41.840225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666756, 0.264999, 0.696571,
		0.482981, -0.865463, -0.133057,
		0.567596, 0.425147, -0.705042,
		43.901485, 41.211227, 41.628712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211292, 40.605946, 42.030468>,  <43.504166, 40.913624, 42.122242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211292, 40.605946, 42.030468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189365, 40.992157, 41.928684>,  <44.176208, 41.223885, 41.867615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189365, 40.992157, 41.928684>,  <44.211292, 40.605946, 42.030468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189365, 40.992157, 41.928684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619899, 0.232694, 0.749385,
		0.782764, -0.116660, -0.611286,
		-0.054819, 0.965528, -0.254462,
		44.172920, 41.281815, 41.852345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700836, 40.235371, 42.328007>,  <44.211292, 40.605946, 42.030468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700836, 40.235371, 42.328007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825241, 39.988926, 42.617466>,  <44.899883, 39.841057, 42.791142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825241, 39.988926, 42.617466>,  <44.700836, 40.235371, 42.328007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825241, 39.988926, 42.617466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395745, -0.608310, -0.688001,
		0.864092, 0.500360, 0.054631,
		0.311016, -0.616116, 0.723651,
		44.918545, 39.804092, 42.834560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390953, 40.067123, 42.104179>,  <44.700836, 40.235371, 42.328007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390953, 40.067123, 42.104179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273048, 39.773983, 42.349468>,  <45.202305, 39.598099, 42.496643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273048, 39.773983, 42.349468>,  <45.390953, 40.067123, 42.104179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273048, 39.773983, 42.349468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255918, -0.678834, -0.688252,
		0.920663, -0.045936, 0.387646,
		-0.294763, -0.732854, 0.613221,
		45.184620, 39.554127, 42.533436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950817, 39.528542, 42.294102>,  <45.390953, 40.067123, 42.104179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950817, 39.528542, 42.294102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584980, 39.367615, 42.310421>,  <45.365479, 39.271057, 42.320213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584980, 39.367615, 42.310421>,  <45.950817, 39.528542, 42.294102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584980, 39.367615, 42.310421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212788, -0.564594, -0.797468,
		0.343868, -0.720676, 0.601981,
		-0.914591, -0.402318, 0.040794,
		45.310604, 39.246918, 42.322659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028622, 38.822414, 42.271030>,  <45.950817, 39.528542, 42.294102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028622, 38.822414, 42.271030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648804, 38.882778, 42.161057>,  <45.420914, 38.918995, 42.095070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648804, 38.882778, 42.161057>,  <46.028622, 38.822414, 42.271030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648804, 38.882778, 42.161057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083653, -0.723012, -0.685752,
		-0.302268, -0.674152, 0.673908,
		-0.949545, 0.150907, -0.274939,
		45.363941, 38.928051, 42.078575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803806, 38.188644, 42.100288>,  <46.028622, 38.822414, 42.271030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803806, 38.188644, 42.100288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536732, 38.431480, 41.927948>,  <45.376488, 38.577183, 41.824543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536732, 38.431480, 41.927948>,  <45.803806, 38.188644, 42.100288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536732, 38.431480, 41.927948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054151, -0.537617, -0.841449,
		-0.742470, -0.585155, 0.326085,
		-0.667687, 0.607093, -0.430851,
		45.336426, 38.613609, 41.798695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330376, 37.799629, 41.968636>,  <45.803806, 38.188644, 42.100288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330376, 37.799629, 41.968636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311073, 38.111435, 41.718826>,  <45.299492, 38.298519, 41.568939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311073, 38.111435, 41.718826>,  <45.330376, 37.799629, 41.968636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311073, 38.111435, 41.718826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014626, -0.624635, -0.780780,
		-0.998728, -0.046815, 0.018744,
		-0.048260, 0.779513, -0.624525,
		45.296597, 38.345287, 41.531467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788929, 37.675522, 41.406067>,  <45.330376, 37.799629, 41.968636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788929, 37.675522, 41.406067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054726, 37.934902, 41.257496>,  <45.214203, 38.090530, 41.168354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054726, 37.934902, 41.257496>,  <44.788929, 37.675522, 41.406067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054726, 37.934902, 41.257496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027600, -0.475399, -0.879337,
		-0.746784, 0.594565, -0.298002,
		0.664493, 0.648451, -0.371430,
		45.254074, 38.129436, 41.146069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525055, 37.773952, 40.678524>,  <44.788929, 37.675522, 41.406067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525055, 37.773952, 40.678524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903393, 37.903244, 40.666561>,  <45.130398, 37.980820, 40.659382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903393, 37.903244, 40.666561>,  <44.525055, 37.773952, 40.678524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903393, 37.903244, 40.666561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089252, -0.347534, -0.933410,
		-0.312101, 0.880194, -0.357563,
		0.945847, 0.323231, -0.029906,
		45.187145, 38.000214, 40.657589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564648, 38.046284, 40.035637>,  <44.525055, 37.773952, 40.678524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564648, 38.046284, 40.035637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953945, 38.010387, 40.120247>,  <45.187523, 37.988850, 40.171013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953945, 38.010387, 40.120247>,  <44.564648, 38.046284, 40.035637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953945, 38.010387, 40.120247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191310, -0.193410, -0.962285,
		0.127272, 0.977005, -0.171066,
		0.973243, -0.089745, 0.211527,
		45.245918, 37.983463, 40.183704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990261, 38.283554, 39.455784>,  <44.564648, 38.046284, 40.035637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990261, 38.283554, 39.455784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255299, 38.083424, 39.678726>,  <45.414322, 37.963345, 39.812492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255299, 38.083424, 39.678726>,  <44.990261, 38.283554, 39.455784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255299, 38.083424, 39.678726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308855, -0.495415, -0.811894,
		0.682334, 0.710097, -0.173730,
		0.662592, -0.500326, 0.557356,
		45.454075, 37.933327, 39.845932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592884, 38.192348, 39.032372>,  <44.990261, 38.283554, 39.455784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592884, 38.192348, 39.032372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631824, 37.892555, 39.294304>,  <45.655190, 37.712681, 39.451462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631824, 37.892555, 39.294304>,  <45.592884, 38.192348, 39.032372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631824, 37.892555, 39.294304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099277, -0.647361, -0.755690,
		0.990287, 0.138574, 0.011387,
		0.097347, -0.749480, 0.654831,
		45.661030, 37.667709, 39.490753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237240, 37.854130, 38.765644>,  <45.592884, 38.192348, 39.032372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237240, 37.854130, 38.765644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026657, 37.601616, 38.993439>,  <45.900307, 37.450108, 39.130116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026657, 37.601616, 38.993439>,  <46.237240, 37.854130, 38.765644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026657, 37.601616, 38.993439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137849, -0.597589, -0.789864,
		0.838951, -0.494334, 0.227584,
		-0.526459, -0.631285, 0.569491,
		45.868721, 37.412231, 39.164288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.403542, 37.183769, 38.486012>,  <46.237240, 37.854130, 38.765644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.403542, 37.183769, 38.486012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067585, 37.132912, 38.697075>,  <45.866013, 37.102398, 38.823715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067585, 37.132912, 38.697075>,  <46.403542, 37.183769, 38.486012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067585, 37.132912, 38.697075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331597, -0.649450, -0.684294,
		0.429690, -0.749700, 0.503305,
		-0.839887, -0.127140, 0.527661,
		45.815620, 37.094769, 38.855373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224201, 36.503567, 38.342026>,  <46.403542, 37.183769, 38.486012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224201, 36.503567, 38.342026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884415, 36.655437, 38.488586>,  <45.680542, 36.746559, 38.576523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884415, 36.655437, 38.488586>,  <46.224201, 36.503567, 38.342026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884415, 36.655437, 38.488586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526148, -0.557350, -0.642284,
		-0.039646, -0.738381, 0.673217,
		-0.849468, 0.379676, 0.366401,
		45.629574, 36.769341, 38.598507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733307, 35.896767, 38.485424>,  <46.224201, 36.503567, 38.342026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733307, 35.896767, 38.485424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523808, 36.235424, 38.447708>,  <45.398109, 36.438618, 38.425079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523808, 36.235424, 38.447708>,  <45.733307, 35.896767, 38.485424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523808, 36.235424, 38.447708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577852, -0.434412, -0.690922,
		-0.625922, -0.307384, 0.716754,
		-0.523745, 0.846641, -0.094286,
		45.366684, 36.489418, 38.419422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116047, 35.644657, 38.566669>,  <45.733307, 35.896767, 38.485424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116047, 35.644657, 38.566669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076683, 36.003510, 38.394402>,  <45.053066, 36.218819, 38.291042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076683, 36.003510, 38.394402>,  <45.116047, 35.644657, 38.566669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076683, 36.003510, 38.394402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649354, -0.385828, -0.655344,
		-0.754093, 0.215168, 0.620522,
		-0.098405, 0.897129, -0.430670,
		45.047161, 36.272648, 38.265202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423302, 35.732910, 38.418793>,  <45.116047, 35.644657, 38.566669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423302, 35.732910, 38.418793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592850, 35.985741, 38.159313>,  <44.694580, 36.137440, 38.003628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592850, 35.985741, 38.159313>,  <44.423302, 35.732910, 38.418793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592850, 35.985741, 38.159313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475430, -0.454335, -0.753357,
		-0.770907, 0.627737, 0.107929,
		0.423874, 0.632081, -0.648695,
		44.720013, 36.175365, 37.964706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901913, 36.026806, 38.013981>,  <44.423302, 35.732910, 38.418793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901913, 36.026806, 38.013981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228851, 36.070992, 37.787796>,  <44.425014, 36.097504, 37.652084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228851, 36.070992, 37.787796>,  <43.901913, 36.026806, 38.013981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228851, 36.070992, 37.787796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485095, -0.397582, -0.778853,
		-0.310852, 0.910893, -0.271376,
		0.817346, 0.110465, -0.565459,
		44.474056, 36.104130, 37.618160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640350, 36.261906, 37.429863>,  <43.901913, 36.026806, 38.013981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640350, 36.261906, 37.429863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005581, 36.115784, 37.357376>,  <44.224720, 36.028111, 37.313885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005581, 36.115784, 37.357376>,  <43.640350, 36.261906, 37.429863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005581, 36.115784, 37.357376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340870, -0.439849, -0.830867,
		0.223812, 0.820419, -0.526138,
		0.913080, -0.365303, -0.181213,
		44.279507, 36.006191, 37.303013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650249, 36.204113, 36.723888>,  <43.640350, 36.261906, 37.429863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650249, 36.204113, 36.723888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962742, 35.987579, 36.848232>,  <44.150238, 35.857658, 36.922840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962742, 35.987579, 36.848232>,  <43.650249, 36.204113, 36.723888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962742, 35.987579, 36.848232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171180, -0.664674, -0.727259,
		0.600308, 0.514947, -0.611931,
		0.781235, -0.541330, 0.310861,
		44.197113, 35.825180, 36.941490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014801, 36.024174, 36.043781>,  <43.650249, 36.204113, 36.723888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014801, 36.024174, 36.043781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127182, 35.755810, 36.318283>,  <44.194611, 35.594791, 36.482986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127182, 35.755810, 36.318283>,  <44.014801, 36.024174, 36.043781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127182, 35.755810, 36.318283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135869, -0.735662, -0.663582,
		0.950057, 0.093191, -0.297839,
		0.280948, -0.670907, 0.686259,
		44.211468, 35.554539, 36.524162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288063, 35.430546, 35.580189>,  <44.014801, 36.024174, 36.043781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288063, 35.430546, 35.580189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285522, 35.263073, 35.943432>,  <44.283997, 35.162590, 36.161377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285522, 35.263073, 35.943432>,  <44.288063, 35.430546, 35.580189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285522, 35.263073, 35.943432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049187, -0.906899, -0.418466,
		0.998769, -0.047327, -0.014830,
		-0.006355, -0.418681, 0.908111,
		44.283615, 35.137470, 36.215866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849865, 35.036228, 35.709808>,  <44.288063, 35.430546, 35.580189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849865, 35.036228, 35.709808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541138, 34.885674, 35.914799>,  <44.355900, 34.795341, 36.037792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541138, 34.885674, 35.914799>,  <44.849865, 35.036228, 35.709808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541138, 34.885674, 35.914799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044900, -0.836226, -0.546544,
		0.634257, -0.398822, 0.662314,
		-0.771817, -0.376387, 0.512475,
		44.309593, 34.772758, 36.068542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017651, 34.323055, 35.838417>,  <44.849865, 35.036228, 35.709808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017651, 34.323055, 35.838417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625984, 34.373425, 35.902145>,  <44.390984, 34.403645, 35.940384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625984, 34.373425, 35.902145>,  <45.017651, 34.323055, 35.838417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625984, 34.373425, 35.902145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167366, -0.944723, -0.281934,
		0.115016, -0.302724, 0.946113,
		-0.979163, 0.125920, 0.159324,
		44.332233, 34.411201, 35.949944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817131, 34.270336, 35.816357>,  <45.017651, 34.323055, 35.838417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817131, 34.270336, 35.816357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141174, 34.496044, 35.880013>,  <46.335602, 34.631470, 35.918205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141174, 34.496044, 35.880013>,  <45.817131, 34.270336, 35.816357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.141174, 34.496044, 35.880013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442794, -0.766783, 0.464733,
		0.384258, -0.306019, -0.871033,
		0.810111, 0.564265, 0.159139,
		46.384209, 34.665325, 35.927753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329563, 33.863319, 35.361244>,  <45.817131, 34.270336, 35.816357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329563, 33.863319, 35.361244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444073, 34.074188, 35.681278>,  <46.512779, 34.200710, 35.873299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444073, 34.074188, 35.681278>,  <46.329563, 33.863319, 35.361244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444073, 34.074188, 35.681278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367410, -0.831601, 0.416472,
		0.884906, 0.174738, -0.431749,
		0.286270, 0.527168, 0.800090,
		46.529953, 34.232338, 35.921307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995548, 34.142735, 35.515289>,  <46.329563, 33.863319, 35.361244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995548, 34.142735, 35.515289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816936, 34.021397, 35.852001>,  <46.709770, 33.948593, 36.054028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816936, 34.021397, 35.852001>,  <46.995548, 34.142735, 35.515289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.816936, 34.021397, 35.852001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818537, -0.518466, 0.247366,
		0.361398, 0.799485, 0.479808,
		-0.446529, -0.303343, 0.841781,
		46.682976, 33.930393, 36.104534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.397263, 34.606251, 35.029079>,  <46.995548, 34.142735, 35.515289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.397263, 34.606251, 35.029079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728382, 34.768158, 34.873688>,  <47.927052, 34.865303, 34.780453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728382, 34.768158, 34.873688>,  <47.397263, 34.606251, 35.029079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.728382, 34.768158, 34.873688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065593, 0.757516, 0.649513,
		0.557179, -0.512184, 0.653620,
		0.827798, 0.404768, -0.388477,
		47.976723, 34.889587, 34.757145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.888950, 37.269772, 43.818142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531857, 37.108463, 43.898537>,  <35.317600, 37.011677, 43.946774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531857, 37.108463, 43.898537>,  <35.888950, 37.269772, 43.818142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531857, 37.108463, 43.898537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099469, -0.258671, -0.960830,
		0.439467, -0.877758, 0.190812,
		-0.892734, -0.403273, 0.200987,
		35.264034, 36.987480, 43.958832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911583, 36.705070, 43.383968>,  <35.888950, 37.269772, 43.818142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911583, 36.705070, 43.383968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520447, 36.726643, 43.464882>,  <35.285767, 36.739586, 43.513432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520447, 36.726643, 43.464882>,  <35.911583, 36.705070, 43.383968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520447, 36.726643, 43.464882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206634, -0.403785, -0.891213,
		0.033621, -0.913263, 0.405980,
		-0.977840, 0.053926, 0.202287,
		35.227093, 36.742821, 43.525566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568356, 36.010471, 43.197693>,  <35.911583, 36.705070, 43.383968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568356, 36.010471, 43.197693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307758, 36.313900, 43.193153>,  <35.151402, 36.495956, 43.190430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307758, 36.313900, 43.193153>,  <35.568356, 36.010471, 43.197693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307758, 36.313900, 43.193153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325784, -0.293242, -0.898818,
		-0.685144, -0.581876, 0.438175,
		-0.651492, 0.758571, -0.011347,
		35.112312, 36.541470, 43.189751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006271, 35.766518, 42.802200>,  <35.568356, 36.010471, 43.197693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006271, 35.766518, 42.802200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.917953, 36.156132, 42.822193>,  <34.864964, 36.389900, 42.834190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.917953, 36.156132, 42.822193>,  <35.006271, 35.766518, 42.802200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917953, 36.156132, 42.822193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360721, -0.033939, -0.932056,
		-0.906163, -0.223819, 0.358850,
		-0.220791, 0.974040, 0.049982,
		34.851715, 36.448345, 42.837189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316570, 35.885944, 42.505276>,  <35.006271, 35.766518, 42.802200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316570, 35.885944, 42.505276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.513561, 36.233585, 42.486828>,  <34.631756, 36.442169, 42.475761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.513561, 36.233585, 42.486828>,  <34.316570, 35.885944, 42.505276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513561, 36.233585, 42.486828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211290, 0.067989, -0.975056,
		-0.844287, 0.489940, 0.217115,
		0.492480, 0.869101, -0.046117,
		34.661304, 36.494316, 42.472992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931915, 36.239750, 42.042828>,  <34.316570, 35.885944, 42.505276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931915, 36.239750, 42.042828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.282497, 36.432335, 42.044548>,  <34.492847, 36.547886, 42.045582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.282497, 36.432335, 42.044548>,  <33.931915, 36.239750, 42.042828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282497, 36.432335, 42.044548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132354, 0.249506, -0.959286,
		-0.462933, 0.840203, 0.282405,
		0.876456, 0.481462, 0.004301,
		34.545433, 36.576775, 42.045837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844246, 36.845631, 41.761784>,  <33.931915, 36.239750, 42.042828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844246, 36.845631, 41.761784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.240181, 36.799862, 41.728008>,  <34.477741, 36.772400, 41.707745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.240181, 36.799862, 41.728008>,  <33.844246, 36.845631, 41.761784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240181, 36.799862, 41.728008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036183, 0.371581, -0.927695,
		0.137519, 0.921323, 0.363665,
		0.989838, -0.114417, -0.084436,
		34.537132, 36.765537, 41.702679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086479, 37.423435, 41.506577>,  <33.844246, 36.845631, 41.761784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086479, 37.423435, 41.506577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.363140, 37.145821, 41.426647>,  <34.529137, 36.979252, 41.378689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.363140, 37.145821, 41.426647>,  <34.086479, 37.423435, 41.506577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363140, 37.145821, 41.426647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021730, 0.256550, -0.966286,
		0.721899, 0.672681, 0.162364,
		0.691657, -0.694034, -0.199820,
		34.570637, 36.937611, 41.366699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457138, 37.705673, 40.768425>,  <34.086479, 37.423435, 41.506577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457138, 37.705673, 40.768425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538528, 37.320004, 40.836498>,  <34.587364, 37.088600, 40.877342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538528, 37.320004, 40.836498>,  <34.457138, 37.705673, 40.768425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538528, 37.320004, 40.836498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069095, -0.159240, -0.984819,
		0.976639, 0.212145, 0.034218,
		0.203475, -0.964177, 0.170179,
		34.599571, 37.030750, 40.887550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994347, 37.486458, 40.285137>,  <34.457138, 37.705673, 40.768425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994347, 37.486458, 40.285137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875374, 37.123211, 40.403027>,  <34.803989, 36.905262, 40.473759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875374, 37.123211, 40.403027>,  <34.994347, 37.486458, 40.285137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875374, 37.123211, 40.403027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190305, -0.358892, -0.913773,
		0.935583, -0.215701, 0.279565,
		-0.297435, -0.908113, 0.294724,
		34.786144, 36.850777, 40.491444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514011, 36.931717, 40.109604>,  <34.994347, 37.486458, 40.285137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514011, 36.931717, 40.109604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175529, 36.720863, 40.140785>,  <34.972443, 36.594353, 40.159492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175529, 36.720863, 40.140785>,  <35.514011, 36.931717, 40.109604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175529, 36.720863, 40.140785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268224, -0.547764, -0.792471,
		0.460435, -0.649682, 0.604908,
		-0.846201, -0.527132, 0.077949,
		34.921669, 36.562725, 40.164169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689548, 36.249413, 39.797729>,  <35.514011, 36.931717, 40.109604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689548, 36.249413, 39.797729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292034, 36.293880, 39.800114>,  <35.053528, 36.320560, 39.801544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292034, 36.293880, 39.800114>,  <35.689548, 36.249413, 39.797729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292034, 36.293880, 39.800114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054901, -0.442765, -0.894955,
		-0.096852, -0.889719, 0.446116,
		-0.993784, 0.111171, 0.005963,
		34.993900, 36.327232, 39.801903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457893, 35.630672, 39.415974>,  <35.689548, 36.249413, 39.797729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457893, 35.630672, 39.415974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144978, 35.879822, 39.413174>,  <34.957226, 36.029312, 39.411495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144978, 35.879822, 39.413174>,  <35.457893, 35.630672, 39.415974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144978, 35.879822, 39.413174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151473, -0.201112, -0.967786,
		-0.604215, -0.756031, 0.251677,
		-0.782292, 0.622873, -0.006997,
		34.910290, 36.066685, 39.411076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062061, 35.275219, 38.952820>,  <35.457893, 35.630672, 39.415974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062061, 35.275219, 38.952820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.896652, 35.639336, 38.960518>,  <34.797409, 35.857807, 38.965137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.896652, 35.639336, 38.960518>,  <35.062061, 35.275219, 38.952820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896652, 35.639336, 38.960518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231877, -0.084843, -0.969038,
		-0.880475, -0.405178, 0.246161,
		-0.413518, 0.910292, 0.019249,
		34.772598, 35.912422, 38.966293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454643, 35.183601, 38.584736>,  <35.062061, 35.275219, 38.952820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454643, 35.183601, 38.584736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514835, 35.579044, 38.583382>,  <34.550953, 35.816311, 38.582569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514835, 35.579044, 38.583382>,  <34.454643, 35.183601, 38.584736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514835, 35.579044, 38.583382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309933, 0.043927, -0.949743,
		-0.938774, 0.143968, 0.313012,
		0.150483, 0.988607, -0.003383,
		34.559978, 35.875626, 38.582367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950874, 35.423218, 38.208931>,  <34.454643, 35.183601, 38.584736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950874, 35.423218, 38.208931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228638, 35.710876, 38.198956>,  <34.395298, 35.883472, 38.192970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228638, 35.710876, 38.198956>,  <33.950874, 35.423218, 38.208931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228638, 35.710876, 38.198956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158405, 0.118963, -0.980181,
		-0.701927, 0.684599, 0.196525,
		0.694410, 0.719147, -0.024941,
		34.436962, 35.926620, 38.191475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646240, 35.999374, 37.838844>,  <33.950874, 35.423218, 38.208931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646240, 35.999374, 37.838844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043430, 36.045925, 37.830303>,  <34.281746, 36.073856, 37.825176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043430, 36.045925, 37.830303>,  <33.646240, 35.999374, 37.838844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043430, 36.045925, 37.830303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044598, 0.200965, -0.978583,
		-0.109588, 0.972661, 0.204744,
		0.992976, 0.116372, -0.021356,
		34.341324, 36.080837, 37.823898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836922, 36.662781, 37.505192>,  <33.646240, 35.999374, 37.838844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836922, 36.662781, 37.505192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.180340, 36.460651, 37.470436>,  <34.386391, 36.339375, 37.449581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.180340, 36.460651, 37.470436>,  <33.836922, 36.662781, 37.505192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180340, 36.460651, 37.470436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213510, 0.506405, -0.835444,
		0.466171, 0.698714, 0.542663,
		0.858544, -0.505324, -0.086889,
		34.437904, 36.309055, 37.444370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417747, 37.104469, 37.325302>,  <33.836922, 36.662781, 37.505192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417747, 37.104469, 37.325302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.482994, 36.736603, 37.182419>,  <34.522141, 36.515881, 37.096687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.482994, 36.736603, 37.182419>,  <34.417747, 37.104469, 37.325302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482994, 36.736603, 37.182419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302483, 0.391243, -0.869157,
		0.939094, 0.033723, 0.342002,
		0.163117, -0.919670, -0.357213,
		34.531929, 36.460701, 37.075256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884411, 37.298382, 36.816551>,  <34.417747, 37.104469, 37.325302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884411, 37.298382, 36.816551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.802113, 36.910313, 36.765278>,  <34.752735, 36.677471, 36.734516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.802113, 36.910313, 36.765278>,  <34.884411, 37.298382, 36.816551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802113, 36.910313, 36.765278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226765, 0.080153, -0.970646,
		0.951970, -0.228773, 0.203510,
		-0.205746, -0.970174, -0.128181,
		34.740387, 36.619259, 36.726822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480957, 36.954639, 36.544228>,  <34.884411, 37.298382, 36.816551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480957, 36.954639, 36.544228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184944, 36.707809, 36.437210>,  <35.007336, 36.559711, 36.373001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184944, 36.707809, 36.437210>,  <35.480957, 36.954639, 36.544228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184944, 36.707809, 36.437210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291131, 0.064696, -0.954493,
		0.606300, -0.784242, 0.131773,
		-0.740029, -0.617072, -0.267543,
		34.962936, 36.522686, 36.356949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655796, 36.364304, 36.062687>,  <35.480957, 36.954639, 36.544228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655796, 36.364304, 36.062687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283760, 36.489563, 35.985874>,  <35.060539, 36.564720, 35.939785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283760, 36.489563, 35.985874>,  <35.655796, 36.364304, 36.062687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283760, 36.489563, 35.985874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214402, 0.038275, -0.975995,
		-0.298282, -0.948932, -0.102739,
		-0.930086, 0.313149, -0.192036,
		35.004734, 36.583508, 35.928265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324036, 36.617298, 36.335220>,  <35.655796, 36.364304, 36.062687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324036, 36.617298, 36.335220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592484, 36.635944, 36.039268>,  <36.753551, 36.647133, 35.861698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592484, 36.635944, 36.039268>,  <36.324036, 36.617298, 36.335220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592484, 36.635944, 36.039268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719639, 0.198791, 0.665284,
		0.178089, -0.978933, 0.099872,
		0.671122, 0.046608, -0.739881,
		36.793819, 36.649929, 35.817303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993767, 36.154648, 36.575676>,  <36.324036, 36.617298, 36.335220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993767, 36.154648, 36.575676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097240, 36.409084, 36.284893>,  <37.159325, 36.561745, 36.110424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097240, 36.409084, 36.284893>,  <36.993767, 36.154648, 36.575676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097240, 36.409084, 36.284893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685037, 0.409782, 0.602332,
		0.681032, -0.653809, -0.329741,
		0.258688, 0.636092, -0.726958,
		37.174847, 36.599911, 36.066807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675213, 36.053791, 36.524097>,  <36.993767, 36.154648, 36.575676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675213, 36.053791, 36.524097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.610176, 36.409332, 36.352745>,  <37.571156, 36.622658, 36.249935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.610176, 36.409332, 36.352745>,  <37.675213, 36.053791, 36.524097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610176, 36.409332, 36.352745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631192, 0.427399, 0.647246,
		0.758393, -0.165153, -0.630527,
		-0.162592, 0.888850, -0.428379,
		37.561398, 36.675987, 36.224232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317234, 36.377708, 36.422085>,  <37.675213, 36.053791, 36.524097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317234, 36.377708, 36.422085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045898, 36.671265, 36.436325>,  <37.883099, 36.847397, 36.444870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045898, 36.671265, 36.436325>,  <38.317234, 36.377708, 36.422085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045898, 36.671265, 36.436325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587642, 0.512799, 0.625871,
		0.441060, 0.445475, -0.779114,
		-0.678338, 0.733887, 0.035604,
		37.842396, 36.891430, 36.447006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718254, 37.024506, 36.466171>,  <38.317234, 36.377708, 36.422085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718254, 37.024506, 36.466171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.347221, 37.136219, 36.565441>,  <38.124603, 37.203247, 36.625004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.347221, 37.136219, 36.565441>,  <38.718254, 37.024506, 36.466171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347221, 37.136219, 36.565441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353436, 0.440561, 0.825221,
		0.121134, 0.853175, -0.507365,
		-0.927583, 0.279283, 0.248175,
		38.068947, 37.220005, 36.639893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798634, 37.511456, 36.860439>,  <38.718254, 37.024506, 36.466171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798634, 37.511456, 36.860439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420906, 37.442898, 36.972790>,  <38.194271, 37.401764, 37.040199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420906, 37.442898, 36.972790>,  <38.798634, 37.511456, 36.860439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420906, 37.442898, 36.972790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249037, 0.185607, 0.950542,
		-0.215050, 0.967561, -0.132588,
		-0.944317, -0.171395, 0.280874,
		38.137611, 37.391479, 37.057053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500774, 38.097488, 37.236553>,  <38.798634, 37.511456, 36.860439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500774, 38.097488, 37.236553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283260, 37.785896, 37.361446>,  <38.152752, 37.598942, 37.436382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283260, 37.785896, 37.361446>,  <38.500774, 38.097488, 37.236553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283260, 37.785896, 37.361446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114818, 0.299498, 0.947163,
		-0.831335, 0.550900, -0.073421,
		-0.543782, -0.778980, 0.312236,
		38.120125, 37.552204, 37.455116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205009, 38.293148, 37.864346>,  <38.500774, 38.097488, 37.236553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205009, 38.293148, 37.864346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125011, 37.903439, 37.905895>,  <38.077015, 37.669613, 37.930824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125011, 37.903439, 37.905895>,  <38.205009, 38.293148, 37.864346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125011, 37.903439, 37.905895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016198, 0.102718, 0.994579,
		-0.979664, 0.200589, -0.004761,
		-0.199990, -0.974276, 0.103878,
		38.065014, 37.611156, 37.937057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646309, 38.189899, 38.368088>,  <38.205009, 38.293148, 37.864346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646309, 38.189899, 38.368088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820953, 37.834496, 38.424538>,  <37.925739, 37.621254, 38.458408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820953, 37.834496, 38.424538>,  <37.646309, 38.189899, 38.368088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820953, 37.834496, 38.424538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074026, 0.191817, 0.978635,
		-0.896602, -0.416832, 0.149521,
		0.436607, -0.888514, 0.141127,
		37.951935, 37.567940, 38.466877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259823, 37.772770, 38.806778>,  <37.646309, 38.189899, 38.368088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259823, 37.772770, 38.806778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.615932, 37.590736, 38.813866>,  <37.829597, 37.481518, 38.818119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.615932, 37.590736, 38.813866>,  <37.259823, 37.772770, 38.806778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615932, 37.590736, 38.813866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028058, -0.015965, 0.999479,
		-0.454565, -0.890305, -0.026982,
		0.890272, -0.455085, 0.017722,
		37.883015, 37.454212, 38.819183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131557, 37.169300, 39.106670>,  <37.259823, 37.772770, 38.806778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131557, 37.169300, 39.106670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510406, 37.276978, 39.176529>,  <37.737717, 37.341583, 39.218445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510406, 37.276978, 39.176529>,  <37.131557, 37.169300, 39.106670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510406, 37.276978, 39.176529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137224, -0.152214, 0.978775,
		0.290060, -0.950983, -0.107225,
		0.947120, 0.269189, 0.174648,
		37.794544, 37.357735, 39.228924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294811, 36.738239, 39.662018>,  <37.131557, 37.169300, 39.106670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294811, 36.738239, 39.662018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583073, 37.015350, 39.651279>,  <37.756031, 37.181618, 39.644836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583073, 37.015350, 39.651279>,  <37.294811, 36.738239, 39.662018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583073, 37.015350, 39.651279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055114, -0.018648, 0.998306,
		0.691101, -0.720913, -0.051620,
		0.720654, 0.692775, -0.026845,
		37.799271, 37.223183, 39.643227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885719, 36.469635, 40.020584>,  <37.294811, 36.738239, 39.662018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885719, 36.469635, 40.020584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.909710, 36.868298, 40.042767>,  <37.924103, 37.107494, 40.056076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.909710, 36.868298, 40.042767>,  <37.885719, 36.469635, 40.020584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909710, 36.868298, 40.042767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108933, -0.061761, 0.992129,
		0.992238, -0.053464, -0.112273,
		0.059977, 0.996658, 0.055458,
		37.927704, 37.167294, 40.059402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438148, 36.507977, 40.439976>,  <37.885719, 36.469635, 40.020584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438148, 36.507977, 40.439976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254120, 36.862934, 40.451702>,  <38.143703, 37.075909, 40.458736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254120, 36.862934, 40.451702>,  <38.438148, 36.507977, 40.439976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254120, 36.862934, 40.451702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095820, 0.016797, 0.995257,
		0.882695, 0.460701, -0.092758,
		-0.460074, 0.887397, 0.029318,
		38.116096, 37.129154, 40.460499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622646, 36.717842, 41.036125>,  <38.438148, 36.507977, 40.439976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622646, 36.717842, 41.036125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350212, 37.005703, 40.982128>,  <38.186752, 37.178421, 40.949730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350212, 37.005703, 40.982128>,  <38.622646, 36.717842, 41.036125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350212, 37.005703, 40.982128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191150, 0.003220, 0.981555,
		0.706817, 0.694323, 0.135369,
		-0.681081, 0.719656, -0.134996,
		38.145889, 37.221600, 40.941628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722557, 37.371464, 41.493248>,  <38.622646, 36.717842, 41.036125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722557, 37.371464, 41.493248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328835, 37.382347, 41.423500>,  <38.092602, 37.388878, 41.381653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328835, 37.382347, 41.423500>,  <38.722557, 37.371464, 41.493248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328835, 37.382347, 41.423500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168452, 0.149701, 0.974276,
		0.052609, 0.988357, -0.142769,
		-0.984305, 0.027206, -0.174366,
		38.033543, 37.390511, 41.371189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545868, 37.902035, 41.850002>,  <38.722557, 37.371464, 41.493248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545868, 37.902035, 41.850002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215355, 37.680614, 41.808342>,  <38.017048, 37.547764, 41.783344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215355, 37.680614, 41.808342>,  <38.545868, 37.902035, 41.850002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215355, 37.680614, 41.808342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255637, 0.203772, 0.945054,
		-0.501910, 0.807503, -0.309880,
		-0.826278, -0.553549, -0.104153,
		37.967472, 37.514549, 41.777096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937534, 38.415386, 42.150520>,  <38.545868, 37.902035, 41.850002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937534, 38.415386, 42.150520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827953, 38.030899, 42.163261>,  <37.762207, 37.800209, 42.170906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827953, 38.030899, 42.163261>,  <37.937534, 38.415386, 42.150520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827953, 38.030899, 42.163261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276159, 0.110346, 0.954756,
		-0.921243, 0.252759, -0.295678,
		-0.273950, -0.961216, 0.031854,
		37.745770, 37.742535, 42.172817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.359905, 38.294102, 42.610859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503002, 37.921711, 42.581749>,  <37.588860, 37.698277, 42.564281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503002, 37.921711, 42.581749>,  <37.359905, 38.294102, 42.610859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503002, 37.921711, 42.581749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164461, -0.139531, 0.976465,
		-0.919225, -0.337352, -0.203026,
		0.357740, -0.930980, -0.072779,
		37.610325, 37.642418, 42.559914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881386, 37.959400, 42.928936>,  <37.359905, 38.294102, 42.610859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881386, 37.959400, 42.928936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.215580, 37.739662, 42.934448>,  <37.416096, 37.607819, 42.937756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.215580, 37.739662, 42.934448>,  <36.881386, 37.959400, 42.928936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215580, 37.739662, 42.934448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185115, -0.257747, 0.948314,
		-0.517399, -0.794850, -0.317035,
		0.835482, -0.549345, 0.013781,
		37.466225, 37.574860, 42.938583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709721, 37.280567, 43.209934>,  <36.881386, 37.959400, 42.928936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709721, 37.280567, 43.209934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.094669, 37.369362, 43.272633>,  <37.325638, 37.422638, 43.310253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.094669, 37.369362, 43.272633>,  <36.709721, 37.280567, 43.209934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094669, 37.369362, 43.272633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116307, -0.184836, 0.975863,
		0.245598, -0.957371, -0.152062,
		0.962369, 0.221984, 0.156745,
		37.383381, 37.435955, 43.319656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727833, 36.993774, 43.806629>,  <36.709721, 37.280567, 43.209934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727833, 36.993774, 43.806629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074139, 37.191429, 43.774937>,  <37.281921, 37.310024, 43.755920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074139, 37.191429, 43.774937>,  <36.727833, 36.993774, 43.806629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074139, 37.191429, 43.774937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126351, -0.062643, 0.990006,
		0.484239, -0.867122, -0.116669,
		0.865764, 0.494140, -0.079228,
		37.333870, 37.339672, 43.751167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183437, 36.628048, 44.129555>,  <36.727833, 36.993774, 43.806629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183437, 36.628048, 44.129555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.365711, 36.983356, 44.106491>,  <37.475075, 37.196541, 44.092655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.365711, 36.983356, 44.106491>,  <37.183437, 36.628048, 44.129555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365711, 36.983356, 44.106491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302482, -0.093605, 0.948548,
		0.837172, -0.449677, -0.311341,
		0.455683, 0.888273, -0.057656,
		37.502415, 37.249840, 44.089195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761127, 36.508312, 44.479698>,  <37.183437, 36.628048, 44.129555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761127, 36.508312, 44.479698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716286, 36.905193, 44.501484>,  <37.689381, 37.143322, 44.514557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716286, 36.905193, 44.501484>,  <37.761127, 36.508312, 44.479698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716286, 36.905193, 44.501484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264865, -0.022995, 0.964011,
		0.957747, 0.122492, -0.260222,
		-0.112100, 0.992203, 0.054468,
		37.682655, 37.202854, 44.517826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305996, 36.752205, 44.817101>,  <37.761127, 36.508312, 44.479698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305996, 36.752205, 44.817101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022484, 37.031399, 44.857986>,  <37.852375, 37.198914, 44.882519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022484, 37.031399, 44.857986>,  <38.305996, 36.752205, 44.817101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022484, 37.031399, 44.857986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252100, 0.115301, 0.960807,
		0.658841, 0.706773, -0.257685,
		-0.708784, 0.697981, 0.102213,
		37.809849, 37.240791, 44.888649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574272, 37.297375, 45.135418>,  <38.305996, 36.752205, 44.817101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574272, 37.297375, 45.135418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.181095, 37.328194, 45.202209>,  <37.945187, 37.346687, 45.242287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.181095, 37.328194, 45.202209>,  <38.574272, 37.297375, 45.135418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181095, 37.328194, 45.202209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177227, 0.154461, 0.971973,
		0.049098, 0.984990, -0.165482,
		-0.982945, 0.077050, 0.166983,
		37.886211, 37.351307, 45.252304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532986, 37.757973, 45.693691>,  <38.574272, 37.297375, 45.135418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532986, 37.757973, 45.693691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186115, 37.559055, 45.704308>,  <37.977993, 37.439705, 45.710678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186115, 37.559055, 45.704308>,  <38.532986, 37.757973, 45.693691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186115, 37.559055, 45.704308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037798, 0.118858, 0.992192,
		-0.496563, 0.859403, -0.121868,
		-0.867177, -0.497292, 0.026537,
		37.925961, 37.409866, 45.712269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180840, 38.053143, 46.258461>,  <38.532986, 37.757973, 45.693691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180840, 38.053143, 46.258461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.010639, 37.693981, 46.213333>,  <37.908520, 37.478485, 46.186256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.010639, 37.693981, 46.213333>,  <38.180840, 38.053143, 46.258461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010639, 37.693981, 46.213333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140469, -0.188689, 0.971939,
		-0.893991, 0.397711, 0.206414,
		-0.425498, -0.897899, -0.112821,
		37.882988, 37.424610, 46.179485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827599, 37.996250, 46.735161>,  <38.180840, 38.053143, 46.258461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827599, 37.996250, 46.735161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828995, 37.604218, 46.655731>,  <37.829834, 37.368999, 46.608074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828995, 37.604218, 46.655731>,  <37.827599, 37.996250, 46.735161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828995, 37.604218, 46.655731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023584, -0.198436, 0.979830,
		-0.999716, -0.008103, 0.022422,
		0.003490, -0.980080, -0.198571,
		37.830040, 37.310192, 46.596161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295033, 37.725868, 47.104988>,  <37.827599, 37.996250, 46.735161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295033, 37.725868, 47.104988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542549, 37.418987, 47.037457>,  <37.691059, 37.234859, 46.996937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542549, 37.418987, 47.037457>,  <37.295033, 37.725868, 47.104988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542549, 37.418987, 47.037457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045443, -0.249515, 0.967304,
		-0.784242, -0.590885, -0.189261,
		0.618789, -0.767201, -0.168829,
		37.728188, 37.188828, 46.986809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062424, 37.288334, 47.612373>,  <37.295033, 37.725868, 47.104988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062424, 37.288334, 47.612373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.413639, 37.140575, 47.490662>,  <37.624371, 37.051918, 47.417633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.413639, 37.140575, 47.490662>,  <37.062424, 37.288334, 47.612373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413639, 37.140575, 47.490662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177829, -0.338450, 0.924028,
		-0.444320, -0.865445, -0.231483,
		0.878041, -0.369400, -0.304281,
		37.677052, 37.029755, 47.399376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008377, 36.617393, 47.896725>,  <37.062424, 37.288334, 47.612373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008377, 36.617393, 47.896725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.386211, 36.726780, 47.824081>,  <37.612911, 36.792412, 47.780495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.386211, 36.726780, 47.824081>,  <37.008377, 36.617393, 47.896725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386211, 36.726780, 47.824081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277902, -0.371640, 0.885807,
		0.174741, -0.887188, -0.427041,
		0.944582, 0.273462, -0.181611,
		37.669586, 36.808819, 47.769600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412548, 36.050732, 48.112488>,  <37.008377, 36.617393, 47.896725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412548, 36.050732, 48.112488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689167, 36.339653, 48.114895>,  <37.855137, 36.513008, 48.116337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689167, 36.339653, 48.114895>,  <37.412548, 36.050732, 48.112488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689167, 36.339653, 48.114895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265581, -0.261996, 0.927806,
		0.671736, -0.640025, -0.373014,
		0.691547, 0.722306, 0.006014,
		37.896633, 36.556343, 48.116699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867741, 35.763767, 48.378582>,  <37.412548, 36.050732, 48.112488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867741, 35.763767, 48.378582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943905, 36.152885, 48.431362>,  <37.989605, 36.386356, 48.463032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943905, 36.152885, 48.431362>,  <37.867741, 35.763767, 48.378582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943905, 36.152885, 48.431362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303117, -0.186102, 0.934605,
		0.933736, -0.137964, -0.330307,
		0.190413, 0.972796, 0.131951,
		38.001030, 36.444725, 48.470947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641148, 35.815964, 48.500698>,  <37.867741, 35.763767, 48.378582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641148, 35.815964, 48.500698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419220, 36.099979, 48.674141>,  <38.286064, 36.270390, 48.778206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419220, 36.099979, 48.674141>,  <38.641148, 35.815964, 48.500698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419220, 36.099979, 48.674141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541302, -0.087711, 0.836241,
		0.631797, 0.698677, -0.335683,
		-0.554820, 0.710040, 0.433611,
		38.252773, 36.312992, 48.804226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081795, 36.314602, 48.674023>,  <38.641148, 35.815964, 48.500698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081795, 36.314602, 48.674023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.764637, 36.397644, 48.903187>,  <38.574341, 36.447468, 49.040684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.764637, 36.397644, 48.903187>,  <39.081795, 36.314602, 48.674023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764637, 36.397644, 48.903187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594910, 0.060185, 0.801536,
		0.131922, 0.976360, -0.171227,
		-0.792893, 0.207605, 0.572906,
		38.526768, 36.459927, 49.075058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373726, 36.477760, 49.371552>,  <39.081795, 36.314602, 48.674023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373726, 36.477760, 49.371552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983986, 36.446995, 49.456154>,  <38.750141, 36.428535, 49.506916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983986, 36.446995, 49.456154>,  <39.373726, 36.477760, 49.371552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983986, 36.446995, 49.456154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223756, -0.230177, 0.947075,
		-0.024163, 0.970104, 0.241483,
		-0.974346, -0.076917, 0.211504,
		38.691681, 36.423920, 49.519604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326569, 36.658516, 50.144291>,  <39.373726, 36.477760, 49.371552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326569, 36.658516, 50.144291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989498, 36.460487, 50.059635>,  <38.787254, 36.341671, 50.008842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989498, 36.460487, 50.059635>,  <39.326569, 36.658516, 50.144291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989498, 36.460487, 50.059635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020332, -0.422065, 0.906337,
		-0.538031, 0.759449, 0.365731,
		-0.842680, -0.495074, -0.211643,
		38.736694, 36.311966, 49.996143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809521, 36.931854, 50.660748>,  <39.326569, 36.658516, 50.144291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809521, 36.931854, 50.660748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660088, 36.583454, 50.533131>,  <38.570427, 36.374413, 50.456562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660088, 36.583454, 50.533131>,  <38.809521, 36.931854, 50.660748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660088, 36.583454, 50.533131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115725, -0.385023, 0.915623,
		-0.920349, 0.305141, 0.244635,
		-0.373584, -0.871003, -0.319044,
		38.548012, 36.322155, 50.437416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313793, 36.711559, 51.132442>,  <38.809521, 36.931854, 50.660748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313793, 36.711559, 51.132442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459953, 36.383255, 50.956795>,  <38.547649, 36.186272, 50.851406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459953, 36.383255, 50.956795>,  <38.313793, 36.711559, 51.132442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459953, 36.383255, 50.956795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058410, -0.450595, 0.890816,
		-0.929015, -0.351155, -0.116708,
		0.365402, -0.820765, -0.439120,
		38.569572, 36.137024, 50.825058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026516, 36.451115, 51.717682>,  <38.313793, 36.711559, 51.132442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026516, 36.451115, 51.717682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.875355, 36.693184, 51.437408>,  <37.784660, 36.838425, 51.269245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.875355, 36.693184, 51.437408>,  <38.026516, 36.451115, 51.717682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875355, 36.693184, 51.437408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100452, -0.725538, -0.680811,
		-0.920381, -0.327663, 0.213390,
		-0.377899, 0.605170, -0.700686,
		37.761986, 36.874737, 51.227203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535213, 36.028809, 51.389984>,  <38.026516, 36.451115, 51.717682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535213, 36.028809, 51.389984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672760, 36.305779, 51.136272>,  <37.755287, 36.471962, 50.984047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672760, 36.305779, 51.136272>,  <37.535213, 36.028809, 51.389984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672760, 36.305779, 51.136272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330709, -0.721490, -0.608345,
		-0.878856, -0.000571, -0.477087,
		0.343866, 0.692424, -0.634275,
		37.775921, 36.513504, 50.945992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846169, 36.366100, 51.607838>,  <37.535213, 36.028809, 51.389984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846169, 36.366100, 51.607838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466084, 36.313671, 51.720913>,  <36.238033, 36.282215, 51.788757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466084, 36.313671, 51.720913>,  <36.846169, 36.366100, 51.607838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466084, 36.313671, 51.720913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301270, 0.154789, -0.940892,
		0.079562, -0.979215, -0.186569,
		-0.950214, -0.131067, 0.282693,
		36.181019, 36.274349, 51.805721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654907, 35.910515, 51.148190>,  <36.846169, 36.366100, 51.607838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654907, 35.910515, 51.148190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316593, 36.066666, 51.293659>,  <36.113605, 36.160355, 51.380939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316593, 36.066666, 51.293659>,  <36.654907, 35.910515, 51.148190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316593, 36.066666, 51.293659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323914, 0.165925, -0.931423,
		-0.423948, -0.905580, -0.013888,
		-0.845782, 0.390377, 0.363674,
		36.062859, 36.183777, 51.402763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131203, 35.552078, 50.887806>,  <36.654907, 35.910515, 51.148190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131203, 35.552078, 50.887806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933430, 35.885700, 50.985691>,  <35.814766, 36.085873, 51.044422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933430, 35.885700, 50.985691>,  <36.131203, 35.552078, 50.887806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933430, 35.885700, 50.985691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473785, -0.022568, -0.880351,
		-0.728742, -0.551214, 0.406323,
		-0.494432, 0.834058, 0.244711,
		35.785099, 36.135918, 51.059105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419125, 35.417652, 50.718822>,  <36.131203, 35.552078, 50.887806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419125, 35.417652, 50.718822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455990, 35.815891, 50.725689>,  <35.478107, 36.054832, 50.729809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455990, 35.815891, 50.725689>,  <35.419125, 35.417652, 50.718822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455990, 35.815891, 50.725689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642621, 0.072642, -0.762733,
		-0.760621, 0.059263, 0.646486,
		0.092164, 0.995596, 0.017169,
		35.483639, 36.114571, 50.730839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667583, 35.724838, 50.534950>,  <35.419125, 35.417652, 50.718822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667583, 35.724838, 50.534950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953308, 35.991192, 50.448830>,  <35.124744, 36.151005, 50.397156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953308, 35.991192, 50.448830>,  <34.667583, 35.724838, 50.534950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953308, 35.991192, 50.448830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468554, 0.226543, -0.853894,
		-0.519817, 0.710831, 0.473825,
		0.714316, 0.665881, -0.215301,
		35.167603, 36.190956, 50.384239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332577, 36.314034, 50.187473>,  <34.667583, 35.724838, 50.534950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332577, 36.314034, 50.187473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.711239, 36.372406, 50.072556>,  <34.938438, 36.407429, 50.003605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.711239, 36.372406, 50.072556>,  <34.332577, 36.314034, 50.187473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711239, 36.372406, 50.072556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313856, 0.215582, -0.924672,
		-0.073004, 0.965520, 0.249884,
		0.946660, 0.145932, -0.287296,
		34.995235, 36.416187, 49.986366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295860, 36.904072, 49.777222>,  <34.332577, 36.314034, 50.187473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295860, 36.904072, 49.777222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626770, 36.707241, 49.668797>,  <34.825317, 36.589142, 49.603741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626770, 36.707241, 49.668797>,  <34.295860, 36.904072, 49.777222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626770, 36.707241, 49.668797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144882, 0.279301, -0.949210,
		0.542792, 0.824531, 0.159766,
		0.827276, -0.492077, -0.271062,
		34.874954, 36.559616, 49.587479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553535, 37.221771, 49.187805>,  <34.295860, 36.904072, 49.777222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553535, 37.221771, 49.187805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766289, 36.884834, 49.153034>,  <34.893940, 36.682671, 49.132172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766289, 36.884834, 49.153034>,  <34.553535, 37.221771, 49.187805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766289, 36.884834, 49.153034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056794, 0.066939, -0.996139,
		0.844912, 0.534765, -0.012237,
		0.531881, -0.842345, -0.086929,
		34.925854, 36.632130, 49.126957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182514, 37.424850, 48.904091>,  <34.553535, 37.221771, 49.187805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182514, 37.424850, 48.904091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133156, 37.035450, 48.827080>,  <35.103539, 36.801811, 48.780872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133156, 37.035450, 48.827080>,  <35.182514, 37.424850, 48.904091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133156, 37.035450, 48.827080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242527, 0.158542, -0.957103,
		0.962265, -0.164800, 0.216536,
		-0.123400, -0.973502, -0.192528,
		35.096134, 36.743401, 48.769321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757587, 37.237591, 48.433598>,  <35.182514, 37.424850, 48.904091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757587, 37.237591, 48.433598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515656, 36.922710, 48.385429>,  <35.370495, 36.733784, 48.356529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515656, 36.922710, 48.385429>,  <35.757587, 37.237591, 48.433598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515656, 36.922710, 48.385429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164841, 0.024177, -0.986024,
		0.779106, -0.616228, 0.115140,
		-0.604831, -0.787197, -0.120416,
		35.334206, 36.686550, 48.349304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159962, 36.668644, 48.033470>,  <35.757587, 37.237591, 48.433598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159962, 36.668644, 48.033470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777054, 36.569645, 47.973629>,  <35.547310, 36.510246, 47.937725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777054, 36.569645, 47.973629>,  <36.159962, 36.668644, 48.033470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777054, 36.569645, 47.973629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136408, 0.069744, -0.988195,
		0.255012, -0.966374, -0.033003,
		-0.957268, -0.247500, -0.149607,
		35.489872, 36.495396, 47.928745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147053, 36.024868, 47.667557>,  <36.159962, 36.668644, 48.033470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147053, 36.024868, 47.667557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789768, 36.190407, 47.597244>,  <35.575397, 36.289730, 47.555058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789768, 36.190407, 47.597244>,  <36.147053, 36.024868, 47.667557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789768, 36.190407, 47.597244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108376, -0.181266, -0.977444,
		-0.436380, -0.892116, 0.117058,
		-0.893212, 0.413851, -0.175785,
		35.521805, 36.314560, 47.544510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932995, 35.789070, 46.968590>,  <36.147053, 36.024868, 47.667557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932995, 35.789070, 46.968590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679054, 36.095493, 47.008835>,  <35.526691, 36.279346, 47.032982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679054, 36.095493, 47.008835>,  <35.932995, 35.789070, 46.968590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679054, 36.095493, 47.008835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047694, 0.091117, -0.994698,
		-0.771162, -0.636282, -0.021310,
		-0.634850, 0.766056, 0.100613,
		35.488598, 36.325310, 47.039017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478100, 35.697201, 46.469101>,  <35.932995, 35.789070, 46.968590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478100, 35.697201, 46.469101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435238, 36.078876, 46.580841>,  <35.409523, 36.307884, 46.647884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435238, 36.078876, 46.580841>,  <35.478100, 35.697201, 46.469101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435238, 36.078876, 46.580841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133488, 0.264621, -0.955069,
		-0.985241, -0.139627, 0.099019,
		-0.107151, 0.954191, 0.279354,
		35.403091, 36.365135, 46.664646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801559, 35.844318, 46.188755>,  <35.478100, 35.697201, 46.469101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801559, 35.844318, 46.188755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016563, 36.179619, 46.225460>,  <35.145565, 36.380798, 46.247482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016563, 36.179619, 46.225460>,  <34.801559, 35.844318, 46.188755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016563, 36.179619, 46.225460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089029, 0.164624, -0.982330,
		-0.838543, 0.519845, 0.163116,
		0.537512, 0.838248, 0.091763,
		35.177818, 36.431095, 46.252991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479626, 36.143051, 45.764637>,  <34.801559, 35.844318, 46.188755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479626, 36.143051, 45.764637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790398, 36.386482, 45.829159>,  <34.976860, 36.532539, 45.867874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790398, 36.386482, 45.829159>,  <34.479626, 36.143051, 45.764637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790398, 36.386482, 45.829159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065321, 0.332747, -0.940751,
		-0.626192, 0.720359, 0.298273,
		0.776928, 0.608574, 0.161309,
		35.023476, 36.569054, 45.877552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300785, 36.803482, 45.567833>,  <34.479626, 36.143051, 45.764637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300785, 36.803482, 45.567833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699566, 36.784302, 45.543201>,  <34.938835, 36.772793, 45.528423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699566, 36.784302, 45.543201>,  <34.300785, 36.803482, 45.567833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699566, 36.784302, 45.543201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032971, 0.456347, -0.889191,
		0.070738, 0.888509, 0.453374,
		0.996950, -0.047951, -0.061576,
		34.998650, 36.769917, 45.524727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434181, 37.326443, 45.181038>,  <34.300785, 36.803482, 45.567833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434181, 37.326443, 45.181038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778278, 37.122620, 45.173691>,  <34.984737, 37.000324, 45.169281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778278, 37.122620, 45.173691>,  <34.434181, 37.326443, 45.181038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778278, 37.122620, 45.173691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120911, 0.238854, -0.963498,
		0.495345, 0.826619, 0.267083,
		0.860240, -0.509558, -0.018368,
		35.036350, 36.969753, 45.168179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978310, 37.806664, 44.803226>,  <34.434181, 37.326443, 45.181038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978310, 37.806664, 44.803226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.079380, 37.419838, 44.790909>,  <35.140022, 37.187744, 44.783520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.079380, 37.419838, 44.790909>,  <34.978310, 37.806664, 44.803226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079380, 37.419838, 44.790909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015317, 0.035819, -0.999241,
		0.967429, 0.252017, 0.023863,
		0.252680, -0.967060, -0.030792,
		35.155186, 37.129719, 44.781670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502697, 37.797283, 44.293507>,  <34.978310, 37.806664, 44.803226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502697, 37.797283, 44.293507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333683, 37.437546, 44.338482>,  <35.232277, 37.221703, 44.365467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333683, 37.437546, 44.338482>,  <35.502697, 37.797283, 44.293507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333683, 37.437546, 44.338482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038835, -0.105972, -0.993610,
		0.905516, -0.424197, 0.009850,
		-0.422530, -0.899348, 0.112434,
		35.206924, 37.167740, 44.372211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.183552, 39.852879, 39.196011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892017, 40.120117, 39.255936>,  <43.717098, 40.280460, 39.291893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892017, 40.120117, 39.255936>,  <44.183552, 39.852879, 39.196011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892017, 40.120117, 39.255936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677689, -0.672692, -0.297024,
		-0.097661, -0.318011, 0.943044,
		-0.728835, 0.668098, 0.149817,
		43.673367, 40.320545, 39.300880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570690, 39.584198, 39.662529>,  <44.183552, 39.852879, 39.196011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570690, 39.584198, 39.662529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.444187, 39.862362, 39.404415>,  <43.368286, 40.029259, 39.249546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.444187, 39.862362, 39.404415>,  <43.570690, 39.584198, 39.662529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444187, 39.862362, 39.404415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704633, -0.627625, -0.331028,
		-0.635193, 0.349992, 0.688503,
		-0.316264, 0.695408, -0.645279,
		43.349308, 40.070984, 39.210831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950798, 39.382355, 39.522789>,  <43.570690, 39.584198, 39.662529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950798, 39.382355, 39.522789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046505, 39.611721, 39.209370>,  <43.103928, 39.749340, 39.021320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046505, 39.611721, 39.209370>,  <42.950798, 39.382355, 39.522789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046505, 39.611721, 39.209370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501896, -0.617768, -0.605362,
		-0.831175, 0.538101, 0.139984,
		0.239269, 0.573419, -0.783544,
		43.118286, 39.783749, 38.974308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366848, 39.622070, 39.172569>,  <42.950798, 39.382355, 39.522789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366848, 39.622070, 39.172569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.667759, 39.609276, 38.909340>,  <42.848305, 39.601601, 38.751404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.667759, 39.609276, 38.909340>,  <42.366848, 39.622070, 39.172569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667759, 39.609276, 38.909340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562372, -0.551539, -0.616070,
		-0.343250, 0.833536, -0.432895,
		0.752274, -0.031982, -0.658073,
		42.893440, 39.599682, 38.711918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074047, 39.716839, 38.560814>,  <42.366848, 39.622070, 39.172569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074047, 39.716839, 38.560814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428528, 39.576248, 38.440075>,  <42.641216, 39.491894, 38.367630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428528, 39.576248, 38.440075>,  <42.074047, 39.716839, 38.560814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428528, 39.576248, 38.440075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439693, -0.432699, -0.787046,
		0.146022, 0.830200, -0.538001,
		0.886198, -0.351481, -0.301850,
		42.694386, 39.470802, 38.349522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108795, 39.856083, 37.818687>,  <42.074047, 39.716839, 38.560814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108795, 39.856083, 37.818687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392548, 39.577583, 37.862541>,  <42.562798, 39.410484, 37.888851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392548, 39.577583, 37.862541>,  <42.108795, 39.856083, 37.818687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392548, 39.577583, 37.862541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174514, -0.324205, -0.929751,
		0.682881, 0.640413, -0.351489,
		0.709379, -0.696249, 0.109632,
		42.605362, 39.368710, 37.895432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331978, 39.773853, 37.125648>,  <42.108795, 39.856083, 37.818687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331978, 39.773853, 37.125648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491692, 39.446941, 37.291840>,  <42.587521, 39.250793, 37.391552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491692, 39.446941, 37.291840>,  <42.331978, 39.773853, 37.125648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491692, 39.446941, 37.291840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093127, -0.486977, -0.868436,
		0.912084, 0.308064, -0.270555,
		0.399288, -0.817283, 0.415474,
		42.611477, 39.201756, 37.416481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776211, 39.568935, 36.568623>,  <42.331978, 39.773853, 37.125648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776211, 39.568935, 36.568623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.706490, 39.252575, 36.803261>,  <42.664658, 39.062759, 36.944046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.706490, 39.252575, 36.803261>,  <42.776211, 39.568935, 36.568623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706490, 39.252575, 36.803261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141658, -0.569381, -0.809777,
		0.974450, -0.224241, -0.012793,
		-0.174301, -0.790899, 0.586598,
		42.654198, 39.015305, 36.979240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163136, 39.055820, 36.276592>,  <42.776211, 39.568935, 36.568623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163136, 39.055820, 36.276592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890419, 38.857761, 36.491997>,  <42.726788, 38.738926, 36.621239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890419, 38.857761, 36.491997>,  <43.163136, 39.055820, 36.276592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890419, 38.857761, 36.491997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059550, -0.696117, -0.715454,
		0.729119, -0.519859, 0.445121,
		-0.681791, -0.495144, 0.538509,
		42.685883, 38.709217, 36.653549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482151, 38.349461, 36.351284>,  <43.163136, 39.055820, 36.276592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482151, 38.349461, 36.351284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093403, 38.314240, 36.438663>,  <42.860153, 38.293106, 36.491093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093403, 38.314240, 36.438663>,  <43.482151, 38.349461, 36.351284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093403, 38.314240, 36.438663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058107, -0.809181, -0.584680,
		0.228252, -0.580924, 0.781299,
		-0.971867, -0.088055, 0.218452,
		42.801842, 38.287823, 36.504200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354156, 37.595509, 36.442310>,  <43.482151, 38.349461, 36.351284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354156, 37.595509, 36.442310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.987251, 37.743469, 36.383240>,  <42.767109, 37.832245, 36.347797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.987251, 37.743469, 36.383240>,  <43.354156, 37.595509, 36.442310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987251, 37.743469, 36.383240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189274, -0.731050, -0.655547,
		-0.350446, -0.573356, 0.740575,
		-0.917258, 0.369905, -0.147672,
		42.712074, 37.854443, 36.338940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910599, 37.033424, 36.412525>,  <43.354156, 37.595509, 36.442310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910599, 37.033424, 36.412525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.658123, 37.300461, 36.254578>,  <42.506638, 37.460682, 36.159809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.658123, 37.300461, 36.254578>,  <42.910599, 37.033424, 36.412525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658123, 37.300461, 36.254578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417445, -0.721462, -0.552478,
		-0.653710, -0.183885, 0.734064,
		-0.631192, 0.667591, -0.394865,
		42.468765, 37.500740, 36.136120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134598, 36.912136, 36.551849>,  <42.910599, 37.033424, 36.412525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134598, 36.912136, 36.551849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185757, 37.111088, 36.208626>,  <42.216454, 37.230457, 36.002693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185757, 37.111088, 36.208626>,  <42.134598, 36.912136, 36.551849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185757, 37.111088, 36.208626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247636, -0.821744, -0.513238,
		-0.960374, 0.278128, 0.018069,
		0.127898, 0.497375, -0.858056,
		42.224125, 37.260300, 35.951210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524490, 36.785576, 36.150379>,  <42.134598, 36.912136, 36.551849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524490, 36.785576, 36.150379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.807823, 36.907455, 35.895687>,  <41.977821, 36.980583, 35.742870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.807823, 36.907455, 35.895687>,  <41.524490, 36.785576, 36.150379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807823, 36.907455, 35.895687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268502, -0.717925, -0.642254,
		-0.652820, 0.625891, -0.426715,
		0.708331, 0.304703, -0.636729,
		42.020321, 36.998867, 35.704670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221161, 36.547993, 35.482933>,  <41.524490, 36.785576, 36.150379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221161, 36.547993, 35.482933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606033, 36.634392, 35.416538>,  <41.836956, 36.686234, 35.376701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606033, 36.634392, 35.416538>,  <41.221161, 36.547993, 35.482933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606033, 36.634392, 35.416538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079624, -0.805713, -0.586929,
		-0.260517, 0.551515, -0.792440,
		0.962180, 0.216002, -0.165989,
		41.894688, 36.699192, 35.366741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359493, 36.371582, 34.790909>,  <41.221161, 36.547993, 35.482933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359493, 36.371582, 34.790909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.711773, 36.371159, 34.980381>,  <41.923141, 36.370903, 35.094063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.711773, 36.371159, 34.980381>,  <41.359493, 36.371582, 34.790909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711773, 36.371159, 34.980381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213508, -0.891762, -0.398968,
		0.422833, 0.452504, -0.785145,
		0.880697, -0.001062, 0.473679,
		41.975983, 36.370838, 35.122486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789551, 36.210018, 34.348404>,  <41.359493, 36.371582, 34.790909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789551, 36.210018, 34.348404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953823, 36.113018, 34.699982>,  <42.052387, 36.054817, 34.910927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953823, 36.113018, 34.699982>,  <41.789551, 36.210018, 34.348404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953823, 36.113018, 34.699982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132207, -0.937959, -0.320553,
		0.902145, 0.247846, -0.353138,
		0.410677, -0.242498, 0.878942,
		42.077026, 36.040268, 34.963665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221001, 35.696289, 34.157681>,  <41.789551, 36.210018, 34.348404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221001, 35.696289, 34.157681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.222710, 35.685696, 34.557537>,  <42.223736, 35.679340, 34.797451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.222710, 35.685696, 34.557537>,  <42.221001, 35.696289, 34.157681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222710, 35.685696, 34.557537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152741, -0.987902, -0.026827,
		0.988257, 0.152801, -0.000181,
		0.004278, -0.026484, 0.999640,
		42.223991, 35.677750, 34.857430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775700, 35.401016, 34.331612>,  <42.221001, 35.696289, 34.157681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775700, 35.401016, 34.331612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541935, 35.332172, 34.648808>,  <42.401676, 35.290867, 34.839127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541935, 35.332172, 34.648808>,  <42.775700, 35.401016, 34.331612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541935, 35.332172, 34.648808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069208, -0.984259, -0.162617,
		0.808500, -0.040154, 0.587125,
		-0.584413, -0.172110, 0.792994,
		42.366611, 35.280540, 34.886707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101624, 34.760132, 34.666096>,  <42.775700, 35.401016, 34.331612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101624, 34.760132, 34.666096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.724041, 34.818272, 34.784637>,  <42.497494, 34.853157, 34.855762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.724041, 34.818272, 34.784637>,  <43.101624, 34.760132, 34.666096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724041, 34.818272, 34.784637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218310, -0.948329, -0.230247,
		0.247577, -0.282039, 0.926909,
		-0.943953, 0.145350, 0.296356,
		42.440857, 34.861877, 34.873543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966553, 34.331879, 35.243744>,  <43.101624, 34.760132, 34.666096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966553, 34.331879, 35.243744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609978, 34.413334, 35.081818>,  <42.396034, 34.462208, 34.984661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609978, 34.413334, 35.081818>,  <42.966553, 34.331879, 35.243744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609978, 34.413334, 35.081818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225350, -0.974258, 0.006146,
		-0.393142, 0.096704, 0.914378,
		-0.891435, 0.203639, -0.404814,
		42.342548, 34.474426, 34.960373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005085, 34.575066, 36.021107>,  <42.966553, 34.331879, 35.243744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005085, 34.575066, 36.021107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.398029, 34.503323, 35.999977>,  <43.633797, 34.460278, 35.987301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.398029, 34.503323, 35.999977>,  <43.005085, 34.575066, 36.021107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398029, 34.503323, 35.999977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171798, 0.754367, 0.633574,
		-0.073787, -0.631476, 0.771876,
		0.982365, -0.179356, -0.052824,
		43.692738, 34.449516, 35.984131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286911, 34.460011, 36.725487>,  <43.005085, 34.575066, 36.021107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286911, 34.460011, 36.725487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595482, 34.569595, 36.495758>,  <43.780624, 34.635345, 36.357922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595482, 34.569595, 36.495758>,  <43.286911, 34.460011, 36.725487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595482, 34.569595, 36.495758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187691, 0.764444, 0.616764,
		0.608002, -0.583585, 0.538296,
		0.771431, 0.273960, -0.574317,
		43.826912, 34.651783, 36.323463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788994, 34.518425, 37.197231>,  <43.286911, 34.460011, 36.725487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788994, 34.518425, 37.197231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950577, 34.723442, 36.894150>,  <44.047527, 34.846451, 36.712299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950577, 34.723442, 36.894150>,  <43.788994, 34.518425, 37.197231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950577, 34.723442, 36.894150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519406, 0.553316, 0.651198,
		0.753018, -0.656612, -0.042703,
		0.403956, 0.512544, -0.757705,
		44.071762, 34.877205, 36.666840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442986, 34.595345, 37.382122>,  <43.788994, 34.518425, 37.197231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442986, 34.595345, 37.382122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.375175, 34.892887, 37.123528>,  <44.334492, 35.071411, 36.968372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.375175, 34.892887, 37.123528>,  <44.442986, 34.595345, 37.382122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375175, 34.892887, 37.123528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472815, 0.636941, 0.608895,
		0.864702, -0.202447, -0.459681,
		-0.169521, 0.743856, -0.646484,
		44.324318, 35.116043, 36.929581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117790, 34.978168, 37.305759>,  <44.442986, 34.595345, 37.382122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117790, 34.978168, 37.305759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.839817, 35.237526, 37.181408>,  <44.673031, 35.393139, 37.106796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.839817, 35.237526, 37.181408>,  <45.117790, 34.978168, 37.305759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839817, 35.237526, 37.181408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395754, 0.705846, 0.587503,
		0.600368, 0.285246, -0.747123,
		-0.694937, 0.648395, -0.310880,
		44.631336, 35.432045, 37.088142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512245, 35.594013, 37.136528>,  <45.117790, 34.978168, 37.305759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512245, 35.594013, 37.136528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.135151, 35.708885, 37.204380>,  <44.908894, 35.777809, 37.245090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.135151, 35.708885, 37.204380>,  <45.512245, 35.594013, 37.136528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135151, 35.708885, 37.204380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333501, 0.804413, 0.491627,
		0.004733, 0.520047, -0.854125,
		-0.942738, 0.287179, 0.169628,
		44.852329, 35.795040, 37.255268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556995, 36.394886, 37.048660>,  <45.512245, 35.594013, 37.136528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556995, 36.394886, 37.048660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.206085, 36.309048, 37.220394>,  <44.995537, 36.257545, 37.323437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.206085, 36.309048, 37.220394>,  <45.556995, 36.394886, 37.048660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.206085, 36.309048, 37.220394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217406, 0.619814, 0.754032,
		-0.427920, 0.754838, -0.497096,
		-0.877279, -0.214594, 0.429338,
		44.942902, 36.244671, 37.349194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314732, 37.065464, 37.291096>,  <45.556995, 36.394886, 37.048660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314732, 37.065464, 37.291096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107891, 36.787373, 37.490803>,  <44.983788, 36.620518, 37.610626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107891, 36.787373, 37.490803>,  <45.314732, 37.065464, 37.291096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107891, 36.787373, 37.490803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122913, 0.516947, 0.847147,
		-0.847054, 0.499426, -0.181861,
		-0.517099, -0.695226, 0.499268,
		44.952763, 36.578804, 37.640583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847794, 37.419186, 37.682053>,  <45.314732, 37.065464, 37.291096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847794, 37.419186, 37.682053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.916172, 37.063702, 37.852211>,  <44.957199, 36.850410, 37.954308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.916172, 37.063702, 37.852211>,  <44.847794, 37.419186, 37.682053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916172, 37.063702, 37.852211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156913, 0.450800, 0.878725,
		-0.972706, -0.083462, 0.216512,
		0.170944, -0.888714, 0.425400,
		44.967457, 36.797089, 37.979832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684181, 37.565529, 38.390533>,  <44.847794, 37.419186, 37.682053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684181, 37.565529, 38.390533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.893070, 37.225395, 38.416527>,  <45.018402, 37.021317, 38.432125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.893070, 37.225395, 38.416527>,  <44.684181, 37.565529, 38.390533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893070, 37.225395, 38.416527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376544, 0.298281, 0.877065,
		-0.765179, -0.433551, 0.475956,
		0.522221, -0.850330, 0.064987,
		45.049736, 36.970295, 38.436024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503246, 37.224304, 39.044891>,  <44.684181, 37.565529, 38.390533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503246, 37.224304, 39.044891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.854847, 37.089020, 38.910446>,  <45.065807, 37.007851, 38.829781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.854847, 37.089020, 38.910446>,  <44.503246, 37.224304, 39.044891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854847, 37.089020, 38.910446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435188, 0.280979, 0.855372,
		-0.194858, -0.898144, 0.394167,
		0.879000, -0.338213, -0.336111,
		45.118546, 36.987556, 38.809612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744068, 36.849205, 39.611393>,  <44.503246, 37.224304, 39.044891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744068, 36.849205, 39.611393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.063610, 36.933357, 39.385979>,  <45.255337, 36.983849, 39.250732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.063610, 36.933357, 39.385979>,  <44.744068, 36.849205, 39.611393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063610, 36.933357, 39.385979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488572, 0.319565, 0.811896,
		0.350894, -0.923914, 0.152500,
		0.798856, 0.210383, -0.563532,
		45.303268, 36.996471, 39.216919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.280449, 36.625530, 40.026718>,  <44.744068, 36.849205, 39.611393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.280449, 36.625530, 40.026718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.476105, 36.848282, 39.758205>,  <45.593498, 36.981934, 39.597095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.476105, 36.848282, 39.758205>,  <45.280449, 36.625530, 40.026718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476105, 36.848282, 39.758205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413097, 0.529931, 0.740624,
		0.768174, -0.639576, 0.029165,
		0.489141, 0.556880, -0.671286,
		45.622849, 37.015347, 39.556820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848751, 36.770554, 40.390083>,  <45.280449, 36.625530, 40.026718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848751, 36.770554, 40.390083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840221, 37.041615, 40.096054>,  <45.835106, 37.204250, 39.919636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840221, 37.041615, 40.096054>,  <45.848751, 36.770554, 40.390083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840221, 37.041615, 40.096054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133012, 0.730630, 0.669692,
		0.990885, -0.083495, -0.105713,
		-0.021321, 0.677649, -0.735077,
		45.833824, 37.244907, 39.875530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336823, 37.233234, 40.504612>,  <45.848751, 36.770554, 40.390083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336823, 37.233234, 40.504612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.048752, 37.441238, 40.320900>,  <45.875908, 37.566040, 40.210670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.048752, 37.441238, 40.320900>,  <46.336823, 37.233234, 40.504612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048752, 37.441238, 40.320900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050875, 0.699787, 0.712538,
		0.691924, 0.489786, -0.530425,
		-0.720176, 0.520007, -0.459282,
		45.832699, 37.597240, 40.183117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482376, 37.871857, 40.596603>,  <46.336823, 37.233234, 40.504612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.482376, 37.871857, 40.596603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.108952, 37.920036, 40.461578>,  <45.884895, 37.948944, 40.380562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.108952, 37.920036, 40.461578>,  <46.482376, 37.871857, 40.596603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.108952, 37.920036, 40.461578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140801, 0.742864, 0.654468,
		0.329596, 0.658517, -0.676551,
		-0.933564, 0.120451, -0.337564,
		45.828884, 37.956173, 40.360310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335537, 38.572502, 40.482563>,  <46.482376, 37.871857, 40.596603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335537, 38.572502, 40.482563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977844, 38.405956, 40.548267>,  <45.763229, 38.306026, 40.587688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977844, 38.405956, 40.548267>,  <46.335537, 38.572502, 40.482563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977844, 38.405956, 40.548267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148797, 0.622645, 0.768227,
		-0.422141, 0.662534, -0.618745,
		-0.894235, -0.416368, 0.164261,
		45.709572, 38.281044, 40.597546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902477, 39.128399, 40.666435>,  <46.335537, 38.572502, 40.482563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.902477, 39.128399, 40.666435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.688225, 38.815056, 40.792576>,  <45.559673, 38.627048, 40.868259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.688225, 38.815056, 40.792576>,  <45.902477, 39.128399, 40.666435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688225, 38.815056, 40.792576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240357, 0.499418, 0.832352,
		-0.809522, 0.370039, -0.455791,
		-0.535633, -0.783360, 0.315348,
		45.527534, 38.580048, 40.887180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118973, 39.348686, 40.761230>,  <45.902477, 39.128399, 40.666435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118973, 39.348686, 40.761230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.184093, 39.031624, 40.996246>,  <45.223164, 38.841389, 41.137257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.184093, 39.031624, 40.996246>,  <45.118973, 39.348686, 40.761230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184093, 39.031624, 40.996246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405078, 0.489284, 0.772342,
		-0.899671, -0.363734, -0.241431,
		0.162798, -0.792653, 0.587536,
		45.232933, 38.793827, 41.172508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522171, 39.276676, 41.100430>,  <45.118973, 39.348686, 40.761230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522171, 39.276676, 41.100430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780415, 39.078209, 41.332634>,  <44.935360, 38.959129, 41.471958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780415, 39.078209, 41.332634>,  <44.522171, 39.276676, 41.100430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780415, 39.078209, 41.332634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437402, 0.382867, 0.813691,
		-0.625992, -0.779246, 0.030157,
		0.645612, -0.496173, 0.580515,
		44.974098, 38.929356, 41.506790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155285, 39.134834, 41.692501>,  <44.522171, 39.276676, 41.100430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155285, 39.134834, 41.692501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538860, 39.083492, 41.793659>,  <44.769005, 39.052689, 41.854355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538860, 39.083492, 41.793659>,  <44.155285, 39.134834, 41.692501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538860, 39.083492, 41.793659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170728, 0.450762, 0.876165,
		-0.226455, -0.883368, 0.410341,
		0.958942, -0.128356, 0.252893,
		44.826542, 39.044987, 41.869526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.774426, 38.076527, 39.758938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464588, 37.825684, 39.726116>,  <38.278687, 37.675179, 39.706425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464588, 37.825684, 39.726116>,  <38.774426, 38.076527, 39.758938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464588, 37.825684, 39.726116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194510, -0.112763, -0.974397,
		0.601803, -0.770724, 0.209325,
		-0.774596, -0.627111, -0.082052,
		38.232208, 37.637550, 39.701500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047508, 37.364418, 39.437157>,  <38.774426, 38.076527, 39.758938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047508, 37.364418, 39.437157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660854, 37.412689, 39.346775>,  <38.428864, 37.441650, 39.292545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660854, 37.412689, 39.346775>,  <39.047508, 37.364418, 39.437157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660854, 37.412689, 39.346775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159742, -0.405598, -0.899985,
		-0.200255, -0.906050, 0.372788,
		-0.966634, 0.120677, -0.225957,
		38.370865, 37.448891, 39.278988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897861, 36.724182, 38.975937>,  <39.047508, 37.364418, 39.437157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897861, 36.724182, 38.975937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605480, 36.995842, 38.949192>,  <38.430050, 37.158836, 38.933147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605480, 36.995842, 38.949192>,  <38.897861, 36.724182, 38.975937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605480, 36.995842, 38.949192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153453, -0.259037, -0.953600,
		-0.664953, -0.686776, 0.293561,
		-0.730952, 0.679146, -0.066860,
		38.386196, 37.199585, 38.929134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559502, 36.378258, 38.346649>,  <38.897861, 36.724182, 38.975937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559502, 36.378258, 38.346649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342091, 36.710201, 38.397114>,  <38.211643, 36.909367, 38.427391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342091, 36.710201, 38.397114>,  <38.559502, 36.378258, 38.346649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342091, 36.710201, 38.397114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254975, -0.020030, -0.966740,
		-0.799730, -0.557615, 0.222480,
		-0.543525, 0.829858, 0.126159,
		38.179031, 36.959160, 38.434963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862675, 36.325912, 38.130905>,  <38.559502, 36.378258, 38.346649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862675, 36.325912, 38.130905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922325, 36.717781, 38.077232>,  <37.958115, 36.952904, 38.045029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922325, 36.717781, 38.077232>,  <37.862675, 36.325912, 38.130905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922325, 36.717781, 38.077232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293145, -0.085797, -0.952210,
		-0.944367, 0.181330, 0.274392,
		0.149123, 0.979672, -0.134180,
		37.967060, 37.011684, 38.036980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303257, 36.674652, 37.818222>,  <37.862675, 36.325912, 38.130905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303257, 36.674652, 37.818222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590130, 36.926609, 37.698963>,  <37.762253, 37.077782, 37.627407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590130, 36.926609, 37.698963>,  <37.303257, 36.674652, 37.818222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590130, 36.926609, 37.698963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423062, 0.053552, -0.904517,
		-0.553780, 0.774836, 0.304889,
		0.717179, 0.629890, -0.298148,
		37.805283, 37.115578, 37.609520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943680, 37.131378, 37.408436>,  <37.303257, 36.674652, 37.818222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943680, 37.131378, 37.408436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316605, 37.206390, 37.284744>,  <37.540359, 37.251400, 37.210529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316605, 37.206390, 37.284744>,  <36.943680, 37.131378, 37.408436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316605, 37.206390, 37.284744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312139, -0.014572, -0.949925,
		-0.182649, 0.982150, 0.044951,
		0.932314, 0.187534, -0.309229,
		37.596298, 37.262650, 37.191975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860828, 37.540730, 36.861645>,  <36.943680, 37.131378, 37.408436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860828, 37.540730, 36.861645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248444, 37.461109, 36.803200>,  <37.481014, 37.413338, 36.768131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248444, 37.461109, 36.803200>,  <36.860828, 37.540730, 36.861645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248444, 37.461109, 36.803200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170990, -0.114060, -0.978648,
		0.178131, 0.973330, -0.144563,
		0.969036, -0.199047, -0.146112,
		37.539154, 37.401394, 36.759365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097424, 37.914284, 36.284836>,  <36.860828, 37.540730, 36.861645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097424, 37.914284, 36.284836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299011, 37.573975, 36.344433>,  <37.419964, 37.369789, 36.380192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299011, 37.573975, 36.344433>,  <37.097424, 37.914284, 36.284836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299011, 37.573975, 36.344433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125383, -0.242742, -0.961954,
		0.854570, 0.466117, -0.229007,
		0.503973, -0.850771, 0.148997,
		37.450203, 37.318745, 36.389133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463333, 37.846928, 35.681156>,  <37.097424, 37.914284, 36.284836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463333, 37.846928, 35.681156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477665, 37.480629, 35.841217>,  <37.486263, 37.260849, 35.937252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477665, 37.480629, 35.841217>,  <37.463333, 37.846928, 35.681156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477665, 37.480629, 35.841217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337636, -0.387958, -0.857607,
		0.940594, -0.104378, -0.323090,
		0.035830, -0.915747, 0.400153,
		37.488415, 37.205906, 35.961262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543152, 37.445358, 35.147240>,  <37.463333, 37.846928, 35.681156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543152, 37.445358, 35.147240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446728, 37.187500, 35.437431>,  <37.388874, 37.032784, 35.611546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446728, 37.187500, 35.437431>,  <37.543152, 37.445358, 35.147240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446728, 37.187500, 35.437431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471945, -0.575321, -0.668037,
		0.848032, -0.503422, -0.165552,
		-0.241059, -0.644649, 0.725478,
		37.374409, 36.994106, 35.655075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775124, 36.681644, 34.958809>,  <37.543152, 37.445358, 35.147240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775124, 36.681644, 34.958809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464630, 36.671047, 35.210762>,  <37.278332, 36.664688, 35.361935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464630, 36.671047, 35.210762>,  <37.775124, 36.681644, 34.958809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464630, 36.671047, 35.210762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500493, -0.581642, -0.641248,
		0.383359, -0.813013, 0.438229,
		-0.776236, -0.026498, 0.629886,
		37.231758, 36.663097, 35.399727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501492, 35.936127, 35.004913>,  <37.775124, 36.681644, 34.958809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501492, 35.936127, 35.004913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209747, 36.197834, 35.084873>,  <37.034698, 36.354858, 35.132847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209747, 36.197834, 35.084873>,  <37.501492, 35.936127, 35.004913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209747, 36.197834, 35.084873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551707, -0.389742, -0.737374,
		-0.404535, -0.648098, 0.645229,
		-0.729364, 0.654271, 0.199896,
		36.990940, 36.394115, 35.144844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680004, 35.242599, 34.787807>,  <37.501492, 35.936127, 35.004913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680004, 35.242599, 34.787807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953457, 34.965096, 34.878448>,  <38.117527, 34.798592, 34.932831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953457, 34.965096, 34.878448>,  <37.680004, 35.242599, 34.787807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953457, 34.965096, 34.878448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659536, -0.454305, 0.598848,
		-0.312513, -0.558840, -0.768136,
		0.683628, -0.693762, 0.226599,
		38.158546, 34.756966, 34.946430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206707, 34.738228, 34.859406>,  <37.680004, 35.242599, 34.787807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206707, 34.738228, 34.859406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532307, 34.616467, 35.057293>,  <37.727665, 34.543411, 35.176025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532307, 34.616467, 35.057293>,  <37.206707, 34.738228, 34.859406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532307, 34.616467, 35.057293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580612, -0.400964, 0.708603,
		-0.017334, -0.864042, -0.503122,
		0.813996, -0.304401, 0.494723,
		37.776505, 34.525146, 35.205711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159927, 33.974438, 34.988289>,  <37.206707, 34.738228, 34.859406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159927, 33.974438, 34.988289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389992, 34.150066, 35.264378>,  <37.528030, 34.255444, 35.430031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389992, 34.150066, 35.264378>,  <37.159927, 33.974438, 34.988289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389992, 34.150066, 35.264378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574035, -0.384507, 0.722937,
		0.582817, -0.812016, 0.030890,
		0.575159, 0.439072, 0.690223,
		37.562538, 34.281788, 35.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224640, 33.446156, 35.496861>,  <37.159927, 33.974438, 34.988289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224640, 33.446156, 35.496861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340019, 33.783669, 35.677895>,  <37.409245, 33.986176, 35.786514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340019, 33.783669, 35.677895>,  <37.224640, 33.446156, 35.496861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340019, 33.783669, 35.677895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447691, -0.298975, 0.842726,
		0.846388, -0.445698, 0.291515,
		0.288445, 0.843781, 0.452584,
		37.426552, 34.036804, 35.813671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505913, 33.238949, 36.097538>,  <37.224640, 33.446156, 35.496861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505913, 33.238949, 36.097538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403111, 33.617977, 36.173489>,  <37.341427, 33.845394, 36.219059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403111, 33.617977, 36.173489>,  <37.505913, 33.238949, 36.097538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403111, 33.617977, 36.173489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509131, -0.299758, 0.806803,
		0.821421, 0.110683, 0.559479,
		-0.257008, 0.947573, 0.189876,
		37.326008, 33.902248, 36.230450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532124, 33.375908, 36.921101>,  <37.505913, 33.238949, 36.097538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532124, 33.375908, 36.921101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345573, 33.708546, 36.800472>,  <37.233643, 33.908131, 36.728096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345573, 33.708546, 36.800472>,  <37.532124, 33.375908, 36.921101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345573, 33.708546, 36.800472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484354, 0.045209, 0.873703,
		0.740202, 0.553537, 0.381703,
		-0.466371, 0.831596, -0.301571,
		37.205662, 33.958023, 36.709999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683426, 33.885159, 37.501926>,  <37.532124, 33.375908, 36.921101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683426, 33.885159, 37.501926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356869, 33.980289, 37.291424>,  <37.160934, 34.037369, 37.165123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356869, 33.980289, 37.291424>,  <37.683426, 33.885159, 37.501926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356869, 33.980289, 37.291424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475870, 0.239241, 0.846352,
		0.327183, 0.941384, -0.082142,
		-0.816394, 0.237823, -0.526252,
		37.111950, 34.051636, 37.133549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348362, 34.474495, 37.819221>,  <37.683426, 33.885159, 37.501926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348362, 34.474495, 37.819221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050411, 34.345783, 37.585430>,  <36.871639, 34.268555, 37.445156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050411, 34.345783, 37.585430>,  <37.348362, 34.474495, 37.819221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050411, 34.345783, 37.585430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659644, 0.223717, 0.717510,
		-0.100125, 0.920004, -0.378904,
		-0.744879, -0.321783, -0.584475,
		36.826946, 34.249249, 37.410088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823666, 34.938438, 37.884556>,  <37.348362, 34.474495, 37.819221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823666, 34.938438, 37.884556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606163, 34.626480, 37.760563>,  <36.475662, 34.439304, 37.686169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606163, 34.626480, 37.760563>,  <36.823666, 34.938438, 37.884556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606163, 34.626480, 37.760563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569088, 0.071179, 0.819190,
		-0.616820, 0.621848, -0.482533,
		-0.543758, -0.779897, -0.309982,
		36.443035, 34.392509, 37.667568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168026, 35.171906, 37.909733>,  <36.823666, 34.938438, 37.884556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168026, 35.171906, 37.909733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122559, 34.774704, 37.896889>,  <36.095280, 34.536385, 37.889183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122559, 34.774704, 37.896889>,  <36.168026, 35.171906, 37.909733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122559, 34.774704, 37.896889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611854, 0.044503, 0.789718,
		-0.782761, 0.109410, -0.612629,
		-0.113667, -0.993000, -0.032108,
		36.088459, 34.476803, 37.887257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483410, 34.920227, 38.102509>,  <36.168026, 35.171906, 37.909733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483410, 34.920227, 38.102509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668411, 34.571388, 38.166431>,  <35.779411, 34.362083, 38.204784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668411, 34.571388, 38.166431>,  <35.483410, 34.920227, 38.102509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668411, 34.571388, 38.166431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486689, -0.099062, 0.867940,
		-0.741097, -0.479202, -0.470256,
		0.462504, -0.872096, 0.159809,
		35.807163, 34.309761, 38.214375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003006, 34.450798, 38.397293>,  <35.483410, 34.920227, 38.102509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003006, 34.450798, 38.397293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338329, 34.262215, 38.506813>,  <35.539524, 34.149067, 38.572525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338329, 34.262215, 38.506813>,  <35.003006, 34.450798, 38.397293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338329, 34.262215, 38.506813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361010, -0.103687, 0.926780,
		-0.408545, -0.875773, -0.257122,
		0.838309, -0.471455, 0.273802,
		35.589821, 34.120777, 38.588955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759209, 33.852879, 38.763287>,  <35.003006, 34.450798, 38.397293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759209, 33.852879, 38.763287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143654, 33.898987, 38.863659>,  <35.374321, 33.926651, 38.923882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143654, 33.898987, 38.863659>,  <34.759209, 33.852879, 38.763287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143654, 33.898987, 38.863659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207707, -0.297037, 0.932002,
		0.181966, -0.947883, -0.261545,
		0.961117, 0.115268, 0.250933,
		35.431988, 33.933567, 38.938938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903748, 33.365078, 39.242386>,  <34.759209, 33.852879, 38.763287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903748, 33.365078, 39.242386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208469, 33.617607, 39.300472>,  <35.391300, 33.769127, 39.335323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208469, 33.617607, 39.300472>,  <34.903748, 33.365078, 39.242386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208469, 33.617607, 39.300472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184442, -0.426259, 0.885598,
		0.621000, -0.647866, -0.441168,
		0.761800, 0.631326, 0.145213,
		35.437008, 33.807007, 39.344036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382633, 33.003143, 39.650520>,  <34.903748, 33.365078, 39.242386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382633, 33.003143, 39.650520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480640, 33.384392, 39.721550>,  <35.539444, 33.613140, 39.764168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480640, 33.384392, 39.721550>,  <35.382633, 33.003143, 39.650520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480640, 33.384392, 39.721550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011577, -0.186021, 0.982478,
		0.969449, -0.238671, -0.056613,
		0.245020, 0.953117, 0.177574,
		35.554146, 33.670326, 39.774822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773975, 32.422642, 39.466064>,  <35.382633, 33.003143, 39.650520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773975, 32.422642, 39.466064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571651, 32.078392, 39.489651>,  <35.450256, 31.871841, 39.503803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571651, 32.078392, 39.489651>,  <35.773975, 32.422642, 39.466064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571651, 32.078392, 39.489651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520155, 0.249745, -0.816741,
		0.688182, -0.443789, -0.573983,
		-0.505810, -0.860627, 0.058969,
		35.419907, 31.820204, 39.507343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778881, 32.161816, 38.753914>,  <35.773975, 32.422642, 39.466064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778881, 32.161816, 38.753914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473354, 32.015045, 38.966312>,  <35.290039, 31.926983, 39.093750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473354, 32.015045, 38.966312>,  <35.778881, 32.161816, 38.753914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473354, 32.015045, 38.966312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629483, 0.241719, -0.738460,
		0.142611, -0.898296, -0.415604,
		-0.763815, -0.366928, 0.530991,
		35.244209, 31.904968, 39.125610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408302, 31.591780, 38.296749>,  <35.778881, 32.161816, 38.753914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408302, 31.591780, 38.296749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144772, 31.697611, 38.578442>,  <34.986652, 31.761108, 38.747456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144772, 31.697611, 38.578442>,  <35.408302, 31.591780, 38.296749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144772, 31.697611, 38.578442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722643, 0.037636, -0.690196,
		-0.209114, -0.963630, 0.166399,
		-0.658831, 0.264576, 0.704230,
		34.947121, 31.776983, 38.789711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802723, 31.445614, 38.013275>,  <35.408302, 31.591780, 38.296749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802723, 31.445614, 38.013275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648594, 31.654928, 38.317303>,  <34.556114, 31.780516, 38.499718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648594, 31.654928, 38.317303>,  <34.802723, 31.445614, 38.013275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648594, 31.654928, 38.317303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761851, 0.284355, -0.582002,
		-0.520681, -0.803315, 0.289096,
		-0.385325, 0.523285, 0.760065,
		34.532997, 31.811914, 38.545322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156704, 31.209818, 38.061344>,  <34.802723, 31.445614, 38.013275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156704, 31.209818, 38.061344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180550, 31.560774, 38.251766>,  <34.194859, 31.771347, 38.366020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180550, 31.560774, 38.251766>,  <34.156704, 31.209818, 38.061344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180550, 31.560774, 38.251766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763148, 0.347481, -0.544851,
		-0.643468, -0.330823, 0.690293,
		0.059614, 0.877390, 0.476060,
		34.198433, 31.823992, 38.394585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526463, 31.417681, 38.259247>,  <34.156704, 31.209818, 38.061344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526463, 31.417681, 38.259247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722584, 31.765516, 38.235859>,  <33.840256, 31.974218, 38.221825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722584, 31.765516, 38.235859>,  <33.526463, 31.417681, 38.259247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722584, 31.765516, 38.235859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786485, 0.412539, -0.459622,
		-0.375559, 0.271343, 0.886188,
		0.490302, 0.869588, -0.058474,
		33.869675, 32.026394, 38.218315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040096, 31.895277, 38.492908>,  <33.526463, 31.417681, 38.259247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040096, 31.895277, 38.492908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303787, 32.095921, 38.268833>,  <33.462002, 32.216309, 38.134388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303787, 32.095921, 38.268833>,  <33.040096, 31.895277, 38.492908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303787, 32.095921, 38.268833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751836, 0.452437, -0.479627,
		0.012863, 0.737351, 0.675387,
		0.659224, 0.501611, -0.560187,
		33.501553, 32.246403, 38.100777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719543, 32.513874, 38.393574>,  <33.040096, 31.895277, 38.492908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719543, 32.513874, 38.393574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998329, 32.491066, 38.107639>,  <33.165600, 32.477383, 37.936081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998329, 32.491066, 38.107639>,  <32.719543, 32.513874, 38.393574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998329, 32.491066, 38.107639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630107, 0.427201, -0.648433,
		0.342352, 0.902357, 0.261815,
		0.696965, -0.057020, -0.714834,
		33.207420, 32.473961, 37.893188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698380, 33.207901, 38.047462>,  <32.719543, 32.513874, 38.393574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698380, 33.207901, 38.047462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881168, 32.947151, 37.805393>,  <32.990841, 32.790703, 37.660152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881168, 32.947151, 37.805393>,  <32.698380, 33.207901, 38.047462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881168, 32.947151, 37.805393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475513, 0.395945, -0.785567,
		0.751707, 0.646750, -0.129040,
		0.456972, -0.651876, -0.605172,
		33.018261, 32.751587, 37.623840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670368, 33.550930, 37.489952>,  <32.698380, 33.207901, 38.047462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670368, 33.550930, 37.489952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721848, 33.186649, 37.332951>,  <32.752735, 32.968082, 37.238750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721848, 33.186649, 37.332951>,  <32.670368, 33.550930, 37.489952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721848, 33.186649, 37.332951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394386, 0.316148, -0.862850,
		0.909889, 0.265845, -0.318480,
		0.128697, -0.910701, -0.392505,
		32.760456, 32.913441, 37.215199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879864, 33.599163, 36.736946>,  <32.670368, 33.550930, 37.489952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879864, 33.599163, 36.736946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722477, 33.232819, 36.768913>,  <32.628044, 33.013012, 36.788094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722477, 33.232819, 36.768913>,  <32.879864, 33.599163, 36.736946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722477, 33.232819, 36.768913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690181, 0.236839, -0.683782,
		0.607320, -0.324202, -0.725297,
		-0.393462, -0.915861, 0.079921,
		32.604439, 32.958061, 36.792889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806061, 33.328915, 36.048084>,  <32.879864, 33.599163, 36.736946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806061, 33.328915, 36.048084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551762, 33.120609, 36.275990>,  <32.399181, 32.995625, 36.412735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551762, 33.120609, 36.275990>,  <32.806061, 33.328915, 36.048084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551762, 33.120609, 36.275990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758939, 0.287013, -0.584496,
		0.140852, -0.804009, -0.577693,
		-0.635746, -0.520761, 0.569767,
		32.361038, 32.964382, 36.446918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.930557, 31.203823, 42.382545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.602001, 31.089809, 42.580162>,  <37.404869, 31.021402, 42.698730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.602001, 31.089809, 42.580162>,  <37.930557, 31.203823, 42.382545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602001, 31.089809, 42.580162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514976, -0.001747, -0.857203,
		0.245194, -0.958516, -0.145351,
		-0.821389, -0.285033, 0.494041,
		37.355583, 31.004299, 42.728374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672756, 30.567530, 42.056866>,  <37.930557, 31.203823, 42.382545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672756, 30.567530, 42.056866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.369534, 30.772984, 42.217628>,  <37.187599, 30.896255, 42.314087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.369534, 30.772984, 42.217628>,  <37.672756, 30.567530, 42.056866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369534, 30.772984, 42.217628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550973, -0.174631, -0.816047,
		-0.348964, -0.840050, 0.415379,
		-0.758059, 0.513634, 0.401906,
		37.142117, 30.927073, 42.338200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092403, 30.137922, 41.881538>,  <37.672756, 30.567530, 42.056866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092403, 30.137922, 41.881538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.930958, 30.490311, 41.980320>,  <36.834091, 30.701744, 42.039589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.930958, 30.490311, 41.980320>,  <37.092403, 30.137922, 41.881538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930958, 30.490311, 41.980320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560813, -0.024954, -0.827566,
		-0.722899, -0.472512, 0.504132,
		-0.403615, 0.880971, 0.246952,
		36.809872, 30.754602, 42.054405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390862, 30.100555, 41.695488>,  <37.092403, 30.137922, 41.881538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390862, 30.100555, 41.695488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.427727, 30.496702, 41.736824>,  <36.449844, 30.734390, 41.761627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.427727, 30.496702, 41.736824>,  <36.390862, 30.100555, 41.695488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427727, 30.496702, 41.736824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602185, 0.138087, -0.786324,
		-0.793020, 0.010237, 0.609110,
		0.092160, 0.990367, 0.103341,
		36.455376, 30.793812, 41.767826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705242, 30.358494, 41.551270>,  <36.390862, 30.100555, 41.695488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705242, 30.358494, 41.551270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952053, 30.663252, 41.472485>,  <36.100140, 30.846106, 41.425213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952053, 30.663252, 41.472485>,  <35.705242, 30.358494, 41.551270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952053, 30.663252, 41.472485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636928, 0.336511, -0.693602,
		-0.462169, 0.553424, 0.692908,
		0.617027, 0.761894, -0.196967,
		36.137161, 30.891821, 41.413395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357727, 30.957754, 41.466667>,  <35.705242, 30.358494, 41.551270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357727, 30.957754, 41.466667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.697803, 31.049931, 41.277321>,  <35.901848, 31.105236, 41.163712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.697803, 31.049931, 41.277321>,  <35.357727, 30.957754, 41.466667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697803, 31.049931, 41.277321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526468, 0.377131, -0.761974,
		0.002932, 0.897034, 0.441953,
		0.850190, 0.230440, -0.473365,
		35.952862, 31.119062, 41.135311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432354, 31.672087, 41.240837>,  <35.357727, 30.957754, 41.466667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432354, 31.672087, 41.240837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.665115, 31.493631, 40.968853>,  <35.804771, 31.386559, 40.805660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.665115, 31.493631, 40.968853>,  <35.432354, 31.672087, 41.240837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665115, 31.493631, 40.968853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417359, 0.553777, -0.720515,
		0.697998, 0.703058, 0.136044,
		0.581902, -0.446139, -0.679963,
		35.839687, 31.359789, 40.764866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330555, 32.186047, 40.749710>,  <35.432354, 31.672087, 41.240837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330555, 32.186047, 40.749710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491280, 31.868578, 40.567005>,  <35.587715, 31.678097, 40.457382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491280, 31.868578, 40.567005>,  <35.330555, 32.186047, 40.749710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491280, 31.868578, 40.567005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260611, 0.379058, -0.887917,
		0.877856, 0.475810, -0.054532,
		0.401809, -0.793675, -0.456759,
		35.611824, 31.630476, 40.429977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632034, 32.475811, 40.177727>,  <35.330555, 32.186047, 40.749710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632034, 32.475811, 40.177727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.567497, 32.085545, 40.118336>,  <35.528774, 31.851385, 40.082699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.567497, 32.085545, 40.118336>,  <35.632034, 32.475811, 40.177727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567497, 32.085545, 40.118336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401839, 0.202362, -0.893071,
		0.901385, -0.084423, -0.424709,
		-0.161341, -0.975665, -0.148481,
		35.519096, 31.792845, 40.073792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197861, 33.006725, 40.048397>,  <35.632034, 32.475811, 40.177727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197861, 33.006725, 40.048397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.996346, 33.344872, 40.119450>,  <35.875435, 33.547760, 40.162083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.996346, 33.344872, 40.119450>,  <36.197861, 33.006725, 40.048397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996346, 33.344872, 40.119450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036691, -0.184505, 0.982146,
		0.863046, 0.501315, 0.061935,
		-0.503792, 0.845365, 0.177630,
		35.845207, 33.598480, 40.172737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551479, 33.439304, 40.554810>,  <36.197861, 33.006725, 40.048397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551479, 33.439304, 40.554810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176662, 33.576954, 40.578568>,  <35.951771, 33.659542, 40.592823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176662, 33.576954, 40.578568>,  <36.551479, 33.439304, 40.554810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176662, 33.576954, 40.578568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120836, 0.159954, 0.979701,
		0.327640, 0.925199, -0.191466,
		-0.937044, 0.344125, 0.059390,
		35.895550, 33.680191, 40.596386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557449, 34.058094, 40.937164>,  <36.551479, 33.439304, 40.554810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557449, 34.058094, 40.937164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173210, 33.949898, 40.962715>,  <35.942665, 33.884979, 40.978046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173210, 33.949898, 40.962715>,  <36.557449, 34.058094, 40.937164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173210, 33.949898, 40.962715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001612, 0.235255, 0.971932,
		-0.277926, 0.933537, -0.226422,
		-0.960601, -0.270490, 0.063879,
		35.885029, 33.868752, 40.981880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346813, 34.582085, 41.245815>,  <36.557449, 34.058094, 40.937164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346813, 34.582085, 41.245815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.081791, 34.287525, 41.300571>,  <35.922775, 34.110790, 41.333424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.081791, 34.287525, 41.300571>,  <36.346813, 34.582085, 41.245815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081791, 34.287525, 41.300571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040322, 0.147428, 0.988251,
		-0.747924, 0.660294, -0.067987,
		-0.662559, -0.736395, 0.136889,
		35.883022, 34.066608, 41.341637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743298, 34.834389, 41.680412>,  <36.346813, 34.582085, 41.245815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743298, 34.834389, 41.680412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739670, 34.436802, 41.724133>,  <35.737492, 34.198250, 41.750366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739670, 34.436802, 41.724133>,  <35.743298, 34.834389, 41.680412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739670, 34.436802, 41.724133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164286, 0.106339, 0.980664,
		-0.986371, 0.026852, 0.162330,
		-0.009071, -0.993967, 0.109301,
		35.736950, 34.138611, 41.756924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430965, 34.811787, 42.217548>,  <35.743298, 34.834389, 41.680412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430965, 34.811787, 42.217548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605724, 34.452553, 42.197292>,  <35.710579, 34.237011, 42.185139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605724, 34.452553, 42.197292>,  <35.430965, 34.811787, 42.217548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605724, 34.452553, 42.197292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289434, 0.087055, 0.953231,
		-0.851674, -0.431121, 0.297970,
		0.436898, -0.898085, -0.050638,
		35.736794, 34.183128, 42.182102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282528, 34.477741, 42.881107>,  <35.430965, 34.811787, 42.217548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282528, 34.477741, 42.881107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.607204, 34.290535, 42.741322>,  <35.802010, 34.178211, 42.657452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.607204, 34.290535, 42.741322>,  <35.282528, 34.477741, 42.881107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607204, 34.290535, 42.741322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447803, 0.114492, 0.886772,
		-0.375015, -0.876271, 0.302512,
		0.811687, -0.468018, -0.349461,
		35.850712, 34.150131, 42.636482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417702, 33.858887, 43.387161>,  <35.282528, 34.477741, 42.881107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417702, 33.858887, 43.387161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.750214, 33.940685, 43.180412>,  <35.949718, 33.989765, 43.056362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.750214, 33.940685, 43.180412>,  <35.417702, 33.858887, 43.387161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750214, 33.940685, 43.180412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547817, -0.143778, 0.824151,
		0.094221, -0.968250, -0.231546,
		0.831275, 0.204498, -0.516877,
		35.999596, 34.002033, 43.025349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878979, 33.473763, 43.705948>,  <35.417702, 33.858887, 43.387161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878979, 33.473763, 43.705948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098438, 33.727390, 43.487980>,  <36.230114, 33.879566, 43.357201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098438, 33.727390, 43.487980>,  <35.878979, 33.473763, 43.705948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098438, 33.727390, 43.487980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674264, 0.049779, 0.736811,
		0.494317, -0.771669, -0.400221,
		0.548652, 0.634073, -0.544915,
		36.263035, 33.917610, 43.324505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457951, 33.211086, 43.883595>,  <35.878979, 33.473763, 43.705948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457951, 33.211086, 43.883595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.532871, 33.587654, 43.771420>,  <36.577824, 33.813595, 43.704113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.532871, 33.587654, 43.771420>,  <36.457951, 33.211086, 43.883595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532871, 33.587654, 43.771420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626563, 0.105374, 0.772215,
		0.756529, -0.320351, -0.570122,
		0.187304, 0.941420, -0.280439,
		36.589062, 33.870079, 43.687286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228176, 33.400341, 43.814594>,  <36.457951, 33.211086, 43.883595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228176, 33.400341, 43.814594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.072495, 33.767109, 43.849895>,  <36.979088, 33.987167, 43.871078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.072495, 33.767109, 43.849895>,  <37.228176, 33.400341, 43.814594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072495, 33.767109, 43.849895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576556, 0.167759, 0.799650,
		0.718406, 0.362109, -0.593944,
		-0.389200, 0.916916, 0.088257,
		36.955734, 34.042183, 43.876373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844456, 33.762817, 44.030994>,  <37.228176, 33.400341, 43.814594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844456, 33.762817, 44.030994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515099, 33.973034, 44.116623>,  <37.317482, 34.099163, 44.167999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515099, 33.973034, 44.116623>,  <37.844456, 33.762817, 44.030994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515099, 33.973034, 44.116623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411873, 0.293964, 0.862523,
		0.390361, 0.798368, -0.458505,
		-0.823395, 0.525541, 0.214074,
		37.268082, 34.130695, 44.180843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937946, 34.462318, 44.062393>,  <37.844456, 33.762817, 44.030994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937946, 34.462318, 44.062393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.630848, 34.363472, 44.298866>,  <37.446587, 34.304165, 44.440750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.630848, 34.363472, 44.298866>,  <37.937946, 34.462318, 44.062393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630848, 34.363472, 44.298866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532764, 0.266399, 0.803240,
		-0.355987, 0.931646, -0.072870,
		-0.767748, -0.247120, 0.591181,
		37.400524, 34.289337, 44.476219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906693, 35.038418, 44.478958>,  <37.937946, 34.462318, 44.062393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906693, 35.038418, 44.478958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.690365, 34.768475, 44.679787>,  <37.560566, 34.606510, 44.800285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.690365, 34.768475, 44.679787>,  <37.906693, 35.038418, 44.478958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690365, 34.768475, 44.679787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400659, 0.318148, 0.859217,
		-0.739583, 0.665844, 0.098326,
		-0.540822, -0.674858, 0.502074,
		37.528118, 34.566017, 44.830410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.794914, 35.265663, 46.430531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.059338, 35.001785, 46.287537>,  <32.217991, 34.843456, 46.201740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.059338, 35.001785, 46.287537>,  <31.794914, 35.265663, 46.430531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059338, 35.001785, 46.287537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242477, 0.263052, -0.933814,
		0.710073, 0.703990, 0.013931,
		0.661060, -0.659698, -0.357487,
		32.257656, 34.803875, 46.180290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335236, 35.756832, 45.973782>,  <31.794914, 35.265663, 46.430531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335236, 35.756832, 45.973782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353344, 35.371136, 45.869324>,  <32.364208, 35.139717, 45.806648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353344, 35.371136, 45.869324>,  <32.335236, 35.756832, 45.973782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353344, 35.371136, 45.869324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131669, 0.253373, -0.958366,
		0.990259, 0.077770, -0.115490,
		0.045270, -0.964237, -0.261146,
		32.366924, 35.081863, 45.790981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881237, 35.766869, 45.483990>,  <32.335236, 35.756832, 45.973782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881237, 35.766869, 45.483990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.657955, 35.441494, 45.418598>,  <32.523987, 35.246269, 45.379364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.657955, 35.441494, 45.418598>,  <32.881237, 35.766869, 45.483990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657955, 35.441494, 45.418598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175691, 0.308450, -0.934875,
		0.810888, -0.493130, -0.315092,
		-0.558205, -0.813438, -0.163480,
		32.490494, 35.197464, 45.369553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087650, 35.409103, 44.876549>,  <32.881237, 35.766869, 45.483990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087650, 35.409103, 44.876549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.720867, 35.259247, 44.931446>,  <32.500797, 35.169334, 44.964386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.720867, 35.259247, 44.931446>,  <33.087650, 35.409103, 44.876549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720867, 35.259247, 44.931446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215570, 0.175738, -0.960545,
		0.335742, -0.910362, -0.241905,
		-0.916955, -0.374643, 0.137244,
		32.445782, 35.146854, 44.972618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012959, 34.988716, 44.345890>,  <33.087650, 35.409103, 44.876549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012959, 34.988716, 44.345890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632088, 35.012218, 44.465828>,  <32.403564, 35.026321, 44.537788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632088, 35.012218, 44.465828>,  <33.012959, 34.988716, 44.345890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632088, 35.012218, 44.465828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299049, 0.022050, -0.953983,
		-0.062668, -0.998029, -0.003423,
		-0.952178, 0.058761, 0.299842,
		32.346436, 35.029846, 44.555782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688091, 34.413330, 44.069988>,  <33.012959, 34.988716, 44.345890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688091, 34.413330, 44.069988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.436134, 34.714367, 44.146767>,  <32.284962, 34.894989, 44.192833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.436134, 34.714367, 44.146767>,  <32.688091, 34.413330, 44.069988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436134, 34.714367, 44.146767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218871, 0.065123, -0.973578,
		-0.745207, -0.655260, 0.123700,
		-0.629891, 0.752591, 0.191948,
		32.247166, 34.940144, 44.204350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171669, 34.295593, 43.660210>,  <32.688091, 34.413330, 44.069988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171669, 34.295593, 43.660210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.124664, 34.682533, 43.750038>,  <32.096462, 34.914696, 43.803936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.124664, 34.682533, 43.750038>,  <32.171669, 34.295593, 43.660210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124664, 34.682533, 43.750038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249992, 0.190044, -0.949414,
		-0.961091, -0.167706, 0.219496,
		-0.117509, 0.967346, 0.224575,
		32.089413, 34.972736, 43.817410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526682, 34.495136, 43.376183>,  <32.171669, 34.295593, 43.660210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526682, 34.495136, 43.376183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773479, 34.808598, 43.405033>,  <31.921558, 34.996674, 43.422344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773479, 34.808598, 43.405033>,  <31.526682, 34.495136, 43.376183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773479, 34.808598, 43.405033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132140, 0.193511, -0.972159,
		-0.775795, 0.590285, 0.222947,
		0.616993, 0.783656, 0.072124,
		31.958578, 35.043694, 43.426670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314783, 34.964787, 42.823513>,  <31.526682, 34.495136, 43.376183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314783, 34.964787, 42.823513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690025, 35.059883, 42.924263>,  <31.915171, 35.116943, 42.984711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690025, 35.059883, 42.924263>,  <31.314783, 34.964787, 42.823513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690025, 35.059883, 42.924263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218250, 0.158904, -0.962869,
		-0.268941, 0.958242, 0.097181,
		0.938103, 0.237745, 0.251872,
		31.971457, 35.131207, 42.999825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451023, 35.542210, 42.361431>,  <31.314783, 34.964787, 42.823513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451023, 35.542210, 42.361431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.805365, 35.437679, 42.514782>,  <32.017967, 35.374962, 42.606792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.805365, 35.437679, 42.514782>,  <31.451023, 35.542210, 42.361431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805365, 35.437679, 42.514782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440479, 0.214089, -0.871863,
		0.145759, 0.941211, 0.304757,
		0.885852, -0.261321, 0.383378,
		32.071121, 35.359283, 42.629795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802738, 36.086868, 42.277744>,  <31.451023, 35.542210, 42.361431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802738, 36.086868, 42.277744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053024, 35.775742, 42.301319>,  <32.203197, 35.589066, 42.315464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053024, 35.775742, 42.301319>,  <31.802738, 36.086868, 42.277744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053024, 35.775742, 42.301319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378251, 0.236470, -0.894991,
		0.682205, 0.582304, 0.442174,
		0.625718, -0.777820, 0.058936,
		32.240738, 35.542397, 42.319000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363308, 36.401020, 42.097797>,  <31.802738, 36.086868, 42.277744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363308, 36.401020, 42.097797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438377, 36.009892, 42.060623>,  <32.483421, 35.775215, 42.038319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438377, 36.009892, 42.060623>,  <32.363308, 36.401020, 42.097797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438377, 36.009892, 42.060623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284078, 0.144612, -0.947833,
		0.940254, 0.151486, 0.304919,
		0.187678, -0.977824, -0.092938,
		32.494682, 35.716545, 42.032742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867336, 36.402126, 41.643970>,  <32.363308, 36.401020, 42.097797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867336, 36.402126, 41.643970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.747917, 36.020489, 41.634346>,  <32.676266, 35.791508, 41.628571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.747917, 36.020489, 41.634346>,  <32.867336, 36.402126, 41.643970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747917, 36.020489, 41.634346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163333, -0.026238, -0.986222,
		0.940316, -0.298360, 0.163668,
		-0.298544, -0.954092, -0.024061,
		32.658356, 35.734261, 41.627129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403755, 35.919193, 41.295376>,  <32.867336, 36.402126, 41.643970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403755, 35.919193, 41.295376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053791, 35.726906, 41.271893>,  <32.843811, 35.611534, 41.257805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053791, 35.726906, 41.271893>,  <33.403755, 35.919193, 41.295376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053791, 35.726906, 41.271893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108103, -0.075699, -0.991253,
		0.472066, -0.873604, 0.118197,
		-0.874910, -0.480714, -0.058704,
		32.791317, 35.582691, 41.254280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154613, 35.767509, 40.877872>,  <33.403755, 35.919193, 41.295376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154613, 35.767509, 40.877872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.354191, 36.092197, 40.756439>,  <34.473938, 36.287010, 40.683578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.354191, 36.092197, 40.756439>,  <34.154613, 35.767509, 40.877872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354191, 36.092197, 40.756439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281526, 0.179487, 0.942617,
		0.819634, -0.555777, -0.138968,
		0.498942, 0.811724, -0.303579,
		34.503872, 36.335716, 40.665367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753372, 35.785309, 41.191216>,  <34.154613, 35.767509, 40.877872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753372, 35.785309, 41.191216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667812, 36.167007, 41.107628>,  <34.616478, 36.396027, 41.057476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667812, 36.167007, 41.107628>,  <34.753372, 35.785309, 41.191216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667812, 36.167007, 41.107628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148322, 0.243162, 0.958578,
		0.965530, 0.174044, -0.193547,
		-0.213898, 0.954244, -0.208966,
		34.603642, 36.453281, 41.044937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439823, 36.019264, 41.331627>,  <34.753372, 35.785309, 41.191216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439823, 36.019264, 41.331627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.165833, 36.310677, 41.334435>,  <35.001438, 36.485523, 41.336117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.165833, 36.310677, 41.334435>,  <35.439823, 36.019264, 41.331627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165833, 36.310677, 41.334435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444395, 0.410161, 0.796418,
		0.577336, 0.548647, -0.604706,
		-0.684979, 0.728529, 0.007015,
		34.960339, 36.529236, 41.336540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823376, 36.621403, 41.638832>,  <35.439823, 36.019264, 41.331627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823376, 36.621403, 41.638832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.428596, 36.684338, 41.652596>,  <35.191730, 36.722099, 41.660854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.428596, 36.684338, 41.652596>,  <35.823376, 36.621403, 41.638832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428596, 36.684338, 41.652596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068778, 0.218535, 0.973402,
		0.145630, 0.963062, -0.226504,
		-0.986945, 0.157336, 0.034412,
		35.132511, 36.731537, 41.662918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747917, 37.158710, 42.048962>,  <35.823376, 36.621403, 41.638832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747917, 37.158710, 42.048962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.384830, 36.990883, 42.050385>,  <35.166977, 36.890186, 42.051239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.384830, 36.990883, 42.050385>,  <35.747917, 37.158710, 42.048962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384830, 36.990883, 42.050385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083276, 0.188465, 0.978543,
		-0.411238, 0.887942, -0.206013,
		-0.907716, -0.419570, 0.003560,
		35.112514, 36.865013, 42.051453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410641, 37.527561, 42.487267>,  <35.747917, 37.158710, 42.048962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410641, 37.527561, 42.487267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162697, 37.213818, 42.477837>,  <35.013931, 37.025570, 42.472179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162697, 37.213818, 42.477837>,  <35.410641, 37.527561, 42.487267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162697, 37.213818, 42.477837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160377, 0.097216, 0.982257,
		-0.768151, 0.612641, -0.186053,
		-0.619858, -0.784360, -0.023577,
		34.976738, 36.978508, 42.470764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676571, 37.715736, 42.801651>,  <35.410641, 37.527561, 42.487267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676571, 37.715736, 42.801651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724770, 37.319176, 42.822044>,  <34.753689, 37.081238, 42.834282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724770, 37.319176, 42.822044>,  <34.676571, 37.715736, 42.801651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724770, 37.319176, 42.822044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151675, 0.032371, 0.987900,
		-0.981058, -0.126773, -0.146470,
		0.120497, -0.991404, 0.050986,
		34.760918, 37.021755, 42.837341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221531, 37.469856, 43.239529>,  <34.676571, 37.715736, 42.801651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221531, 37.469856, 43.239529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490242, 37.173611, 43.233902>,  <34.651470, 36.995861, 43.230526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490242, 37.173611, 43.233902>,  <34.221531, 37.469856, 43.239529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490242, 37.173611, 43.233902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020605, -0.037667, 0.999078,
		-0.740464, -0.670871, -0.040564,
		0.671780, -0.740617, -0.014068,
		34.691776, 36.951427, 43.229683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958515, 36.921440, 43.775158>,  <34.221531, 37.469856, 43.239529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958515, 36.921440, 43.775158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346649, 36.856766, 43.703262>,  <34.579529, 36.817963, 43.660126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346649, 36.856766, 43.703262>,  <33.958515, 36.921440, 43.775158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346649, 36.856766, 43.703262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151537, -0.172547, 0.973275,
		-0.188376, -0.971641, -0.142927,
		0.970336, -0.161683, -0.179743,
		34.637749, 36.808262, 43.649338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148830, 36.278107, 44.131123>,  <33.958515, 36.921440, 43.775158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148830, 36.278107, 44.131123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.472023, 36.510612, 44.092552>,  <34.665939, 36.650116, 44.069412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.472023, 36.510612, 44.092552>,  <34.148830, 36.278107, 44.131123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472023, 36.510612, 44.092552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284867, -0.242119, 0.927486,
		0.515770, -0.776858, -0.361211,
		0.807980, 0.581266, -0.096423,
		34.714417, 36.684994, 44.063625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708656, 35.929619, 44.505283>,  <34.148830, 36.278107, 44.131123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708656, 35.929619, 44.505283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.856579, 36.298553, 44.460499>,  <34.945332, 36.519913, 44.433628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.856579, 36.298553, 44.460499>,  <34.708656, 35.929619, 44.505283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856579, 36.298553, 44.460499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361415, -0.031787, 0.931863,
		0.855933, -0.385077, -0.345101,
		0.369809, 0.922337, -0.111965,
		34.967522, 36.575256, 44.426910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512409, 35.846764, 44.654976>,  <34.708656, 35.929619, 44.505283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512409, 35.846764, 44.654976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405891, 36.230835, 44.688786>,  <35.341980, 36.461277, 44.709072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405891, 36.230835, 44.688786>,  <35.512409, 35.846764, 44.654976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405891, 36.230835, 44.688786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372821, 0.021735, 0.927649,
		0.888871, 0.278541, -0.363762,
		-0.266295, 0.960178, 0.084526,
		35.326004, 36.518890, 44.714142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025711, 36.184742, 44.986179>,  <35.512409, 35.846764, 44.654976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025711, 36.184742, 44.986179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.719265, 36.435089, 45.044636>,  <35.535397, 36.585297, 45.079708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.719265, 36.435089, 45.044636>,  <36.025711, 36.184742, 44.986179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719265, 36.435089, 45.044636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194176, 0.008637, 0.980929,
		0.612671, 0.779880, -0.128145,
		-0.766113, 0.625870, 0.146142,
		35.489429, 36.622849, 45.088478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255108, 36.727299, 45.342354>,  <36.025711, 36.184742, 44.986179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255108, 36.727299, 45.342354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861187, 36.716053, 45.410900>,  <35.624832, 36.709305, 45.452026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861187, 36.716053, 45.410900>,  <36.255108, 36.727299, 45.342354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861187, 36.716053, 45.410900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172353, -0.037656, 0.984315,
		-0.021218, 0.998895, 0.041929,
		-0.984807, -0.028112, 0.171364,
		35.565746, 36.707619, 45.462311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639595, 37.395550, 45.336555>,  <36.255108, 36.727299, 45.342354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639595, 37.395550, 45.336555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.039448, 37.384804, 45.334869>,  <37.279358, 37.378357, 45.333858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.039448, 37.384804, 45.334869>,  <36.639595, 37.395550, 45.336555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039448, 37.384804, 45.334869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006807, 0.397133, -0.917736,
		0.026332, 0.917368, 0.397169,
		0.999630, -0.026869, -0.004213,
		37.339336, 37.376743, 45.333607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778408, 38.053455, 44.959743>,  <36.639595, 37.395550, 45.336555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778408, 38.053455, 44.959743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.089451, 37.802860, 44.938419>,  <37.276077, 37.652504, 44.925625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.089451, 37.802860, 44.938419>,  <36.778408, 38.053455, 44.959743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089451, 37.802860, 44.938419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124999, 0.237127, -0.963403,
		0.616206, 0.742481, 0.262701,
		0.777603, -0.626492, -0.053310,
		37.322731, 37.614914, 44.922428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378517, 38.414345, 44.574692>,  <36.778408, 38.053455, 44.959743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378517, 38.414345, 44.574692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.452385, 38.022423, 44.543999>,  <37.496704, 37.787270, 44.525581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.452385, 38.022423, 44.543999>,  <37.378517, 38.414345, 44.574692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452385, 38.022423, 44.543999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119024, 0.055206, -0.991355,
		0.975568, 0.192202, -0.106425,
		0.184666, -0.979801, -0.076734,
		37.507786, 37.728481, 44.520977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025135, 38.437840, 44.085709>,  <37.378517, 38.414345, 44.574692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025135, 38.437840, 44.085709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836552, 38.085087, 44.087574>,  <37.723404, 37.873436, 44.088696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836552, 38.085087, 44.087574>,  <38.025135, 38.437840, 44.085709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836552, 38.085087, 44.087574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212079, -0.118513, -0.970040,
		0.856010, -0.456340, 0.242902,
		-0.471455, -0.881878, 0.004668,
		37.695114, 37.820522, 44.088974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443420, 38.008057, 43.740475>,  <38.025135, 38.437840, 44.085709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443420, 38.008057, 43.740475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.107796, 37.790478, 43.744389>,  <37.906422, 37.659931, 43.746738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.107796, 37.790478, 43.744389>,  <38.443420, 38.008057, 43.740475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107796, 37.790478, 43.744389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159413, -0.263019, -0.951530,
		0.520152, -0.796835, 0.307402,
		-0.839065, -0.543944, 0.009784,
		37.856075, 37.627296, 43.747322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705360, 37.325771, 43.467777>,  <38.443420, 38.008057, 43.740475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705360, 37.325771, 43.467777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.308834, 37.366642, 43.434669>,  <38.070919, 37.391163, 43.414806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.308834, 37.366642, 43.434669>,  <38.705360, 37.325771, 43.467777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308834, 37.366642, 43.434669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043110, -0.342122, -0.938666,
		-0.124224, -0.934084, 0.334746,
		-0.991317, 0.102174, -0.082768,
		38.011440, 37.397293, 43.409840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476215, 36.739582, 42.947033>,  <38.705360, 37.325771, 43.467777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476215, 36.739582, 42.947033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.176102, 37.003876, 42.938065>,  <37.996033, 37.162453, 42.932682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.176102, 37.003876, 42.938065>,  <38.476215, 36.739582, 42.947033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176102, 37.003876, 42.938065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051232, 0.024296, -0.998391,
		-0.659125, -0.750228, -0.052080,
		-0.750286, 0.660733, -0.022421,
		37.951015, 37.202095, 42.931339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027496, 36.401741, 42.500416>,  <38.476215, 36.739582, 42.947033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027496, 36.401741, 42.500416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893848, 36.778454, 42.515450>,  <37.813660, 37.004482, 42.524467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893848, 36.778454, 42.515450>,  <38.027496, 36.401741, 42.500416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893848, 36.778454, 42.515450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222853, -0.040194, -0.974023,
		-0.915806, -0.333815, 0.223308,
		-0.334119, 0.941781, 0.037582,
		37.793613, 37.060989, 42.526726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382149, 36.490181, 42.107819>,  <38.027496, 36.401741, 42.500416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382149, 36.490181, 42.107819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.491009, 36.874592, 42.127254>,  <37.556324, 37.105240, 42.138916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.491009, 36.874592, 42.127254>,  <37.382149, 36.490181, 42.107819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491009, 36.874592, 42.127254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097828, 0.022604, -0.994947,
		-0.957270, 0.275525, -0.087864,
		0.272146, 0.961028, 0.048592,
		37.572651, 37.162899, 42.141830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947712, 36.788620, 41.588608>,  <37.382149, 36.490181, 42.107819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947712, 36.788620, 41.588608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.256382, 37.036392, 41.646332>,  <37.441582, 37.185055, 41.680965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.256382, 37.036392, 41.646332>,  <36.947712, 36.788620, 41.588608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256382, 37.036392, 41.646332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136757, 0.059989, -0.988787,
		-0.621145, 0.782754, -0.038420,
		0.771671, 0.619434, 0.144308,
		37.487885, 37.222221, 41.689625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831387, 37.242790, 41.065727>,  <36.947712, 36.788620, 41.588608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831387, 37.242790, 41.065727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.214531, 37.265602, 41.178337>,  <37.444416, 37.279289, 41.245903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.214531, 37.265602, 41.178337>,  <36.831387, 37.242790, 41.065727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214531, 37.265602, 41.178337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259819, 0.245938, -0.933814,
		-0.122494, 0.967606, 0.220756,
		0.957857, 0.057030, 0.281529,
		37.501888, 37.282711, 41.262794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164467, 38.033085, 40.999760>,  <36.831387, 37.242790, 41.065727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164467, 38.033085, 40.999760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462063, 37.767685, 40.968124>,  <37.640621, 37.608444, 40.949142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462063, 37.767685, 40.968124>,  <37.164467, 38.033085, 40.999760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462063, 37.767685, 40.968124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327761, 0.465522, -0.822108,
		0.582285, 0.585714, 0.563811,
		0.743987, -0.663497, -0.079093,
		37.685261, 37.568634, 40.944397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494560, 38.369987, 40.504715>,  <37.164467, 38.033085, 40.999760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494560, 38.369987, 40.504715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.698242, 38.026009, 40.518528>,  <37.820454, 37.819622, 40.526817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.698242, 38.026009, 40.518528>,  <37.494560, 38.369987, 40.504715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698242, 38.026009, 40.518528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368454, 0.181559, -0.911744,
		0.777784, 0.476993, 0.409304,
		0.509209, -0.859950, 0.034537,
		37.851006, 37.768024, 40.528889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232300, 38.448692, 40.175274>,  <37.494560, 38.369987, 40.504715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232300, 38.448692, 40.175274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.103287, 38.072395, 40.133366>,  <38.025879, 37.846619, 40.108219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.103287, 38.072395, 40.133366>,  <38.232300, 38.448692, 40.175274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103287, 38.072395, 40.133366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218540, 0.033692, -0.975246,
		0.920987, -0.337442, 0.194723,
		-0.322528, -0.940743, -0.104775,
		38.006527, 37.790173, 40.101933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.855362, 36.805168, 27.486742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.704382, 36.461685, 27.348091>,  <28.613794, 36.255596, 27.264900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.704382, 36.461685, 27.348091>,  <28.855362, 36.805168, 27.486742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704382, 36.461685, 27.348091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340054, -0.219637, 0.914398,
		-0.861334, 0.463011, -0.209106,
		-0.377449, -0.858709, -0.346630,
		28.591146, 36.204071, 27.244102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190687, 36.832039, 27.645967>,  <28.855362, 36.805168, 27.486742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190687, 36.832039, 27.645967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275255, 36.445827, 27.585232>,  <28.325996, 36.214100, 27.548790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275255, 36.445827, 27.585232>,  <28.190687, 36.832039, 27.645967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275255, 36.445827, 27.585232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526858, -0.243428, 0.814348,
		-0.823239, -0.092171, -0.560162,
		0.211419, -0.965530, -0.151838,
		28.338680, 36.156170, 27.539680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593996, 36.470970, 27.746887>,  <28.190687, 36.832039, 27.645967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593996, 36.470970, 27.746887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906866, 36.232235, 27.818428>,  <28.094587, 36.088993, 27.861353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906866, 36.232235, 27.818428>,  <27.593996, 36.470970, 27.746887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906866, 36.232235, 27.818428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401147, -0.262756, 0.877520,
		-0.476744, -0.758118, -0.444941,
		0.782175, -0.596839, 0.178849,
		28.141520, 36.053185, 27.872084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308723, 35.900379, 28.166363>,  <27.593996, 36.470970, 27.746887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308723, 35.900379, 28.166363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703516, 35.851475, 28.208168>,  <27.940392, 35.822132, 28.233252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703516, 35.851475, 28.208168>,  <27.308723, 35.900379, 28.166363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703516, 35.851475, 28.208168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144560, -0.389378, 0.909663,
		-0.070517, -0.912928, -0.401982,
		0.986980, -0.122257, 0.104515,
		27.999611, 35.814796, 28.239523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508106, 35.191231, 28.390261>,  <27.308723, 35.900379, 28.166363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508106, 35.191231, 28.390261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801279, 35.432396, 28.516310>,  <27.977182, 35.577095, 28.591938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801279, 35.432396, 28.516310>,  <27.508106, 35.191231, 28.390261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801279, 35.432396, 28.516310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038749, -0.425458, 0.904148,
		0.679197, -0.674890, -0.288469,
		0.732932, 0.602917, 0.315121,
		28.021158, 35.613270, 28.610846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830561, 34.819839, 28.923004>,  <27.508106, 35.191231, 28.390261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830561, 34.819839, 28.923004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938692, 35.201824, 28.971960>,  <28.003571, 35.431015, 29.001333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938692, 35.201824, 28.971960>,  <27.830561, 34.819839, 28.923004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938692, 35.201824, 28.971960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137929, -0.087396, 0.986579,
		0.952837, -0.283579, 0.108091,
		0.270327, 0.954958, 0.122388,
		28.019791, 35.488312, 29.008677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463516, 34.829224, 29.378380>,  <27.830561, 34.819839, 28.923004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463516, 34.829224, 29.378380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.290417, 35.188385, 29.410635>,  <28.186558, 35.403881, 29.429989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.290417, 35.188385, 29.410635>,  <28.463516, 34.829224, 29.378380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290417, 35.188385, 29.410635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135480, -0.153205, 0.978863,
		0.891277, 0.412675, 0.187947,
		-0.432747, 0.897902, 0.080639,
		28.160593, 35.457756, 29.434826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717840, 35.158810, 30.010826>,  <28.463516, 34.829224, 29.378380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717840, 35.158810, 30.010826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381811, 35.366043, 29.946491>,  <28.180193, 35.490383, 29.907890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381811, 35.366043, 29.946491>,  <28.717840, 35.158810, 30.010826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381811, 35.366043, 29.946491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263657, -0.130827, 0.955704,
		0.474090, 0.845267, 0.246500,
		-0.840073, 0.518081, -0.160836,
		28.129789, 35.521469, 29.898241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637083, 35.652130, 30.590179>,  <28.717840, 35.158810, 30.010826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637083, 35.652130, 30.590179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265665, 35.640125, 30.442179>,  <28.042814, 35.632923, 30.353378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265665, 35.640125, 30.442179>,  <28.637083, 35.652130, 30.590179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265665, 35.640125, 30.442179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369999, -0.005935, 0.929013,
		-0.030081, 0.999532, -0.005595,
		-0.928545, -0.030015, -0.370004,
		27.987101, 35.631119, 30.331177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268284, 36.096313, 31.007092>,  <28.637083, 35.652130, 30.590179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268284, 36.096313, 31.007092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.002619, 35.845970, 30.843534>,  <27.843220, 35.695766, 30.745399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.002619, 35.845970, 30.843534>,  <28.268284, 36.096313, 31.007092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002619, 35.845970, 30.843534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464128, -0.083584, 0.881816,
		-0.586065, 0.775448, -0.234963,
		-0.664163, -0.625855, -0.408893,
		27.803370, 35.658215, 30.720867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696379, 36.181244, 31.412237>,  <28.268284, 36.096313, 31.007092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696379, 36.181244, 31.412237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567667, 35.875019, 31.189394>,  <27.490440, 35.691284, 31.055689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567667, 35.875019, 31.189394>,  <27.696379, 36.181244, 31.412237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567667, 35.875019, 31.189394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602391, -0.288418, 0.744272,
		-0.730467, 0.575089, -0.368362,
		-0.321780, -0.765564, -0.557108,
		27.471132, 35.645351, 31.022261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883923, 36.220074, 31.245256>,  <27.696379, 36.181244, 31.412237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883923, 36.220074, 31.245256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.056875, 35.860325, 31.271101>,  <27.160646, 35.644474, 31.286608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.056875, 35.860325, 31.271101>,  <26.883923, 36.220074, 31.245256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056875, 35.860325, 31.271101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503596, -0.181429, 0.844674,
		-0.747955, -0.397759, -0.531367,
		0.432383, -0.899372, 0.064610,
		27.186590, 35.590511, 31.290483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359341, 35.598530, 31.380938>,  <26.883923, 36.220074, 31.245256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359341, 35.598530, 31.380938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.732363, 35.529388, 31.507721>,  <26.956177, 35.487904, 31.583790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.732363, 35.529388, 31.507721>,  <26.359341, 35.598530, 31.380938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732363, 35.529388, 31.507721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359185, -0.355634, 0.862850,
		-0.036426, -0.918502, -0.393735,
		0.932555, -0.172854, 0.316957,
		27.012129, 35.477531, 31.602808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086201, 35.129253, 31.840120>,  <26.359341, 35.598530, 31.380938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086201, 35.129253, 31.840120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459612, 35.236729, 31.935061>,  <26.683659, 35.301212, 31.992023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459612, 35.236729, 31.935061>,  <26.086201, 35.129253, 31.840120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459612, 35.236729, 31.935061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175025, -0.236221, 0.955806,
		0.312878, -0.933814, -0.173492,
		0.933528, 0.268685, 0.237349,
		26.739670, 35.317333, 32.006264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116997, 34.796944, 32.409245>,  <26.086201, 35.129253, 31.840120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116997, 34.796944, 32.409245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.462631, 34.997704, 32.424480>,  <26.670012, 35.118160, 32.433624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.462631, 34.997704, 32.424480>,  <26.116997, 34.796944, 32.409245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462631, 34.997704, 32.424480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009328, -0.059701, 0.998173,
		0.503259, -0.862862, -0.046904,
		0.864086, 0.501902, 0.038094,
		26.721857, 35.148273, 32.435909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560602, 34.466663, 32.873611>,  <26.116997, 34.796944, 32.409245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560602, 34.466663, 32.873611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694460, 34.841885, 32.837688>,  <26.774775, 35.067017, 32.816135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694460, 34.841885, 32.837688>,  <26.560602, 34.466663, 32.873611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694460, 34.841885, 32.837688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103057, 0.058303, 0.992965,
		0.936692, -0.341545, -0.077162,
		0.334644, 0.938055, -0.089811,
		26.794853, 35.123302, 32.810745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176130, 34.494099, 33.233967>,  <26.560602, 34.466663, 32.873611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176130, 34.494099, 33.233967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.021334, 34.862900, 33.238914>,  <26.928455, 35.084179, 33.241882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.021334, 34.862900, 33.238914>,  <27.176130, 34.494099, 33.233967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021334, 34.862900, 33.238914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013863, -0.007599, 0.999875,
		0.921979, 0.387115, -0.009841,
		-0.386992, 0.922000, 0.012373,
		26.905235, 35.139500, 33.242626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434301, 34.844749, 33.789040>,  <27.176130, 34.494099, 33.233967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434301, 34.844749, 33.789040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100391, 35.049282, 33.707375>,  <26.900045, 35.172001, 33.658375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100391, 35.049282, 33.707375>,  <27.434301, 34.844749, 33.789040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100391, 35.049282, 33.707375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319486, -0.147858, 0.935984,
		0.448415, 0.846566, 0.286793,
		-0.834777, 0.511336, -0.204164,
		26.849958, 35.202682, 33.646126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013535, 34.819550, 34.234333>,  <27.434301, 34.844749, 33.789040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013535, 34.819550, 34.234333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.237913, 35.052368, 34.469810>,  <28.372540, 35.192059, 34.611099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.237913, 35.052368, 34.469810>,  <28.013535, 34.819550, 34.234333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237913, 35.052368, 34.469810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026522, 0.698112, -0.715497,
		-0.827428, 0.416968, 0.376166,
		0.560946, 0.582045, 0.588696,
		28.406197, 35.226982, 34.646420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845928, 35.567928, 34.005753>,  <28.013535, 34.819550, 34.234333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845928, 35.567928, 34.005753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.216181, 35.554554, 34.156532>,  <28.438332, 35.546532, 34.247002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.216181, 35.554554, 34.156532>,  <27.845928, 35.567928, 34.005753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216181, 35.554554, 34.156532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312121, 0.630693, -0.710497,
		-0.213986, 0.775312, 0.594223,
		0.925630, -0.033433, 0.376951,
		28.493870, 35.544525, 34.269619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960064, 36.190208, 33.935783>,  <27.845928, 35.567928, 34.005753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960064, 36.190208, 33.935783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314003, 36.014217, 33.997059>,  <28.526365, 35.908623, 34.033825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314003, 36.014217, 33.997059>,  <27.960064, 36.190208, 33.935783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314003, 36.014217, 33.997059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431406, 0.649661, -0.625963,
		0.175885, 0.619969, 0.764658,
		0.884847, -0.439976, 0.153193,
		28.579456, 35.882225, 34.043018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429855, 36.717556, 34.057831>,  <27.960064, 36.190208, 33.935783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429855, 36.717556, 34.057831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654760, 36.413013, 33.928711>,  <28.789703, 36.230289, 33.851238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654760, 36.413013, 33.928711>,  <28.429855, 36.717556, 34.057831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654760, 36.413013, 33.928711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551936, 0.636178, -0.539115,
		0.615815, 0.124960, 0.777918,
		0.562262, -0.761356, -0.322798,
		28.823439, 36.184608, 33.831871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048582, 36.982094, 34.009750>,  <28.429855, 36.717556, 34.057831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048582, 36.982094, 34.009750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081554, 36.650108, 33.789074>,  <29.101337, 36.450916, 33.656666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081554, 36.650108, 33.789074>,  <29.048582, 36.982094, 34.009750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081554, 36.650108, 33.789074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542745, 0.501671, -0.673612,
		0.835842, -0.243902, 0.491812,
		0.082433, -0.829962, -0.551695,
		29.106285, 36.401119, 33.623566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655375, 37.052753, 33.798195>,  <29.048582, 36.982094, 34.009750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655375, 37.052753, 33.798195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524481, 36.787956, 33.528473>,  <29.445946, 36.629078, 33.366638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524481, 36.787956, 33.528473>,  <29.655375, 37.052753, 33.798195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524481, 36.787956, 33.528473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457404, 0.513454, -0.726049,
		0.826862, -0.546017, 0.134778,
		-0.327233, -0.661990, -0.674306,
		29.426311, 36.589359, 33.326180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240101, 36.737675, 33.451031>,  <29.655375, 37.052753, 33.798195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240101, 36.737675, 33.451031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.920141, 36.721565, 33.211517>,  <29.728165, 36.711899, 33.067810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.920141, 36.721565, 33.211517>,  <30.240101, 36.737675, 33.451031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920141, 36.721565, 33.211517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500702, 0.505251, -0.702865,
		0.330843, -0.862032, -0.383984,
		-0.799901, -0.040276, -0.598780,
		29.680172, 36.709484, 33.031883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488943, 37.027981, 32.847786>,  <30.240101, 36.737675, 33.451031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488943, 37.027981, 32.847786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109215, 36.988297, 32.728489>,  <29.881378, 36.964485, 32.656910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109215, 36.988297, 32.728489>,  <30.488943, 37.027981, 32.847786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109215, 36.988297, 32.728489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171461, 0.631806, -0.755925,
		0.263425, -0.768752, -0.582776,
		-0.949320, -0.099207, -0.298244,
		29.824419, 36.958534, 32.639015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512119, 36.791637, 32.237484>,  <30.488943, 37.027981, 32.847786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512119, 36.791637, 32.237484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156971, 36.972500, 32.271515>,  <29.943882, 37.081017, 32.291935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156971, 36.972500, 32.271515>,  <30.512119, 36.791637, 32.237484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156971, 36.972500, 32.271515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203622, 0.551983, -0.808612,
		-0.412581, -0.700620, -0.582159,
		-0.887871, 0.452158, 0.085076,
		29.890610, 37.108147, 32.297039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105265, 36.601204, 31.640884>,  <30.512119, 36.791637, 32.237484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105265, 36.601204, 31.640884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.983515, 36.953606, 31.785761>,  <29.910465, 37.165047, 31.872686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.983515, 36.953606, 31.785761>,  <30.105265, 36.601204, 31.640884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983515, 36.953606, 31.785761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319302, 0.452602, -0.832585,
		-0.897441, -0.137770, -0.419069,
		-0.304376, 0.881006, 0.362193,
		29.892202, 37.217907, 31.894419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926908, 36.916489, 31.031281>,  <30.105265, 36.601204, 31.640884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926908, 36.916489, 31.031281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.893175, 37.233418, 31.272982>,  <29.872936, 37.423573, 31.418001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.893175, 37.233418, 31.272982>,  <29.926908, 36.916489, 31.031281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893175, 37.233418, 31.272982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298575, 0.598641, -0.743291,
		-0.950653, 0.117731, -0.287051,
		-0.084332, 0.792319, 0.604251,
		29.867876, 37.471111, 31.454256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399740, 37.360001, 30.761028>,  <29.926908, 36.916489, 31.031281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399740, 37.360001, 30.761028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.660139, 37.561111, 30.988508>,  <29.816378, 37.681778, 31.124996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.660139, 37.561111, 30.988508>,  <29.399740, 37.360001, 30.761028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660139, 37.561111, 30.988508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387081, 0.424595, -0.818467,
		-0.652972, 0.752952, 0.081795,
		0.650996, 0.502774, 0.568702,
		29.855438, 37.711945, 31.159119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377996, 38.005894, 30.475748>,  <29.399740, 37.360001, 30.761028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377996, 38.005894, 30.475748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.715824, 37.965530, 30.686090>,  <29.918520, 37.941315, 30.812296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.715824, 37.965530, 30.686090>,  <29.377996, 38.005894, 30.475748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715824, 37.965530, 30.686090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529617, 0.301988, -0.792660,
		-0.078819, 0.947957, 0.308490,
		0.844567, -0.100904, 0.525856,
		29.969194, 37.935261, 30.843847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779770, 38.475983, 30.198418>,  <29.377996, 38.005894, 30.475748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779770, 38.475983, 30.198418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055712, 38.266277, 30.398117>,  <30.221277, 38.140453, 30.517937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055712, 38.266277, 30.398117>,  <29.779770, 38.475983, 30.198418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055712, 38.266277, 30.398117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701146, 0.312125, -0.641071,
		0.180263, 0.792291, 0.582906,
		0.689855, -0.524264, 0.499247,
		30.262669, 38.108997, 30.547892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317047, 38.829926, 30.175596>,  <29.779770, 38.475983, 30.198418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317047, 38.829926, 30.175596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.472956, 38.466217, 30.233986>,  <30.566500, 38.247993, 30.269020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.472956, 38.466217, 30.233986>,  <30.317047, 38.829926, 30.175596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472956, 38.466217, 30.233986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541038, 0.097827, -0.835289,
		0.745223, 0.404546, 0.530080,
		0.389769, -0.909270, 0.145972,
		30.589886, 38.193436, 30.277777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953026, 38.887077, 29.879311>,  <30.317047, 38.829926, 30.175596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953026, 38.887077, 29.879311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915400, 38.491154, 29.922089>,  <30.892824, 38.253601, 29.947756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915400, 38.491154, 29.922089>,  <30.953026, 38.887077, 29.879311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915400, 38.491154, 29.922089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336610, -0.132716, -0.932245,
		0.936934, -0.051692, 0.345663,
		-0.094064, -0.989806, 0.106946,
		30.887180, 38.194214, 29.954172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628843, 38.531288, 29.817003>,  <30.953026, 38.887077, 29.879311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628843, 38.531288, 29.817003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349890, 38.266743, 29.706543>,  <31.182518, 38.108017, 29.640266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349890, 38.266743, 29.706543>,  <31.628843, 38.531288, 29.817003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349890, 38.266743, 29.706543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440845, -0.092047, -0.892851,
		0.565078, -0.744398, 0.355750,
		-0.697382, -0.661362, -0.276150,
		31.140675, 38.068333, 29.623697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992439, 37.898796, 29.504263>,  <31.628843, 38.531288, 29.817003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992439, 37.898796, 29.504263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.614613, 37.894768, 29.372995>,  <31.387917, 37.892349, 29.294235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.614613, 37.894768, 29.372995>,  <31.992439, 37.898796, 29.504263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614613, 37.894768, 29.372995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326224, -0.141630, -0.934622,
		-0.037063, -0.989868, 0.137066,
		-0.944566, -0.010074, -0.328168,
		31.331244, 37.891747, 29.274546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990654, 37.309258, 29.082901>,  <31.992439, 37.898796, 29.504263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990654, 37.309258, 29.082901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.681276, 37.546093, 28.992376>,  <31.495649, 37.688194, 28.938063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.681276, 37.546093, 28.992376>,  <31.990654, 37.309258, 29.082901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681276, 37.546093, 28.992376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085190, -0.256696, -0.962730,
		-0.628114, -0.763897, 0.148100,
		-0.773444, 0.592088, -0.226311,
		31.449244, 37.723721, 28.924482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696175, 36.964462, 28.425236>,  <31.990654, 37.309258, 29.082901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696175, 36.964462, 28.425236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.482342, 37.301643, 28.449394>,  <31.354042, 37.503952, 28.463890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.482342, 37.301643, 28.449394>,  <31.696175, 36.964462, 28.425236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482342, 37.301643, 28.449394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069580, 0.027323, -0.997202,
		-0.842247, -0.537289, 0.044047,
		-0.534582, 0.842956, 0.060397,
		31.321968, 37.554531, 28.467514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058981, 36.761398, 28.123259>,  <31.696175, 36.964462, 28.425236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058981, 36.761398, 28.123259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.117451, 37.157001, 28.114351>,  <31.152533, 37.394363, 28.109007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.117451, 37.157001, 28.114351>,  <31.058981, 36.761398, 28.123259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117451, 37.157001, 28.114351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286277, 0.020744, -0.957922,
		-0.946931, 0.146401, 0.286163,
		0.146177, 0.989008, -0.022268,
		31.161304, 37.453705, 28.107670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521605, 37.076195, 27.747370>,  <31.058981, 36.761398, 28.123259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521605, 37.076195, 27.747370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.790335, 37.372448, 27.751774>,  <30.951572, 37.550198, 27.754416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.790335, 37.372448, 27.751774>,  <30.521605, 37.076195, 27.747370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790335, 37.372448, 27.751774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130309, 0.132810, -0.982538,
		-0.729159, 0.658658, 0.185735,
		0.671824, 0.740629, 0.011010,
		30.991882, 37.594635, 27.755077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219408, 37.726307, 27.478123>,  <30.521605, 37.076195, 27.747370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219408, 37.726307, 27.478123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.613792, 37.780865, 27.439585>,  <30.850422, 37.813599, 27.416462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.613792, 37.780865, 27.439585>,  <30.219408, 37.726307, 27.478123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613792, 37.780865, 27.439585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113478, 0.123984, -0.985774,
		-0.122505, 0.982866, 0.137721,
		0.985959, 0.136391, -0.096345,
		30.909580, 37.821781, 27.410681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210197, 38.352600, 27.149048>,  <30.219408, 37.726307, 27.478123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210197, 38.352600, 27.149048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.542877, 38.143044, 27.075495>,  <30.742485, 38.017307, 27.031363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.542877, 38.143044, 27.075495>,  <30.210197, 38.352600, 27.149048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542877, 38.143044, 27.075495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234931, -0.031980, -0.971486,
		0.503075, 0.851183, -0.149676,
		0.831699, -0.523894, -0.183881,
		30.792387, 37.985874, 27.020330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.563412, 35.416798, 45.058136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569847, 35.024555, 45.136269>,  <37.573708, 34.789211, 45.183147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569847, 35.024555, 45.136269>,  <37.563412, 35.416798, 45.058136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569847, 35.024555, 45.136269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381968, 0.186563, 0.905149,
		-0.924036, 0.060049, 0.377561,
		0.016085, -0.980606, 0.195328,
		37.574673, 34.730373, 45.194866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245132, 35.436710, 45.690887>,  <37.563412, 35.416798, 45.058136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245132, 35.436710, 45.690887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484627, 35.120152, 45.641563>,  <37.628323, 34.930214, 45.611969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484627, 35.120152, 45.641563>,  <37.245132, 35.436710, 45.690887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484627, 35.120152, 45.641563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426250, 0.184497, 0.885591,
		-0.678106, -0.582793, 0.447799,
		0.598734, -0.791399, -0.123307,
		37.664246, 34.882732, 45.604572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310577, 35.224754, 46.381035>,  <37.245132, 35.436710, 45.690887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310577, 35.224754, 46.381035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.594425, 35.017914, 46.189602>,  <37.764736, 34.893810, 46.074741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.594425, 35.017914, 46.189602>,  <37.310577, 35.224754, 46.381035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594425, 35.017914, 46.189602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571296, 0.024729, 0.820372,
		-0.412379, -0.855568, 0.312965,
		0.709623, -0.517100, -0.478585,
		37.807312, 34.862785, 46.046028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425770, 34.604012, 46.712337>,  <37.310577, 35.224754, 46.381035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425770, 34.604012, 46.712337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767536, 34.656506, 46.511242>,  <37.972595, 34.688004, 46.390583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767536, 34.656506, 46.511242>,  <37.425770, 34.604012, 46.712337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767536, 34.656506, 46.511242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519311, -0.183953, 0.834552,
		0.017043, -0.974134, -0.225325,
		0.854416, 0.131238, -0.502743,
		38.023861, 34.695877, 46.360420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818295, 34.113491, 47.001865>,  <37.425770, 34.604012, 46.712337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818295, 34.113491, 47.001865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091690, 34.343109, 46.821499>,  <38.255726, 34.480881, 46.713280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091690, 34.343109, 46.821499>,  <37.818295, 34.113491, 47.001865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091690, 34.343109, 46.821499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588074, -0.067054, 0.806023,
		0.432455, -0.816076, -0.383410,
		0.683484, 0.574042, -0.450915,
		38.296734, 34.515320, 46.686226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419689, 33.750141, 47.016273>,  <37.818295, 34.113491, 47.001865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419689, 33.750141, 47.016273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.567387, 34.117401, 46.958775>,  <38.656006, 34.337757, 46.924274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.567387, 34.117401, 46.958775>,  <38.419689, 33.750141, 47.016273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567387, 34.117401, 46.958775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623768, -0.130191, 0.770690,
		0.688894, -0.374236, -0.620784,
		0.369241, 0.918149, -0.143749,
		38.678158, 34.392845, 46.915649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182175, 33.743809, 47.105927>,  <38.419689, 33.750141, 47.016273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182175, 33.743809, 47.105927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107674, 34.132896, 47.161243>,  <39.062973, 34.366348, 47.194431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107674, 34.132896, 47.161243>,  <39.182175, 33.743809, 47.105927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107674, 34.132896, 47.161243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582664, -0.003973, 0.812703,
		0.791083, 0.231944, -0.566030,
		-0.186253, 0.972721, 0.138288,
		39.051796, 34.424713, 47.202728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764637, 34.070820, 47.345188>,  <39.182175, 33.743809, 47.105927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764637, 34.070820, 47.345188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.502571, 34.352280, 47.455204>,  <39.345333, 34.521156, 47.521214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.502571, 34.352280, 47.455204>,  <39.764637, 34.070820, 47.345188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502571, 34.352280, 47.455204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540231, 0.181852, 0.821633,
		0.528125, 0.686884, -0.499274,
		-0.655160, 0.703648, 0.275035,
		39.306023, 34.563374, 47.537716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219509, 34.671329, 47.653599>,  <39.764637, 34.070820, 47.345188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219509, 34.671329, 47.653599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.838840, 34.662846, 47.776146>,  <39.610439, 34.657757, 47.849674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.838840, 34.662846, 47.776146>,  <40.219509, 34.671329, 47.653599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838840, 34.662846, 47.776146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291685, 0.249711, 0.923344,
		-0.096088, 0.968088, -0.231458,
		-0.951676, -0.021210, 0.306371,
		39.553337, 34.656483, 47.868057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188694, 35.265533, 48.048000>,  <40.219509, 34.671329, 47.653599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188694, 35.265533, 48.048000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.886478, 35.025040, 48.152065>,  <39.705151, 34.880745, 48.214504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.886478, 35.025040, 48.152065>,  <40.188694, 35.265533, 48.048000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886478, 35.025040, 48.152065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328553, -0.004180, 0.944476,
		-0.566763, 0.799063, 0.200695,
		-0.755535, -0.601233, 0.260165,
		39.659817, 34.844669, 48.230114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995106, 35.562138, 48.688782>,  <40.188694, 35.265533, 48.048000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995106, 35.562138, 48.688782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863686, 35.184345, 48.687290>,  <39.784832, 34.957672, 48.686398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863686, 35.184345, 48.687290>,  <39.995106, 35.562138, 48.688782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863686, 35.184345, 48.687290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242398, -0.088132, 0.966166,
		-0.912850, 0.316534, 0.257896,
		-0.328553, -0.944478, -0.003724,
		39.765121, 34.901001, 48.686172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949661, 35.392384, 49.405052>,  <39.995106, 35.562138, 48.688782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949661, 35.392384, 49.405052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853760, 35.022003, 49.288349>,  <39.796219, 34.799774, 49.218327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853760, 35.022003, 49.288349>,  <39.949661, 35.392384, 49.405052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853760, 35.022003, 49.288349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307997, -0.357548, 0.881644,
		-0.920681, 0.121519, 0.370916,
		-0.239757, -0.925955, -0.291760,
		39.781834, 34.744217, 49.200821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578907, 35.110886, 49.959003>,  <39.949661, 35.392384, 49.405052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578907, 35.110886, 49.959003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726524, 34.808372, 49.742916>,  <39.815094, 34.626865, 49.613262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726524, 34.808372, 49.742916>,  <39.578907, 35.110886, 49.959003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726524, 34.808372, 49.742916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249635, -0.479234, 0.841437,
		-0.895260, -0.445385, 0.011937,
		0.369043, -0.756285, -0.540223,
		39.837238, 34.581486, 49.580849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239422, 34.490658, 50.089291>,  <39.578907, 35.110886, 49.959003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239422, 34.490658, 50.089291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632217, 34.455650, 50.022305>,  <39.867893, 34.434647, 49.982113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632217, 34.455650, 50.022305>,  <39.239422, 34.490658, 50.089291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632217, 34.455650, 50.022305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127195, -0.349235, 0.928362,
		-0.139733, -0.932939, -0.331812,
		0.981986, -0.087518, -0.167464,
		39.926815, 34.429394, 49.972065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882812, 34.987217, 50.359913>,  <39.239422, 34.490658, 50.089291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882812, 34.987217, 50.359913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.784313, 35.348145, 50.501442>,  <38.725212, 35.564701, 50.586361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.784313, 35.348145, 50.501442>,  <38.882812, 34.987217, 50.359913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784313, 35.348145, 50.501442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106663, 0.337616, -0.935221,
		-0.963320, -0.268035, 0.013107,
		-0.246247, 0.902315, 0.353822,
		38.710438, 35.618839, 50.607590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333054, 35.110794, 49.988140>,  <38.882812, 34.987217, 50.359913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333054, 35.110794, 49.988140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409496, 35.469364, 50.148090>,  <38.455360, 35.684505, 50.244061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409496, 35.469364, 50.148090>,  <38.333054, 35.110794, 49.988140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409496, 35.469364, 50.148090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406359, 0.443090, -0.799089,
		-0.893505, -0.009783, 0.448947,
		0.191107, 0.896424, 0.399879,
		38.466827, 35.738293, 50.268055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819618, 35.530293, 49.684711>,  <38.333054, 35.110794, 49.988140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819618, 35.530293, 49.684711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.072388, 35.807388, 49.823723>,  <38.224049, 35.973648, 49.907131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.072388, 35.807388, 49.823723>,  <37.819618, 35.530293, 49.684711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072388, 35.807388, 49.823723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251330, 0.607343, -0.753636,
		-0.733145, 0.388898, 0.557903,
		0.631926, 0.692743, 0.347529,
		38.261967, 36.015213, 49.927982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421230, 36.109905, 49.788216>,  <37.819618, 35.530293, 49.684711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421230, 36.109905, 49.788216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801773, 36.213490, 49.721458>,  <38.030098, 36.275642, 49.681404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801773, 36.213490, 49.721458>,  <37.421230, 36.109905, 49.788216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801773, 36.213490, 49.721458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299177, 0.647270, -0.701095,
		-0.073535, 0.716924, 0.693263,
		0.951360, 0.258963, -0.166890,
		38.087181, 36.291180, 49.671391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434620, 36.781181, 49.752399>,  <37.421230, 36.109905, 49.788216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434620, 36.781181, 49.752399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.751602, 36.657902, 49.541866>,  <37.941792, 36.583935, 49.415546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.751602, 36.657902, 49.541866>,  <37.434620, 36.781181, 49.752399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751602, 36.657902, 49.541866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251455, 0.621102, -0.742296,
		0.555681, 0.720586, 0.414699,
		0.792458, -0.308202, -0.526329,
		37.989338, 36.565441, 49.383968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700893, 37.314529, 49.322113>,  <37.434620, 36.781181, 49.752399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700893, 37.314529, 49.322113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872116, 36.991940, 49.158962>,  <37.974850, 36.798386, 49.061069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872116, 36.991940, 49.158962>,  <37.700893, 37.314529, 49.322113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872116, 36.991940, 49.158962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022774, 0.441551, -0.896948,
		0.903466, 0.393232, 0.170641,
		0.428055, -0.806475, -0.407881,
		38.000534, 36.749996, 49.036598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113380, 37.623749, 48.769444>,  <37.700893, 37.314529, 49.322113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113380, 37.623749, 48.769444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117344, 37.234455, 48.677601>,  <38.119720, 37.000877, 48.622498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117344, 37.234455, 48.677601>,  <38.113380, 37.623749, 48.769444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117344, 37.234455, 48.677601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153688, 0.228369, -0.961368,
		0.988070, -0.025762, 0.151838,
		0.009908, -0.973234, -0.229604,
		38.120316, 36.942486, 48.608719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627323, 37.622955, 48.236507>,  <38.113380, 37.623749, 48.769444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627323, 37.622955, 48.236507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.419437, 37.283901, 48.193775>,  <38.294708, 37.080467, 48.168137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.419437, 37.283901, 48.193775>,  <38.627323, 37.622955, 48.236507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419437, 37.283901, 48.193775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103678, 0.186693, -0.976932,
		0.848028, -0.496647, -0.184907,
		-0.519711, -0.847636, -0.106830,
		38.263523, 37.029610, 48.161728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874016, 37.233536, 47.703575>,  <38.627323, 37.622955, 48.236507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874016, 37.233536, 47.703575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513332, 37.061859, 47.724442>,  <38.296925, 36.958855, 47.736961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513332, 37.061859, 47.724442>,  <38.874016, 37.233536, 47.703575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513332, 37.061859, 47.724442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030533, -0.057134, -0.997900,
		0.431270, -0.901405, 0.038413,
		-0.901706, -0.429191, 0.052163,
		38.242821, 36.933102, 47.740089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914543, 36.594826, 47.228916>,  <38.874016, 37.233536, 47.703575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914543, 36.594826, 47.228916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.542465, 36.733665, 47.276695>,  <38.319218, 36.816967, 47.305363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.542465, 36.733665, 47.276695>,  <38.914543, 36.594826, 47.228916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542465, 36.733665, 47.276695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154076, -0.073829, -0.985297,
		-0.333175, -0.934918, 0.122155,
		-0.930191, 0.347098, 0.119450,
		38.263409, 36.837795, 47.312531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546722, 36.282410, 46.685886>,  <38.914543, 36.594826, 47.228916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546722, 36.282410, 46.685886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.269108, 36.545361, 46.803303>,  <38.102539, 36.703133, 46.873753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.269108, 36.545361, 46.803303>,  <38.546722, 36.282410, 46.685886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269108, 36.545361, 46.803303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287513, 0.120719, -0.950139,
		-0.660037, -0.743828, 0.105221,
		-0.694037, 0.657379, 0.293539,
		38.060898, 36.742573, 46.891365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935200, 36.063988, 46.289349>,  <38.546722, 36.282410, 46.685886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935200, 36.063988, 46.289349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.884903, 36.452583, 46.369740>,  <37.854725, 36.685741, 46.417973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.884903, 36.452583, 46.369740>,  <37.935200, 36.063988, 46.289349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884903, 36.452583, 46.369740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296409, 0.156543, -0.942144,
		-0.946748, -0.178036, 0.268276,
		-0.125739, 0.971492, 0.200978,
		37.847183, 36.744030, 46.430035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303741, 36.300884, 46.083878>,  <37.935200, 36.063988, 46.289349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303741, 36.300884, 46.083878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.506931, 36.645424, 46.086052>,  <37.628845, 36.852150, 46.087357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.506931, 36.645424, 46.086052>,  <37.303741, 36.300884, 46.083878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506931, 36.645424, 46.086052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367231, 0.222275, -0.903181,
		-0.779166, 0.456798, 0.429226,
		0.507978, 0.861353, 0.005439,
		37.659325, 36.903831, 46.087685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783920, 36.732605, 45.928459>,  <37.303741, 36.300884, 46.083878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783920, 36.732605, 45.928459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133522, 36.909184, 45.847229>,  <37.343285, 37.015129, 45.798489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133522, 36.909184, 45.847229>,  <36.783920, 36.732605, 45.928459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133522, 36.909184, 45.847229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359679, 0.306729, -0.881220,
		-0.326722, 0.843233, 0.426862,
		0.874004, 0.441447, -0.203079,
		37.395725, 37.041618, 45.786304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150734, 37.216026, 45.843872>,  <36.783920, 36.732605, 45.928459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150734, 37.216026, 45.843872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806068, 37.013744, 45.860893>,  <35.599270, 36.892376, 45.871105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806068, 37.013744, 45.860893>,  <36.150734, 37.216026, 45.843872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806068, 37.013744, 45.860893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059469, -0.017340, 0.998080,
		-0.503991, 0.862535, 0.045015,
		-0.861659, -0.505700, 0.042555,
		35.547569, 36.862034, 45.873661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798927, 37.587112, 46.410416>,  <36.150734, 37.216026, 45.843872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798927, 37.587112, 46.410416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.597908, 37.244171, 46.365894>,  <35.477295, 37.038406, 46.339180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.597908, 37.244171, 46.365894>,  <35.798927, 37.587112, 46.410416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597908, 37.244171, 46.365894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060998, -0.093262, 0.993771,
		-0.862392, 0.506212, -0.005428,
		-0.502552, -0.857352, -0.111306,
		35.447144, 36.986965, 46.332504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303375, 37.629398, 46.943008>,  <35.798927, 37.587112, 46.410416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303375, 37.629398, 46.943008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.316799, 37.241520, 46.846210>,  <35.324852, 37.008793, 46.788132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.316799, 37.241520, 46.846210>,  <35.303375, 37.629398, 46.943008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316799, 37.241520, 46.846210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237446, -0.242936, 0.940533,
		-0.970821, 0.025901, -0.238402,
		0.033555, -0.969697, -0.241997,
		35.326866, 36.950611, 46.773613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733166, 37.376423, 47.337566>,  <35.303375, 37.629398, 46.943008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733166, 37.376423, 47.337566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949852, 37.051018, 47.252953>,  <35.079865, 36.855774, 47.202183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949852, 37.051018, 47.252953>,  <34.733166, 37.376423, 47.337566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949852, 37.051018, 47.252953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162796, -0.348432, 0.923088,
		-0.824647, -0.465613, -0.321187,
		0.541714, -0.813511, -0.211534,
		35.112366, 36.806965, 47.189491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373592, 36.837132, 47.430023>,  <34.733166, 37.376423, 47.337566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373592, 36.837132, 47.430023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740635, 36.680561, 47.457706>,  <34.960861, 36.586620, 47.474316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740635, 36.680561, 47.457706>,  <34.373592, 36.837132, 47.430023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740635, 36.680561, 47.457706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234671, -0.392915, 0.889127,
		-0.320831, -0.832109, -0.452396,
		0.917604, -0.391423, 0.069212,
		35.015915, 36.563133, 47.478470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261745, 36.186966, 47.642273>,  <34.373592, 36.837132, 47.430023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261745, 36.186966, 47.642273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634056, 36.281555, 47.753796>,  <34.857441, 36.338310, 47.820709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634056, 36.281555, 47.753796>,  <34.261745, 36.186966, 47.642273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634056, 36.281555, 47.753796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189546, -0.339970, 0.921137,
		0.312615, -0.910219, -0.271612,
		0.930776, 0.236478, 0.278809,
		34.913288, 36.352497, 47.837437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526989, 35.687679, 48.152264>,  <34.261745, 36.186966, 47.642273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526989, 35.687679, 48.152264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762989, 36.002785, 48.223061>,  <34.904587, 36.191849, 48.265537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762989, 36.002785, 48.223061>,  <34.526989, 35.687679, 48.152264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762989, 36.002785, 48.223061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089774, -0.153848, 0.984008,
		0.802399, -0.596451, -0.020049,
		0.589997, 0.787767, 0.176993,
		34.939987, 36.239117, 48.276157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678837, 34.885708, 48.143105>,  <34.526989, 35.687679, 48.152264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678837, 34.885708, 48.143105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419060, 34.600395, 48.248516>,  <34.263191, 34.429207, 48.311764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419060, 34.600395, 48.248516>,  <34.678837, 34.885708, 48.143105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419060, 34.600395, 48.248516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484607, 0.121172, -0.866299,
		0.585983, -0.690324, -0.424356,
		-0.649446, -0.713282, 0.263531,
		34.224224, 34.386410, 48.327576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712982, 34.477551, 47.534435>,  <34.678837, 34.885708, 48.143105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712982, 34.477551, 47.534435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377514, 34.332008, 47.696541>,  <34.176231, 34.244682, 47.793804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377514, 34.332008, 47.696541>,  <34.712982, 34.477551, 47.534435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377514, 34.332008, 47.696541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380934, -0.139930, -0.913952,
		0.389254, -0.920885, -0.021250,
		-0.838672, -0.363855, 0.405265,
		34.125912, 34.222851, 47.818119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445633, 33.830509, 47.204044>,  <34.712982, 34.477551, 47.534435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445633, 33.830509, 47.204044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128227, 33.989998, 47.387943>,  <33.937786, 34.085690, 47.498283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128227, 33.989998, 47.387943>,  <34.445633, 33.830509, 47.204044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128227, 33.989998, 47.387943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587245, -0.303517, -0.750347,
		-0.159635, -0.865392, 0.474988,
		-0.793512, 0.398716, 0.459745,
		33.890175, 34.109612, 47.525867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876839, 33.411858, 46.998772>,  <34.445633, 33.830509, 47.204044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876839, 33.411858, 46.998772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657303, 33.691669, 47.181824>,  <33.525581, 33.859558, 47.291653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657303, 33.691669, 47.181824>,  <33.876839, 33.411858, 46.998772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657303, 33.691669, 47.181824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765896, -0.201473, -0.610583,
		-0.334925, -0.685609, 0.646348,
		-0.548843, 0.699535, 0.457627,
		33.492649, 33.901531, 47.319111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233528, 33.234413, 47.048813>,  <33.876839, 33.411858, 46.998772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233528, 33.234413, 47.048813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207764, 33.633350, 47.035244>,  <33.192307, 33.872715, 47.027103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207764, 33.633350, 47.035244>,  <33.233528, 33.234413, 47.048813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207764, 33.633350, 47.035244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604658, -0.066045, -0.793742,
		-0.793877, -0.030617, 0.607307,
		-0.064412, 0.997347, -0.033919,
		33.188438, 33.932556, 47.025070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470303, 33.316128, 47.038223>,  <33.233528, 33.234413, 47.048813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470303, 33.316128, 47.038223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652554, 33.641022, 46.892525>,  <32.761902, 33.835960, 46.805107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652554, 33.641022, 46.892525>,  <32.470303, 33.316128, 47.038223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652554, 33.641022, 46.892525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548551, -0.066071, -0.833503,
		-0.701069, 0.579572, 0.415450,
		0.455625, 0.812239, -0.364245,
		32.789242, 33.884693, 46.783253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966801, 33.766125, 46.707493>,  <32.470303, 33.316128, 47.038223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966801, 33.766125, 46.707493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.310719, 33.850460, 46.521461>,  <32.517071, 33.901062, 46.409843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.310719, 33.850460, 46.521461>,  <31.966801, 33.766125, 46.707493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310719, 33.850460, 46.521461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493205, 0.106921, -0.863317,
		-0.132292, 0.971656, 0.195916,
		0.859795, 0.210836, -0.465081,
		32.568657, 33.913712, 46.381939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.940582, 31.582342, 49.336224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.169029, 31.907097, 49.287788>,  <39.306099, 32.101948, 49.258728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.169029, 31.907097, 49.287788>,  <38.940582, 31.582342, 49.336224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169029, 31.907097, 49.287788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381869, 0.132201, -0.914713,
		-0.726635, 0.568651, 0.385537,
		0.571120, 0.811886, -0.121088,
		39.340366, 32.150661, 49.251461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610157, 32.030079, 49.033836>,  <38.940582, 31.582342, 49.336224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610157, 32.030079, 49.033836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.971012, 32.175186, 48.940422>,  <39.187527, 32.262249, 48.884373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.971012, 32.175186, 48.940422>,  <38.610157, 32.030079, 49.033836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971012, 32.175186, 48.940422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291269, 0.112774, -0.949971,
		-0.318279, 0.925032, 0.207400,
		0.902142, 0.362765, -0.233539,
		39.241653, 32.284016, 48.870361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466141, 32.573074, 48.616493>,  <38.610157, 32.030079, 49.033836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466141, 32.573074, 48.616493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.858009, 32.512665, 48.563683>,  <39.093132, 32.476418, 48.531994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.858009, 32.512665, 48.563683>,  <38.466141, 32.573074, 48.616493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858009, 32.512665, 48.563683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105752, 0.170459, -0.979674,
		0.170459, 0.973723, 0.151023,
		0.979674, -0.151023, -0.132030,
		39.151913, 32.467358, 48.524075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569706, 33.066124, 48.087017>,  <38.466141, 32.573074, 48.616493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569706, 33.066124, 48.087017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.872292, 32.804787, 48.074963>,  <39.053844, 32.647984, 48.067730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.872292, 32.804787, 48.074963>,  <38.569706, 33.066124, 48.087017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872292, 32.804787, 48.074963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143914, -0.121333, -0.982124,
		0.638006, 0.747277, -0.185809,
		0.756463, -0.653341, -0.030133,
		39.099232, 32.608784, 48.065922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020054, 33.208759, 47.560436>,  <38.569706, 33.066124, 48.087017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020054, 33.208759, 47.560436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.050835, 32.815475, 47.626621>,  <39.069305, 32.579506, 47.666332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.050835, 32.815475, 47.626621>,  <39.020054, 33.208759, 47.560436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050835, 32.815475, 47.626621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094043, -0.172373, -0.980532,
		0.992590, 0.059895, -0.105728,
		0.076954, -0.983209, 0.165463,
		39.073921, 32.520512, 47.676262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192631, 32.980740, 46.835754>,  <39.020054, 33.208759, 47.560436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192631, 32.980740, 46.835754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.159214, 32.634834, 47.033825>,  <39.139164, 32.427292, 47.152668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.159214, 32.634834, 47.033825>,  <39.192631, 32.980740, 46.835754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159214, 32.634834, 47.033825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296715, -0.452785, -0.840801,
		0.951305, -0.217169, -0.218762,
		-0.083544, -0.864768, 0.495174,
		39.134151, 32.375404, 47.182377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693192, 32.513786, 46.533356>,  <39.192631, 32.980740, 46.835754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693192, 32.513786, 46.533356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.373512, 32.331219, 46.689796>,  <39.181705, 32.221676, 46.783661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.373512, 32.331219, 46.689796>,  <39.693192, 32.513786, 46.533356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373512, 32.331219, 46.689796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273301, -0.303578, -0.912769,
		0.535337, -0.836372, 0.117878,
		-0.799200, -0.456423, 0.391098,
		39.133751, 32.194290, 46.807125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605091, 31.906027, 46.098766>,  <39.693192, 32.513786, 46.533356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605091, 31.906027, 46.098766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.260525, 31.944281, 46.298290>,  <39.053783, 31.967234, 46.418003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.260525, 31.944281, 46.298290>,  <39.605091, 31.906027, 46.098766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260525, 31.944281, 46.298290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507680, -0.190687, -0.840178,
		0.014767, -0.976981, 0.212812,
		-0.861419, 0.095633, 0.498810,
		39.002098, 31.972971, 46.447933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285240, 31.346443, 45.882530>,  <39.605091, 31.906027, 46.098766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285240, 31.346443, 45.882530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.994534, 31.585899, 46.017254>,  <38.820110, 31.729572, 46.098087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.994534, 31.585899, 46.017254>,  <39.285240, 31.346443, 45.882530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994534, 31.585899, 46.017254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610389, -0.337982, -0.716375,
		-0.315009, -0.726227, 0.611035,
		-0.726770, 0.598633, 0.336814,
		38.776505, 31.765491, 46.118298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697716, 30.911961, 46.138912>,  <39.285240, 31.346443, 45.882530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697716, 30.911961, 46.138912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.562340, 31.275705, 46.042152>,  <38.481113, 31.493952, 45.984097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.562340, 31.275705, 46.042152>,  <38.697716, 30.911961, 46.138912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562340, 31.275705, 46.042152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655809, -0.412299, -0.632396,
		-0.674812, -0.055392, 0.735908,
		-0.338444, 0.909363, -0.241897,
		38.460808, 31.548513, 45.969582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024281, 30.800882, 45.921139>,  <38.697716, 30.911961, 46.138912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024281, 30.800882, 45.921139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.053661, 31.171343, 45.773167>,  <38.071289, 31.393620, 45.684383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.053661, 31.171343, 45.773167>,  <38.024281, 30.800882, 45.921139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053661, 31.171343, 45.773167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653098, -0.235659, -0.719672,
		-0.753702, 0.294467, 0.587557,
		0.073457, 0.926150, -0.369932,
		38.075699, 31.449188, 45.662186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423740, 30.974140, 45.654636>,  <38.024281, 30.800882, 45.921139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423740, 30.974140, 45.654636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.666466, 31.221804, 45.455269>,  <37.812099, 31.370401, 45.335648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.666466, 31.221804, 45.455269>,  <37.423740, 30.974140, 45.654636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666466, 31.221804, 45.455269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392918, -0.311421, -0.865235,
		-0.690935, 0.720874, 0.054303,
		0.606815, 0.619158, -0.498416,
		37.848511, 31.407551, 45.305744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726692, 31.191307, 45.946156>,  <37.423740, 30.974140, 45.654636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726692, 31.191307, 45.946156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.529572, 30.848661, 46.007282>,  <36.411297, 30.643074, 46.043957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.529572, 30.848661, 46.007282>,  <36.726692, 31.191307, 45.946156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529572, 30.848661, 46.007282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042460, 0.151737, 0.987508,
		-0.869103, 0.493138, -0.038405,
		-0.492805, -0.856616, 0.152814,
		36.381729, 30.591677, 46.053127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129662, 31.338640, 46.313221>,  <36.726692, 31.191307, 45.946156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129662, 31.338640, 46.313221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.242226, 30.962530, 46.389843>,  <36.309765, 30.736864, 46.435818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.242226, 30.962530, 46.389843>,  <36.129662, 31.338640, 46.313221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242226, 30.962530, 46.389843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110553, 0.230062, 0.966876,
		-0.953198, -0.250910, 0.168692,
		0.281408, -0.940274, 0.191556,
		36.326649, 30.680449, 46.447311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812462, 31.133625, 46.971741>,  <36.129662, 31.338640, 46.313221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812462, 31.133625, 46.971741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.060871, 30.821749, 46.939697>,  <36.209915, 30.634623, 46.920471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.060871, 30.821749, 46.939697>,  <35.812462, 31.133625, 46.971741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060871, 30.821749, 46.939697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277611, 0.123224, 0.952758,
		-0.732984, -0.613922, 0.292975,
		0.621020, -0.779690, -0.080111,
		36.247177, 30.587841, 46.915665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727242, 30.798277, 47.582893>,  <35.812462, 31.133625, 46.971741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727242, 30.798277, 47.582893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.089584, 30.696911, 47.447128>,  <36.306992, 30.636091, 47.365669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.089584, 30.696911, 47.447128>,  <35.727242, 30.798277, 47.582893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089584, 30.696911, 47.447128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384192, 0.154098, 0.910302,
		-0.178380, -0.955005, 0.236951,
		0.905857, -0.253414, -0.339417,
		36.361343, 30.620886, 47.345303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902649, 30.234230, 47.985237>,  <35.727242, 30.798277, 47.582893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902649, 30.234230, 47.985237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219650, 30.419624, 47.826683>,  <36.409851, 30.530861, 47.731552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219650, 30.419624, 47.826683>,  <35.902649, 30.234230, 47.985237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219650, 30.419624, 47.826683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326155, 0.227094, 0.917634,
		0.515325, -0.856511, 0.028806,
		0.792504, 0.463484, -0.396382,
		36.457401, 30.558670, 47.707767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435970, 30.086224, 48.404621>,  <35.902649, 30.234230, 47.985237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435970, 30.086224, 48.404621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.588501, 30.418854, 48.243092>,  <36.680019, 30.618431, 48.146175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.588501, 30.418854, 48.243092>,  <36.435970, 30.086224, 48.404621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588501, 30.418854, 48.243092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253152, 0.326196, 0.910774,
		0.889103, -0.449531, -0.086128,
		0.381327, 0.831575, -0.403821,
		36.702900, 30.668327, 48.121944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060440, 30.237293, 48.769886>,  <36.435970, 30.086224, 48.404621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060440, 30.237293, 48.769886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.980671, 30.585279, 48.589493>,  <36.932808, 30.794071, 48.481258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.980671, 30.585279, 48.589493>,  <37.060440, 30.237293, 48.769886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980671, 30.585279, 48.589493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357083, 0.493101, 0.793312,
		0.912536, -0.002834, -0.408986,
		-0.199423, 0.869968, -0.450984,
		36.920845, 30.846270, 48.454197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629124, 30.637157, 48.814285>,  <37.060440, 30.237293, 48.769886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629124, 30.637157, 48.814285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345879, 30.911596, 48.747543>,  <37.175930, 31.076260, 48.707497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345879, 30.911596, 48.747543>,  <37.629124, 30.637157, 48.814285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345879, 30.911596, 48.747543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253082, 0.467224, 0.847143,
		0.659181, 0.557648, -0.504488,
		-0.708117, 0.686097, -0.166855,
		37.133442, 31.117426, 48.697487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902096, 31.286772, 49.187458>,  <37.629124, 30.637157, 48.814285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902096, 31.286772, 49.187458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.513470, 31.358355, 49.125439>,  <37.280296, 31.401304, 49.088226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.513470, 31.358355, 49.125439>,  <37.902096, 31.286772, 49.187458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513470, 31.358355, 49.125439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043897, 0.779597, 0.624741,
		0.232678, 0.600169, -0.765283,
		-0.971563, 0.178957, -0.155050,
		37.222000, 31.412041, 49.078922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806873, 31.997391, 49.027054>,  <37.902096, 31.286772, 49.187458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806873, 31.997391, 49.027054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.446209, 31.889755, 49.162460>,  <37.229809, 31.825174, 49.243702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.446209, 31.889755, 49.162460>,  <37.806873, 31.997391, 49.027054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446209, 31.889755, 49.162460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044668, 0.836575, 0.546028,
		-0.430123, 0.477214, -0.766330,
		-0.901665, -0.269090, 0.338514,
		37.175709, 31.809029, 49.264015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451553, 32.631760, 49.090721>,  <37.806873, 31.997391, 49.027054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451553, 32.631760, 49.090721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.273174, 32.362099, 49.326229>,  <37.166145, 32.200302, 49.467533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.273174, 32.362099, 49.326229>,  <37.451553, 32.631760, 49.090721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273174, 32.362099, 49.326229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119364, 0.696716, 0.707346,
		-0.887063, 0.245164, -0.391171,
		-0.445951, -0.674152, 0.588767,
		37.139389, 32.159851, 49.502861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803898, 32.988781, 49.270927>,  <37.451553, 32.631760, 49.090721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803898, 32.988781, 49.270927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.880962, 32.704529, 49.541599>,  <36.927200, 32.533978, 49.704002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.880962, 32.704529, 49.541599>,  <36.803898, 32.988781, 49.270927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880962, 32.704529, 49.541599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319598, 0.606551, 0.727979,
		-0.927760, -0.356517, -0.110257,
		0.192660, -0.710628, 0.676676,
		36.938759, 32.491341, 49.744602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227654, 32.992668, 49.721569>,  <36.803898, 32.988781, 49.270927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227654, 32.992668, 49.721569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.478848, 32.802887, 49.968319>,  <36.629562, 32.689018, 50.116367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.478848, 32.802887, 49.968319>,  <36.227654, 32.992668, 49.721569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478848, 32.802887, 49.968319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330197, 0.555337, 0.763263,
		-0.704703, -0.683007, 0.192080,
		0.627983, -0.474450, 0.616874,
		36.667244, 32.660553, 50.153381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865234, 33.065723, 50.365295>,  <36.227654, 32.992668, 49.721569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865234, 33.065723, 50.365295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.240891, 32.992012, 50.481262>,  <36.466286, 32.947784, 50.550842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.240891, 32.992012, 50.481262>,  <35.865234, 33.065723, 50.365295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240891, 32.992012, 50.481262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201280, 0.388718, 0.899102,
		-0.278378, -0.902741, 0.327971,
		0.939144, -0.184276, 0.289915,
		36.522633, 32.936729, 50.568237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472065, 32.419582, 50.245377>,  <35.865234, 33.065723, 50.365295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472065, 32.419582, 50.245377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.395878, 32.763069, 50.435673>,  <35.350166, 32.969162, 50.549850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.395878, 32.763069, 50.435673>,  <35.472065, 32.419582, 50.245377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395878, 32.763069, 50.435673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820869, 0.126477, -0.556936,
		-0.538421, -0.496596, 0.680805,
		-0.190466, 0.858717, 0.475738,
		35.338737, 33.020683, 50.578396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779163, 32.444637, 50.366394>,  <35.472065, 32.419582, 50.245377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779163, 32.444637, 50.366394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.901276, 32.823128, 50.409206>,  <34.974541, 33.050224, 50.434895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.901276, 32.823128, 50.409206>,  <34.779163, 32.444637, 50.366394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901276, 32.823128, 50.409206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566296, 0.270752, -0.778461,
		-0.765581, 0.177038, 0.618501,
		0.305277, 0.946230, 0.107027,
		34.992859, 33.106998, 50.441315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159645, 32.930553, 50.239227>,  <34.779163, 32.444637, 50.366394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159645, 32.930553, 50.239227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.477474, 33.172806, 50.221943>,  <34.668171, 33.318157, 50.211571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.477474, 33.172806, 50.221943>,  <34.159645, 32.930553, 50.239227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477474, 33.172806, 50.221943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466941, 0.564021, -0.681063,
		-0.388102, 0.561329, 0.730949,
		0.794571, 0.605632, -0.043210,
		34.715847, 33.354496, 50.208981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916328, 33.680222, 50.291607>,  <34.159645, 32.930553, 50.239227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916328, 33.680222, 50.291607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256950, 33.659016, 50.082973>,  <34.461323, 33.646294, 49.957794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256950, 33.659016, 50.082973>,  <33.916328, 33.680222, 50.291607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256950, 33.659016, 50.082973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492174, 0.261910, -0.830162,
		0.180619, 0.963635, 0.196937,
		0.851553, -0.053015, -0.521582,
		34.512417, 33.643112, 49.926498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959385, 34.266777, 49.921364>,  <33.916328, 33.680222, 50.291607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959385, 34.266777, 49.921364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.244450, 34.066860, 49.724461>,  <34.415489, 33.946911, 49.606319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.244450, 34.066860, 49.724461>,  <33.959385, 34.266777, 49.921364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244450, 34.066860, 49.724461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492365, 0.143472, -0.858482,
		0.499685, 0.854183, -0.143830,
		0.712665, -0.499788, -0.492261,
		34.458248, 33.916924, 49.576782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143482, 34.727592, 49.452160>,  <33.959385, 34.266777, 49.921364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143482, 34.727592, 49.452160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.290977, 34.392162, 49.291748>,  <34.379475, 34.190907, 49.195499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.290977, 34.392162, 49.291748>,  <34.143482, 34.727592, 49.452160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290977, 34.392162, 49.291748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339419, 0.280174, -0.897941,
		0.865348, 0.467223, -0.181318,
		0.368737, -0.838574, -0.401032,
		34.401600, 34.140591, 49.171440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509892, 34.948891, 48.943142>,  <34.143482, 34.727592, 49.452160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509892, 34.948891, 48.943142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.411480, 34.575829, 48.837601>,  <34.352432, 34.351990, 48.774277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.411480, 34.575829, 48.837601>,  <34.509892, 34.948891, 48.943142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411480, 34.575829, 48.837601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299788, 0.332095, -0.894338,
		0.921736, -0.140934, -0.361305,
		-0.246030, -0.932658, -0.263853,
		34.337669, 34.296032, 48.758446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035149, 35.399918, 48.737186>,  <34.509892, 34.948891, 48.943142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035149, 35.399918, 48.737186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.042652, 35.799839, 48.739876>,  <35.047153, 36.039791, 48.741489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.042652, 35.799839, 48.739876>,  <35.035149, 35.399918, 48.737186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042652, 35.799839, 48.739876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185778, -0.010096, 0.982540,
		0.982413, -0.017178, -0.185930,
		0.018756, 0.999801, 0.006727,
		35.048279, 36.099781, 48.741894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558113, 35.535294, 49.239780>,  <35.035149, 35.399918, 48.737186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558113, 35.535294, 49.239780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363861, 35.881367, 49.189774>,  <35.247311, 36.089008, 49.159771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363861, 35.881367, 49.189774>,  <35.558113, 35.535294, 49.239780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363861, 35.881367, 49.189774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211175, 0.254888, 0.943630,
		0.848275, 0.431853, -0.306485,
		-0.485628, 0.865179, -0.125018,
		35.218174, 36.140919, 49.152267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994640, 36.019043, 49.290058>,  <35.558113, 35.535294, 49.239780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994640, 36.019043, 49.290058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654381, 36.200272, 49.396729>,  <35.450226, 36.309010, 49.460732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654381, 36.200272, 49.396729>,  <35.994640, 36.019043, 49.290058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654381, 36.200272, 49.396729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332051, 0.069754, 0.940679,
		0.407596, 0.888740, -0.209780,
		-0.850651, 0.453074, 0.266675,
		35.399185, 36.336193, 49.476730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244774, 36.484680, 49.755451>,  <35.994640, 36.019043, 49.290058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244774, 36.484680, 49.755451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.855476, 36.475327, 49.846889>,  <35.621899, 36.469715, 49.901752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.855476, 36.475327, 49.846889>,  <36.244774, 36.484680, 49.755451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855476, 36.475327, 49.846889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223323, 0.138045, 0.964920,
		-0.054117, 0.990150, -0.129130,
		-0.973241, -0.023381, 0.228594,
		35.563503, 36.468311, 49.915466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117050, 37.068462, 50.134598>,  <36.244774, 36.484680, 49.755451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117050, 37.068462, 50.134598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.824528, 36.812199, 50.228188>,  <35.649014, 36.658440, 50.284340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.824528, 36.812199, 50.228188>,  <36.117050, 37.068462, 50.134598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824528, 36.812199, 50.228188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225413, 0.096737, 0.969449,
		-0.643724, 0.761704, 0.073670,
		-0.731306, -0.640663, 0.233970,
		35.605137, 36.619999, 50.298378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750919, 37.370365, 50.714092>,  <36.117050, 37.068462, 50.134598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750919, 37.370365, 50.714092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.622650, 36.991531, 50.719734>,  <35.545689, 36.764233, 50.723118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.622650, 36.991531, 50.719734>,  <35.750919, 37.370365, 50.714092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622650, 36.991531, 50.719734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184642, -0.047903, 0.981638,
		-0.929018, 0.317390, 0.190233,
		-0.320675, -0.947084, 0.014101,
		35.526447, 36.707405, 50.723965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323292, 37.250847, 51.405399>,  <35.750919, 37.370365, 50.714092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323292, 37.250847, 51.405399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.389889, 36.868427, 51.308853>,  <35.429848, 36.638977, 51.250927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.389889, 36.868427, 51.308853>,  <35.323292, 37.250847, 51.405399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389889, 36.868427, 51.308853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165500, -0.214211, 0.962665,
		-0.972055, -0.200220, 0.122562,
		0.166491, -0.956047, -0.241361,
		35.439835, 36.581612, 51.236446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924831, 36.777565, 51.786388>,  <35.323292, 37.250847, 51.405399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924831, 36.777565, 51.786388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.237099, 36.549213, 51.684673>,  <35.424458, 36.412205, 51.623646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.237099, 36.549213, 51.684673>,  <34.924831, 36.777565, 51.786388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237099, 36.549213, 51.684673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167882, -0.200371, 0.965229,
		-0.601978, -0.796211, -0.060583,
		0.780665, -0.570876, -0.254289,
		35.471298, 36.377953, 51.608387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950092, 36.107677, 52.205082>,  <34.924831, 36.777565, 51.786388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950092, 36.107677, 52.205082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.327694, 36.130013, 52.075008>,  <35.554253, 36.143414, 51.996964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.327694, 36.130013, 52.075008>,  <34.950092, 36.107677, 52.205082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327694, 36.130013, 52.075008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329469, -0.106859, 0.938100,
		0.017637, -0.992705, -0.119273,
		0.944002, 0.055842, -0.325181,
		35.610893, 36.146763, 51.977455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.265736, 35.858841, 35.291843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498585, 36.077965, 35.532188>,  <34.638294, 36.209438, 35.676395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498585, 36.077965, 35.532188>,  <34.265736, 35.858841, 35.291843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498585, 36.077965, 35.532188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483379, -0.361064, 0.797482,
		0.653817, -0.754680, 0.054614,
		0.582124, 0.547806, 0.600866,
		34.673222, 36.242306, 35.712448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027397, 35.730179, 35.949215>,  <34.265736, 35.858841, 35.291843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027397, 35.730179, 35.949215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318127, 35.975883, 36.072117>,  <34.492565, 36.123306, 36.145859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318127, 35.975883, 36.072117>,  <34.027397, 35.730179, 35.949215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318127, 35.975883, 36.072117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222023, -0.213212, 0.951444,
		0.649945, -0.759753, -0.018588,
		0.726826, 0.614260, 0.307259,
		34.536175, 36.160160, 36.164295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511898, 35.360943, 36.401218>,  <34.027397, 35.730179, 35.949215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511898, 35.360943, 36.401218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541763, 35.750732, 36.485912>,  <34.559681, 35.984604, 36.536728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541763, 35.750732, 36.485912>,  <34.511898, 35.360943, 36.401218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541763, 35.750732, 36.485912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021817, -0.210685, 0.977311,
		0.996971, -0.077584, 0.005530,
		0.074659, 0.974471, 0.211739,
		34.564159, 36.043072, 36.549435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082607, 35.352234, 36.780674>,  <34.511898, 35.360943, 36.401218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082607, 35.352234, 36.780674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894547, 35.696705, 36.857956>,  <34.781712, 35.903389, 36.904324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894547, 35.696705, 36.857956>,  <35.082607, 35.352234, 36.780674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894547, 35.696705, 36.857956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141791, -0.142362, 0.979606,
		0.871122, 0.487958, -0.055175,
		-0.470152, 0.861180, 0.193203,
		34.753502, 35.955059, 36.915916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514759, 35.591057, 37.336124>,  <35.082607, 35.352234, 36.780674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514759, 35.591057, 37.336124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188450, 35.817944, 37.381351>,  <34.992664, 35.954075, 37.408485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188450, 35.817944, 37.381351>,  <35.514759, 35.591057, 37.336124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188450, 35.817944, 37.381351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123202, -0.020583, 0.992168,
		0.565102, 0.823311, -0.053091,
		-0.815771, 0.567217, 0.113065,
		34.943718, 35.988110, 37.415272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667908, 36.196976, 37.721806>,  <35.514759, 35.591057, 37.336124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667908, 36.196976, 37.721806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271538, 36.159401, 37.760258>,  <35.033714, 36.136856, 37.783329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271538, 36.159401, 37.760258>,  <35.667908, 36.196976, 37.721806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271538, 36.159401, 37.760258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074490, 0.211534, 0.974528,
		-0.111881, 0.972846, -0.202617,
		-0.990926, -0.093938, 0.096134,
		34.974258, 36.131218, 37.789097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321983, 36.780651, 38.066341>,  <35.667908, 36.196976, 37.721806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321983, 36.780651, 38.066341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064312, 36.482502, 38.134983>,  <34.909710, 36.303612, 38.176167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064312, 36.482502, 38.134983>,  <35.321983, 36.780651, 38.066341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064312, 36.482502, 38.134983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066218, 0.277861, 0.958336,
		-0.762004, 0.605975, -0.228349,
		-0.644177, -0.745377, 0.171605,
		34.871059, 36.258888, 38.186466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871204, 37.160309, 38.492638>,  <35.321983, 36.780651, 38.066341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871204, 37.160309, 38.492638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757515, 36.778358, 38.527130>,  <34.689301, 36.549191, 38.547825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757515, 36.778358, 38.527130>,  <34.871204, 37.160309, 38.492638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757515, 36.778358, 38.527130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131926, 0.128038, 0.982956,
		-0.949638, 0.268004, -0.162364,
		-0.284224, -0.954872, 0.086233,
		34.672249, 36.491898, 38.553001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320946, 37.119751, 38.885181>,  <34.871204, 37.160309, 38.492638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320946, 37.119751, 38.885181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437252, 36.738918, 38.923107>,  <34.507034, 36.510418, 38.945862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437252, 36.738918, 38.923107>,  <34.320946, 37.119751, 38.885181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437252, 36.738918, 38.923107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077766, 0.075248, 0.994128,
		-0.953630, -0.296429, -0.052161,
		0.290763, -0.952086, 0.094811,
		34.524483, 36.453293, 38.951550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948326, 36.941349, 39.341091>,  <34.320946, 37.119751, 38.885181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948326, 36.941349, 39.341091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221222, 36.650379, 39.370487>,  <34.384960, 36.475796, 39.388126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221222, 36.650379, 39.370487>,  <33.948326, 36.941349, 39.341091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221222, 36.650379, 39.370487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018462, 0.117622, 0.992887,
		-0.730899, -0.676026, 0.093675,
		0.682236, -0.727430, 0.073489,
		34.425892, 36.432152, 39.392532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685162, 36.408028, 39.733006>,  <33.948326, 36.941349, 39.341091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685162, 36.408028, 39.733006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081409, 36.387234, 39.783550>,  <34.319160, 36.374756, 39.813877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081409, 36.387234, 39.783550>,  <33.685162, 36.408028, 39.733006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081409, 36.387234, 39.783550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122776, 0.067153, 0.990160,
		-0.059962, -0.996387, 0.060141,
		0.990621, -0.051988, 0.126359,
		34.378597, 36.371635, 39.821457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791553, 35.970070, 40.268478>,  <33.685162, 36.408028, 39.733006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791553, 35.970070, 40.268478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149834, 36.147133, 40.251614>,  <34.364803, 36.253368, 40.241497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149834, 36.147133, 40.251614>,  <33.791553, 35.970070, 40.268478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149834, 36.147133, 40.251614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041493, 0.177608, 0.983226,
		0.442717, -0.878927, 0.177450,
		0.895701, 0.442654, -0.042160,
		34.418545, 36.279930, 40.238964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464527, 35.425602, 40.715118>,  <33.791553, 35.970070, 40.268478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464527, 35.425602, 40.715118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068058, 35.436840, 40.766953>,  <32.830177, 35.443584, 40.798054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068058, 35.436840, 40.766953>,  <33.464527, 35.425602, 40.715118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068058, 35.436840, 40.766953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132591, -0.221161, -0.966182,
		0.001517, -0.974833, 0.222933,
		-0.991170, 0.028094, 0.129590,
		32.770706, 35.445267, 40.805828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250950, 34.996975, 40.201920>,  <33.464527, 35.425602, 40.715118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250950, 34.996975, 40.201920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904488, 35.146027, 40.335144>,  <32.696609, 35.235458, 40.415081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904488, 35.146027, 40.335144>,  <33.250950, 34.996975, 40.201920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904488, 35.146027, 40.335144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475196, -0.407571, -0.779791,
		-0.154821, -0.833689, 0.530088,
		-0.866152, 0.372624, 0.333065,
		32.644642, 35.257812, 40.435062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654831, 34.453175, 40.269806>,  <33.250950, 34.996975, 40.201920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654831, 34.453175, 40.269806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482742, 34.809650, 40.212269>,  <32.379490, 35.023537, 40.177746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482742, 34.809650, 40.212269>,  <32.654831, 34.453175, 40.269806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482742, 34.809650, 40.212269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644134, -0.414699, -0.642741,
		-0.632456, -0.183866, 0.752458,
		-0.430222, 0.891189, -0.143844,
		32.353676, 35.077007, 40.169117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897997, 34.408329, 40.087807>,  <32.654831, 34.453175, 40.269806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897997, 34.408329, 40.087807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974308, 34.773960, 39.944664>,  <32.020096, 34.993340, 39.858780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974308, 34.773960, 39.944664>,  <31.897997, 34.408329, 40.087807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974308, 34.773960, 39.944664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499641, -0.223374, -0.836936,
		-0.844963, 0.338466, 0.414098,
		0.190776, 0.914081, -0.357854,
		32.031540, 35.048183, 39.837307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220856, 34.741936, 39.868210>,  <31.897997, 34.408329, 40.087807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220856, 34.741936, 39.868210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522001, 34.930141, 39.684116>,  <31.702688, 35.043064, 39.573658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522001, 34.930141, 39.684116>,  <31.220856, 34.741936, 39.868210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522001, 34.930141, 39.684116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401797, -0.225287, -0.887584,
		-0.521302, 0.853151, 0.019439,
		0.752863, 0.470510, -0.460236,
		31.747860, 35.071293, 39.546047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956152, 35.101852, 39.274418>,  <31.220856, 34.741936, 39.868210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956152, 35.101852, 39.274418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339300, 35.151165, 39.170662>,  <31.569189, 35.180752, 39.108406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339300, 35.151165, 39.170662>,  <30.956152, 35.101852, 39.274418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339300, 35.151165, 39.170662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235352, -0.180680, -0.954968,
		-0.164598, 0.975785, -0.144054,
		0.957871, 0.123283, -0.259393,
		31.626661, 35.188148, 39.092846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977167, 35.490379, 38.624062>,  <30.956152, 35.101852, 39.274418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977167, 35.490379, 38.624062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345568, 35.334560, 38.625057>,  <31.566608, 35.241070, 38.625656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345568, 35.334560, 38.625057>,  <30.977167, 35.490379, 38.624062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345568, 35.334560, 38.625057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043535, -0.109281, -0.993057,
		0.387117, 0.914499, -0.117607,
		0.921002, -0.389549, 0.002492,
		31.621868, 35.217697, 38.625805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220875, 35.831245, 38.095230>,  <30.977167, 35.490379, 38.624062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220875, 35.831245, 38.095230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403605, 35.483906, 38.172462>,  <31.513243, 35.275501, 38.218803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403605, 35.483906, 38.172462>,  <31.220875, 35.831245, 38.095230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403605, 35.483906, 38.172462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279158, -0.346029, -0.895731,
		0.844619, 0.355293, -0.400482,
		0.456826, -0.868349, 0.193080,
		31.540651, 35.223400, 38.230385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423935, 35.625412, 37.380604>,  <31.220875, 35.831245, 38.095230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423935, 35.625412, 37.380604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449295, 35.303844, 37.617142>,  <31.464510, 35.110905, 37.759064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449295, 35.303844, 37.617142>,  <31.423935, 35.625412, 37.380604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449295, 35.303844, 37.617142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097854, -0.594689, -0.797979,
		0.993180, -0.007275, -0.116369,
		0.063398, -0.803923, 0.591344,
		31.468315, 35.062668, 37.794544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764730, 35.085323, 36.984219>,  <31.423935, 35.625412, 37.380604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764730, 35.085323, 36.984219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558741, 34.893242, 37.268250>,  <31.435146, 34.777992, 37.438667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558741, 34.893242, 37.268250>,  <31.764730, 35.085323, 36.984219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558741, 34.893242, 37.268250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219779, -0.726706, -0.650842,
		0.828551, -0.491228, 0.268698,
		-0.514976, -0.480202, 0.710075,
		31.404247, 34.749180, 37.481274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758709, 34.397209, 36.681698>,  <31.764730, 35.085323, 36.984219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758709, 34.397209, 36.681698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476799, 34.392605, 36.965431>,  <31.307653, 34.389843, 37.135674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476799, 34.392605, 36.965431>,  <31.758709, 34.397209, 36.681698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476799, 34.392605, 36.965431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443699, -0.773028, -0.453386,
		0.553554, -0.634268, 0.539706,
		-0.704776, -0.011506, 0.709337,
		31.265366, 34.389153, 37.178234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704197, 33.799038, 36.916801>,  <31.758709, 34.397209, 36.681698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704197, 33.799038, 36.916801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349216, 33.947506, 37.026100>,  <31.136229, 34.036587, 37.091679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349216, 33.947506, 37.026100>,  <31.704197, 33.799038, 36.916801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349216, 33.947506, 37.026100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456120, -0.792451, -0.404939,
		0.066234, -0.483997, 0.872559,
		-0.887450, 0.371171, 0.273248,
		31.082981, 34.058857, 37.108074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287722, 33.269672, 37.232605>,  <31.704197, 33.799038, 36.916801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287722, 33.269672, 37.232605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012856, 33.532558, 37.108749>,  <30.847937, 33.690289, 37.034435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012856, 33.532558, 37.108749>,  <31.287722, 33.269672, 37.232605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012856, 33.532558, 37.108749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344105, -0.669800, -0.657997,
		-0.639839, -0.345604, 0.686413,
		-0.687166, 0.657210, -0.309640,
		30.806705, 33.729721, 37.015858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939486, 32.675995, 36.891396>,  <31.287722, 33.269672, 37.232605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939486, 32.675995, 36.891396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647520, 32.407337, 36.840603>,  <30.472342, 32.246143, 36.810127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647520, 32.407337, 36.840603>,  <30.939486, 32.675995, 36.891396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647520, 32.407337, 36.840603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351336, -0.527989, 0.773169,
		-0.586336, 0.519735, 0.621358,
		-0.729913, -0.671642, -0.126978,
		30.428547, 32.205845, 36.802509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479691, 32.487206, 37.482655>,  <30.939486, 32.675995, 36.891396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479691, 32.487206, 37.482655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512335, 32.182213, 37.225914>,  <30.531921, 31.999218, 37.071869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512335, 32.182213, 37.225914>,  <30.479691, 32.487206, 37.482655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512335, 32.182213, 37.225914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105750, -0.633735, 0.766288,
		-0.991038, -0.130413, 0.028913,
		0.081611, -0.762478, -0.641847,
		30.536818, 31.953470, 37.033360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160608, 31.939449, 37.746902>,  <30.479691, 32.487206, 37.482655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160608, 31.939449, 37.746902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445370, 31.804409, 37.500580>,  <30.616226, 31.723385, 37.352787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445370, 31.804409, 37.500580>,  <30.160608, 31.939449, 37.746902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445370, 31.804409, 37.500580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349872, -0.589809, 0.727816,
		-0.608929, -0.733584, -0.301763,
		0.711896, -0.337609, -0.615812,
		30.658941, 31.703129, 37.315838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073147, 31.206139, 37.987995>,  <30.160608, 31.939449, 37.746902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073147, 31.206139, 37.987995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413378, 31.354893, 37.839283>,  <30.617516, 31.444145, 37.750053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413378, 31.354893, 37.839283>,  <30.073147, 31.206139, 37.987995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413378, 31.354893, 37.839283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482209, -0.269594, 0.833543,
		0.209753, -0.888268, -0.408637,
		0.850575, 0.371887, -0.371782,
		30.668550, 31.466459, 37.727749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618801, 30.683989, 37.999649>,  <30.073147, 31.206139, 37.987995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618801, 30.683989, 37.999649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772406, 31.052832, 38.018623>,  <30.864569, 31.274137, 38.030010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772406, 31.052832, 38.018623>,  <30.618801, 30.683989, 37.999649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772406, 31.052832, 38.018623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501420, -0.251406, 0.827873,
		0.775316, -0.294124, -0.558906,
		0.384010, 0.922110, 0.047439,
		30.887608, 31.329464, 38.032856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331131, 30.556860, 37.947460>,  <30.618801, 30.683989, 37.999649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331131, 30.556860, 37.947460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207260, 30.877815, 38.151527>,  <31.132938, 31.070389, 38.273968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207260, 30.877815, 38.151527>,  <31.331131, 30.556860, 37.947460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207260, 30.877815, 38.151527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477048, -0.333018, 0.813341,
		0.822511, 0.495248, -0.279650,
		-0.309677, 0.802389, 0.510169,
		31.114357, 31.118532, 38.304577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907539, 30.811411, 38.338242>,  <31.331131, 30.556860, 37.947460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907539, 30.811411, 38.338242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593857, 30.948408, 38.545208>,  <31.405647, 31.030605, 38.669388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593857, 30.948408, 38.545208>,  <31.907539, 30.811411, 38.338242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593857, 30.948408, 38.545208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394881, -0.367759, 0.841916,
		0.478635, 0.864553, 0.153155,
		-0.784205, 0.342492, 0.517418,
		31.358595, 31.051155, 38.700432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177048, 30.995327, 38.936672>,  <31.907539, 30.811411, 38.338242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177048, 30.995327, 38.936672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790512, 30.929987, 39.016171>,  <31.558590, 30.890783, 39.063869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790512, 30.929987, 39.016171>,  <32.177048, 30.995327, 38.936672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790512, 30.929987, 39.016171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253994, -0.483143, 0.837890,
		-0.040850, 0.860168, 0.508372,
		-0.966343, -0.163352, 0.198741,
		31.500608, 30.880981, 39.075794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177250, 31.234688, 39.583706>,  <32.177048, 30.995327, 38.936672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177250, 31.234688, 39.583706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852375, 31.002928, 39.556454>,  <31.657450, 30.863871, 39.540104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852375, 31.002928, 39.556454>,  <32.177250, 31.234688, 39.583706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852375, 31.002928, 39.556454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041944, -0.174475, 0.983768,
		-0.581884, 0.796148, 0.166009,
		-0.812190, -0.579402, -0.068131,
		31.608719, 30.829107, 39.536015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880844, 31.358757, 40.176960>,  <32.177250, 31.234688, 39.583706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880844, 31.358757, 40.176960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749693, 31.003176, 40.049049>,  <31.671001, 30.789827, 39.972305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749693, 31.003176, 40.049049>,  <31.880844, 31.358757, 40.176960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749693, 31.003176, 40.049049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232186, -0.403932, 0.884833,
		-0.915743, 0.215872, 0.338843,
		-0.327880, -0.888954, -0.319775,
		31.651329, 30.736490, 39.953117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562035, 31.135326, 40.771679>,  <31.880844, 31.358757, 40.176960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562035, 31.135326, 40.771679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599499, 30.801432, 40.554630>,  <31.621977, 30.601095, 40.424400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599499, 30.801432, 40.554630>,  <31.562035, 31.135326, 40.771679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599499, 30.801432, 40.554630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303717, -0.495087, 0.814030,
		-0.948148, -0.241047, 0.207154,
		0.093660, -0.834736, -0.542626,
		31.627596, 30.551010, 40.391842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215427, 30.603249, 41.144455>,  <31.562035, 31.135326, 40.771679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215427, 30.603249, 41.144455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479397, 30.422428, 40.904404>,  <31.637777, 30.313936, 40.760372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479397, 30.422428, 40.904404>,  <31.215427, 30.603249, 41.144455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479397, 30.422428, 40.904404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409291, -0.453537, 0.791698,
		-0.630068, -0.768085, -0.114278,
		0.659920, -0.452050, -0.600129,
		31.677374, 30.286814, 40.724365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402542, 29.875441, 41.491196>,  <31.215427, 30.603249, 41.144455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402542, 29.875441, 41.491196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677774, 29.921591, 41.204636>,  <31.842915, 29.949282, 41.032700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677774, 29.921591, 41.204636>,  <31.402542, 29.875441, 41.491196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677774, 29.921591, 41.204636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687441, -0.419725, 0.592669,
		-0.232311, -0.900288, -0.368121,
		0.688082, 0.115378, -0.716402,
		31.884199, 29.956203, 40.989716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583101, 29.191967, 41.347015>,  <31.402542, 29.875441, 41.491196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583101, 29.191967, 41.347015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878002, 29.447552, 41.259205>,  <32.054943, 29.600903, 41.206520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878002, 29.447552, 41.259205>,  <31.583101, 29.191967, 41.347015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878002, 29.447552, 41.259205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574703, -0.422272, 0.701001,
		0.355214, -0.642974, -0.678533,
		0.737251, 0.638961, -0.219521,
		32.099178, 29.639240, 41.193348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233879, 28.807526, 41.464813>,  <31.583101, 29.191967, 41.347015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233879, 28.807526, 41.464813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353420, 29.189228, 41.461174>,  <32.425144, 29.418249, 41.458988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353420, 29.189228, 41.461174>,  <32.233879, 28.807526, 41.464813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353420, 29.189228, 41.461174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653487, -0.197691, 0.730666,
		0.695442, -0.224311, -0.682675,
		0.298855, 0.954255, -0.009102,
		32.443077, 29.475504, 41.458443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846043, 28.759125, 41.524429>,  <32.233879, 28.807526, 41.464813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846043, 28.759125, 41.524429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824310, 29.149014, 41.611115>,  <32.811272, 29.382946, 41.663128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824310, 29.149014, 41.611115>,  <32.846043, 28.759125, 41.524429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824310, 29.149014, 41.611115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822533, -0.079364, 0.563152,
		0.566116, 0.208851, -0.797430,
		-0.054328, 0.974722, 0.216716,
		32.808014, 29.441429, 41.676128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623142, 28.960920, 41.499855>,  <32.846043, 28.759125, 41.524429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623142, 28.960920, 41.499855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386555, 29.212803, 41.701302>,  <33.244602, 29.363932, 41.822170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386555, 29.212803, 41.701302>,  <33.623142, 28.960920, 41.499855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386555, 29.212803, 41.701302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731920, 0.157233, 0.663001,
		0.338310, 0.760756, -0.553893,
		-0.591472, 0.629705, 0.503619,
		33.209114, 29.401714, 41.852386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997585, 29.539526, 41.641224>,  <33.623142, 28.960920, 41.499855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997585, 29.539526, 41.641224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717396, 29.578644, 41.924004>,  <33.549282, 29.602116, 42.093670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717396, 29.578644, 41.924004>,  <33.997585, 29.539526, 41.641224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717396, 29.578644, 41.924004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713404, 0.123581, 0.689770,
		-0.019908, 0.987504, -0.156333,
		-0.700470, 0.097796, 0.706949,
		33.507256, 29.607983, 42.136089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164490, 30.166239, 41.986740>,  <33.997585, 29.539526, 41.641224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164490, 30.166239, 41.986740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937141, 29.939098, 42.224899>,  <33.800732, 29.802814, 42.367794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937141, 29.939098, 42.224899>,  <34.164490, 30.166239, 41.986740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937141, 29.939098, 42.224899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609104, 0.196094, 0.768466,
		-0.553129, 0.799432, 0.234427,
		-0.568367, -0.567851, 0.595403,
		33.766632, 29.768744, 42.403519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972221, 30.487688, 42.543152>,  <34.164490, 30.166239, 41.986740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972221, 30.487688, 42.543152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919498, 30.116756, 42.683258>,  <33.887867, 29.894197, 42.767323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919498, 30.116756, 42.683258>,  <33.972221, 30.487688, 42.543152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919498, 30.116756, 42.683258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442848, 0.261044, 0.857754,
		-0.886855, 0.268172, 0.376259,
		-0.131806, -0.927329, 0.350268,
		33.879955, 29.838558, 42.788338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806366, 30.633181, 43.237316>,  <33.972221, 30.487688, 42.543152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806366, 30.633181, 43.237316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896255, 30.243418, 43.239582>,  <33.950188, 30.009560, 43.240940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896255, 30.243418, 43.239582>,  <33.806366, 30.633181, 43.237316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896255, 30.243418, 43.239582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616931, 0.146776, 0.773210,
		-0.754251, -0.170265, 0.634125,
		0.224725, -0.974406, 0.005664,
		33.963673, 29.951096, 43.241280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504524, 30.326029, 43.881531>,  <33.806366, 30.633181, 43.237316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504524, 30.326029, 43.881531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807022, 30.105093, 43.741241>,  <33.988522, 29.972530, 43.657070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807022, 30.105093, 43.741241>,  <33.504524, 30.326029, 43.881531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807022, 30.105093, 43.741241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437156, 0.027728, 0.898958,
		-0.486807, -0.833156, 0.262430,
		0.756249, -0.552342, -0.350721,
		34.033897, 29.939390, 43.636024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687866, 29.872566, 44.398212>,  <33.504524, 30.326029, 43.881531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687866, 29.872566, 44.398212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009411, 29.863710, 44.160450>,  <34.202335, 29.858397, 44.017792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009411, 29.863710, 44.160450>,  <33.687866, 29.872566, 44.398212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009411, 29.863710, 44.160450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593779, 0.088947, 0.799697,
		0.035163, -0.995790, 0.084649,
		0.803859, -0.022143, -0.594407,
		34.250568, 29.857067, 43.982128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156490, 29.433147, 44.635117>,  <33.687866, 29.872566, 44.398212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156490, 29.433147, 44.635117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416779, 29.645655, 44.418114>,  <34.572952, 29.773159, 44.287914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416779, 29.645655, 44.418114>,  <34.156490, 29.433147, 44.635117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416779, 29.645655, 44.418114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560713, 0.145561, 0.815115,
		0.512013, -0.834604, -0.203170,
		0.650725, 0.531270, -0.542503,
		34.611996, 29.805037, 44.255363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875015, 29.205173, 44.970387>,  <34.156490, 29.433147, 44.635117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875015, 29.205173, 44.970387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978264, 29.518604, 44.744331>,  <35.040215, 29.706663, 44.608700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978264, 29.518604, 44.744331>,  <34.875015, 29.205173, 44.970387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978264, 29.518604, 44.744331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726121, 0.228506, 0.648485,
		0.637276, -0.577745, -0.509991,
		0.258123, 0.783579, -0.565134,
		35.055702, 29.753677, 44.574791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568222, 29.205994, 44.862404>,  <34.875015, 29.205173, 44.970387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568222, 29.205994, 44.862404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487171, 29.591349, 44.792168>,  <35.438541, 29.822561, 44.750027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487171, 29.591349, 44.792168>,  <35.568222, 29.205994, 44.862404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487171, 29.591349, 44.792168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676504, 0.267354, 0.686195,
		0.708014, 0.020257, -0.705908,
		-0.202628, 0.963385, -0.175587,
		35.426384, 29.880363, 44.739491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293411, 29.586704, 44.862617>,  <35.568222, 29.205994, 44.862404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293411, 29.586704, 44.862617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979733, 29.823008, 44.938545>,  <35.791523, 29.964790, 44.984100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979733, 29.823008, 44.938545>,  <36.293411, 29.586704, 44.862617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979733, 29.823008, 44.938545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478497, 0.380974, 0.791138,
		0.395055, 0.711240, -0.581437,
		-0.784202, 0.590759, 0.189820,
		35.744473, 30.000235, 44.995491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647205, 30.194908, 45.033932>,  <36.293411, 29.586704, 44.862617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647205, 30.194908, 45.033932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281441, 30.204004, 45.195595>,  <36.061981, 30.209461, 45.292591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281441, 30.204004, 45.195595>,  <36.647205, 30.194908, 45.033932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281441, 30.204004, 45.195595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388587, 0.329006, 0.860672,
		-0.113399, 0.944054, -0.309681,
		-0.914407, 0.022739, 0.404156,
		36.007118, 30.210827, 45.316841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688541, 30.861811, 45.298977>,  <36.647205, 30.194908, 45.033932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688541, 30.861811, 45.298977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412430, 30.651672, 45.497982>,  <36.246761, 30.525589, 45.617386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412430, 30.651672, 45.497982>,  <36.688541, 30.861811, 45.298977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412430, 30.651672, 45.497982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418216, 0.271412, 0.866851,
		-0.590429, 0.806440, 0.032358,
		-0.690282, -0.525347, 0.497516,
		36.205345, 30.494068, 45.647236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044922, 31.482897, 45.199089>,  <36.688541, 30.861811, 45.298977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044922, 31.482897, 45.199089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416553, 31.480825, 45.051151>,  <37.639534, 31.479582, 44.962391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416553, 31.480825, 45.051151>,  <37.044922, 31.482897, 45.199089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416553, 31.480825, 45.051151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367621, -0.123229, -0.921775,
		-0.040802, 0.992365, -0.116393,
		0.929080, -0.005178, -0.369842,
		37.695278, 31.479273, 44.940197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981892, 31.836840, 44.556732>,  <37.044922, 31.482897, 45.199089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981892, 31.836840, 44.556732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320713, 31.630453, 44.505699>,  <37.524006, 31.506620, 44.475079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320713, 31.630453, 44.505699>,  <36.981892, 31.836840, 44.556732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320713, 31.630453, 44.505699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178016, -0.049226, -0.982795,
		0.500809, 0.855193, -0.133547,
		0.847054, -0.515966, -0.127586,
		37.574829, 31.475664, 44.467422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173588, 32.082008, 43.986565>,  <36.981892, 31.836840, 44.556732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173588, 32.082008, 43.986565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395821, 31.749466, 43.981342>,  <37.529160, 31.549940, 43.978210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395821, 31.749466, 43.981342>,  <37.173588, 32.082008, 43.986565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395821, 31.749466, 43.981342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263569, -0.161204, -0.951076,
		0.788581, 0.531842, -0.308682,
		0.555583, -0.831359, -0.013055,
		37.562496, 31.500059, 43.977425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650158, 32.137714, 43.384968>,  <37.173588, 32.082008, 43.986565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650158, 32.137714, 43.384968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614315, 31.750551, 43.478886>,  <37.592808, 31.518253, 43.535236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614315, 31.750551, 43.478886>,  <37.650158, 32.137714, 43.384968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614315, 31.750551, 43.478886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382876, -0.184151, -0.905259,
		0.919444, -0.171013, -0.354087,
		-0.089606, -0.967906, 0.234793,
		37.587433, 31.460178, 43.549324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856758, 31.789770, 42.865932>,  <37.650158, 32.137714, 43.384968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856758, 31.789770, 42.865932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638088, 31.508606, 43.047951>,  <37.506886, 31.339907, 43.157162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638088, 31.508606, 43.047951>,  <37.856758, 31.789770, 42.865932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638088, 31.508606, 43.047951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307885, -0.336635, -0.889878,
		0.778689, -0.626573, -0.032386,
		-0.546672, -0.702910, 0.455047,
		37.474087, 31.297733, 43.184464>
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
