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
	<24.538548, 35.077629, 35.282070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402018, 34.971165, 34.921482>,  <24.320099, 34.907288, 34.705128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402018, 34.971165, 34.921482>,  <24.538548, 35.077629, 35.282070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.402018, 34.971165, 34.921482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900397, 0.182688, -0.394856,
		0.269784, -0.946458, 0.177295,
		-0.341325, -0.266162, -0.901474,
		24.299620, 34.891315, 34.651039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015377, 34.573147, 34.976974>,  <24.538548, 35.077629, 35.282070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015377, 34.573147, 34.976974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810650, 34.762196, 34.690010>,  <24.687813, 34.875626, 34.517834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810650, 34.762196, 34.690010>,  <25.015377, 34.573147, 34.976974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810650, 34.762196, 34.690010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839496, 0.452494, -0.300825,
		0.182447, -0.756229, -0.628356,
		-0.511820, 0.472618, -0.717407,
		24.657104, 34.903980, 34.474789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440826, 34.605835, 34.302475>,  <25.015377, 34.573147, 34.976974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440826, 34.605835, 34.302475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205669, 34.917263, 34.214653>,  <25.064575, 35.104122, 34.161961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205669, 34.917263, 34.214653>,  <25.440826, 34.605835, 34.302475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205669, 34.917263, 34.214653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728209, 0.391170, -0.562759,
		-0.352266, -0.490724, -0.796931,
		-0.587894, 0.778574, -0.219554,
		25.029301, 35.150837, 34.148788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366327, 34.827782, 33.613346>,  <25.440826, 34.605835, 34.302475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366327, 34.827782, 33.613346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344757, 35.146996, 33.853424>,  <25.331814, 35.338524, 33.997471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344757, 35.146996, 33.853424>,  <25.366327, 34.827782, 33.613346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344757, 35.146996, 33.853424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973712, 0.175242, -0.145517,
		-0.221307, 0.576573, -0.786503,
		-0.053927, 0.798031, 0.600198,
		25.328579, 35.386406, 34.033485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551386, 35.483841, 33.311390>,  <25.366327, 34.827782, 33.613346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551386, 35.483841, 33.311390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625990, 35.580997, 33.692173>,  <25.670753, 35.639294, 33.920643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625990, 35.580997, 33.692173>,  <25.551386, 35.483841, 33.311390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625990, 35.580997, 33.692173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976850, 0.057484, -0.206057,
		-0.104772, 0.968348, -0.226551,
		0.186512, 0.242896, 0.951953,
		25.681944, 35.653866, 33.977760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871983, 36.125843, 33.421700>,  <25.551386, 35.483841, 33.311390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871983, 36.125843, 33.421700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981237, 35.862106, 33.701889>,  <26.046791, 35.703865, 33.870003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981237, 35.862106, 33.701889>,  <25.871983, 36.125843, 33.421700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981237, 35.862106, 33.701889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927313, -0.013240, -0.374053,
		0.255902, 0.751729, 0.607797,
		0.273139, -0.659339, 0.700476,
		26.063179, 35.664303, 33.912033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496952, 36.354042, 33.866081>,  <25.871983, 36.125843, 33.421700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496952, 36.354042, 33.866081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466619, 35.956318, 33.836147>,  <26.448420, 35.717682, 33.818188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466619, 35.956318, 33.836147>,  <26.496952, 36.354042, 33.866081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466619, 35.956318, 33.836147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989756, -0.065956, -0.126621,
		0.120965, -0.083666, 0.989125,
		-0.075832, -0.994309, -0.074830,
		26.443871, 35.658024, 33.813698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041925, 36.038025, 34.339790>,  <26.496952, 36.354042, 33.866081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041925, 36.038025, 34.339790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950346, 35.761803, 34.065357>,  <26.895399, 35.596069, 33.900696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950346, 35.761803, 34.065357>,  <27.041925, 36.038025, 34.339790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950346, 35.761803, 34.065357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961130, -0.272087, -0.046871,
		-0.154308, -0.670149, 0.726009,
		-0.228948, -0.690556, -0.686086,
		26.881662, 35.554634, 33.859531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110760, 35.406040, 34.524967>,  <27.041925, 36.038025, 34.339790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110760, 35.406040, 34.524967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160179, 35.377178, 34.129082>,  <27.189831, 35.359859, 33.891552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160179, 35.377178, 34.129082>,  <27.110760, 35.406040, 34.524967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160179, 35.377178, 34.129082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926478, -0.348901, 0.141091,
		-0.355492, -0.934378, 0.023744,
		0.123548, -0.072155, -0.989712,
		27.197243, 35.355534, 33.832169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456217, 34.837746, 34.387177>,  <27.110760, 35.406040, 34.524967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456217, 34.837746, 34.387177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529102, 35.050571, 34.056431>,  <27.572834, 35.178268, 33.857983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529102, 35.050571, 34.056431>,  <27.456217, 34.837746, 34.387177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529102, 35.050571, 34.056431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961826, -0.271077, 0.037526,
		-0.204177, -0.802137, -0.561148,
		0.182216, 0.532065, -0.826864,
		27.583767, 35.210190, 33.808372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838871, 34.392063, 33.998135>,  <27.456217, 34.837746, 34.387177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838871, 34.392063, 33.998135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909077, 34.763485, 33.867306>,  <27.951200, 34.986340, 33.788811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909077, 34.763485, 33.867306>,  <27.838871, 34.392063, 33.998135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909077, 34.763485, 33.867306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949491, -0.247443, -0.192973,
		-0.260117, -0.276678, -0.925088,
		0.175515, 0.928559, -0.327067,
		27.961731, 35.042053, 33.769184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399897, 34.323017, 33.607491>,  <27.838871, 34.392063, 33.998135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399897, 34.323017, 33.607491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389771, 34.716221, 33.680210>,  <28.383696, 34.952145, 33.723843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389771, 34.716221, 33.680210>,  <28.399897, 34.323017, 33.607491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389771, 34.716221, 33.680210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993737, 0.044544, -0.102482,
		-0.108839, 0.178063, -0.977981,
		-0.025315, 0.983010, 0.181796,
		28.382175, 35.011124, 33.734749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045614, 34.766987, 33.684612>,  <28.399897, 34.323017, 33.607491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045614, 34.766987, 33.684612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022638, 35.058552, 33.411736>,  <29.008852, 35.233490, 33.248009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022638, 35.058552, 33.411736>,  <29.045614, 34.766987, 33.684612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022638, 35.058552, 33.411736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933703, 0.202669, 0.295169,
		0.353412, 0.653917, 0.668949,
		-0.057441, 0.728915, -0.682190,
		29.005405, 35.277225, 33.207077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804884, 35.437561, 33.978237>,  <29.045614, 34.766987, 33.684612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804884, 35.437561, 33.978237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715038, 35.457096, 33.588947>,  <28.661131, 35.468815, 33.355373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715038, 35.457096, 33.588947>,  <28.804884, 35.437561, 33.978237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715038, 35.457096, 33.588947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943048, 0.240599, 0.229722,
		0.245375, 0.969395, -0.007990,
		-0.224614, 0.048833, -0.973224,
		28.647654, 35.471745, 33.296982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617588, 36.176022, 33.739021>,  <28.804884, 35.437561, 33.978237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617588, 36.176022, 33.739021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492167, 35.824318, 33.595581>,  <28.416914, 35.613297, 33.509518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492167, 35.824318, 33.595581>,  <28.617588, 36.176022, 33.739021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492167, 35.824318, 33.595581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945933, 0.256197, 0.198932,
		-0.083041, 0.401583, -0.912050,
		-0.313552, -0.879258, -0.358596,
		28.398102, 35.560539, 33.488003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073687, 36.208672, 33.197708>,  <28.617588, 36.176022, 33.739021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073687, 36.208672, 33.197708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045298, 35.862167, 33.395519>,  <28.028265, 35.654266, 33.514206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045298, 35.862167, 33.395519>,  <28.073687, 36.208672, 33.197708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045298, 35.862167, 33.395519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993472, 0.105776, 0.042709,
		-0.089306, -0.488265, -0.868114,
		-0.070973, -0.866261, 0.494524,
		28.024006, 35.602287, 33.543877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810780, 35.728382, 32.678497>,  <28.073687, 36.208672, 33.197708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810780, 35.728382, 32.678497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724611, 35.560719, 33.031292>,  <27.672911, 35.460121, 33.242970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724611, 35.560719, 33.031292>,  <27.810780, 35.728382, 32.678497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724611, 35.560719, 33.031292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976499, 0.098526, -0.191682,
		-0.006554, -0.902553, -0.430529,
		-0.215421, -0.419155, 0.881988,
		27.659985, 35.434971, 33.295887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237749, 35.235569, 32.540337>,  <27.810780, 35.728382, 32.678497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237749, 35.235569, 32.540337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236359, 35.301464, 32.934868>,  <27.235523, 35.341000, 33.171589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236359, 35.301464, 32.934868>,  <27.237749, 35.235569, 32.540337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236359, 35.301464, 32.934868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999089, 0.041375, -0.010433,
		-0.042528, -0.985469, 0.164445,
		-0.003478, 0.164739, 0.986331,
		27.235315, 35.350887, 33.230766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615396, 34.946568, 32.806526>,  <27.237749, 35.235569, 32.540337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615396, 34.946568, 32.806526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734671, 35.238995, 33.052006>,  <26.806234, 35.414452, 33.199295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734671, 35.238995, 33.052006>,  <26.615396, 34.946568, 32.806526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734671, 35.238995, 33.052006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932840, 0.359417, 0.025095,
		-0.202229, -0.579969, 0.789139,
		0.298184, 0.731065, 0.613702,
		26.824125, 35.458313, 33.236115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308022, 35.578468, 32.986053>,  <26.615396, 34.946568, 32.806526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308022, 35.578468, 32.986053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493086, 35.931717, 33.017128>,  <26.604124, 36.143665, 33.035774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493086, 35.931717, 33.017128>,  <26.308022, 35.578468, 32.986053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493086, 35.931717, 33.017128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673256, -0.292994, -0.678882,
		-0.576775, 0.366398, -0.730126,
		0.462663, 0.883124, 0.077688,
		26.631886, 36.196655, 33.040436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384148, 35.994335, 32.456478>,  <26.308022, 35.578468, 32.986053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384148, 35.994335, 32.456478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715620, 36.025452, 32.678196>,  <26.914503, 36.044121, 32.811226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715620, 36.025452, 32.678196>,  <26.384148, 35.994335, 32.456478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715620, 36.025452, 32.678196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485050, -0.593988, -0.641798,
		0.279315, 0.800704, -0.529959,
		0.828679, 0.077793, 0.554291,
		26.964224, 36.048790, 32.844482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124048, 36.675686, 32.685551>,  <26.384148, 35.994335, 32.456478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124048, 36.675686, 32.685551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472502, 36.864479, 32.739738>,  <26.681574, 36.977757, 32.772251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472502, 36.864479, 32.739738>,  <26.124048, 36.675686, 32.685551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472502, 36.864479, 32.739738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489486, -0.812726, -0.316039,
		-0.039064, 0.341625, -0.939024,
		0.871136, 0.471985, 0.135473,
		26.733843, 37.006073, 32.780380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559118, 36.671326, 32.072178>,  <26.124048, 36.675686, 32.685551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559118, 36.671326, 32.072178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776018, 36.693165, 32.407555>,  <26.906158, 36.706268, 32.608780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776018, 36.693165, 32.407555>,  <26.559118, 36.671326, 32.072178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776018, 36.693165, 32.407555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673395, -0.625032, -0.394808,
		0.502499, 0.778687, -0.375687,
		0.542248, 0.054595, 0.838443,
		26.938692, 36.709545, 32.659088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319170, 36.765617, 32.056122>,  <26.559118, 36.671326, 32.072178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319170, 36.765617, 32.056122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448301, 36.633503, 31.701340>,  <27.525780, 36.554234, 31.488470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448301, 36.633503, 31.701340>,  <27.319170, 36.765617, 32.056122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448301, 36.633503, 31.701340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791795, 0.607641, 0.061921,
		0.518500, -0.722278, 0.457682,
		0.322830, -0.330284, -0.886957,
		27.545151, 36.534416, 31.435253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031633, 36.589886, 32.052212>,  <27.319170, 36.765617, 32.056122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031633, 36.589886, 32.052212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930645, 36.679043, 31.675579>,  <27.870052, 36.732536, 31.449598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930645, 36.679043, 31.675579>,  <28.031633, 36.589886, 32.052212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930645, 36.679043, 31.675579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691666, 0.722071, -0.014530,
		0.676651, -0.654929, -0.336468,
		-0.252470, 0.222892, -0.941583,
		27.854904, 36.745911, 31.393105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671906, 36.560318, 31.544657>,  <28.031633, 36.589886, 32.052212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671906, 36.560318, 31.544657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400682, 36.806725, 31.384274>,  <28.237949, 36.954567, 31.288044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400682, 36.806725, 31.384274>,  <28.671906, 36.560318, 31.544657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400682, 36.806725, 31.384274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715230, 0.678687, -0.166820,
		0.169361, -0.399890, -0.900780,
		-0.678058, 0.616013, -0.400957,
		28.197266, 36.991528, 31.263987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958675, 36.813332, 30.930813>,  <28.671906, 36.560318, 31.544657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958675, 36.813332, 30.930813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680969, 37.060745, 31.078007>,  <28.514345, 37.209194, 31.166323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680969, 37.060745, 31.078007>,  <28.958675, 36.813332, 30.930813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680969, 37.060745, 31.078007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628724, 0.770067, -0.108183,
		-0.350287, 0.156252, -0.923517,
		-0.694266, 0.618532, 0.367984,
		28.472689, 37.246304, 31.188402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709349, 37.426975, 30.454222>,  <28.958675, 36.813332, 30.930813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709349, 37.426975, 30.454222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709682, 37.501713, 30.847178>,  <28.709883, 37.546555, 31.082951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709682, 37.501713, 30.847178>,  <28.709349, 37.426975, 30.454222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709682, 37.501713, 30.847178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591508, 0.792008, -0.151134,
		-0.806299, 0.581218, -0.109855,
		0.000836, 0.186839, 0.982390,
		28.709932, 37.557766, 31.141895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610722, 38.140491, 30.730251>,  <28.709349, 37.426975, 30.454222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610722, 38.140491, 30.730251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825878, 37.971390, 31.021992>,  <28.954971, 37.869930, 31.197037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825878, 37.971390, 31.021992>,  <28.610722, 38.140491, 30.730251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825878, 37.971390, 31.021992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628669, 0.777565, -0.012943,
		-0.561648, 0.465483, 0.684015,
		0.537891, -0.422750, 0.729353,
		28.987246, 37.844566, 31.240797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697763, 38.580204, 31.394817>,  <28.610722, 38.140491, 30.730251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697763, 38.580204, 31.394817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007143, 38.336548, 31.324701>,  <29.192770, 38.190353, 31.282631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007143, 38.336548, 31.324701>,  <28.697763, 38.580204, 31.394817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007143, 38.336548, 31.324701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609974, 0.790476, -0.055489,
		0.172363, -0.064004, 0.982952,
		0.773449, -0.609139, -0.175290,
		29.239178, 38.153805, 31.272114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311890, 38.746262, 31.833176>,  <28.697763, 38.580204, 31.394817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311890, 38.746262, 31.833176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446899, 38.624939, 31.476730>,  <29.527906, 38.552147, 31.262863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446899, 38.624939, 31.476730>,  <29.311890, 38.746262, 31.833176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446899, 38.624939, 31.476730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721397, 0.691484, 0.037886,
		0.604700, -0.655635, 0.452196,
		0.337526, -0.303303, -0.891114,
		29.548157, 38.533947, 31.209396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969776, 38.424385, 32.016335>,  <29.311890, 38.746262, 31.833176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969776, 38.424385, 32.016335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929541, 38.605030, 31.661726>,  <29.905399, 38.713417, 31.448959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929541, 38.605030, 31.661726>,  <29.969776, 38.424385, 32.016335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929541, 38.605030, 31.661726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682478, 0.679682, 0.268807,
		0.723952, -0.577994, -0.376585,
		-0.100589, 0.451614, -0.886525,
		29.899364, 38.740513, 31.395769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468178, 38.815491, 32.076096>,  <29.969776, 38.424385, 32.016335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468178, 38.815491, 32.076096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288843, 38.958370, 31.748337>,  <30.181242, 39.044098, 31.551682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288843, 38.958370, 31.748337>,  <30.468178, 38.815491, 32.076096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288843, 38.958370, 31.748337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523298, 0.848062, 0.083366,
		0.724675, -0.391411, -0.567136,
		-0.448336, 0.357194, -0.819394,
		30.154343, 39.065529, 31.502518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975338, 39.049351, 31.614395>,  <30.468178, 38.815491, 32.076096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975338, 39.049351, 31.614395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645077, 39.252506, 31.516136>,  <30.446920, 39.374401, 31.457182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645077, 39.252506, 31.516136>,  <30.975338, 39.049351, 31.614395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645077, 39.252506, 31.516136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535859, 0.842185, -0.059828,
		0.176493, -0.181028, -0.967512,
		-0.825655, 0.507890, -0.245645,
		30.397381, 39.404873, 31.442442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152809, 39.490349, 31.067415>,  <30.975338, 39.049351, 31.614395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152809, 39.490349, 31.067415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851082, 39.626774, 31.291800>,  <30.670046, 39.708630, 31.426430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851082, 39.626774, 31.291800>,  <31.152809, 39.490349, 31.067415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851082, 39.626774, 31.291800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486381, 0.864233, 0.128585,
		-0.440947, 0.369836, -0.817794,
		-0.754320, 0.341061, 0.560962,
		30.624786, 39.729092, 31.460089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799372, 39.816185, 30.488483>,  <31.152809, 39.490349, 31.067415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799372, 39.816185, 30.488483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486122, 39.929638, 30.709850>,  <30.298172, 39.997707, 30.842670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486122, 39.929638, 30.709850>,  <30.799372, 39.816185, 30.488483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486122, 39.929638, 30.709850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435708, 0.885229, 0.162873,
		-0.443708, 0.368679, -0.816823,
		-0.783123, 0.283629, 0.553419,
		30.251184, 40.014725, 30.875875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427019, 40.446426, 30.185261>,  <30.799372, 39.816185, 30.488483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427019, 40.446426, 30.185261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335939, 40.433502, 30.574539>,  <30.281292, 40.425747, 30.808105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335939, 40.433502, 30.574539>,  <30.427019, 40.446426, 30.185261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335939, 40.433502, 30.574539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281330, 0.954643, 0.097521,
		-0.932205, 0.295994, -0.208283,
		-0.227702, -0.032313, 0.973195,
		30.267630, 40.423809, 30.866497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909702, 41.033188, 30.367628>,  <30.427019, 40.446426, 30.185261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909702, 41.033188, 30.367628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141302, 40.919590, 30.673336>,  <30.280262, 40.851433, 30.856760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141302, 40.919590, 30.673336>,  <29.909702, 41.033188, 30.367628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141302, 40.919590, 30.673336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307702, 0.944171, 0.117728,
		-0.755035, 0.167002, 0.634061,
		0.579001, -0.283991, 0.764269,
		30.315002, 40.834393, 30.902617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706951, 41.413452, 30.860893>,  <29.909702, 41.033188, 30.367628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706951, 41.413452, 30.860893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089262, 41.299637, 30.890623>,  <30.318649, 41.231346, 30.908461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089262, 41.299637, 30.890623>,  <29.706951, 41.413452, 30.860893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089262, 41.299637, 30.890623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281752, 0.958390, 0.045882,
		-0.084288, -0.022912, 0.996178,
		0.955778, -0.284542, 0.074325,
		30.375996, 41.214275, 30.912920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108164, 42.105938, 31.231512>,  <29.706951, 41.413452, 30.860893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108164, 42.105938, 31.231512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484406, 42.164673, 31.353956>,  <30.710150, 42.199913, 31.427423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484406, 42.164673, 31.353956>,  <30.108164, 42.105938, 31.231512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484406, 42.164673, 31.353956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213039, -0.957304, -0.195405,
		0.264349, 0.249012, -0.931726,
		0.940603, 0.146839, 0.306111,
		30.766586, 42.208725, 31.445789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758377, 41.859085, 30.738564>,  <30.108164, 42.105938, 31.231512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758377, 41.859085, 30.738564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821325, 41.846897, 31.133392>,  <30.859095, 41.839584, 31.370289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821325, 41.846897, 31.133392>,  <30.758377, 41.859085, 30.738564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821325, 41.846897, 31.133392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103431, -0.993518, -0.047162,
		0.982109, 0.109515, -0.153197,
		0.157369, -0.030473, 0.987070,
		30.868536, 41.837753, 31.429514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335091, 41.442654, 30.963280>,  <30.758377, 41.859085, 30.738564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335091, 41.442654, 30.963280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027391, 41.438274, 31.218821>,  <30.842772, 41.435646, 31.372147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027391, 41.438274, 31.218821>,  <31.335091, 41.442654, 30.963280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027391, 41.438274, 31.218821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052369, -0.997570, 0.045965,
		0.636799, 0.068815, 0.767953,
		-0.769250, -0.010946, 0.638855,
		30.796616, 41.434990, 31.410477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451399, 40.819145, 31.418688>,  <31.335091, 41.442654, 30.963280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451399, 40.819145, 31.418688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067482, 40.929840, 31.399872>,  <30.837132, 40.996258, 31.388582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067482, 40.929840, 31.399872>,  <31.451399, 40.819145, 31.418688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067482, 40.929840, 31.399872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277351, -0.960743, 0.006999,
		-0.043256, 0.019764, 0.998869,
		-0.959795, 0.276735, -0.047039,
		30.779543, 41.012859, 31.385759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005222, 40.529919, 31.952879>,  <31.451399, 40.819145, 31.418688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005222, 40.529919, 31.952879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757816, 40.621181, 31.652111>,  <30.609373, 40.675938, 31.471649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757816, 40.621181, 31.652111>,  <31.005222, 40.529919, 31.952879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757816, 40.621181, 31.652111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312691, -0.949354, -0.030846,
		-0.720877, 0.216040, 0.658531,
		-0.618515, 0.228152, -0.751921,
		30.572262, 40.689629, 31.426535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466612, 40.166355, 32.130371>,  <31.005222, 40.529919, 31.952879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466612, 40.166355, 32.130371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360437, 40.279926, 31.761820>,  <30.296732, 40.348068, 31.540689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360437, 40.279926, 31.761820>,  <30.466612, 40.166355, 32.130371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360437, 40.279926, 31.761820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461106, -0.876657, -0.137309,
		-0.846714, 0.388404, 0.363617,
		-0.265436, 0.283927, -0.921373,
		30.280807, 40.365105, 31.485407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622370, 40.123245, 31.936468>,  <30.466612, 40.166355, 32.130371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622370, 40.123245, 31.936468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886377, 40.056648, 31.643440>,  <30.044781, 40.016689, 31.467625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886377, 40.056648, 31.643440>,  <29.622370, 40.123245, 31.936468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886377, 40.056648, 31.643440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381595, -0.914267, -0.136016,
		-0.647118, 0.369317, -0.666966,
		0.660018, -0.166493, -0.732568,
		30.084383, 40.006699, 31.423670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307909, 39.949539, 31.238480>,  <29.622370, 40.123245, 31.936468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307909, 39.949539, 31.238480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665487, 39.772289, 31.265305>,  <29.880035, 39.665939, 31.281401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665487, 39.772289, 31.265305>,  <29.307909, 39.949539, 31.238480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665487, 39.772289, 31.265305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394428, -0.848942, -0.351745,
		0.212800, 0.287990, -0.933691,
		0.893948, -0.443125, 0.067064,
		29.933672, 39.639351, 31.285423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464258, 39.690331, 30.569742>,  <29.307909, 39.949539, 31.238480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464258, 39.690331, 30.569742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675419, 39.511440, 30.858547>,  <29.802116, 39.404106, 31.031830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675419, 39.511440, 30.858547>,  <29.464258, 39.690331, 30.569742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675419, 39.511440, 30.858547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375597, -0.885409, -0.273820,
		0.761738, -0.126635, -0.635389,
		0.527904, -0.447229, 0.722013,
		29.833790, 39.377270, 31.075151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836332, 39.272091, 30.190739>,  <29.464258, 39.690331, 30.569742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836332, 39.272091, 30.190739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807064, 39.139191, 30.566877>,  <29.789503, 39.059452, 30.792561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807064, 39.139191, 30.566877>,  <29.836332, 39.272091, 30.190739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807064, 39.139191, 30.566877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299213, -0.892128, -0.338495,
		0.951377, -0.306133, -0.034135,
		-0.073172, -0.332249, 0.940349,
		29.785112, 39.039516, 30.848982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199026, 38.670918, 30.329046>,  <29.836332, 39.272091, 30.190739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199026, 38.670918, 30.329046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859032, 38.691307, 30.538778>,  <29.655035, 38.703541, 30.664618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859032, 38.691307, 30.538778>,  <30.199026, 38.670918, 30.329046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859032, 38.691307, 30.538778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285613, -0.880924, -0.377356,
		0.442659, -0.470503, 0.763335,
		-0.849987, 0.050978, 0.524331,
		29.604036, 38.706600, 30.696077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949371, 38.061188, 30.665243>,  <30.199026, 38.670918, 30.329046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949371, 38.061188, 30.665243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594707, 38.245224, 30.646681>,  <29.381910, 38.355644, 30.635544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594707, 38.245224, 30.646681>,  <29.949371, 38.061188, 30.665243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594707, 38.245224, 30.646681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436121, -0.865363, -0.246873,
		-0.153741, -0.198654, 0.967936,
		-0.886658, 0.460091, -0.046405,
		29.328711, 38.383251, 30.632759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048693, 38.100140, 29.924391>,  <29.949371, 38.061188, 30.665243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048693, 38.100140, 29.924391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390148, 38.292061, 30.005478>,  <30.595022, 38.407211, 30.054131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390148, 38.292061, 30.005478>,  <30.048693, 38.100140, 29.924391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390148, 38.292061, 30.005478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425905, -0.867019, 0.258618,
		0.299845, -0.134428, -0.944469,
		0.853638, 0.479799, 0.202718,
		30.646240, 38.436001, 30.066294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807373, 37.717644, 29.836033>,  <30.048693, 38.100140, 29.924391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807373, 37.717644, 29.836033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805517, 37.959614, 30.154541>,  <30.804403, 38.104797, 30.345646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805517, 37.959614, 30.154541>,  <30.807373, 37.717644, 29.836033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805517, 37.959614, 30.154541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425954, -0.719230, 0.548881,
		0.904733, 0.341720, -0.254335,
		-0.004639, 0.604926, 0.796269,
		30.804125, 38.141090, 30.393421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566299, 37.765446, 30.086536>,  <30.807373, 37.717644, 29.836033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566299, 37.765446, 30.086536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297863, 37.866570, 30.365311>,  <31.136801, 37.927246, 30.532576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297863, 37.866570, 30.365311>,  <31.566299, 37.765446, 30.086536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297863, 37.866570, 30.365311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502847, -0.535554, 0.678474,
		0.544774, 0.805771, 0.232280,
		-0.671093, 0.252814, 0.696936,
		31.096535, 37.942413, 30.574390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953535, 37.903141, 30.755327>,  <31.566299, 37.765446, 30.086536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953535, 37.903141, 30.755327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573400, 37.884117, 30.878357>,  <31.345320, 37.872704, 30.952175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573400, 37.884117, 30.878357>,  <31.953535, 37.903141, 30.755327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573400, 37.884117, 30.878357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287436, -0.513082, 0.808782,
		0.119347, 0.857021, 0.501269,
		-0.950335, -0.047557, 0.307573,
		31.288300, 37.869850, 30.970629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429043, 37.364872, 30.563534>,  <31.953535, 37.903141, 30.755327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429043, 37.364872, 30.563534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674568, 37.050880, 30.597094>,  <32.821884, 36.862488, 30.617229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674568, 37.050880, 30.597094>,  <32.429043, 37.364872, 30.563534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674568, 37.050880, 30.597094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370241, -0.380107, -0.847608,
		0.697244, 0.489214, -0.523947,
		0.613818, -0.784977, 0.083900,
		32.858715, 36.815388, 30.622263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620567, 37.029556, 31.229286>,  <32.429043, 37.364872, 30.563534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620567, 37.029556, 31.229286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915768, 37.103817, 31.488789>,  <33.092888, 37.148373, 31.644489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915768, 37.103817, 31.488789>,  <32.620567, 37.029556, 31.229286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915768, 37.103817, 31.488789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341673, 0.931867, 0.122003,
		-0.581904, -0.311701, 0.751153,
		0.738003, 0.185654, 0.648757,
		33.137169, 37.159512, 31.683416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363674, 37.445366, 31.909611>,  <32.620567, 37.029556, 31.229286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363674, 37.445366, 31.909611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739330, 37.518398, 31.793215>,  <32.964725, 37.562218, 31.723377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739330, 37.518398, 31.793215>,  <32.363674, 37.445366, 31.909611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739330, 37.518398, 31.793215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200042, 0.979291, -0.031168,
		0.279272, 0.087481, 0.956219,
		0.939144, 0.182580, -0.290989,
		33.021072, 37.573174, 31.705917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473305, 38.095242, 32.141056>,  <32.363674, 37.445366, 31.909611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473305, 38.095242, 32.141056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817032, 38.014973, 31.952887>,  <33.023270, 37.966812, 31.839985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817032, 38.014973, 31.952887>,  <32.473305, 38.095242, 32.141056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817032, 38.014973, 31.952887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210361, 0.977082, -0.032547,
		0.466178, -0.070991, 0.881838,
		0.859318, -0.200677, -0.470428,
		33.074825, 37.954769, 31.811758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963833, 38.591633, 32.298710>,  <32.473305, 38.095242, 32.141056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963833, 38.591633, 32.298710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117233, 38.421406, 31.970852>,  <33.209274, 38.319267, 31.774137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117233, 38.421406, 31.970852>,  <32.963833, 38.591633, 32.298710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117233, 38.421406, 31.970852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388456, 0.879507, -0.274899,
		0.837874, -0.212973, 0.502603,
		0.383497, -0.425570, -0.819646,
		33.232281, 38.293736, 31.724958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609795, 38.730804, 32.364761>,  <32.963833, 38.591633, 32.298710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609795, 38.730804, 32.364761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531380, 38.661350, 31.978722>,  <33.484329, 38.619678, 31.747097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531380, 38.661350, 31.978722>,  <33.609795, 38.730804, 32.364761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531380, 38.661350, 31.978722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399490, 0.884680, -0.240310,
		0.895531, -0.432659, -0.104067,
		-0.196038, -0.173631, -0.965102,
		33.472569, 38.609261, 31.689192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287548, 38.756863, 31.912422>,  <33.609795, 38.730804, 32.364761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287548, 38.756863, 31.912422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962841, 38.840080, 31.694155>,  <33.768017, 38.890011, 31.563194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962841, 38.840080, 31.694155>,  <34.287548, 38.756863, 31.912422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962841, 38.840080, 31.694155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429720, 0.845524, -0.316908,
		0.395446, -0.491740, -0.775767,
		-0.811765, 0.208043, -0.545670,
		33.719311, 38.902493, 31.530455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397877, 39.061302, 31.240936>,  <34.287548, 38.756863, 31.912422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397877, 39.061302, 31.240936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022839, 39.187336, 31.299763>,  <33.797813, 39.262955, 31.335058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022839, 39.187336, 31.299763>,  <34.397877, 39.061302, 31.240936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022839, 39.187336, 31.299763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220938, 0.866436, -0.447745,
		-0.268503, -0.387313, -0.881984,
		-0.937599, 0.315084, 0.147068,
		33.741558, 39.281860, 31.343884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122494, 39.288708, 30.572075>,  <34.397877, 39.061302, 31.240936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122494, 39.288708, 30.572075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933937, 39.464249, 30.878067>,  <33.820801, 39.569572, 31.061663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933937, 39.464249, 30.878067>,  <34.122494, 39.288708, 30.572075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933937, 39.464249, 30.878067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240599, 0.898493, -0.367182,
		-0.848468, 0.010966, -0.529133,
		-0.471396, 0.438851, 0.764981,
		33.792519, 39.595905, 31.107561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873276, 39.916927, 30.264757>,  <34.122494, 39.288708, 30.572075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873276, 39.916927, 30.264757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853077, 39.989826, 30.657539>,  <33.840958, 40.033566, 30.893209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853077, 39.989826, 30.657539>,  <33.873276, 39.916927, 30.264757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853077, 39.989826, 30.657539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279583, 0.946478, -0.161282,
		-0.958793, 0.266394, -0.098747,
		-0.050498, 0.182244, 0.981956,
		33.837929, 40.044498, 30.952126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945103, 39.266178, 29.818962>,  <33.873276, 39.916927, 30.264757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945103, 39.266178, 29.818962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124695, 38.943142, 29.971912>,  <34.232449, 38.749321, 30.063683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124695, 38.943142, 29.971912>,  <33.945103, 39.266178, 29.818962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124695, 38.943142, 29.971912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452470, -0.163528, -0.876658,
		0.770513, 0.566614, 0.291991,
		0.448978, -0.807593, 0.382376,
		34.259388, 38.700863, 30.086626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711781, 39.224571, 29.608284>,  <33.945103, 39.266178, 29.818962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711781, 39.224571, 29.608284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566414, 38.856464, 29.666292>,  <34.479195, 38.635601, 29.701097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566414, 38.856464, 29.666292>,  <34.711781, 39.224571, 29.608284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566414, 38.856464, 29.666292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464766, -0.313998, -0.827887,
		0.807416, -0.233468, 0.541823,
		-0.363417, -0.920271, 0.145018,
		34.457390, 38.580383, 29.709797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238457, 38.691608, 29.661274>,  <34.711781, 39.224571, 29.608284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238457, 38.691608, 29.661274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886398, 38.591938, 29.499655>,  <34.675163, 38.532135, 29.402683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886398, 38.591938, 29.499655>,  <35.238457, 38.691608, 29.661274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886398, 38.591938, 29.499655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473048, -0.389383, -0.790321,
		0.039598, -0.886732, 0.460585,
		-0.880147, -0.249174, -0.404047,
		34.622353, 38.517185, 29.378441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338917, 38.006813, 29.459641>,  <35.238457, 38.691608, 29.661274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338917, 38.006813, 29.459641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058701, 38.166794, 29.223240>,  <34.890572, 38.262783, 29.081400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058701, 38.166794, 29.223240>,  <35.338917, 38.006813, 29.459641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058701, 38.166794, 29.223240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574039, -0.176167, -0.799652,
		-0.423939, -0.899445, -0.106178,
		-0.700539, 0.399954, -0.591001,
		34.848537, 38.286781, 29.045940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223675, 37.446575, 28.944269>,  <35.338917, 38.006813, 29.459641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223675, 37.446575, 28.944269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085327, 37.783096, 28.778093>,  <35.002319, 37.985008, 28.678387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085327, 37.783096, 28.778093>,  <35.223675, 37.446575, 28.944269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085327, 37.783096, 28.778093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324517, -0.308183, -0.894266,
		-0.880377, -0.444117, -0.166425,
		-0.345870, 0.841299, -0.415440,
		34.981567, 38.035484, 28.653461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858112, 37.250637, 28.361843>,  <35.223675, 37.446575, 28.944269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858112, 37.250637, 28.361843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953167, 37.635605, 28.309265>,  <35.010201, 37.866585, 28.277718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953167, 37.635605, 28.309265>,  <34.858112, 37.250637, 28.361843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953167, 37.635605, 28.309265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288591, -0.199164, -0.936509,
		-0.927492, 0.184618, -0.325075,
		0.237640, 0.962419, -0.131444,
		35.024460, 37.924332, 28.269833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591755, 37.416107, 27.703659>,  <34.858112, 37.250637, 28.361843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591755, 37.416107, 27.703659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885738, 37.675518, 27.782904>,  <35.062130, 37.831165, 27.830450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885738, 37.675518, 27.782904>,  <34.591755, 37.416107, 27.703659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885738, 37.675518, 27.782904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382106, -0.154718, -0.911075,
		-0.560207, 0.745300, -0.361518,
		0.734958, 0.648529, 0.198109,
		35.106224, 37.870075, 27.842337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554497, 37.878353, 27.118481>,  <34.591755, 37.416107, 27.703659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554497, 37.878353, 27.118481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921005, 37.887920, 27.278416>,  <35.140911, 37.893661, 27.374376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921005, 37.887920, 27.278416>,  <34.554497, 37.878353, 27.118481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921005, 37.887920, 27.278416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400530, -0.064991, -0.913976,
		0.004127, 0.997599, -0.069129,
		0.916275, 0.023916, 0.399836,
		35.195889, 37.895096, 27.398367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799507, 38.338394, 26.647526>,  <34.554497, 37.878353, 27.118481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799507, 38.338394, 26.647526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121540, 38.188065, 26.831093>,  <35.314758, 38.097866, 26.941233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121540, 38.188065, 26.831093>,  <34.799507, 38.338394, 26.647526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121540, 38.188065, 26.831093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544026, 0.159493, -0.823771,
		0.236398, 0.912863, 0.332861,
		0.805079, -0.375823, 0.458917,
		35.363064, 38.075317, 26.968767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311756, 38.886600, 26.639906>,  <34.799507, 38.338394, 26.647526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311756, 38.886600, 26.639906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515633, 38.542900, 26.657351>,  <35.637959, 38.336681, 26.667818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515633, 38.542900, 26.657351>,  <35.311756, 38.886600, 26.639906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515633, 38.542900, 26.657351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406568, 0.195876, -0.892376,
		0.758232, 0.472568, 0.449181,
		0.509692, -0.859251, 0.043612,
		35.668541, 38.285126, 26.670435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979755, 39.083313, 26.449448>,  <35.311756, 38.886600, 26.639906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979755, 39.083313, 26.449448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982525, 38.686626, 26.398134>,  <35.984188, 38.448616, 26.367346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982525, 38.686626, 26.398134>,  <35.979755, 39.083313, 26.449448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982525, 38.686626, 26.398134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515975, 0.113430, -0.849060,
		0.856576, -0.060312, 0.512485,
		0.006923, -0.991714, -0.128281,
		35.984600, 38.389111, 26.359650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719322, 38.863186, 26.185753>,  <35.979755, 39.083313, 26.449448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719322, 38.863186, 26.185753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466206, 38.571716, 26.080984>,  <36.314335, 38.396835, 26.018124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466206, 38.571716, 26.080984>,  <36.719322, 38.863186, 26.185753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466206, 38.571716, 26.080984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377817, 0.004698, -0.925868,
		0.675887, -0.684844, 0.272333,
		-0.632796, -0.728675, -0.261921,
		36.276367, 38.353115, 26.002407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068539, 38.382992, 25.815554>,  <36.719322, 38.863186, 26.185753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068539, 38.382992, 25.815554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695080, 38.277809, 25.718260>,  <36.471004, 38.214699, 25.659883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695080, 38.277809, 25.718260>,  <37.068539, 38.382992, 25.815554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695080, 38.277809, 25.718260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245180, 0.025926, -0.969131,
		0.261142, -0.964460, 0.040265,
		-0.933644, -0.262953, -0.243237,
		36.414986, 38.198925, 25.645288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075783, 37.836380, 25.367796>,  <37.068539, 38.382992, 25.815554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075783, 37.836380, 25.367796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721745, 38.008465, 25.296783>,  <36.509319, 38.111717, 25.254175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721745, 38.008465, 25.296783>,  <37.075783, 37.836380, 25.367796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721745, 38.008465, 25.296783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208881, 0.026331, -0.977587,
		-0.415896, -0.902343, -0.113169,
		-0.885098, 0.430213, -0.177531,
		36.456215, 38.137527, 25.243525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661469, 37.486614, 24.865688>,  <37.075783, 37.836380, 25.367796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661469, 37.486614, 24.865688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532513, 37.865250, 24.863428>,  <36.455139, 38.092430, 24.862072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532513, 37.865250, 24.863428>,  <36.661469, 37.486614, 24.865688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532513, 37.865250, 24.863428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071333, 0.018341, -0.997284,
		-0.943917, -0.321912, -0.073437,
		-0.322385, 0.946592, -0.005651,
		36.435799, 38.149227, 24.861732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301208, 37.327419, 24.314547>,  <36.661469, 37.486614, 24.865688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301208, 37.327419, 24.314547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336037, 37.720760, 24.378340>,  <36.356934, 37.956764, 24.416615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336037, 37.720760, 24.378340>,  <36.301208, 37.327419, 24.314547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336037, 37.720760, 24.378340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087216, 0.166999, -0.982092,
		-0.992377, 0.071603, 0.100305,
		0.087072, 0.983354, 0.159481,
		36.362160, 38.015766, 24.426184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644207, 37.645515, 23.896206>,  <36.301208, 37.327419, 24.314547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644207, 37.645515, 23.896206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908966, 37.944450, 23.919455>,  <36.067822, 38.123810, 23.933405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908966, 37.944450, 23.919455>,  <35.644207, 37.645515, 23.896206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908966, 37.944450, 23.919455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050285, 0.121635, -0.991300,
		-0.747902, 0.653221, 0.118090,
		0.661902, 0.747333, 0.058124,
		36.107536, 38.168652, 23.936892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434086, 37.892719, 23.304369>,  <35.644207, 37.645515, 23.896206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434086, 37.892719, 23.304369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759731, 38.101597, 23.405981>,  <35.955120, 38.226921, 23.466948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759731, 38.101597, 23.405981>,  <35.434086, 37.892719, 23.304369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759731, 38.101597, 23.405981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048337, 0.374997, -0.925765,
		-0.578686, 0.765960, 0.280050,
		0.814116, 0.522191, 0.254029,
		36.003967, 38.258255, 23.482189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227230, 38.501259, 23.086618>,  <35.434086, 37.892719, 23.304369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227230, 38.501259, 23.086618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626499, 38.499771, 23.110735>,  <35.866062, 38.498878, 23.125206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626499, 38.499771, 23.110735>,  <35.227230, 38.501259, 23.086618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626499, 38.499771, 23.110735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060031, 0.172272, -0.983218,
		-0.006729, 0.985042, 0.172181,
		0.998174, -0.003720, 0.060293,
		35.925953, 38.498653, 23.128822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388428, 39.056252, 22.469099>,  <35.227230, 38.501259, 23.086618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388428, 39.056252, 22.469099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708118, 38.834972, 22.563084>,  <35.899933, 38.702206, 22.619474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708118, 38.834972, 22.563084>,  <35.388428, 39.056252, 22.469099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708118, 38.834972, 22.563084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324096, 0.067453, -0.943617,
		0.506158, 0.830315, 0.233199,
		0.799228, -0.553198, 0.234960,
		35.947887, 38.669014, 22.633572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052872, 39.382938, 22.163734>,  <35.388428, 39.056252, 22.469099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052872, 39.382938, 22.163734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098282, 38.990108, 22.223911>,  <36.125526, 38.754410, 22.260017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098282, 38.990108, 22.223911>,  <36.052872, 39.382938, 22.163734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098282, 38.990108, 22.223911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267073, -0.115682, -0.956708,
		0.956966, 0.148790, 0.249154,
		0.113526, -0.982079, 0.150441,
		36.132339, 38.695484, 22.269043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698860, 39.218666, 21.853010>,  <36.052872, 39.382938, 22.163734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698860, 39.218666, 21.853010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480789, 38.884857, 21.884890>,  <36.349945, 38.684570, 21.904016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480789, 38.884857, 21.884890>,  <36.698860, 39.218666, 21.853010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480789, 38.884857, 21.884890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336093, -0.304673, -0.891188,
		0.767996, -0.459074, 0.446579,
		-0.545182, -0.834521, 0.079697,
		36.317234, 38.634502, 21.908798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111683, 38.704567, 21.427137>,  <36.698860, 39.218666, 21.853010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111683, 38.704567, 21.427137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747982, 38.547939, 21.483614>,  <36.529762, 38.453964, 21.517500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747982, 38.547939, 21.483614>,  <37.111683, 38.704567, 21.427137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747982, 38.547939, 21.483614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054097, -0.225168, -0.972817,
		0.412714, -0.892175, 0.183552,
		-0.909253, -0.391566, 0.141194,
		36.475204, 38.430470, 21.525972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237827, 38.065853, 21.191017>,  <37.111683, 38.704567, 21.427137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237827, 38.065853, 21.191017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845997, 38.141026, 21.162395>,  <36.610901, 38.186131, 21.145224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845997, 38.141026, 21.162395>,  <37.237827, 38.065853, 21.191017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845997, 38.141026, 21.162395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009236, -0.397488, -0.917561,
		-0.200881, -0.898156, 0.391104,
		-0.979572, 0.187933, -0.071552,
		36.552124, 38.197407, 21.140930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099812, 37.509445, 20.871090>,  <37.237827, 38.065853, 21.191017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099812, 37.509445, 20.871090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790562, 37.756783, 20.814613>,  <36.605011, 37.905186, 20.780727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790562, 37.756783, 20.814613>,  <37.099812, 37.509445, 20.871090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790562, 37.756783, 20.814613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151430, -0.396125, -0.905624,
		-0.615914, -0.678778, 0.399888,
		-0.773123, 0.618341, -0.141192,
		36.558624, 37.942284, 20.772255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603031, 37.168949, 20.527899>,  <37.099812, 37.509445, 20.871090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603031, 37.168949, 20.527899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526745, 37.548603, 20.427677>,  <36.480972, 37.776394, 20.367544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526745, 37.548603, 20.427677>,  <36.603031, 37.168949, 20.527899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526745, 37.548603, 20.427677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087250, -0.270616, -0.958725,
		-0.977761, -0.160981, 0.134422,
		-0.190713, 0.949132, -0.250552,
		36.469532, 37.833344, 20.352512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997398, 37.070145, 20.166676>,  <36.603031, 37.168949, 20.527899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997398, 37.070145, 20.166676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168995, 37.419117, 20.073004>,  <36.271954, 37.628498, 20.016800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168995, 37.419117, 20.073004>,  <35.997398, 37.070145, 20.166676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168995, 37.419117, 20.073004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119736, -0.202040, -0.972030,
		-0.895340, 0.445029, 0.017788,
		0.428988, 0.872427, -0.234181,
		36.297691, 37.680843, 20.002750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501156, 37.371628, 19.751223>,  <35.997398, 37.070145, 20.166676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501156, 37.371628, 19.751223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831913, 37.584869, 19.679617>,  <36.030369, 37.712814, 19.636654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831913, 37.584869, 19.679617>,  <35.501156, 37.371628, 19.751223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831913, 37.584869, 19.679617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205586, -0.009724, -0.978591,
		-0.523428, 0.845996, 0.101557,
		0.826896, 0.533101, -0.179015,
		36.079983, 37.744801, 19.625912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303017, 37.857113, 19.194204>,  <35.501156, 37.371628, 19.751223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303017, 37.857113, 19.194204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701313, 37.820332, 19.197048>,  <35.940289, 37.798264, 19.198753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701313, 37.820332, 19.197048>,  <35.303017, 37.857113, 19.194204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701313, 37.820332, 19.197048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001463, -0.092813, -0.995682,
		0.092213, 0.991429, -0.092552,
		0.995738, -0.091950, 0.007108,
		36.000034, 37.792747, 19.199181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395962, 38.124428, 18.575150>,  <35.303017, 37.857113, 19.194204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395962, 38.124428, 18.575150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754753, 37.969196, 18.659840>,  <35.970028, 37.876057, 18.710653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754753, 37.969196, 18.659840>,  <35.395962, 38.124428, 18.575150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754753, 37.969196, 18.659840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144513, -0.195222, -0.970054,
		0.417790, 0.900713, -0.119027,
		0.896977, -0.388078, 0.211726,
		36.023846, 37.852772, 18.723358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917122, 38.443237, 18.102163>,  <35.395962, 38.124428, 18.575150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917122, 38.443237, 18.102163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033604, 38.089565, 18.248270>,  <36.103493, 37.877361, 18.335934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033604, 38.089565, 18.248270>,  <35.917122, 38.443237, 18.102163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033604, 38.089565, 18.248270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248644, -0.298743, -0.921373,
		0.923785, 0.359126, 0.132853,
		0.291201, -0.884184, 0.365269,
		36.120964, 37.824310, 18.357851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533432, 38.398754, 17.846855>,  <35.917122, 38.443237, 18.102163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533432, 38.398754, 17.846855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391518, 38.031898, 17.919504>,  <36.306370, 37.811787, 17.963095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391518, 38.031898, 17.919504>,  <36.533432, 38.398754, 17.846855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391518, 38.031898, 17.919504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337393, -0.306765, -0.889978,
		0.871947, -0.254475, 0.418272,
		-0.354788, -0.917136, 0.181624,
		36.285080, 37.756760, 17.973991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999298, 38.038548, 17.545385>,  <36.533432, 38.398754, 17.846855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999298, 38.038548, 17.545385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728271, 37.746944, 17.584288>,  <36.565655, 37.571983, 17.607630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728271, 37.746944, 17.584288>,  <36.999298, 38.038548, 17.545385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728271, 37.746944, 17.584288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181628, -0.294002, -0.938389,
		0.712683, -0.618155, 0.331613,
		-0.677565, -0.729005, 0.097256,
		36.525002, 37.528244, 17.613464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325958, 37.345280, 17.285658>,  <36.999298, 38.038548, 17.545385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325958, 37.345280, 17.285658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927490, 37.311691, 17.275925>,  <36.688408, 37.291538, 17.270084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927490, 37.311691, 17.275925>,  <37.325958, 37.345280, 17.285658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927490, 37.311691, 17.275925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048847, -0.303731, -0.951505,
		0.072511, -0.949050, 0.306670,
		-0.996171, -0.083975, -0.024334,
		36.628639, 37.286499, 17.268625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207180, 36.865051, 16.861334>,  <37.325958, 37.345280, 17.285658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207180, 36.865051, 16.861334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842484, 37.029026, 16.850874>,  <36.623665, 37.127411, 16.844599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842484, 37.029026, 16.850874>,  <37.207180, 36.865051, 16.861334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842484, 37.029026, 16.850874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073637, -0.225734, -0.971402,
		-0.404117, -0.883739, 0.235997,
		-0.911738, 0.409938, -0.026148,
		36.568962, 37.152008, 16.843029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684044, 36.353207, 16.502155>,  <37.207180, 36.865051, 16.861334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684044, 36.353207, 16.502155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546535, 36.727802, 16.474438>,  <36.464031, 36.952560, 16.457808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546535, 36.727802, 16.474438>,  <36.684044, 36.353207, 16.502155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546535, 36.727802, 16.474438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118715, -0.116539, -0.986066,
		-0.931519, -0.330755, 0.151239,
		-0.343771, 0.936493, -0.069292,
		36.443405, 37.008751, 16.453650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917175, 36.319057, 16.182888>,  <36.684044, 36.353207, 16.502155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917175, 36.319057, 16.182888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048801, 36.690311, 16.113272>,  <36.127777, 36.913063, 16.071501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048801, 36.690311, 16.113272>,  <35.917175, 36.319057, 16.182888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048801, 36.690311, 16.113272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349732, -0.051418, -0.935438,
		-0.877158, 0.368686, 0.307677,
		0.329063, 0.928131, -0.174043,
		36.147522, 36.968750, 16.061058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450535, 36.659100, 15.697500>,  <35.917175, 36.319057, 16.182888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450535, 36.659100, 15.697500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783314, 36.880470, 15.681576>,  <35.982983, 37.013294, 15.672021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783314, 36.880470, 15.681576>,  <35.450535, 36.659100, 15.697500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783314, 36.880470, 15.681576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097901, 0.075790, -0.992306,
		-0.546150, 0.829443, 0.117234,
		0.831947, 0.553426, -0.039810,
		36.032898, 37.046497, 15.669633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245708, 37.133121, 15.237059>,  <35.450535, 36.659100, 15.697500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245708, 37.133121, 15.237059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644547, 37.163101, 15.242359>,  <35.883850, 37.181087, 15.245540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644547, 37.163101, 15.242359>,  <35.245708, 37.133121, 15.237059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644547, 37.163101, 15.242359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002355, 0.204409, -0.978883,
		-0.076077, 0.976012, 0.203992,
		0.997099, 0.074951, 0.013252,
		35.943676, 37.185585, 15.246335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531548, 37.649647, 14.716840>,  <35.245708, 37.133121, 15.237059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531548, 37.649647, 14.716840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816975, 37.371368, 14.749897>,  <35.988232, 37.204403, 14.769732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816975, 37.371368, 14.749897>,  <35.531548, 37.649647, 14.716840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816975, 37.371368, 14.749897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043468, -0.073770, -0.996327,
		0.699238, 0.714538, -0.022400,
		0.713567, -0.695696, 0.082642,
		36.031044, 37.162659, 14.774690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122253, 37.951351, 14.385020>,  <35.531548, 37.649647, 14.716840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122253, 37.951351, 14.385020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103706, 37.551895, 14.394492>,  <36.092579, 37.312222, 14.400175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103706, 37.551895, 14.394492>,  <36.122253, 37.951351, 14.385020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103706, 37.551895, 14.394492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177471, -0.031565, -0.983620,
		0.983033, -0.041409, 0.178694,
		-0.046371, -0.998644, 0.023681,
		36.089794, 37.252300, 14.401596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652237, 37.796391, 13.920048>,  <36.122253, 37.951351, 14.385020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652237, 37.796391, 13.920048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425426, 37.468716, 13.954481>,  <36.289341, 37.272110, 13.975142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425426, 37.468716, 13.954481>,  <36.652237, 37.796391, 13.920048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425426, 37.468716, 13.954481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028672, -0.124074, -0.991859,
		0.823201, -0.559940, 0.093841,
		-0.567025, -0.819190, 0.086083,
		36.255318, 37.222958, 13.980306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960651, 37.349926, 13.395399>,  <36.652237, 37.796391, 13.920048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960651, 37.349926, 13.395399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619804, 37.162666, 13.488985>,  <36.415298, 37.050312, 13.545136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619804, 37.162666, 13.488985>,  <36.960651, 37.349926, 13.395399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619804, 37.162666, 13.488985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020904, -0.416245, -0.909012,
		0.522939, -0.779473, 0.344902,
		-0.852114, -0.468148, 0.233965,
		36.364170, 37.022221, 13.559175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014114, 36.755825, 13.059257>,  <36.960651, 37.349926, 13.395399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014114, 36.755825, 13.059257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620392, 36.769989, 13.128406>,  <36.384159, 36.778488, 13.169895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620392, 36.769989, 13.128406>,  <37.014114, 36.755825, 13.059257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620392, 36.769989, 13.128406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175949, -0.271547, -0.946205,
		0.013437, -0.961774, 0.273516,
		-0.984308, 0.035410, 0.172872,
		36.325100, 36.780613, 13.180267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745262, 36.057934, 12.769193>,  <37.014114, 36.755825, 13.059257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745262, 36.057934, 12.769193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466228, 36.344112, 12.753636>,  <36.298809, 36.515820, 12.744303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466228, 36.344112, 12.753636>,  <36.745262, 36.057934, 12.769193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466228, 36.344112, 12.753636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327022, -0.366213, -0.871174,
		-0.637523, -0.594998, 0.489431,
		-0.697582, 0.715448, -0.038891,
		36.256954, 36.558746, 12.741969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151070, 35.710274, 12.550432>,  <36.745262, 36.057934, 12.769193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151070, 35.710274, 12.550432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096485, 36.098312, 12.470148>,  <36.063736, 36.331135, 12.421978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096485, 36.098312, 12.470148>,  <36.151070, 35.710274, 12.550432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096485, 36.098312, 12.470148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362723, -0.237465, -0.901134,
		-0.921852, -0.050167, 0.384282,
		-0.136460, 0.970100, -0.200710,
		36.055546, 36.389343, 12.409935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386169, 35.953785, 12.525511>,  <36.151070, 35.710274, 12.550432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386169, 35.953785, 12.525511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078968, 36.168087, 12.385144>,  <34.894650, 36.296669, 12.300924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078968, 36.168087, 12.385144>,  <35.386169, 35.953785, 12.525511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078968, 36.168087, 12.385144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601527, 0.415310, -0.682409,
		-0.219864, -0.735177, -0.641229,
		-0.768000, 0.535754, -0.350917,
		34.848568, 36.328812, 12.279869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412792, 36.018261, 11.882600>,  <35.386169, 35.953785, 12.525511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412792, 36.018261, 11.882600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220463, 36.354382, 11.982757>,  <35.105064, 36.556053, 12.042850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220463, 36.354382, 11.982757>,  <35.412792, 36.018261, 11.882600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220463, 36.354382, 11.982757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517074, 0.502371, -0.693006,
		-0.708126, -0.203742, -0.676052,
		-0.480823, 0.840305, 0.250392,
		35.076214, 36.606472, 12.057875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020077, 36.464687, 11.313170>,  <35.412792, 36.018261, 11.882600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020077, 36.464687, 11.313170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260548, 36.601105, 11.602244>,  <35.404831, 36.682957, 11.775689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260548, 36.601105, 11.602244>,  <35.020077, 36.464687, 11.313170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260548, 36.601105, 11.602244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593998, 0.414245, -0.689614,
		-0.534560, 0.843853, 0.046452,
		0.601176, 0.341048, 0.722685,
		35.440899, 36.703419, 11.819050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184422, 37.212673, 11.225542>,  <35.020077, 36.464687, 11.313170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184422, 37.212673, 11.225542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467854, 37.041237, 11.449762>,  <35.637913, 36.938374, 11.584294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467854, 37.041237, 11.449762>,  <35.184422, 37.212673, 11.225542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467854, 37.041237, 11.449762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704712, 0.389396, -0.593087,
		0.035917, 0.815278, 0.577955,
		0.708584, -0.428594, 0.560550,
		35.680428, 36.912659, 11.617928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995995, 37.908508, 11.191942>,  <35.184422, 37.212673, 11.225542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995995, 37.908508, 11.191942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884064, 37.893906, 10.808200>,  <34.816906, 37.885143, 10.577954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884064, 37.893906, 10.808200>,  <34.995995, 37.908508, 11.191942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884064, 37.893906, 10.808200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756597, 0.623514, 0.196955,
		0.590981, 0.780959, -0.202097,
		-0.279824, -0.036509, -0.959357,
		34.800117, 37.882954, 10.520392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696106, 37.788986, 11.958606>,  <34.995995, 37.908508, 11.191942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696106, 37.788986, 11.958606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365086, 37.755924, 11.736496>,  <34.166473, 37.736088, 11.603230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365086, 37.755924, 11.736496>,  <34.696106, 37.788986, 11.958606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365086, 37.755924, 11.736496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533835, -0.190226, 0.823914,
		-0.173728, 0.978255, 0.113298,
		-0.827550, -0.082655, -0.555274,
		34.116821, 37.731129, 11.569914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139515, 38.257141, 12.148335>,  <34.696106, 37.788986, 11.958606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139515, 38.257141, 12.148335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983322, 37.934910, 11.970090>,  <33.889606, 37.741570, 11.863143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983322, 37.934910, 11.970090>,  <34.139515, 38.257141, 12.148335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983322, 37.934910, 11.970090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534876, -0.195442, 0.822016,
		-0.749290, 0.559326, -0.354568,
		-0.390478, -0.805578, -0.445613,
		33.866180, 37.693237, 11.836406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382164, 38.251431, 12.019293>,  <34.139515, 38.257141, 12.148335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382164, 38.251431, 12.019293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562077, 37.903095, 12.098638>,  <33.670025, 37.694096, 12.146245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562077, 37.903095, 12.098638>,  <33.382164, 38.251431, 12.019293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562077, 37.903095, 12.098638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461899, -0.036710, 0.886173,
		-0.764428, -0.490204, -0.418749,
		0.449778, -0.870835, 0.198362,
		33.697010, 37.641846, 12.158146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853195, 37.809185, 12.243027>,  <33.382164, 38.251431, 12.019293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853195, 37.809185, 12.243027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201271, 37.699730, 12.406923>,  <33.410118, 37.634056, 12.505261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201271, 37.699730, 12.406923>,  <32.853195, 37.809185, 12.243027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201271, 37.699730, 12.406923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457125, -0.138060, 0.878622,
		-0.183861, -0.951871, -0.245229,
		0.870191, -0.273645, 0.409740,
		33.462330, 37.617638, 12.529846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688110, 37.238506, 12.540677>,  <32.853195, 37.809185, 12.243027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688110, 37.238506, 12.540677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036613, 37.333832, 12.712311>,  <33.245716, 37.391029, 12.815291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036613, 37.333832, 12.712311>,  <32.688110, 37.238506, 12.540677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036613, 37.333832, 12.712311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413569, -0.114348, 0.903264,
		0.264328, -0.964432, -0.001066,
		0.871258, 0.238317, 0.429085,
		33.297993, 37.405327, 12.841036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661598, 36.872963, 13.224865>,  <32.688110, 37.238506, 12.540677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661598, 36.872963, 13.224865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932240, 37.163868, 13.270987>,  <33.094624, 37.338409, 13.298659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932240, 37.163868, 13.270987>,  <32.661598, 36.872963, 13.224865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932240, 37.163868, 13.270987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286737, 0.115996, 0.950961,
		0.678223, -0.676488, 0.287016,
		0.676606, 0.727261, 0.115303,
		33.135223, 37.382046, 13.305577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835949, 36.920414, 13.991526>,  <32.661598, 36.872963, 13.224865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835949, 36.920414, 13.991526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987717, 37.265808, 13.858593>,  <33.078777, 37.473045, 13.778833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987717, 37.265808, 13.858593>,  <32.835949, 36.920414, 13.991526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987717, 37.265808, 13.858593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091978, 0.392612, 0.915094,
		0.920644, -0.316633, 0.228384,
		0.379415, 0.863481, -0.332333,
		33.101540, 37.524853, 13.758893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281609, 37.094074, 14.483243>,  <32.835949, 36.920414, 13.991526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281609, 37.094074, 14.483243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182819, 37.432522, 14.294316>,  <33.123547, 37.635590, 14.180961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182819, 37.432522, 14.294316>,  <33.281609, 37.094074, 14.483243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182819, 37.432522, 14.294316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074501, 0.469393, 0.879841,
		0.966154, 0.252484, -0.052890,
		-0.246972, 0.846122, -0.472317,
		33.108727, 37.686359, 14.152621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728424, 37.581760, 14.809977>,  <33.281609, 37.094074, 14.483243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728424, 37.581760, 14.809977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434345, 37.798824, 14.647497>,  <33.257896, 37.929062, 14.550010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434345, 37.798824, 14.647497>,  <33.728424, 37.581760, 14.809977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434345, 37.798824, 14.647497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035161, 0.628970, 0.776634,
		0.676938, 0.556699, -0.481499,
		-0.735200, 0.542663, -0.406200,
		33.213787, 37.961624, 14.525638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819519, 38.288776, 14.996325>,  <33.728424, 37.581760, 14.809977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819519, 38.288776, 14.996325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434704, 38.322166, 14.892397>,  <33.203815, 38.342201, 14.830040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434704, 38.322166, 14.892397>,  <33.819519, 38.288776, 14.996325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434704, 38.322166, 14.892397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162752, 0.588737, 0.791770,
		0.219057, 0.804003, -0.552805,
		-0.962043, 0.083472, -0.259820,
		33.146091, 38.347210, 14.814451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646812, 39.141411, 14.921786>,  <33.819519, 38.288776, 14.996325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646812, 39.141411, 14.921786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324879, 38.912472, 14.984610>,  <33.131718, 38.775108, 15.022304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324879, 38.912472, 14.984610>,  <33.646812, 39.141411, 14.921786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324879, 38.912472, 14.984610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361243, 0.682373, 0.635509,
		-0.470902, 0.454742, -0.755950,
		-0.804832, -0.572344, 0.157058,
		33.083427, 38.740768, 15.031727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103867, 39.573402, 14.933847>,  <33.646812, 39.141411, 14.921786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103867, 39.573402, 14.933847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981537, 39.255817, 15.144026>,  <32.908138, 39.065266, 15.270133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981537, 39.255817, 15.144026>,  <33.103867, 39.573402, 14.933847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981537, 39.255817, 15.144026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410913, 0.607909, 0.679409,
		-0.858850, -0.008133, -0.512163,
		-0.305823, -0.793965, 0.525445,
		32.889790, 39.017628, 15.301660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577732, 39.853325, 15.223737>,  <33.103867, 39.573402, 14.933847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577732, 39.853325, 15.223737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601955, 39.502594, 15.414528>,  <32.616489, 39.292156, 15.529002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601955, 39.502594, 15.414528>,  <32.577732, 39.853325, 15.223737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601955, 39.502594, 15.414528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240266, 0.450999, 0.859577,
		-0.968816, -0.166658, -0.183359,
		0.060561, -0.876826, 0.476977,
		32.620125, 39.239548, 15.557621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956465, 39.764538, 15.635735>,  <32.577732, 39.853325, 15.223737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956465, 39.764538, 15.635735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228825, 39.520626, 15.797993>,  <32.392239, 39.374279, 15.895348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228825, 39.520626, 15.797993>,  <31.956465, 39.764538, 15.635735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228825, 39.520626, 15.797993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262733, 0.313632, 0.912473,
		-0.683630, -0.727877, 0.053342,
		0.680898, -0.609779, 0.405645,
		32.433094, 39.337692, 15.919686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602823, 39.390331, 16.193657>,  <31.956465, 39.764538, 15.635735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602823, 39.390331, 16.193657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997190, 39.394745, 16.260401>,  <32.233810, 39.397392, 16.300447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997190, 39.394745, 16.260401>,  <31.602823, 39.390331, 16.193657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997190, 39.394745, 16.260401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163286, 0.278856, 0.946349,
		-0.036086, -0.960269, 0.276732,
		0.985919, 0.011037, 0.166861,
		32.292965, 39.398056, 16.310459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831583, 39.017353, 16.832542>,  <31.602823, 39.390331, 16.193657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831583, 39.017353, 16.832542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135498, 39.267574, 16.761650>,  <32.317848, 39.417706, 16.719114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135498, 39.267574, 16.761650>,  <31.831583, 39.017353, 16.832542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135498, 39.267574, 16.761650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005010, 0.266952, 0.963697,
		0.650154, -0.733091, 0.199693,
		0.759786, 0.625551, -0.177233,
		32.363434, 39.455238, 16.708481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074665, 38.976254, 17.410658>,  <31.831583, 39.017353, 16.832542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074665, 38.976254, 17.410658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307369, 39.272575, 17.276333>,  <32.446991, 39.450367, 17.195738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307369, 39.272575, 17.276333>,  <32.074665, 38.976254, 17.410658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307369, 39.272575, 17.276333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209901, 0.262148, 0.941924,
		0.785813, -0.618458, -0.002989,
		0.581756, 0.740803, -0.335814,
		32.481895, 39.494816, 17.175589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727150, 38.885727, 17.652094>,  <32.074665, 38.976254, 17.410658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727150, 38.885727, 17.652094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673893, 39.274006, 17.572065>,  <32.641941, 39.506973, 17.524048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673893, 39.274006, 17.572065>,  <32.727150, 38.885727, 17.652094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673893, 39.274006, 17.572065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409619, 0.237713, 0.880741,
		0.902489, 0.035308, -0.429264,
		-0.133138, 0.970694, -0.200071,
		32.633953, 39.565212, 17.512045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395168, 39.236080, 17.583174>,  <32.727150, 38.885727, 17.652094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395168, 39.236080, 17.583174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136230, 39.533737, 17.649143>,  <32.980869, 39.712330, 17.688725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136230, 39.533737, 17.649143>,  <33.395168, 39.236080, 17.583174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136230, 39.533737, 17.649143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478734, 0.228590, 0.847679,
		0.593095, 0.627693, -0.504222,
		-0.647343, 0.744142, 0.164923,
		32.942028, 39.756981, 17.698620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761440, 39.759823, 17.926117>,  <33.395168, 39.236080, 17.583174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761440, 39.759823, 17.926117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369457, 39.780285, 18.003120>,  <33.134266, 39.792564, 18.049322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369457, 39.780285, 18.003120>,  <33.761440, 39.759823, 17.926117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369457, 39.780285, 18.003120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185883, -0.112427, 0.976119,
		0.071580, 0.992342, 0.100664,
		-0.979961, 0.051159, 0.192507,
		33.075470, 39.795631, 18.060873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828747, 39.945572, 18.524931>,  <33.761440, 39.759823, 17.926117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828747, 39.945572, 18.524931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429424, 39.922440, 18.522556>,  <33.189831, 39.908562, 18.521132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429424, 39.922440, 18.522556>,  <33.828747, 39.945572, 18.524931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429424, 39.922440, 18.522556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001601, -0.074716, 0.997204,
		-0.058110, 0.995527, 0.074497,
		-0.998309, -0.057829, -0.005936,
		33.129932, 39.905090, 18.520775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418121, 40.474335, 19.030720>,  <33.828747, 39.945572, 18.524931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418121, 40.474335, 19.030720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196922, 40.142952, 18.995262>,  <33.064205, 39.944122, 18.973988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196922, 40.142952, 18.995262>,  <33.418121, 40.474335, 19.030720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196922, 40.142952, 18.995262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055704, -0.069394, 0.996033,
		-0.831321, 0.555738, -0.007774,
		-0.552994, -0.828456, -0.088646,
		33.031025, 39.894417, 18.968668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858307, 40.628273, 19.399412>,  <33.418121, 40.474335, 19.030720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858307, 40.628273, 19.399412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871273, 40.228508, 19.394835>,  <32.879055, 39.988651, 19.392088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871273, 40.228508, 19.394835>,  <32.858307, 40.628273, 19.399412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871273, 40.228508, 19.394835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108039, -0.014888, 0.994035,
		-0.993618, -0.030989, -0.108458,
		0.032419, -0.999409, -0.011445,
		32.881001, 39.928684, 19.391401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369701, 40.437599, 20.090664>,  <32.858307, 40.628273, 19.399412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369701, 40.437599, 20.090664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549744, 40.095642, 19.987467>,  <32.657768, 39.890469, 19.925549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549744, 40.095642, 19.987467>,  <32.369701, 40.437599, 20.090664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549744, 40.095642, 19.987467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040346, -0.308090, 0.950501,
		-0.892062, -0.417419, -0.173165,
		0.450108, -0.854893, -0.257994,
		32.684776, 39.839172, 19.910069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976837, 39.875172, 20.384693>,  <32.369701, 40.437599, 20.090664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976837, 39.875172, 20.384693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348312, 39.738594, 20.326786>,  <32.571198, 39.656647, 20.292042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348312, 39.738594, 20.326786>,  <31.976837, 39.875172, 20.384693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348312, 39.738594, 20.326786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092157, -0.165644, 0.981870,
		-0.359233, -0.925191, -0.122365,
		0.928687, -0.341444, -0.144768,
		32.626919, 39.636162, 20.283356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937387, 39.235851, 20.685406>,  <31.976837, 39.875172, 20.384693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937387, 39.235851, 20.685406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325138, 39.328892, 20.653910>,  <32.557789, 39.384716, 20.635012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325138, 39.328892, 20.653910>,  <31.937387, 39.235851, 20.685406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325138, 39.328892, 20.653910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144393, -0.280531, 0.948922,
		0.198635, -0.931234, -0.305527,
		0.969379, 0.232605, -0.078740,
		32.615952, 39.398674, 20.630287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176552, 38.605076, 20.901463>,  <31.937387, 39.235851, 20.685406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176552, 38.605076, 20.901463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446220, 38.896210, 20.951645>,  <32.608021, 39.070892, 20.981754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446220, 38.896210, 20.951645>,  <32.176552, 38.605076, 20.901463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446220, 38.896210, 20.951645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212803, -0.354084, 0.910681,
		0.707250, -0.587262, -0.393600,
		0.674175, 0.727838, 0.125455,
		32.648472, 39.114563, 20.989281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766285, 38.265793, 21.064419>,  <32.176552, 38.605076, 20.901463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766285, 38.265793, 21.064419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836037, 38.629036, 21.216694>,  <32.877888, 38.846981, 21.308060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836037, 38.629036, 21.216694>,  <32.766285, 38.265793, 21.064419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836037, 38.629036, 21.216694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161165, -0.407720, 0.898771,
		0.971400, -0.095373, -0.217453,
		0.174379, 0.908112, 0.380689,
		32.888351, 38.901470, 21.330900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350250, 38.207832, 21.561232>,  <32.766285, 38.265793, 21.064419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350250, 38.207832, 21.561232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215797, 38.571831, 21.658329>,  <33.135128, 38.790230, 21.716587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215797, 38.571831, 21.658329>,  <33.350250, 38.207832, 21.561232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215797, 38.571831, 21.658329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110157, -0.217983, 0.969716,
		0.935352, 0.352690, -0.026972,
		-0.336129, 0.909996, 0.242742,
		33.114960, 38.844830, 21.731152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827118, 38.435337, 22.053713>,  <33.350250, 38.207832, 21.561232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827118, 38.435337, 22.053713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495701, 38.651962, 22.110607>,  <33.296852, 38.781937, 22.144743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495701, 38.651962, 22.110607>,  <33.827118, 38.435337, 22.053713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495701, 38.651962, 22.110607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039122, -0.197412, 0.979540,
		0.558561, 0.817153, 0.142376,
		-0.828540, 0.541563, 0.142235,
		33.247139, 38.814430, 22.153278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965820, 38.759518, 22.671637>,  <33.827118, 38.435337, 22.053713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965820, 38.759518, 22.671637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570293, 38.808369, 22.637396>,  <33.332977, 38.837681, 22.616852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570293, 38.808369, 22.637396>,  <33.965820, 38.759518, 22.671637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570293, 38.808369, 22.637396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091069, -0.039909, 0.995044,
		0.118105, 0.991712, 0.050585,
		-0.988816, 0.122127, -0.085601,
		33.273647, 38.845005, 22.611715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689079, 39.301777, 23.208193>,  <33.965820, 38.759518, 22.671637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689079, 39.301777, 23.208193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376900, 39.076912, 23.098743>,  <33.189590, 38.941994, 23.033073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376900, 39.076912, 23.098743>,  <33.689079, 39.301777, 23.208193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376900, 39.076912, 23.098743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230999, -0.147409, 0.961722,
		-0.580979, 0.813784, -0.014813,
		-0.780450, -0.562163, -0.273625,
		33.142765, 38.908264, 23.016657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178169, 39.518864, 23.617874>,  <33.689079, 39.301777, 23.208193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178169, 39.518864, 23.617874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034122, 39.168915, 23.488306>,  <32.947697, 38.958946, 23.410564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034122, 39.168915, 23.488306>,  <33.178169, 39.518864, 23.617874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034122, 39.168915, 23.488306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292458, -0.223844, 0.929711,
		-0.885882, 0.429534, -0.175253,
		-0.360113, -0.874868, -0.323920,
		32.926090, 38.906456, 23.391130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523273, 39.546207, 23.875679>,  <33.178169, 39.518864, 23.617874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523273, 39.546207, 23.875679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612633, 39.162258, 23.807871>,  <32.666248, 38.931889, 23.767185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612633, 39.162258, 23.807871>,  <32.523273, 39.546207, 23.875679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612633, 39.162258, 23.807871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307384, -0.234417, 0.922260,
		-0.924992, -0.153920, -0.347417,
		0.223395, -0.959873, -0.169522,
		32.679649, 38.874294, 23.757015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932169, 39.211796, 23.950466>,  <32.523273, 39.546207, 23.875679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932169, 39.211796, 23.950466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224789, 38.946980, 24.015621>,  <32.400360, 38.788090, 24.054714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224789, 38.946980, 24.015621>,  <31.932169, 39.211796, 23.950466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224789, 38.946980, 24.015621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309417, -0.109496, 0.944601,
		-0.607530, -0.741425, -0.284949,
		0.731551, -0.662042, 0.162888,
		32.444256, 38.748367, 24.064487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640322, 38.818390, 24.470940>,  <31.932169, 39.211796, 23.950466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640322, 38.818390, 24.470940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026390, 38.713974, 24.477852>,  <32.258030, 38.651325, 24.481998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026390, 38.713974, 24.477852>,  <31.640322, 38.818390, 24.470940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026390, 38.713974, 24.477852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058493, -0.150952, 0.986809,
		-0.254993, -0.953451, -0.160964,
		0.965172, -0.261045, 0.017278,
		32.315941, 38.635662, 24.483036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641140, 38.127491, 24.990356>,  <31.640322, 38.818390, 24.470940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641140, 38.127491, 24.990356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000492, 38.299023, 24.952377>,  <32.216103, 38.401943, 24.929590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000492, 38.299023, 24.952377>,  <31.641140, 38.127491, 24.990356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000492, 38.299023, 24.952377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172894, -0.146560, 0.973975,
		0.403759, -0.891415, -0.205810,
		0.898380, 0.428834, -0.094946,
		32.270004, 38.427673, 24.923893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076187, 37.710419, 25.363935>,  <31.641140, 38.127491, 24.990356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076187, 37.710419, 25.363935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267799, 38.060692, 25.339584>,  <32.382767, 38.270855, 25.324974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267799, 38.060692, 25.339584>,  <32.076187, 37.710419, 25.363935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267799, 38.060692, 25.339584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253733, -0.071739, 0.964610,
		0.840327, -0.477525, -0.256555,
		0.479031, 0.875684, -0.060879,
		32.411510, 38.323399, 25.321321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749065, 37.565697, 25.646000>,  <32.076187, 37.710419, 25.363935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749065, 37.565697, 25.646000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686531, 37.960159, 25.668121>,  <32.649010, 38.196838, 25.681395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686531, 37.960159, 25.668121>,  <32.749065, 37.565697, 25.646000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686531, 37.960159, 25.668121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231279, -0.017888, 0.972723,
		0.960245, 0.164858, -0.225280,
		-0.156332, 0.986155, 0.055305,
		32.639633, 38.256004, 25.684713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196083, 37.843346, 26.061708>,  <32.749065, 37.565697, 25.646000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196083, 37.843346, 26.061708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917477, 38.129448, 26.084604>,  <32.750313, 38.301109, 26.098343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917477, 38.129448, 26.084604>,  <33.196083, 37.843346, 26.061708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917477, 38.129448, 26.084604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240613, 0.157662, 0.957731,
		0.675999, 0.680845, -0.281914,
		-0.696513, 0.715257, 0.057240,
		32.708523, 38.344025, 26.101776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393909, 38.227467, 26.715950>,  <33.196083, 37.843346, 26.061708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393909, 38.227467, 26.715950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050144, 38.414223, 26.632597>,  <32.843884, 38.526276, 26.582586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050144, 38.414223, 26.632597>,  <33.393909, 38.227467, 26.715950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050144, 38.414223, 26.632597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024014, 0.370255, 0.928620,
		0.510719, 0.803071, -0.306990,
		-0.859412, 0.466892, -0.208381,
		32.792320, 38.554291, 26.570082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485355, 38.900738, 26.793974>,  <33.393909, 38.227467, 26.715950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485355, 38.900738, 26.793974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103012, 38.807037, 26.864929>,  <32.873608, 38.750816, 26.907503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103012, 38.807037, 26.864929>,  <33.485355, 38.900738, 26.793974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103012, 38.807037, 26.864929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097405, 0.316951, 0.943427,
		-0.277225, 0.919058, -0.280141,
		-0.955855, -0.234254, 0.177388,
		32.816257, 38.736759, 26.918146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148651, 39.500393, 27.053623>,  <33.485355, 38.900738, 26.793974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148651, 39.500393, 27.053623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985641, 39.155952, 27.175230>,  <32.887836, 38.949287, 27.248194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985641, 39.155952, 27.175230>,  <33.148651, 39.500393, 27.053623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985641, 39.155952, 27.175230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194900, 0.243230, 0.950186,
		-0.892153, 0.446479, 0.068706,
		-0.407526, -0.861102, 0.304017,
		32.863384, 38.897621, 27.266436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103981, 40.317944, 26.778316>,  <33.148651, 39.500393, 27.053623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103981, 40.317944, 26.778316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086361, 40.717369, 26.766075>,  <33.075787, 40.957024, 26.758730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086361, 40.717369, 26.766075>,  <33.103981, 40.317944, 26.778316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086361, 40.717369, 26.766075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084294, -0.034240, -0.995852,
		-0.995467, -0.041289, 0.085681,
		-0.044052, 0.998560, -0.030605,
		33.073147, 41.016937, 26.756893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495983, 40.520664, 26.315548>,  <33.103981, 40.317944, 26.778316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495983, 40.520664, 26.315548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766590, 40.815212, 26.311945>,  <32.928955, 40.991940, 26.309782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766590, 40.815212, 26.311945>,  <32.495983, 40.520664, 26.315548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766590, 40.815212, 26.311945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115418, 0.093941, -0.988865,
		-0.727322, 0.670028, 0.148543,
		0.676522, 0.736368, -0.009008,
		32.969547, 41.036121, 26.309242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282547, 40.958767, 25.793182>,  <32.495983, 40.520664, 26.315548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282547, 40.958767, 25.793182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648243, 41.112381, 25.844860>,  <32.867661, 41.204548, 25.875866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648243, 41.112381, 25.844860>,  <32.282547, 40.958767, 25.793182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648243, 41.112381, 25.844860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009275, 0.338601, -0.940884,
		-0.405078, 0.858991, 0.313123,
		0.914235, 0.384036, 0.129192,
		32.922512, 41.227592, 25.883617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252792, 41.653893, 25.532423>,  <32.282547, 40.958767, 25.793182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252792, 41.653893, 25.532423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645340, 41.578011, 25.520273>,  <32.880871, 41.532482, 25.512983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645340, 41.578011, 25.520273>,  <32.252792, 41.653893, 25.532423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645340, 41.578011, 25.520273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008112, 0.198881, -0.979990,
		0.191947, 0.961488, 0.196715,
		0.981372, -0.189702, -0.030375,
		32.939751, 41.521099, 25.511160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548450, 42.235661, 25.212545>,  <32.252792, 41.653893, 25.532423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548450, 42.235661, 25.212545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816910, 41.939529, 25.197126>,  <32.977985, 41.761852, 25.187874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816910, 41.939529, 25.197126>,  <32.548450, 42.235661, 25.212545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816910, 41.939529, 25.197126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110826, 0.151615, -0.982207,
		0.732995, 0.654931, 0.183803,
		0.671145, -0.740323, -0.038549,
		33.018253, 41.717434, 25.185562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065098, 42.509567, 24.895798>,  <32.548450, 42.235661, 25.212545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065098, 42.509567, 24.895798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125004, 42.118996, 24.833626>,  <33.160946, 41.884651, 24.796322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125004, 42.118996, 24.833626>,  <33.065098, 42.509567, 24.895798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125004, 42.118996, 24.833626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028608, 0.161418, -0.986471,
		0.988308, 0.143289, 0.052108,
		0.149762, -0.976428, -0.155432,
		33.169933, 41.826069, 24.786997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566124, 42.546940, 24.487349>,  <33.065098, 42.509567, 24.895798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566124, 42.546940, 24.487349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429237, 42.174500, 24.436844>,  <33.347103, 41.951035, 24.406540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429237, 42.174500, 24.436844>,  <33.566124, 42.546940, 24.487349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429237, 42.174500, 24.436844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163098, 0.073473, -0.983870,
		0.925357, -0.357292, 0.126716,
		-0.342219, -0.931098, -0.126263,
		33.326572, 41.895168, 24.398966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958153, 42.246246, 24.012325>,  <33.566124, 42.546940, 24.487349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958153, 42.246246, 24.012325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627254, 42.021664, 24.003984>,  <33.428715, 41.886913, 23.998980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627254, 42.021664, 24.003984>,  <33.958153, 42.246246, 24.012325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627254, 42.021664, 24.003984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045188, -0.029490, -0.998543,
		0.560027, -0.826978, 0.049766,
		-0.827241, -0.561460, -0.020854,
		33.379082, 41.853226, 23.997728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087532, 41.797447, 23.520203>,  <33.958153, 42.246246, 24.012325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087532, 41.797447, 23.520203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687962, 41.796116, 23.538670>,  <33.448219, 41.795315, 23.549749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687962, 41.796116, 23.538670>,  <34.087532, 41.797447, 23.520203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687962, 41.796116, 23.538670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046180, 0.003180, -0.998928,
		0.003180, -0.999989, -0.003330,
		0.998928, 0.003330, -0.046170,
		33.388283, 41.795116, 23.552521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990170, 41.587540, 22.921078>,  <34.087532, 41.797447, 23.520203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990170, 41.587540, 22.921078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616234, 41.673378, 23.034229>,  <33.391872, 41.724880, 23.102119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616234, 41.673378, 23.034229>,  <33.990170, 41.587540, 22.921078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616234, 41.673378, 23.034229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275644, 0.063566, -0.959156,
		-0.223817, -0.974631, -0.000271,
		-0.934840, 0.214601, 0.282878,
		33.335781, 41.737759, 23.119093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454132, 41.124344, 22.544798>,  <33.990170, 41.587540, 22.921078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454132, 41.124344, 22.544798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286865, 41.469074, 22.659613>,  <33.186504, 41.675915, 22.728500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286865, 41.469074, 22.659613>,  <33.454132, 41.124344, 22.544798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286865, 41.469074, 22.659613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273303, 0.181981, -0.944557,
		-0.866281, -0.473428, 0.159443,
		-0.418165, 0.861829, 0.287036,
		33.161415, 41.727623, 22.745724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767063, 41.130043, 22.347456>,  <33.454132, 41.124344, 22.544798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767063, 41.130043, 22.347456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866867, 41.516262, 22.377001>,  <32.926750, 41.747993, 22.394728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866867, 41.516262, 22.377001>,  <32.767063, 41.130043, 22.347456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866867, 41.516262, 22.377001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241374, 0.135876, -0.960873,
		-0.937808, 0.221919, 0.266961,
		0.249510, 0.965552, 0.073860,
		32.941719, 41.805927, 22.399158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254425, 41.481216, 22.083447>,  <32.767063, 41.130043, 22.347456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254425, 41.481216, 22.083447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553665, 41.746349, 22.070810>,  <32.733212, 41.905430, 22.063229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553665, 41.746349, 22.070810>,  <32.254425, 41.481216, 22.083447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553665, 41.746349, 22.070810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268428, 0.258737, -0.927902,
		-0.606868, 0.702646, 0.371484,
		0.748103, 0.662830, -0.031591,
		32.778095, 41.945198, 22.061333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973232, 42.012470, 21.796698>,  <32.254425, 41.481216, 22.083447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973232, 42.012470, 21.796698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359692, 42.097221, 21.737825>,  <32.591568, 42.148071, 21.702501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359692, 42.097221, 21.737825>,  <31.973232, 42.012470, 21.796698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359692, 42.097221, 21.737825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191725, 0.207983, -0.959158,
		-0.172610, 0.954910, 0.241564,
		0.966151, 0.211874, -0.147180,
		32.649536, 42.160782, 21.693672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975460, 42.826756, 21.670820>,  <31.973232, 42.012470, 21.796698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975460, 42.826756, 21.670820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299789, 42.634686, 21.536957>,  <32.494385, 42.519444, 21.456638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299789, 42.634686, 21.536957>,  <31.975460, 42.826756, 21.670820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299789, 42.634686, 21.536957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274789, 0.192542, -0.942029,
		0.516778, 0.855778, 0.024170,
		0.810821, -0.480179, -0.334660,
		32.543037, 42.490631, 21.436558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202988, 43.136486, 21.101622>,  <31.975460, 42.826756, 21.670820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202988, 43.136486, 21.101622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408943, 42.798004, 21.046743>,  <32.532516, 42.594913, 21.013817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408943, 42.798004, 21.046743>,  <32.202988, 43.136486, 21.101622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408943, 42.798004, 21.046743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088826, 0.106513, -0.990336,
		0.852641, 0.522101, -0.020322,
		0.514891, -0.846206, -0.137194,
		32.563412, 42.544144, 21.005585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785358, 43.244717, 20.560614>,  <32.202988, 43.136486, 21.101622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785358, 43.244717, 20.560614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730598, 42.848656, 20.572311>,  <32.697742, 42.611019, 20.579330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730598, 42.848656, 20.572311>,  <32.785358, 43.244717, 20.560614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730598, 42.848656, 20.572311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076092, -0.039944, -0.996300,
		0.987658, -0.134165, 0.080811,
		-0.136897, -0.990153, 0.029242,
		32.689529, 42.551609, 20.581083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351826, 42.905266, 20.323402>,  <32.785358, 43.244717, 20.560614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351826, 42.905266, 20.323402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065838, 42.635021, 20.251431>,  <32.894245, 42.472874, 20.208248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065838, 42.635021, 20.251431>,  <33.351826, 42.905266, 20.323402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065838, 42.635021, 20.251431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135626, 0.118440, -0.983655,
		0.685877, -0.727684, 0.006950,
		-0.714967, -0.675609, -0.179928,
		32.851349, 42.432339, 20.197453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584637, 42.397228, 19.709078>,  <33.351826, 42.905266, 20.323402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584637, 42.397228, 19.709078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188633, 42.350025, 19.739933>,  <32.951031, 42.321701, 19.758446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188633, 42.350025, 19.739933>,  <33.584637, 42.397228, 19.709078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188633, 42.350025, 19.739933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073798, -0.032434, -0.996746,
		0.120130, -0.992482, 0.023402,
		-0.990012, -0.118012, 0.077139,
		32.891628, 42.314621, 19.763075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503269, 41.864552, 19.283152>,  <33.584637, 42.397228, 19.709078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503269, 41.864552, 19.283152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138245, 42.026123, 19.308699>,  <32.919231, 42.123066, 19.324028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138245, 42.026123, 19.308699>,  <33.503269, 41.864552, 19.283152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138245, 42.026123, 19.308699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054995, 0.033547, -0.997923,
		-0.405236, -0.914173, -0.008399,
		-0.912557, 0.403933, 0.063869,
		32.864479, 42.147301, 19.327860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144775, 41.517033, 18.842281>,  <33.503269, 41.864552, 19.283152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144775, 41.517033, 18.842281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878796, 41.812687, 18.885227>,  <32.719208, 41.990078, 18.910994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878796, 41.812687, 18.885227>,  <33.144775, 41.517033, 18.842281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878796, 41.812687, 18.885227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322870, -0.154841, -0.933691,
		-0.673498, -0.655520, 0.341605,
		-0.664948, 0.739133, 0.107363,
		32.679310, 42.034428, 18.917437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397282, 41.257355, 18.633188>,  <33.144775, 41.517033, 18.842281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397282, 41.257355, 18.633188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448704, 41.649815, 18.575481>,  <32.479557, 41.885292, 18.540857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448704, 41.649815, 18.575481>,  <32.397282, 41.257355, 18.633188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448704, 41.649815, 18.575481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320967, -0.096478, -0.942164,
		-0.938325, 0.167428, 0.302514,
		0.128558, 0.981152, -0.144267,
		32.487270, 41.944160, 18.532202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846800, 41.398125, 18.170191>,  <32.397282, 41.257355, 18.633188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846800, 41.398125, 18.170191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102585, 41.704662, 18.145506>,  <32.256058, 41.888584, 18.130695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102585, 41.704662, 18.145506>,  <31.846800, 41.398125, 18.170191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102585, 41.704662, 18.145506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253151, 0.134086, -0.958090,
		-0.725949, 0.628285, 0.279743,
		0.639463, 0.766341, -0.061712,
		32.294422, 41.934566, 18.126993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463333, 41.871193, 17.814013>,  <31.846800, 41.398125, 18.170191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463333, 41.871193, 17.814013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848667, 41.970787, 17.774027>,  <32.079868, 42.030544, 17.750036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848667, 41.970787, 17.774027>,  <31.463333, 41.871193, 17.814013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848667, 41.970787, 17.774027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141571, 0.155228, -0.977682,
		-0.227908, 0.955988, 0.184785,
		0.963336, 0.248981, -0.099963,
		32.137669, 42.045483, 17.744038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465206, 42.314247, 17.226217>,  <31.463333, 41.871193, 17.814013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465206, 42.314247, 17.226217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846096, 42.195129, 17.253300>,  <32.074631, 42.123661, 17.269550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846096, 42.195129, 17.253300>,  <31.465206, 42.314247, 17.226217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846096, 42.195129, 17.253300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146055, 0.249363, -0.957333,
		0.268203, 0.921487, 0.280944,
		0.952227, -0.297792, 0.067708,
		32.131763, 42.105793, 17.273611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854862, 42.798286, 16.849113>,  <31.465206, 42.314247, 17.226217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854862, 42.798286, 16.849113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105255, 42.487705, 16.878145>,  <32.255489, 42.301357, 16.895565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105255, 42.487705, 16.878145>,  <31.854862, 42.798286, 16.849113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105255, 42.487705, 16.878145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382694, 0.224766, -0.896117,
		0.679478, 0.588730, 0.437843,
		0.625983, -0.776452, 0.072580,
		32.293049, 42.254768, 16.899920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597118, 43.015472, 16.582975>,  <31.854862, 42.798286, 16.849113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597118, 43.015472, 16.582975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559544, 42.617287, 16.577002>,  <32.536999, 42.378376, 16.573418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559544, 42.617287, 16.577002>,  <32.597118, 43.015472, 16.582975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559544, 42.617287, 16.577002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338856, -0.017862, -0.940669,
		0.936137, -0.093420, 0.338998,
		-0.093933, -0.995467, -0.014934,
		32.531364, 42.318645, 16.572521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055222, 42.844669, 16.038015>,  <32.597118, 43.015472, 16.582975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055222, 42.844669, 16.038015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869484, 42.494511, 16.091766>,  <32.758041, 42.284416, 16.124018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869484, 42.494511, 16.091766>,  <33.055222, 42.844669, 16.038015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869484, 42.494511, 16.091766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315636, -0.305336, -0.898412,
		0.827501, -0.374758, 0.418089,
		-0.464344, -0.875401, 0.134379,
		32.730179, 42.231892, 16.132080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518257, 42.266769, 15.949727>,  <33.055222, 42.844669, 16.038015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518257, 42.266769, 15.949727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153713, 42.116898, 15.881572>,  <32.934986, 42.026974, 15.840678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153713, 42.116898, 15.881572>,  <33.518257, 42.266769, 15.949727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153713, 42.116898, 15.881572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324287, -0.398675, -0.857844,
		0.253489, -0.837061, 0.484842,
		-0.911363, -0.374682, -0.170388,
		32.880306, 42.004494, 15.830456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749866, 41.710876, 15.581761>,  <33.518257, 42.266769, 15.949727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749866, 41.710876, 15.581761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354767, 41.698627, 15.520565>,  <33.117706, 41.691280, 15.483848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354767, 41.698627, 15.520565>,  <33.749866, 41.710876, 15.581761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354767, 41.698627, 15.520565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154800, -0.314883, -0.936422,
		-0.019501, -0.948636, 0.315767,
		-0.987753, -0.030619, -0.152990,
		33.058441, 41.689442, 15.474668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617874, 41.042915, 15.354467>,  <33.749866, 41.710876, 15.581761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617874, 41.042915, 15.354467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325237, 41.272614, 15.207488>,  <33.149654, 41.410435, 15.119300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325237, 41.272614, 15.207488>,  <33.617874, 41.042915, 15.354467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325237, 41.272614, 15.207488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330182, -0.173100, -0.927909,
		-0.596455, -0.800172, -0.062969,
		-0.731588, 0.574248, -0.367449,
		33.105762, 41.444889, 15.097253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358753, 40.640186, 14.840744>,  <33.617874, 41.042915, 15.354467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358753, 40.640186, 14.840744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259392, 41.017361, 14.752054>,  <33.199776, 41.243668, 14.698840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259392, 41.017361, 14.752054>,  <33.358753, 40.640186, 14.840744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259392, 41.017361, 14.752054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474797, -0.080994, -0.876361,
		-0.844314, -0.322962, -0.427586,
		-0.248399, 0.942940, -0.221725,
		33.184872, 41.300243, 14.685536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394894, 40.574600, 14.159926>,  <33.358753, 40.640186, 14.840744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394894, 40.574600, 14.159926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380665, 40.968880, 14.225822>,  <33.372128, 41.205448, 14.265360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380665, 40.968880, 14.225822>,  <33.394894, 40.574600, 14.159926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380665, 40.968880, 14.225822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402718, 0.165005, -0.900328,
		-0.914632, 0.034319, -0.402827,
		-0.035570, 0.985695, 0.164740,
		33.369995, 41.264587, 14.275245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955582, 40.887051, 13.610852>,  <33.394894, 40.574600, 14.159926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955582, 40.887051, 13.610852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209808, 41.157951, 13.759114>,  <33.362347, 41.320492, 13.848071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209808, 41.157951, 13.759114>,  <32.955582, 40.887051, 13.610852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209808, 41.157951, 13.759114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311634, 0.214200, -0.925744,
		-0.706353, 0.703884, -0.074915,
		0.635570, 0.677248, 0.370655,
		33.400478, 41.361126, 13.870311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903599, 41.443176, 13.075856>,  <32.955582, 40.887051, 13.610852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903599, 41.443176, 13.075856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236866, 41.481384, 13.293736>,  <33.436829, 41.504311, 13.424465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236866, 41.481384, 13.293736>,  <32.903599, 41.443176, 13.075856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236866, 41.481384, 13.293736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541821, 0.056165, -0.838615,
		-0.110697, 0.993842, -0.004959,
		0.833172, 0.095520, 0.544702,
		33.486816, 41.510040, 13.457147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244877, 42.023064, 12.766799>,  <32.903599, 41.443176, 13.075856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244877, 42.023064, 12.766799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520924, 41.812820, 12.965789>,  <33.686550, 41.686676, 13.085182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520924, 41.812820, 12.965789>,  <33.244877, 42.023064, 12.766799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520924, 41.812820, 12.965789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620396, 0.075734, -0.780623,
		0.372622, 0.847352, 0.378348,
		0.690117, -0.525603, 0.497474,
		33.727959, 41.655140, 13.115031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911205, 42.312962, 12.544017>,  <33.244877, 42.023064, 12.766799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911205, 42.312962, 12.544017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014709, 41.957916, 12.696425>,  <34.076813, 41.744888, 12.787870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014709, 41.957916, 12.696425>,  <33.911205, 42.312962, 12.544017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014709, 41.957916, 12.696425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679981, -0.112771, -0.724506,
		0.686052, 0.446564, 0.574381,
		0.258764, -0.887617, 0.381022,
		34.092339, 41.691631, 12.810732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698284, 42.287579, 12.790838>,  <33.911205, 42.312962, 12.544017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698284, 42.287579, 12.790838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548737, 41.937599, 12.667755>,  <34.459007, 41.727612, 12.593905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548737, 41.937599, 12.667755>,  <34.698284, 42.287579, 12.790838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548737, 41.937599, 12.667755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707688, -0.054666, -0.704407,
		0.599500, -0.481115, 0.639631,
		-0.373867, -0.874951, -0.307707,
		34.436577, 41.675114, 12.575443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985603, 42.583530, 12.211316>,  <34.698284, 42.287579, 12.790838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985603, 42.583530, 12.211316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350304, 42.747536, 12.221183>,  <35.569122, 42.845940, 12.227103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350304, 42.747536, 12.221183>,  <34.985603, 42.583530, 12.211316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350304, 42.747536, 12.221183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019677, -0.103583, 0.994426,
		0.410283, -0.906179, -0.102509,
		0.911746, 0.410013, 0.024668,
		35.623829, 42.870541, 12.228583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423397, 42.185177, 12.777307>,  <34.985603, 42.583530, 12.211316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423397, 42.185177, 12.777307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581722, 42.547363, 12.716028>,  <35.676716, 42.764675, 12.679261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581722, 42.547363, 12.716028>,  <35.423397, 42.185177, 12.777307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581722, 42.547363, 12.716028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164047, 0.094422, 0.981923,
		0.903560, -0.413788, -0.111165,
		0.395812, 0.905463, -0.153196,
		35.700466, 42.819004, 12.670070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963413, 42.178902, 13.236694>,  <35.423397, 42.185177, 12.777307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963413, 42.178902, 13.236694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896370, 42.563858, 13.151175>,  <35.856144, 42.794830, 13.099862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896370, 42.563858, 13.151175>,  <35.963413, 42.178902, 13.236694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896370, 42.563858, 13.151175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185485, 0.243780, 0.951928,
		0.968247, 0.119897, -0.219369,
		-0.167611, 0.962391, -0.213800,
		35.846088, 42.852573, 13.087034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547443, 42.511520, 13.506377>,  <35.963413, 42.178902, 13.236694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547443, 42.511520, 13.506377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281288, 42.807156, 13.464410>,  <36.121593, 42.984535, 13.439229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281288, 42.807156, 13.464410>,  <36.547443, 42.511520, 13.506377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281288, 42.807156, 13.464410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151379, 0.271220, 0.950539,
		0.730989, 0.616594, -0.292348,
		-0.665387, 0.739089, -0.104919,
		36.081673, 43.028881, 13.432934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821957, 43.101597, 13.916945>,  <36.547443, 42.511520, 13.506377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821957, 43.101597, 13.916945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426224, 43.141380, 13.874382>,  <36.188782, 43.165249, 13.848845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426224, 43.141380, 13.874382>,  <36.821957, 43.101597, 13.916945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426224, 43.141380, 13.874382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066925, 0.338449, 0.938602,
		0.129367, 0.935713, -0.328183,
		-0.989336, 0.099460, -0.106407,
		36.129421, 43.171219, 13.842460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623566, 43.677013, 14.298629>,  <36.821957, 43.101597, 13.916945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623566, 43.677013, 14.298629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268826, 43.492798, 14.283711>,  <36.055981, 43.382267, 14.274761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268826, 43.492798, 14.283711>,  <36.623566, 43.677013, 14.298629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268826, 43.492798, 14.283711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218816, 0.347536, 0.911777,
		-0.406949, 0.816775, -0.408988,
		-0.886855, -0.460540, -0.037294,
		36.002769, 43.354637, 14.272523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378963, 44.085999, 14.763327>,  <36.623566, 43.677013, 14.298629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378963, 44.085999, 14.763327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139709, 43.772781, 14.695123>,  <35.996155, 43.584850, 14.654201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139709, 43.772781, 14.695123>,  <36.378963, 44.085999, 14.763327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139709, 43.772781, 14.695123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343091, 0.057929, 0.937514,
		-0.724237, 0.619263, -0.303304,
		-0.598138, -0.783044, -0.170509,
		35.960270, 43.537868, 14.643970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703793, 44.244736, 14.974961>,  <36.378963, 44.085999, 14.763327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703793, 44.244736, 14.974961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710655, 43.846054, 15.006668>,  <35.714775, 43.606846, 15.025692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710655, 43.846054, 15.006668>,  <35.703793, 44.244736, 14.974961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710655, 43.846054, 15.006668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344152, 0.068548, 0.936408,
		-0.938757, -0.043347, -0.341842,
		0.017158, -0.996706, 0.079268,
		35.715801, 43.547043, 15.030449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077847, 43.990330, 15.296762>,  <35.703793, 44.244736, 14.974961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077847, 43.990330, 15.296762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339500, 43.695011, 15.362520>,  <35.496490, 43.517818, 15.401976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339500, 43.695011, 15.362520>,  <35.077847, 43.990330, 15.296762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339500, 43.695011, 15.362520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253168, -0.008901, 0.967381,
		-0.712754, -0.674414, -0.192737,
		0.654131, -0.738300, 0.164396,
		35.535740, 43.473522, 15.411839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766651, 43.729866, 15.844810>,  <35.077847, 43.990330, 15.296762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766651, 43.729866, 15.844810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099380, 43.508171, 15.856711>,  <35.299019, 43.375153, 15.863853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099380, 43.508171, 15.856711>,  <34.766651, 43.729866, 15.844810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099380, 43.508171, 15.856711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186613, -0.228781, 0.955424,
		-0.522728, -0.800297, -0.293735,
		0.831824, -0.554241, 0.029755,
		35.348927, 43.341900, 15.865638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561993, 43.048267, 16.099092>,  <34.766651, 43.729866, 15.844810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561993, 43.048267, 16.099092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952477, 43.079155, 16.180138>,  <35.186768, 43.097687, 16.228765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952477, 43.079155, 16.180138>,  <34.561993, 43.048267, 16.099092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952477, 43.079155, 16.180138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162263, -0.359655, 0.918868,
		0.143825, -0.929885, -0.338569,
		0.976210, 0.077219, 0.202613,
		35.245338, 43.102322, 16.240921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647530, 42.569603, 16.623478>,  <34.561993, 43.048267, 16.099092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647530, 42.569603, 16.623478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990982, 42.772053, 16.655939>,  <35.197056, 42.893520, 16.675415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990982, 42.772053, 16.655939>,  <34.647530, 42.569603, 16.623478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990982, 42.772053, 16.655939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004415, -0.151010, 0.988522,
		0.512568, -0.849139, -0.127428,
		0.858635, 0.506122, 0.081152,
		35.248573, 42.923889, 16.680285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989662, 42.067348, 17.054857>,  <34.647530, 42.569603, 16.623478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989662, 42.067348, 17.054857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127941, 42.441944, 17.078444>,  <35.210907, 42.666702, 17.092594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127941, 42.441944, 17.078444>,  <34.989662, 42.067348, 17.054857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127941, 42.441944, 17.078444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142441, -0.114483, 0.983160,
		0.927473, -0.331474, -0.172971,
		0.345694, 0.936493, 0.058965,
		35.231651, 42.722893, 17.096132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416691, 42.100864, 17.546093>,  <34.989662, 42.067348, 17.054857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416691, 42.100864, 17.546093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369568, 42.497948, 17.535873>,  <35.341293, 42.736198, 17.529741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369568, 42.497948, 17.535873>,  <35.416691, 42.100864, 17.546093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369568, 42.497948, 17.535873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151811, 0.043432, 0.987455,
		0.981364, 0.112451, -0.155820,
		-0.117808, 0.992707, -0.025551,
		35.334225, 42.795761, 17.528208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945156, 42.356087, 17.959770>,  <35.416691, 42.100864, 17.546093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945156, 42.356087, 17.959770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670727, 42.646767, 17.945919>,  <35.506069, 42.821175, 17.937609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670727, 42.646767, 17.945919>,  <35.945156, 42.356087, 17.959770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670727, 42.646767, 17.945919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004037, 0.043792, 0.999032,
		0.727517, 0.685554, -0.027111,
		-0.686078, 0.726704, -0.034627,
		35.464905, 42.864777, 17.935532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223366, 42.770252, 18.423723>,  <35.945156, 42.356087, 17.959770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223366, 42.770252, 18.423723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844376, 42.888439, 18.374765>,  <35.616982, 42.959351, 18.345390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844376, 42.888439, 18.374765>,  <36.223366, 42.770252, 18.423723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844376, 42.888439, 18.374765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054194, 0.228831, 0.971956,
		0.315190, 0.927542, -0.200800,
		-0.947480, 0.295469, -0.122393,
		35.560131, 42.977081, 18.338047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145245, 43.479050, 18.717373>,  <36.223366, 42.770252, 18.423723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145245, 43.479050, 18.717373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778084, 43.320332, 18.717798>,  <35.557785, 43.225101, 18.718054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778084, 43.320332, 18.717798>,  <36.145245, 43.479050, 18.717373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778084, 43.320332, 18.717798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063362, 0.149222, 0.986772,
		-0.391705, 0.905697, -0.162114,
		-0.917906, -0.396796, 0.001064,
		35.502712, 43.201294, 18.718117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708214, 43.866692, 19.136288>,  <36.145245, 43.479050, 18.717373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708214, 43.866692, 19.136288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514462, 43.516750, 19.137123>,  <35.398209, 43.306786, 19.137625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514462, 43.516750, 19.137123>,  <35.708214, 43.866692, 19.136288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514462, 43.516750, 19.137123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154135, 0.087687, 0.984151,
		-0.861171, 0.476385, -0.177319,
		-0.484383, -0.874854, 0.002086,
		35.369148, 43.254295, 19.137749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041111, 44.055672, 19.425940>,  <35.708214, 43.866692, 19.136288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041111, 44.055672, 19.425940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062431, 43.659008, 19.472866>,  <35.075222, 43.421009, 19.501022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062431, 43.659008, 19.472866>,  <35.041111, 44.055672, 19.425940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062431, 43.659008, 19.472866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276237, 0.098256, 0.956054,
		-0.959610, -0.083364, -0.268697,
		0.053300, -0.991663, 0.117316,
		35.078423, 43.361507, 19.508060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421669, 43.780380, 19.790831>,  <35.041111, 44.055672, 19.425940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421669, 43.780380, 19.790831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695236, 43.494392, 19.848911>,  <34.859375, 43.322800, 19.883759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695236, 43.494392, 19.848911>,  <34.421669, 43.780380, 19.790831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695236, 43.494392, 19.848911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243902, -0.036495, 0.969113,
		-0.687584, -0.698206, -0.199342,
		0.683915, -0.714967, 0.145200,
		34.900410, 43.279903, 19.892471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146713, 43.307648, 20.233894>,  <34.421669, 43.780380, 19.790831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146713, 43.307648, 20.233894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539322, 43.246685, 20.280190>,  <34.774887, 43.210106, 20.307966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539322, 43.246685, 20.280190>,  <34.146713, 43.307648, 20.233894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539322, 43.246685, 20.280190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126054, -0.059817, 0.990218,
		-0.143995, -0.986506, -0.077923,
		0.981517, -0.152409, 0.115739,
		34.833778, 43.200962, 20.314911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199883, 42.674770, 20.538893>,  <34.146713, 43.307648, 20.233894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199883, 42.674770, 20.538893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540726, 42.870358, 20.613531>,  <34.745232, 42.987709, 20.658314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540726, 42.870358, 20.613531>,  <34.199883, 42.674770, 20.538893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540726, 42.870358, 20.613531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137865, -0.134229, 0.981313,
		0.504877, -0.861912, -0.046966,
		0.852111, 0.488968, 0.186597,
		34.796360, 43.017048, 20.669510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657772, 42.254951, 21.040335>,  <34.199883, 42.674770, 20.538893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657772, 42.254951, 21.040335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778202, 42.635895, 21.059820>,  <34.850460, 42.864460, 21.071512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778202, 42.635895, 21.059820>,  <34.657772, 42.254951, 21.040335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778202, 42.635895, 21.059820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098470, -0.081862, 0.991767,
		0.948502, -0.293801, -0.118425,
		0.301076, 0.952355, 0.048715,
		34.868526, 42.921600, 21.074434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091820, 42.293900, 21.632492>,  <34.657772, 42.254951, 21.040335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091820, 42.293900, 21.632492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033363, 42.684185, 21.567221>,  <34.998291, 42.918358, 21.528057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033363, 42.684185, 21.567221>,  <35.091820, 42.293900, 21.632492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033363, 42.684185, 21.567221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312732, 0.202057, 0.928101,
		0.938532, 0.084598, -0.334665,
		-0.146137, 0.975713, -0.163180,
		34.989521, 42.976898, 21.518267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617081, 42.671638, 21.901327>,  <35.091820, 42.293900, 21.632492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617081, 42.671638, 21.901327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299397, 42.914551, 21.909758>,  <35.108788, 43.060299, 21.914816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299397, 42.914551, 21.909758>,  <35.617081, 42.671638, 21.901327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299397, 42.914551, 21.909758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220821, 0.256131, 0.941082,
		0.566099, 0.752071, -0.337522,
		-0.794210, 0.607278, 0.021077,
		35.061134, 43.096733, 21.916080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831936, 43.234028, 22.287792>,  <35.617081, 42.671638, 21.901327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831936, 43.234028, 22.287792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446381, 43.339943, 22.276356>,  <35.215050, 43.403492, 22.269493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446381, 43.339943, 22.276356>,  <35.831936, 43.234028, 22.287792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446381, 43.339943, 22.276356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054038, 0.299573, 0.952542,
		0.260783, 0.916595, -0.303062,
		-0.963884, 0.264784, -0.028592,
		35.157215, 43.419376, 22.267778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752563, 43.991421, 22.591469>,  <35.831936, 43.234028, 22.287792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752563, 43.991421, 22.591469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409210, 43.787594, 22.615194>,  <35.203197, 43.665298, 22.629429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409210, 43.787594, 22.615194>,  <35.752563, 43.991421, 22.591469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409210, 43.787594, 22.615194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124766, 0.319513, 0.939332,
		-0.497603, 0.798908, -0.337842,
		-0.858385, -0.509566, 0.059314,
		35.151695, 43.634724, 22.632988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327038, 44.465820, 22.848677>,  <35.752563, 43.991421, 22.591469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327038, 44.465820, 22.848677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161369, 44.111267, 22.931425>,  <35.061970, 43.898537, 22.981075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161369, 44.111267, 22.931425>,  <35.327038, 44.465820, 22.848677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161369, 44.111267, 22.931425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162221, 0.295529, 0.941460,
		-0.895627, 0.356366, -0.266188,
		-0.414170, -0.886378, 0.206873,
		35.037117, 43.845352, 22.993486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814823, 44.663059, 23.297649>,  <35.327038, 44.465820, 22.848677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814823, 44.663059, 23.297649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819637, 44.269016, 23.366264>,  <34.822525, 44.032593, 23.407433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819637, 44.269016, 23.366264>,  <34.814823, 44.663059, 23.297649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819637, 44.269016, 23.366264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208939, 0.165284, 0.963860,
		-0.977855, -0.047444, -0.203837,
		0.012038, -0.985104, 0.171537,
		34.823250, 43.973484, 23.417725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257381, 44.508060, 23.617886>,  <34.814823, 44.663059, 23.297649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257381, 44.508060, 23.617886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497520, 44.199123, 23.700895>,  <34.641602, 44.013760, 23.750702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497520, 44.199123, 23.700895>,  <34.257381, 44.508060, 23.617886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497520, 44.199123, 23.700895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183731, 0.119351, 0.975704,
		-0.778350, -0.623888, -0.070252,
		0.600346, -0.772347, 0.207524,
		34.677624, 43.967419, 23.763153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869820, 43.908073, 23.964624>,  <34.257381, 44.508060, 23.617886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869820, 43.908073, 23.964624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256386, 43.890369, 24.065876>,  <34.488327, 43.879745, 24.126627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256386, 43.890369, 24.065876>,  <33.869820, 43.908073, 23.964624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256386, 43.890369, 24.065876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251167, 0.045441, 0.966876,
		-0.054304, -0.997986, 0.032796,
		0.966419, -0.044268, 0.253129,
		34.546310, 43.877090, 24.141815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824421, 43.430038, 24.546560>,  <33.869820, 43.908073, 23.964624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824421, 43.430038, 24.546560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165192, 43.639359, 24.554253>,  <34.369656, 43.764950, 24.558868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165192, 43.639359, 24.554253>,  <33.824421, 43.430038, 24.546560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165192, 43.639359, 24.554253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088255, 0.107287, 0.990303,
		0.516166, -0.845365, 0.137585,
		0.851929, 0.523304, 0.019230,
		34.420769, 43.796349, 24.560022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315624, 43.034237, 25.049309>,  <33.824421, 43.430038, 24.546560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315624, 43.034237, 25.049309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423477, 43.418430, 25.021702>,  <34.488190, 43.648949, 25.005138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423477, 43.418430, 25.021702>,  <34.315624, 43.034237, 25.049309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423477, 43.418430, 25.021702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013937, 0.067770, 0.997604,
		0.962862, -0.269949, 0.004887,
		0.269634, 0.960487, -0.069015,
		34.504368, 43.706577, 25.000998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805840, 43.082222, 25.559917>,  <34.315624, 43.034237, 25.049309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805840, 43.082222, 25.559917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724464, 43.463718, 25.471386>,  <34.675640, 43.692616, 25.418266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724464, 43.463718, 25.471386>,  <34.805840, 43.082222, 25.559917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724464, 43.463718, 25.471386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229897, 0.266269, 0.936081,
		0.951714, 0.139556, -0.273433,
		-0.203442, 0.953743, -0.221328,
		34.663433, 43.749840, 25.404987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451599, 43.482868, 25.693178>,  <34.805840, 43.082222, 25.559917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451599, 43.482868, 25.693178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130203, 43.719772, 25.717289>,  <34.937366, 43.861916, 25.731756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130203, 43.719772, 25.717289>,  <35.451599, 43.482868, 25.693178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130203, 43.719772, 25.717289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289808, 0.300687, 0.908625,
		0.520020, 0.747537, -0.413240,
		-0.803486, 0.592264, 0.060279,
		34.889156, 43.897453, 25.735373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729328, 44.074768, 26.030481>,  <35.451599, 43.482868, 25.693178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729328, 44.074768, 26.030481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334587, 44.105415, 26.087412>,  <35.097744, 44.123802, 26.121571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334587, 44.105415, 26.087412>,  <35.729328, 44.074768, 26.030481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334587, 44.105415, 26.087412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153121, 0.161055, 0.974995,
		0.051778, 0.983967, -0.170669,
		-0.986850, 0.076616, 0.142327,
		35.038532, 44.128399, 26.130110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683582, 44.747948, 26.323826>,  <35.729328, 44.074768, 26.030481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683582, 44.747948, 26.323826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349403, 44.542835, 26.402897>,  <35.148895, 44.419765, 26.450340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349403, 44.542835, 26.402897>,  <35.683582, 44.747948, 26.323826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349403, 44.542835, 26.402897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119662, 0.181333, 0.976114,
		-0.536382, 0.839149, -0.090133,
		-0.835449, -0.512785, 0.197678,
		35.098770, 44.389000, 26.462200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389053, 45.125282, 26.786102>,  <35.683582, 44.747948, 26.323826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389053, 45.125282, 26.786102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182041, 44.786846, 26.837179>,  <35.057835, 44.583786, 26.867826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182041, 44.786846, 26.837179>,  <35.389053, 45.125282, 26.786102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182041, 44.786846, 26.837179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040698, 0.173404, 0.984010,
		-0.854699, 0.504053, -0.124175,
		-0.517526, -0.846086, 0.127694,
		35.026783, 44.533020, 26.875488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765057, 45.233303, 27.275347>,  <35.389053, 45.125282, 26.786102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765057, 45.233303, 27.275347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873543, 44.848812, 27.295250>,  <34.938637, 44.618118, 27.307192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873543, 44.848812, 27.295250>,  <34.765057, 45.233303, 27.275347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873543, 44.848812, 27.295250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056126, 0.035815, 0.997781,
		-0.960880, -0.273410, -0.044236,
		0.271219, -0.961230, 0.049759,
		34.954910, 44.560444, 27.310177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340168, 44.903896, 27.814939>,  <34.765057, 45.233303, 27.275347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340168, 44.903896, 27.814939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646065, 44.647327, 27.790478>,  <34.829601, 44.493385, 27.775801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646065, 44.647327, 27.790478>,  <34.340168, 44.903896, 27.814939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646065, 44.647327, 27.790478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010271, -0.107032, 0.994202,
		-0.644253, -0.759681, -0.088440,
		0.764743, -0.641426, -0.061154,
		34.875488, 44.454899, 27.772131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149742, 44.284073, 28.120274>,  <34.340168, 44.903896, 27.814939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149742, 44.284073, 28.120274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546589, 44.333271, 28.129900>,  <34.784698, 44.362789, 28.135675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546589, 44.333271, 28.129900>,  <34.149742, 44.284073, 28.120274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546589, 44.333271, 28.129900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004551, -0.156537, 0.987662,
		0.125245, -0.979984, -0.154743,
		0.992115, 0.122995, 0.024066,
		34.844223, 44.370171, 28.137119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619370, 43.730183, 28.443413>,  <34.149742, 44.284073, 28.120274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619370, 43.730183, 28.443413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776329, 44.090782, 28.516418>,  <34.870506, 44.307144, 28.560223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776329, 44.090782, 28.516418>,  <34.619370, 43.730183, 28.443413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776329, 44.090782, 28.516418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064881, -0.225067, 0.972181,
		0.917503, -0.369644, -0.146807,
		0.392402, 0.901503, 0.182516,
		34.894051, 44.361233, 28.571173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281357, 43.688099, 28.803841>,  <34.619370, 43.730183, 28.443413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281357, 43.688099, 28.803841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149639, 44.051231, 28.907692>,  <35.070610, 44.269112, 28.970003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149639, 44.051231, 28.907692>,  <35.281357, 43.688099, 28.803841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149639, 44.051231, 28.907692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006257, -0.277056, 0.960833,
		0.944207, 0.314771, 0.096913,
		-0.329293, 0.907832, 0.259629,
		35.050850, 44.323582, 28.985580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838184, 44.081364, 29.259415>,  <35.281357, 43.688099, 28.803841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838184, 44.081364, 29.259415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445621, 44.150509, 29.292799>,  <35.210083, 44.191998, 29.312830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445621, 44.150509, 29.292799>,  <35.838184, 44.081364, 29.259415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445621, 44.150509, 29.292799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029297, -0.564585, 0.824855,
		0.189707, 0.807071, 0.559150,
		-0.981404, 0.172862, 0.083461,
		35.151199, 44.202366, 29.317837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612320, 44.225510, 29.962242>,  <35.838184, 44.081364, 29.259415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612320, 44.225510, 29.962242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282997, 44.068386, 29.798353>,  <35.085403, 43.974113, 29.700020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282997, 44.068386, 29.798353>,  <35.612320, 44.225510, 29.962242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282997, 44.068386, 29.798353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087257, -0.625681, 0.775184,
		-0.560853, 0.673963, 0.480851,
		-0.823304, -0.392807, -0.409723,
		35.036007, 43.950542, 29.675436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124634, 44.177513, 30.517597>,  <35.612320, 44.225510, 29.962242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124634, 44.177513, 30.517597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073898, 43.926037, 30.210701>,  <35.043457, 43.775150, 30.026564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073898, 43.926037, 30.210701>,  <35.124634, 44.177513, 30.517597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073898, 43.926037, 30.210701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221704, -0.735952, 0.639705,
		-0.966830, 0.251239, -0.046036,
		-0.126838, -0.628692, -0.767241,
		35.035847, 43.737431, 29.980528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378880, 43.924992, 30.425571>,  <35.124634, 44.177513, 30.517597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378880, 43.924992, 30.425571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673412, 43.683727, 30.302923>,  <34.850132, 43.538971, 30.229334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673412, 43.683727, 30.302923>,  <34.378880, 43.924992, 30.425571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673412, 43.683727, 30.302923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390244, -0.748772, 0.535770,
		-0.552741, -0.274850, -0.786724,
		0.736334, -0.603157, -0.306619,
		34.894314, 43.502781, 30.210938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186443, 43.307468, 30.601015>,  <34.378880, 43.924992, 30.425571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186443, 43.307468, 30.601015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553387, 43.186085, 30.497976>,  <34.773552, 43.113255, 30.436153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553387, 43.186085, 30.497976>,  <34.186443, 43.307468, 30.601015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553387, 43.186085, 30.497976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225593, -0.929540, 0.291656,
		-0.327953, -0.209442, -0.921184,
		0.917363, -0.303463, -0.257597,
		34.828594, 43.095047, 30.420698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963116, 42.695446, 30.275402>,  <34.186443, 43.307468, 30.601015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963116, 42.695446, 30.275402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320541, 42.687527, 30.454803>,  <34.534996, 42.682777, 30.562445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320541, 42.687527, 30.454803>,  <33.963116, 42.695446, 30.275402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320541, 42.687527, 30.454803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198926, -0.913059, 0.356023,
		0.402462, -0.407348, -0.819813,
		0.893562, -0.019796, 0.448503,
		34.588612, 42.681587, 30.589354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233837, 42.134789, 30.007683>,  <33.963116, 42.695446, 30.275402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233837, 42.134789, 30.007683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403854, 42.217777, 30.360113>,  <34.505863, 42.267570, 30.571571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403854, 42.217777, 30.360113>,  <34.233837, 42.134789, 30.007683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403854, 42.217777, 30.360113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247115, -0.909805, 0.333449,
		0.870790, -0.359457, -0.335433,
		0.425039, 0.207474, 0.881077,
		34.531364, 42.280018, 30.624435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515682, 41.547932, 30.078176>,  <34.233837, 42.134789, 30.007683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515682, 41.547932, 30.078176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485954, 41.729580, 30.433311>,  <34.468117, 41.838570, 30.646393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485954, 41.729580, 30.433311>,  <34.515682, 41.547932, 30.078176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485954, 41.729580, 30.433311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162086, -0.883960, 0.438569,
		0.983974, -0.111314, 0.139298,
		-0.074315, 0.454119, 0.887836,
		34.463661, 41.865814, 30.699663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979454, 41.246273, 30.528175>,  <34.515682, 41.547932, 30.078176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979454, 41.246273, 30.528175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642319, 41.414471, 30.662523>,  <34.440037, 41.515388, 30.743132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642319, 41.414471, 30.662523>,  <34.979454, 41.246273, 30.528175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642319, 41.414471, 30.662523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327147, -0.895872, 0.300647,
		0.427316, 0.143518, 0.892638,
		-0.842838, 0.420495, 0.335869,
		34.389469, 41.540619, 30.763285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903717, 40.998226, 31.230247>,  <34.979454, 41.246273, 30.528175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903717, 40.998226, 31.230247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550980, 41.107227, 31.076313>,  <34.339336, 41.172626, 30.983953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550980, 41.107227, 31.076313>,  <34.903717, 40.998226, 31.230247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550980, 41.107227, 31.076313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412936, -0.840325, 0.351195,
		-0.227683, 0.468610, 0.853560,
		-0.881841, 0.272504, -0.384834,
		34.286427, 41.188980, 30.960863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394661, 41.224434, 31.759624>,  <34.903717, 40.998226, 31.230247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394661, 41.224434, 31.759624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242828, 41.025490, 31.447586>,  <34.151730, 40.906124, 31.260363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242828, 41.025490, 31.447586>,  <34.394661, 41.224434, 31.759624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242828, 41.025490, 31.447586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214763, -0.772801, 0.597205,
		-0.899885, 0.394226, 0.186530,
		-0.379585, -0.497356, -0.780097,
		34.128952, 40.876282, 31.213556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318413, 40.630516, 32.012615>,  <34.394661, 41.224434, 31.759624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318413, 40.630516, 32.012615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110970, 40.592518, 31.672728>,  <33.986504, 40.569721, 31.468794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110970, 40.592518, 31.672728>,  <34.318413, 40.630516, 32.012615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110970, 40.592518, 31.672728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387936, -0.859486, 0.332850,
		-0.761940, 0.502255, 0.408884,
		-0.518606, -0.094991, -0.849720,
		33.955387, 40.564022, 31.417812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767296, 40.346199, 32.200085>,  <34.318413, 40.630516, 32.012615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767296, 40.346199, 32.200085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736992, 40.273689, 31.807882>,  <33.718811, 40.230183, 31.572559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736992, 40.273689, 31.807882>,  <33.767296, 40.346199, 32.200085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736992, 40.273689, 31.807882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474334, -0.858398, 0.195346,
		-0.877080, 0.479888, -0.020955,
		-0.075756, -0.181274, -0.980511,
		33.714264, 40.219307, 31.513729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074612, 40.170673, 32.019802>,  <33.767296, 40.346199, 32.200085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074612, 40.170673, 32.019802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313652, 39.996223, 31.750679>,  <33.457077, 39.891552, 31.589207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313652, 39.996223, 31.750679>,  <33.074612, 40.170673, 32.019802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313652, 39.996223, 31.750679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410799, -0.887166, 0.210192,
		-0.688558, 0.150775, -0.709334,
		0.597605, -0.436124, -0.672803,
		33.492935, 39.865387, 31.548838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679703, 39.898880, 31.503651>,  <33.074612, 40.170673, 32.019802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679703, 39.898880, 31.503651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018570, 39.696194, 31.567583>,  <33.221889, 39.574581, 31.605944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018570, 39.696194, 31.567583>,  <32.679703, 39.898880, 31.503651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018570, 39.696194, 31.567583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531202, -0.814292, 0.233991,
		0.011582, -0.283133, -0.959011,
		0.847165, -0.506719, 0.159832,
		33.272720, 39.544178, 31.615532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601852, 39.206867, 31.281689>,  <32.679703, 39.898880, 31.503651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601852, 39.206867, 31.281689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895908, 39.223789, 31.552324>,  <33.072342, 39.233944, 31.714706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895908, 39.223789, 31.552324>,  <32.601852, 39.206867, 31.281689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895908, 39.223789, 31.552324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393703, -0.785845, 0.476913,
		0.551872, -0.616975, -0.561052,
		0.735144, 0.042307, 0.676591,
		33.116451, 39.236481, 31.755301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647213, 38.866817, 30.616604>,  <32.601852, 39.206867, 31.281689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647213, 38.866817, 30.616604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966110, 38.897148, 30.856157>,  <33.157448, 38.915344, 30.999889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966110, 38.897148, 30.856157>,  <32.647213, 38.866817, 30.616604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966110, 38.897148, 30.856157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032808, -0.996056, 0.082433,
		0.602771, -0.046071, -0.796583,
		0.797239, 0.075823, 0.598883,
		33.205280, 38.919895, 31.035822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135696, 38.388538, 30.410908>,  <32.647213, 38.866817, 30.616604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135696, 38.388538, 30.410908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237873, 38.450485, 30.792645>,  <33.299179, 38.487652, 31.021687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237873, 38.450485, 30.792645>,  <33.135696, 38.388538, 30.410908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237873, 38.450485, 30.792645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016232, -0.986261, 0.164392,
		0.966687, -0.057484, -0.249422,
		0.255446, 0.154867, 0.954339,
		33.314507, 38.496944, 31.078947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599400, 37.835636, 30.633142>,  <33.135696, 38.388538, 30.410908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599400, 37.835636, 30.633142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495735, 37.980598, 30.991247>,  <33.433537, 38.067577, 31.206110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495735, 37.980598, 30.991247>,  <33.599400, 37.835636, 30.633142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495735, 37.980598, 30.991247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117755, -0.908161, 0.401717,
		0.958629, 0.209530, 0.192683,
		-0.259159, 0.362409, 0.895263,
		33.417988, 38.089321, 31.259827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194981, 37.697403, 31.065170>,  <33.599400, 37.835636, 30.633142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194981, 37.697403, 31.065170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891567, 37.767570, 31.316200>,  <33.709518, 37.809673, 31.466818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891567, 37.767570, 31.316200>,  <34.194981, 37.697403, 31.065170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891567, 37.767570, 31.316200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254885, -0.806477, 0.533507,
		0.599712, 0.564644, 0.567030,
		-0.758537, 0.175423, 0.627573,
		33.664005, 37.820198, 31.504473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422199, 37.721180, 31.809265>,  <34.194981, 37.697403, 31.065170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422199, 37.721180, 31.809265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041107, 37.605602, 31.771700>,  <33.812454, 37.536255, 31.749161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041107, 37.605602, 31.771700>,  <34.422199, 37.721180, 31.809265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041107, 37.605602, 31.771700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115934, -0.631454, 0.766697,
		-0.280839, 0.719565, 0.635103,
		-0.952727, -0.288949, -0.093915,
		33.755287, 37.518917, 31.743525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006443, 38.283836, 31.859297>,  <34.422199, 37.721180, 31.809265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006443, 38.283836, 31.859297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981480, 38.334274, 31.463276>,  <34.966499, 38.364536, 31.225664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981480, 38.334274, 31.463276>,  <35.006443, 38.283836, 31.859297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981480, 38.334274, 31.463276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987692, -0.134747, -0.079425,
		-0.143422, -0.982824, -0.116134,
		-0.062412, 0.126096, -0.990053,
		34.962757, 38.372105, 31.166260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948399, 38.416523, 32.618435>,  <35.006443, 38.283836, 31.859297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948399, 38.416523, 32.618435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254364, 38.631985, 32.477146>,  <35.437943, 38.761261, 32.392372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254364, 38.631985, 32.477146>,  <34.948399, 38.416523, 32.618435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254364, 38.631985, 32.477146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445313, -0.045988, 0.894193,
		0.465414, -0.841273, -0.275045,
		0.764909, 0.538651, -0.353226,
		35.483837, 38.793579, 32.371178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827744, 37.860970, 33.047516>,  <34.948399, 38.416523, 32.618435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827744, 37.860970, 33.047516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220959, 37.815254, 33.104897>,  <35.456886, 37.787827, 33.139324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220959, 37.815254, 33.104897>,  <34.827744, 37.860970, 33.047516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220959, 37.815254, 33.104897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005350, -0.763928, -0.645280,
		0.183336, 0.635101, -0.750357,
		0.983036, -0.114289, 0.143453,
		35.515869, 37.780968, 33.147934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107140, 37.546116, 32.408649>,  <34.827744, 37.860970, 33.047516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107140, 37.546116, 32.408649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342861, 37.460724, 32.720325>,  <35.484295, 37.409489, 32.907333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342861, 37.460724, 32.720325>,  <35.107140, 37.546116, 32.408649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342861, 37.460724, 32.720325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152208, -0.917849, -0.366587,
		0.793442, 0.334632, -0.508401,
		0.589307, -0.213483, 0.779194,
		35.519653, 37.396679, 32.954082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852345, 37.335129, 32.367378>,  <35.107140, 37.546116, 32.408649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852345, 37.335129, 32.367378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168964, 37.093330, 32.331512>,  <36.358936, 36.948254, 32.309994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168964, 37.093330, 32.331512>,  <35.852345, 37.335129, 32.367378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168964, 37.093330, 32.331512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481760, 0.526985, 0.700139,
		-0.375975, -0.597392, 0.708354,
		0.791549, -0.604491, -0.089667,
		36.406429, 36.911983, 32.304611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042873, 36.988453, 33.080509>,  <35.852345, 37.335129, 32.367378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042873, 36.988453, 33.080509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344940, 37.068893, 32.830936>,  <36.526180, 37.117157, 32.681194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344940, 37.068893, 32.830936>,  <36.042873, 36.988453, 33.080509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344940, 37.068893, 32.830936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462344, 0.511347, 0.724405,
		0.464717, -0.835515, 0.293177,
		0.755166, 0.201095, -0.623927,
		36.571491, 37.129223, 32.643757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688557, 36.801449, 33.450321>,  <36.042873, 36.988453, 33.080509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688557, 36.801449, 33.450321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712818, 37.110256, 33.197243>,  <36.727375, 37.295540, 33.045395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712818, 37.110256, 33.197243>,  <36.688557, 36.801449, 33.450321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712818, 37.110256, 33.197243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375035, 0.569794, 0.731220,
		0.925024, -0.281637, -0.254973,
		0.060656, 0.772020, -0.632697,
		36.731014, 37.341862, 33.007435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285458, 37.026886, 33.630985>,  <36.688557, 36.801449, 33.450321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285458, 37.026886, 33.630985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134785, 37.356129, 33.460991>,  <37.044380, 37.553673, 33.358994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134785, 37.356129, 33.460991>,  <37.285458, 37.026886, 33.630985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134785, 37.356129, 33.460991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434832, 0.562201, 0.703457,
		0.817944, 0.080184, -0.569683,
		-0.376682, 0.823105, -0.424982,
		37.021782, 37.603062, 33.333496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852814, 37.366337, 33.258034>,  <37.285458, 37.026886, 33.630985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852814, 37.366337, 33.258034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560879, 37.602715, 33.395512>,  <37.385715, 37.744541, 33.477997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560879, 37.602715, 33.395512>,  <37.852814, 37.366337, 33.258034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560879, 37.602715, 33.395512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676672, 0.552995, 0.486120,
		0.097209, 0.587355, -0.803470,
		-0.729840, 0.590941, 0.343691,
		37.341927, 37.779995, 33.498619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991150, 38.039955, 33.024860>,  <37.852814, 37.366337, 33.258034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991150, 38.039955, 33.024860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806026, 38.004864, 33.377705>,  <37.694954, 37.983810, 33.589409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806026, 38.004864, 33.377705>,  <37.991150, 38.039955, 33.024860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806026, 38.004864, 33.377705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824235, 0.323660, 0.464629,
		-0.326263, 0.942098, -0.077486,
		-0.462805, -0.087725, 0.882109,
		37.667187, 37.978546, 33.642338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852322, 38.687145, 33.284275>,  <37.991150, 38.039955, 33.024860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852322, 38.687145, 33.284275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913445, 38.409008, 33.565174>,  <37.950119, 38.242126, 33.733711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913445, 38.409008, 33.565174>,  <37.852322, 38.687145, 33.284275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913445, 38.409008, 33.565174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825267, 0.480706, 0.296404,
		-0.543675, 0.534246, 0.647301,
		0.152809, -0.695344, 0.702243,
		37.959286, 38.200405, 33.775848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007851, 38.884686, 33.991447>,  <37.852322, 38.687145, 33.284275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007851, 38.884686, 33.991447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187737, 38.534321, 33.921555>,  <38.295670, 38.324100, 33.879620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187737, 38.534321, 33.921555>,  <38.007851, 38.884686, 33.991447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187737, 38.534321, 33.921555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842858, 0.351445, 0.407525,
		-0.295546, -0.330548, 0.896321,
		0.449714, -0.875913, -0.174737,
		38.322651, 38.271545, 33.869133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307968, 38.648209, 34.592590>,  <38.007851, 38.884686, 33.991447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307968, 38.648209, 34.592590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489883, 38.423290, 34.316334>,  <38.599033, 38.288342, 34.150578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489883, 38.423290, 34.316334>,  <38.307968, 38.648209, 34.592590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489883, 38.423290, 34.316334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866061, 0.098453, 0.490148,
		-0.207610, -0.821056, 0.531756,
		0.454792, -0.562293, -0.690645,
		38.626320, 38.254601, 34.109138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686741, 38.169262, 34.947071>,  <38.307968, 38.648209, 34.592590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686741, 38.169262, 34.947071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836555, 38.223785, 34.580215>,  <38.926445, 38.256500, 34.360104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836555, 38.223785, 34.580215>,  <38.686741, 38.169262, 34.947071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836555, 38.223785, 34.580215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909808, 0.136712, 0.391866,
		0.178800, -0.981187, -0.072813,
		0.374540, 0.136311, -0.917137,
		38.948917, 38.264679, 34.305073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291336, 37.723064, 34.965908>,  <38.686741, 38.169262, 34.947071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291336, 37.723064, 34.965908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300690, 38.027229, 34.706299>,  <39.306301, 38.209728, 34.550533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300690, 38.027229, 34.706299>,  <39.291336, 37.723064, 34.965908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300690, 38.027229, 34.706299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909446, 0.253421, 0.329675,
		0.415164, -0.597958, -0.685627,
		0.023379, 0.760410, -0.649022,
		39.307705, 38.255352, 34.511593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955658, 37.797630, 34.708702>,  <39.291336, 37.723064, 34.965908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955658, 37.797630, 34.708702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805241, 38.159752, 34.629704>,  <39.714989, 38.377026, 34.582302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805241, 38.159752, 34.629704>,  <39.955658, 37.797630, 34.708702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805241, 38.159752, 34.629704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833670, 0.423593, 0.354348,
		0.404454, -0.031397, -0.914019,
		-0.376046, 0.905309, -0.197499,
		39.692429, 38.431343, 34.570454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439224, 38.293514, 34.232811>,  <39.955658, 37.797630, 34.708702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439224, 38.293514, 34.232811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218327, 38.530350, 34.467575>,  <40.085789, 38.672451, 34.608433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218327, 38.530350, 34.467575>,  <40.439224, 38.293514, 34.232811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218327, 38.530350, 34.467575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792270, 0.591850, 0.148395,
		-0.259498, 0.546939, -0.795939,
		-0.552240, 0.592090, 0.586908,
		40.052654, 38.707977, 34.643646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467903, 39.030033, 33.917885>,  <40.439224, 38.293514, 34.232811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467903, 39.030033, 33.917885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406254, 38.999756, 34.311943>,  <40.369263, 38.981590, 34.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406254, 38.999756, 34.311943>,  <40.467903, 39.030033, 33.917885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406254, 38.999756, 34.311943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847197, 0.502944, 0.171185,
		-0.508432, 0.860998, -0.013391,
		-0.154124, -0.075691, 0.985148,
		40.360016, 38.977047, 34.607487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987537, 38.788055, 33.427483>,  <40.467903, 39.030033, 33.917885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987537, 38.788055, 33.427483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375179, 38.876427, 33.383617>,  <41.607765, 38.929447, 33.357300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375179, 38.876427, 33.383617>,  <40.987537, 38.788055, 33.427483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375179, 38.876427, 33.383617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187728, -0.372336, 0.908914,
		0.159972, -0.901420, -0.402307,
		0.969106, 0.220925, -0.109659,
		41.665913, 38.942703, 33.350719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440960, 38.128151, 33.476997>,  <40.987537, 38.788055, 33.427483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440960, 38.128151, 33.476997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613075, 38.471550, 33.588596>,  <41.716343, 38.677589, 33.655556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613075, 38.471550, 33.588596>,  <41.440960, 38.128151, 33.476997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613075, 38.471550, 33.588596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063872, -0.337256, 0.939244,
		0.900430, -0.386324, -0.199951,
		0.430287, 0.858494, 0.279000,
		41.742161, 38.729099, 33.672295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911774, 37.880421, 33.997185>,  <41.440960, 38.128151, 33.476997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911774, 37.880421, 33.997185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841671, 38.272186, 34.037254>,  <41.799610, 38.507244, 34.061295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841671, 38.272186, 34.037254>,  <41.911774, 37.880421, 33.997185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841671, 38.272186, 34.037254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141653, -0.075601, 0.987025,
		0.974279, 0.187172, -0.125488,
		-0.175256, 0.979414, 0.100170,
		41.789093, 38.566010, 34.067307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931351, 38.264687, 34.647957>,  <41.911774, 37.880421, 33.997185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931351, 38.264687, 34.647957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214893, 38.198322, 34.373730>,  <42.385017, 38.158504, 34.209194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214893, 38.198322, 34.373730>,  <41.931351, 38.264687, 34.647957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214893, 38.198322, 34.373730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519218, 0.535140, -0.666362,
		0.477430, 0.828311, 0.293192,
		0.708853, -0.165911, -0.685566,
		42.427551, 38.148548, 34.168060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164433, 38.871258, 34.379417>,  <41.931351, 38.264687, 34.647957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164433, 38.871258, 34.379417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269192, 38.609390, 34.095779>,  <42.332047, 38.452271, 33.925594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269192, 38.609390, 34.095779>,  <42.164433, 38.871258, 34.379417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269192, 38.609390, 34.095779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431904, 0.577554, -0.692741,
		0.863057, 0.487690, -0.131493,
		0.261899, -0.654668, -0.709098,
		42.347763, 38.412991, 33.883049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686131, 39.201420, 34.034916>,  <42.164433, 38.871258, 34.379417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686131, 39.201420, 34.034916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467712, 38.938248, 33.827469>,  <42.336662, 38.780342, 33.703003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467712, 38.938248, 33.827469>,  <42.686131, 39.201420, 34.034916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467712, 38.938248, 33.827469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266304, 0.723259, -0.637164,
		0.794307, -0.209807, -0.570138,
		-0.546039, -0.657934, -0.518617,
		42.303898, 38.740868, 33.671883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999260, 38.966030, 33.304718>,  <42.686131, 39.201420, 34.034916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999260, 38.966030, 33.304718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599277, 38.969810, 33.305519>,  <42.359287, 38.972080, 33.306000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599277, 38.969810, 33.305519>,  <42.999260, 38.966030, 33.304718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599277, 38.969810, 33.305519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001705, 0.376592, -0.926378,
		-0.009508, -0.926331, -0.376590,
		-0.999953, 0.009451, 0.002001,
		42.299290, 38.972645, 33.306118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707375, 38.702789, 32.601818>,  <42.999260, 38.966030, 33.304718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707375, 38.702789, 32.601818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394958, 38.899231, 32.756111>,  <42.207508, 39.017097, 32.848686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394958, 38.899231, 32.756111>,  <42.707375, 38.702789, 32.601818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394958, 38.899231, 32.756111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135098, 0.470174, -0.872172,
		-0.609687, -0.733317, -0.300880,
		-0.781044, 0.491104, 0.385729,
		42.160645, 39.046562, 32.871830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148792, 38.366970, 32.277874>,  <42.707375, 38.702789, 32.601818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148792, 38.366970, 32.277874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083427, 38.250847, 32.655025>,  <42.044209, 38.181171, 32.881317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083427, 38.250847, 32.655025>,  <42.148792, 38.366970, 32.277874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083427, 38.250847, 32.655025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500626, 0.799130, 0.332812,
		-0.850100, 0.526414, 0.014749,
		-0.163410, -0.290307, 0.942878,
		42.034405, 38.163754, 32.937889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532204, 37.705585, 32.151848>,  <42.148792, 38.366970, 32.277874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532204, 37.705585, 32.151848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924896, 37.781452, 32.145870>,  <43.160511, 37.826973, 32.142284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924896, 37.781452, 32.145870>,  <42.532204, 37.705585, 32.151848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924896, 37.781452, 32.145870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067751, -0.275123, 0.959019,
		0.177782, -0.942515, -0.282948,
		0.981735, 0.189666, -0.014944,
		43.219418, 37.838352, 32.141388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806545, 37.175137, 32.489258>,  <42.532204, 37.705585, 32.151848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806545, 37.175137, 32.489258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015381, 37.514961, 32.519367>,  <43.140682, 37.718857, 32.537434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015381, 37.514961, 32.519367>,  <42.806545, 37.175137, 32.489258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015381, 37.514961, 32.519367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098721, -0.147862, 0.984069,
		0.847161, -0.506337, -0.161066,
		0.522085, 0.849565, 0.075277,
		43.172005, 37.769829, 32.541950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435158, 37.056438, 32.993217>,  <42.806545, 37.175137, 32.489258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435158, 37.056438, 32.993217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299294, 37.432247, 32.975677>,  <43.217773, 37.657734, 32.965153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299294, 37.432247, 32.975677>,  <43.435158, 37.056438, 32.993217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299294, 37.432247, 32.975677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046010, 0.063162, 0.996942,
		0.939421, 0.336608, -0.064681,
		-0.339664, 0.939524, -0.043849,
		43.197395, 37.714104, 32.962524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749146, 37.539669, 33.526260>,  <43.435158, 37.056438, 32.993217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749146, 37.539669, 33.526260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403637, 37.722866, 33.442223>,  <43.196331, 37.832783, 33.391800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403637, 37.722866, 33.442223>,  <43.749146, 37.539669, 33.526260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403637, 37.722866, 33.442223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088068, 0.273321, 0.957883,
		0.496126, 0.845896, -0.195752,
		-0.863772, 0.457992, -0.210098,
		43.144505, 37.860264, 33.379192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416634, 37.901154, 33.331631>,  <43.749146, 37.539669, 33.526260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416634, 37.901154, 33.331631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635273, 37.939697, 33.664364>,  <44.766457, 37.962826, 33.864002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635273, 37.939697, 33.664364>,  <44.416634, 37.901154, 33.331631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635273, 37.939697, 33.664364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532478, -0.726671, 0.434069,
		0.646298, -0.680193, -0.345884,
		0.546595, 0.096362, 0.831834,
		44.799252, 37.968605, 33.913914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639011, 37.286877, 33.493301>,  <44.416634, 37.901154, 33.331631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639011, 37.286877, 33.493301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872227, 37.223530, 33.174557>,  <45.012157, 37.185524, 32.983311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872227, 37.223530, 33.174557>,  <44.639011, 37.286877, 33.493301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872227, 37.223530, 33.174557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025103, 0.983862, -0.177161,
		0.812057, 0.083288, 0.577604,
		0.583038, -0.158365, -0.796861,
		45.047138, 37.176022, 32.935497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284733, 37.542320, 33.660824>,  <44.639011, 37.286877, 33.493301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284733, 37.542320, 33.660824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210541, 37.543812, 33.267769>,  <45.166023, 37.544708, 33.031937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210541, 37.543812, 33.267769>,  <45.284733, 37.542320, 33.660824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210541, 37.543812, 33.267769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087607, 0.996074, -0.012758,
		0.978734, -0.088452, -0.185082,
		-0.185484, 0.003727, -0.982640,
		45.154896, 37.544930, 32.972977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440018, 36.844585, 33.922920>,  <45.284733, 37.542320, 33.660824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440018, 36.844585, 33.922920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816971, 36.753418, 34.020874>,  <46.043144, 36.698719, 34.079647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816971, 36.753418, 34.020874>,  <45.440018, 36.844585, 33.922920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816971, 36.753418, 34.020874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192439, 0.968101, 0.160462,
		-0.273644, -0.104092, 0.956182,
		0.942383, -0.227916, 0.244884,
		46.099686, 36.685043, 34.094337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631950, 37.266106, 34.513432>,  <45.440018, 36.844585, 33.922920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631950, 37.266106, 34.513432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982704, 37.145977, 34.363293>,  <46.193157, 37.073898, 34.273209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982704, 37.145977, 34.363293>,  <45.631950, 37.266106, 34.513432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982704, 37.145977, 34.363293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390447, 0.900445, 0.191703,
		0.280404, -0.314654, 0.906844,
		0.876883, -0.300321, -0.375344,
		46.245770, 37.055882, 34.250690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047684, 37.519772, 35.003773>,  <45.631950, 37.266106, 34.513432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047684, 37.519772, 35.003773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273510, 37.449322, 34.681221>,  <46.409004, 37.407051, 34.487690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273510, 37.449322, 34.681221>,  <46.047684, 37.519772, 35.003773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273510, 37.449322, 34.681221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465334, 0.874823, 0.134719,
		0.681713, -0.451294, 0.575848,
		0.564563, -0.176122, -0.806380,
		46.442879, 37.396484, 34.439308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662094, 37.238308, 35.601818>,  <46.047684, 37.519772, 35.003773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662094, 37.238308, 35.601818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409294, 37.036373, 35.837006>,  <45.257614, 36.915211, 35.978119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409294, 37.036373, 35.837006>,  <45.662094, 37.238308, 35.601818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409294, 37.036373, 35.837006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509732, 0.300689, 0.806076,
		-0.583735, 0.809151, 0.067296,
		-0.632002, -0.504838, 0.587973,
		45.219692, 36.884922, 36.013397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722855, 36.596272, 35.536457>,  <45.662094, 37.238308, 35.601818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722855, 36.596272, 35.536457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107006, 36.675507, 35.614868>,  <46.337498, 36.723045, 35.661915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107006, 36.675507, 35.614868>,  <45.722855, 36.596272, 35.536457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107006, 36.675507, 35.614868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084204, -0.876791, 0.473442,
		0.265661, -0.438179, -0.858734,
		0.960382, 0.198084, 0.196033,
		46.395123, 36.734932, 35.673679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.278286, 35.991684, 35.320114>,  <45.722855, 36.596272, 35.536457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.278286, 35.991684, 35.320114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346481, 36.214413, 35.645294>,  <46.387398, 36.348049, 35.840401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346481, 36.214413, 35.645294>,  <46.278286, 35.991684, 35.320114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346481, 36.214413, 35.645294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228830, -0.824846, 0.516977,
		0.958422, 0.097891, -0.268040,
		0.170484, 0.556818, 0.812951,
		46.397625, 36.381458, 35.889179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.923725, 35.934254, 35.678810>,  <46.278286, 35.991684, 35.320114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.923725, 35.934254, 35.678810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634563, 36.040184, 35.934086>,  <46.461067, 36.103741, 36.087250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634563, 36.040184, 35.934086>,  <46.923725, 35.934254, 35.678810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634563, 36.040184, 35.934086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137833, -0.849801, 0.508763,
		0.677065, 0.455748, 0.577821,
		-0.722901, 0.264823, 0.638188,
		46.417694, 36.119633, 36.125542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179455, 35.217419, 35.370033>,  <46.923725, 35.934254, 35.678810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179455, 35.217419, 35.370033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462788, 35.366627, 35.130325>,  <47.632786, 35.456150, 34.986500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462788, 35.366627, 35.130325>,  <47.179455, 35.217419, 35.370033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.462788, 35.366627, 35.130325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692419, -0.532175, 0.487181,
		-0.137185, -0.760029, -0.635244,
		0.708333, 0.373021, -0.599266,
		47.675289, 35.478535, 34.950546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.576893, 34.632671, 34.955124>,  <47.179455, 35.217419, 35.370033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.576893, 34.632671, 34.955124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762436, 34.978500, 35.032433>,  <47.873760, 35.185997, 35.078815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762436, 34.978500, 35.032433>,  <47.576893, 34.632671, 34.955124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762436, 34.978500, 35.032433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796526, -0.502506, 0.336206,
		0.387793, -0.002007, -0.921744,
		0.463857, 0.864572, 0.193269,
		47.901592, 35.237873, 35.090412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.482136, 40.871822, 20.068792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342896, 40.501453, 20.127420>,  <38.259350, 40.279232, 20.162598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342896, 40.501453, 20.127420>,  <38.482136, 40.871822, 20.068792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342896, 40.501453, 20.127420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221023, 0.233004, 0.947026,
		-0.911028, 0.297269, -0.285761,
		-0.348105, -0.925927, 0.146570,
		38.238464, 40.223675, 20.171391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127361, 41.074261, 20.556860>,  <38.482136, 40.871822, 20.068792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127361, 41.074261, 20.556860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122128, 40.674488, 20.569277>,  <38.118988, 40.434624, 20.576727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122128, 40.674488, 20.569277>,  <38.127361, 41.074261, 20.556860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122128, 40.674488, 20.569277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233688, 0.033241, 0.971743,
		-0.972223, 0.005460, -0.233991,
		-0.013084, -0.999433, 0.031041,
		38.118202, 40.374657, 20.578588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440914, 40.757584, 20.765223>,  <38.127361, 41.074261, 20.556860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440914, 40.757584, 20.765223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727512, 40.491314, 20.848661>,  <37.899471, 40.331551, 20.898724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727512, 40.491314, 20.848661>,  <37.440914, 40.757584, 20.765223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727512, 40.491314, 20.848661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237493, 0.048391, 0.970183,
		-0.655924, -0.744668, -0.123422,
		0.716492, -0.665679, 0.208595,
		37.942459, 40.291611, 20.911240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163803, 40.414757, 21.320488>,  <37.440914, 40.757584, 20.765223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163803, 40.414757, 21.320488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.555000, 40.332481, 21.334473>,  <37.789719, 40.283115, 21.342863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.555000, 40.332481, 21.334473>,  <37.163803, 40.414757, 21.320488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555000, 40.332481, 21.334473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067689, -0.154309, 0.985701,
		-0.197355, -0.966375, -0.164836,
		0.977993, -0.205691, 0.034959,
		37.848400, 40.270775, 21.344961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121471, 39.786770, 21.503607>,  <37.163803, 40.414757, 21.320488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121471, 39.786770, 21.503607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485428, 39.921116, 21.601011>,  <37.703800, 40.001724, 21.659454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485428, 39.921116, 21.601011>,  <37.121471, 39.786770, 21.503607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485428, 39.921116, 21.601011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222603, -0.100059, 0.969761,
		0.350070, -0.936582, -0.016279,
		0.909889, 0.335861, 0.243514,
		37.758396, 40.021873, 21.674065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450565, 39.382618, 21.945904>,  <37.121471, 39.786770, 21.503607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450565, 39.382618, 21.945904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677643, 39.701511, 22.028015>,  <37.813889, 39.892849, 22.077282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677643, 39.701511, 22.028015>,  <37.450565, 39.382618, 21.945904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677643, 39.701511, 22.028015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139662, -0.152472, 0.978390,
		0.811304, -0.584099, 0.024785,
		0.567697, 0.797234, 0.205277,
		37.847954, 39.940681, 22.089598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976757, 39.150810, 22.442673>,  <37.450565, 39.382618, 21.945904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976757, 39.150810, 22.442673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967556, 39.549702, 22.470955>,  <37.962036, 39.789036, 22.487925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967556, 39.549702, 22.470955>,  <37.976757, 39.150810, 22.442673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967556, 39.549702, 22.470955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038173, -0.069796, 0.996831,
		0.999006, 0.025633, -0.036462,
		-0.023007, 0.997232, 0.070705,
		37.960655, 39.848873, 22.492167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380947, 39.297558, 22.956093>,  <37.976757, 39.150810, 22.442673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380947, 39.297558, 22.956093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198406, 39.652004, 22.923737>,  <38.088882, 39.864674, 22.904324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198406, 39.652004, 22.923737>,  <38.380947, 39.297558, 22.956093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198406, 39.652004, 22.923737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068686, 0.125718, 0.989685,
		0.887146, 0.446085, -0.118235,
		-0.456349, 0.886117, -0.080891,
		38.061501, 39.917839, 22.899469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773865, 39.760963, 23.336153>,  <38.380947, 39.297558, 22.956093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773865, 39.760963, 23.336153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421143, 39.948215, 23.313280>,  <38.209507, 40.060566, 23.299557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421143, 39.948215, 23.313280>,  <38.773865, 39.760963, 23.336153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421143, 39.948215, 23.313280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114741, 0.330564, 0.936783,
		0.457439, 0.819501, -0.345207,
		-0.881807, 0.468130, -0.057183,
		38.156601, 40.088654, 23.296125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807972, 40.538940, 23.585476>,  <38.773865, 39.760963, 23.336153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807972, 40.538940, 23.585476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417934, 40.455433, 23.615440>,  <38.183914, 40.405327, 23.633419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417934, 40.455433, 23.615440>,  <38.807972, 40.538940, 23.585476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417934, 40.455433, 23.615440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017807, 0.410327, 0.911765,
		-0.221085, 0.887720, -0.403824,
		-0.975092, -0.208769, 0.074910,
		38.125408, 40.392803, 23.637913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583096, 41.075897, 24.035469>,  <38.807972, 40.538940, 23.585476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583096, 41.075897, 24.035469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299736, 40.793781, 24.024616>,  <38.129719, 40.624512, 24.018105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299736, 40.793781, 24.024616>,  <38.583096, 41.075897, 24.035469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299736, 40.793781, 24.024616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377629, 0.346260, 0.858778,
		-0.596291, 0.618606, -0.511629,
		-0.708402, -0.705288, -0.027132,
		38.087215, 40.582195, 24.016478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999435, 41.381645, 24.303217>,  <38.583096, 41.075897, 24.035469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999435, 41.381645, 24.303217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925758, 40.997158, 24.385313>,  <37.881554, 40.766464, 24.434570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925758, 40.997158, 24.385313>,  <37.999435, 41.381645, 24.303217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925758, 40.997158, 24.385313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216243, 0.243329, 0.945532,
		-0.958808, 0.129778, -0.252677,
		-0.184193, -0.961222, 0.205243,
		37.870499, 40.708790, 24.446886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317776, 41.343319, 24.617842>,  <37.999435, 41.381645, 24.303217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317776, 41.343319, 24.617842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507584, 41.001858, 24.703732>,  <37.621468, 40.796982, 24.755264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507584, 41.001858, 24.703732>,  <37.317776, 41.343319, 24.617842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507584, 41.001858, 24.703732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215638, 0.123769, 0.968598,
		-0.853425, -0.505918, -0.125350,
		0.474517, -0.853656, 0.214723,
		37.649940, 40.745762, 24.768148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881496, 40.961555, 25.063448>,  <37.317776, 41.343319, 24.617842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881496, 40.961555, 25.063448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249115, 40.818108, 25.128862>,  <37.469685, 40.732040, 25.168110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249115, 40.818108, 25.128862>,  <36.881496, 40.961555, 25.063448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249115, 40.818108, 25.128862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101428, 0.185750, 0.977348,
		-0.380873, -0.914817, 0.134339,
		0.919047, -0.358619, 0.163535,
		37.524830, 40.710522, 25.177923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767677, 40.643398, 25.739855>,  <36.881496, 40.961555, 25.063448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767677, 40.643398, 25.739855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160599, 40.689392, 25.680727>,  <37.396351, 40.716988, 25.645250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160599, 40.689392, 25.680727>,  <36.767677, 40.643398, 25.739855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160599, 40.689392, 25.680727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132307, 0.132539, 0.982308,
		0.132539, -0.984486, 0.114981,
		-0.982308, -0.114981, 0.147821,
		37.455292, 40.723888, 25.636381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113327, 40.171253, 26.195093>,  <36.767677, 40.643398, 25.739855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113327, 40.171253, 26.195093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.369480, 40.463593, 26.100630>,  <37.523170, 40.638996, 26.043951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.369480, 40.463593, 26.100630>,  <37.113327, 40.171253, 26.195093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369480, 40.463593, 26.100630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124889, 0.204298, 0.970909,
		0.757836, -0.651245, 0.039553,
		0.640380, 0.730851, -0.236158,
		37.561596, 40.682846, 26.029783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473927, 40.135933, 26.764200>,  <37.113327, 40.171253, 26.195093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473927, 40.135933, 26.764200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533138, 40.491711, 26.591240>,  <37.568665, 40.705177, 26.487463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533138, 40.491711, 26.591240>,  <37.473927, 40.135933, 26.764200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533138, 40.491711, 26.591240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064980, 0.427526, 0.901664,
		0.986845, -0.161574, 0.005492,
		0.148034, 0.889446, -0.432402,
		37.577549, 40.758545, 26.461519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101406, 40.339836, 27.059103>,  <37.473927, 40.135933, 26.764200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101406, 40.339836, 27.059103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.896492, 40.648632, 26.908590>,  <37.773544, 40.833912, 26.818283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.896492, 40.648632, 26.908590>,  <38.101406, 40.339836, 27.059103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896492, 40.648632, 26.908590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042301, 0.460293, 0.886759,
		0.857772, 0.438358, -0.268458,
		-0.512287, 0.771993, -0.376284,
		37.742805, 40.880230, 26.795706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450569, 41.054554, 27.361954>,  <38.101406, 40.339836, 27.059103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450569, 41.054554, 27.361954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104225, 41.184460, 27.209738>,  <37.896420, 41.262402, 27.118408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104225, 41.184460, 27.209738>,  <38.450569, 41.054554, 27.361954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104225, 41.184460, 27.209738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157456, 0.545091, 0.823459,
		0.474858, 0.772920, -0.420838,
		-0.865862, 0.324762, -0.380542,
		37.844467, 41.281887, 27.095575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450455, 41.756134, 27.571804>,  <38.450569, 41.054554, 27.361954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450455, 41.756134, 27.571804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.067574, 41.688110, 27.478138>,  <37.837845, 41.647297, 27.421938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.067574, 41.688110, 27.478138>,  <38.450455, 41.756134, 27.571804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067574, 41.688110, 27.478138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289395, 0.568026, 0.770452,
		0.001986, 0.805248, -0.592934,
		-0.957208, -0.170062, -0.234164,
		37.780411, 41.637093, 27.407888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111530, 42.328827, 27.546482>,  <38.450455, 41.756134, 27.571804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111530, 42.328827, 27.546482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819698, 42.065292, 27.619854>,  <37.644600, 41.907173, 27.663877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819698, 42.065292, 27.619854>,  <38.111530, 42.328827, 27.546482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819698, 42.065292, 27.619854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237569, 0.495661, 0.835392,
		-0.641306, 0.565909, -0.518144,
		-0.729580, -0.658837, 0.183428,
		37.600822, 41.867641, 27.674883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538685, 42.793705, 27.742010>,  <38.111530, 42.328827, 27.546482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538685, 42.793705, 27.742010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449627, 42.434685, 27.894239>,  <37.396194, 42.219273, 27.985577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449627, 42.434685, 27.894239>,  <37.538685, 42.793705, 27.742010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449627, 42.434685, 27.894239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320201, 0.436039, 0.841036,
		-0.920816, 0.065390, -0.384477,
		-0.222642, -0.897549, 0.380574,
		37.382835, 42.165421, 28.008411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650284, 42.708294, 27.012527>,  <37.538685, 42.793705, 27.742010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650284, 42.708294, 27.012527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.600742, 43.077297, 27.158754>,  <37.571018, 43.298698, 27.246490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.600742, 43.077297, 27.158754>,  <37.650284, 42.708294, 27.012527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600742, 43.077297, 27.158754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057373, 0.374445, -0.925472,
		-0.990640, -0.093653, -0.099305,
		-0.123858, 0.922507, 0.365567,
		37.563583, 43.354050, 27.268425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224331, 42.996456, 26.596502>,  <37.650284, 42.708294, 27.012527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224331, 42.996456, 26.596502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367954, 43.315571, 26.790249>,  <37.454128, 43.507042, 26.906496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367954, 43.315571, 26.790249>,  <37.224331, 42.996456, 26.596502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367954, 43.315571, 26.790249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113829, 0.477666, -0.871136,
		-0.926348, 0.367924, 0.080699,
		0.359058, 0.797789, 0.484365,
		37.475674, 43.554909, 26.935558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801365, 43.524731, 26.325426>,  <37.224331, 42.996456, 26.596502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801365, 43.524731, 26.325426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.146240, 43.684566, 26.449974>,  <37.353165, 43.780468, 26.524702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.146240, 43.684566, 26.449974>,  <36.801365, 43.524731, 26.325426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146240, 43.684566, 26.449974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077758, 0.502976, -0.860796,
		-0.500577, 0.766383, 0.402591,
		0.862193, 0.399590, 0.311371,
		37.404900, 43.804443, 26.543385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919395, 44.113785, 25.884861>,  <36.801365, 43.524731, 26.325426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919395, 44.113785, 25.884861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291107, 44.061554, 26.023073>,  <37.514133, 44.030216, 26.106001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291107, 44.061554, 26.023073>,  <36.919395, 44.113785, 25.884861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291107, 44.061554, 26.023073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368854, 0.378003, -0.849153,
		-0.019734, 0.916550, 0.399433,
		0.929278, -0.130576, 0.345533,
		37.569889, 44.022381, 26.126734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276329, 44.787048, 25.610472>,  <36.919395, 44.113785, 25.884861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276329, 44.787048, 25.610472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551277, 44.511940, 25.703844>,  <37.716248, 44.346874, 25.759867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551277, 44.511940, 25.703844>,  <37.276329, 44.787048, 25.610472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551277, 44.511940, 25.703844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427933, 0.123823, -0.895288,
		0.586848, 0.715290, 0.379432,
		0.687374, -0.687770, 0.233431,
		37.757488, 44.305611, 25.773874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012695, 45.017532, 25.316658>,  <37.276329, 44.787048, 25.610472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012695, 45.017532, 25.316658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042362, 44.620655, 25.356750>,  <38.060162, 44.382526, 25.380806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042362, 44.620655, 25.356750>,  <38.012695, 45.017532, 25.316658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042362, 44.620655, 25.356750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270258, -0.076749, -0.959724,
		0.959927, 0.098267, 0.262456,
		0.074166, -0.992196, 0.100231,
		38.064613, 44.322998, 25.386820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616123, 44.870365, 25.110327>,  <38.012695, 45.017532, 25.316658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616123, 44.870365, 25.110327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400085, 44.535080, 25.080111>,  <38.270462, 44.333908, 25.061981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400085, 44.535080, 25.080111>,  <38.616123, 44.870365, 25.110327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400085, 44.535080, 25.080111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417134, -0.188653, -0.889049,
		0.730960, -0.511677, 0.451536,
		-0.540090, -0.838210, -0.075540,
		38.238060, 44.283615, 25.057449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120934, 44.390125, 24.810791>,  <38.616123, 44.870365, 25.110327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120934, 44.390125, 24.810791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761951, 44.234455, 24.727734>,  <38.546562, 44.141052, 24.677898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761951, 44.234455, 24.727734>,  <39.120934, 44.390125, 24.810791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761951, 44.234455, 24.727734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296241, -0.182990, -0.937420,
		0.326820, -0.902807, 0.279515,
		-0.897457, -0.389171, -0.207644,
		38.492714, 44.117702, 24.665440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224556, 43.858158, 24.257652>,  <39.120934, 44.390125, 24.810791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224556, 43.858158, 24.257652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832245, 43.932278, 24.233162>,  <38.596859, 43.976749, 24.218468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832245, 43.932278, 24.233162>,  <39.224556, 43.858158, 24.257652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832245, 43.932278, 24.233162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030696, -0.163350, -0.986090,
		-0.192728, -0.969009, 0.154521,
		-0.980772, 0.185304, -0.061226,
		38.538013, 43.987865, 24.214794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966793, 43.364941, 23.792356>,  <39.224556, 43.858158, 24.257652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966793, 43.364941, 23.792356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685894, 43.649643, 23.798704>,  <38.517357, 43.820465, 23.802513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685894, 43.649643, 23.798704>,  <38.966793, 43.364941, 23.792356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685894, 43.649643, 23.798704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199410, -0.175249, -0.964118,
		-0.683438, -0.680211, 0.264999,
		-0.702245, 0.711759, 0.015869,
		38.475220, 43.863171, 23.803465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376095, 43.041733, 23.478868>,  <38.966793, 43.364941, 23.792356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376095, 43.041733, 23.478868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318195, 43.434921, 23.433588>,  <38.283455, 43.670834, 23.406420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318195, 43.434921, 23.433588>,  <38.376095, 43.041733, 23.478868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318195, 43.434921, 23.433588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220274, -0.143548, -0.964818,
		-0.964639, -0.114716, 0.237301,
		-0.144744, 0.982972, -0.113204,
		38.274773, 43.729813, 23.399628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829201, 43.126118, 23.181681>,  <38.376095, 43.041733, 23.478868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829201, 43.126118, 23.181681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023113, 43.463055, 23.087502>,  <38.139462, 43.665218, 23.030994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023113, 43.463055, 23.087502>,  <37.829201, 43.126118, 23.181681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023113, 43.463055, 23.087502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120275, -0.202435, -0.971882,
		-0.866324, 0.499472, 0.003176,
		0.484785, 0.842346, -0.235448,
		38.168549, 43.715759, 23.016867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450909, 43.512836, 22.680996>,  <37.829201, 43.126118, 23.181681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450909, 43.512836, 22.680996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833179, 43.619755, 22.631626>,  <38.062542, 43.683907, 22.602003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833179, 43.619755, 22.631626>,  <37.450909, 43.512836, 22.680996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833179, 43.619755, 22.631626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085841, -0.148032, -0.985250,
		-0.281628, 0.952175, -0.118526,
		0.955676, 0.267300, -0.123425,
		38.119881, 43.699944, 22.594599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472385, 43.777664, 22.035070>,  <37.450909, 43.512836, 22.680996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472385, 43.777664, 22.035070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863750, 43.723000, 22.097073>,  <38.098572, 43.690201, 22.134274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863750, 43.723000, 22.097073>,  <37.472385, 43.777664, 22.035070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863750, 43.723000, 22.097073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141786, -0.101722, -0.984657,
		0.150337, 0.985381, -0.080148,
		0.978415, -0.136666, 0.155006,
		38.157276, 43.681999, 22.143574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888081, 44.292168, 21.615191>,  <37.472385, 43.777664, 22.035070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888081, 44.292168, 21.615191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.129971, 43.985733, 21.702295>,  <38.275105, 43.801872, 21.754559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.129971, 43.985733, 21.702295>,  <37.888081, 44.292168, 21.615191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129971, 43.985733, 21.702295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259592, -0.068894, -0.963258,
		0.752943, 0.639032, 0.157208,
		0.604722, -0.766088, 0.217761,
		38.311386, 43.755905, 21.767624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408615, 44.283012, 21.060257>,  <37.888081, 44.292168, 21.615191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408615, 44.283012, 21.060257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460045, 43.934673, 21.250031>,  <38.490902, 43.725670, 21.363895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460045, 43.934673, 21.250031>,  <38.408615, 44.283012, 21.060257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460045, 43.934673, 21.250031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287769, -0.425059, -0.858204,
		0.949029, 0.246873, 0.195951,
		0.128577, -0.870849, 0.474436,
		38.498619, 43.673420, 21.392361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062309, 44.050076, 20.836372>,  <38.408615, 44.283012, 21.060257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062309, 44.050076, 20.836372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.829155, 43.740795, 20.936295>,  <38.689262, 43.555225, 20.996248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.829155, 43.740795, 20.936295>,  <39.062309, 44.050076, 20.836372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829155, 43.740795, 20.936295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133024, -0.394089, -0.909395,
		0.801593, -0.496840, 0.332563,
		-0.582883, -0.773204, 0.249807,
		38.654289, 43.508835, 21.011236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414227, 43.434158, 20.523453>,  <39.062309, 44.050076, 20.836372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414227, 43.434158, 20.523453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031940, 43.338310, 20.591793>,  <38.802570, 43.280800, 20.632797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031940, 43.338310, 20.591793>,  <39.414227, 43.434158, 20.523453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031940, 43.338310, 20.591793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063245, -0.399740, -0.914444,
		0.287417, -0.884753, 0.366883,
		-0.955715, -0.239623, 0.170849,
		38.745224, 43.266422, 20.643047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.357121, 42.741734, 20.354586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983627, 42.882599, 20.328899>,  <38.759533, 42.967117, 20.313488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983627, 42.882599, 20.328899>,  <39.357121, 42.741734, 20.354586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983627, 42.882599, 20.328899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158479, -0.567529, -0.807958,
		-0.320977, -0.744240, 0.585731,
		-0.933734, 0.352162, -0.064217,
		38.703506, 42.988247, 20.309633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018879, 42.112335, 20.250032>,  <39.357121, 42.741734, 20.354586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018879, 42.112335, 20.250032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753384, 42.395447, 20.153284>,  <38.594086, 42.565315, 20.095236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753384, 42.395447, 20.153284>,  <39.018879, 42.112335, 20.250032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753384, 42.395447, 20.153284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268011, -0.526951, -0.806531,
		-0.698298, -0.470502, 0.539451,
		-0.663739, 0.707779, -0.241869,
		38.554260, 42.607780, 20.080723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499237, 41.736610, 19.940184>,  <39.018879, 42.112335, 20.250032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499237, 41.736610, 19.940184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445347, 42.110275, 19.808012>,  <38.413013, 42.334476, 19.728708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445347, 42.110275, 19.808012>,  <38.499237, 41.736610, 19.940184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445347, 42.110275, 19.808012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330880, -0.356740, -0.873645,
		-0.934007, -0.008369, 0.357158,
		-0.134724, 0.934166, -0.330429,
		38.404930, 42.390526, 19.708883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962051, 41.646614, 19.561550>,  <38.499237, 41.736610, 19.940184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962051, 41.646614, 19.561550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089493, 42.005127, 19.438147>,  <38.165958, 42.220234, 19.364103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089493, 42.005127, 19.438147>,  <37.962051, 41.646614, 19.561550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089493, 42.005127, 19.438147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262537, -0.229300, -0.937281,
		-0.910806, 0.379616, 0.162250,
		0.318603, 0.896278, -0.308511,
		38.185074, 42.274010, 19.345592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541134, 41.864338, 19.056440>,  <37.962051, 41.646614, 19.561550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541134, 41.864338, 19.056440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871929, 42.072052, 18.970249>,  <38.070408, 42.196682, 18.918533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871929, 42.072052, 18.970249>,  <37.541134, 41.864338, 19.056440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871929, 42.072052, 18.970249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083281, -0.265891, -0.960399,
		-0.556019, 0.812183, -0.176642,
		0.826987, 0.519289, -0.215480,
		38.120026, 42.227840, 18.905605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372692, 42.406696, 18.507662>,  <37.541134, 41.864338, 19.056440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372692, 42.406696, 18.507662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754955, 42.289017, 18.502539>,  <37.984314, 42.218407, 18.499464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754955, 42.289017, 18.502539>,  <37.372692, 42.406696, 18.507662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754955, 42.289017, 18.502539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062592, -0.160436, -0.985060,
		0.287752, 0.942181, -0.171736,
		0.955657, -0.294202, -0.012807,
		38.041653, 42.200756, 18.498697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663010, 42.649456, 17.890188>,  <37.372692, 42.406696, 18.507662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663010, 42.649456, 17.890188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928757, 42.367020, 17.988214>,  <38.088203, 42.197559, 18.047031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928757, 42.367020, 17.988214>,  <37.663010, 42.649456, 17.890188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928757, 42.367020, 17.988214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003317, -0.330670, -0.943740,
		0.747402, 0.626174, -0.222027,
		0.664364, -0.706090, 0.245067,
		38.128067, 42.155193, 18.061735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249737, 42.693260, 17.480640>,  <37.663010, 42.649456, 17.890188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249737, 42.693260, 17.480640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262146, 42.313309, 17.605074>,  <38.269592, 42.085339, 17.679733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262146, 42.313309, 17.605074>,  <38.249737, 42.693260, 17.480640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262146, 42.313309, 17.605074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236630, -0.295407, -0.925603,
		0.971105, 0.102323, 0.215606,
		0.031019, -0.949876, 0.311083,
		38.271450, 42.028347, 17.698399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896339, 42.399483, 17.150761>,  <38.249737, 42.693260, 17.480640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896339, 42.399483, 17.150761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655224, 42.097439, 17.253876>,  <38.510555, 41.916214, 17.315744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655224, 42.097439, 17.253876>,  <38.896339, 42.399483, 17.150761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655224, 42.097439, 17.253876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024119, -0.305692, -0.951825,
		0.797533, -0.579971, 0.166056,
		-0.602793, -0.755107, 0.257788,
		38.474384, 41.870907, 17.331211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205612, 41.920914, 16.858078>,  <38.896339, 42.399483, 17.150761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205612, 41.920914, 16.858078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834412, 41.786140, 16.921696>,  <38.611691, 41.705276, 16.959867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834412, 41.786140, 16.921696>,  <39.205612, 41.920914, 16.858078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834412, 41.786140, 16.921696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047850, -0.315563, -0.947698,
		0.369495, -0.887073, 0.276720,
		-0.928000, -0.336929, 0.159045,
		38.556011, 41.685062, 16.969410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166023, 41.314190, 16.424704>,  <39.205612, 41.920914, 16.858078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166023, 41.314190, 16.424704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.781891, 41.402218, 16.493210>,  <38.551411, 41.455036, 16.534313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.781891, 41.402218, 16.493210>,  <39.166023, 41.314190, 16.424704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781891, 41.402218, 16.493210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203581, -0.133570, -0.969904,
		-0.190576, -0.966295, 0.173074,
		-0.960331, 0.220075, 0.171264,
		38.493790, 41.468239, 16.544590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844585, 40.873775, 16.064331>,  <39.166023, 41.314190, 16.424704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844585, 40.873775, 16.064331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574547, 41.165474, 16.108955>,  <38.412521, 41.340492, 16.135729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574547, 41.165474, 16.108955>,  <38.844585, 40.873775, 16.064331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574547, 41.165474, 16.108955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189385, -0.025163, -0.981580,
		-0.713005, -0.683790, 0.155095,
		-0.675098, 0.729245, 0.111559,
		38.372017, 41.384247, 16.142424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309647, 40.611061, 15.615014>,  <38.844585, 40.873775, 16.064331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309647, 40.611061, 15.615014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214790, 40.991787, 15.692792>,  <38.157879, 41.220222, 15.739458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214790, 40.991787, 15.692792>,  <38.309647, 40.611061, 15.615014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214790, 40.991787, 15.692792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294132, 0.120414, -0.948149,
		-0.925879, -0.282033, 0.251406,
		-0.237136, 0.951818, 0.194444,
		38.143650, 41.277332, 15.751125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518421, 40.781975, 15.503290>,  <38.309647, 40.611061, 15.615014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518421, 40.781975, 15.503290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730804, 41.120277, 15.482192>,  <37.858234, 41.323257, 15.469533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730804, 41.120277, 15.482192>,  <37.518421, 40.781975, 15.503290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730804, 41.120277, 15.482192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228075, 0.082683, -0.970127,
		-0.816128, 0.527126, 0.236796,
		0.530958, 0.845755, -0.052744,
		37.890091, 41.374004, 15.466369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038780, 41.378963, 15.151582>,  <37.518421, 40.781975, 15.503290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038780, 41.378963, 15.151582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426182, 41.460468, 15.094324>,  <37.658623, 41.509369, 15.059970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426182, 41.460468, 15.094324>,  <37.038780, 41.378963, 15.151582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426182, 41.460468, 15.094324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163705, 0.087839, -0.982591,
		-0.187637, 0.975073, 0.118428,
		0.968500, 0.203758, -0.143143,
		37.716732, 41.521595, 15.051381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024410, 41.966846, 14.691482>,  <37.038780, 41.378963, 15.151582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024410, 41.966846, 14.691482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410408, 41.865540, 14.664216>,  <37.642006, 41.804756, 14.647857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410408, 41.865540, 14.664216>,  <37.024410, 41.966846, 14.691482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410408, 41.865540, 14.664216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040773, 0.111875, -0.992885,
		0.259091, 0.960906, 0.097632,
		0.964992, -0.253267, -0.068165,
		37.699905, 41.789558, 14.643766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224091, 42.356346, 14.233888>,  <37.024410, 41.966846, 14.691482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224091, 42.356346, 14.233888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510509, 42.077572, 14.218104>,  <37.682362, 41.910309, 14.208634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510509, 42.077572, 14.218104>,  <37.224091, 42.356346, 14.233888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510509, 42.077572, 14.218104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133442, -0.081181, -0.987726,
		0.685174, 0.712528, -0.151130,
		0.716051, -0.696932, -0.039458,
		37.725327, 41.868492, 14.206267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659023, 42.554115, 13.789957>,  <37.224091, 42.356346, 14.233888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659023, 42.554115, 13.789957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792831, 42.177269, 13.799100>,  <37.873116, 41.951160, 13.804585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792831, 42.177269, 13.799100>,  <37.659023, 42.554115, 13.789957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792831, 42.177269, 13.799100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055234, -0.043813, -0.997512,
		0.940769, 0.332425, -0.066693,
		0.334520, -0.942112, 0.022857,
		37.893188, 41.894634, 13.805957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185181, 42.493248, 13.315316>,  <37.659023, 42.554115, 13.789957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185181, 42.493248, 13.315316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048130, 42.120594, 13.363759>,  <37.965900, 41.897003, 13.392825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048130, 42.120594, 13.363759>,  <38.185181, 42.493248, 13.315316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048130, 42.120594, 13.363759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120184, -0.084386, -0.989159,
		0.931751, -0.353471, -0.083054,
		-0.342631, -0.931631, 0.121108,
		37.945339, 41.841106, 13.400091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506374, 42.054104, 12.746564>,  <38.185181, 42.493248, 13.315316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506374, 42.054104, 12.746564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178528, 41.862442, 12.872197>,  <37.981819, 41.747444, 12.947577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178528, 41.862442, 12.872197>,  <38.506374, 42.054104, 12.746564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178528, 41.862442, 12.872197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261926, -0.174187, -0.949239,
		0.509538, -0.860275, 0.017264,
		-0.819613, -0.479151, 0.314083,
		37.932644, 41.718697, 12.966422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542416, 41.408508, 12.485173>,  <38.506374, 42.054104, 12.746564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542416, 41.408508, 12.485173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151413, 41.457321, 12.553988>,  <37.916813, 41.486610, 12.595276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151413, 41.457321, 12.553988>,  <38.542416, 41.408508, 12.485173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151413, 41.457321, 12.553988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207090, -0.400469, -0.892602,
		-0.040031, -0.908148, 0.416732,
		-0.977502, 0.122033, 0.172037,
		37.858162, 41.493931, 12.605598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255802, 40.841618, 12.179968>,  <38.542416, 41.408508, 12.485173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255802, 40.841618, 12.179968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944855, 41.090664, 12.215873>,  <37.758286, 41.240089, 12.237415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944855, 41.090664, 12.215873>,  <38.255802, 40.841618, 12.179968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944855, 41.090664, 12.215873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336243, -0.290671, -0.895796,
		-0.531644, -0.726542, 0.435306,
		-0.777365, 0.622613, 0.089761,
		37.711643, 41.277447, 12.242802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668438, 40.885906, 12.621060>,  <38.255802, 40.841618, 12.179968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668438, 40.885906, 12.621060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448944, 40.582134, 12.760862>,  <37.317245, 40.399872, 12.844744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448944, 40.582134, 12.760862>,  <37.668438, 40.885906, 12.621060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448944, 40.582134, 12.760862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093281, -0.359838, -0.928340,
		0.830774, -0.542017, 0.126617,
		-0.548737, -0.759430, 0.349504,
		37.284325, 40.354305, 12.865713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955460, 40.236328, 12.598756>,  <37.668438, 40.885906, 12.621060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955460, 40.236328, 12.598756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561752, 40.170399, 12.573318>,  <37.325527, 40.130840, 12.558055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561752, 40.170399, 12.573318>,  <37.955460, 40.236328, 12.598756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561752, 40.170399, 12.573318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144359, -0.542853, -0.827327,
		0.101839, -0.823495, 0.558108,
		-0.984271, -0.164822, -0.063595,
		37.266472, 40.120953, 12.554239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017963, 39.756931, 11.962463>,  <37.955460, 40.236328, 12.598756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017963, 39.756931, 11.962463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066303, 39.368469, 12.044687>,  <38.095306, 39.135391, 12.094022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066303, 39.368469, 12.044687>,  <38.017963, 39.756931, 11.962463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066303, 39.368469, 12.044687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427360, 0.136006, 0.893793,
		-0.895969, -0.195858, -0.398597,
		0.120845, -0.971155, 0.205559,
		38.102558, 39.077122, 12.106355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359367, 39.542953, 12.405001>,  <38.017963, 39.756931, 11.962463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359367, 39.542953, 12.405001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643730, 39.268082, 12.464873>,  <37.814346, 39.103161, 12.500796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643730, 39.268082, 12.464873>,  <37.359367, 39.542953, 12.405001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643730, 39.268082, 12.464873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231305, -0.027462, 0.972494,
		-0.664165, -0.725970, -0.178470,
		0.710903, -0.687178, 0.149681,
		37.857002, 39.061928, 12.509778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050678, 39.006737, 12.777189>,  <37.359367, 39.542953, 12.405001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050678, 39.006737, 12.777189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444012, 38.975475, 12.842855>,  <37.680012, 38.956718, 12.882255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444012, 38.975475, 12.842855>,  <37.050678, 39.006737, 12.777189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444012, 38.975475, 12.842855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162355, 0.029015, 0.986306,
		-0.081854, -0.996518, 0.015842,
		0.983331, -0.078161, 0.164165,
		37.739010, 38.952026, 12.892105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130024, 38.508770, 13.228003>,  <37.050678, 39.006737, 12.777189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130024, 38.508770, 13.228003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488708, 38.678406, 13.278688>,  <37.703918, 38.780186, 13.309100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488708, 38.678406, 13.278688>,  <37.130024, 38.508770, 13.228003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488708, 38.678406, 13.278688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074603, -0.137373, 0.987706,
		0.436279, -0.895142, -0.091546,
		0.896714, 0.424086, 0.126714,
		37.757721, 38.805630, 13.316703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392921, 38.115047, 13.801150>,  <37.130024, 38.508770, 13.228003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392921, 38.115047, 13.801150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597958, 38.458500, 13.800587>,  <37.720978, 38.664570, 13.800248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597958, 38.458500, 13.800587>,  <37.392921, 38.115047, 13.801150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597958, 38.458500, 13.800587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092742, -0.053733, 0.994239,
		0.853610, -0.509769, -0.107174,
		0.512591, 0.858632, -0.001410,
		37.751736, 38.716091, 13.800163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878880, 37.899815, 14.233500>,  <37.392921, 38.115047, 13.801150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878880, 37.899815, 14.233500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883751, 38.299175, 14.211398>,  <37.886673, 38.538792, 14.198136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883751, 38.299175, 14.211398>,  <37.878880, 37.899815, 14.233500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883751, 38.299175, 14.211398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156227, 0.052683, 0.986315,
		0.987646, -0.020643, -0.155335,
		0.012177, 0.998398, -0.055257,
		37.887405, 38.598694, 14.194821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538139, 38.164211, 14.563204>,  <37.878880, 37.899815, 14.233500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538139, 38.164211, 14.563204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251255, 38.441223, 14.594242>,  <38.079124, 38.607430, 14.612865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251255, 38.441223, 14.594242>,  <38.538139, 38.164211, 14.563204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251255, 38.441223, 14.594242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177535, 0.073906, 0.981335,
		0.673866, 0.717597, -0.175953,
		-0.717207, 0.692526, 0.077596,
		38.036095, 38.648979, 14.617521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860233, 38.620029, 14.980690>,  <38.538139, 38.164211, 14.563204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860233, 38.620029, 14.980690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469643, 38.705891, 14.988912>,  <38.235291, 38.757408, 14.993845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469643, 38.705891, 14.988912>,  <38.860233, 38.620029, 14.980690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469643, 38.705891, 14.988912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067386, 0.213215, 0.974679,
		0.204833, 0.953134, -0.222664,
		-0.976475, 0.214650, 0.020554,
		38.176701, 38.770287, 14.995078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923462, 39.173141, 15.375012>,  <38.860233, 38.620029, 14.980690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923462, 39.173141, 15.375012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537788, 39.067169, 15.379969>,  <38.306385, 39.003586, 15.382942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537788, 39.067169, 15.379969>,  <38.923462, 39.173141, 15.375012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537788, 39.067169, 15.379969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087321, 0.361216, 0.928385,
		-0.250435, 0.894055, -0.371414,
		-0.964187, -0.264933, 0.012391,
		38.248531, 38.987690, 15.383686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617191, 39.679443, 15.716889>,  <38.923462, 39.173141, 15.375012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617191, 39.679443, 15.716889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351852, 39.381031, 15.740236>,  <38.192650, 39.201984, 15.754244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351852, 39.381031, 15.740236>,  <38.617191, 39.679443, 15.716889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351852, 39.381031, 15.740236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173565, 0.229258, 0.957766,
		-0.727908, 0.625198, -0.281563,
		-0.663344, -0.746035, 0.058366,
		38.152851, 39.157219, 15.757746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985733, 39.902283, 16.172935>,  <38.617191, 39.679443, 15.716889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985733, 39.902283, 16.172935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960049, 39.503216, 16.163595>,  <37.944637, 39.263775, 16.157991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960049, 39.503216, 16.163595>,  <37.985733, 39.902283, 16.172935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960049, 39.503216, 16.163595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176489, -0.011679, 0.984233,
		-0.982206, 0.067322, -0.175327,
		-0.064213, -0.997663, -0.023353,
		37.940784, 39.203918, 16.156590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416790, 39.752625, 16.682116>,  <37.985733, 39.902283, 16.172935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416790, 39.752625, 16.682116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639889, 39.422832, 16.643848>,  <37.773750, 39.224957, 16.620888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639889, 39.422832, 16.643848>,  <37.416790, 39.752625, 16.682116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639889, 39.422832, 16.643848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043495, -0.086070, 0.995339,
		-0.828868, -0.559313, -0.012145,
		0.557751, -0.824476, -0.095668,
		37.807213, 39.175491, 16.615149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043526, 39.281387, 17.059223>,  <37.416790, 39.752625, 16.682116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043526, 39.281387, 17.059223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.429855, 39.179562, 17.039686>,  <37.661652, 39.118465, 17.027964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.429855, 39.179562, 17.039686>,  <37.043526, 39.281387, 17.059223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429855, 39.179562, 17.039686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055477, 0.018945, 0.998280,
		-0.253200, -0.966871, 0.032420,
		0.965822, -0.254563, -0.048842,
		37.719601, 39.103191, 17.025034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099312, 39.014225, 17.656820>,  <37.043526, 39.281387, 17.059223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099312, 39.014225, 17.656820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473083, 39.093575, 17.538511>,  <37.697346, 39.141186, 17.467525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473083, 39.093575, 17.538511>,  <37.099312, 39.014225, 17.656820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473083, 39.093575, 17.538511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254328, 0.209662, 0.944118,
		0.249305, -0.957438, 0.145462,
		0.934433, 0.198379, -0.295773,
		37.753414, 39.153088, 17.449780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493935, 38.528355, 18.010303>,  <37.099312, 39.014225, 17.656820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493935, 38.528355, 18.010303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.744373, 38.826752, 17.919527>,  <37.894638, 39.005791, 17.865061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.744373, 38.826752, 17.919527>,  <37.493935, 38.528355, 18.010303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744373, 38.826752, 17.919527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245380, 0.087756, 0.965447,
		0.740127, -0.660152, -0.128107,
		0.626099, 0.745988, -0.226939,
		37.932201, 39.050549, 17.851446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043518, 38.509647, 18.431566>,  <37.493935, 38.528355, 18.010303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043518, 38.509647, 18.431566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091137, 38.887947, 18.310642>,  <38.119709, 39.114925, 18.238089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091137, 38.887947, 18.310642>,  <38.043518, 38.509647, 18.431566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091137, 38.887947, 18.310642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244796, 0.267117, 0.932054,
		0.962238, -0.184963, -0.199715,
		0.119048, 0.945747, -0.302308,
		38.126850, 39.171673, 18.219950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619553, 38.710472, 18.767191>,  <38.043518, 38.509647, 18.431566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619553, 38.710472, 18.767191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.455631, 39.057713, 18.655149>,  <38.357277, 39.266056, 18.587925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.455631, 39.057713, 18.655149>,  <38.619553, 38.710472, 18.767191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455631, 39.057713, 18.655149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158664, 0.370230, 0.915290,
		0.898268, 0.330648, -0.289458,
		-0.409805, 0.868102, -0.280104,
		38.332691, 39.318142, 18.571117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094116, 39.294216, 19.008459>,  <38.619553, 38.710472, 18.767191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094116, 39.294216, 19.008459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733902, 39.465496, 18.978333>,  <38.517773, 39.568264, 18.960257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733902, 39.465496, 18.978333>,  <39.094116, 39.294216, 19.008459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733902, 39.465496, 18.978333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153357, 0.474942, 0.866552,
		0.406831, 0.768813, -0.493371,
		-0.900539, 0.428202, -0.075319,
		38.463741, 39.593956, 18.955736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219391, 39.805912, 19.477341>,  <39.094116, 39.294216, 19.008459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219391, 39.805912, 19.477341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820332, 39.829132, 19.462784>,  <38.580894, 39.843063, 19.454050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820332, 39.829132, 19.462784>,  <39.219391, 39.805912, 19.477341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820332, 39.829132, 19.462784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005858, 0.456948, 0.889474,
		0.068262, 0.887597, -0.455535,
		-0.997650, 0.058049, -0.036391,
		38.521038, 39.846546, 19.451866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006439, 40.459568, 19.631462>,  <39.219391, 39.805912, 19.477341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006439, 40.459568, 19.631462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675495, 40.247475, 19.705584>,  <38.476929, 40.120220, 19.750057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675495, 40.247475, 19.705584>,  <39.006439, 40.459568, 19.631462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675495, 40.247475, 19.705584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106617, 0.472172, 0.875035,
		-0.551466, 0.704209, -0.447186,
		-0.827356, -0.530229, 0.185306,
		38.427288, 40.088406, 19.761175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.738560, 44.806053, 22.662645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540192, 44.477261, 22.774660>,  <38.421173, 44.279987, 22.841869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540192, 44.477261, 22.774660>,  <38.738560, 44.806053, 22.662645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540192, 44.477261, 22.774660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032707, 0.339938, 0.939879,
		-0.867754, 0.456943, -0.195465,
		-0.495917, -0.821977, 0.280037,
		38.391418, 44.230667, 22.858671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135620, 44.979553, 23.196922>,  <38.738560, 44.806053, 22.662645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135620, 44.979553, 23.196922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.161083, 44.588604, 23.277599>,  <38.176361, 44.354034, 23.326006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.161083, 44.588604, 23.277599>,  <38.135620, 44.979553, 23.196922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161083, 44.588604, 23.277599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036978, 0.199655, 0.979168,
		-0.997286, -0.069793, -0.023431,
		0.063661, -0.977378, 0.201694,
		38.180183, 44.295391, 23.338108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676971, 44.855301, 23.740341>,  <38.135620, 44.979553, 23.196922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676971, 44.855301, 23.740341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.907318, 44.530300, 23.776592>,  <38.045528, 44.335300, 23.798344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.907318, 44.530300, 23.776592>,  <37.676971, 44.855301, 23.740341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907318, 44.530300, 23.776592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100677, 0.039533, 0.994134,
		-0.811320, -0.581615, -0.059034,
		0.575869, -0.812503, 0.090629,
		38.080078, 44.286549, 23.803782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292099, 44.286854, 24.066069>,  <37.676971, 44.855301, 23.740341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292099, 44.286854, 24.066069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.673977, 44.178299, 24.114895>,  <37.903103, 44.113167, 24.144190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.673977, 44.178299, 24.114895>,  <37.292099, 44.286854, 24.066069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673977, 44.178299, 24.114895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152699, -0.094712, 0.983724,
		-0.255411, -0.957799, -0.131862,
		0.954698, -0.271389, 0.122065,
		37.960388, 44.096882, 24.151514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250084, 43.719681, 24.496651>,  <37.292099, 44.286854, 24.066069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250084, 43.719681, 24.496651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.632023, 43.826881, 24.547937>,  <37.861187, 43.891201, 24.578711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.632023, 43.826881, 24.547937>,  <37.250084, 43.719681, 24.496651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632023, 43.826881, 24.547937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136269, 0.011575, 0.990604,
		0.264000, -0.963349, 0.047573,
		0.954848, 0.268002, 0.128219,
		37.918476, 43.907280, 24.586403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554749, 43.208553, 24.899319>,  <37.250084, 43.719681, 24.496651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554749, 43.208553, 24.899319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764816, 43.546612, 24.939190>,  <37.890858, 43.749447, 24.963112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764816, 43.546612, 24.939190>,  <37.554749, 43.208553, 24.899319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764816, 43.546612, 24.939190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004953, -0.120165, 0.992742,
		0.850986, -0.520860, -0.067292,
		0.525166, 0.845142, 0.099678,
		37.922367, 43.800156, 24.969093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033295, 43.056877, 25.459494>,  <37.554749, 43.208553, 24.899319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033295, 43.056877, 25.459494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.020763, 43.455994, 25.436037>,  <38.013245, 43.695461, 25.421963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.020763, 43.455994, 25.436037>,  <38.033295, 43.056877, 25.459494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020763, 43.455994, 25.436037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059394, 0.056708, 0.996623,
		0.997743, 0.034709, 0.057486,
		-0.031332, 0.997787, -0.058641,
		38.011364, 43.755329, 25.418446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532028, 43.275902, 25.980118>,  <38.033295, 43.056877, 25.459494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532028, 43.275902, 25.980118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.316288, 43.607334, 25.920044>,  <38.186844, 43.806194, 25.883999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.316288, 43.607334, 25.920044>,  <38.532028, 43.275902, 25.980118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316288, 43.607334, 25.920044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136872, 0.089717, 0.986518,
		0.830883, 0.552636, 0.065020,
		-0.539351, 0.828580, -0.150185,
		38.154484, 43.855907, 25.874989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751968, 43.731709, 26.523817>,  <38.532028, 43.275902, 25.980118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751968, 43.731709, 26.523817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.384884, 43.833580, 26.401871>,  <38.164635, 43.894703, 26.328703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.384884, 43.833580, 26.401871>,  <38.751968, 43.731709, 26.523817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384884, 43.833580, 26.401871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315991, -0.002935, 0.948758,
		0.240738, 0.967020, 0.083171,
		-0.917712, 0.254683, -0.304864,
		38.109570, 43.909985, 26.310411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502663, 44.399830, 26.864202>,  <38.751968, 43.731709, 26.523817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502663, 44.399830, 26.864202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.171432, 44.198544, 26.765362>,  <37.972694, 44.077770, 26.706057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.171432, 44.198544, 26.765362>,  <38.502663, 44.399830, 26.864202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171432, 44.198544, 26.765362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273720, -0.021750, 0.961563,
		-0.489252, 0.863885, -0.119731,
		-0.828076, -0.503219, -0.247104,
		37.923008, 44.047577, 26.691231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089069, 44.558090, 27.395290>,  <38.502663, 44.399830, 26.864202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089069, 44.558090, 27.395290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.861950, 44.264042, 27.247126>,  <37.725677, 44.087612, 27.158226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.861950, 44.264042, 27.247126>,  <38.089069, 44.558090, 27.395290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861950, 44.264042, 27.247126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245093, -0.278599, 0.928607,
		-0.785835, 0.618046, -0.021986,
		-0.567797, -0.735120, -0.370412,
		37.691612, 44.043507, 27.136002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460823, 44.519684, 27.858866>,  <38.089069, 44.558090, 27.395290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460823, 44.519684, 27.858866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483562, 44.170624, 27.664858>,  <37.497208, 43.961185, 27.548452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483562, 44.170624, 27.664858>,  <37.460823, 44.519684, 27.858866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483562, 44.170624, 27.664858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280592, -0.480190, 0.831075,
		-0.958142, 0.088846, -0.272158,
		0.056850, -0.872653, -0.485020,
		37.500618, 43.908829, 27.519352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824169, 44.115189, 27.776821>,  <37.460823, 44.519684, 27.858866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824169, 44.115189, 27.776821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118538, 43.844597, 27.788080>,  <37.295158, 43.682240, 27.794836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118538, 43.844597, 27.788080>,  <36.824169, 44.115189, 27.776821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118538, 43.844597, 27.788080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381259, -0.379687, 0.842899,
		-0.559520, -0.631038, -0.537335,
		0.735921, -0.676482, 0.028146,
		37.339314, 43.641651, 27.796524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010647, 44.278111, 27.859280>,  <36.824169, 44.115189, 27.776821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010647, 44.278111, 27.859280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.660130, 44.132984, 27.986065>,  <35.449818, 44.045906, 28.062136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.660130, 44.132984, 27.986065>,  <36.010647, 44.278111, 27.859280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660130, 44.132984, 27.986065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344006, 0.010621, -0.938907,
		0.337288, -0.931799, -0.134120,
		-0.876297, -0.362820, 0.316962,
		35.397240, 44.024139, 28.081154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823112, 43.577492, 27.674454>,  <36.010647, 44.278111, 27.859280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823112, 43.577492, 27.674454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.521561, 43.839149, 27.698996>,  <35.340630, 43.996143, 27.713720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.521561, 43.839149, 27.698996>,  <35.823112, 43.577492, 27.674454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521561, 43.839149, 27.698996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102541, -0.024906, -0.994417,
		-0.648966, -0.755958, 0.085853,
		-0.753876, 0.654146, 0.061354,
		35.295399, 44.035393, 27.717402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208344, 43.235626, 27.379196>,  <35.823112, 43.577492, 27.674454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208344, 43.235626, 27.379196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.114834, 43.624126, 27.361225>,  <35.058727, 43.857227, 27.350443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.114834, 43.624126, 27.361225>,  <35.208344, 43.235626, 27.379196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114834, 43.624126, 27.361225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309576, -0.118159, -0.943505,
		-0.921689, -0.206662, 0.328299,
		-0.233778, 0.971251, -0.044928,
		35.044701, 43.915501, 27.347746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433208, 43.390472, 27.081429>,  <35.208344, 43.235626, 27.379196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433208, 43.390472, 27.081429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.640915, 43.725777, 27.014872>,  <34.765541, 43.926960, 26.974937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.640915, 43.725777, 27.014872>,  <34.433208, 43.390472, 27.081429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640915, 43.725777, 27.014872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356186, 0.035298, -0.933748,
		-0.776847, 0.544133, 0.316904,
		0.519269, 0.838256, -0.166391,
		34.796696, 43.977253, 26.964954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987080, 43.769367, 26.670980>,  <34.433208, 43.390472, 27.081429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987080, 43.769367, 26.670980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.335781, 43.958920, 26.621212>,  <34.545002, 44.072651, 26.591351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.335781, 43.958920, 26.621212>,  <33.987080, 43.769367, 26.670980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335781, 43.958920, 26.621212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243183, 0.198050, -0.949546,
		-0.425326, 0.858030, 0.287891,
		0.871756, 0.473877, -0.124423,
		34.597309, 44.101082, 26.583885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768906, 44.325211, 26.306349>,  <33.987080, 43.769367, 26.670980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768906, 44.325211, 26.306349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.156120, 44.244637, 26.246586>,  <34.388451, 44.196293, 26.210728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.156120, 44.244637, 26.246586>,  <33.768906, 44.325211, 26.306349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156120, 44.244637, 26.246586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148060, 0.021817, -0.988738,
		0.202429, 0.979258, -0.008705,
		0.968040, -0.201438, -0.149406,
		34.446533, 44.184204, 26.201763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954945, 44.752399, 25.815163>,  <33.768906, 44.325211, 26.306349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954945, 44.752399, 25.815163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.247295, 44.480942, 25.786184>,  <34.422707, 44.318066, 25.768797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.247295, 44.480942, 25.786184>,  <33.954945, 44.752399, 25.815163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247295, 44.480942, 25.786184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037581, 0.065969, -0.997114,
		0.681469, 0.731494, 0.022712,
		0.730881, -0.678648, -0.072446,
		34.466560, 44.277348, 25.764450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416229, 45.010723, 25.251120>,  <33.954945, 44.752399, 25.815163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416229, 45.010723, 25.251120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.469254, 44.617428, 25.301180>,  <34.501068, 44.381451, 25.331215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.469254, 44.617428, 25.301180>,  <34.416229, 45.010723, 25.251120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469254, 44.617428, 25.301180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127281, -0.108331, -0.985933,
		0.982968, 0.146629, 0.110787,
		0.132564, -0.983242, 0.125149,
		34.509022, 44.322456, 25.338724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032116, 44.841602, 24.947073>,  <34.416229, 45.010723, 25.251120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032116, 44.841602, 24.947073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.826706, 44.498417, 24.941566>,  <34.703461, 44.292507, 24.938263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.826706, 44.498417, 24.941566>,  <35.032116, 44.841602, 24.947073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826706, 44.498417, 24.941566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338803, -0.188000, -0.921883,
		0.788353, -0.478077, 0.387223,
		-0.513529, -0.857962, -0.013764,
		34.672646, 44.241028, 24.937437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551247, 44.413208, 24.593695>,  <35.032116, 44.841602, 24.947073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551247, 44.413208, 24.593695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.198227, 44.226204, 24.573515>,  <34.986416, 44.114002, 24.561407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.198227, 44.226204, 24.573515>,  <35.551247, 44.413208, 24.593695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198227, 44.226204, 24.573515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200218, -0.276537, -0.939915,
		0.425466, -0.839621, 0.337661,
		-0.882548, -0.467508, -0.050450,
		34.933464, 44.085953, 24.558380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779682, 43.774120, 24.346649>,  <35.551247, 44.413208, 24.593695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779682, 43.774120, 24.346649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.383656, 43.787117, 24.291935>,  <35.146038, 43.794914, 24.259108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.383656, 43.787117, 24.291935>,  <35.779682, 43.774120, 24.346649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383656, 43.787117, 24.291935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111964, -0.406189, -0.906904,
		-0.085025, -0.913211, 0.398517,
		-0.990068, 0.032490, -0.136784,
		35.086636, 43.796864, 24.250900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606236, 43.072617, 24.020889>,  <35.779682, 43.774120, 24.346649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606236, 43.072617, 24.020889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.331688, 43.352413, 23.941280>,  <35.166962, 43.520290, 23.893515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.331688, 43.352413, 23.941280>,  <35.606236, 43.072617, 24.020889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331688, 43.352413, 23.941280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091649, -0.354672, -0.930488,
		-0.721458, -0.620416, 0.307543,
		-0.686367, 0.699494, -0.199021,
		35.125778, 43.562260, 23.881575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077946, 42.726509, 23.648203>,  <35.606236, 43.072617, 24.020889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077946, 42.726509, 23.648203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.015636, 43.116211, 23.583000>,  <34.978252, 43.350033, 23.543879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.015636, 43.116211, 23.583000>,  <35.077946, 42.726509, 23.648203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015636, 43.116211, 23.583000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034370, -0.159577, -0.986587,
		-0.987195, -0.159283, -0.008628,
		-0.155770, 0.974251, -0.163008,
		34.968906, 43.408485, 23.534098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530495, 42.665051, 23.166319>,  <35.077946, 42.726509, 23.648203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530495, 42.665051, 23.166319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.676010, 43.034107, 23.115110>,  <34.763321, 43.255543, 23.084385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.676010, 43.034107, 23.115110>,  <34.530495, 42.665051, 23.166319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676010, 43.034107, 23.115110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157631, -0.074477, -0.984686,
		-0.918048, 0.378396, 0.118343,
		0.363787, 0.922643, -0.128020,
		34.785145, 43.310902, 23.076704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027542, 42.961304, 22.667004>,  <34.530495, 42.665051, 23.166319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027542, 42.961304, 22.667004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.354092, 43.192196, 22.659565>,  <34.550022, 43.330730, 22.655102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.354092, 43.192196, 22.659565>,  <34.027542, 42.961304, 22.667004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354092, 43.192196, 22.659565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009317, -0.019034, -0.999775,
		-0.577455, 0.816359, -0.010161,
		0.816369, 0.577231, -0.018597,
		34.599003, 43.365364, 22.653986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315742, 42.970592, 22.712654>,  <34.027542, 42.961304, 22.667004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315742, 42.970592, 22.712654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.210262, 42.604778, 22.589962>,  <33.146973, 42.385288, 22.516348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.210262, 42.604778, 22.589962>,  <33.315742, 42.970592, 22.712654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210262, 42.604778, 22.589962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029477, -0.310195, 0.950216,
		-0.964154, 0.259615, 0.054841,
		-0.263702, -0.914538, -0.306728,
		33.131153, 42.330418, 22.497944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604496, 42.845940, 23.067551>,  <33.315742, 42.970592, 22.712654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604496, 42.845940, 23.067551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.792461, 42.508152, 22.964748>,  <32.905243, 42.305481, 22.903067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.792461, 42.508152, 22.964748>,  <32.604496, 42.845940, 23.067551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792461, 42.508152, 22.964748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153746, -0.365008, 0.918222,
		-0.869218, -0.391974, -0.301357,
		0.469917, -0.844468, -0.257007,
		32.933437, 42.254810, 22.887646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209984, 42.378181, 23.305788>,  <32.604496, 42.845940, 23.067551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209984, 42.378181, 23.305788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.534695, 42.147957, 23.266294>,  <32.729523, 42.009823, 23.242598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.534695, 42.147957, 23.266294>,  <32.209984, 42.378181, 23.305788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534695, 42.147957, 23.266294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094598, -0.296450, 0.950352,
		-0.576256, -0.762133, -0.295098,
		0.811776, -0.575561, -0.098735,
		32.778229, 41.975288, 23.236673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042953, 41.736622, 23.581327>,  <32.209984, 42.378181, 23.305788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042953, 41.736622, 23.581327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.441681, 41.768257, 23.585459>,  <32.680916, 41.787239, 23.587938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.441681, 41.768257, 23.585459>,  <32.042953, 41.736622, 23.581327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441681, 41.768257, 23.585459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015125, -0.314619, 0.949098,
		0.078311, -0.945918, -0.314813,
		0.996814, 0.079087, 0.010331,
		32.740726, 41.791985, 23.588558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252262, 41.248363, 24.052553>,  <32.042953, 41.736622, 23.581327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252262, 41.248363, 24.052553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.608143, 41.428635, 24.023388>,  <32.821671, 41.536797, 24.005890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.608143, 41.428635, 24.023388>,  <32.252262, 41.248363, 24.052553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608143, 41.428635, 24.023388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308417, -0.475578, 0.823835,
		0.336610, -0.755456, -0.562120,
		0.889704, 0.450678, -0.072911,
		32.875053, 41.563839, 24.001514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784950, 40.728416, 24.253927>,  <32.252262, 41.248363, 24.052553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784950, 40.728416, 24.253927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.963970, 41.085636, 24.272549>,  <33.071381, 41.299969, 24.283722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.963970, 41.085636, 24.272549>,  <32.784950, 40.728416, 24.253927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963970, 41.085636, 24.272549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371326, -0.232943, 0.898808,
		0.813521, -0.384975, -0.435865,
		0.447550, 0.893046, 0.046553,
		33.098236, 41.353550, 24.286514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577442, 40.618534, 24.467108>,  <32.784950, 40.728416, 24.253927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577442, 40.618534, 24.467108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.476685, 40.987411, 24.584486>,  <33.416229, 41.208736, 24.654913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.476685, 40.987411, 24.584486>,  <33.577442, 40.618534, 24.467108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476685, 40.987411, 24.584486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168124, -0.256911, 0.951699,
		0.953039, 0.289063, -0.090328,
		-0.251894, 0.922193, 0.293444,
		33.401115, 41.264069, 24.672520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950672, 40.726429, 25.106409>,  <33.577442, 40.618534, 24.467108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950672, 40.726429, 25.106409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.704086, 41.041317, 25.112820>,  <33.556133, 41.230251, 25.116667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.704086, 41.041317, 25.112820>,  <33.950672, 40.726429, 25.106409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704086, 41.041317, 25.112820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027738, 0.001372, 0.999614,
		0.786894, 0.616672, -0.022681,
		-0.616465, 0.787219, 0.016026,
		33.519146, 41.277481, 25.117628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259933, 41.220432, 25.566950>,  <33.950672, 40.726429, 25.106409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259933, 41.220432, 25.566950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.866230, 41.289066, 25.550026>,  <33.630009, 41.330246, 25.539871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.866230, 41.289066, 25.550026>,  <34.259933, 41.220432, 25.566950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866230, 41.289066, 25.550026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021852, 0.119419, 0.992603,
		0.175365, 0.977905, -0.113790,
		-0.984261, 0.171581, -0.042311,
		33.570953, 41.340542, 25.537333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139210, 41.514599, 26.292944>,  <34.259933, 41.220432, 25.566950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139210, 41.514599, 26.292944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.774834, 41.441727, 26.144890>,  <33.556210, 41.398003, 26.056057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.774834, 41.441727, 26.144890>,  <34.139210, 41.514599, 26.292944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774834, 41.441727, 26.144890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337746, -0.185865, 0.922704,
		-0.236890, 0.965539, 0.107782,
		-0.910940, -0.182176, -0.370136,
		33.501553, 41.387074, 26.033850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755268, 42.053581, 26.481699>,  <34.139210, 41.514599, 26.292944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755268, 42.053581, 26.481699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.500000, 41.750870, 26.425089>,  <33.346840, 41.569244, 26.391123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.500000, 41.750870, 26.425089>,  <33.755268, 42.053581, 26.481699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500000, 41.750870, 26.425089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292456, 0.068239, 0.953841,
		-0.712188, 0.650101, -0.264872,
		-0.638168, -0.756778, -0.141527,
		33.308548, 41.523838, 26.382631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100769, 42.323395, 26.709240>,  <33.755268, 42.053581, 26.481699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100769, 42.323395, 26.709240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.113308, 41.923885, 26.724548>,  <33.120831, 41.684177, 26.733734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.113308, 41.923885, 26.724548>,  <33.100769, 42.323395, 26.709240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113308, 41.923885, 26.724548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149029, 0.033193, 0.988276,
		-0.988336, -0.036681, -0.147806,
		0.031345, -0.998776, 0.038272,
		33.122711, 41.624252, 26.736031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.998999, 43.159012, 18.943960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196156, 42.811031, 18.937725>,  <32.314449, 42.602242, 18.933985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196156, 42.811031, 18.937725>,  <31.998999, 43.159012, 18.943960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196156, 42.811031, 18.937725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102601, -0.075902, 0.991822,
		-0.864020, -0.487261, -0.126670,
		0.492891, -0.869951, -0.015587,
		32.344025, 42.550045, 18.933048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738005, 42.761864, 19.425903>,  <31.998999, 43.159012, 18.943960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738005, 42.761864, 19.425903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082077, 42.561710, 19.386492>,  <32.288521, 42.441620, 19.362844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082077, 42.561710, 19.386492>,  <31.738005, 42.761864, 19.425903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082077, 42.561710, 19.386492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059345, -0.093678, 0.993832,
		-0.506528, -0.860721, -0.050885,
		0.860179, -0.500384, -0.098530,
		32.340130, 42.411594, 19.356934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618250, 42.264740, 19.832979>,  <31.738005, 42.761864, 19.425903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618250, 42.264740, 19.832979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017555, 42.272335, 19.810665>,  <32.257137, 42.276894, 19.797277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017555, 42.272335, 19.810665>,  <31.618250, 42.264740, 19.832979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017555, 42.272335, 19.810665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058856, -0.274637, 0.959745,
		0.002908, -0.961360, -0.275277,
		0.998262, 0.018993, -0.055783,
		32.317036, 42.278034, 19.793930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884996, 41.542347, 20.106464>,  <31.618250, 42.264740, 19.832979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884996, 41.542347, 20.106464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176842, 41.815399, 20.122835>,  <32.351948, 41.979233, 20.132658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176842, 41.815399, 20.122835>,  <31.884996, 41.542347, 20.106464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176842, 41.815399, 20.122835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212396, -0.283090, 0.935279,
		0.650041, -0.673699, -0.351535,
		0.729613, 0.682634, 0.040929,
		32.395725, 42.020191, 20.135115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355938, 41.286793, 20.583975>,  <31.884996, 41.542347, 20.106464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355938, 41.286793, 20.583975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466488, 41.671143, 20.576647>,  <32.532818, 41.901752, 20.572250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466488, 41.671143, 20.576647>,  <32.355938, 41.286793, 20.583975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466488, 41.671143, 20.576647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345445, -0.081533, 0.934891,
		0.896820, -0.264709, -0.354463,
		0.276374, 0.960876, -0.018322,
		32.549400, 41.959404, 20.571150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013363, 41.364429, 20.883881>,  <32.355938, 41.286793, 20.583975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013363, 41.364429, 20.883881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889584, 41.741528, 20.933624>,  <32.815315, 41.967789, 20.963470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889584, 41.741528, 20.933624>,  <33.013363, 41.364429, 20.883881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889584, 41.741528, 20.933624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320011, -0.019908, 0.947205,
		0.895452, 0.332907, -0.295530,
		-0.309448, 0.942749, 0.124361,
		32.796749, 42.024353, 20.970932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674046, 41.779442, 21.013554>,  <33.013363, 41.364429, 20.883881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674046, 41.779442, 21.013554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350040, 41.980827, 21.133820>,  <33.155636, 42.101658, 21.205978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350040, 41.980827, 21.133820>,  <33.674046, 41.779442, 21.013554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350040, 41.980827, 21.133820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329429, -0.033487, 0.943587,
		0.485133, 0.863365, -0.138732,
		-0.810014, 0.503467, 0.300663,
		33.107037, 42.131866, 21.224018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918510, 42.311222, 21.460175>,  <33.674046, 41.779442, 21.013554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918510, 42.311222, 21.460175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528446, 42.274471, 21.540792>,  <33.294407, 42.252419, 21.589163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528446, 42.274471, 21.540792>,  <33.918510, 42.311222, 21.460175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528446, 42.274471, 21.540792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209951, -0.093455, 0.973235,
		-0.070587, 0.991375, 0.110424,
		-0.975161, -0.091881, 0.201543,
		33.235897, 42.246906, 21.601255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743446, 42.840286, 21.890059>,  <33.918510, 42.311222, 21.460175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743446, 42.840286, 21.890059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483170, 42.542267, 21.948706>,  <33.327003, 42.363453, 21.983894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483170, 42.542267, 21.948706>,  <33.743446, 42.840286, 21.890059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483170, 42.542267, 21.948706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251128, -0.028924, 0.967522,
		-0.716614, 0.666378, 0.205924,
		-0.650692, -0.745053, 0.146618,
		33.287964, 42.318752, 21.992691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844753, 43.475967, 22.155468>,  <33.743446, 42.840286, 21.890059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844753, 43.475967, 22.155468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242008, 43.454491, 22.197033>,  <34.480362, 43.441605, 22.221972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242008, 43.454491, 22.197033>,  <33.844753, 43.475967, 22.155468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242008, 43.454491, 22.197033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111935, 0.178568, -0.977540,
		0.033932, 0.982462, 0.183353,
		0.993136, -0.053693, 0.103913,
		34.539948, 43.438381, 22.228207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172958, 43.997280, 21.808001>,  <33.844753, 43.475967, 22.155468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172958, 43.997280, 21.808001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450706, 43.710808, 21.836094>,  <34.617355, 43.538925, 21.852951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450706, 43.710808, 21.836094>,  <34.172958, 43.997280, 21.808001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450706, 43.710808, 21.836094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174704, 0.073090, -0.981905,
		0.698085, 0.694080, 0.175870,
		0.694375, -0.716178, 0.070236,
		34.659019, 43.495953, 21.857164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698299, 44.196480, 21.348627>,  <34.172958, 43.997280, 21.808001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698299, 44.196480, 21.348627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771839, 43.807278, 21.404421>,  <34.815964, 43.573757, 21.437897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771839, 43.807278, 21.404421>,  <34.698299, 44.196480, 21.348627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771839, 43.807278, 21.404421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288730, -0.082184, -0.953877,
		0.939593, 0.215642, 0.265827,
		0.183849, -0.973008, 0.139482,
		34.826992, 43.515377, 21.446266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400143, 44.071930, 21.180859>,  <34.698299, 44.196480, 21.348627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400143, 44.071930, 21.180859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210049, 43.723156, 21.133720>,  <35.095993, 43.513893, 21.105436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210049, 43.723156, 21.133720>,  <35.400143, 44.071930, 21.180859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210049, 43.723156, 21.133720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411910, -0.102124, -0.905484,
		0.777485, -0.478858, 0.407690,
		-0.475233, -0.871932, -0.117847,
		35.067478, 43.461575, 21.098366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942234, 43.578938, 20.902281>,  <35.400143, 44.071930, 21.180859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942234, 43.578938, 20.902281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574123, 43.438538, 20.833134>,  <35.353256, 43.354298, 20.791645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574123, 43.438538, 20.833134>,  <35.942234, 43.578938, 20.902281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574123, 43.438538, 20.833134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230148, -0.128320, -0.964658,
		0.316414, -0.927541, 0.198873,
		-0.920279, -0.351002, -0.172870,
		35.298038, 43.333237, 20.781273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084209, 42.975208, 20.419302>,  <35.942234, 43.578938, 20.902281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084209, 42.975208, 20.419302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689953, 43.035297, 20.388483>,  <35.453400, 43.071350, 20.369991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689953, 43.035297, 20.388483>,  <36.084209, 42.975208, 20.419302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689953, 43.035297, 20.388483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052597, -0.160425, -0.985646,
		-0.160424, -0.975550, 0.150221,
		0.985646, -0.150221, 0.077047,
		35.394260, 43.080364, 20.365368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753017, 42.338840, 20.110531>,  <36.084209, 42.975208, 20.419302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753017, 42.338840, 20.110531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531166, 42.665493, 20.046654>,  <35.398056, 42.861485, 20.008327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531166, 42.665493, 20.046654>,  <35.753017, 42.338840, 20.110531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531166, 42.665493, 20.046654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053078, -0.156804, -0.986202,
		-0.830403, -0.555453, 0.043623,
		-0.554629, 0.816630, -0.159693,
		35.364777, 42.910480, 19.998745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283302, 42.025478, 19.579699>,  <35.753017, 42.338840, 20.110531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283302, 42.025478, 19.579699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228233, 42.421127, 19.558987>,  <35.195194, 42.658516, 19.546558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228233, 42.421127, 19.558987>,  <35.283302, 42.025478, 19.579699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228233, 42.421127, 19.558987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080489, -0.063279, -0.994745,
		-0.987202, -0.132778, 0.088326,
		-0.137669, 0.989124, -0.051782,
		35.186932, 42.717865, 19.543451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766296, 42.108604, 19.077360>,  <35.283302, 42.025478, 19.579699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766296, 42.108604, 19.077360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923473, 42.476368, 19.084059>,  <35.017780, 42.697025, 19.088078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923473, 42.476368, 19.084059>,  <34.766296, 42.108604, 19.077360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923473, 42.476368, 19.084059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170616, 0.090787, -0.981146,
		-0.903598, 0.382674, 0.192540,
		0.392939, 0.919412, 0.016744,
		35.041355, 42.752193, 19.089083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319389, 42.607922, 18.639383>,  <34.766296, 42.108604, 19.077360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319389, 42.607922, 18.639383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682499, 42.770779, 18.679722>,  <34.900364, 42.868492, 18.703924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682499, 42.770779, 18.679722>,  <34.319389, 42.607922, 18.639383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682499, 42.770779, 18.679722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062646, 0.369327, -0.927186,
		-0.414745, 0.835362, 0.360773,
		0.907779, 0.407147, 0.100844,
		34.954834, 42.892921, 18.709974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292225, 43.215542, 18.319803>,  <34.319389, 42.607922, 18.639383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292225, 43.215542, 18.319803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683876, 43.134396, 18.314972>,  <34.918869, 43.085709, 18.312073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683876, 43.134396, 18.314972>,  <34.292225, 43.215542, 18.319803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683876, 43.134396, 18.314972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044519, 0.272094, -0.961240,
		0.198290, 0.940643, 0.275448,
		0.979132, -0.202867, -0.012077,
		34.977615, 43.073536, 18.311350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485287, 43.709457, 17.912241>,  <34.292225, 43.215542, 18.319803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485287, 43.709457, 17.912241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789539, 43.450249, 17.927750>,  <34.972092, 43.294724, 17.937056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789539, 43.450249, 17.927750>,  <34.485287, 43.709457, 17.912241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789539, 43.450249, 17.927750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204898, 0.182974, -0.961529,
		0.615998, 0.739316, 0.271954,
		0.760634, -0.648022, 0.038773,
		35.017731, 43.255840, 17.939381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904465, 44.007004, 17.387066>,  <34.485287, 43.709457, 17.912241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904465, 44.007004, 17.387066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067928, 43.648315, 17.455051>,  <35.166008, 43.433102, 17.495842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067928, 43.648315, 17.455051>,  <34.904465, 44.007004, 17.387066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067928, 43.648315, 17.455051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301205, -0.043281, -0.952577,
		0.861551, 0.440476, 0.252409,
		0.408663, -0.896720, 0.169963,
		35.190529, 43.379299, 17.506041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581486, 44.010742, 17.126228>,  <34.904465, 44.007004, 17.387066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581486, 44.010742, 17.126228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472488, 43.625992, 17.116982>,  <35.407089, 43.395142, 17.111433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472488, 43.625992, 17.116982>,  <35.581486, 44.010742, 17.126228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472488, 43.625992, 17.116982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341647, -0.074270, -0.936889,
		0.899458, -0.263196, 0.348862,
		-0.272495, -0.961880, -0.023117,
		35.390739, 43.337429, 17.110046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.084229, 37.203083, 18.865282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.732464, 37.392200, 18.842979>,  <36.521404, 37.505669, 18.829597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.732464, 37.392200, 18.842979>,  <37.084229, 37.203083, 18.865282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732464, 37.392200, 18.842979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136928, 0.363371, 0.921527,
		0.455950, 0.802764, -0.384290,
		-0.879409, 0.472790, -0.055758,
		36.468639, 37.534039, 18.826252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243519, 37.787067, 19.266365>,  <37.084229, 37.203083, 18.865282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243519, 37.787067, 19.266365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844791, 37.795155, 19.235538>,  <36.605553, 37.800007, 19.217043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844791, 37.795155, 19.235538>,  <37.243519, 37.787067, 19.266365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844791, 37.795155, 19.235538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065192, 0.349130, 0.934804,
		0.045806, 0.936856, -0.346702,
		-0.996821, 0.020217, -0.077067,
		36.545746, 37.801220, 19.212418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085110, 38.555958, 19.375824>,  <37.243519, 37.787067, 19.266365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085110, 38.555958, 19.375824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783916, 38.301529, 19.443274>,  <36.603203, 38.148872, 19.483744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783916, 38.301529, 19.443274>,  <37.085110, 38.555958, 19.375824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783916, 38.301529, 19.443274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171081, 0.436663, 0.883208,
		-0.635414, 0.636191, -0.437618,
		-0.752981, -0.636071, 0.168622,
		36.558022, 38.110706, 19.493860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583080, 38.919010, 19.635389>,  <37.085110, 38.555958, 19.375824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583080, 38.919010, 19.635389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518959, 38.542538, 19.754368>,  <36.480488, 38.316654, 19.825754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518959, 38.542538, 19.754368>,  <36.583080, 38.919010, 19.635389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518959, 38.542538, 19.754368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016643, 0.298723, 0.954195,
		-0.986928, 0.157907, -0.032221,
		-0.160299, -0.941186, 0.297446,
		36.470871, 38.260181, 19.843601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068409, 39.046162, 20.094452>,  <36.583080, 38.919010, 19.635389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068409, 39.046162, 20.094452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191006, 38.669937, 20.152975>,  <36.264565, 38.444202, 20.188089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191006, 38.669937, 20.152975>,  <36.068409, 39.046162, 20.094452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191006, 38.669937, 20.152975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135321, 0.109091, 0.984778,
		-0.942204, -0.321628, -0.093842,
		0.306495, -0.940561, 0.146309,
		36.282955, 38.387768, 20.196867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611683, 38.846081, 20.576122>,  <36.068409, 39.046162, 20.094452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611683, 38.846081, 20.576122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900425, 38.573238, 20.622871>,  <36.073669, 38.409534, 20.650921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900425, 38.573238, 20.622871>,  <35.611683, 38.846081, 20.576122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900425, 38.573238, 20.622871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082227, 0.083145, 0.993139,
		-0.687140, -0.726514, 0.003932,
		0.721856, -0.682103, 0.116872,
		36.116982, 38.368607, 20.657932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313049, 38.430183, 21.008858>,  <35.611683, 38.846081, 20.576122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313049, 38.430183, 21.008858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.698391, 38.334686, 21.057753>,  <35.929596, 38.277390, 21.087090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.698391, 38.334686, 21.057753>,  <35.313049, 38.430183, 21.008858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698391, 38.334686, 21.057753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147897, -0.092637, 0.984655,
		-0.223757, -0.966654, -0.124553,
		0.963358, -0.238745, 0.122237,
		35.987400, 38.263062, 21.094423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360016, 37.789627, 21.625166>,  <35.313049, 38.430183, 21.008858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360016, 37.789627, 21.625166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700619, 37.997669, 21.598557>,  <35.904980, 38.122494, 21.582592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700619, 37.997669, 21.598557>,  <35.360016, 37.789627, 21.625166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700619, 37.997669, 21.598557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097942, -0.033134, 0.994640,
		0.515118, -0.853457, -0.079155,
		0.851505, 0.520110, -0.066521,
		35.956070, 38.153702, 21.578600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798988, 37.451153, 22.122816>,  <35.360016, 37.789627, 21.625166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798988, 37.451153, 22.122816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957314, 37.807182, 22.032398>,  <36.052307, 38.020802, 21.978148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957314, 37.807182, 22.032398>,  <35.798988, 37.451153, 22.122816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957314, 37.807182, 22.032398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275709, 0.119615, 0.953770,
		0.875968, -0.439833, -0.198057,
		0.395809, 0.890078, -0.226045,
		36.076057, 38.074207, 21.964584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420547, 37.476833, 22.483168>,  <35.798988, 37.451153, 22.122816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420547, 37.476833, 22.483168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.312256, 37.855816, 22.415005>,  <36.247280, 38.083206, 22.374107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.312256, 37.855816, 22.415005>,  <36.420547, 37.476833, 22.483168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312256, 37.855816, 22.415005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284758, 0.247915, 0.925986,
		0.919575, 0.202166, -0.336913,
		-0.270729, 0.947453, -0.170408,
		36.231037, 38.140053, 22.363882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955414, 37.864010, 22.692509>,  <36.420547, 37.476833, 22.483168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955414, 37.864010, 22.692509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.635246, 38.103573, 22.702702>,  <36.443146, 38.247311, 22.708818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.635246, 38.103573, 22.702702>,  <36.955414, 37.864010, 22.692509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635246, 38.103573, 22.702702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275983, 0.330437, 0.902577,
		0.532136, 0.729469, -0.429775,
		-0.800415, 0.598904, 0.025483,
		36.395123, 38.283245, 22.710346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199905, 38.348637, 23.133305>,  <36.955414, 37.864010, 22.692509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199905, 38.348637, 23.133305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807571, 38.426510, 23.136543>,  <36.572170, 38.473236, 23.138487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807571, 38.426510, 23.136543>,  <37.199905, 38.348637, 23.133305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807571, 38.426510, 23.136543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035697, 0.138674, 0.989695,
		0.191557, 0.971013, -0.142966,
		-0.980832, 0.194686, 0.008098,
		36.513321, 38.484917, 23.138973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162380, 38.776592, 23.632944>,  <37.199905, 38.348637, 23.133305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162380, 38.776592, 23.632944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783028, 38.656178, 23.593033>,  <36.555416, 38.583931, 23.569086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783028, 38.656178, 23.593033>,  <37.162380, 38.776592, 23.632944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783028, 38.656178, 23.593033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160156, 0.183055, 0.969970,
		-0.273730, 0.935879, -0.221818,
		-0.948379, -0.301035, -0.099779,
		36.498512, 38.565868, 23.563099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719528, 39.387348, 23.844421>,  <37.162380, 38.776592, 23.632944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719528, 39.387348, 23.844421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.536076, 39.034122, 23.884123>,  <36.426003, 38.822186, 23.907944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.536076, 39.034122, 23.884123>,  <36.719528, 39.387348, 23.844421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536076, 39.034122, 23.884123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140640, 0.182419, 0.973111,
		-0.877424, 0.432344, -0.207858,
		-0.458636, -0.883064, 0.099254,
		36.398483, 38.769203, 23.913898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841755, 40.118717, 23.757679>,  <36.719528, 39.387348, 23.844421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841755, 40.118717, 23.757679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230995, 40.196003, 23.707483>,  <37.464539, 40.242374, 23.677366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230995, 40.196003, 23.707483>,  <36.841755, 40.118717, 23.757679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230995, 40.196003, 23.707483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141492, 0.071325, -0.987366,
		-0.181820, 0.978561, 0.096744,
		0.973099, 0.193211, -0.125491,
		37.522926, 40.253967, 23.669836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025646, 40.695286, 23.268835>,  <36.841755, 40.118717, 23.757679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025646, 40.695286, 23.268835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374863, 40.500355, 23.275919>,  <37.584393, 40.383396, 23.280169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374863, 40.500355, 23.275919>,  <37.025646, 40.695286, 23.268835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374863, 40.500355, 23.275919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092132, 0.129175, -0.987333,
		0.478867, 0.863612, 0.157674,
		0.873039, -0.487328, 0.017709,
		37.636776, 40.354156, 23.281231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418316, 41.062584, 22.863754>,  <37.025646, 40.695286, 23.268835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418316, 41.062584, 22.863754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591499, 40.702152, 22.873568>,  <37.695412, 40.485893, 22.879456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591499, 40.702152, 22.873568>,  <37.418316, 41.062584, 22.863754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591499, 40.702152, 22.873568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284665, 0.110852, -0.952196,
		0.855284, 0.419248, 0.304500,
		0.432961, -0.901079, 0.024535,
		37.721386, 40.431828, 22.880928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001411, 41.145546, 22.512209>,  <37.418316, 41.062584, 22.863754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001411, 41.145546, 22.512209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017429, 40.746078, 22.525257>,  <38.027039, 40.506397, 22.533087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017429, 40.746078, 22.525257>,  <38.001411, 41.145546, 22.512209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017429, 40.746078, 22.525257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321387, -0.018039, -0.946776,
		0.946101, 0.048398, 0.320236,
		0.040045, -0.998665, 0.032621,
		38.029442, 40.446480, 22.535044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651756, 40.921364, 22.303083>,  <38.001411, 41.145546, 22.512209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651756, 40.921364, 22.303083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.394001, 40.621719, 22.241640>,  <38.239346, 40.441933, 22.204775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.394001, 40.621719, 22.241640>,  <38.651756, 40.921364, 22.303083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394001, 40.621719, 22.241640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314517, -0.076539, -0.946161,
		0.697021, -0.658011, 0.284929,
		-0.644392, -0.749109, -0.153606,
		38.200684, 40.396988, 22.195559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004284, 40.466507, 21.920519>,  <38.651756, 40.921364, 22.303083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004284, 40.466507, 21.920519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.639488, 40.321354, 21.844002>,  <38.420612, 40.234261, 21.798092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.639488, 40.321354, 21.844002>,  <39.004284, 40.466507, 21.920519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639488, 40.321354, 21.844002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251906, -0.127377, -0.959332,
		0.323760, -0.923087, 0.207579,
		-0.911988, -0.362884, -0.191291,
		38.365891, 40.212490, 21.786613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111126, 39.921970, 21.508617>,  <39.004284, 40.466507, 21.920519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111126, 39.921970, 21.508617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.728302, 40.021454, 21.449041>,  <38.498608, 40.081142, 21.413296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.728302, 40.021454, 21.449041>,  <39.111126, 39.921970, 21.508617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728302, 40.021454, 21.449041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093555, -0.221301, -0.970708,
		-0.274383, -0.942958, 0.188530,
		-0.957059, 0.248707, -0.148939,
		38.441185, 40.096066, 21.404360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841835, 39.402874, 21.137600>,  <39.111126, 39.921970, 21.508617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841835, 39.402874, 21.137600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566189, 39.687550, 21.083025>,  <38.400799, 39.858356, 21.050280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566189, 39.687550, 21.083025>,  <38.841835, 39.402874, 21.137600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566189, 39.687550, 21.083025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135119, -0.311174, -0.940699,
		-0.711940, -0.629817, 0.310598,
		-0.689118, 0.711689, -0.136437,
		38.359455, 39.901054, 21.042093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337242, 39.086708, 20.705208>,  <38.841835, 39.402874, 21.137600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337242, 39.086708, 20.705208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235806, 39.471294, 20.662743>,  <38.174942, 39.702045, 20.637262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235806, 39.471294, 20.662743>,  <38.337242, 39.086708, 20.705208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235806, 39.471294, 20.662743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093004, -0.133479, -0.986678,
		-0.962829, -0.240343, 0.123270,
		-0.253595, 0.961467, -0.106165,
		38.159725, 39.759735, 20.630894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850880, 39.035412, 20.317232>,  <38.337242, 39.086708, 20.705208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850880, 39.035412, 20.317232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.953400, 39.420879, 20.287138>,  <38.014912, 39.652161, 20.269081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.953400, 39.420879, 20.287138>,  <37.850880, 39.035412, 20.317232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953400, 39.420879, 20.287138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003816, -0.078845, -0.996879,
		-0.966591, 0.255209, -0.023885,
		0.256295, 0.963666, -0.075237,
		38.030289, 39.709980, 20.264566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372910, 39.410172, 19.910238>,  <37.850880, 39.035412, 20.317232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372910, 39.410172, 19.910238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717205, 39.607754, 19.861019>,  <37.923782, 39.726303, 19.831488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717205, 39.607754, 19.861019>,  <37.372910, 39.410172, 19.910238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717205, 39.607754, 19.861019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032362, -0.188133, -0.981610,
		-0.508024, 0.848888, -0.145947,
		0.860735, 0.493958, -0.123048,
		37.975426, 39.755939, 19.824104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193851, 39.853786, 19.325262>,  <37.372910, 39.410172, 19.910238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193851, 39.853786, 19.325262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589794, 39.837276, 19.379637>,  <37.827358, 39.827370, 19.412262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589794, 39.837276, 19.379637>,  <37.193851, 39.853786, 19.325262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589794, 39.837276, 19.379637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126354, -0.181608, -0.975220,
		0.064937, 0.982505, -0.174551,
		0.989858, -0.041273, 0.135936,
		37.886753, 39.824894, 19.420418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421814, 40.296646, 18.898661>,  <37.193851, 39.853786, 19.325262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421814, 40.296646, 18.898661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.743999, 40.060780, 18.922398>,  <37.937313, 39.919262, 18.936640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.743999, 40.060780, 18.922398>,  <37.421814, 40.296646, 18.898661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743999, 40.060780, 18.922398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022999, -0.131162, -0.991094,
		0.592195, 0.796929, -0.119208,
		0.805467, -0.589662, 0.059345,
		37.985638, 39.883881, 18.940201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830021, 40.429188, 18.332861>,  <37.421814, 40.296646, 18.898661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830021, 40.429188, 18.332861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986496, 40.069973, 18.413363>,  <38.080383, 39.854446, 18.461664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986496, 40.069973, 18.413363>,  <37.830021, 40.429188, 18.332861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986496, 40.069973, 18.413363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167069, -0.145753, -0.975112,
		0.905018, 0.415079, 0.093016,
		0.391191, -0.898034, 0.201256,
		38.103851, 39.800564, 18.473740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522041, 40.902718, 18.160086>,  <37.830021, 40.429188, 18.332861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522041, 40.902718, 18.160086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451675, 41.258972, 17.992361>,  <38.409458, 41.472725, 17.891727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451675, 41.258972, 17.992361>,  <38.522041, 40.902718, 18.160086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451675, 41.258972, 17.992361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119966, 0.442173, 0.888870,
		0.977068, 0.106060, -0.184630,
		-0.175913, 0.890637, -0.419310,
		38.398903, 41.526165, 17.866568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086708, 41.305466, 18.334625>,  <38.522041, 40.902718, 18.160086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086708, 41.305466, 18.334625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771732, 41.539223, 18.256218>,  <38.582745, 41.679478, 18.209173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771732, 41.539223, 18.256218>,  <39.086708, 41.305466, 18.334625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771732, 41.539223, 18.256218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142336, 0.481810, 0.864638,
		0.599729, 0.652952, -0.462578,
		-0.787442, 0.584391, -0.196017,
		38.535500, 41.714539, 18.197412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343342, 42.039085, 18.608206>,  <39.086708, 41.305466, 18.334625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343342, 42.039085, 18.608206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948418, 42.075348, 18.556049>,  <38.711464, 42.097107, 18.524755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948418, 42.075348, 18.556049>,  <39.343342, 42.039085, 18.608206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948418, 42.075348, 18.556049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042093, 0.642306, 0.765292,
		0.153129, 0.761068, -0.630339,
		-0.987309, 0.090656, -0.130391,
		38.652225, 42.102543, 18.516932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266193, 42.708580, 18.771776>,  <39.343342, 42.039085, 18.608206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266193, 42.708580, 18.771776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898804, 42.553299, 18.801968>,  <38.678368, 42.460129, 18.820082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898804, 42.553299, 18.801968>,  <39.266193, 42.708580, 18.771776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898804, 42.553299, 18.801968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165156, 0.549937, 0.818714,
		-0.359337, 0.739505, -0.569218,
		-0.918477, -0.388204, 0.075479,
		38.623260, 42.436836, 18.824612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940460, 43.297020, 18.914310>,  <39.266193, 42.708580, 18.771776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940460, 43.297020, 18.914310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.719311, 42.990990, 19.046362>,  <38.586620, 42.807369, 19.125593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.719311, 42.990990, 19.046362>,  <38.940460, 43.297020, 18.914310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719311, 42.990990, 19.046362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207949, 0.510336, 0.834454,
		-0.806901, 0.392696, -0.441248,
		-0.552872, -0.765080, 0.330130,
		38.553448, 42.761467, 19.145401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313190, 43.540100, 19.180273>,  <38.940460, 43.297020, 18.914310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313190, 43.540100, 19.180273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360317, 43.182018, 19.352196>,  <38.388592, 42.967171, 19.455349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360317, 43.182018, 19.352196>,  <38.313190, 43.540100, 19.180273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360317, 43.182018, 19.352196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126159, 0.415820, 0.900654,
		-0.984989, -0.160334, -0.063948,
		0.117815, -0.895202, 0.429806,
		38.395660, 42.913456, 19.481138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770092, 43.593647, 19.671734>,  <38.313190, 43.540100, 19.180273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770092, 43.593647, 19.671734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993374, 43.288910, 19.803188>,  <38.127342, 43.106068, 19.882061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993374, 43.288910, 19.803188>,  <37.770092, 43.593647, 19.671734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993374, 43.288910, 19.803188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010192, 0.389760, 0.920860,
		-0.829641, -0.517378, 0.209801,
		0.558205, -0.761844, 0.328634,
		38.160835, 43.060356, 19.901779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502708, 43.494667, 20.424210>,  <37.770092, 43.593647, 19.671734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502708, 43.494667, 20.424210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.872425, 43.353210, 20.366760>,  <38.094254, 43.268337, 20.332291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.872425, 43.353210, 20.366760>,  <37.502708, 43.494667, 20.424210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872425, 43.353210, 20.366760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250020, 0.276628, 0.927883,
		-0.288406, -0.893541, 0.344102,
		0.924290, -0.353639, -0.143622,
		38.149712, 43.247120, 20.323673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561993, 42.810661, 20.817656>,  <37.502708, 43.494667, 20.424210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561993, 42.810661, 20.817656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.921448, 42.979027, 20.768209>,  <38.137119, 43.080048, 20.738543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.921448, 42.979027, 20.768209>,  <37.561993, 42.810661, 20.817656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921448, 42.979027, 20.768209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141155, -0.010634, 0.989930,
		0.415365, -0.907036, -0.068971,
		0.898636, 0.420918, -0.123616,
		38.191040, 43.105301, 20.731125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046204, 42.494984, 21.417339>,  <37.561993, 42.810661, 20.817656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046204, 42.494984, 21.417339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240898, 42.823116, 21.297249>,  <38.357716, 43.019997, 21.225195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240898, 42.823116, 21.297249>,  <38.046204, 42.494984, 21.417339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240898, 42.823116, 21.297249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164626, 0.251387, 0.953783,
		0.857895, -0.513669, -0.012689,
		0.486739, 0.820335, -0.300227,
		38.386921, 43.069218, 21.207180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596073, 42.488796, 21.836777>,  <38.046204, 42.494984, 21.417339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596073, 42.488796, 21.836777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576576, 42.865662, 21.704144>,  <38.564877, 43.091782, 21.624563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576576, 42.865662, 21.704144>,  <38.596073, 42.488796, 21.836777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576576, 42.865662, 21.704144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197966, 0.334507, 0.921366,
		0.978996, -0.020730, -0.202822,
		-0.048745, 0.942165, -0.331585,
		38.561954, 43.148312, 21.604668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200123, 42.869175, 22.091230>,  <38.596073, 42.488796, 21.836777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200123, 42.869175, 22.091230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923801, 43.145828, 22.006916>,  <38.758011, 43.311821, 21.956327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923801, 43.145828, 22.006916>,  <39.200123, 42.869175, 22.091230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923801, 43.145828, 22.006916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080962, 0.363686, 0.927997,
		0.718497, 0.623995, -0.307231,
		-0.690801, 0.691637, -0.210787,
		38.716560, 43.353321, 21.943680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411381, 43.577225, 22.360432>,  <39.200123, 42.869175, 22.091230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411381, 43.577225, 22.360432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.021999, 43.627247, 22.283743>,  <38.788372, 43.657261, 22.237730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.021999, 43.627247, 22.283743>,  <39.411381, 43.577225, 22.360432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021999, 43.627247, 22.283743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127511, 0.399332, 0.907896,
		0.190099, 0.908237, -0.372784,
		-0.973449, 0.125056, -0.191723,
		38.729965, 43.664764, 22.226227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200142, 44.294281, 22.455095>,  <39.411381, 43.577225, 22.360432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200142, 44.294281, 22.455095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864166, 44.084343, 22.510286>,  <38.662582, 43.958378, 22.543402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864166, 44.084343, 22.510286>,  <39.200142, 44.294281, 22.455095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864166, 44.084343, 22.510286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145888, 0.463273, 0.874125,
		-0.522706, 0.714080, -0.465690,
		-0.839937, -0.524849, 0.137980,
		38.612186, 43.926888, 22.551680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.243744, 43.574623, 17.061939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926010, 43.383877, 16.911406>,  <35.735371, 43.269428, 16.821085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926010, 43.383877, 16.911406>,  <36.243744, 43.574623, 17.061939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926010, 43.383877, 16.911406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404948, 0.046125, -0.913175,
		0.452822, -0.877764, 0.156468,
		-0.794336, -0.476868, -0.376335,
		35.687710, 43.240818, 16.798506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545849, 43.193569, 16.553003>,  <36.243744, 43.574623, 17.061939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545849, 43.193569, 16.553003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.156334, 43.161911, 16.467703>,  <35.922626, 43.142918, 16.416523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.156334, 43.161911, 16.467703>,  <36.545849, 43.193569, 16.553003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156334, 43.161911, 16.467703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208524, 0.063931, -0.975926,
		0.090877, -0.994811, -0.045751,
		-0.973786, -0.079149, -0.213252,
		35.864197, 43.138168, 16.403727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461620, 42.637909, 16.107281>,  <36.545849, 43.193569, 16.553003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461620, 42.637909, 16.107281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.135208, 42.849731, 16.014610>,  <35.939362, 42.976826, 15.959008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.135208, 42.849731, 16.014610>,  <36.461620, 42.637909, 16.107281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135208, 42.849731, 16.014610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135461, -0.214443, -0.967298,
		-0.561917, -0.820724, 0.103257,
		-0.816027, 0.529553, -0.231675,
		35.890400, 43.008598, 15.945107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414219, 42.538090, 15.445235>,  <36.461620, 42.637909, 16.107281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414219, 42.538090, 15.445235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112537, 42.800686, 15.450833>,  <35.931526, 42.958244, 15.454192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112537, 42.800686, 15.450833>,  <36.414219, 42.538090, 15.445235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112537, 42.800686, 15.450833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052403, 0.081420, -0.995301,
		-0.654543, -0.749930, -0.095810,
		-0.754207, 0.656488, 0.013994,
		35.886276, 42.997631, 15.455031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889431, 42.224140, 15.039196>,  <36.414219, 42.538090, 15.445235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889431, 42.224140, 15.039196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.839375, 42.620991, 15.041314>,  <35.809341, 42.859100, 15.042584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.839375, 42.620991, 15.041314>,  <35.889431, 42.224140, 15.039196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839375, 42.620991, 15.041314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062316, -0.002534, -0.998053,
		-0.990180, -0.125227, 0.062143,
		-0.125141, 0.992125, 0.005294,
		35.801834, 42.918629, 15.042902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296471, 42.351002, 14.491071>,  <35.889431, 42.224140, 15.039196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296471, 42.351002, 14.491071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469486, 42.707073, 14.548336>,  <35.573296, 42.920715, 14.582695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469486, 42.707073, 14.548336>,  <35.296471, 42.351002, 14.491071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469486, 42.707073, 14.548336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009991, 0.163507, -0.986492,
		-0.901560, 0.425266, 0.079617,
		0.432539, 0.890177, 0.143163,
		35.599247, 42.974125, 14.591285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826218, 42.845627, 14.177977>,  <35.296471, 42.351002, 14.491071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826218, 42.845627, 14.177977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.189884, 43.010635, 14.200759>,  <35.408085, 43.109638, 14.214428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.189884, 43.010635, 14.200759>,  <34.826218, 42.845627, 14.177977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189884, 43.010635, 14.200759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066142, -0.008011, -0.997778,
		-0.411145, 0.910914, -0.034568,
		0.909167, 0.412518, 0.056956,
		35.462635, 43.134392, 14.217846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820274, 43.418221, 13.557995>,  <34.826218, 42.845627, 14.177977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820274, 43.418221, 13.557995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198002, 43.338634, 13.662814>,  <35.424641, 43.290882, 13.725706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198002, 43.338634, 13.662814>,  <34.820274, 43.418221, 13.557995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198002, 43.338634, 13.662814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258045, -0.046273, -0.965024,
		0.204130, 0.978914, 0.007645,
		0.944322, -0.198963, 0.262049,
		35.481300, 43.278946, 13.741429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165405, 43.956173, 13.196898>,  <34.820274, 43.418221, 13.557995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165405, 43.956173, 13.196898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406776, 43.647778, 13.278329>,  <35.551601, 43.462738, 13.327188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406776, 43.647778, 13.278329>,  <35.165405, 43.956173, 13.196898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406776, 43.647778, 13.278329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213147, -0.090057, -0.972861,
		0.768401, 0.630446, 0.109991,
		0.603431, -0.770991, 0.203578,
		35.587807, 43.416481, 13.339402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663914, 44.101063, 12.702457>,  <35.165405, 43.956173, 13.196898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663914, 44.101063, 12.702457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.721779, 43.731674, 12.844601>,  <35.756500, 43.510040, 12.929887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.721779, 43.731674, 12.844601>,  <35.663914, 44.101063, 12.702457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721779, 43.731674, 12.844601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119104, -0.340273, -0.932753,
		0.982286, 0.177263, 0.060763,
		0.144666, -0.923468, 0.355358,
		35.765179, 43.454636, 12.951208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392426, 43.881367, 12.612159>,  <35.663914, 44.101063, 12.702457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392426, 43.881367, 12.612159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.147079, 43.565449, 12.612916>,  <35.999870, 43.375896, 12.613370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.147079, 43.565449, 12.612916>,  <36.392426, 43.881367, 12.612159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147079, 43.565449, 12.612916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135308, -0.107442, -0.984961,
		0.778122, -0.603885, 0.172767,
		-0.613366, -0.789797, 0.001892,
		35.963070, 43.328510, 12.613483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789783, 43.467266, 12.309870>,  <36.392426, 43.881367, 12.612159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789783, 43.467266, 12.309870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424202, 43.312672, 12.260365>,  <36.204853, 43.219917, 12.230663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424202, 43.312672, 12.260365>,  <36.789783, 43.467266, 12.309870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424202, 43.312672, 12.260365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192882, -0.145390, -0.970391,
		0.357045, -0.910765, 0.207425,
		-0.913956, -0.386482, -0.123760,
		36.150017, 43.196728, 12.223237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829906, 42.844154, 11.925244>,  <36.789783, 43.467266, 12.309870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829906, 42.844154, 11.925244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451672, 42.962223, 11.870500>,  <36.224731, 43.033066, 11.837653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451672, 42.962223, 11.870500>,  <36.829906, 42.844154, 11.925244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451672, 42.962223, 11.870500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108328, -0.111021, -0.987896,
		-0.306796, -0.948971, 0.073004,
		-0.945590, 0.295174, -0.136861,
		36.167995, 43.050774, 11.829441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252476, 42.304249, 11.923704>,  <36.829906, 42.844154, 11.925244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252476, 42.304249, 11.923704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195534, 41.908451, 11.933780>,  <37.161369, 41.670971, 11.939825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195534, 41.908451, 11.933780>,  <37.252476, 42.304249, 11.923704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195534, 41.908451, 11.933780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132236, 0.006207, 0.991199,
		-0.980943, 0.144432, 0.129963,
		-0.142354, -0.989495, 0.025188,
		37.152828, 41.611603, 11.941336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743839, 42.142200, 12.400642>,  <37.252476, 42.304249, 11.923704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743839, 42.142200, 12.400642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.016083, 41.853321, 12.351327>,  <37.179428, 41.679993, 12.321737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.016083, 41.853321, 12.351327>,  <36.743839, 42.142200, 12.400642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016083, 41.853321, 12.351327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165146, -0.012719, 0.986187,
		-0.713789, -0.691571, 0.110611,
		0.680612, -0.722196, -0.123289,
		37.220268, 41.636662, 12.314341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581257, 41.614758, 12.892891>,  <36.743839, 42.142200, 12.400642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581257, 41.614758, 12.892891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.968697, 41.572796, 12.802729>,  <37.201160, 41.547619, 12.748631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.968697, 41.572796, 12.802729>,  <36.581257, 41.614758, 12.892891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968697, 41.572796, 12.802729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200991, -0.203240, 0.958278,
		-0.146342, -0.973493, -0.175772,
		0.968600, -0.104908, -0.225406,
		37.259277, 41.541325, 12.735106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886131, 41.051601, 13.289257>,  <36.581257, 41.614758, 12.892891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886131, 41.051601, 13.289257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211884, 41.261185, 13.189449>,  <37.407333, 41.386936, 13.129564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211884, 41.261185, 13.189449>,  <36.886131, 41.051601, 13.289257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211884, 41.261185, 13.189449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367995, -0.133772, 0.920155,
		0.448743, -0.841174, -0.301754,
		0.814376, 0.523957, -0.249519,
		37.456196, 41.418373, 13.114594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408176, 40.685318, 13.513974>,  <36.886131, 41.051601, 13.289257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408176, 40.685318, 13.513974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557968, 41.054382, 13.477179>,  <37.647842, 41.275822, 13.455101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557968, 41.054382, 13.477179>,  <37.408176, 40.685318, 13.513974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557968, 41.054382, 13.477179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286109, -0.020613, 0.957975,
		0.881991, -0.385059, -0.271701,
		0.374478, 0.922661, -0.091989,
		37.670311, 41.331181, 13.449582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016350, 40.616936, 13.870235>,  <37.408176, 40.685318, 13.513974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016350, 40.616936, 13.870235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.966141, 41.013233, 13.849588>,  <37.936016, 41.251011, 13.837200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.966141, 41.013233, 13.849588>,  <38.016350, 40.616936, 13.870235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966141, 41.013233, 13.849588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187633, 0.074798, 0.979387,
		0.974186, 0.113248, -0.195286,
		-0.125520, 0.990747, -0.051618,
		37.928486, 41.310459, 13.834103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589706, 40.919678, 14.179562>,  <38.016350, 40.616936, 13.870235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589706, 40.919678, 14.179562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304249, 41.198650, 14.205795>,  <38.132973, 41.366035, 14.221536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304249, 41.198650, 14.205795>,  <38.589706, 40.919678, 14.179562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304249, 41.198650, 14.205795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198757, 0.111819, 0.973649,
		0.671721, 0.707873, -0.218419,
		-0.713644, 0.697432, 0.065584,
		38.090157, 41.407879, 14.225471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922409, 41.387676, 14.603845>,  <38.589706, 40.919678, 14.179562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922409, 41.387676, 14.603845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.534981, 41.486851, 14.611755>,  <38.302525, 41.546356, 14.616502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.534981, 41.486851, 14.611755>,  <38.922409, 41.387676, 14.603845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534981, 41.486851, 14.611755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066983, 0.183436, 0.980747,
		0.239537, 0.951250, -0.194279,
		-0.968574, 0.247939, 0.019778,
		38.244408, 41.561234, 14.617688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868481, 42.062279, 14.900567>,  <38.922409, 41.387676, 14.603845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868481, 42.062279, 14.900567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.506687, 41.901237, 14.956886>,  <38.289612, 41.804611, 14.990678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.506687, 41.901237, 14.956886>,  <38.868481, 42.062279, 14.900567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506687, 41.901237, 14.956886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038003, 0.252729, 0.966790,
		-0.424821, 0.879793, -0.213287,
		-0.904479, -0.402607, 0.140799,
		38.235344, 41.780457, 14.999126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354515, 42.511642, 15.227591>,  <38.868481, 42.062279, 14.900567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354515, 42.511642, 15.227591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.215935, 42.143135, 15.298285>,  <38.132786, 41.922031, 15.340701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.215935, 42.143135, 15.298285>,  <38.354515, 42.511642, 15.227591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215935, 42.143135, 15.298285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130748, 0.233987, 0.963408,
		-0.928913, 0.310662, -0.201518,
		-0.346447, -0.921270, 0.176735,
		38.112000, 41.866753, 15.351305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831314, 42.542999, 15.872219>,  <38.354515, 42.511642, 15.227591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831314, 42.542999, 15.872219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898621, 42.149208, 15.852232>,  <37.939003, 41.912933, 15.840240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898621, 42.149208, 15.852232>,  <37.831314, 42.542999, 15.872219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898621, 42.149208, 15.852232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216232, -0.012591, 0.976261,
		-0.961733, -0.175077, 0.210756,
		0.168267, -0.984474, -0.049967,
		37.949100, 41.853867, 15.837242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462963, 42.308483, 16.354624>,  <37.831314, 42.542999, 15.872219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462963, 42.308483, 16.354624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.734077, 42.019157, 16.301830>,  <37.896748, 41.845562, 16.270153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.734077, 42.019157, 16.301830>,  <37.462963, 42.308483, 16.354624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734077, 42.019157, 16.301830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164775, -0.025515, 0.986001,
		-0.716557, -0.690047, 0.101890,
		0.677787, -0.723315, -0.131985,
		37.937412, 41.802162, 16.262234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299622, 41.814419, 16.861889>,  <37.462963, 42.308483, 16.354624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299622, 41.814419, 16.861889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667767, 41.701672, 16.753464>,  <37.888653, 41.634022, 16.688410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667767, 41.701672, 16.753464>,  <37.299622, 41.814419, 16.861889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667767, 41.701672, 16.753464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304049, 0.079891, 0.949301,
		-0.245924, -0.956120, 0.159231,
		0.920367, -0.281870, -0.271061,
		37.943878, 41.617111, 16.672146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295071, 41.218674, 17.140881>,  <37.299622, 41.814419, 16.861889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295071, 41.218674, 17.140881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675488, 41.332062, 17.091610>,  <37.903736, 41.400093, 17.062048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675488, 41.332062, 17.091610>,  <37.295071, 41.218674, 17.140881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675488, 41.332062, 17.091610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119210, 0.031273, 0.992376,
		0.285159, -0.958471, -0.004050,
		0.951037, 0.283468, -0.123177,
		37.960800, 41.417103, 17.054657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774956, 40.840565, 17.632711>,  <37.295071, 41.218674, 17.140881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774956, 40.840565, 17.632711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.982037, 41.173504, 17.553530>,  <38.106285, 41.373268, 17.506021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.982037, 41.173504, 17.553530>,  <37.774956, 40.840565, 17.632711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982037, 41.173504, 17.553530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225163, 0.090666, 0.970093,
		0.825404, -0.546786, -0.140477,
		0.517697, 0.832349, -0.197952,
		38.137344, 41.423210, 17.494144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320133, 40.331871, 17.748026>,  <37.774956, 40.840565, 17.632711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320133, 40.331871, 17.748026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.243473, 39.968281, 17.896099>,  <38.197475, 39.750126, 17.984943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.243473, 39.968281, 17.896099>,  <38.320133, 40.331871, 17.748026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243473, 39.968281, 17.896099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024375, -0.381465, -0.924062,
		0.981160, -0.168076, 0.095265,
		-0.191653, -0.908975, 0.370181,
		38.185978, 39.695587, 18.007153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826881, 39.928986, 17.429642>,  <38.320133, 40.331871, 17.748026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826881, 39.928986, 17.429642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.557194, 39.664757, 17.561749>,  <38.395382, 39.506218, 17.641012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.557194, 39.664757, 17.561749>,  <38.826881, 39.928986, 17.429642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557194, 39.664757, 17.561749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042433, -0.411808, -0.910282,
		0.737315, -0.627740, 0.249618,
		-0.674215, -0.660573, 0.330269,
		38.354931, 39.466583, 17.660830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980232, 39.310566, 16.999313>,  <38.826881, 39.928986, 17.429642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980232, 39.310566, 16.999313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.613358, 39.251411, 17.147312>,  <38.393234, 39.215919, 17.236111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.613358, 39.251411, 17.147312>,  <38.980232, 39.310566, 16.999313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613358, 39.251411, 17.147312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249857, -0.509868, -0.823169,
		0.310389, -0.847445, 0.430692,
		-0.917186, -0.147891, 0.369997,
		38.338203, 39.207043, 17.258310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880417, 38.543785, 17.093136>,  <38.980232, 39.310566, 16.999313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880417, 38.543785, 17.093136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.529507, 38.729866, 17.045853>,  <38.318962, 38.841515, 17.017483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.529507, 38.729866, 17.045853>,  <38.880417, 38.543785, 17.093136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529507, 38.729866, 17.045853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119513, -0.450221, -0.884883,
		-0.464884, -0.762151, 0.450564,
		-0.877268, 0.465216, -0.118214,
		38.266323, 38.869427, 17.010391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357357, 37.999802, 16.727530>,  <38.880417, 38.543785, 17.093136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357357, 37.999802, 16.727530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229603, 38.372982, 16.661085>,  <38.152950, 38.596889, 16.621218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229603, 38.372982, 16.661085>,  <38.357357, 37.999802, 16.727530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229603, 38.372982, 16.661085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295791, -0.264683, -0.917851,
		-0.900277, -0.244016, 0.360496,
		-0.319388, 0.932952, -0.166111,
		38.133785, 38.652866, 16.611252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894138, 37.881527, 16.257982>,  <38.357357, 37.999802, 16.727530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894138, 37.881527, 16.257982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936237, 38.278095, 16.226969>,  <37.961498, 38.516037, 16.208361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936237, 38.278095, 16.226969>,  <37.894138, 37.881527, 16.257982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936237, 38.278095, 16.226969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213101, -0.053671, -0.975555,
		-0.971344, 0.119202, 0.205623,
		0.105252, 0.991418, -0.077536,
		37.967812, 38.575520, 16.203709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268398, 38.181786, 15.920379>,  <37.894138, 37.881527, 16.257982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268398, 38.181786, 15.920379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548676, 38.461079, 15.861742>,  <37.716843, 38.628654, 15.826560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548676, 38.461079, 15.861742>,  <37.268398, 38.181786, 15.920379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548676, 38.461079, 15.861742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149160, -0.057559, -0.987136,
		-0.697692, 0.713550, 0.063818,
		0.700698, 0.698236, -0.146592,
		37.758884, 38.670551, 15.817764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515003, 38.171055, 15.810444>,  <37.268398, 38.181786, 15.920379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515003, 38.171055, 15.810444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.412334, 37.794327, 15.897243>,  <36.350735, 37.568291, 15.949323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.412334, 37.794327, 15.897243>,  <36.515003, 38.171055, 15.810444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412334, 37.794327, 15.897243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207584, 0.273000, 0.939351,
		-0.943944, 0.196057, -0.265578,
		-0.256669, -0.941824, 0.216998,
		36.335335, 37.511780, 15.962343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952232, 38.231663, 16.349344>,  <36.515003, 38.171055, 15.810444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952232, 38.231663, 16.349344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077877, 37.852966, 16.377653>,  <36.153263, 37.625748, 16.394638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077877, 37.852966, 16.377653>,  <35.952232, 38.231663, 16.349344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077877, 37.852966, 16.377653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171930, 0.016586, 0.984970,
		-0.933689, -0.321558, -0.157564,
		0.314111, -0.946745, 0.070772,
		36.172112, 37.568943, 16.398884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432549, 37.692158, 16.743015>,  <35.952232, 38.231663, 16.349344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432549, 37.692158, 16.743015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798519, 37.534397, 16.777327>,  <36.018101, 37.439739, 16.797915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798519, 37.534397, 16.777327>,  <35.432549, 37.692158, 16.743015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798519, 37.534397, 16.777327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142144, -0.115939, 0.983033,
		-0.377769, -0.911593, -0.162138,
		0.914924, -0.394407, 0.085779,
		36.072998, 37.416077, 16.803061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343380, 37.134079, 17.314283>,  <35.432549, 37.692158, 16.743015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343380, 37.134079, 17.314283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739849, 37.176670, 17.282698>,  <35.977730, 37.202225, 17.263746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739849, 37.176670, 17.282698>,  <35.343380, 37.134079, 17.314283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739849, 37.176670, 17.282698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092815, -0.132127, 0.986878,
		0.094643, -0.985498, -0.140844,
		0.991175, 0.106474, -0.078964,
		36.037201, 37.208611, 17.259008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567558, 36.745613, 17.862532>,  <35.343380, 37.134079, 17.314283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567558, 36.745613, 17.862532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879841, 36.981819, 17.780762>,  <36.067211, 37.123543, 17.731699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879841, 36.981819, 17.780762>,  <35.567558, 36.745613, 17.862532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879841, 36.981819, 17.780762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135311, 0.159624, 0.977860,
		0.610074, -0.791082, 0.044716,
		0.780705, 0.590517, -0.204425,
		36.114052, 37.158974, 17.719435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180679, 36.456081, 18.197950>,  <35.567558, 36.745613, 17.862532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180679, 36.456081, 18.197950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.214268, 36.851929, 18.151279>,  <36.234421, 37.089436, 18.123278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.214268, 36.851929, 18.151279>,  <36.180679, 36.456081, 18.197950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214268, 36.851929, 18.151279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014533, 0.115863, 0.993159,
		0.996362, -0.085089, -0.004653,
		0.083967, 0.989614, -0.116678,
		36.239456, 37.148811, 18.116276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616009, 36.649792, 18.700922>,  <36.180679, 36.456081, 18.197950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616009, 36.649792, 18.700922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.441830, 36.997028, 18.605587>,  <36.337322, 37.205372, 18.548386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.441830, 36.997028, 18.605587>,  <36.616009, 36.649792, 18.700922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441830, 36.997028, 18.605587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096908, 0.308420, 0.946301,
		0.894983, 0.388967, -0.218426,
		-0.435447, 0.868091, -0.238337,
		36.311195, 37.257454, 18.534086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.669037, 40.578205, 12.610484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.535767, 40.936333, 12.492235>,  <34.455803, 41.151211, 12.421286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.535767, 40.936333, 12.492235>,  <34.669037, 40.578205, 12.610484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535767, 40.936333, 12.492235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810311, 0.432201, 0.395723,
		0.482068, -0.107701, -0.869489,
		-0.333174, 0.895323, -0.295622,
		34.435814, 41.204929, 12.403548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628998, 40.725769, 13.342626>,  <34.669037, 40.578205, 12.610484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628998, 40.725769, 13.342626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.452530, 41.052242, 13.193377>,  <34.346649, 41.248127, 13.103827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.452530, 41.052242, 13.193377>,  <34.628998, 40.725769, 13.342626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452530, 41.052242, 13.193377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588869, 0.050467, 0.806651,
		0.677204, 0.575587, 0.458360,
		-0.441166, 0.816182, -0.373122,
		34.320179, 41.297096, 13.081440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688744, 41.101849, 13.845004>,  <34.628998, 40.725769, 13.342626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688744, 41.101849, 13.845004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.406792, 41.276489, 13.621387>,  <34.237621, 41.381271, 13.487216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.406792, 41.276489, 13.621387>,  <34.688744, 41.101849, 13.845004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406792, 41.276489, 13.621387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522080, 0.214208, 0.825559,
		0.480190, 0.873782, 0.076950,
		-0.704876, 0.436600, -0.559045,
		34.195328, 41.407471, 13.453673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509186, 41.644863, 14.227280>,  <34.688744, 41.101849, 13.845004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509186, 41.644863, 14.227280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.202991, 41.624317, 13.970720>,  <34.019276, 41.611992, 13.816785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.202991, 41.624317, 13.970720>,  <34.509186, 41.644863, 14.227280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202991, 41.624317, 13.970720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616658, 0.343204, 0.708480,
		0.183741, 0.937856, -0.294391,
		-0.765488, -0.051361, -0.641397,
		33.973347, 41.608910, 13.778301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166901, 42.282566, 14.301725>,  <34.509186, 41.644863, 14.227280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166901, 42.282566, 14.301725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.918751, 42.003105, 14.159164>,  <33.769863, 41.835426, 14.073627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.918751, 42.003105, 14.159164>,  <34.166901, 42.282566, 14.301725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918751, 42.003105, 14.159164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663249, 0.224782, 0.713844,
		-0.418617, 0.679232, -0.602830,
		-0.620371, -0.698654, -0.356403,
		33.732639, 41.793510, 14.052243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528103, 42.530117, 14.464172>,  <34.166901, 42.282566, 14.301725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528103, 42.530117, 14.464172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.444782, 42.148796, 14.376705>,  <33.394791, 41.920002, 14.324224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.444782, 42.148796, 14.376705>,  <33.528103, 42.530117, 14.464172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444782, 42.148796, 14.376705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725954, 0.000871, 0.687743,
		-0.655440, 0.302002, -0.692238,
		-0.208302, -0.953307, -0.218668,
		33.382290, 41.862804, 14.311105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778465, 42.411964, 14.246565>,  <33.528103, 42.530117, 14.464172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778465, 42.411964, 14.246565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.909195, 42.064495, 14.395474>,  <32.987633, 41.856014, 14.484820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.909195, 42.064495, 14.395474>,  <32.778465, 42.411964, 14.246565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909195, 42.064495, 14.395474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566251, 0.135390, 0.813037,
		-0.756669, -0.476518, -0.447641,
		0.326821, -0.868677, 0.372274,
		33.007240, 41.803890, 14.507156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137028, 42.136272, 14.601566>,  <32.778465, 42.411964, 14.246565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137028, 42.136272, 14.601566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444256, 41.945293, 14.772264>,  <32.628593, 41.830708, 14.874683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444256, 41.945293, 14.772264>,  <32.137028, 42.136272, 14.601566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444256, 41.945293, 14.772264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426997, 0.114778, 0.896939,
		-0.477219, -0.871133, -0.115710,
		0.768073, -0.477444, 0.426745,
		32.674679, 41.802059, 14.900288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787876, 41.704018, 15.160431>,  <32.137028, 42.136272, 14.601566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787876, 41.704018, 15.160431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.179413, 41.738781, 15.234533>,  <32.414333, 41.759640, 15.278995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.179413, 41.738781, 15.234533>,  <31.787876, 41.704018, 15.160431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179413, 41.738781, 15.234533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202355, 0.276494, 0.939470,
		0.030425, -0.957078, 0.288229,
		0.978840, 0.086908, 0.185257,
		32.473064, 41.764854, 15.290111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782330, 41.360260, 15.726209>,  <31.787876, 41.704018, 15.160431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782330, 41.360260, 15.726209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.119804, 41.574142, 15.745324>,  <32.322289, 41.702473, 15.756794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.119804, 41.574142, 15.745324>,  <31.782330, 41.360260, 15.726209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119804, 41.574142, 15.745324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162865, 0.170115, 0.971872,
		0.511537, -0.827738, 0.230608,
		0.843686, 0.534706, 0.047789,
		32.372910, 41.734554, 15.759661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962570, 41.067032, 16.327980>,  <31.782330, 41.360260, 15.726209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962570, 41.067032, 16.327980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.151108, 41.414288, 16.265789>,  <32.264229, 41.622643, 16.228474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.151108, 41.414288, 16.265789>,  <31.962570, 41.067032, 16.327980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151108, 41.414288, 16.265789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016564, 0.167545, 0.985725,
		0.881795, -0.467189, 0.064592,
		0.471342, 0.868138, -0.155479,
		32.292511, 41.674728, 16.219145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699417, 41.077290, 16.646185>,  <31.962570, 41.067032, 16.327980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699417, 41.077290, 16.646185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.625813, 41.470448, 16.649202>,  <32.581650, 41.706341, 16.651012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.625813, 41.470448, 16.649202>,  <32.699417, 41.077290, 16.646185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625813, 41.470448, 16.649202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119966, 0.014838, 0.992667,
		0.975576, 0.183564, -0.120644,
		-0.184008, 0.982896, 0.007546,
		32.570610, 41.765316, 16.651466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103951, 40.541157, 16.631845>,  <32.699417, 41.077290, 16.646185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103951, 40.541157, 16.631845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.942169, 40.207779, 16.782463>,  <32.845100, 40.007751, 16.872833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.942169, 40.207779, 16.782463>,  <33.103951, 40.541157, 16.631845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942169, 40.207779, 16.782463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100231, -0.368847, -0.924070,
		0.909048, -0.411487, 0.065646,
		-0.404456, -0.833445, 0.376544,
		32.820831, 39.957745, 16.895426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528908, 39.880516, 16.422358>,  <33.103951, 40.541157, 16.631845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528908, 39.880516, 16.422358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.145603, 39.789883, 16.492098>,  <32.915619, 39.735504, 16.533941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.145603, 39.789883, 16.492098>,  <33.528908, 39.880516, 16.422358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145603, 39.789883, 16.492098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027832, -0.533004, -0.845655,
		0.284540, -0.815210, 0.504450,
		-0.958260, -0.226582, 0.174350,
		32.858124, 39.721909, 16.544403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549862, 39.204781, 16.544296>,  <33.528908, 39.880516, 16.422358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549862, 39.204781, 16.544296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.160324, 39.255550, 16.468904>,  <32.926601, 39.286011, 16.423670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.160324, 39.255550, 16.468904>,  <33.549862, 39.204781, 16.544296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160324, 39.255550, 16.468904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073810, -0.607801, -0.790651,
		-0.214908, -0.783880, 0.582534,
		-0.973841, 0.126921, -0.188480,
		32.868172, 39.293625, 16.412361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320450, 38.525833, 16.460583>,  <33.549862, 39.204781, 16.544296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320450, 38.525833, 16.460583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.058720, 38.777527, 16.292809>,  <32.901680, 38.928543, 16.192144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.058720, 38.777527, 16.292809>,  <33.320450, 38.525833, 16.460583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058720, 38.777527, 16.292809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128130, -0.638880, -0.758561,
		-0.745279, -0.442604, 0.498659,
		-0.654325, 0.629233, -0.419433,
		32.862423, 38.966297, 16.166979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697731, 38.187481, 16.251497>,  <33.320450, 38.525833, 16.460583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697731, 38.187481, 16.251497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.698029, 38.505959, 16.009483>,  <32.698208, 38.697044, 15.864275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.698029, 38.505959, 16.009483>,  <32.697731, 38.187481, 16.251497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698029, 38.505959, 16.009483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078899, -0.603103, -0.793752,
		-0.996882, 0.048328, 0.062370,
		0.000745, 0.796198, -0.605035,
		32.698254, 38.744820, 15.827972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129059, 38.062534, 15.750817>,  <32.697731, 38.187481, 16.251497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129059, 38.062534, 15.750817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389725, 38.324989, 15.598595>,  <32.546124, 38.482460, 15.507261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389725, 38.324989, 15.598595>,  <32.129059, 38.062534, 15.750817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389725, 38.324989, 15.598595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024426, -0.483303, -0.875112,
		-0.758114, 0.579575, -0.298925,
		0.651664, 0.656133, -0.380556,
		32.585224, 38.521828, 15.484428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923534, 38.249916, 15.159589>,  <32.129059, 38.062534, 15.750817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923534, 38.249916, 15.159589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.301678, 38.377460, 15.132393>,  <32.528564, 38.453987, 15.116076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.301678, 38.377460, 15.132393>,  <31.923534, 38.249916, 15.159589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301678, 38.377460, 15.132393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143874, -0.595134, -0.790642,
		-0.292572, 0.737659, -0.608492,
		0.945358, 0.318866, -0.067990,
		32.585285, 38.473122, 15.111996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911203, 38.349548, 14.470863>,  <31.923534, 38.249916, 15.159589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911203, 38.349548, 14.470863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.289288, 38.344833, 14.601362>,  <32.516140, 38.342003, 14.679662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.289288, 38.344833, 14.601362>,  <31.911203, 38.349548, 14.470863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289288, 38.344833, 14.601362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295365, -0.394779, -0.870005,
		0.139054, 0.918701, -0.369666,
		0.945211, -0.011791, 0.326248,
		32.572849, 38.341297, 14.699237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372345, 38.821777, 14.066185>,  <31.911203, 38.349548, 14.470863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372345, 38.821777, 14.066185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.609348, 38.526527, 14.195241>,  <32.751553, 38.349377, 14.272675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.609348, 38.526527, 14.195241>,  <32.372345, 38.821777, 14.066185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609348, 38.526527, 14.195241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251699, -0.210829, -0.944563,
		0.765231, 0.640872, 0.060868,
		0.592511, -0.738129, 0.322640,
		32.787102, 38.305088, 14.292033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781532, 38.803200, 13.594546>,  <32.372345, 38.821777, 14.066185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781532, 38.803200, 13.594546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.874943, 38.453804, 13.765414>,  <32.930988, 38.244167, 13.867935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.874943, 38.453804, 13.765414>,  <32.781532, 38.803200, 13.594546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874943, 38.453804, 13.765414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474361, -0.281148, -0.834229,
		0.848791, 0.397448, 0.348695,
		0.233527, -0.873494, 0.427170,
		32.945000, 38.191757, 13.893565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389717, 38.678169, 13.318851>,  <32.781532, 38.803200, 13.594546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389717, 38.678169, 13.318851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.323868, 38.310387, 13.461677>,  <33.284359, 38.089718, 13.547372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.323868, 38.310387, 13.461677>,  <33.389717, 38.678169, 13.318851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323868, 38.310387, 13.461677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473479, -0.391234, -0.789147,
		0.865284, 0.039150, 0.499751,
		-0.164625, -0.919458, 0.357065,
		33.274479, 38.034550, 13.568796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987583, 38.343338, 13.374043>,  <33.389717, 38.678169, 13.318851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987583, 38.343338, 13.374043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.733540, 38.034676, 13.360325>,  <33.581112, 37.849480, 13.352095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.733540, 38.034676, 13.360325>,  <33.987583, 38.343338, 13.374043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733540, 38.034676, 13.360325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490794, -0.368869, -0.789339,
		0.596449, -0.518151, 0.612999,
		-0.635113, -0.771657, -0.034294,
		33.543007, 37.803177, 13.350037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445793, 37.732944, 13.390799>,  <33.987583, 38.343338, 13.374043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445793, 37.732944, 13.390799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.087399, 37.641773, 13.238350>,  <33.872360, 37.587070, 13.146881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.087399, 37.641773, 13.238350>,  <34.445793, 37.732944, 13.390799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087399, 37.641773, 13.238350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435266, -0.280632, -0.855447,
		0.088028, -0.932359, 0.350653,
		-0.895988, -0.227930, -0.381121,
		33.818604, 37.573395, 13.124014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620647, 37.159966, 12.944634>,  <34.445793, 37.732944, 13.390799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620647, 37.159966, 12.944634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.258392, 37.302391, 12.852507>,  <34.041039, 37.387844, 12.797230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.258392, 37.302391, 12.852507>,  <34.620647, 37.159966, 12.944634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258392, 37.302391, 12.852507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210007, -0.095272, -0.973047,
		-0.368406, -0.929594, 0.011507,
		-0.905635, 0.356059, -0.230320,
		33.986702, 37.409210, 12.783411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054543, 36.888557, 13.345422>,  <34.620647, 37.159966, 12.944634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054543, 36.888557, 13.345422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.452068, 36.870621, 13.304788>,  <35.690582, 36.859859, 13.280407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.452068, 36.870621, 13.304788>,  <35.054543, 36.888557, 13.345422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452068, 36.870621, 13.304788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106143, 0.114877, 0.987693,
		-0.032625, -0.992367, 0.118926,
		0.993815, -0.044847, -0.101585,
		35.750214, 36.857166, 13.274312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262249, 36.500320, 13.920063>,  <35.054543, 36.888557, 13.345422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262249, 36.500320, 13.920063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.609238, 36.658688, 13.799574>,  <35.817432, 36.753708, 13.727281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.609238, 36.658688, 13.799574>,  <35.262249, 36.500320, 13.920063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609238, 36.658688, 13.799574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287263, 0.095699, 0.953059,
		0.406160, -0.913286, -0.030716,
		0.867476, 0.395918, -0.301222,
		35.869480, 36.777462, 13.709208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846390, 36.000481, 14.187606>,  <35.262249, 36.500320, 13.920063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846390, 36.000481, 14.187606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.975178, 36.370899, 14.108849>,  <36.052452, 36.593151, 14.061594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.975178, 36.370899, 14.108849>,  <35.846390, 36.000481, 14.187606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975178, 36.370899, 14.108849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207951, 0.133714, 0.968957,
		0.923628, -0.352922, -0.149521,
		0.321974, 0.926049, -0.196892,
		36.071770, 36.648712, 14.049781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453651, 36.000019, 14.608418>,  <35.846390, 36.000481, 14.187606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453651, 36.000019, 14.608418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.317669, 36.367649, 14.528687>,  <36.236080, 36.588226, 14.480847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.317669, 36.367649, 14.528687>,  <36.453651, 36.000019, 14.608418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317669, 36.367649, 14.528687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161742, 0.265933, 0.950326,
		0.926430, 0.290826, -0.239058,
		-0.339952, 0.919076, -0.199329,
		36.215683, 36.643372, 14.468887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022694, 36.464771, 14.825259>,  <36.453651, 36.000019, 14.608418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022694, 36.464771, 14.825259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.662106, 36.637749, 14.832712>,  <36.445751, 36.741535, 14.837184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.662106, 36.637749, 14.832712>,  <37.022694, 36.464771, 14.825259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662106, 36.637749, 14.832712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180572, 0.336601, 0.924172,
		0.393380, 0.836476, -0.381522,
		-0.901469, 0.432443, 0.018632,
		36.391666, 36.767483, 14.838302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254189, 36.940624, 15.251307>,  <37.022694, 36.464771, 14.825259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254189, 36.940624, 15.251307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.860569, 37.011463, 15.244555>,  <36.624397, 37.053967, 15.240504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.860569, 37.011463, 15.244555>,  <37.254189, 36.940624, 15.251307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860569, 37.011463, 15.244555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027423, 0.244752, 0.969198,
		0.175776, 0.953275, -0.245704,
		-0.984048, 0.177100, -0.016880,
		36.565353, 37.064594, 15.239491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098351, 37.711910, 15.418255>,  <37.254189, 36.940624, 15.251307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098351, 37.711910, 15.418255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.783531, 37.477741, 15.496051>,  <36.594639, 37.337238, 15.542728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.783531, 37.477741, 15.496051>,  <37.098351, 37.711910, 15.418255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783531, 37.477741, 15.496051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000128, 0.315433, 0.948948,
		-0.616887, 0.746846, -0.248337,
		-0.787051, -0.585426, 0.194491,
		36.547417, 37.302113, 15.554399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012962, 38.523849, 15.316778>,  <37.098351, 37.711910, 15.418255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012962, 38.523849, 15.316778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.373779, 38.689533, 15.365350>,  <37.590271, 38.788944, 15.394493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.373779, 38.689533, 15.365350>,  <37.012962, 38.523849, 15.316778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373779, 38.689533, 15.365350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063739, 0.150414, -0.986566,
		-0.426909, 0.897667, 0.109279,
		0.902045, 0.414209, 0.121429,
		37.644394, 38.813797, 15.401778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021282, 39.303852, 15.028051>,  <37.012962, 38.523849, 15.316778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021282, 39.303852, 15.028051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.378632, 39.125282, 15.007689>,  <37.593040, 39.018143, 14.995472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.378632, 39.125282, 15.007689>,  <37.021282, 39.303852, 15.028051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378632, 39.125282, 15.007689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100607, 0.309168, -0.945671,
		0.437905, 0.839717, 0.321116,
		0.893374, -0.446420, -0.050905,
		37.646645, 38.991356, 14.992418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406498, 39.836510, 14.702921>,  <37.021282, 39.303852, 15.028051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406498, 39.836510, 14.702921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.578606, 39.478207, 14.658246>,  <37.681870, 39.263226, 14.631441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.578606, 39.478207, 14.658246>,  <37.406498, 39.836510, 14.702921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578606, 39.478207, 14.658246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115238, 0.177221, -0.977401,
		0.895312, 0.407680, 0.179479,
		0.430274, -0.895762, -0.111688,
		37.707687, 39.209476, 14.624740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866467, 39.950493, 14.254657>,  <37.406498, 39.836510, 14.702921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866467, 39.950493, 14.254657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.871258, 39.552097, 14.219203>,  <37.874130, 39.313061, 14.197930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.871258, 39.552097, 14.219203>,  <37.866467, 39.950493, 14.254657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871258, 39.552097, 14.219203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253797, 0.088766, -0.963176,
		0.967184, -0.010962, 0.253842,
		0.011974, -0.995992, -0.088635,
		37.874851, 39.253300, 14.192613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394020, 39.803913, 13.803383>,  <37.866467, 39.950493, 14.254657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394020, 39.803913, 13.803383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.206276, 39.450710, 13.802615>,  <38.093628, 39.238789, 13.802155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.206276, 39.450710, 13.802615>,  <38.394020, 39.803913, 13.803383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206276, 39.450710, 13.802615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265010, -0.138793, -0.954204,
		0.842299, -0.448377, 0.299149,
		-0.469363, -0.883003, -0.001919,
		38.065468, 39.185810, 13.802039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931549, 39.347538, 13.475020>,  <38.394020, 39.803913, 13.803383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931549, 39.347538, 13.475020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567226, 39.187061, 13.436083>,  <38.348633, 39.090775, 13.412721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567226, 39.187061, 13.436083>,  <38.931549, 39.347538, 13.475020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567226, 39.187061, 13.436083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179786, -0.173209, -0.968337,
		0.371629, -0.899469, 0.229888,
		-0.910807, -0.401192, -0.097343,
		38.293983, 39.066704, 13.406880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033821, 38.775322, 13.034503>,  <38.931549, 39.347538, 13.475020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033821, 38.775322, 13.034503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.648411, 38.875675, 12.997260>,  <38.417164, 38.935886, 12.974915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.648411, 38.875675, 12.997260>,  <39.033821, 38.775322, 13.034503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648411, 38.875675, 12.997260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008646, -0.376935, -0.926199,
		-0.267462, -0.891616, 0.365357,
		-0.963530, 0.250882, -0.093107,
		38.359352, 38.950939, 12.969328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899158, 38.321255, 12.597529>,  <39.033821, 38.775322, 13.034503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899158, 38.321255, 12.597529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578167, 38.559444, 12.582293>,  <38.385574, 38.702358, 12.573151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578167, 38.559444, 12.582293>,  <38.899158, 38.321255, 12.597529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578167, 38.559444, 12.582293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170170, -0.289581, -0.941905,
		-0.571907, -0.749372, 0.333712,
		-0.802474, 0.595470, -0.038093,
		38.337425, 38.738087, 12.570865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285130, 37.850346, 12.402493>,  <38.899158, 38.321255, 12.597529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285130, 37.850346, 12.402493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.234947, 38.234776, 12.304032>,  <38.204838, 38.465435, 12.244956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.234947, 38.234776, 12.304032>,  <38.285130, 37.850346, 12.402493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234947, 38.234776, 12.304032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143508, -0.263082, -0.954040,
		-0.981665, -0.084363, 0.170928,
		-0.125454, 0.961078, -0.246152,
		38.197311, 38.523098, 12.230186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.060238, 40.929317, 28.323368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132977, 41.312649, 28.235245>,  <37.176620, 41.542648, 28.182371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132977, 41.312649, 28.235245>,  <37.060238, 40.929317, 28.323368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132977, 41.312649, 28.235245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229945, -0.259275, -0.938031,
		-0.956063, 0.119919, -0.267512,
		0.181847, 0.958330, -0.220308,
		37.187531, 41.600147, 28.169151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533070, 41.215519, 27.851723>,  <37.060238, 40.929317, 28.323368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533070, 41.215519, 27.851723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870506, 41.424267, 27.801117>,  <37.072968, 41.549515, 27.770754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870506, 41.424267, 27.801117>,  <36.533070, 41.215519, 27.851723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870506, 41.424267, 27.801117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121728, -0.415317, -0.901495,
		-0.523006, 0.745094, -0.413884,
		0.843592, 0.521869, -0.126515,
		37.123585, 41.580826, 27.763163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534225, 41.386917, 27.193325>,  <36.533070, 41.215519, 27.851723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534225, 41.386917, 27.193325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921162, 41.468811, 27.253119>,  <37.153324, 41.517948, 27.288994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921162, 41.468811, 27.253119>,  <36.534225, 41.386917, 27.193325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921162, 41.468811, 27.253119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203077, -0.272915, -0.940360,
		-0.151727, 0.940001, -0.305577,
		0.967336, 0.204734, 0.149484,
		37.211361, 41.530231, 27.297964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723244, 41.696487, 26.608370>,  <36.534225, 41.386917, 27.193325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723244, 41.696487, 26.608370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.073418, 41.586994, 26.767712>,  <37.283524, 41.521297, 26.863317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.073418, 41.586994, 26.767712>,  <36.723244, 41.696487, 26.608370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073418, 41.586994, 26.767712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348517, -0.213547, -0.912652,
		0.334887, 0.937800, -0.091547,
		0.875435, -0.273730, 0.398354,
		37.336048, 41.504875, 26.887218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236214, 41.968998, 26.259459>,  <36.723244, 41.696487, 26.608370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236214, 41.968998, 26.259459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373569, 41.628819, 26.418865>,  <37.455982, 41.424709, 26.514509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373569, 41.628819, 26.418865>,  <37.236214, 41.968998, 26.259459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373569, 41.628819, 26.418865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258532, -0.322332, -0.910639,
		0.902909, 0.415733, 0.109183,
		0.343390, -0.850451, 0.398517,
		37.476585, 41.373684, 26.538420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853058, 41.904045, 25.899347>,  <37.236214, 41.968998, 26.259459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853058, 41.904045, 25.899347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.778564, 41.551952, 26.073938>,  <37.733868, 41.340698, 26.178694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.778564, 41.551952, 26.073938>,  <37.853058, 41.904045, 25.899347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778564, 41.551952, 26.073938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193999, -0.468448, -0.861929,
		0.963163, -0.075842, 0.258003,
		-0.186231, -0.880230, 0.436479,
		37.722694, 41.287884, 26.204882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511368, 41.517506, 25.801405>,  <37.853058, 41.904045, 25.899347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511368, 41.517506, 25.801405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.209614, 41.264320, 25.870995>,  <38.028561, 41.112408, 25.912748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.209614, 41.264320, 25.870995>,  <38.511368, 41.517506, 25.801405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209614, 41.264320, 25.870995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229165, -0.502293, -0.833777,
		0.615135, -0.589118, 0.523974,
		-0.754382, -0.632962, 0.173973,
		37.983299, 41.074432, 25.923187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751308, 40.914116, 25.582457>,  <38.511368, 41.517506, 25.801405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751308, 40.914116, 25.582457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.354988, 40.860725, 25.591413>,  <38.117195, 40.828690, 25.596788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.354988, 40.860725, 25.591413>,  <38.751308, 40.914116, 25.582457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354988, 40.860725, 25.591413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050913, -0.520883, -0.852108,
		0.125403, -0.843128, 0.522886,
		-0.990799, -0.133478, 0.022394,
		38.057747, 40.820683, 25.598131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609810, 40.186943, 25.556463>,  <38.751308, 40.914116, 25.582457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609810, 40.186943, 25.556463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.280010, 40.376495, 25.432764>,  <38.082130, 40.490227, 25.358543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.280010, 40.376495, 25.432764>,  <38.609810, 40.186943, 25.556463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280010, 40.376495, 25.432764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108347, -0.404191, -0.908235,
		-0.555395, -0.782344, 0.281911,
		-0.824498, 0.473885, -0.309250,
		38.032661, 40.518661, 25.339989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169430, 39.649727, 25.242218>,  <38.609810, 40.186943, 25.556463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169430, 39.649727, 25.242218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.046825, 39.993862, 25.079315>,  <37.973263, 40.200344, 24.981573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.046825, 39.993862, 25.079315>,  <38.169430, 39.649727, 25.242218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046825, 39.993862, 25.079315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000680, -0.427655, -0.903942,
		-0.951866, -0.277349, 0.130498,
		-0.306515, 0.860342, -0.407258,
		37.954872, 40.251965, 24.957138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786388, 39.480976, 24.713932>,  <38.169430, 39.649727, 25.242218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786388, 39.480976, 24.713932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.831276, 39.863155, 24.604731>,  <37.858208, 40.092461, 24.539209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.831276, 39.863155, 24.604731>,  <37.786388, 39.480976, 24.713932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831276, 39.863155, 24.604731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095299, -0.263123, -0.960044,
		-0.989103, 0.133755, 0.061525,
		0.112222, 0.955445, -0.273002,
		37.864941, 40.149788, 24.522829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188332, 39.647976, 24.332361>,  <37.786388, 39.480976, 24.713932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188332, 39.647976, 24.332361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461823, 39.910866, 24.205509>,  <37.625916, 40.068600, 24.129398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461823, 39.910866, 24.205509>,  <37.188332, 39.647976, 24.332361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461823, 39.910866, 24.205509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350404, -0.085516, -0.932686,
		-0.640106, 0.748826, 0.171825,
		0.683726, 0.657227, -0.317131,
		37.666939, 40.108032, 24.110371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494289, 39.314617, 24.609749>,  <37.188332, 39.647976, 24.332361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494289, 39.314617, 24.609749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433933, 38.927086, 24.531149>,  <36.397720, 38.694569, 24.483988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433933, 38.927086, 24.531149>,  <36.494289, 39.314617, 24.609749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433933, 38.927086, 24.531149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599162, -0.068476, 0.797694,
		-0.786281, 0.238101, -0.570149,
		-0.150890, -0.968823, -0.196502,
		36.388668, 38.636440, 24.472198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795734, 39.231918, 24.768633>,  <36.494289, 39.314617, 24.609749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795734, 39.231918, 24.768633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994171, 38.885468, 24.793016>,  <36.113232, 38.677597, 24.807648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994171, 38.885468, 24.793016>,  <35.795734, 39.231918, 24.768633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994171, 38.885468, 24.793016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456050, -0.200180, 0.867148,
		-0.738857, -0.457987, -0.494305,
		0.496093, -0.866127, 0.060961,
		36.142998, 38.625629, 24.811304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277008, 38.696411, 24.970705>,  <35.795734, 39.231918, 24.768633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277008, 38.696411, 24.970705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642197, 38.557739, 25.056763>,  <35.861309, 38.474537, 25.108397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642197, 38.557739, 25.056763>,  <35.277008, 38.696411, 24.970705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642197, 38.557739, 25.056763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319870, -0.280812, 0.904891,
		-0.253295, -0.894961, -0.367268,
		0.912976, -0.346682, 0.215143,
		35.916088, 38.453735, 25.121305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124992, 38.086224, 25.467527>,  <35.277008, 38.696411, 24.970705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124992, 38.086224, 25.467527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.521317, 38.123505, 25.506727>,  <35.759113, 38.145874, 25.530247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.521317, 38.123505, 25.506727>,  <35.124992, 38.086224, 25.467527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521317, 38.123505, 25.506727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052962, -0.399355, 0.915265,
		0.124443, -0.912046, -0.390750,
		0.990812, 0.093204, 0.098001,
		35.818562, 38.151466, 25.536127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349957, 37.435825, 25.764034>,  <35.124992, 38.086224, 25.467527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349957, 37.435825, 25.764034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614563, 37.725414, 25.842268>,  <35.773327, 37.899170, 25.889208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614563, 37.725414, 25.842268>,  <35.349957, 37.435825, 25.764034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614563, 37.725414, 25.842268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002805, -0.263192, 0.964739,
		0.749923, -0.637645, -0.176137,
		0.661519, 0.723974, 0.195585,
		35.813019, 37.942608, 25.900944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891346, 37.113617, 26.250525>,  <35.349957, 37.435825, 25.764034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891346, 37.113617, 26.250525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957077, 37.506615, 26.285643>,  <35.996513, 37.742413, 26.306713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957077, 37.506615, 26.285643>,  <35.891346, 37.113617, 26.250525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957077, 37.506615, 26.285643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134023, -0.065943, 0.988782,
		0.977259, -0.174249, 0.120840,
		0.164326, 0.982491, 0.087797,
		36.006374, 37.801361, 26.311981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334637, 37.213398, 26.866341>,  <35.891346, 37.113617, 26.250525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334637, 37.213398, 26.866341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.135365, 37.554611, 26.804178>,  <36.015800, 37.759338, 26.766882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.135365, 37.554611, 26.804178>,  <36.334637, 37.213398, 26.866341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135365, 37.554611, 26.804178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270227, 0.017555, 0.962636,
		0.823889, 0.521562, 0.221767,
		-0.498181, 0.853033, -0.155404,
		35.985909, 37.810520, 26.757557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445412, 37.558804, 27.557611>,  <36.334637, 37.213398, 26.866341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445412, 37.558804, 27.557611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130775, 37.727051, 27.376789>,  <35.941994, 37.827999, 27.268295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130775, 37.727051, 27.376789>,  <36.445412, 37.558804, 27.557611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130775, 37.727051, 27.376789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447114, 0.116946, 0.886799,
		0.425869, 0.899669, 0.096075,
		-0.786591, 0.420616, -0.452058,
		35.894798, 37.853237, 27.241171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396713, 38.193733, 27.886263>,  <36.445412, 37.558804, 27.557611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396713, 38.193733, 27.886263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.040848, 38.081966, 27.741800>,  <35.827328, 38.014908, 27.655123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.040848, 38.081966, 27.741800>,  <36.396713, 38.193733, 27.886263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040848, 38.081966, 27.741800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436483, 0.288081, 0.852345,
		-0.134114, 0.915935, -0.378253,
		-0.889661, -0.279412, -0.361154,
		35.773949, 37.998142, 27.633453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973324, 38.787548, 28.101204>,  <36.396713, 38.193733, 27.886263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973324, 38.787548, 28.101204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725124, 38.484230, 28.021240>,  <35.576206, 38.302238, 27.973263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725124, 38.484230, 28.021240>,  <35.973324, 38.787548, 28.101204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725124, 38.484230, 28.021240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590682, 0.284255, 0.755178,
		-0.515825, 0.586671, -0.624293,
		-0.620499, -0.758299, -0.199910,
		35.538975, 38.256741, 27.961267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274193, 39.148067, 27.959522>,  <35.973324, 38.787548, 28.101204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274193, 39.148067, 27.959522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194511, 38.768467, 28.057264>,  <35.146702, 38.540707, 28.115910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194511, 38.768467, 28.057264>,  <35.274193, 39.148067, 27.959522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194511, 38.768467, 28.057264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644750, 0.314707, 0.696604,
		-0.737980, -0.018783, -0.674561,
		-0.199205, -0.949003, 0.244357,
		35.134750, 38.483765, 28.130571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584179, 39.064995, 27.957567>,  <35.274193, 39.148067, 27.959522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584179, 39.064995, 27.957567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.711174, 38.771828, 28.198246>,  <34.787373, 38.595928, 28.342653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.711174, 38.771828, 28.198246>,  <34.584179, 39.064995, 27.957567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711174, 38.771828, 28.198246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593691, 0.341141, 0.728803,
		-0.739413, -0.588608, -0.326816,
		0.317489, -0.732914, 0.601696,
		34.806419, 38.551952, 28.378756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944397, 38.750027, 28.192347>,  <34.584179, 39.064995, 27.957567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944397, 38.750027, 28.192347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209248, 38.620277, 28.462568>,  <34.368156, 38.542427, 28.624701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209248, 38.620277, 28.462568>,  <33.944397, 38.750027, 28.192347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209248, 38.620277, 28.462568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704618, 0.037463, 0.708598,
		-0.255158, -0.945188, -0.203753,
		0.662125, -0.324372, 0.675555,
		34.407887, 38.522964, 28.665236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590309, 38.218643, 28.689472>,  <33.944397, 38.750027, 28.192347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590309, 38.218643, 28.689472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913837, 38.322880, 28.900337>,  <34.107956, 38.385422, 29.026855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913837, 38.322880, 28.900337>,  <33.590309, 38.218643, 28.689472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913837, 38.322880, 28.900337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586777, 0.298628, 0.752671,
		0.038712, -0.918104, 0.394444,
		0.808823, 0.260588, 0.527162,
		34.156483, 38.401058, 29.058485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196053, 38.531063, 28.080997>,  <33.590309, 38.218643, 28.689472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196053, 38.531063, 28.080997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826878, 38.667339, 28.152687>,  <32.605373, 38.749104, 28.195702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826878, 38.667339, 28.152687>,  <33.196053, 38.531063, 28.080997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826878, 38.667339, 28.152687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266066, -0.228082, -0.936583,
		-0.278207, -0.912090, 0.301151,
		-0.922936, 0.340690, 0.179222,
		32.549995, 38.769547, 28.206453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762066, 38.021065, 27.925833>,  <33.196053, 38.531063, 28.080997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762066, 38.021065, 27.925833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581654, 38.371792, 27.859194>,  <32.473408, 38.582230, 27.819210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581654, 38.371792, 27.859194>,  <32.762066, 38.021065, 27.925833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581654, 38.371792, 27.859194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189194, -0.276351, -0.942250,
		-0.872225, -0.393465, 0.290533,
		-0.451032, 0.876821, -0.166599,
		32.446342, 38.634838, 27.809214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212940, 38.019920, 27.469490>,  <32.762066, 38.021065, 27.925833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212940, 38.019920, 27.469490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.298752, 38.408245, 27.426579>,  <32.350239, 38.641239, 27.400831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.298752, 38.408245, 27.426579>,  <32.212940, 38.019920, 27.469490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298752, 38.408245, 27.426579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015409, -0.106456, -0.994198,
		-0.976597, 0.214935, -0.007878,
		0.214527, 0.970809, -0.107277,
		32.363110, 38.699490, 27.394396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621058, 38.297173, 26.982340>,  <32.212940, 38.019920, 27.469490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621058, 38.297173, 26.982340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.977427, 38.478527, 26.971769>,  <32.191246, 38.587341, 26.965427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.977427, 38.478527, 26.971769>,  <31.621058, 38.297173, 26.982340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977427, 38.478527, 26.971769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035208, -0.126966, -0.991282,
		-0.452789, 0.882225, -0.129080,
		0.890922, 0.453386, -0.026428,
		32.244701, 38.614544, 26.963840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593948, 38.858921, 26.458923>,  <31.621058, 38.297173, 26.982340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593948, 38.858921, 26.458923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973467, 38.745052, 26.513689>,  <32.201180, 38.676731, 26.546549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973467, 38.745052, 26.513689>,  <31.593948, 38.858921, 26.458923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973467, 38.745052, 26.513689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149802, 0.023901, -0.988427,
		0.278103, 0.958328, 0.065321,
		0.948798, -0.284670, 0.136913,
		32.258106, 38.659653, 26.554764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951771, 39.382195, 26.132065>,  <31.593948, 38.858921, 26.458923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951771, 39.382195, 26.132065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.184528, 39.057022, 26.122702>,  <32.324184, 38.861919, 26.117083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.184528, 39.057022, 26.122702>,  <31.951771, 39.382195, 26.132065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184528, 39.057022, 26.122702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030232, 0.050388, -0.998272,
		0.812701, 0.580183, 0.053897,
		0.581896, -0.812926, -0.023410,
		32.359097, 38.813145, 26.115679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574268, 39.601311, 25.778666>,  <31.951771, 39.382195, 26.132065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574268, 39.601311, 25.778666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563866, 39.203484, 25.738363>,  <32.557625, 38.964787, 25.714182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563866, 39.203484, 25.738363>,  <32.574268, 39.601311, 25.778666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563866, 39.203484, 25.738363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240583, 0.091597, -0.966297,
		0.970280, -0.049374, 0.236894,
		-0.026011, -0.994571, -0.100753,
		32.556061, 38.905113, 25.708138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076290, 39.429546, 25.234486>,  <32.574268, 39.601311, 25.778666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076290, 39.429546, 25.234486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.882694, 39.081795, 25.274366>,  <32.766537, 38.873146, 25.298294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.882694, 39.081795, 25.274366>,  <33.076290, 39.429546, 25.234486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882694, 39.081795, 25.274366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119246, -0.178397, -0.976706,
		0.866911, -0.460827, 0.190012,
		-0.483990, -0.869375, 0.099703,
		32.737495, 38.820984, 25.304277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426857, 39.042645, 24.783457>,  <33.076290, 39.429546, 25.234486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426857, 39.042645, 24.783457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088383, 38.838779, 24.845694>,  <32.885300, 38.716461, 24.883036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088383, 38.838779, 24.845694>,  <33.426857, 39.042645, 24.783457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088383, 38.838779, 24.845694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059063, -0.379884, -0.923147,
		0.529603, -0.771965, 0.351555,
		-0.846187, -0.509665, 0.155593,
		32.834526, 38.685879, 24.892372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593441, 38.388622, 24.563370>,  <33.426857, 39.042645, 24.783457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593441, 38.388622, 24.563370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.198593, 38.446117, 24.535292>,  <32.961685, 38.480614, 24.518444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.198593, 38.446117, 24.535292>,  <33.593441, 38.388622, 24.563370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198593, 38.446117, 24.535292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038555, -0.212110, -0.976485,
		-0.155242, -0.966618, 0.203837,
		-0.987124, 0.143733, -0.070196,
		32.902454, 38.489239, 24.514233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338390, 37.808926, 24.244831>,  <33.593441, 38.388622, 24.563370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338390, 37.808926, 24.244831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.069824, 38.098495, 24.181427>,  <32.908684, 38.272240, 24.143385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.069824, 38.098495, 24.181427>,  <33.338390, 37.808926, 24.244831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069824, 38.098495, 24.181427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048435, -0.170569, -0.984155,
		-0.739495, -0.668456, 0.079460,
		-0.671417, 0.723929, -0.158512,
		32.868401, 38.315674, 24.133873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071133, 37.629723, 23.649416>,  <33.338390, 37.808926, 24.244831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071133, 37.629723, 23.649416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941589, 38.007740, 23.667362>,  <32.863861, 38.234550, 23.678129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941589, 38.007740, 23.667362>,  <33.071133, 37.629723, 23.649416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941589, 38.007740, 23.667362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080813, 0.019616, -0.996537,
		-0.942647, -0.326366, 0.070019,
		-0.323862, 0.945040, 0.044865,
		32.844429, 38.291252, 23.680822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541039, 37.697109, 23.155787>,  <33.071133, 37.629723, 23.649416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541039, 37.697109, 23.155787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668709, 38.072205, 23.210588>,  <32.745312, 38.297264, 23.243469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668709, 38.072205, 23.210588>,  <32.541039, 37.697109, 23.155787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668709, 38.072205, 23.210588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048778, 0.160631, -0.985809,
		-0.946440, 0.307963, 0.097010,
		0.319175, 0.937740, 0.137006,
		32.764462, 38.353527, 23.251690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047745, 38.222538, 22.788208>,  <32.541039, 37.697109, 23.155787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047745, 38.222538, 22.788208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400162, 38.405098, 22.837940>,  <32.611610, 38.514633, 22.867781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400162, 38.405098, 22.837940>,  <32.047745, 38.222538, 22.788208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400162, 38.405098, 22.837940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096814, 0.431254, -0.897021,
		-0.463022, 0.778278, 0.424140,
		0.881043, 0.456403, 0.124332,
		32.664474, 38.542019, 22.875240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944771, 38.818951, 22.505768>,  <32.047745, 38.222538, 22.788208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944771, 38.818951, 22.505768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343159, 38.814919, 22.541426>,  <32.582191, 38.812500, 22.562820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343159, 38.814919, 22.541426>,  <31.944771, 38.818951, 22.505768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343159, 38.814919, 22.541426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084429, 0.441230, -0.893414,
		-0.030326, 0.897338, 0.440302,
		0.995968, -0.010080, 0.089142,
		32.641949, 38.811893, 22.568169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168938, 39.491638, 22.311228>,  <31.944771, 38.818951, 22.505768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168938, 39.491638, 22.311228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502728, 39.279037, 22.253035>,  <32.702999, 39.151478, 22.218119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502728, 39.279037, 22.253035>,  <32.168938, 39.491638, 22.311228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502728, 39.279037, 22.253035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111137, 0.420909, -0.900269,
		0.539726, 0.735081, 0.410307,
		0.834473, -0.531498, -0.145481,
		32.753071, 39.119587, 22.209391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706802, 40.009842, 22.103689>,  <32.168938, 39.491638, 22.311228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706802, 40.009842, 22.103689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825878, 39.646862, 21.985085>,  <32.897324, 39.429073, 21.913921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825878, 39.646862, 21.985085>,  <32.706802, 40.009842, 22.103689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825878, 39.646862, 21.985085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017213, 0.305440, -0.952056,
		0.954508, 0.288519, 0.075306,
		0.297687, -0.907449, -0.296511,
		32.915184, 39.374626, 21.896132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304493, 40.071285, 21.707079>,  <32.706802, 40.009842, 22.103689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304493, 40.071285, 21.707079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177547, 39.712479, 21.584021>,  <33.101379, 39.497196, 21.510185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177547, 39.712479, 21.584021>,  <33.304493, 40.071285, 21.707079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177547, 39.712479, 21.584021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046592, 0.309274, -0.949831,
		0.947159, -0.315775, -0.056358,
		-0.317363, -0.897015, -0.307644,
		33.082340, 39.443375, 21.491728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587158, 40.039429, 21.071304>,  <33.304493, 40.071285, 21.707079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587158, 40.039429, 21.071304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331631, 39.732990, 21.043009>,  <33.178314, 39.549126, 21.026031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331631, 39.732990, 21.043009>,  <33.587158, 40.039429, 21.071304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331631, 39.732990, 21.043009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061155, 0.041090, -0.997282,
		0.766923, -0.641408, 0.020602,
		-0.638818, -0.766099, -0.070739,
		33.139984, 39.503162, 21.021788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887535, 39.570023, 20.568342>,  <33.587158, 40.039429, 21.071304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887535, 39.570023, 20.568342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491444, 39.517761, 20.587854>,  <33.253788, 39.486404, 20.599562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491444, 39.517761, 20.587854>,  <33.887535, 39.570023, 20.568342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491444, 39.517761, 20.587854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072208, 0.181076, -0.980815,
		0.119305, -0.974753, -0.188740,
		-0.990229, -0.130645, 0.048781,
		33.194374, 39.478565, 20.602488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807171, 39.085087, 20.099245>,  <33.887535, 39.570023, 20.568342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807171, 39.085087, 20.099245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450020, 39.264366, 20.116598>,  <33.235729, 39.371933, 20.127010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450020, 39.264366, 20.116598>,  <33.807171, 39.085087, 20.099245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450020, 39.264366, 20.116598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035830, 0.025324, -0.999037,
		-0.448863, -0.893577, -0.006553,
		-0.892882, 0.448196, 0.043384,
		33.182156, 39.398827, 20.129614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379780, 38.703888, 19.659918>,  <33.807171, 39.085087, 20.099245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379780, 38.703888, 19.659918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181114, 39.041622, 19.740328>,  <33.061913, 39.244263, 19.788574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181114, 39.041622, 19.740328>,  <33.379780, 38.703888, 19.659918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181114, 39.041622, 19.740328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354374, 0.014155, -0.934996,
		-0.792301, -0.535620, 0.292182,
		-0.496667, 0.844340, 0.201025,
		33.032116, 39.294926, 19.800636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924965, 38.693607, 19.146715>,  <33.379780, 38.703888, 19.659918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924965, 38.693607, 19.146715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899334, 39.085484, 19.222715>,  <32.883953, 39.320610, 19.268316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899334, 39.085484, 19.222715>,  <32.924965, 38.693607, 19.146715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899334, 39.085484, 19.222715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405257, 0.148441, -0.902071,
		-0.911954, -0.134804, 0.387514,
		-0.064080, 0.979690, 0.190002,
		32.880112, 39.379391, 19.279716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227840, 38.889442, 18.882286>,  <32.924965, 38.693607, 19.146715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227840, 38.889442, 18.882286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464222, 39.211246, 18.906059>,  <32.606052, 39.404327, 18.920324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464222, 39.211246, 18.906059>,  <32.227840, 38.889442, 18.882286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464222, 39.211246, 18.906059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260390, 0.259965, -0.929847,
		-0.763523, 0.534022, 0.363115,
		0.590956, 0.804511, 0.059435,
		32.641510, 39.452599, 18.923889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952490, 39.437927, 18.489885>,  <32.227840, 38.889442, 18.882286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952490, 39.437927, 18.489885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322403, 39.590000, 18.496082>,  <32.544350, 39.681244, 18.499800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322403, 39.590000, 18.496082>,  <31.952490, 39.437927, 18.489885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322403, 39.590000, 18.496082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147073, 0.394704, -0.906961,
		-0.350927, 0.836462, 0.420930,
		0.924781, 0.380185, 0.015491,
		32.599838, 39.704056, 18.500731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802547, 40.102940, 18.239513>,  <31.952490, 39.437927, 18.489885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802547, 40.102940, 18.239513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.194027, 40.031097, 18.199739>,  <32.428917, 39.987991, 18.175875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.194027, 40.031097, 18.199739>,  <31.802547, 40.102940, 18.239513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194027, 40.031097, 18.199739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069798, 0.164391, -0.983923,
		0.193064, 0.969906, 0.148353,
		0.978700, -0.179605, -0.099436,
		32.487637, 39.977215, 18.169909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113106, 40.738819, 17.887594>,  <31.802547, 40.102940, 18.239513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113106, 40.738819, 17.887594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334564, 40.411518, 17.825705>,  <32.467438, 40.215137, 17.788570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334564, 40.411518, 17.825705>,  <32.113106, 40.738819, 17.887594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334564, 40.411518, 17.825705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087226, 0.127797, -0.987957,
		0.828172, 0.560474, -0.000619,
		0.553646, -0.818252, -0.154726,
		32.500656, 40.166042, 17.779287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551533, 40.850754, 17.320456>,  <32.113106, 40.738819, 17.887594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551533, 40.850754, 17.320456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.555332, 40.452938, 17.362026>,  <32.557613, 40.214249, 17.386969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.555332, 40.452938, 17.362026>,  <32.551533, 40.850754, 17.320456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555332, 40.452938, 17.362026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019903, -0.103722, -0.994407,
		0.999757, 0.011513, 0.018809,
		0.009498, -0.994539, 0.103926,
		32.558182, 40.154575, 17.393204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130474, 41.282639, 17.162399>,  <32.551533, 40.850754, 17.320456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130474, 41.282639, 17.162399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893650, 41.597023, 17.091148>,  <32.751556, 41.785652, 17.048397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893650, 41.597023, 17.091148>,  <33.130474, 41.282639, 17.162399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893650, 41.597023, 17.091148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064055, 0.174435, 0.982583,
		0.803343, 0.593159, -0.052932,
		-0.592061, 0.785961, -0.178127,
		32.716030, 41.832809, 17.037710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348362, 41.795635, 17.546247>,  <33.130474, 41.282639, 17.162399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348362, 41.795635, 17.546247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973236, 41.904640, 17.460239>,  <32.748161, 41.970043, 17.408634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973236, 41.904640, 17.460239>,  <33.348362, 41.795635, 17.546247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973236, 41.904640, 17.460239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129761, 0.299306, 0.945292,
		0.321964, 0.914413, -0.245333,
		-0.937817, 0.272515, -0.215021,
		32.691891, 41.986393, 17.395733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353710, 42.467556, 17.676729>,  <33.348362, 41.795635, 17.546247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353710, 42.467556, 17.676729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974209, 42.341381, 17.684370>,  <32.746510, 42.265675, 17.688953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974209, 42.341381, 17.684370>,  <33.353710, 42.467556, 17.676729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974209, 42.341381, 17.684370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081628, 0.303009, 0.949485,
		-0.305292, 0.899269, -0.313230,
		-0.948754, -0.315439, 0.019101,
		32.689583, 42.246750, 17.690100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020332, 42.983067, 18.076958>,  <33.353710, 42.467556, 17.676729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020332, 42.983067, 18.076958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806080, 42.645351, 18.070299>,  <32.677528, 42.442722, 18.066303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806080, 42.645351, 18.070299>,  <33.020332, 42.983067, 18.076958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806080, 42.645351, 18.070299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175313, 0.091895, 0.980215,
		-0.826055, 0.527950, -0.197236,
		-0.535629, -0.844290, -0.016646,
		32.645390, 42.392063, 18.065306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391903, 43.205421, 18.330904>,  <33.020332, 42.983067, 18.076958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391903, 43.205421, 18.330904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.425323, 42.812004, 18.394987>,  <32.445377, 42.575954, 18.433437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.425323, 42.812004, 18.394987>,  <32.391903, 43.205421, 18.330904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425323, 42.812004, 18.394987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061841, 0.155342, 0.985923,
		-0.994583, -0.092285, -0.047844,
		0.083554, -0.983541, 0.160208,
		32.450390, 42.516941, 18.443048>
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
