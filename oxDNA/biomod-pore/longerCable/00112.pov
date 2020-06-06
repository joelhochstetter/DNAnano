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
	<24.141970, 34.798016, 34.649166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285887, 35.069984, 34.904743>,  <24.372238, 35.233166, 35.058090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285887, 35.069984, 34.904743>,  <24.141970, 34.798016, 34.649166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.285887, 35.069984, 34.904743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914757, -0.391927, -0.098043,
		0.183758, 0.619755, -0.762979,
		0.359794, 0.679924, 0.638945,
		24.393826, 35.273960, 35.096428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707355, 35.085449, 34.347469>,  <24.141970, 34.798016, 34.649166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707355, 35.085449, 34.347469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760147, 35.081573, 34.743950>,  <24.791822, 35.079247, 34.981838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760147, 35.081573, 34.743950>,  <24.707355, 35.085449, 34.347469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760147, 35.081573, 34.743950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830489, -0.544844, -0.115906,
		0.541175, 0.838482, -0.063857,
		0.131977, -0.009692, 0.991205,
		24.799740, 35.078667, 35.041313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123316, 34.461777, 34.392189>,  <24.707355, 35.085449, 34.347469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123316, 34.461777, 34.392189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111073, 34.680302, 34.726997>,  <25.103727, 34.811417, 34.927883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111073, 34.680302, 34.726997>,  <25.123316, 34.461777, 34.392189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111073, 34.680302, 34.726997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911068, -0.329189, 0.248171,
		0.411118, 0.770183, -0.487648,
		-0.030609, 0.546308, 0.837025,
		25.101891, 34.844193, 34.978104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695345, 34.713257, 34.430103>,  <25.123316, 34.461777, 34.392189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695345, 34.713257, 34.430103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558897, 34.724178, 34.805954>,  <25.477028, 34.730732, 35.031464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558897, 34.724178, 34.805954>,  <25.695345, 34.713257, 34.430103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558897, 34.724178, 34.805954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868325, -0.373728, 0.326097,
		0.360068, 0.927136, 0.103774,
		-0.341120, 0.027307, 0.939623,
		25.456562, 34.732372, 35.087841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153749, 35.149963, 34.816235>,  <25.695345, 34.713257, 34.430103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153749, 35.149963, 34.816235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977234, 34.899460, 35.073315>,  <25.871325, 34.749157, 35.227562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977234, 34.899460, 35.073315>,  <26.153749, 35.149963, 34.816235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977234, 34.899460, 35.073315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893049, -0.236323, 0.382904,
		-0.087914, 0.742931, 0.663569,
		-0.441288, -0.626262, 0.642698,
		25.844847, 34.711582, 35.266125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324984, 35.339352, 35.469990>,  <26.153749, 35.149963, 34.816235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324984, 35.339352, 35.469990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275393, 34.958523, 35.358139>,  <26.245638, 34.730026, 35.291027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275393, 34.958523, 35.358139>,  <26.324984, 35.339352, 35.469990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275393, 34.958523, 35.358139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937059, -0.205035, 0.282634,
		-0.326421, -0.226988, 0.917565,
		-0.123979, -0.952070, -0.279629,
		26.238199, 34.672901, 35.274250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390120, 34.655144, 36.022079>,  <26.324984, 35.339352, 35.469990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390120, 34.655144, 36.022079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755949, 34.503361, 36.078030>,  <26.975447, 34.412289, 36.111599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755949, 34.503361, 36.078030>,  <26.390120, 34.655144, 36.022079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755949, 34.503361, 36.078030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403643, 0.877913, -0.257566,
		-0.025061, 0.292023, 0.956083,
		0.914573, -0.379462, 0.139874,
		27.030321, 34.389523, 36.119991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768600, 35.100243, 36.499924>,  <26.390120, 34.655144, 36.022079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768600, 35.100243, 36.499924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989939, 34.892624, 36.239342>,  <27.122742, 34.768051, 36.082993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989939, 34.892624, 36.239342>,  <26.768600, 35.100243, 36.499924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989939, 34.892624, 36.239342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444570, 0.845430, -0.295982,
		0.704392, -0.125839, 0.698567,
		0.553344, -0.519049, -0.651459,
		27.155941, 34.736908, 36.043903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491045, 35.205578, 36.635036>,  <26.768600, 35.100243, 36.499924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491045, 35.205578, 36.635036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495508, 35.068943, 36.259125>,  <27.498186, 34.986961, 36.033577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495508, 35.068943, 36.259125>,  <27.491045, 35.205578, 36.635036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495508, 35.068943, 36.259125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578460, 0.768819, -0.272582,
		0.815634, -0.540586, 0.206174,
		0.011157, -0.341591, -0.939782,
		27.498856, 34.966465, 35.977188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129459, 35.285000, 36.454514>,  <27.491045, 35.205578, 36.635036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129459, 35.285000, 36.454514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949715, 35.233932, 36.100842>,  <27.841867, 35.203293, 35.888638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949715, 35.233932, 36.100842>,  <28.129459, 35.285000, 36.454514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949715, 35.233932, 36.100842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519058, 0.768218, -0.374727,
		0.727084, -0.627329, -0.278940,
		-0.449364, -0.127672, -0.884179,
		27.814905, 35.195629, 35.835587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712402, 35.246708, 35.893768>,  <28.129459, 35.285000, 36.454514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712402, 35.246708, 35.893768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361788, 35.368717, 35.744827>,  <28.151419, 35.441925, 35.655464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361788, 35.368717, 35.744827>,  <28.712402, 35.246708, 35.893768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361788, 35.368717, 35.744827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420940, 0.860941, -0.285641,
		0.233444, -0.407111, -0.883043,
		-0.876535, 0.305027, -0.372351,
		28.098827, 35.460224, 35.633121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763840, 35.431526, 35.146141>,  <28.712402, 35.246708, 35.893768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763840, 35.431526, 35.146141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461359, 35.626057, 35.321251>,  <28.279871, 35.742775, 35.426315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461359, 35.626057, 35.321251>,  <28.763840, 35.431526, 35.146141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461359, 35.626057, 35.321251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270523, 0.841538, -0.467580,
		-0.595801, -0.235156, -0.767934,
		-0.756200, 0.486329, 0.437774,
		28.234499, 35.771954, 35.452583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746778, 36.158005, 35.292175>,  <28.763840, 35.431526, 35.146141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746778, 36.158005, 35.292175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976238, 36.222652, 34.970978>,  <29.113914, 36.261440, 34.778259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976238, 36.222652, 34.970978>,  <28.746778, 36.158005, 35.292175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976238, 36.222652, 34.970978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380560, -0.815520, -0.436006,
		-0.725326, 0.555704, -0.406319,
		0.573651, 0.161618, -0.802997,
		29.148335, 36.271137, 34.730080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508957, 36.649235, 35.740089>,  <28.746778, 36.158005, 35.292175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508957, 36.649235, 35.740089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275915, 36.732910, 35.425938>,  <28.136091, 36.783115, 35.237446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275915, 36.732910, 35.425938>,  <28.508957, 36.649235, 35.740089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275915, 36.732910, 35.425938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487572, -0.863076, 0.131805,
		-0.650267, 0.459717, 0.604825,
		-0.582603, 0.209188, -0.785375,
		28.101135, 36.795666, 35.190327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656672, 36.654129, 35.911556>,  <28.508957, 36.649235, 35.740089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656672, 36.654129, 35.911556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837976, 36.525574, 35.578987>,  <27.946760, 36.448441, 35.379448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837976, 36.525574, 35.578987>,  <27.656672, 36.654129, 35.911556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837976, 36.525574, 35.578987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287017, -0.935684, 0.205224,
		-0.843903, 0.145611, -0.516357,
		0.453265, -0.321392, -0.831420,
		27.973955, 36.429157, 35.329563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094057, 36.322086, 35.487835>,  <27.656672, 36.654129, 35.911556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094057, 36.322086, 35.487835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450661, 36.159695, 35.407436>,  <27.664623, 36.062260, 35.359200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450661, 36.159695, 35.407436>,  <27.094057, 36.322086, 35.487835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450661, 36.159695, 35.407436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401135, -0.913627, 0.066155,
		-0.210489, 0.021647, -0.977357,
		0.891507, -0.405977, -0.200992,
		27.718113, 36.037903, 35.347137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951294, 35.780025, 35.110733>,  <27.094057, 36.322086, 35.487835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951294, 35.780025, 35.110733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314625, 35.682564, 35.246716>,  <27.532623, 35.624088, 35.328304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314625, 35.682564, 35.246716>,  <26.951294, 35.780025, 35.110733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314625, 35.682564, 35.246716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298911, -0.946686, 0.120156,
		0.292561, -0.210759, -0.932732,
		0.908329, -0.243651, 0.339961,
		27.587124, 35.609470, 35.348705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124226, 35.177658, 34.748959>,  <26.951294, 35.780025, 35.110733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124226, 35.177658, 34.748959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344980, 35.183155, 35.082481>,  <27.477432, 35.186451, 35.282597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344980, 35.183155, 35.082481>,  <27.124226, 35.177658, 34.748959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344980, 35.183155, 35.082481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247609, -0.952072, 0.179578,
		0.796311, -0.305564, -0.522033,
		0.551886, 0.013740, 0.833806,
		27.510546, 35.187279, 35.332623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474619, 34.544670, 34.772045>,  <27.124226, 35.177658, 34.748959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474619, 34.544670, 34.772045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487581, 34.684662, 35.146523>,  <27.495358, 34.768658, 35.371208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487581, 34.684662, 35.146523>,  <27.474619, 34.544670, 34.772045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487581, 34.684662, 35.146523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268324, -0.899257, 0.345454,
		0.962784, -0.262399, 0.064767,
		0.032404, 0.349976, 0.936198,
		27.497303, 34.789654, 35.427383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805931, 34.018059, 35.099472>,  <27.474619, 34.544670, 34.772045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805931, 34.018059, 35.099472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609192, 34.232994, 35.373508>,  <27.491148, 34.361958, 35.537930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609192, 34.232994, 35.373508>,  <27.805931, 34.018059, 35.099472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609192, 34.232994, 35.373508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341791, -0.842843, 0.415687,
		0.800789, -0.029702, 0.598210,
		-0.491850, 0.537340, 0.685091,
		27.461637, 34.394196, 35.579037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971369, 33.737587, 35.728172>,  <27.805931, 34.018059, 35.099472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971369, 33.737587, 35.728172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612808, 33.913315, 35.751717>,  <27.397673, 34.018753, 35.765842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612808, 33.913315, 35.751717>,  <27.971369, 33.737587, 35.728172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612808, 33.913315, 35.751717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395457, -0.852651, 0.341468,
		0.200200, 0.282815, 0.938049,
		-0.896401, 0.439320, 0.058859,
		27.343887, 34.045113, 35.769375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364843, 33.273441, 35.293335>,  <27.971369, 33.737587, 35.728172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364843, 33.273441, 35.293335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569773, 33.609779, 35.363190>,  <28.692730, 33.811584, 35.405102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569773, 33.609779, 35.363190>,  <28.364843, 33.273441, 35.293335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569773, 33.609779, 35.363190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842844, -0.453297, -0.290063,
		-0.164735, 0.295800, -0.940938,
		0.512325, 0.840847, 0.174640,
		28.723471, 33.862034, 35.415581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866716, 33.264038, 34.724037>,  <28.364843, 33.273441, 35.293335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866716, 33.264038, 34.724037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981022, 33.468082, 35.048538>,  <29.049606, 33.590511, 35.243237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981022, 33.468082, 35.048538>,  <28.866716, 33.264038, 34.724037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981022, 33.468082, 35.048538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900180, -0.433221, -0.044683,
		0.328656, 0.743038, -0.582993,
		0.285765, 0.510113, 0.811248,
		29.066751, 33.621117, 35.291912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474676, 33.643913, 34.633045>,  <28.866716, 33.264038, 34.724037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474676, 33.643913, 34.633045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472286, 33.574162, 35.026909>,  <29.470852, 33.532310, 35.263226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472286, 33.574162, 35.026909>,  <29.474676, 33.643913, 34.633045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472286, 33.574162, 35.026909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868473, -0.489020, -0.081336,
		0.495701, 0.854664, 0.154368,
		-0.005975, -0.174383, 0.984660,
		29.470493, 33.521847, 35.322308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036228, 33.770294, 34.996960>,  <29.474676, 33.643913, 34.633045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036228, 33.770294, 34.996960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872412, 33.482487, 35.221306>,  <29.774122, 33.309803, 35.355915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872412, 33.482487, 35.221306>,  <30.036228, 33.770294, 34.996960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872412, 33.482487, 35.221306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889751, -0.450839, 0.071320,
		0.201544, 0.528239, 0.824829,
		-0.409539, -0.719519, 0.560866,
		29.749550, 33.266632, 35.389565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529688, 33.509594, 35.440186>,  <30.036228, 33.770294, 34.996960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529688, 33.509594, 35.440186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270775, 33.210873, 35.379116>,  <30.115427, 33.031639, 35.342472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270775, 33.210873, 35.379116>,  <30.529688, 33.509594, 35.440186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270775, 33.210873, 35.379116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739138, -0.663886, 0.113715,
		-0.186284, -0.039244, 0.981712,
		-0.647282, -0.746804, -0.152678,
		30.076590, 32.986832, 35.333313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659273, 33.095528, 36.023251>,  <30.529688, 33.509594, 35.440186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659273, 33.095528, 36.023251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511648, 32.875626, 35.723503>,  <30.423073, 32.743683, 35.543655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511648, 32.875626, 35.723503>,  <30.659273, 33.095528, 36.023251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511648, 32.875626, 35.723503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681326, -0.708431, 0.184176,
		-0.632131, -0.442594, 0.636020,
		-0.369061, -0.549760, -0.749372,
		30.400930, 32.710697, 35.498692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712828, 32.480808, 36.220928>,  <30.659273, 33.095528, 36.023251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712828, 32.480808, 36.220928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722525, 32.474800, 35.821091>,  <30.728342, 32.471195, 35.581188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722525, 32.474800, 35.821091>,  <30.712828, 32.480808, 36.220928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722525, 32.474800, 35.821091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790522, -0.611777, 0.028363,
		-0.611954, -0.790887, -0.002957,
		0.024241, -0.015020, -0.999593,
		30.729797, 32.470295, 35.521214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062519, 32.325073, 35.853592>,  <30.712828, 32.480808, 36.220928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062519, 32.325073, 35.853592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259558, 32.162548, 35.545761>,  <30.377781, 32.065033, 35.361061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259558, 32.162548, 35.545761>,  <30.062519, 32.325073, 35.853592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259558, 32.162548, 35.545761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136143, -0.837447, 0.529290,
		-0.859544, -0.365499, -0.357205,
		0.492595, -0.406317, -0.769582,
		30.407337, 32.040653, 35.314888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749451, 31.702486, 35.367310>,  <30.062519, 32.325073, 35.853592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749451, 31.702486, 35.367310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148027, 31.687023, 35.397274>,  <30.387173, 31.677746, 35.415253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148027, 31.687023, 35.397274>,  <29.749451, 31.702486, 35.367310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148027, 31.687023, 35.397274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064402, -0.922496, 0.380598,
		0.054393, -0.384067, -0.921702,
		0.996440, -0.038658, 0.074912,
		30.446960, 31.675426, 35.419746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942530, 31.142679, 35.014576>,  <29.749451, 31.702486, 35.367310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942530, 31.142679, 35.014576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178061, 31.214312, 35.329845>,  <30.319380, 31.257290, 35.519005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178061, 31.214312, 35.329845>,  <29.942530, 31.142679, 35.014576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178061, 31.214312, 35.329845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110111, -0.948282, 0.297721,
		0.800722, -0.262093, -0.538657,
		0.588829, 0.179079, 0.788169,
		30.354710, 31.268036, 35.566296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460072, 30.616430, 35.025490>,  <29.942530, 31.142679, 35.014576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460072, 30.616430, 35.025490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405106, 30.733900, 35.403881>,  <30.372126, 30.804382, 35.630917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405106, 30.733900, 35.403881>,  <30.460072, 30.616430, 35.025490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405106, 30.733900, 35.403881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186305, -0.945655, 0.266511,
		0.972835, -0.139618, 0.184658,
		-0.137413, 0.293674, 0.945977,
		30.363882, 30.822002, 35.687675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901382, 30.278532, 35.414825>,  <30.460072, 30.616430, 35.025490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901382, 30.278532, 35.414825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640440, 30.377274, 35.701462>,  <30.483875, 30.436518, 35.873444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640440, 30.377274, 35.701462>,  <30.901382, 30.278532, 35.414825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640440, 30.377274, 35.701462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042267, -0.955851, 0.290796,
		0.756734, 0.159414, 0.633988,
		-0.652355, 0.246852, 0.716587,
		30.444733, 30.451330, 35.916439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172831, 30.038610, 36.153572>,  <30.901382, 30.278532, 35.414825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172831, 30.038610, 36.153572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773230, 30.053431, 36.163574>,  <30.533470, 30.062323, 36.169575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773230, 30.053431, 36.163574>,  <31.172831, 30.038610, 36.153572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773230, 30.053431, 36.163574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026230, -0.938858, 0.343305,
		0.036193, 0.342306, 0.938891,
		-0.999001, 0.037052, 0.025001,
		30.473530, 30.064547, 36.171074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877769, 29.645037, 36.700588>,  <31.172831, 30.038610, 36.153572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877769, 29.645037, 36.700588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575172, 29.628756, 36.439495>,  <30.393614, 29.618986, 36.282841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575172, 29.628756, 36.439495>,  <30.877769, 29.645037, 36.700588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575172, 29.628756, 36.439495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164830, -0.953977, 0.250518,
		-0.632889, 0.297105, 0.714968,
		-0.756494, -0.040702, -0.652733,
		30.348225, 29.616545, 36.243675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791935, 28.904795, 36.937790>,  <30.877769, 29.645037, 36.700588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791935, 28.904795, 36.937790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413803, 28.796545, 37.010578>,  <30.186924, 28.731594, 37.054249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413803, 28.796545, 37.010578>,  <30.791935, 28.904795, 36.937790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413803, 28.796545, 37.010578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314946, 0.902390, -0.294112,
		-0.084610, -0.335342, -0.938289,
		-0.945331, -0.270626, 0.181966,
		30.130203, 28.715357, 37.065166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458874, 28.849531, 36.269299>,  <30.791935, 28.904795, 36.937790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458874, 28.849531, 36.269299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245855, 28.930807, 36.597958>,  <30.118044, 28.979572, 36.795155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245855, 28.930807, 36.597958>,  <30.458874, 28.849531, 36.269299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245855, 28.930807, 36.597958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111054, 0.945591, -0.305820,
		-0.839085, -0.254110, -0.481004,
		-0.532544, 0.203191, 0.821651,
		30.086092, 28.991764, 36.844452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712433, 29.124849, 36.073387>,  <30.458874, 28.849531, 36.269299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712433, 29.124849, 36.073387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902557, 29.248089, 36.403030>,  <30.016632, 29.322033, 36.600815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902557, 29.248089, 36.403030>,  <29.712433, 29.124849, 36.073387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902557, 29.248089, 36.403030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032830, 0.942238, -0.333330,
		-0.879204, 0.131381, 0.457973,
		0.475313, 0.308100, 0.824107,
		30.045151, 29.340519, 36.650261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377699, 29.692108, 36.129635>,  <29.712433, 29.124849, 36.073387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377699, 29.692108, 36.129635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725977, 29.725136, 36.323574>,  <29.934944, 29.744953, 36.439938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725977, 29.725136, 36.323574>,  <29.377699, 29.692108, 36.129635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725977, 29.725136, 36.323574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038963, 0.971129, -0.235353,
		-0.490280, 0.223811, 0.842338,
		0.870694, 0.082569, 0.484845,
		29.987185, 29.749907, 36.469028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314432, 30.311769, 36.611717>,  <29.377699, 29.692108, 36.129635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314432, 30.311769, 36.611717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686953, 30.237728, 36.486233>,  <29.910465, 30.193304, 36.410942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686953, 30.237728, 36.486233>,  <29.314432, 30.311769, 36.611717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686953, 30.237728, 36.486233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087333, 0.949602, -0.301046,
		0.353626, 0.252967, 0.900531,
		0.931301, -0.185104, -0.313712,
		29.966343, 30.182198, 36.392120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758417, 30.736336, 36.953407>,  <29.314432, 30.311769, 36.611717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758417, 30.736336, 36.953407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951464, 30.670206, 36.609371>,  <30.067291, 30.630527, 36.402950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951464, 30.670206, 36.609371>,  <29.758417, 30.736336, 36.953407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951464, 30.670206, 36.609371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080513, 0.986239, -0.144397,
		0.872124, 0.000440, 0.489285,
		0.482616, -0.165326, -0.860087,
		30.096249, 30.620609, 36.351345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299940, 31.287935, 36.896645>,  <29.758417, 30.736336, 36.953407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299940, 31.287935, 36.896645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284536, 31.158691, 36.518414>,  <30.275295, 31.081146, 36.291473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284536, 31.158691, 36.518414>,  <30.299940, 31.287935, 36.896645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284536, 31.158691, 36.518414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079069, 0.942328, -0.325218,
		0.996125, -0.087289, -0.010739,
		-0.038507, -0.323109, -0.945578,
		30.272984, 31.061758, 36.234741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946156, 31.447113, 36.509647>,  <30.299940, 31.287935, 36.896645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946156, 31.447113, 36.509647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620855, 31.450008, 36.276901>,  <30.425674, 31.451746, 36.137253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620855, 31.450008, 36.276901>,  <30.946156, 31.447113, 36.509647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620855, 31.450008, 36.276901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161183, 0.963601, -0.213290,
		0.559144, -0.267246, -0.784817,
		-0.813252, 0.007239, -0.581868,
		30.376881, 31.452181, 36.102341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637363, 31.301025, 36.568039>,  <30.946156, 31.447113, 36.509647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637363, 31.301025, 36.568039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832556, 31.045706, 36.806183>,  <31.949671, 30.892513, 36.949070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832556, 31.045706, 36.806183>,  <31.637363, 31.301025, 36.568039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832556, 31.045706, 36.806183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257945, -0.546162, -0.796977,
		0.833871, 0.542478, -0.101871,
		0.487980, -0.638298, 0.595358,
		31.978951, 30.854216, 36.984791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366028, 31.205296, 36.328598>,  <31.637363, 31.301025, 36.568039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366028, 31.205296, 36.328598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179932, 30.884396, 36.478237>,  <32.068275, 30.691856, 36.568020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179932, 30.884396, 36.478237>,  <32.366028, 31.205296, 36.328598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179932, 30.884396, 36.478237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032706, -0.406755, -0.912951,
		0.884582, -0.436974, 0.162999,
		-0.465237, -0.802249, 0.374100,
		32.040359, 30.643721, 36.590466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690151, 30.557482, 36.059216>,  <32.366028, 31.205296, 36.328598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690151, 30.557482, 36.059216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303150, 30.512175, 36.149639>,  <32.070950, 30.484989, 36.203892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303150, 30.512175, 36.149639>,  <32.690151, 30.557482, 36.059216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303150, 30.512175, 36.149639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176969, -0.335201, -0.925377,
		0.180593, -0.935313, 0.304264,
		-0.967506, -0.113271, 0.226056,
		32.012897, 30.478193, 36.217457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472206, 30.060537, 35.604500>,  <32.690151, 30.557482, 36.059216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472206, 30.060537, 35.604500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133392, 30.233398, 35.728287>,  <31.930103, 30.337114, 35.802559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133392, 30.233398, 35.728287>,  <32.472206, 30.060537, 35.604500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133392, 30.233398, 35.728287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370747, -0.063141, -0.926585,
		-0.380888, -0.899586, 0.213703,
		-0.847037, 0.432154, 0.309469,
		31.879282, 30.363045, 35.821129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777882, 30.559406, 35.226334>,  <32.472206, 30.060537, 35.604500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777882, 30.559406, 35.226334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041981, 30.469021, 34.939831>,  <33.200439, 30.414789, 34.767929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041981, 30.469021, 34.939831>,  <32.777882, 30.559406, 35.226334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041981, 30.469021, 34.939831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635567, -0.340020, 0.693138,
		-0.400166, -0.912867, -0.080879,
		0.660243, -0.225966, -0.716253,
		33.240055, 30.401232, 34.724957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855297, 29.788099, 35.044342>,  <32.777882, 30.559406, 35.226334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855297, 29.788099, 35.044342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165676, 30.037628, 35.006908>,  <33.351902, 30.187346, 34.984447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165676, 30.037628, 35.006908>,  <32.855297, 29.788099, 35.044342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165676, 30.037628, 35.006908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510505, -0.533879, 0.674061,
		0.370532, -0.570807, -0.732724,
		0.775945, 0.623820, -0.093581,
		33.398460, 30.224773, 34.978836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513641, 29.408707, 35.163006>,  <32.855297, 29.788099, 35.044342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513641, 29.408707, 35.163006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628738, 29.788158, 35.215626>,  <33.697796, 30.015829, 35.247196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628738, 29.788158, 35.215626>,  <33.513641, 29.408707, 35.163006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628738, 29.788158, 35.215626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663505, -0.296509, 0.686909,
		0.690629, -0.110367, -0.714739,
		0.287738, 0.948632, 0.131549,
		33.715061, 30.072748, 35.255089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217766, 29.368671, 35.101238>,  <33.513641, 29.408707, 35.163006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217766, 29.368671, 35.101238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119694, 29.701183, 35.300781>,  <34.060852, 29.900690, 35.420509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119694, 29.701183, 35.300781>,  <34.217766, 29.368671, 35.101238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119694, 29.701183, 35.300781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655404, -0.237045, 0.717116,
		0.714376, 0.502777, -0.486705,
		-0.245178, 0.831280, 0.498861,
		34.046139, 29.950567, 35.450439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739704, 29.778297, 35.247288>,  <34.217766, 29.368671, 35.101238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739704, 29.778297, 35.247288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471237, 29.852232, 35.534443>,  <34.310158, 29.896593, 35.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471237, 29.852232, 35.534443>,  <34.739704, 29.778297, 35.247288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471237, 29.852232, 35.534443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673616, -0.252218, 0.694714,
		0.309474, 0.949853, 0.044771,
		-0.671169, 0.184838, 0.717891,
		34.269886, 29.907684, 35.749809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132046, 30.027805, 35.942558>,  <34.739704, 29.778297, 35.247288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132046, 30.027805, 35.942558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761486, 29.902130, 36.025578>,  <34.539150, 29.826725, 36.075390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761486, 29.902130, 36.025578>,  <35.132046, 30.027805, 35.942558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761486, 29.902130, 36.025578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273310, -0.181911, 0.944569,
		-0.259016, 0.931770, 0.254392,
		-0.926397, -0.314186, 0.207545,
		34.483566, 29.807875, 36.087841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869244, 30.327110, 36.012482>,  <35.132046, 30.027805, 35.942558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869244, 30.327110, 36.012482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177063, 30.504349, 36.196423>,  <36.361755, 30.610693, 36.306786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177063, 30.504349, 36.196423>,  <35.869244, 30.327110, 36.012482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177063, 30.504349, 36.196423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584519, -0.198747, -0.786662,
		-0.257174, 0.874165, -0.411944,
		0.769545, 0.443098, 0.459853,
		36.407925, 30.637278, 36.334377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311405, 30.900244, 36.121281>,  <35.869244, 30.327110, 36.012482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311405, 30.900244, 36.121281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995861, 30.691519, 36.251152>,  <34.806534, 30.566284, 36.329075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995861, 30.691519, 36.251152>,  <35.311405, 30.900244, 36.121281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995861, 30.691519, 36.251152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563640, -0.403685, 0.720658,
		-0.244982, 0.751497, 0.612565,
		-0.788856, -0.521815, 0.324679,
		34.759205, 30.534975, 36.348557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386654, 30.997721, 36.776485>,  <35.311405, 30.900244, 36.121281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386654, 30.997721, 36.776485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163204, 30.668325, 36.736881>,  <35.029133, 30.470688, 36.713120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163204, 30.668325, 36.736881>,  <35.386654, 30.997721, 36.776485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163204, 30.668325, 36.736881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523008, -0.442381, 0.728534,
		-0.643739, 0.355196, 0.677817,
		-0.558626, -0.823489, -0.099007,
		34.995617, 30.421278, 36.707180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418243, 30.687809, 37.423687>,  <35.386654, 30.997721, 36.776485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418243, 30.687809, 37.423687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323719, 30.406683, 37.155296>,  <35.267002, 30.238007, 36.994263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323719, 30.406683, 37.155296>,  <35.418243, 30.687809, 37.423687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323719, 30.406683, 37.155296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363479, -0.704337, 0.609748,
		-0.901132, -0.099792, 0.421904,
		-0.236315, -0.702817, -0.670973,
		35.252823, 30.195839, 36.954006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851315, 30.111292, 37.555122>,  <35.418243, 30.687809, 37.423687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851315, 30.111292, 37.555122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486115, 30.049374, 37.706104>,  <35.266994, 30.012222, 37.796696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486115, 30.049374, 37.706104>,  <35.851315, 30.111292, 37.555122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486115, 30.049374, 37.706104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343811, -0.206108, -0.916141,
		0.219612, -0.966208, 0.134955,
		-0.912997, -0.154797, 0.377457,
		35.212215, 30.002935, 37.819340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600647, 29.582317, 37.160564>,  <35.851315, 30.111292, 37.555122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600647, 29.582317, 37.160564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282516, 29.751129, 37.334618>,  <35.091637, 29.852415, 37.439049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282516, 29.751129, 37.334618>,  <35.600647, 29.582317, 37.160564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282516, 29.751129, 37.334618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523299, -0.115702, -0.844258,
		-0.305954, -0.899169, 0.312868,
		-0.795330, 0.422028, 0.435135,
		35.043919, 29.877737, 37.465157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046734, 29.246052, 36.874619>,  <35.600647, 29.582317, 37.160564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046734, 29.246052, 36.874619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919254, 29.598259, 37.014969>,  <34.842766, 29.809584, 37.099178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919254, 29.598259, 37.014969>,  <35.046734, 29.246052, 36.874619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919254, 29.598259, 37.014969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539976, 0.135578, -0.830689,
		-0.779009, -0.454207, 0.432250,
		-0.318701, 0.880520, 0.350878,
		34.823643, 29.862415, 37.120232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234249, 29.361937, 36.787159>,  <35.046734, 29.246052, 36.874619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234249, 29.361937, 36.787159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414806, 29.717451, 36.818916>,  <34.523140, 29.930759, 36.837971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414806, 29.717451, 36.818916>,  <34.234249, 29.361937, 36.787159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414806, 29.717451, 36.818916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580205, 0.359933, -0.730623,
		-0.677944, 0.283734, 0.678150,
		0.451391, 0.888788, 0.079390,
		34.550224, 29.984087, 36.842731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710255, 29.926332, 36.775780>,  <34.234249, 29.361937, 36.787159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710255, 29.926332, 36.775780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047226, 30.077618, 36.622272>,  <34.249409, 30.168388, 36.530170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047226, 30.077618, 36.622272>,  <33.710255, 29.926332, 36.775780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047226, 30.077618, 36.622272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522947, 0.402346, -0.751428,
		-0.129791, 0.833711, 0.536731,
		0.842425, 0.378211, -0.383766,
		34.299953, 30.191080, 36.507141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539078, 30.538404, 36.497440>,  <33.710255, 29.926332, 36.775780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539078, 30.538404, 36.497440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858669, 30.436100, 36.279739>,  <34.050426, 30.374718, 36.149117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858669, 30.436100, 36.279739>,  <33.539078, 30.538404, 36.497440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858669, 30.436100, 36.279739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503106, 0.211476, -0.837951,
		0.329413, 0.943326, 0.040290,
		0.798982, -0.255761, -0.544256,
		34.098362, 30.359371, 36.116463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845852, 31.074350, 36.104794>,  <33.539078, 30.538404, 36.497440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845852, 31.074350, 36.104794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947922, 30.755337, 35.886135>,  <34.009163, 30.563929, 35.754940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947922, 30.755337, 35.886135>,  <33.845852, 31.074350, 36.104794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947922, 30.755337, 35.886135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534811, 0.354587, -0.766971,
		0.805520, 0.488066, -0.336048,
		0.255174, -0.797533, -0.546650,
		34.024475, 30.516077, 35.722141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082115, 31.260635, 35.517555>,  <33.845852, 31.074350, 36.104794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082115, 31.260635, 35.517555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957630, 30.889671, 35.434551>,  <33.882938, 30.667093, 35.384750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957630, 30.889671, 35.434551>,  <34.082115, 31.260635, 35.517555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957630, 30.889671, 35.434551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315487, 0.306788, -0.897969,
		0.896445, -0.213996, -0.388062,
		-0.311215, -0.927409, -0.207505,
		33.864265, 30.611448, 35.372299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350437, 31.171408, 34.822643>,  <34.082115, 31.260635, 35.517555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350437, 31.171408, 34.822643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101627, 30.859379, 34.849689>,  <33.952343, 30.672161, 34.865917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101627, 30.859379, 34.849689>,  <34.350437, 31.171408, 34.822643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101627, 30.859379, 34.849689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384514, 0.229093, -0.894240,
		0.682081, -0.582239, -0.442450,
		-0.622024, -0.780073, 0.067620,
		33.915020, 30.625357, 34.869976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427677, 30.634451, 34.260887>,  <34.350437, 31.171408, 34.822643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427677, 30.634451, 34.260887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051205, 30.641706, 34.395859>,  <33.825321, 30.646059, 34.476841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051205, 30.641706, 34.395859>,  <34.427677, 30.634451, 34.260887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051205, 30.641706, 34.395859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334823, 0.084640, -0.938472,
		-0.045584, -0.996246, -0.073588,
		-0.941178, 0.018140, 0.337425,
		33.768852, 30.647148, 34.497086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027332, 30.169230, 33.881653>,  <34.427677, 30.634451, 34.260887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027332, 30.169230, 33.881653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805683, 30.477179, 34.008301>,  <33.672695, 30.661949, 34.084290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805683, 30.477179, 34.008301>,  <34.027332, 30.169230, 33.881653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805683, 30.477179, 34.008301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324765, 0.150272, -0.933780,
		-0.766471, -0.620252, 0.166759,
		-0.554120, 0.769874, 0.316616,
		33.639446, 30.708141, 34.103287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391811, 30.114031, 33.593033>,  <34.027332, 30.169230, 33.881653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391811, 30.114031, 33.593033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417938, 30.507359, 33.660938>,  <33.433613, 30.743355, 33.701683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417938, 30.507359, 33.660938>,  <33.391811, 30.114031, 33.593033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417938, 30.507359, 33.660938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186300, 0.179153, -0.966021,
		-0.980319, 0.031469, 0.194894,
		0.065316, 0.983318, 0.169764,
		33.437534, 30.802355, 33.711868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840813, 30.365585, 33.164391>,  <33.391811, 30.114031, 33.593033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840813, 30.365585, 33.164391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090504, 30.661629, 33.264454>,  <33.240318, 30.839254, 33.324493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090504, 30.661629, 33.264454>,  <32.840813, 30.365585, 33.164391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090504, 30.661629, 33.264454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267830, 0.503538, -0.821411,
		-0.733898, 0.445747, 0.512546,
		0.624228, 0.740107, 0.250161,
		33.277771, 30.883661, 33.339500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457695, 30.996683, 33.200352>,  <32.840813, 30.365585, 33.164391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457695, 30.996683, 33.200352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831734, 31.117064, 33.125488>,  <33.056156, 31.189291, 33.080570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831734, 31.117064, 33.125488>,  <32.457695, 30.996683, 33.200352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831734, 31.117064, 33.125488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317297, 0.475677, -0.820399,
		-0.157870, 0.826535, 0.540293,
		0.935093, 0.300950, -0.187162,
		33.112263, 31.207348, 33.069340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443596, 31.709925, 32.957794>,  <32.457695, 30.996683, 33.200352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443596, 31.709925, 32.957794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808384, 31.598196, 32.837597>,  <33.027256, 31.531158, 32.765476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808384, 31.598196, 32.837597>,  <32.443596, 31.709925, 32.957794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808384, 31.598196, 32.837597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034363, 0.677865, -0.734383,
		0.408825, 0.680058, 0.608592,
		0.911966, -0.279321, -0.300497,
		33.081974, 31.514400, 32.747448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913185, 32.254475, 32.856075>,  <32.443596, 31.709925, 32.957794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913185, 32.254475, 32.856075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103798, 31.984243, 32.631039>,  <33.218166, 31.822105, 32.496017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103798, 31.984243, 32.631039>,  <32.913185, 32.254475, 32.856075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103798, 31.984243, 32.631039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051144, 0.617537, -0.784877,
		0.877667, 0.402795, 0.259726,
		0.476535, -0.675577, -0.562592,
		33.246758, 31.781570, 32.462261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373772, 32.667057, 32.465786>,  <32.913185, 32.254475, 32.856075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373772, 32.667057, 32.465786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332741, 32.317024, 32.276596>,  <33.308125, 32.107002, 32.163082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332741, 32.317024, 32.276596>,  <33.373772, 32.667057, 32.465786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332741, 32.317024, 32.276596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029149, 0.472632, -0.880778,
		0.994298, -0.104133, -0.022973,
		-0.102575, -0.875086, -0.472972,
		33.301968, 32.054497, 32.134705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817360, 32.753662, 31.972334>,  <33.373772, 32.667057, 32.465786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817360, 32.753662, 31.972334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549664, 32.472782, 31.875147>,  <33.389046, 32.304253, 31.816835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549664, 32.472782, 31.875147>,  <33.817360, 32.753662, 31.972334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549664, 32.472782, 31.875147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188211, 0.476518, -0.858783,
		0.718818, -0.529001, -0.451065,
		-0.669237, -0.702203, -0.242965,
		33.348892, 32.262119, 31.802258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922043, 32.523315, 31.242580>,  <33.817360, 32.753662, 31.972334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922043, 32.523315, 31.242580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536835, 32.423779, 31.283884>,  <33.305710, 32.364056, 31.308666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536835, 32.423779, 31.283884>,  <33.922043, 32.523315, 31.242580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536835, 32.423779, 31.283884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187134, 0.342115, -0.920836,
		0.193814, -0.906111, -0.376032,
		-0.963025, -0.248839, 0.103258,
		33.247929, 32.349129, 31.314861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707588, 32.507515, 30.608631>,  <33.922043, 32.523315, 31.242580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707588, 32.507515, 30.608631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358486, 32.501579, 30.803804>,  <33.149025, 32.498020, 30.920908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358486, 32.501579, 30.803804>,  <33.707588, 32.507515, 30.608631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358486, 32.501579, 30.803804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442818, 0.444738, -0.778537,
		-0.205452, -0.895538, -0.394718,
		-0.872755, -0.014836, 0.487932,
		33.096661, 32.497128, 30.950184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315659, 32.215260, 30.179623>,  <33.707588, 32.507515, 30.608631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315659, 32.215260, 30.179623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066025, 32.414368, 30.420538>,  <32.916245, 32.533833, 30.565086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066025, 32.414368, 30.420538>,  <33.315659, 32.215260, 30.179623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066025, 32.414368, 30.420538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408249, 0.449510, -0.794527,
		-0.666226, -0.741731, -0.077317,
		-0.624080, 0.497770, 0.602286,
		32.878799, 32.563698, 30.601223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660263, 32.388275, 29.744427>,  <33.315659, 32.215260, 30.179623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660263, 32.388275, 29.744427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600914, 32.638943, 30.050438>,  <32.565304, 32.789345, 30.234045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600914, 32.638943, 30.050438>,  <32.660263, 32.388275, 29.744427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600914, 32.638943, 30.050438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490678, 0.625000, -0.607133,
		-0.858615, -0.465466, 0.214758,
		-0.148376, 0.626671, 0.765029,
		32.556400, 32.826942, 30.279947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910320, 32.631489, 29.681602>,  <32.660263, 32.388275, 29.744427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910320, 32.631489, 29.681602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152225, 32.884357, 29.875351>,  <32.297367, 33.036079, 29.991600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152225, 32.884357, 29.875351>,  <31.910320, 32.631489, 29.681602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152225, 32.884357, 29.875351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313197, 0.747980, -0.585178,
		-0.732236, 0.202191, 0.650346,
		0.604763, 0.632175, 0.484372,
		32.333656, 33.074009, 30.020662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503710, 33.218742, 29.932364>,  <31.910320, 32.631489, 29.681602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503710, 33.218742, 29.932364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875257, 33.361015, 29.891001>,  <32.098186, 33.446377, 29.866182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875257, 33.361015, 29.891001>,  <31.503710, 33.218742, 29.932364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875257, 33.361015, 29.891001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353844, 0.769514, -0.531642,
		-0.109522, 0.530416, 0.840633,
		0.928870, 0.355679, -0.103406,
		32.153919, 33.467720, 29.859980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369400, 33.896126, 29.952448>,  <31.503710, 33.218742, 29.932364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369400, 33.896126, 29.952448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740532, 33.893803, 29.803265>,  <31.963211, 33.892406, 29.713755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740532, 33.893803, 29.803265>,  <31.369400, 33.896126, 29.952448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740532, 33.893803, 29.803265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249397, 0.733854, -0.631869,
		0.277370, 0.679282, 0.679442,
		0.927829, -0.005810, -0.372960,
		32.018879, 33.892059, 29.691376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451876, 34.590237, 30.000734>,  <31.369400, 33.896126, 29.952448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451876, 34.590237, 30.000734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708294, 34.411861, 29.750872>,  <31.862144, 34.304836, 29.600954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708294, 34.411861, 29.750872>,  <31.451876, 34.590237, 30.000734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708294, 34.411861, 29.750872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199776, 0.688878, -0.696805,
		0.741046, 0.571475, 0.352514,
		0.641046, -0.445941, -0.624657,
		31.900608, 34.278080, 29.563475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981033, 35.066769, 29.755264>,  <31.451876, 34.590237, 30.000734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981033, 35.066769, 29.755264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961536, 34.785881, 29.471148>,  <31.949839, 34.617348, 29.300678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961536, 34.785881, 29.471148>,  <31.981033, 35.066769, 29.755264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961536, 34.785881, 29.471148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299396, 0.688708, -0.660336,
		0.952883, 0.180473, -0.243810,
		-0.048741, -0.702219, -0.710291,
		31.946915, 34.575214, 29.258060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129688, 35.401146, 29.176384>,  <31.981033, 35.066769, 29.755264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129688, 35.401146, 29.176384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973104, 35.071289, 29.013058>,  <31.879154, 34.873375, 28.915062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973104, 35.071289, 29.013058>,  <32.129688, 35.401146, 29.176384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973104, 35.071289, 29.013058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454093, 0.559052, -0.693730,
		0.800351, -0.086152, -0.593310,
		-0.391457, -0.824645, -0.408317,
		31.855667, 34.823895, 28.890562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281296, 35.362518, 28.366268>,  <32.129688, 35.401146, 29.176384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281296, 35.362518, 28.366268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964163, 35.127018, 28.429245>,  <31.773882, 34.985718, 28.467031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964163, 35.127018, 28.429245>,  <32.281296, 35.362518, 28.366268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964163, 35.127018, 28.429245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484317, 0.451860, -0.749173,
		0.369931, -0.670224, -0.643390,
		-0.792836, -0.588747, 0.157444,
		31.726313, 34.950394, 28.476477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915129, 35.238159, 27.729671>,  <32.281296, 35.362518, 28.366268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915129, 35.238159, 27.729671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618355, 35.172939, 27.989809>,  <31.440290, 35.133808, 28.145891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618355, 35.172939, 27.989809>,  <31.915129, 35.238159, 27.729671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618355, 35.172939, 27.989809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605927, 0.578311, -0.546268,
		-0.287032, -0.799356, -0.527866,
		-0.741934, -0.163052, 0.650345,
		31.395775, 35.124023, 28.184912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287636, 35.157139, 27.306700>,  <31.915129, 35.238159, 27.729671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287636, 35.157139, 27.306700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149990, 35.229462, 27.675241>,  <31.067402, 35.272854, 27.896366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149990, 35.229462, 27.675241>,  <31.287636, 35.157139, 27.306700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149990, 35.229462, 27.675241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820507, 0.419142, -0.388701,
		-0.456458, -0.889735, 0.004119,
		-0.344115, 0.180805, 0.921355,
		31.046755, 35.283703, 27.951649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561420, 34.944614, 27.292400>,  <31.287636, 35.157139, 27.306700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561420, 34.944614, 27.292400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613827, 35.219841, 27.577888>,  <30.645271, 35.384979, 27.749182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613827, 35.219841, 27.577888>,  <30.561420, 34.944614, 27.292400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613827, 35.219841, 27.577888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779099, 0.516655, -0.355067,
		-0.613057, -0.509539, 0.603764,
		0.131017, 0.688068, 0.713720,
		30.653131, 35.426262, 27.792006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896042, 35.031700, 27.494064>,  <30.561420, 34.944614, 27.292400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896042, 35.031700, 27.494064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087395, 35.367764, 27.596262>,  <30.202208, 35.569401, 27.657581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087395, 35.367764, 27.596262>,  <29.896042, 35.031700, 27.494064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087395, 35.367764, 27.596262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750095, 0.542233, -0.378603,
		-0.456625, -0.010527, 0.889597,
		0.478383, 0.840162, 0.255494,
		30.230909, 35.619812, 27.672911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389879, 35.487118, 27.676685>,  <29.896042, 35.031700, 27.494064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389879, 35.487118, 27.676685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702480, 35.736359, 27.664003>,  <29.890041, 35.885902, 27.656395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702480, 35.736359, 27.664003>,  <29.389879, 35.487118, 27.676685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702480, 35.736359, 27.664003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589073, 0.720177, -0.366523,
		-0.205547, 0.305114, 0.929869,
		0.781501, 0.623098, -0.031704,
		29.936930, 35.923286, 27.654491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357681, 36.019581, 28.259750>,  <29.389879, 35.487118, 27.676685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357681, 36.019581, 28.259750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551422, 36.180878, 27.949190>,  <29.667665, 36.277657, 27.762854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551422, 36.180878, 27.949190>,  <29.357681, 36.019581, 28.259750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551422, 36.180878, 27.949190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709006, 0.700842, -0.078306,
		0.512557, 0.588399, 0.625357,
		0.484351, 0.403246, -0.776400,
		29.696728, 36.301853, 27.716270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319830, 36.747707, 28.430912>,  <29.357681, 36.019581, 28.259750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319830, 36.747707, 28.430912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410910, 36.738121, 28.041538>,  <29.465557, 36.732368, 27.807913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410910, 36.738121, 28.041538>,  <29.319830, 36.747707, 28.430912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410910, 36.738121, 28.041538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481705, 0.866027, -0.134003,
		0.846234, 0.499422, 0.185649,
		0.227701, -0.023970, -0.973436,
		29.479219, 36.730930, 27.749508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455427, 37.418598, 28.334908>,  <29.319830, 36.747707, 28.430912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455427, 37.418598, 28.334908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403341, 37.248947, 27.976431>,  <29.372089, 37.147156, 27.761345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403341, 37.248947, 27.976431>,  <29.455427, 37.418598, 28.334908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403341, 37.248947, 27.976431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289978, 0.880655, -0.374645,
		0.948133, 0.211090, -0.237664,
		-0.130216, -0.424131, -0.896190,
		29.364277, 37.121708, 27.707575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826099, 37.787880, 27.884336>,  <29.455427, 37.418598, 28.334908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826099, 37.787880, 27.884336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554659, 37.606606, 27.653122>,  <29.391794, 37.497841, 27.514393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554659, 37.606606, 27.653122>,  <29.826099, 37.787880, 27.884336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554659, 37.606606, 27.653122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212277, 0.874393, -0.436321,
		0.703164, -0.173384, -0.689564,
		-0.678601, -0.453184, -0.578036,
		29.351078, 37.470650, 27.479712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986242, 38.117004, 27.309057>,  <29.826099, 37.787880, 27.884336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986242, 38.117004, 27.309057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615894, 37.967213, 27.288933>,  <29.393686, 37.877338, 27.276859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615894, 37.967213, 27.288933>,  <29.986242, 38.117004, 27.309057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615894, 37.967213, 27.288933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328785, 0.864089, -0.381118,
		0.186193, -0.336325, -0.923156,
		-0.925869, -0.374481, -0.050309,
		29.338133, 37.854870, 27.273840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673965, 38.471806, 26.804258>,  <29.986242, 38.117004, 27.309057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673965, 38.471806, 26.804258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364508, 38.312283, 27.001204>,  <29.178833, 38.216568, 27.119371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364508, 38.312283, 27.001204>,  <29.673965, 38.471806, 26.804258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364508, 38.312283, 27.001204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410357, 0.907449, 0.090237,
		-0.482783, -0.132234, -0.865699,
		-0.773645, -0.398811, 0.492365,
		29.132414, 38.192638, 27.148912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214743, 38.948299, 26.533066>,  <29.673965, 38.471806, 26.804258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214743, 38.948299, 26.533066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051197, 38.794933, 26.864323>,  <28.953070, 38.702915, 27.063078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051197, 38.794933, 26.864323>,  <29.214743, 38.948299, 26.533066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051197, 38.794933, 26.864323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375352, 0.897803, 0.230348,
		-0.831829, -0.216664, -0.510996,
		-0.408866, -0.383414, 0.828144,
		28.928537, 38.679909, 27.112766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560753, 39.162254, 26.466120>,  <29.214743, 38.948299, 26.533066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560753, 39.162254, 26.466120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612766, 39.087093, 26.855537>,  <28.643974, 39.041996, 27.089188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612766, 39.087093, 26.855537>,  <28.560753, 39.162254, 26.466120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612766, 39.087093, 26.855537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301762, 0.927800, 0.219380,
		-0.944474, -0.322304, 0.063942,
		0.130032, -0.187904, 0.973542,
		28.651775, 39.030724, 27.147600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893953, 39.272491, 26.884113>,  <28.560753, 39.162254, 26.466120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893953, 39.272491, 26.884113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197588, 39.291199, 27.143835>,  <28.379768, 39.302425, 27.299669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197588, 39.291199, 27.143835>,  <27.893953, 39.272491, 26.884113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197588, 39.291199, 27.143835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324627, 0.891750, 0.315277,
		-0.564272, -0.450105, 0.692100,
		0.759088, 0.046772, 0.649306,
		28.425314, 39.305229, 27.338627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601574, 39.638443, 27.441933>,  <27.893953, 39.272491, 26.884113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601574, 39.638443, 27.441933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996834, 39.659225, 27.499704>,  <28.233990, 39.671696, 27.534369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996834, 39.659225, 27.499704>,  <27.601574, 39.638443, 27.441933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996834, 39.659225, 27.499704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104133, 0.918214, 0.382150,
		-0.112763, -0.392662, 0.912744,
		0.988150, 0.051954, 0.144430,
		28.293280, 39.674812, 27.543034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664726, 39.830353, 28.150841>,  <27.601574, 39.638443, 27.441933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664726, 39.830353, 28.150841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020344, 39.926464, 27.994961>,  <28.233715, 39.984131, 27.901434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020344, 39.926464, 27.994961>,  <27.664726, 39.830353, 28.150841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020344, 39.926464, 27.994961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086975, 0.924347, 0.371509,
		0.449483, -0.296394, 0.842684,
		0.889045, 0.240279, -0.389699,
		28.287058, 39.998547, 27.878052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042776, 40.036011, 28.667591>,  <27.664726, 39.830353, 28.150841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042776, 40.036011, 28.667591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186296, 40.194408, 28.329491>,  <28.272408, 40.289448, 28.126631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186296, 40.194408, 28.329491>,  <28.042776, 40.036011, 28.667591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186296, 40.194408, 28.329491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154981, 0.918253, 0.364406,
		0.920454, 0.000244, 0.390851,
		0.358811, 0.395993, -0.845248,
		28.293936, 40.313206, 28.075914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347525, 40.624001, 28.924219>,  <28.042776, 40.036011, 28.667591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347525, 40.624001, 28.924219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279987, 40.690472, 28.535606>,  <28.239466, 40.730354, 28.302439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279987, 40.690472, 28.535606>,  <28.347525, 40.624001, 28.924219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279987, 40.690472, 28.535606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471362, 0.852051, 0.227655,
		0.865627, 0.496382, -0.065535,
		-0.168843, 0.166173, -0.971534,
		28.229334, 40.740322, 28.244146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403511, 41.386745, 28.765324>,  <28.347525, 40.624001, 28.924219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403511, 41.386745, 28.765324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169443, 41.265606, 28.464428>,  <28.029003, 41.192924, 28.283892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169443, 41.265606, 28.464428>,  <28.403511, 41.386745, 28.765324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169443, 41.265606, 28.464428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481787, 0.876009, 0.022111,
		0.652270, 0.375357, -0.658522,
		-0.585171, -0.302845, -0.752237,
		27.993893, 41.174751, 28.238756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302116, 42.064938, 28.455091>,  <28.403511, 41.386745, 28.765324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302116, 42.064938, 28.455091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034967, 41.816078, 28.291689>,  <27.874678, 41.666763, 28.193647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034967, 41.816078, 28.291689>,  <28.302116, 42.064938, 28.455091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034967, 41.816078, 28.291689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704095, 0.706043, 0.075850,
		0.241235, 0.338286, -0.909598,
		-0.667874, -0.622146, -0.408508,
		27.834604, 41.629433, 28.169136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032709, 42.309475, 27.717491>,  <28.302116, 42.064938, 28.455091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032709, 42.309475, 27.717491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761332, 42.064678, 27.880062>,  <27.598505, 41.917801, 27.977606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761332, 42.064678, 27.880062>,  <28.032709, 42.309475, 27.717491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761332, 42.064678, 27.880062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728364, 0.632561, -0.263349,
		-0.095925, -0.474695, -0.874908,
		-0.678443, -0.611989, 0.406429,
		27.557798, 41.881081, 28.001991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497107, 42.363541, 27.312639>,  <28.032709, 42.309475, 27.717491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497107, 42.363541, 27.312639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326162, 42.220440, 27.644754>,  <27.223595, 42.134579, 27.844023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326162, 42.220440, 27.644754>,  <27.497107, 42.363541, 27.312639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326162, 42.220440, 27.644754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754197, 0.647504, -0.109201,
		-0.498547, -0.672867, -0.546535,
		-0.427361, -0.357754, 0.830286,
		27.197954, 42.113113, 27.893841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818180, 42.337490, 27.102728>,  <27.497107, 42.363541, 27.312639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818180, 42.337490, 27.102728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795918, 42.315395, 27.501497>,  <26.782560, 42.302139, 27.740759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795918, 42.315395, 27.501497>,  <26.818180, 42.337490, 27.102728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795918, 42.315395, 27.501497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782123, 0.623057, -0.009143,
		-0.620634, -0.780224, -0.077874,
		-0.055654, -0.055232, 0.996921,
		26.779221, 42.298824, 27.800573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178759, 42.183189, 27.291370>,  <26.818180, 42.337490, 27.102728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178759, 42.183189, 27.291370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334593, 42.383049, 27.600840>,  <26.428093, 42.502964, 27.786522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334593, 42.383049, 27.600840>,  <26.178759, 42.183189, 27.291370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334593, 42.383049, 27.600840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626578, 0.759466, -0.174960,
		-0.674999, -0.416605, 0.608947,
		0.389585, 0.499651, 0.773675,
		26.451468, 42.532944, 27.832943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667244, 42.448734, 27.746004>,  <26.178759, 42.183189, 27.291370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667244, 42.448734, 27.746004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975033, 42.703770, 27.760935>,  <26.159706, 42.856792, 27.769894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975033, 42.703770, 27.760935>,  <25.667244, 42.448734, 27.746004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975033, 42.703770, 27.760935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584117, 0.726166, -0.362617,
		-0.258308, 0.257218, 0.931190,
		0.769470, 0.637591, 0.037329,
		26.205873, 42.895046, 27.772133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930309, 42.436619, 28.486982>,  <25.667244, 42.448734, 27.746004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930309, 42.436619, 28.486982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717487, 42.512177, 28.817131>,  <25.589794, 42.557510, 29.015221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717487, 42.512177, 28.817131>,  <25.930309, 42.436619, 28.486982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717487, 42.512177, 28.817131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785057, 0.255111, -0.564451,
		-0.317184, -0.948281, 0.012563,
		-0.532053, 0.188897, 0.825371,
		25.557871, 42.568844, 29.064743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547806, 43.123070, 28.700876>,  <25.930309, 42.436619, 28.486982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547806, 43.123070, 28.700876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424425, 43.400723, 28.961040>,  <25.350397, 43.567314, 29.117140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424425, 43.400723, 28.961040>,  <25.547806, 43.123070, 28.700876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424425, 43.400723, 28.961040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710982, 0.286013, -0.642418,
		-0.631951, -0.660584, 0.405298,
		-0.308451, 0.694136, 0.650410,
		25.331890, 43.608963, 29.156164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.795231, 42.974945, 28.830324>,  <25.547806, 43.123070, 28.700876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.795231, 42.974945, 28.830324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918055, 43.352272, 28.880709>,  <24.991749, 43.578667, 28.910938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918055, 43.352272, 28.880709>,  <24.795231, 42.974945, 28.830324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918055, 43.352272, 28.880709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652764, 0.305072, -0.693419,
		-0.692541, 0.130699, 0.709440,
		0.307059, 0.943318, 0.125960,
		25.010172, 43.635269, 28.918497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.196491, 43.319885, 28.811056>,  <24.795231, 42.974945, 28.830324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.196491, 43.319885, 28.811056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495741, 43.577435, 28.746891>,  <24.675291, 43.731964, 28.708391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495741, 43.577435, 28.746891>,  <24.196491, 43.319885, 28.811056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.495741, 43.577435, 28.746891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540161, 0.450526, -0.710811,
		-0.385405, 0.618424, 0.684847,
		0.748124, 0.643877, -0.160414,
		24.720179, 43.770599, 28.698767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.030979, 43.922699, 29.010876>,  <24.196491, 43.319885, 28.811056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.030979, 43.922699, 29.010876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298388, 43.951584, 28.714804>,  <24.458832, 43.968914, 28.537161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298388, 43.951584, 28.714804>,  <24.030979, 43.922699, 29.010876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298388, 43.951584, 28.714804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612248, 0.618434, -0.492638,
		0.422178, 0.782512, 0.457647,
		0.668520, 0.072213, -0.740180,
		24.498943, 43.973248, 28.492750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.111744, 44.631618, 28.940304>,  <24.030979, 43.922699, 29.010876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.111744, 44.631618, 28.940304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188171, 44.405548, 28.619289>,  <24.234028, 44.269905, 28.426680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188171, 44.405548, 28.619289>,  <24.111744, 44.631618, 28.940304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188171, 44.405548, 28.619289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613614, 0.569379, -0.547070,
		0.766140, 0.596976, -0.238010,
		0.191069, -0.565179, -0.802537,
		24.245493, 44.235996, 28.378529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.627680, 44.943356, 29.369936>,  <24.111744, 44.631618, 28.940304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.627680, 44.943356, 29.369936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622482, 45.047939, 29.755987>,  <24.619364, 45.110691, 29.987617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622482, 45.047939, 29.755987>,  <24.627680, 44.943356, 29.369936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622482, 45.047939, 29.755987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605146, 0.770434, -0.200572,
		-0.796008, 0.581436, -0.168233,
		-0.012992, 0.261463, 0.965126,
		24.618584, 45.126377, 30.045525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413275, 44.839859, 29.290934>,  <24.627680, 44.943356, 29.369936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413275, 44.839859, 29.290934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244390, 44.492870, 29.185690>,  <25.143061, 44.284676, 29.122543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244390, 44.492870, 29.185690>,  <25.413275, 44.839859, 29.290934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244390, 44.492870, 29.185690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354337, -0.425088, 0.832914,
		-0.834376, 0.258435, 0.486855,
		-0.422210, -0.867474, -0.263110,
		25.117727, 44.232628, 29.106756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.968534, 44.605896, 29.944408>,  <25.413275, 44.839859, 29.290934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.968534, 44.605896, 29.944408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084757, 44.304913, 29.707973>,  <25.154490, 44.124321, 29.566113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084757, 44.304913, 29.707973>,  <24.968534, 44.605896, 29.944408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084757, 44.304913, 29.707973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470642, -0.425464, 0.772966,
		-0.833111, -0.502780, 0.230518,
		0.290555, -0.752458, -0.591088,
		25.171923, 44.079174, 29.530647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743610, 43.996265, 30.208124>,  <24.968534, 44.605896, 29.944408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743610, 43.996265, 30.208124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054228, 43.876633, 29.986303>,  <25.240599, 43.804852, 29.853210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054228, 43.876633, 29.986303>,  <24.743610, 43.996265, 30.208124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.054228, 43.876633, 29.986303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366961, -0.500780, 0.783938,
		-0.512181, -0.812258, -0.279119,
		0.776538, -0.299092, -0.554557,
		25.287191, 43.786907, 29.819937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753073, 43.271049, 30.214359>,  <24.743610, 43.996265, 30.208124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753073, 43.271049, 30.214359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122845, 43.374180, 30.101965>,  <25.344707, 43.436058, 30.034529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122845, 43.374180, 30.101965>,  <24.753073, 43.271049, 30.214359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122845, 43.374180, 30.101965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380754, -0.582793, 0.717899,
		0.021337, -0.770634, -0.636920,
		0.924430, 0.257828, -0.280987,
		25.400173, 43.451527, 30.017670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118763, 42.684280, 30.334017>,  <24.753073, 43.271049, 30.214359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118763, 42.684280, 30.334017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409979, 42.958115, 30.319578>,  <25.584709, 43.122414, 30.310915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409979, 42.958115, 30.319578>,  <25.118763, 42.684280, 30.334017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409979, 42.958115, 30.319578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601188, -0.612274, 0.513511,
		0.329441, -0.395557, -0.857323,
		0.728040, 0.684584, -0.036096,
		25.628391, 43.163490, 30.308750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687902, 42.445999, 29.999044>,  <25.118763, 42.684280, 30.334017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687902, 42.445999, 29.999044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853504, 42.718548, 30.240482>,  <25.952866, 42.882076, 30.385345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853504, 42.718548, 30.240482>,  <25.687902, 42.445999, 29.999044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853504, 42.718548, 30.240482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737232, -0.639936, 0.216729,
		0.533937, 0.355264, -0.767267,
		0.414005, 0.681373, 0.603597,
		25.977705, 42.922958, 30.421562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308207, 42.143299, 30.102764>,  <25.687902, 42.445999, 29.999044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308207, 42.143299, 30.102764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316778, 42.459736, 30.347294>,  <26.321920, 42.649597, 30.494013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316778, 42.459736, 30.347294>,  <26.308207, 42.143299, 30.102764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316778, 42.459736, 30.347294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721547, -0.435489, 0.538256,
		0.692034, 0.429567, -0.580139,
		0.021427, 0.791089, 0.611326,
		26.323206, 42.697063, 30.530691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971601, 42.355862, 30.174608>,  <26.308207, 42.143299, 30.102764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971601, 42.355862, 30.174608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777521, 42.475533, 30.503258>,  <26.661072, 42.547337, 30.700447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777521, 42.475533, 30.503258>,  <26.971601, 42.355862, 30.174608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777521, 42.475533, 30.503258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762348, -0.315470, 0.565070,
		0.428256, 0.900539, -0.075012,
		-0.485203, 0.299180, 0.821626,
		26.631960, 42.565285, 30.749746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504812, 42.592384, 30.535376>,  <26.971601, 42.355862, 30.174608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504812, 42.592384, 30.535376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223326, 42.556938, 30.817348>,  <27.054434, 42.535671, 30.986532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223326, 42.556938, 30.817348>,  <27.504812, 42.592384, 30.535376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223326, 42.556938, 30.817348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699955, -0.256617, 0.666491,
		0.121837, 0.962442, 0.242612,
		-0.703717, -0.088615, 0.704932,
		27.012211, 42.530354, 31.028828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790928, 42.929001, 31.078548>,  <27.504812, 42.592384, 30.535376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790928, 42.929001, 31.078548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499014, 42.701767, 31.230700>,  <27.323866, 42.565426, 31.321991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499014, 42.701767, 31.230700>,  <27.790928, 42.929001, 31.078548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499014, 42.701767, 31.230700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607293, -0.283103, 0.742326,
		-0.314021, 0.772740, 0.551601,
		-0.729785, -0.568089, 0.380380,
		27.280079, 42.531342, 31.344814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934366, 42.979961, 31.886587>,  <27.790928, 42.929001, 31.078548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934366, 42.979961, 31.886587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671684, 42.678455, 31.877043>,  <27.514074, 42.497551, 31.871317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671684, 42.678455, 31.877043>,  <27.934366, 42.979961, 31.886587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671684, 42.678455, 31.877043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508289, -0.465768, 0.724364,
		-0.557116, 0.463567, 0.689005,
		-0.656707, -0.753768, -0.023861,
		27.474672, 42.452324, 31.869884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728815, 42.780701, 32.672340>,  <27.934366, 42.979961, 31.886587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728815, 42.780701, 32.672340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679474, 42.494953, 32.396816>,  <27.649870, 42.323505, 32.231503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679474, 42.494953, 32.396816>,  <27.728815, 42.780701, 32.672340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679474, 42.494953, 32.396816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493100, -0.646483, 0.582161,
		-0.861183, -0.267844, 0.431999,
		-0.123352, -0.714366, -0.688814,
		27.642467, 42.280643, 32.190170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656757, 42.193336, 33.079693>,  <27.728815, 42.780701, 32.672340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656757, 42.193336, 33.079693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720530, 42.007717, 32.731155>,  <27.758793, 41.896347, 32.522034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720530, 42.007717, 32.731155>,  <27.656757, 42.193336, 33.079693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720530, 42.007717, 32.731155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403981, -0.774680, 0.486488,
		-0.900767, -0.429568, 0.063958,
		0.159432, -0.464050, -0.871343,
		27.768360, 41.868504, 32.469753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373697, 41.564800, 33.112545>,  <27.656757, 42.193336, 33.079693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373697, 41.564800, 33.112545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665340, 41.559532, 32.838837>,  <27.840326, 41.556370, 32.674610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665340, 41.559532, 32.838837>,  <27.373697, 41.564800, 33.112545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665340, 41.559532, 32.838837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505773, -0.663206, 0.551681,
		-0.461081, -0.748321, -0.476885,
		0.729107, -0.013174, -0.684272,
		27.884073, 41.555580, 32.633556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633591, 40.874393, 33.109734>,  <27.373697, 41.564800, 33.112545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633591, 40.874393, 33.109734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914898, 41.061676, 32.895744>,  <28.083681, 41.174046, 32.767349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914898, 41.061676, 32.895744>,  <27.633591, 40.874393, 33.109734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914898, 41.061676, 32.895744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670488, -0.686994, 0.280152,
		-0.236354, -0.555714, -0.797069,
		0.703266, 0.468210, -0.534973,
		28.125877, 41.202141, 32.735252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864979, 40.331474, 32.578285>,  <27.633591, 40.874393, 33.109734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864979, 40.331474, 32.578285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150869, 40.601749, 32.650517>,  <28.322403, 40.763916, 32.693855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150869, 40.601749, 32.650517>,  <27.864979, 40.331474, 32.578285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150869, 40.601749, 32.650517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643647, -0.736467, 0.208172,
		0.273652, -0.032555, -0.961278,
		0.714726, 0.675690, 0.180581,
		28.365288, 40.804455, 32.704693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442587, 40.091702, 32.109554>,  <27.864979, 40.331474, 32.578285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442587, 40.091702, 32.109554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605419, 40.320774, 32.394180>,  <28.703117, 40.458218, 32.564957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605419, 40.320774, 32.394180>,  <28.442587, 40.091702, 32.109554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605419, 40.320774, 32.394180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553485, -0.774375, 0.306590,
		0.726596, 0.269033, -0.632203,
		0.407079, 0.572682, 0.711563,
		28.727543, 40.492580, 32.607651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118439, 40.083305, 32.060486>,  <28.442587, 40.091702, 32.109554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118439, 40.083305, 32.060486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113890, 40.211193, 32.439465>,  <29.111160, 40.287926, 32.666851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113890, 40.211193, 32.439465>,  <29.118439, 40.083305, 32.060486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113890, 40.211193, 32.439465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638784, -0.726642, 0.252874,
		0.769302, 0.608089, -0.195965,
		-0.011374, 0.319716, 0.947445,
		29.110477, 40.307110, 32.723698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738657, 40.003735, 32.266331>,  <29.118439, 40.083305, 32.060486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738657, 40.003735, 32.266331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544018, 40.010235, 32.615723>,  <29.427235, 40.014133, 32.825356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544018, 40.010235, 32.615723>,  <29.738657, 40.003735, 32.266331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544018, 40.010235, 32.615723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588096, -0.733271, 0.341257,
		0.646039, 0.679743, 0.347252,
		-0.486597, 0.016248, 0.873475,
		29.398039, 40.015110, 32.877766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197847, 39.912773, 32.709755>,  <29.738657, 40.003735, 32.266331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197847, 39.912773, 32.709755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866741, 39.783497, 32.893211>,  <29.668077, 39.705929, 33.003284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866741, 39.783497, 32.893211>,  <30.197847, 39.912773, 32.709755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866741, 39.783497, 32.893211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540159, -0.680141, 0.495617,
		0.151758, 0.657992, 0.737574,
		-0.827767, -0.323193, 0.458638,
		29.618412, 39.686539, 33.030804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476433, 39.781269, 33.313831>,  <30.197847, 39.912773, 32.709755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476433, 39.781269, 33.313831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114779, 39.613548, 33.346642>,  <29.897787, 39.512917, 33.366325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114779, 39.613548, 33.346642>,  <30.476433, 39.781269, 33.313831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114779, 39.613548, 33.346642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397472, -0.755065, 0.521434,
		-0.156704, 0.504048, 0.849341,
		-0.904135, -0.419300, 0.082023,
		29.843538, 39.487759, 33.371250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375599, 39.576435, 34.083035>,  <30.476433, 39.781269, 33.313831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375599, 39.576435, 34.083035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119041, 39.362732, 33.862785>,  <29.965107, 39.234509, 33.730637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119041, 39.362732, 33.862785>,  <30.375599, 39.576435, 34.083035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119041, 39.362732, 33.862785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331804, -0.840264, 0.428791,
		-0.691753, 0.092324, 0.716208,
		-0.641392, -0.534258, -0.550622,
		29.926624, 39.202454, 33.697598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919769, 39.266422, 34.501598>,  <30.375599, 39.576435, 34.083035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919769, 39.266422, 34.501598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933781, 39.036324, 34.174706>,  <29.942186, 38.898266, 33.978569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933781, 39.036324, 34.174706>,  <29.919769, 39.266422, 34.501598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933781, 39.036324, 34.174706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093543, -0.812256, 0.575752,
		-0.994999, -0.096613, 0.025359,
		0.035027, -0.575245, -0.817231,
		29.944288, 38.863750, 33.929535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843948, 38.583088, 34.785946>,  <29.919769, 39.266422, 34.501598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843948, 38.583088, 34.785946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930370, 38.500156, 34.404301>,  <29.982224, 38.450397, 34.175312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930370, 38.500156, 34.404301>,  <29.843948, 38.583088, 34.785946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930370, 38.500156, 34.404301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281721, -0.922396, 0.264233,
		-0.934855, -0.325883, -0.140877,
		0.216053, -0.207331, -0.954115,
		29.995186, 38.437958, 34.118065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477194, 37.986320, 34.607712>,  <29.843948, 38.583088, 34.785946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477194, 37.986320, 34.607712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790161, 37.985409, 34.358612>,  <29.977942, 37.984859, 34.209152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790161, 37.985409, 34.358612>,  <29.477194, 37.986320, 34.607712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790161, 37.985409, 34.358612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274194, -0.896584, 0.347785,
		-0.559138, -0.442868, -0.700880,
		0.782420, -0.002282, -0.622746,
		30.024887, 37.984722, 34.171787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457676, 37.393440, 34.309807>,  <29.477194, 37.986320, 34.607712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457676, 37.393440, 34.309807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837048, 37.519806, 34.299381>,  <30.064671, 37.595627, 34.293125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837048, 37.519806, 34.299381>,  <29.457676, 37.393440, 34.309807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837048, 37.519806, 34.299381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306804, -0.894173, 0.326076,
		0.079710, -0.317256, -0.944984,
		0.948429, 0.315917, -0.026061,
		30.121576, 37.614582, 34.291561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926945, 36.874355, 33.918755>,  <29.457676, 37.393440, 34.309807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926945, 36.874355, 33.918755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195871, 37.095055, 34.116161>,  <30.357227, 37.227474, 34.234604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195871, 37.095055, 34.116161>,  <29.926945, 36.874355, 33.918755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195871, 37.095055, 34.116161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381660, -0.829599, 0.407555,
		0.634290, -0.085651, -0.768336,
		0.672318, 0.551751, 0.493517,
		30.397568, 37.260578, 34.264217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478746, 36.594048, 33.639919>,  <29.926945, 36.874355, 33.918755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478746, 36.594048, 33.639919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587620, 36.805298, 33.961666>,  <30.652943, 36.932049, 34.154713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587620, 36.805298, 33.961666>,  <30.478746, 36.594048, 33.639919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587620, 36.805298, 33.961666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545607, -0.773261, 0.323079,
		0.792609, 0.350931, -0.498616,
		0.272182, 0.528124, 0.804365,
		30.669275, 36.963734, 34.202976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208567, 36.633781, 33.675900>,  <30.478746, 36.594048, 33.639919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208567, 36.633781, 33.675900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111156, 36.691769, 34.059498>,  <31.052710, 36.726562, 34.289658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111156, 36.691769, 34.059498>,  <31.208567, 36.633781, 33.675900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111156, 36.691769, 34.059498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623312, -0.734153, 0.269262,
		0.743087, 0.663328, 0.088423,
		-0.243525, 0.144970, 0.958999,
		31.038099, 36.735260, 34.347198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798641, 36.603096, 34.013218>,  <31.208567, 36.633781, 33.675900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798641, 36.603096, 34.013218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533276, 36.549511, 34.307682>,  <31.374056, 36.517361, 34.484360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533276, 36.549511, 34.307682>,  <31.798641, 36.603096, 34.013218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533276, 36.549511, 34.307682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531401, -0.776990, 0.337491,
		0.526780, 0.615094, 0.586653,
		-0.663412, -0.133964, 0.736164,
		31.334251, 36.509323, 34.528530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151119, 36.505428, 34.552059>,  <31.798641, 36.603096, 34.013218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151119, 36.505428, 34.552059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798960, 36.356094, 34.669029>,  <31.587664, 36.266495, 34.739212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798960, 36.356094, 34.669029>,  <32.151119, 36.505428, 34.552059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798960, 36.356094, 34.669029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454432, -0.840468, 0.295136,
		0.135591, 0.392727, 0.909605,
		-0.880401, -0.373335, 0.292428,
		31.534840, 36.244095, 34.756756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304588, 36.219643, 35.252209>,  <32.151119, 36.505428, 34.552059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304588, 36.219643, 35.252209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971088, 36.044800, 35.117271>,  <31.770988, 35.939896, 35.036308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971088, 36.044800, 35.117271>,  <32.304588, 36.219643, 35.252209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971088, 36.044800, 35.117271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331596, -0.884916, 0.327061,
		-0.441478, 0.160826, 0.882741,
		-0.833751, -0.437104, -0.337342,
		31.720963, 35.913670, 35.016068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021122, 35.818268, 35.825657>,  <32.304588, 36.219643, 35.252209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021122, 35.818268, 35.825657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874367, 35.650745, 35.493393>,  <31.786314, 35.550232, 35.294033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874367, 35.650745, 35.493393>,  <32.021122, 35.818268, 35.825657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874367, 35.650745, 35.493393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249922, -0.904475, 0.345635,
		-0.896065, -0.080791, 0.436509,
		-0.366887, -0.418805, -0.830660,
		31.764301, 35.525105, 35.244194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926207, 35.141205, 36.066097>,  <32.021122, 35.818268, 35.825657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926207, 35.141205, 36.066097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863268, 35.090740, 35.674316>,  <31.825504, 35.060459, 35.439247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863268, 35.090740, 35.674316>,  <31.926207, 35.141205, 36.066097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863268, 35.090740, 35.674316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043514, -0.991728, 0.120754,
		-0.986584, -0.023620, 0.161535,
		-0.157347, -0.126163, -0.979451,
		31.816063, 35.052891, 35.380482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599035, 34.441364, 36.143669>,  <31.926207, 35.141205, 36.066097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599035, 34.441364, 36.143669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708977, 34.524082, 35.768074>,  <31.774942, 34.573715, 35.542717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708977, 34.524082, 35.768074>,  <31.599035, 34.441364, 36.143669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708977, 34.524082, 35.768074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196791, -0.968022, -0.155589,
		-0.941132, -0.142019, -0.306760,
		0.274854, 0.206797, -0.938984,
		31.791433, 34.586121, 35.486378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318514, 33.825100, 35.694344>,  <31.599035, 34.441364, 36.143669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318514, 33.825100, 35.694344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596876, 34.000835, 35.467117>,  <31.763893, 34.106277, 35.330780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596876, 34.000835, 35.467117>,  <31.318514, 33.825100, 35.694344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596876, 34.000835, 35.467117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415565, -0.891497, -0.180387,
		-0.585678, -0.110535, -0.802972,
		0.695908, 0.439335, -0.568065,
		31.805649, 34.132637, 35.296700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507456, 33.454056, 35.044540>,  <31.318514, 33.825100, 35.694344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507456, 33.454056, 35.044540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825098, 33.694225, 35.082233>,  <32.015682, 33.838329, 35.104851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825098, 33.694225, 35.082233>,  <31.507456, 33.454056, 35.044540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825098, 33.694225, 35.082233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607205, -0.777038, -0.165874,
		-0.026373, 0.188941, -0.981634,
		0.794107, 0.600428, 0.094233,
		32.063332, 33.874355, 35.110504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912930, 33.345066, 34.391594>,  <31.507456, 33.454056, 35.044540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912930, 33.345066, 34.391594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158424, 33.464920, 34.683769>,  <32.305721, 33.536831, 34.859074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158424, 33.464920, 34.683769>,  <31.912930, 33.345066, 34.391594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158424, 33.464920, 34.683769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625509, -0.749053, -0.218306,
		0.481729, 0.590881, -0.647145,
		0.613739, 0.299631, 0.730442,
		32.342545, 33.554810, 34.902901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596001, 33.256477, 34.119015>,  <31.912930, 33.345066, 34.391594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596001, 33.256477, 34.119015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627705, 33.280979, 34.517002>,  <32.646729, 33.295681, 34.755795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627705, 33.280979, 34.517002>,  <32.596001, 33.256477, 34.119015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627705, 33.280979, 34.517002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470406, -0.882289, 0.016848,
		0.878883, 0.466705, -0.098746,
		0.079259, 0.061258, 0.994970,
		32.651482, 33.299358, 34.815495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314838, 33.177517, 34.174004>,  <32.596001, 33.256477, 34.119015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314838, 33.177517, 34.174004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144276, 33.082336, 34.523071>,  <33.041939, 33.025227, 34.732513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144276, 33.082336, 34.523071>,  <33.314838, 33.177517, 34.174004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144276, 33.082336, 34.523071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323632, -0.941046, -0.098462,
		0.844652, 0.240440, 0.478279,
		-0.426408, -0.237952, 0.872671,
		33.016354, 33.010952, 34.784874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843681, 32.931446, 34.585995>,  <33.314838, 33.177517, 34.174004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843681, 32.931446, 34.585995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490562, 32.794006, 34.714119>,  <33.278690, 32.711540, 34.790993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490562, 32.794006, 34.714119>,  <33.843681, 32.931446, 34.585995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490562, 32.794006, 34.714119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360349, -0.932788, -0.007466,
		0.301350, 0.108834, 0.947282,
		-0.882801, -0.343602, 0.320313,
		33.225723, 32.690926, 34.810211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091839, 33.750458, 34.599361>,  <33.843681, 32.931446, 34.585995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091839, 33.750458, 34.599361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445148, 33.936035, 34.572266>,  <34.657135, 34.047382, 34.556007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445148, 33.936035, 34.572266>,  <34.091839, 33.750458, 34.599361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445148, 33.936035, 34.572266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448527, 0.878189, 0.166155,
		0.136577, -0.116376, 0.983770,
		0.883273, 0.463941, -0.067742,
		34.710129, 34.075218, 34.551945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030251, 34.321957, 35.116180>,  <34.091839, 33.750458, 34.599361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030251, 34.321957, 35.116180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297581, 34.384823, 34.825348>,  <34.457977, 34.422543, 34.650848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297581, 34.384823, 34.825348>,  <34.030251, 34.321957, 35.116180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297581, 34.384823, 34.825348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293055, 0.954007, -0.063161,
		0.683712, 0.255286, 0.683642,
		0.668324, 0.157161, -0.727079,
		34.498077, 34.431973, 34.607224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472889, 34.800255, 35.326069>,  <34.030251, 34.321957, 35.116180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472889, 34.800255, 35.326069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480335, 34.816349, 34.926460>,  <34.484802, 34.826004, 34.686695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480335, 34.816349, 34.926460>,  <34.472889, 34.800255, 35.326069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480335, 34.816349, 34.926460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156397, 0.987007, 0.036834,
		0.987519, 0.155558, 0.024669,
		0.018618, 0.040233, -0.999017,
		34.485920, 34.828419, 34.626755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946423, 35.326874, 35.140125>,  <34.472889, 34.800255, 35.326069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946423, 35.326874, 35.140125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715210, 35.277897, 34.817417>,  <34.576481, 35.248512, 34.623791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715210, 35.277897, 34.817417>,  <34.946423, 35.326874, 35.140125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715210, 35.277897, 34.817417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053023, 0.992225, -0.112596,
		0.814288, -0.022307, -0.580032,
		-0.578034, -0.122441, -0.806774,
		34.541801, 35.241165, 34.575386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163143, 35.922279, 34.733948>,  <34.946423, 35.326874, 35.140125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163143, 35.922279, 34.733948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831596, 35.794228, 34.550430>,  <34.632668, 35.717396, 34.440319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831596, 35.794228, 34.550430>,  <35.163143, 35.922279, 34.733948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831596, 35.794228, 34.550430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291862, 0.947090, -0.133552,
		0.477273, 0.023207, -0.878449,
		-0.828871, -0.320126, -0.458794,
		34.582935, 35.698189, 34.412792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211819, 36.087685, 34.046379>,  <35.163143, 35.922279, 34.733948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211819, 36.087685, 34.046379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822693, 36.037434, 34.124207>,  <34.589218, 36.007282, 34.170902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822693, 36.037434, 34.124207>,  <35.211819, 36.087685, 34.046379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822693, 36.037434, 34.124207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185222, 0.926350, -0.327976,
		-0.139039, -0.355097, -0.924432,
		-0.972811, -0.125624, 0.194570,
		34.530849, 35.999748, 34.182579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840382, 36.426300, 33.468628>,  <35.211819, 36.087685, 34.046379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840382, 36.426300, 33.468628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590336, 36.408741, 33.780346>,  <34.440308, 36.398205, 33.967377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590336, 36.408741, 33.780346>,  <34.840382, 36.426300, 33.468628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590336, 36.408741, 33.780346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368603, 0.896674, -0.245168,
		-0.688015, -0.440510, -0.576703,
		-0.625114, -0.043895, 0.779298,
		34.402802, 36.395573, 34.014137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191811, 36.641979, 33.230946>,  <34.840382, 36.426300, 33.468628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191811, 36.641979, 33.230946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135754, 36.677689, 33.625385>,  <34.102119, 36.699116, 33.862049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135754, 36.677689, 33.625385>,  <34.191811, 36.641979, 33.230946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135754, 36.677689, 33.625385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569735, 0.807260, -0.154054,
		-0.809792, -0.583404, -0.062266,
		-0.140140, 0.089277, 0.986099,
		34.093712, 36.704472, 33.921215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476086, 36.880405, 33.288902>,  <34.191811, 36.641979, 33.230946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476086, 36.880405, 33.288902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667255, 36.992123, 33.622028>,  <33.781960, 37.059155, 33.821903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667255, 36.992123, 33.622028>,  <33.476086, 36.880405, 33.288902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667255, 36.992123, 33.622028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338624, 0.933404, -0.118701,
		-0.810506, -0.225281, 0.540674,
		0.477926, 0.279293, 0.832815,
		33.810635, 37.075909, 33.871872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059437, 37.442238, 33.613960>,  <33.476086, 36.880405, 33.288902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059437, 37.442238, 33.613960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398800, 37.469490, 33.823936>,  <33.602417, 37.485840, 33.949921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398800, 37.469490, 33.823936>,  <33.059437, 37.442238, 33.613960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398800, 37.469490, 33.823936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211359, 0.952800, 0.217945,
		-0.485315, -0.295857, 0.822763,
		0.848408, 0.068126, 0.524940,
		33.653324, 37.489929, 33.981419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897640, 37.811184, 34.254555>,  <33.059437, 37.442238, 33.613960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897640, 37.811184, 34.254555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276909, 37.882011, 34.149010>,  <33.504471, 37.924507, 34.085682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276909, 37.882011, 34.149010>,  <32.897640, 37.811184, 34.254555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276909, 37.882011, 34.149010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168734, 0.984175, 0.054118,
		0.269273, -0.006790, 0.963040,
		0.948167, 0.177070, -0.263866,
		33.561359, 37.935131, 34.069851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132538, 38.439049, 34.666431>,  <32.897640, 37.811184, 34.254555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132538, 38.439049, 34.666431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409828, 38.416538, 34.379025>,  <33.576202, 38.403034, 34.206581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409828, 38.416538, 34.379025>,  <33.132538, 38.439049, 34.666431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409828, 38.416538, 34.379025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067993, 0.987394, -0.142931,
		0.717504, 0.147938, 0.680663,
		0.693228, -0.056273, -0.718518,
		33.617798, 38.399654, 34.163467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687000, 38.905468, 34.893810>,  <33.132538, 38.439049, 34.666431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687000, 38.905468, 34.893810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684582, 38.848228, 34.497932>,  <33.683132, 38.813885, 34.260406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684582, 38.848228, 34.497932>,  <33.687000, 38.905468, 34.893810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684582, 38.848228, 34.497932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201979, 0.969484, -0.138944,
		0.979371, 0.199057, -0.034763,
		-0.006045, -0.143099, -0.989690,
		33.682770, 38.805298, 34.201027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999077, 39.474686, 34.695381>,  <33.687000, 38.905468, 34.893810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999077, 39.474686, 34.695381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810253, 39.323975, 34.376583>,  <33.696960, 39.233547, 34.185307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810253, 39.323975, 34.376583>,  <33.999077, 39.474686, 34.695381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810253, 39.323975, 34.376583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333210, 0.913255, -0.234384,
		0.816169, 0.154924, -0.556656,
		-0.472058, -0.376781, -0.796993,
		33.668636, 39.210941, 34.137486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075642, 39.977608, 34.204620>,  <33.999077, 39.474686, 34.695381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075642, 39.977608, 34.204620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764046, 39.763287, 34.074337>,  <33.577087, 39.634693, 33.996166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764046, 39.763287, 34.074337>,  <34.075642, 39.977608, 34.204620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764046, 39.763287, 34.074337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438564, 0.836824, -0.327700,
		0.448143, -0.112432, -0.886863,
		-0.778992, -0.535803, -0.325708,
		33.530350, 39.602547, 33.976624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891609, 40.223450, 33.533905>,  <34.075642, 39.977608, 34.204620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891609, 40.223450, 33.533905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567562, 40.013161, 33.637699>,  <33.373135, 39.886986, 33.699974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567562, 40.013161, 33.637699>,  <33.891609, 40.223450, 33.533905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567562, 40.013161, 33.637699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585541, 0.703435, -0.402891,
		0.029281, -0.478325, -0.877695,
		-0.810114, -0.525723, 0.259481,
		33.324528, 39.855442, 33.715542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405998, 40.316620, 32.989906>,  <33.891609, 40.223450, 33.533905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405998, 40.316620, 32.989906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153759, 40.202255, 33.278519>,  <33.002415, 40.133636, 33.451687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153759, 40.202255, 33.278519>,  <33.405998, 40.316620, 32.989906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153759, 40.202255, 33.278519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618187, 0.747124, -0.244233,
		-0.469243, -0.600052, -0.647880,
		-0.630599, -0.285907, 0.721527,
		32.964581, 40.116482, 33.494976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656681, 40.149673, 32.671936>,  <33.405998, 40.316620, 32.989906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656681, 40.149673, 32.671936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644157, 40.257557, 33.056911>,  <32.636642, 40.322285, 33.287895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644157, 40.257557, 33.056911>,  <32.656681, 40.149673, 32.671936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644157, 40.257557, 33.056911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680540, 0.699481, -0.218155,
		-0.732041, -0.661805, 0.161645,
		-0.031309, 0.269704, 0.962434,
		32.634766, 40.338467, 33.345642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965118, 40.123398, 32.858032>,  <32.656681, 40.149673, 32.671936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965118, 40.123398, 32.858032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119305, 40.355743, 33.144814>,  <32.211815, 40.495152, 33.316883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119305, 40.355743, 33.144814>,  <31.965118, 40.123398, 32.858032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119305, 40.355743, 33.144814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778878, 0.621428, -0.084709,
		-0.494736, -0.525764, 0.691959,
		0.385466, 0.580861, 0.716949,
		32.234943, 40.530003, 33.359898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333212, 40.231060, 33.244442>,  <31.965118, 40.123398, 32.858032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333212, 40.231060, 33.244442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580933, 40.512505, 33.383812>,  <31.729565, 40.681370, 33.467434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580933, 40.512505, 33.383812>,  <31.333212, 40.231060, 33.244442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580933, 40.512505, 33.383812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665852, 0.705813, -0.241805,
		-0.416060, -0.082251, 0.905610,
		0.619302, 0.703608, 0.348427,
		31.766724, 40.723587, 33.488338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882973, 40.690113, 33.675682>,  <31.333212, 40.231060, 33.244442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882973, 40.690113, 33.675682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207373, 40.892178, 33.557640>,  <31.402014, 41.013416, 33.486816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207373, 40.892178, 33.557640>,  <30.882973, 40.690113, 33.675682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207373, 40.892178, 33.557640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584490, 0.721552, -0.371125,
		0.025455, 0.473469, 0.880443,
		0.811002, 0.505163, -0.295105,
		31.450674, 41.043728, 33.469109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612669, 41.386822, 33.634911>,  <30.882973, 40.690113, 33.675682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612669, 41.386822, 33.634911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965698, 41.425339, 33.450825>,  <31.177515, 41.448448, 33.340374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965698, 41.425339, 33.450825>,  <30.612669, 41.386822, 33.634911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965698, 41.425339, 33.450825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399255, 0.670428, -0.625397,
		0.248320, 0.735700, 0.630145,
		0.882571, 0.096290, -0.460213,
		31.230469, 41.454227, 33.312759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672083, 42.085144, 33.589569>,  <30.612669, 41.386822, 33.634911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672083, 42.085144, 33.589569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923584, 41.958588, 33.305439>,  <31.074486, 41.882652, 33.134960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923584, 41.958588, 33.305439>,  <30.672083, 42.085144, 33.589569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923584, 41.958588, 33.305439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376196, 0.675699, -0.633962,
		0.680547, 0.665829, 0.305824,
		0.628755, -0.316391, -0.710327,
		31.112211, 41.863670, 33.092342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019550, 42.607193, 33.364372>,  <30.672083, 42.085144, 33.589569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019550, 42.607193, 33.364372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047609, 42.354248, 33.055775>,  <31.064445, 42.202480, 32.870617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047609, 42.354248, 33.055775>,  <31.019550, 42.607193, 33.364372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047609, 42.354248, 33.055775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239717, 0.740049, -0.628382,
		0.968305, 0.229020, -0.099674,
		0.070148, -0.632360, -0.771493,
		31.068653, 42.164539, 32.824326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214699, 43.017120, 32.789635>,  <31.019550, 42.607193, 33.364372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214699, 43.017120, 32.789635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088341, 42.680546, 32.614277>,  <31.012526, 42.478600, 32.509064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088341, 42.680546, 32.614277>,  <31.214699, 43.017120, 32.789635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088341, 42.680546, 32.614277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373953, 0.535069, -0.757536,
		0.871991, -0.075364, -0.483685,
		-0.315896, -0.841440, -0.438393,
		30.993572, 42.428112, 32.482758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275280, 43.185070, 32.022629>,  <31.214699, 43.017120, 32.789635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275280, 43.185070, 32.022629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034058, 42.866703, 32.043911>,  <30.889324, 42.675682, 32.056679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034058, 42.866703, 32.043911>,  <31.275280, 43.185070, 32.022629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034058, 42.866703, 32.043911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488395, 0.315669, -0.813525,
		0.630709, -0.516585, -0.579091,
		-0.603056, -0.795922, 0.053202,
		30.853140, 42.627926, 32.059872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375582, 42.847710, 31.463146>,  <31.275280, 43.185070, 32.022629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375582, 42.847710, 31.463146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004040, 42.746025, 31.570929>,  <30.781115, 42.685017, 31.635597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004040, 42.746025, 31.570929>,  <31.375582, 42.847710, 31.463146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004040, 42.746025, 31.570929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366554, 0.525594, -0.767717,
		0.053535, -0.811868, -0.581381,
		-0.928855, -0.254208, 0.269456,
		30.725384, 42.669762, 31.651766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004543, 42.673328, 30.831688>,  <31.375582, 42.847710, 31.463146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004543, 42.673328, 30.831688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701590, 42.726101, 31.087488>,  <30.519817, 42.757767, 31.240969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701590, 42.726101, 31.087488>,  <31.004543, 42.673328, 30.831688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701590, 42.726101, 31.087488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477681, 0.555774, -0.680394,
		-0.445185, -0.820798, -0.357912,
		-0.757384, 0.131933, 0.639502,
		30.474375, 42.765682, 31.279339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432491, 42.361618, 30.533443>,  <31.004543, 42.673328, 30.831688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432491, 42.361618, 30.533443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260923, 42.599079, 30.805798>,  <30.157982, 42.741554, 30.969212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260923, 42.599079, 30.805798>,  <30.432491, 42.361618, 30.533443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260923, 42.599079, 30.805798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509408, 0.463514, -0.725023,
		-0.746011, -0.657826, 0.103600,
		-0.428919, 0.593650, 0.680888,
		30.132248, 42.777176, 31.010063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795296, 42.487034, 30.257870>,  <30.432491, 42.361618, 30.533443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795296, 42.487034, 30.257870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840391, 42.794559, 30.509653>,  <29.867449, 42.979073, 30.660723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840391, 42.794559, 30.509653>,  <29.795296, 42.487034, 30.257870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840391, 42.794559, 30.509653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537351, 0.580043, -0.612213,
		-0.835789, -0.269218, 0.478516,
		0.112741, 0.768812, 0.629458,
		29.874214, 43.025204, 30.698490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031643, 42.804401, 30.420923>,  <29.795296, 42.487034, 30.257870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031643, 42.804401, 30.420923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293659, 43.101517, 30.476339>,  <29.450869, 43.279785, 30.509588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293659, 43.101517, 30.476339>,  <29.031643, 42.804401, 30.420923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293659, 43.101517, 30.476339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583228, 0.613611, -0.532284,
		-0.480381, 0.267869, 0.835153,
		0.655041, 0.742784, 0.138539,
		29.490171, 43.324352, 30.517900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709150, 43.320488, 30.749594>,  <29.031643, 42.804401, 30.420923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709150, 43.320488, 30.749594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026842, 43.496735, 30.582235>,  <29.217457, 43.602482, 30.481819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026842, 43.496735, 30.582235>,  <28.709150, 43.320488, 30.749594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026842, 43.496735, 30.582235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607193, 0.601333, -0.519342,
		0.022765, 0.666525, 0.745135,
		0.794229, 0.440618, -0.418398,
		29.265110, 43.628922, 30.456717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653236, 44.075100, 30.786463>,  <28.709150, 43.320488, 30.749594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653236, 44.075100, 30.786463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910883, 44.011967, 30.487076>,  <29.065472, 43.974087, 30.307444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910883, 44.011967, 30.487076>,  <28.653236, 44.075100, 30.786463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910883, 44.011967, 30.487076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533005, 0.609215, -0.587165,
		0.548653, 0.777139, 0.308278,
		0.644116, -0.157836, -0.748466,
		29.104118, 43.964615, 30.262535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732874, 44.817772, 30.509739>,  <28.653236, 44.075100, 30.786463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732874, 44.817772, 30.509739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905130, 44.554314, 30.262922>,  <29.008484, 44.396240, 30.114832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905130, 44.554314, 30.262922>,  <28.732874, 44.817772, 30.509739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905130, 44.554314, 30.262922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190365, 0.602015, -0.775461,
		0.882219, 0.451407, 0.133870,
		0.430640, -0.658642, -0.617041,
		29.034323, 44.356720, 30.077810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919718, 45.233402, 30.088764>,  <28.732874, 44.817772, 30.509739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919718, 45.233402, 30.088764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924681, 44.881924, 29.897879>,  <28.927658, 44.671036, 29.783348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924681, 44.881924, 29.897879>,  <28.919718, 45.233402, 30.088764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924681, 44.881924, 29.897879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321451, 0.448409, -0.834025,
		0.946845, 0.163750, -0.276895,
		0.012409, -0.878701, -0.477212,
		28.928404, 44.618313, 29.754715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172367, 45.360676, 29.363403>,  <28.919718, 45.233402, 30.088764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172367, 45.360676, 29.363403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973448, 45.016674, 29.317657>,  <28.854095, 44.810272, 29.290209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973448, 45.016674, 29.317657>,  <29.172367, 45.360676, 29.363403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973448, 45.016674, 29.317657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469454, 0.377600, -0.798143,
		0.729594, -0.343225, -0.591514,
		-0.497298, -0.860009, -0.114366,
		28.824259, 44.758671, 29.283348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253248, 45.257870, 28.672411>,  <29.172367, 45.360676, 29.363403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253248, 45.257870, 28.672411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950399, 45.029221, 28.798910>,  <28.768690, 44.892033, 28.874809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950399, 45.029221, 28.798910>,  <29.253248, 45.257870, 28.672411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950399, 45.029221, 28.798910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541959, 0.279312, -0.792631,
		0.364756, -0.771511, -0.521271,
		-0.757122, -0.571625, 0.316247,
		28.723263, 44.857735, 28.893785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008064, 45.391861, 28.827400>,  <29.253248, 45.257870, 28.672411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008064, 45.391861, 28.827400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183475, 45.625355, 28.554064>,  <30.288721, 45.765450, 28.390062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183475, 45.625355, 28.554064>,  <30.008064, 45.391861, 28.827400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183475, 45.625355, 28.554064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892024, -0.375336, 0.251824,
		-0.109484, -0.719987, -0.685297,
		0.438527, 0.583731, -0.683339,
		30.315033, 45.800472, 28.349062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345770, 44.984879, 28.268272>,  <30.008064, 45.391861, 28.827400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345770, 44.984879, 28.268272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529394, 45.337307, 28.313843>,  <30.639568, 45.548763, 28.341185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529394, 45.337307, 28.313843>,  <30.345770, 44.984879, 28.268272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529394, 45.337307, 28.313843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871651, -0.471470, 0.133943,
		0.171726, 0.037816, -0.984419,
		0.459059, 0.881071, 0.113926,
		30.667112, 45.601627, 28.348021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050442, 44.814381, 28.160551>,  <30.345770, 44.984879, 28.268272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050442, 44.814381, 28.160551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063778, 45.178570, 28.325436>,  <31.071779, 45.397083, 28.424366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063778, 45.178570, 28.325436>,  <31.050442, 44.814381, 28.160551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063778, 45.178570, 28.325436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911075, -0.197248, 0.361988,
		0.410891, 0.363489, -0.836089,
		0.033338, 0.910477, 0.412213,
		31.073780, 45.451714, 28.449099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806042, 45.011513, 28.124022>,  <31.050442, 44.814381, 28.160551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806042, 45.011513, 28.124022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657574, 45.265015, 28.395487>,  <31.568493, 45.417118, 28.558367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657574, 45.265015, 28.395487>,  <31.806042, 45.011513, 28.124022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657574, 45.265015, 28.395487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726558, -0.256904, 0.637270,
		0.578226, 0.729624, -0.365107,
		-0.371170, 0.633758, 0.678663,
		31.546223, 45.455143, 28.599085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436714, 45.398121, 28.360588>,  <31.806042, 45.011513, 28.124022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436714, 45.398121, 28.360588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142223, 45.461201, 28.623829>,  <31.965528, 45.499046, 28.781773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142223, 45.461201, 28.623829>,  <32.436714, 45.398121, 28.360588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142223, 45.461201, 28.623829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663849, -0.020551, 0.747584,
		0.131416, 0.987274, -0.089556,
		-0.736229, 0.157697, 0.658102,
		31.921354, 45.508511, 28.821259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706921, 45.940052, 28.868074>,  <32.436714, 45.398121, 28.360588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706921, 45.940052, 28.868074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423973, 45.698139, 29.014423>,  <32.254204, 45.552990, 29.102232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423973, 45.698139, 29.014423>,  <32.706921, 45.940052, 28.868074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423973, 45.698139, 29.014423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608521, -0.257703, 0.750528,
		-0.359618, 0.753545, 0.550314,
		-0.707374, -0.604781, 0.365873,
		32.211761, 45.516705, 29.124186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744556, 45.975315, 29.543425>,  <32.706921, 45.940052, 28.868074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744556, 45.975315, 29.543425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530613, 45.637337, 29.543777>,  <32.402248, 45.434551, 29.543989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530613, 45.637337, 29.543777>,  <32.744556, 45.975315, 29.543425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530613, 45.637337, 29.543777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545882, -0.344752, 0.763649,
		-0.644935, 0.408924, 0.645632,
		-0.534857, -0.844942, 0.000882,
		32.370155, 45.383854, 29.544043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625610, 45.780823, 30.201315>,  <32.744556, 45.975315, 29.543425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625610, 45.780823, 30.201315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515499, 45.421913, 30.063261>,  <32.449432, 45.206566, 29.980429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515499, 45.421913, 30.063261>,  <32.625610, 45.780823, 30.201315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515499, 45.421913, 30.063261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259764, -0.415074, 0.871915,
		-0.925604, 0.150370, 0.347343,
		-0.275283, -0.897275, -0.345134,
		32.432915, 45.152729, 29.959721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100437, 45.563763, 30.719656>,  <32.625610, 45.780823, 30.201315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100437, 45.563763, 30.719656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259960, 45.258205, 30.516706>,  <32.355675, 45.074871, 30.394938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259960, 45.258205, 30.516706>,  <32.100437, 45.563763, 30.719656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259960, 45.258205, 30.516706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142812, -0.494790, 0.857197,
		-0.905848, -0.414313, -0.088232,
		0.398804, -0.763889, -0.507373,
		32.379601, 45.029037, 30.364494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998701, 45.091465, 31.193501>,  <32.100437, 45.563763, 30.719656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998701, 45.091465, 31.193501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237545, 44.895340, 30.939554>,  <32.380852, 44.777664, 30.787186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237545, 44.895340, 30.939554>,  <31.998701, 45.091465, 31.193501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237545, 44.895340, 30.939554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293444, -0.603074, 0.741750,
		-0.746561, -0.629202, -0.216220,
		0.597107, -0.490314, -0.634867,
		32.416676, 44.748245, 30.749094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802532, 44.376225, 31.269382>,  <31.998701, 45.091465, 31.193501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802532, 44.376225, 31.269382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174450, 44.430557, 31.132545>,  <32.397602, 44.463158, 31.050444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174450, 44.430557, 31.132545>,  <31.802532, 44.376225, 31.269382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174450, 44.430557, 31.132545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355335, -0.573658, 0.738006,
		-0.095996, -0.807753, -0.581652,
		0.929796, 0.135836, -0.342092,
		32.453388, 44.471310, 31.029917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091526, 43.641647, 31.131727>,  <31.802532, 44.376225, 31.269382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091526, 43.641647, 31.131727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402889, 43.889771, 31.170280>,  <32.589706, 44.038647, 31.193413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402889, 43.889771, 31.170280>,  <32.091526, 43.641647, 31.131727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402889, 43.889771, 31.170280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333165, -0.538355, 0.774064,
		0.532049, -0.570429, -0.625728,
		0.778412, 0.620310, 0.096384,
		32.636414, 44.075863, 31.199196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649464, 43.201733, 31.166733>,  <32.091526, 43.641647, 31.131727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649464, 43.201733, 31.166733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811577, 43.544201, 31.294933>,  <32.908844, 43.749680, 31.371853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811577, 43.544201, 31.294933>,  <32.649464, 43.201733, 31.166733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811577, 43.544201, 31.294933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623699, -0.515275, 0.587785,
		0.668389, -0.038323, -0.742824,
		0.405284, 0.856168, 0.320502,
		32.933163, 43.801052, 31.391085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353279, 43.086727, 31.123650>,  <32.649464, 43.201733, 31.166733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353279, 43.086727, 31.123650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326248, 43.404213, 31.365459>,  <33.310028, 43.594704, 31.510546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326248, 43.404213, 31.365459>,  <33.353279, 43.086727, 31.123650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326248, 43.404213, 31.365459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719272, -0.381148, 0.580838,
		0.691433, 0.474069, -0.545140,
		-0.067578, 0.793716, 0.604524,
		33.305973, 43.642326, 31.546816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022881, 43.302132, 31.154121>,  <33.353279, 43.086727, 31.123650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022881, 43.302132, 31.154121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823540, 43.408527, 31.484188>,  <33.703938, 43.472363, 31.682228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823540, 43.408527, 31.484188>,  <34.022881, 43.302132, 31.154121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823540, 43.408527, 31.484188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649884, -0.515366, 0.558613,
		0.573846, 0.814647, 0.083972,
		-0.498349, 0.265986, 0.825167,
		33.674034, 43.488323, 31.731737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498039, 43.507847, 31.689484>,  <34.022881, 43.302132, 31.154121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498039, 43.507847, 31.689484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162483, 43.445610, 31.898121>,  <33.961151, 43.408268, 32.023304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162483, 43.445610, 31.898121>,  <34.498039, 43.507847, 31.689484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162483, 43.445610, 31.898121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494521, -0.618249, 0.610915,
		0.227420, 0.770428, 0.595585,
		-0.838886, -0.155595, 0.521594,
		33.910816, 43.398933, 32.054600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642601, 43.603558, 32.349590>,  <34.498039, 43.507847, 31.689484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642601, 43.603558, 32.349590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333603, 43.353996, 32.396931>,  <34.148205, 43.204262, 32.425335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333603, 43.353996, 32.396931>,  <34.642601, 43.603558, 32.349590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333603, 43.353996, 32.396931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603229, -0.662715, 0.443760,
		-0.198426, 0.414195, 0.888296,
		-0.772490, -0.623900, 0.118355,
		34.101856, 43.166828, 32.432438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709190, 43.310547, 32.995808>,  <34.642601, 43.603558, 32.349590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709190, 43.310547, 32.995808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463573, 43.063751, 32.798923>,  <34.316204, 42.915672, 32.680794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463573, 43.063751, 32.798923>,  <34.709190, 43.310547, 32.995808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463573, 43.063751, 32.798923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593810, -0.771960, 0.226862,
		-0.519941, -0.152979, 0.840392,
		-0.614044, -0.616988, -0.492215,
		34.279362, 42.878654, 32.651260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738968, 42.715374, 33.389748>,  <34.709190, 43.310547, 32.995808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738968, 42.715374, 33.389748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574631, 42.564011, 33.057961>,  <34.476028, 42.473194, 32.858887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574631, 42.564011, 33.057961>,  <34.738968, 42.715374, 33.389748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574631, 42.564011, 33.057961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512410, -0.848345, 0.133217,
		-0.754086, -0.370297, 0.542433,
		-0.410841, -0.378405, -0.829470,
		34.451378, 42.450489, 32.809120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356129, 42.009766, 33.526154>,  <34.738968, 42.715374, 33.389748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356129, 42.009766, 33.526154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442516, 42.027248, 33.135986>,  <34.494347, 42.037739, 32.901886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442516, 42.027248, 33.135986>,  <34.356129, 42.009766, 33.526154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442516, 42.027248, 33.135986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159527, -0.987153, -0.008908,
		-0.963281, -0.153682, -0.220164,
		0.215967, 0.043703, -0.975422,
		34.507305, 42.040359, 32.843361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992573, 41.514950, 33.131168>,  <34.356129, 42.009766, 33.526154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992573, 41.514950, 33.131168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297371, 41.582733, 32.881161>,  <34.480247, 41.623402, 32.731155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297371, 41.582733, 32.881161>,  <33.992573, 41.514950, 33.131168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297371, 41.582733, 32.881161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247587, -0.968065, 0.039377,
		-0.598390, -0.184752, -0.779613,
		0.761991, 0.169459, -0.625022,
		34.525967, 41.633572, 32.693653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954208, 40.980896, 32.654358>,  <33.992573, 41.514950, 33.131168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954208, 40.980896, 32.654358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323231, 41.126740, 32.603832>,  <34.544643, 41.214245, 32.573517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323231, 41.126740, 32.603832>,  <33.954208, 40.980896, 32.654358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323231, 41.126740, 32.603832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353080, -0.929704, -0.104811,
		-0.155650, 0.052095, -0.986438,
		0.922555, 0.364605, -0.126315,
		34.599998, 41.236122, 32.565937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156403, 40.714268, 31.961662>,  <33.954208, 40.980896, 32.654358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156403, 40.714268, 31.961662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467213, 40.825069, 32.187763>,  <34.653698, 40.891552, 32.323421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467213, 40.825069, 32.187763>,  <34.156403, 40.714268, 31.961662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467213, 40.825069, 32.187763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312364, -0.949287, 0.035810,
		0.546504, 0.148739, -0.824142,
		0.777021, 0.277003, 0.565250,
		34.700317, 40.908169, 32.357338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607143, 40.195835, 31.728292>,  <34.156403, 40.714268, 31.961662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607143, 40.195835, 31.728292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797100, 40.331303, 32.053200>,  <34.911072, 40.412582, 32.248146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797100, 40.331303, 32.053200>,  <34.607143, 40.195835, 31.728292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797100, 40.331303, 32.053200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415733, -0.899838, 0.132128,
		0.775659, 0.274941, -0.568120,
		0.474889, 0.338673, 0.812269,
		34.939568, 40.432903, 32.296879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214283, 39.879932, 31.776321>,  <34.607143, 40.195835, 31.728292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214283, 39.879932, 31.776321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158302, 39.994640, 32.155411>,  <35.124714, 40.063465, 32.382866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158302, 39.994640, 32.155411>,  <35.214283, 39.879932, 31.776321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158302, 39.994640, 32.155411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377969, -0.869191, 0.318821,
		0.915179, 0.402829, 0.013253,
		-0.139950, 0.286769, 0.947722,
		35.116318, 40.080669, 32.439728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879211, 39.640369, 32.103085>,  <35.214283, 39.879932, 31.776321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879211, 39.640369, 32.103085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602020, 39.692326, 32.386749>,  <35.435707, 39.723499, 32.556950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602020, 39.692326, 32.386749>,  <35.879211, 39.640369, 32.103085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602020, 39.692326, 32.386749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390720, -0.759001, 0.520821,
		0.605909, 0.638000, 0.475216,
		-0.692973, 0.129894, 0.709165,
		35.394127, 39.731293, 32.599499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242863, 39.847698, 32.767117>,  <35.879211, 39.640369, 32.103085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242863, 39.847698, 32.767117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886944, 39.694206, 32.865925>,  <35.673393, 39.602112, 32.925209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886944, 39.694206, 32.865925>,  <36.242863, 39.847698, 32.767117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886944, 39.694206, 32.865925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455220, -0.708041, 0.539863,
		-0.032260, 0.592816, 0.804692,
		-0.889794, -0.383728, 0.247020,
		35.620007, 39.579086, 32.940029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298241, 39.649567, 33.506168>,  <36.242863, 39.847698, 32.767117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298241, 39.649567, 33.506168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002556, 39.430145, 33.349884>,  <35.825146, 39.298492, 33.256115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002556, 39.430145, 33.349884>,  <36.298241, 39.649567, 33.506168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002556, 39.430145, 33.349884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307984, -0.791270, 0.528240,
		-0.598927, 0.270148, 0.753861,
		-0.739211, -0.548554, -0.390712,
		35.780792, 39.265579, 33.232670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093754, 39.217278, 34.112797>,  <36.298241, 39.649567, 33.506168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093754, 39.217278, 34.112797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948856, 39.026970, 33.792191>,  <35.861919, 38.912785, 33.599827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948856, 39.026970, 33.792191>,  <36.093754, 39.217278, 34.112797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948856, 39.026970, 33.792191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338908, -0.868287, 0.362242,
		-0.868287, -0.140419, 0.475774,
		-0.362242, -0.475774, -0.801511,
		35.840183, 38.884239, 33.551739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528584, 38.698036, 34.315556>,  <36.093754, 39.217278, 34.112797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528584, 38.698036, 34.315556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705090, 38.582466, 33.975719>,  <35.810993, 38.513126, 33.771816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705090, 38.582466, 33.975719>,  <35.528584, 38.698036, 34.315556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705090, 38.582466, 33.975719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284143, -0.853053, 0.437679,
		-0.851197, -0.434543, -0.294341,
		0.441279, -0.288916, -0.849589,
		35.837471, 38.495789, 33.720840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752182, 38.041149, 34.546402>,  <35.528584, 38.698036, 34.315556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752182, 38.041149, 34.546402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883572, 38.044235, 34.168610>,  <35.962406, 38.046085, 33.941933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883572, 38.044235, 34.168610>,  <35.752182, 38.041149, 34.546402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883572, 38.044235, 34.168610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611473, -0.763866, 0.206419,
		-0.719866, -0.645328, -0.255625,
		0.328472, 0.007713, -0.944482,
		35.982113, 38.046551, 33.885265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573833, 37.349892, 34.252182>,  <35.752182, 38.041149, 34.546402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573833, 37.349892, 34.252182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877640, 37.534363, 34.068684>,  <36.059925, 37.645046, 33.958584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877640, 37.534363, 34.068684>,  <35.573833, 37.349892, 34.252182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877640, 37.534363, 34.068684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640033, -0.655757, 0.400425,
		-0.116162, -0.597745, -0.793226,
		0.759516, 0.461177, -0.458750,
		36.105495, 37.672714, 33.931057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917591, 36.751152, 34.038017>,  <35.573833, 37.349892, 34.252182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917591, 36.751152, 34.038017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209148, 37.018963, 33.980816>,  <36.384083, 37.179649, 33.946495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209148, 37.018963, 33.980816>,  <35.917591, 36.751152, 34.038017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209148, 37.018963, 33.980816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670495, -0.655883, 0.346777,
		0.138381, -0.348648, -0.926982,
		0.728894, 0.669524, -0.143005,
		36.427818, 37.219822, 33.937916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438179, 36.433296, 33.726727>,  <35.917591, 36.751152, 34.038017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438179, 36.433296, 33.726727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628792, 36.737576, 33.903023>,  <36.743160, 36.920143, 34.008801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628792, 36.737576, 33.903023>,  <36.438179, 36.433296, 33.726727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628792, 36.737576, 33.903023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733967, -0.620193, 0.276862,
		0.483952, 0.191553, -0.853872,
		0.476532, 0.760702, 0.440738,
		36.771751, 36.965786, 34.035244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131508, 36.617424, 33.322834>,  <36.438179, 36.433296, 33.726727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131508, 36.617424, 33.322834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142094, 36.745335, 33.701683>,  <37.148445, 36.822079, 33.928993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142094, 36.745335, 33.701683>,  <37.131508, 36.617424, 33.322834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142094, 36.745335, 33.701683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768587, -0.612333, 0.185264,
		0.639198, 0.723045, -0.261978,
		0.026463, 0.319773, 0.947125,
		37.150032, 36.841267, 33.985821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800144, 36.696381, 33.504364>,  <37.131508, 36.617424, 33.322834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800144, 36.696381, 33.504364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626919, 36.669014, 33.863869>,  <37.522984, 36.652596, 34.079571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626919, 36.669014, 33.863869>,  <37.800144, 36.696381, 33.504364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626919, 36.669014, 33.863869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766478, -0.552648, 0.327249,
		0.474311, 0.830602, 0.291770,
		-0.433060, -0.068417, 0.898765,
		37.497002, 36.648487, 34.133499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351269, 36.511009, 34.038853>,  <37.800144, 36.696381, 33.504364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351269, 36.511009, 34.038853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012192, 36.443527, 34.240036>,  <37.808746, 36.403038, 34.360744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012192, 36.443527, 34.240036>,  <38.351269, 36.511009, 34.038853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012192, 36.443527, 34.240036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423938, -0.785369, 0.451078,
		0.318906, 0.595595, 0.737269,
		-0.847688, -0.168705, 0.502955,
		37.757885, 36.392918, 34.390923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571415, 36.449554, 34.761318>,  <38.351269, 36.511009, 34.038853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571415, 36.449554, 34.761318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223476, 36.258644, 34.711391>,  <38.014713, 36.144096, 34.681435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223476, 36.258644, 34.711391>,  <38.571415, 36.449554, 34.761318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223476, 36.258644, 34.711391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406913, -0.837178, 0.365452,
		-0.278919, 0.267095, 0.922423,
		-0.869843, -0.477278, -0.124820,
		37.962524, 36.115459, 34.673946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564110, 36.142437, 35.373760>,  <38.571415, 36.449554, 34.761318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564110, 36.142437, 35.373760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305576, 35.961132, 35.128223>,  <38.150455, 35.852348, 34.980900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305576, 35.961132, 35.128223>,  <38.564110, 36.142437, 35.373760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305576, 35.961132, 35.128223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213809, -0.879808, 0.424527,
		-0.732488, 0.143141, 0.665562,
		-0.646334, -0.453264, -0.613844,
		38.111675, 35.825153, 34.944069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288101, 35.614582, 35.796242>,  <38.564110, 36.142437, 35.373760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288101, 35.614582, 35.796242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219784, 35.485722, 35.423782>,  <38.178795, 35.408405, 35.200306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219784, 35.485722, 35.423782>,  <38.288101, 35.614582, 35.796242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219784, 35.485722, 35.423782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121850, -0.944690, 0.304489,
		-0.977744, -0.061457, 0.200600,
		-0.170792, -0.322156, -0.931153,
		38.168545, 35.389076, 35.144436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125847, 34.947861, 35.930584>,  <38.288101, 35.614582, 35.796242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125847, 34.947861, 35.930584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221466, 34.959499, 35.542355>,  <38.278839, 34.966484, 35.309418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221466, 34.959499, 35.542355>,  <38.125847, 34.947861, 35.930584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221466, 34.959499, 35.542355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231706, -0.972385, 0.027917,
		-0.942957, -0.231561, -0.239192,
		0.239051, 0.029098, -0.970571,
		38.293182, 34.968227, 35.251183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706291, 34.413761, 35.546810>,  <38.125847, 34.947861, 35.930584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706291, 34.413761, 35.546810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045563, 34.485939, 35.347599>,  <38.249126, 34.529247, 35.228073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045563, 34.485939, 35.347599>,  <37.706291, 34.413761, 35.546810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045563, 34.485939, 35.347599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265683, -0.958296, 0.105265,
		-0.458259, -0.221600, -0.860751,
		0.848181, 0.180448, -0.498024,
		38.300018, 34.540073, 35.198193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745770, 33.876125, 35.077076>,  <37.706291, 34.413761, 35.546810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745770, 33.876125, 35.077076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115234, 34.022583, 35.122299>,  <38.336914, 34.110458, 35.149433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115234, 34.022583, 35.122299>,  <37.745770, 33.876125, 35.077076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115234, 34.022583, 35.122299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327811, -0.907775, 0.261695,
		0.198447, -0.204658, -0.958506,
		0.923666, 0.366142, 0.113057,
		38.392334, 34.132427, 35.156216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198421, 33.517338, 34.567326>,  <37.745770, 33.876125, 35.077076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198421, 33.517338, 34.567326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429794, 33.650066, 34.865402>,  <38.568619, 33.729706, 35.044247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429794, 33.650066, 34.865402>,  <38.198421, 33.517338, 34.567326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429794, 33.650066, 34.865402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250481, -0.941643, 0.224873,
		0.776318, 0.056581, -0.627796,
		0.578436, 0.331825, 0.745187,
		38.603325, 33.749615, 35.088959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816109, 33.132950, 34.582771>,  <38.198421, 33.517338, 34.567326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816109, 33.132950, 34.582771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780575, 33.301994, 34.943550>,  <38.759254, 33.403423, 35.160015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780575, 33.301994, 34.943550>,  <38.816109, 33.132950, 34.582771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780575, 33.301994, 34.943550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041421, -0.903174, 0.427271,
		0.995185, 0.075317, 0.062729,
		-0.088836, 0.422615, 0.901945,
		38.753925, 33.428780, 35.214134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310463, 32.767902, 34.905773>,  <38.816109, 33.132950, 34.582771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310463, 32.767902, 34.905773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072041, 32.936634, 35.179058>,  <38.928986, 33.037872, 35.343029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072041, 32.936634, 35.179058>,  <39.310463, 32.767902, 34.905773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072041, 32.936634, 35.179058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136659, -0.891767, 0.431366,
		0.791227, 0.163752, 0.589191,
		-0.596057, 0.421826, 0.683211,
		38.893223, 33.063183, 35.384022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471951, 32.365902, 35.482311>,  <39.310463, 32.767902, 34.905773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471951, 32.365902, 35.482311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119118, 32.527718, 35.578869>,  <38.907417, 32.624805, 35.636803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119118, 32.527718, 35.578869>,  <39.471951, 32.365902, 35.482311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119118, 32.527718, 35.578869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240867, -0.827678, 0.506885,
		0.404854, 0.388971, 0.827523,
		-0.882086, 0.404537, 0.241399,
		38.854492, 32.649078, 35.651287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429844, 32.470421, 36.210228>,  <39.471951, 32.365902, 35.482311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429844, 32.470421, 36.210228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039944, 32.490494, 36.123184>,  <38.806004, 32.502537, 36.070957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039944, 32.490494, 36.123184>,  <39.429844, 32.470421, 36.210228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039944, 32.490494, 36.123184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199052, -0.636970, 0.744746,
		-0.101235, 0.769253, 0.630873,
		-0.974746, 0.050182, -0.217605,
		38.747520, 32.505547, 36.057903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047592, 32.296623, 36.840836>,  <39.429844, 32.470421, 36.210228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047592, 32.296623, 36.840836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759857, 32.244133, 36.567974>,  <38.587215, 32.212639, 36.404259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759857, 32.244133, 36.567974>,  <39.047592, 32.296623, 36.840836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759857, 32.244133, 36.567974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400149, -0.724431, 0.561321,
		-0.567830, 0.676743, 0.468603,
		-0.719340, -0.131223, -0.682151,
		38.544056, 32.204765, 36.363327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456364, 32.168613, 37.219723>,  <39.047592, 32.296623, 36.840836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456364, 32.168613, 37.219723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326660, 32.069653, 36.854507>,  <38.248837, 32.010277, 36.635376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326660, 32.069653, 36.854507>,  <38.456364, 32.168613, 37.219723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326660, 32.069653, 36.854507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789310, -0.461223, 0.405294,
		-0.521386, 0.852095, -0.045718,
		-0.324262, -0.247400, -0.913043,
		38.229382, 31.995432, 36.580593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670910, 32.353619, 37.160107>,  <38.456364, 32.168613, 37.219723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670910, 32.353619, 37.160107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767265, 32.034939, 36.938389>,  <37.825077, 31.843731, 36.805359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767265, 32.034939, 36.938389>,  <37.670910, 32.353619, 37.160107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767265, 32.034939, 36.938389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678262, -0.546693, 0.491008,
		-0.694214, 0.257679, -0.672063,
		0.240889, -0.796699, -0.554296,
		37.839531, 31.795929, 36.772099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050476, 32.029335, 36.847832>,  <37.670910, 32.353619, 37.160107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050476, 32.029335, 36.847832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343143, 31.760593, 36.893913>,  <37.518745, 31.599348, 36.921562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343143, 31.760593, 36.893913>,  <37.050476, 32.029335, 36.847832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343143, 31.760593, 36.893913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559337, -0.495138, 0.664816,
		-0.389619, -0.550861, -0.738071,
		0.731668, -0.671855, 0.115202,
		37.562645, 31.559036, 36.928474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853424, 31.480526, 37.364845>,  <37.050476, 32.029335, 36.847832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853424, 31.480526, 37.364845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166626, 31.269541, 37.232971>,  <37.354546, 31.142950, 37.153847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166626, 31.269541, 37.232971>,  <36.853424, 31.480526, 37.364845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166626, 31.269541, 37.232971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139601, -0.665519, 0.733210,
		-0.606150, -0.528081, -0.594738,
		0.783003, -0.527461, -0.329683,
		37.401527, 31.111301, 37.134068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646164, 30.907265, 37.093063>,  <36.853424, 31.480526, 37.364845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646164, 30.907265, 37.093063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014206, 30.890980, 37.248882>,  <37.235031, 30.881208, 37.342373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014206, 30.890980, 37.248882>,  <36.646164, 30.907265, 37.093063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014206, 30.890980, 37.248882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350730, -0.528361, 0.773190,
		0.174346, -0.848043, -0.500426,
		0.920104, -0.040712, 0.389551,
		37.290237, 30.878767, 37.365749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843246, 30.087830, 37.298771>,  <36.646164, 30.907265, 37.093063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843246, 30.087830, 37.298771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018188, 30.375280, 37.515030>,  <37.123154, 30.547750, 37.644783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018188, 30.375280, 37.515030>,  <36.843246, 30.087830, 37.298771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018188, 30.375280, 37.515030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308382, -0.444892, 0.840816,
		0.844760, -0.534462, 0.027035,
		0.437357, 0.718625, 0.540646,
		37.149395, 30.590868, 37.677223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278896, 29.781197, 37.812981>,  <36.843246, 30.087830, 37.298771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278896, 29.781197, 37.812981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137451, 30.132126, 37.942757>,  <37.052586, 30.342684, 38.020622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137451, 30.132126, 37.942757>,  <37.278896, 29.781197, 37.812981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137451, 30.132126, 37.942757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490252, -0.469219, 0.734497,
		0.796625, 0.100672, 0.596033,
		-0.353613, 0.877325, 0.324437,
		37.031368, 30.395323, 38.040089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970192, 29.639465, 38.380695>,  <37.278896, 29.781197, 37.812981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970192, 29.639465, 38.380695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870853, 30.026176, 38.404896>,  <36.811249, 30.258204, 38.419415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870853, 30.026176, 38.404896>,  <36.970192, 29.639465, 38.380695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870853, 30.026176, 38.404896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460872, -0.172861, 0.870469,
		0.852009, 0.188298, 0.488491,
		-0.248349, 0.966780, 0.060498,
		36.796349, 30.316210, 38.423046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100773, 29.843405, 39.036983>,  <36.970192, 29.639465, 38.380695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100773, 29.843405, 39.036983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833790, 30.109898, 38.903934>,  <36.673599, 30.269793, 38.824104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833790, 30.109898, 38.903934>,  <37.100773, 29.843405, 39.036983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833790, 30.109898, 38.903934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489659, -0.056147, 0.870104,
		0.561014, 0.743629, 0.363702,
		-0.667456, 0.666231, -0.332625,
		36.633553, 30.309767, 38.804146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928123, 30.203140, 39.674992>,  <37.100773, 29.843405, 39.036983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928123, 30.203140, 39.674992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629242, 30.267666, 39.417103>,  <36.449913, 30.306381, 39.262367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629242, 30.267666, 39.417103>,  <36.928123, 30.203140, 39.674992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629242, 30.267666, 39.417103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660798, -0.076728, 0.746632,
		0.070974, 0.983916, 0.163927,
		-0.747201, 0.161314, -0.644724,
		36.405083, 30.316061, 39.223686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582714, 30.750383, 39.994179>,  <36.928123, 30.203140, 39.674992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582714, 30.750383, 39.994179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303318, 30.589195, 39.757629>,  <36.135681, 30.492483, 39.615700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303318, 30.589195, 39.757629>,  <36.582714, 30.750383, 39.994179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303318, 30.589195, 39.757629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557856, -0.210994, 0.802669,
		-0.448228, 0.890560, -0.077421,
		-0.698490, -0.402969, -0.591378,
		36.093773, 30.468304, 39.580215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882275, 30.950306, 40.195091>,  <36.582714, 30.750383, 39.994179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882275, 30.950306, 40.195091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792709, 30.618715, 39.990089>,  <35.738968, 30.419762, 39.867088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792709, 30.618715, 39.990089>,  <35.882275, 30.950306, 40.195091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792709, 30.618715, 39.990089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696831, -0.231472, 0.678857,
		-0.681386, 0.509137, -0.525825,
		-0.223918, -0.828975, -0.512505,
		35.725533, 30.370022, 39.836338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140087, 30.806448, 39.991158>,  <35.882275, 30.950306, 40.195091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140087, 30.806448, 39.991158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337254, 30.464457, 40.055710>,  <35.455555, 30.259262, 40.094440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337254, 30.464457, 40.055710>,  <35.140087, 30.806448, 39.991158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337254, 30.464457, 40.055710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551062, -0.163239, 0.818342,
		-0.673322, -0.492304, -0.551610,
		0.492918, -0.854979, 0.161377,
		35.485130, 30.207962, 40.104122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652943, 30.193926, 40.025024>,  <35.140087, 30.806448, 39.991158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652943, 30.193926, 40.025024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981667, 30.129675, 40.243683>,  <35.178902, 30.091124, 40.374878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981667, 30.129675, 40.243683>,  <34.652943, 30.193926, 40.025024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981667, 30.129675, 40.243683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569222, -0.189983, 0.799933,
		-0.024637, -0.968558, -0.247563,
		0.821815, -0.160627, 0.546644,
		35.228210, 30.081486, 40.407677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702957, 29.615973, 40.399590>,  <34.652943, 30.193926, 40.025024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702957, 29.615973, 40.399590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915970, 29.866428, 40.627399>,  <35.043777, 30.016701, 40.764084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915970, 29.866428, 40.627399>,  <34.702957, 29.615973, 40.399590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915970, 29.866428, 40.627399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386231, -0.418969, 0.821761,
		0.753149, -0.657583, 0.018719,
		0.532534, 0.626138, 0.569525,
		35.075729, 30.054270, 40.798256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705639, 28.967373, 40.228516>,  <34.702957, 29.615973, 40.399590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705639, 28.967373, 40.228516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367229, 28.756289, 40.258877>,  <34.164185, 28.629639, 40.277092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367229, 28.756289, 40.258877>,  <34.705639, 28.967373, 40.228516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367229, 28.756289, 40.258877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136601, 0.352168, 0.925914,
		-0.515345, 0.772980, -0.370029,
		-0.846026, -0.527712, 0.075898,
		34.113422, 28.597975, 40.281647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960129, 29.491739, 39.630173>,  <34.705639, 28.967373, 40.228516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960129, 29.491739, 39.630173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039227, 29.517618, 39.238926>,  <35.086685, 29.533146, 39.004177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039227, 29.517618, 39.238926>,  <34.960129, 29.491739, 39.630173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039227, 29.517618, 39.238926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967003, -0.176390, 0.183827,
		-0.160637, -0.982192, -0.097442,
		0.197741, 0.064697, -0.978117,
		35.098549, 29.537027, 38.945492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557346, 29.538439, 39.259121>,  <34.960129, 29.491739, 39.630173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557346, 29.538439, 39.259121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534832, 29.917423, 39.385075>,  <35.521324, 30.144814, 39.460648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534832, 29.917423, 39.385075>,  <35.557346, 29.538439, 39.259121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534832, 29.917423, 39.385075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650865, 0.273974, -0.708034,
		-0.757104, 0.165094, -0.632090,
		-0.056284, 0.947461, 0.314881,
		35.517948, 30.201662, 39.479538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309902, 29.998566, 38.668350>,  <35.557346, 29.538439, 39.259121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309902, 29.998566, 38.668350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535130, 30.183216, 38.942535>,  <35.670265, 30.294006, 39.107048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535130, 30.183216, 38.942535>,  <35.309902, 29.998566, 38.668350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535130, 30.183216, 38.942535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646968, 0.269848, -0.713172,
		-0.514188, 0.845036, -0.146713,
		0.563066, 0.461624, 0.685464,
		35.704048, 30.321703, 39.148174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420105, 30.704861, 38.478638>,  <35.309902, 29.998566, 38.668350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420105, 30.704861, 38.478638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723682, 30.595310, 38.714943>,  <35.905827, 30.529579, 38.856728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723682, 30.595310, 38.714943>,  <35.420105, 30.704861, 38.478638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723682, 30.595310, 38.714943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648612, 0.237747, -0.723035,
		0.057570, 0.931916, 0.358076,
		0.758939, -0.273877, 0.590765,
		35.951363, 30.513147, 38.892174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902290, 31.193655, 38.243923>,  <35.420105, 30.704861, 38.478638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902290, 31.193655, 38.243923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098522, 30.910713, 38.447483>,  <36.216263, 30.740948, 38.569618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098522, 30.910713, 38.447483>,  <35.902290, 31.193655, 38.243923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098522, 30.910713, 38.447483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836692, 0.219190, -0.501899,
		0.243474, 0.672016, 0.699368,
		0.490578, -0.707355, 0.508903,
		36.245697, 30.698507, 38.600155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336246, 31.460531, 38.787006>,  <35.902290, 31.193655, 38.243923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336246, 31.460531, 38.787006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491886, 31.131575, 38.620983>,  <36.585270, 30.934200, 38.521370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491886, 31.131575, 38.620983>,  <36.336246, 31.460531, 38.787006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491886, 31.131575, 38.620983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704869, 0.555884, -0.440629,
		0.593095, -0.121116, 0.795971,
		0.389100, -0.822389, -0.415062,
		36.608616, 30.884857, 38.496464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960987, 31.561901, 38.638672>,  <36.336246, 31.460531, 38.787006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960987, 31.561901, 38.638672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983910, 31.212292, 38.445675>,  <36.997662, 31.002527, 38.329876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983910, 31.212292, 38.445675>,  <36.960987, 31.561901, 38.638672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983910, 31.212292, 38.445675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767370, 0.347715, -0.538737,
		0.638639, -0.339383, 0.690623,
		0.057302, -0.874021, -0.482497,
		37.001099, 30.950085, 38.300926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643925, 31.515778, 38.414047>,  <36.960987, 31.561901, 38.638672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643925, 31.515778, 38.414047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486923, 31.217613, 38.198528>,  <37.392723, 31.038715, 38.069218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486923, 31.217613, 38.198528>,  <37.643925, 31.515778, 38.414047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486923, 31.217613, 38.198528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674785, 0.164691, -0.719404,
		0.624987, -0.645942, 0.438350,
		-0.392501, -0.745410, -0.538802,
		37.369171, 30.993990, 38.036888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105103, 30.990417, 38.669815>,  <37.643925, 31.515778, 38.414047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105103, 30.990417, 38.669815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997269, 30.613846, 38.588791>,  <37.932568, 30.387903, 38.540176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997269, 30.613846, 38.588791>,  <38.105103, 30.990417, 38.669815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997269, 30.613846, 38.588791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863809, -0.329387, 0.381233,
		-0.425626, -0.072202, 0.902014,
		-0.269586, -0.941430, -0.202565,
		37.916393, 30.331417, 38.528023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466385, 30.821846, 37.998184>,  <38.105103, 30.990417, 38.669815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466385, 30.821846, 37.998184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120968, 30.822044, 37.796471>,  <37.913719, 30.822163, 37.675442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120968, 30.822044, 37.796471>,  <38.466385, 30.821846, 37.998184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120968, 30.822044, 37.796471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406816, 0.591609, -0.696060,
		0.297990, -0.806225, -0.511081,
		-0.863541, 0.000497, -0.504279,
		37.861904, 30.822193, 37.645187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587677, 31.037598, 37.276810>,  <38.466385, 30.821846, 37.998184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587677, 31.037598, 37.276810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199612, 30.982128, 37.197266>,  <37.966770, 30.948847, 37.149540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199612, 30.982128, 37.197266>,  <38.587677, 31.037598, 37.276810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199612, 30.982128, 37.197266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087386, 0.565095, -0.820385,
		0.226140, -0.813288, -0.536118,
		-0.970167, -0.138673, -0.198860,
		37.908562, 30.940527, 37.137608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530014, 30.710861, 36.576427>,  <38.587677, 31.037598, 37.276810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530014, 30.710861, 36.576427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217926, 30.936159, 36.685246>,  <38.030674, 31.071339, 36.750538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217926, 30.936159, 36.685246>,  <38.530014, 30.710861, 36.576427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217926, 30.936159, 36.685246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121087, 0.562699, -0.817746,
		-0.613671, -0.605082, -0.507232,
		-0.780222, 0.563246, 0.272044,
		37.983860, 31.105133, 36.766857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051468, 30.862505, 36.000477>,  <38.530014, 30.710861, 36.576427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051468, 30.862505, 36.000477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027496, 31.189901, 36.229031>,  <38.013115, 31.386339, 36.366165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027496, 31.189901, 36.229031>,  <38.051468, 30.862505, 36.000477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027496, 31.189901, 36.229031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373213, 0.549273, -0.747670,
		-0.925808, 0.168442, -0.338389,
		-0.059929, 0.818490, 0.571386,
		38.009518, 31.435448, 36.400448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824955, 31.355043, 35.529503>,  <38.051468, 30.862505, 36.000477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824955, 31.355043, 35.529503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950935, 31.568874, 35.843197>,  <38.026524, 31.697174, 36.031414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950935, 31.568874, 35.843197>,  <37.824955, 31.355043, 35.529503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950935, 31.568874, 35.843197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289829, 0.732651, -0.615810,
		-0.903772, 0.421247, 0.075815,
		0.314954, 0.534579, 0.784238,
		38.045422, 31.729248, 36.078468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562962, 32.064999, 35.398849>,  <37.824955, 31.355043, 35.529503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562962, 32.064999, 35.398849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837639, 32.106678, 35.686626>,  <38.002445, 32.131687, 35.859291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837639, 32.106678, 35.686626>,  <37.562962, 32.064999, 35.398849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837639, 32.106678, 35.686626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339305, 0.829311, -0.443976,
		-0.642901, 0.548985, 0.534129,
		0.686696, 0.104200, 0.719438,
		38.043648, 32.137939, 35.902458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519276, 32.681404, 35.723511>,  <37.562962, 32.064999, 35.398849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519276, 32.681404, 35.723511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900215, 32.622562, 35.830383>,  <38.128780, 32.587257, 35.894508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900215, 32.622562, 35.830383>,  <37.519276, 32.681404, 35.723511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900215, 32.622562, 35.830383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220010, 0.938034, -0.267745,
		-0.211240, 0.313770, 0.925703,
		0.952352, -0.147106, 0.267183,
		38.185921, 32.578430, 35.910538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719296, 33.170837, 36.104343>,  <37.519276, 32.681404, 35.723511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719296, 33.170837, 36.104343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094887, 33.085678, 35.996273>,  <38.320240, 33.034580, 35.931431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094887, 33.085678, 35.996273>,  <37.719296, 33.170837, 36.104343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094887, 33.085678, 35.996273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146566, 0.958202, -0.245696,
		0.311192, 0.191104, 0.930934,
		0.938977, -0.212902, -0.270176,
		38.376579, 33.021809, 35.915222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199127, 33.726768, 36.294907>,  <37.719296, 33.170837, 36.104343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199127, 33.726768, 36.294907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396263, 33.506847, 36.025143>,  <38.514545, 33.374893, 35.863285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396263, 33.506847, 36.025143>,  <38.199127, 33.726768, 36.294907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396263, 33.506847, 36.025143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243728, 0.831276, -0.499577,
		0.835289, 0.081838, 0.543687,
		0.492838, -0.549802, -0.674409,
		38.544113, 33.341908, 35.822819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853424, 34.018116, 36.283211>,  <38.199127, 33.726768, 36.294907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853424, 34.018116, 36.283211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797661, 33.841663, 35.928593>,  <38.764202, 33.735790, 35.715820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797661, 33.841663, 35.928593>,  <38.853424, 34.018116, 36.283211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797661, 33.841663, 35.928593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303575, 0.833141, -0.462297,
		0.942554, -0.333579, 0.017774,
		-0.139404, -0.441136, -0.886547,
		38.755840, 33.709324, 35.662628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545113, 34.190159, 35.848404>,  <38.853424, 34.018116, 36.283211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545113, 34.190159, 35.848404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228256, 34.090576, 35.625504>,  <39.038143, 34.030827, 35.491764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228256, 34.090576, 35.625504>,  <39.545113, 34.190159, 35.848404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228256, 34.090576, 35.625504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034145, 0.893519, -0.447726,
		0.609381, -0.373690, -0.699293,
		-0.792142, -0.248959, -0.557253,
		38.990612, 34.015888, 35.458328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678062, 34.532803, 35.200298>,  <39.545113, 34.190159, 35.848404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678062, 34.532803, 35.200298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293976, 34.421959, 35.186481>,  <39.063522, 34.355453, 35.178192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293976, 34.421959, 35.186481>,  <39.678062, 34.532803, 35.200298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293976, 34.421959, 35.186481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202124, 0.775024, -0.598735,
		0.192684, -0.567934, -0.800202,
		-0.960218, -0.277107, -0.034542,
		39.005909, 34.338825, 35.176121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435207, 34.756687, 34.552395>,  <39.678062, 34.532803, 35.200298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435207, 34.756687, 34.552395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104836, 34.711102, 34.773247>,  <38.906612, 34.683750, 34.905758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104836, 34.711102, 34.773247>,  <39.435207, 34.756687, 34.552395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104836, 34.711102, 34.773247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383451, 0.831490, -0.401982,
		-0.413278, -0.543725, -0.730455,
		-0.825934, -0.113964, 0.552129,
		38.857056, 34.676914, 34.938885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032875, 34.296810, 34.637829>,  <39.435207, 34.756687, 34.552395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032875, 34.296810, 34.637829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968906, 34.691307, 34.621098>,  <39.930527, 34.928005, 34.611057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968906, 34.691307, 34.621098>,  <40.032875, 34.296810, 34.637829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968906, 34.691307, 34.621098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810164, -0.106924, 0.576369,
		0.563967, 0.126064, 0.816118,
		-0.159922, 0.986243, -0.041831,
		39.920929, 34.987179, 34.608547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624840, 34.133629, 34.174103>,  <40.032875, 34.296810, 34.637829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624840, 34.133629, 34.174103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713104, 34.226665, 34.552986>,  <40.766064, 34.282490, 34.780315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713104, 34.226665, 34.552986>,  <40.624840, 34.133629, 34.174103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713104, 34.226665, 34.552986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391182, -0.910724, 0.132505,
		0.893468, 0.341293, -0.291949,
		0.220662, 0.232594, 0.947211,
		40.779305, 34.296444, 34.837151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180511, 34.381866, 33.929882>,  <40.624840, 34.133629, 34.174103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180511, 34.381866, 33.929882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234604, 34.280807, 34.313107>,  <41.267059, 34.220173, 34.543041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234604, 34.280807, 34.313107>,  <41.180511, 34.381866, 33.929882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234604, 34.280807, 34.313107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815967, 0.576915, 0.036964,
		-0.562059, 0.776748, 0.284168,
		0.135229, -0.252648, 0.958062,
		41.275173, 34.205013, 34.600525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322815, 34.933407, 34.324619>,  <41.180511, 34.381866, 33.929882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322815, 34.933407, 34.324619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493107, 34.599987, 34.465450>,  <41.595284, 34.399937, 34.549950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493107, 34.599987, 34.465450>,  <41.322815, 34.933407, 34.324619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493107, 34.599987, 34.465450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904657, 0.384051, -0.184663,
		0.018711, 0.397123, 0.917575,
		0.425729, -0.833546, 0.352074,
		41.620827, 34.349922, 34.571072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787560, 34.975464, 34.911327>,  <41.322815, 34.933407, 34.324619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787560, 34.975464, 34.911327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904228, 34.682602, 34.665115>,  <41.974232, 34.506886, 34.517387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904228, 34.682602, 34.665115>,  <41.787560, 34.975464, 34.911327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904228, 34.682602, 34.665115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785451, 0.550584, -0.282708,
		0.545887, -0.401011, 0.735661,
		0.291674, -0.732153, -0.615531,
		41.991730, 34.462955, 34.480457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454220, 34.549614, 35.067230>,  <41.787560, 34.975464, 34.911327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454220, 34.549614, 35.067230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406525, 34.549988, 34.670086>,  <42.377907, 34.550213, 34.431797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406525, 34.549988, 34.670086>,  <42.454220, 34.549614, 35.067230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406525, 34.549988, 34.670086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884560, 0.454267, -0.105807,
		0.450928, -0.890865, -0.054991,
		-0.119240, 0.000931, -0.992865,
		42.370754, 34.550266, 34.372227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134151, 34.691833, 34.883839>,  <42.454220, 34.549614, 35.067230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134151, 34.691833, 34.883839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932819, 34.726177, 34.539909>,  <42.812019, 34.746784, 34.333553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932819, 34.726177, 34.539909>,  <43.134151, 34.691833, 34.883839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932819, 34.726177, 34.539909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808006, 0.399425, -0.433112,
		0.306247, -0.912737, -0.270414,
		-0.503328, 0.085857, -0.859820,
		42.781822, 34.751934, 34.281963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041641, 35.358360, 34.564793>,  <43.134151, 34.691833, 34.883839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041641, 35.358360, 34.564793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310993, 35.588020, 34.378494>,  <43.472603, 35.725815, 34.266716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310993, 35.588020, 34.378494>,  <43.041641, 35.358360, 34.564793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310993, 35.588020, 34.378494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070338, 0.577370, 0.813447,
		0.735945, -0.580516, 0.348404,
		0.673377, 0.574147, -0.465745,
		43.513008, 35.760265, 34.238770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710835, 35.440479, 34.917957>,  <43.041641, 35.358360, 34.564793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710835, 35.440479, 34.917957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648369, 35.773052, 34.704662>,  <43.610889, 35.972595, 34.576687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648369, 35.773052, 34.704662>,  <43.710835, 35.440479, 34.917957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648369, 35.773052, 34.704662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356310, 0.550928, 0.754667,
		0.921226, -0.072148, -0.382279,
		-0.156161, 0.831429, -0.533236,
		43.601521, 36.022480, 34.544693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438492, 35.767265, 34.800880>,  <43.710835, 35.440479, 34.917957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438492, 35.767265, 34.800880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119190, 36.007839, 34.813919>,  <43.927608, 36.152184, 34.821743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119190, 36.007839, 34.813919>,  <44.438492, 35.767265, 34.800880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119190, 36.007839, 34.813919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515744, 0.654571, 0.552761,
		0.311114, 0.458056, -0.832702,
		-0.798258, 0.601433, 0.032593,
		43.879711, 36.188271, 34.823696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384678, 36.441391, 34.385754>,  <44.438492, 35.767265, 34.800880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384678, 36.441391, 34.385754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204258, 36.464470, 34.742004>,  <44.096004, 36.478317, 34.955757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204258, 36.464470, 34.742004>,  <44.384678, 36.441391, 34.385754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204258, 36.464470, 34.742004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649565, 0.705571, 0.283257,
		-0.612061, 0.706286, -0.355726,
		-0.451051, 0.057697, 0.890631,
		44.068943, 36.481777, 35.009193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882385, 36.967789, 34.145256>,  <44.384678, 36.441391, 34.385754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882385, 36.967789, 34.145256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900200, 36.670139, 33.878635>,  <44.910889, 36.491550, 33.718662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900200, 36.670139, 33.878635>,  <44.882385, 36.967789, 34.145256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900200, 36.670139, 33.878635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919672, -0.230035, 0.318257,
		-0.390153, -0.627185, 0.674106,
		0.044538, -0.744126, -0.666553,
		44.913563, 36.446903, 33.678669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285015, 36.429283, 34.356522>,  <44.882385, 36.967789, 34.145256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285015, 36.429283, 34.356522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303139, 36.322735, 33.971401>,  <45.314011, 36.258804, 33.740330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303139, 36.322735, 33.971401>,  <45.285015, 36.429283, 34.356522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303139, 36.322735, 33.971401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706118, -0.673220, 0.219483,
		-0.706643, -0.689797, 0.157592,
		0.045305, -0.266375, -0.962804,
		45.316730, 36.242821, 33.682560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247879, 35.617123, 34.279526>,  <45.285015, 36.429283, 34.356522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247879, 35.617123, 34.279526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403854, 35.761837, 33.940807>,  <45.497440, 35.848667, 33.737576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403854, 35.761837, 33.940807>,  <45.247879, 35.617123, 34.279526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403854, 35.761837, 33.940807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711423, -0.702222, 0.027586,
		-0.584656, -0.613185, -0.531208,
		0.389941, 0.361786, -0.846792,
		45.520836, 35.870373, 33.686771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598183, 35.148930, 33.962734>,  <45.247879, 35.617123, 34.279526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.598183, 35.148930, 33.962734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783379, 35.443771, 33.765831>,  <45.894497, 35.620678, 33.647690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783379, 35.443771, 33.765831>,  <45.598183, 35.148930, 33.962734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783379, 35.443771, 33.765831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853823, -0.519990, 0.024428,
		-0.237962, -0.431609, -0.870108,
		0.462991, 0.737105, -0.492256,
		45.922276, 35.664902, 33.618153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950871, 34.900551, 33.285187>,  <45.598183, 35.148930, 33.962734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950871, 34.900551, 33.285187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121876, 35.207481, 33.476372>,  <46.224480, 35.391640, 33.591084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121876, 35.207481, 33.476372>,  <45.950871, 34.900551, 33.285187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121876, 35.207481, 33.476372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851125, -0.519827, 0.073251,
		0.304664, 0.375488, -0.875322,
		0.427511, 0.767326, 0.477960,
		46.250130, 35.437679, 33.619759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518608, 35.236763, 32.916721>,  <45.950871, 34.900551, 33.285187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.518608, 35.236763, 32.916721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518764, 35.225594, 33.316566>,  <46.518860, 35.218891, 33.556473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518764, 35.225594, 33.316566>,  <46.518608, 35.236763, 32.916721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518764, 35.225594, 33.316566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805192, -0.592773, -0.016878,
		0.593014, 0.804885, 0.022255,
		0.000393, -0.027929, 0.999610,
		46.518883, 35.217216, 33.616451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.247086, 35.372715, 33.150284>,  <46.518608, 35.236763, 32.916721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.247086, 35.372715, 33.150284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071739, 35.196911, 33.463886>,  <46.966530, 35.091431, 33.652046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071739, 35.196911, 33.463886>,  <47.247086, 35.372715, 33.150284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071739, 35.196911, 33.463886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780635, -0.618509, 0.089754,
		0.445467, 0.651368, 0.614230,
		-0.438370, -0.439507, 0.784006,
		46.940228, 35.065060, 33.699089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.712429, 35.427250, 33.764435>,  <47.247086, 35.372715, 33.150284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.712429, 35.427250, 33.764435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.465557, 35.119904, 33.832207>,  <47.317432, 34.935497, 33.872868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.465557, 35.119904, 33.832207>,  <47.712429, 35.427250, 33.764435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.465557, 35.119904, 33.832207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782063, -0.575420, 0.239308,
		-0.086384, 0.280199, 0.956047,
		-0.617183, -0.768362, 0.169426,
		47.280403, 34.889397, 33.883034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.871033, 35.431648, 34.414341>,  <47.712429, 35.427250, 33.764435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.871033, 35.431648, 34.414341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720512, 35.773457, 34.557556>,  <47.630199, 35.978542, 34.643486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720512, 35.773457, 34.557556>,  <47.871033, 35.431648, 34.414341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720512, 35.773457, 34.557556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690037, -0.516368, 0.507163,
		0.618261, -0.056215, 0.783960,
		-0.376301, 0.854520, 0.358040,
		47.607620, 36.029812, 34.664967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721241, 35.395084, 35.230293>,  <47.871033, 35.431648, 34.414341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721241, 35.395084, 35.230293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579578, 35.031860, 35.140842>,  <47.494583, 34.813927, 35.087173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579578, 35.031860, 35.140842>,  <47.721241, 35.395084, 35.230293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.579578, 35.031860, 35.140842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813779, 0.417060, -0.404752,
		0.460804, 0.038638, -0.886661,
		-0.354152, -0.908057, -0.223626,
		47.473331, 34.759441, 35.073757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.930431, 38.520458, 27.903452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690334, 38.277367, 27.695461>,  <33.546276, 38.131512, 27.570667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690334, 38.277367, 27.695461>,  <33.930431, 38.520458, 27.903452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690334, 38.277367, 27.695461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418069, -0.792634, 0.443791,
		-0.681856, 0.048995, 0.729844,
		-0.600242, -0.607727, -0.519979,
		33.510262, 38.095047, 27.539467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632256, 38.060734, 28.471951>,  <33.930431, 38.520458, 27.903452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632256, 38.060734, 28.471951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.575203, 37.870598, 28.124685>,  <33.540970, 37.756516, 27.916327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.575203, 37.870598, 28.124685>,  <33.632256, 38.060734, 28.471951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575203, 37.870598, 28.124685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264528, -0.863532, 0.429344,
		-0.953772, -0.168414, 0.248910,
		-0.142634, -0.475340, -0.868163,
		33.532413, 37.727997, 27.864237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270962, 37.476246, 28.670395>,  <33.632256, 38.060734, 28.471951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270962, 37.476246, 28.670395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.435501, 37.396709, 28.314585>,  <33.534225, 37.348988, 28.101099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.435501, 37.396709, 28.314585>,  <33.270962, 37.476246, 28.670395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435501, 37.396709, 28.314585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331490, -0.876450, 0.349214,
		-0.849061, -0.438517, -0.294614,
		0.411351, -0.198842, -0.889524,
		33.558907, 37.337055, 28.047728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846516, 36.889908, 28.320322>,  <33.270962, 37.476246, 28.670395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846516, 36.889908, 28.320322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.220528, 36.912357, 28.180286>,  <33.444935, 36.925827, 28.096264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.220528, 36.912357, 28.180286>,  <32.846516, 36.889908, 28.320322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220528, 36.912357, 28.180286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177625, -0.928705, 0.325511,
		-0.306860, -0.366548, -0.878339,
		0.935033, 0.056128, -0.350090,
		33.501038, 36.929195, 28.075260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821064, 36.329052, 27.939293>,  <32.846516, 36.889908, 28.320322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821064, 36.329052, 27.939293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196217, 36.429893, 28.034643>,  <33.421307, 36.490398, 28.091854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196217, 36.429893, 28.034643>,  <32.821064, 36.329052, 27.939293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196217, 36.429893, 28.034643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198289, -0.953259, 0.227988,
		0.284710, -0.166558, -0.944033,
		0.937881, 0.252101, 0.238376,
		33.477581, 36.505524, 28.106155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311810, 35.731697, 27.674183>,  <32.821064, 36.329052, 27.939293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311810, 35.731697, 27.674183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.529831, 35.944843, 27.933094>,  <33.660645, 36.072731, 28.088440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.529831, 35.944843, 27.933094>,  <33.311810, 35.731697, 27.674183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529831, 35.944843, 27.933094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260352, -0.841445, 0.473484,
		0.796955, -0.089553, -0.597364,
		0.545051, 0.532870, 0.647278,
		33.693348, 36.104706, 28.127277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719761, 35.205662, 27.881659>,  <33.311810, 35.731697, 27.674183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719761, 35.205662, 27.881659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.825184, 35.486702, 28.146049>,  <33.888439, 35.655327, 28.304684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.825184, 35.486702, 28.146049>,  <33.719761, 35.205662, 27.881659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825184, 35.486702, 28.146049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302752, -0.710832, 0.634870,
		0.915902, 0.032785, -0.400061,
		0.263562, 0.702598, 0.660978,
		33.904251, 35.697483, 28.344343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379734, 35.029797, 28.020027>,  <33.719761, 35.205662, 27.881659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379734, 35.029797, 28.020027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.270691, 35.281044, 28.311546>,  <34.205265, 35.431793, 28.486458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.270691, 35.281044, 28.311546>,  <34.379734, 35.029797, 28.020027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270691, 35.281044, 28.311546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555377, -0.515811, 0.652299,
		0.785646, 0.582581, -0.208230,
		-0.272610, 0.628122, 0.728798,
		34.188908, 35.469482, 28.530186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960625, 35.291618, 28.350513>,  <34.379734, 35.029797, 28.020027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960625, 35.291618, 28.350513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661476, 35.322952, 28.614197>,  <34.481987, 35.341751, 28.772406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661476, 35.322952, 28.614197>,  <34.960625, 35.291618, 28.350513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661476, 35.322952, 28.614197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499360, -0.587922, 0.636386,
		0.437412, 0.805116, 0.400574,
		-0.747871, 0.078333, 0.659207,
		34.437115, 35.346451, 28.811958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299248, 35.378643, 28.913965>,  <34.960625, 35.291618, 28.350513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299248, 35.378643, 28.913965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.936367, 35.283466, 29.052736>,  <34.718636, 35.226360, 29.136000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.936367, 35.283466, 29.052736>,  <35.299248, 35.378643, 28.913965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936367, 35.283466, 29.052736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419703, -0.568272, 0.707755,
		0.028742, 0.787686, 0.615406,
		-0.907206, -0.237945, 0.346927,
		34.664204, 35.212082, 29.156815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283646, 35.579323, 29.613203>,  <35.299248, 35.378643, 28.913965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283646, 35.579323, 29.613203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.998226, 35.299194, 29.621111>,  <34.826973, 35.131115, 29.625856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.998226, 35.299194, 29.621111>,  <35.283646, 35.579323, 29.613203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998226, 35.299194, 29.621111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465043, -0.452341, 0.761001,
		-0.524004, 0.552207, 0.648449,
		-0.713550, -0.700325, 0.019772,
		34.784161, 35.089096, 29.627043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969887, 35.537865, 30.281260>,  <35.283646, 35.579323, 29.613203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969887, 35.537865, 30.281260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894524, 35.181171, 30.116667>,  <34.849304, 34.967155, 30.017912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894524, 35.181171, 30.116667>,  <34.969887, 35.537865, 30.281260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894524, 35.181171, 30.116667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483054, -0.448944, 0.751736,
		-0.855078, -0.057131, 0.515342,
		-0.188413, -0.891732, -0.411480,
		34.838001, 34.913651, 29.993223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605213, 35.131771, 30.772839>,  <34.969887, 35.537865, 30.281260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605213, 35.131771, 30.772839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.775204, 34.852573, 30.542290>,  <34.877197, 34.685055, 30.403961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.775204, 34.852573, 30.542290>,  <34.605213, 35.131771, 30.772839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775204, 34.852573, 30.542290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242347, -0.525753, 0.815385,
		-0.872159, -0.486202, -0.054278,
		0.424978, -0.697991, -0.576370,
		34.902699, 34.643177, 30.369379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563847, 34.564640, 31.163223>,  <34.605213, 35.131771, 30.772839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563847, 34.564640, 31.163223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.820438, 34.458958, 30.875141>,  <34.974392, 34.395550, 30.702291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.820438, 34.458958, 30.875141>,  <34.563847, 34.564640, 31.163223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820438, 34.458958, 30.875141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446091, -0.635305, 0.630390,
		-0.624104, -0.725660, -0.289675,
		0.641480, -0.264208, -0.720207,
		35.012882, 34.379696, 30.659079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667614, 33.863918, 31.203621>,  <34.563847, 34.564640, 31.163223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667614, 33.863918, 31.203621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990307, 33.986778, 31.001698>,  <35.183922, 34.060493, 30.880543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990307, 33.986778, 31.001698>,  <34.667614, 33.863918, 31.203621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990307, 33.986778, 31.001698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583448, -0.549396, 0.598124,
		-0.093624, -0.777058, -0.622427,
		0.806736, 0.307155, -0.504809,
		35.232327, 34.078926, 30.850254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044033, 33.336685, 31.010481>,  <34.667614, 33.863918, 31.203621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044033, 33.336685, 31.010481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341503, 33.603996, 31.002934>,  <35.519985, 33.764381, 30.998405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341503, 33.603996, 31.002934>,  <35.044033, 33.336685, 31.010481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341503, 33.603996, 31.002934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660837, -0.730535, 0.172085,
		0.101218, -0.140442, -0.984901,
		0.743673, 0.668277, -0.018866,
		35.564606, 33.804478, 30.997274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646656, 33.080456, 30.641497>,  <35.044033, 33.336685, 31.010481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646656, 33.080456, 30.641497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818359, 33.375816, 30.849535>,  <35.921383, 33.553032, 30.974358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818359, 33.375816, 30.849535>,  <35.646656, 33.080456, 30.641497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818359, 33.375816, 30.849535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784028, -0.590518, 0.191281,
		0.448368, 0.325660, -0.832413,
		0.429263, 0.738399, 0.520096,
		35.947140, 33.597336, 31.005564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426628, 33.024155, 30.501444>,  <35.646656, 33.080456, 30.641497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426628, 33.024155, 30.501444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390133, 33.248081, 30.830875>,  <36.368237, 33.382439, 31.028534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390133, 33.248081, 30.830875>,  <36.426628, 33.024155, 30.501444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390133, 33.248081, 30.830875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806587, -0.443488, 0.390814,
		0.584031, 0.699944, -0.411079,
		-0.091239, 0.559819, 0.823577,
		36.362762, 33.416027, 31.077948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059509, 33.140148, 30.651318>,  <36.426628, 33.024155, 30.501444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059509, 33.140148, 30.651318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.870884, 33.221424, 30.994558>,  <36.757710, 33.270191, 31.200502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.870884, 33.221424, 30.994558>,  <37.059509, 33.140148, 30.651318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870884, 33.221424, 30.994558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800742, -0.308935, 0.513198,
		0.369374, 0.929125, -0.017019,
		-0.471567, 0.203190, 0.858102,
		36.729412, 33.282379, 31.251989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601078, 33.214554, 31.100000>,  <37.059509, 33.140148, 30.651318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601078, 33.214554, 31.100000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287064, 33.161469, 31.342024>,  <37.098656, 33.129616, 31.487238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287064, 33.161469, 31.342024>,  <37.601078, 33.214554, 31.100000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287064, 33.161469, 31.342024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587399, -0.469592, 0.659125,
		0.196656, 0.872852, 0.446605,
		-0.785041, -0.132715, 0.605060,
		37.051552, 33.121655, 31.523542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868000, 33.139019, 31.713314>,  <37.601078, 33.214554, 31.100000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868000, 33.139019, 31.713314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508953, 32.969986, 31.763432>,  <37.293526, 32.868565, 31.793503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508953, 32.969986, 31.763432>,  <37.868000, 33.139019, 31.713314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508953, 32.969986, 31.763432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313174, -0.411432, 0.855947,
		-0.310159, 0.807556, 0.501652,
		-0.897621, -0.422585, 0.125296,
		37.239666, 32.843212, 31.801020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836639, 33.117809, 32.364719>,  <37.868000, 33.139019, 31.713314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836639, 33.117809, 32.364719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560703, 32.842579, 32.274673>,  <37.395142, 32.677441, 32.220646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560703, 32.842579, 32.274673>,  <37.836639, 33.117809, 32.364719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560703, 32.842579, 32.274673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221228, -0.496428, 0.839415,
		-0.689334, 0.529259, 0.494676,
		-0.689839, -0.688073, -0.225118,
		37.353752, 32.636158, 32.207138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457279, 33.105904, 32.859596>,  <37.836639, 33.117809, 32.364719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457279, 33.105904, 32.859596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.731800, 33.395042, 32.891788>,  <38.896515, 33.568527, 32.911102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.731800, 33.395042, 32.891788>,  <38.457279, 33.105904, 32.859596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731800, 33.395042, 32.891788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654063, 0.661791, -0.366380,
		-0.318098, 0.198809, 0.926978,
		0.686305, 0.722847, 0.080481,
		38.937691, 33.611897, 32.915932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114769, 33.883190, 32.756733>,  <38.457279, 33.105904, 32.859596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114769, 33.883190, 32.756733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.495300, 33.975388, 32.674904>,  <38.723618, 34.030708, 32.625809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.495300, 33.975388, 32.674904>,  <38.114769, 33.883190, 32.756733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495300, 33.975388, 32.674904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306817, 0.770789, -0.558343,
		0.028984, 0.593932, 0.803993,
		0.951327, 0.230496, -0.204569,
		38.780697, 34.044537, 32.613533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080559, 34.613480, 32.678551>,  <38.114769, 33.883190, 32.756733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080559, 34.613480, 32.678551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421448, 34.522789, 32.489948>,  <38.625980, 34.468376, 32.376785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421448, 34.522789, 32.489948>,  <38.080559, 34.613480, 32.678551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421448, 34.522789, 32.489948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183556, 0.714365, -0.675271,
		0.489928, 0.662027, 0.567178,
		0.852219, -0.226725, -0.471506,
		38.677113, 34.454773, 32.348495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355789, 35.224739, 32.511555>,  <38.080559, 34.613480, 32.678551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355789, 35.224739, 32.511555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564411, 34.988426, 32.265320>,  <38.689587, 34.846638, 32.117577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564411, 34.988426, 32.265320>,  <38.355789, 35.224739, 32.511555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564411, 34.988426, 32.265320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092794, 0.677941, -0.729237,
		0.848154, 0.437463, 0.298765,
		0.521559, -0.590781, -0.615592,
		38.720879, 34.811192, 32.080643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767830, 35.620171, 32.154102>,  <38.355789, 35.224739, 32.511555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767830, 35.620171, 32.154102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.697567, 35.292015, 31.936440>,  <38.655407, 35.095123, 31.805841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.697567, 35.292015, 31.936440>,  <38.767830, 35.620171, 32.154102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697567, 35.292015, 31.936440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282327, 0.571513, -0.770496,
		0.943099, 0.018286, -0.332009,
		-0.175659, -0.820389, -0.544156,
		38.644871, 35.045898, 31.773193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925072, 35.982475, 31.521681>,  <38.767830, 35.620171, 32.154102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925072, 35.982475, 31.521681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769424, 35.627243, 31.423782>,  <38.676037, 35.414104, 31.365044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769424, 35.627243, 31.423782>,  <38.925072, 35.982475, 31.521681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769424, 35.627243, 31.423782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296722, 0.372363, -0.879376,
		0.872089, -0.269563, -0.408407,
		-0.389123, -0.888078, -0.244748,
		38.652687, 35.360821, 31.350357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247906, 35.725349, 30.878609>,  <38.925072, 35.982475, 31.521681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247906, 35.725349, 30.878609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892014, 35.545940, 30.912554>,  <38.678478, 35.438293, 30.932920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892014, 35.545940, 30.912554>,  <39.247906, 35.725349, 30.878609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892014, 35.545940, 30.912554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285729, 0.402229, -0.869811,
		0.355995, -0.798148, -0.486033,
		-0.889734, -0.448522, 0.084863,
		38.625095, 35.411385, 30.938011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127693, 35.587524, 30.238108>,  <39.247906, 35.725349, 30.878609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127693, 35.587524, 30.238108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769730, 35.550888, 30.412809>,  <38.554951, 35.528908, 30.517630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769730, 35.550888, 30.412809>,  <39.127693, 35.587524, 30.238108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769730, 35.550888, 30.412809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422247, 0.490469, -0.762330,
		-0.144391, -0.866632, -0.477598,
		-0.894907, -0.091591, 0.436753,
		38.501259, 35.523411, 30.543835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666096, 35.462448, 29.660913>,  <39.127693, 35.587524, 30.238108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666096, 35.462448, 29.660913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426281, 35.606689, 29.946716>,  <38.282391, 35.693233, 30.118198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426281, 35.606689, 29.946716>,  <38.666096, 35.462448, 29.660913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426281, 35.606689, 29.946716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478012, 0.554693, -0.681043,
		-0.641918, -0.749854, -0.160187,
		-0.599538, 0.360602, 0.714507,
		38.246418, 35.714870, 30.161068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980122, 35.473797, 29.373070>,  <38.666096, 35.462448, 29.660913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980122, 35.473797, 29.373070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011810, 35.736435, 29.673100>,  <38.030823, 35.894016, 29.853117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011810, 35.736435, 29.673100>,  <37.980122, 35.473797, 29.373070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011810, 35.736435, 29.673100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551389, 0.655718, -0.515757,
		-0.830478, -0.372721, 0.413987,
		0.079225, 0.656592, 0.750073,
		38.035576, 35.933414, 29.898121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325226, 35.639362, 29.461720>,  <37.980122, 35.473797, 29.373070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325226, 35.639362, 29.461720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540329, 35.936523, 29.621178>,  <37.669392, 36.114819, 29.716852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540329, 35.936523, 29.621178>,  <37.325226, 35.639362, 29.461720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540329, 35.936523, 29.621178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627325, 0.668475, -0.399504,
		-0.563275, -0.035243, 0.825517,
		0.537758, 0.742899, 0.398644,
		37.701656, 36.159393, 29.740770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771320, 36.095009, 29.709873>,  <37.325226, 35.639362, 29.461720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771320, 36.095009, 29.709873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099304, 36.319134, 29.663038>,  <37.296097, 36.453609, 29.634937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099304, 36.319134, 29.663038>,  <36.771320, 36.095009, 29.709873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099304, 36.319134, 29.663038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548718, 0.711146, -0.439522,
		-0.163004, 0.424639, 0.890568,
		0.819962, 0.560315, -0.117087,
		37.345291, 36.487228, 29.627913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749317, 36.784847, 30.097410>,  <36.771320, 36.095009, 29.709873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749317, 36.784847, 30.097410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020363, 36.842632, 29.808975>,  <37.182991, 36.877304, 29.635914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020363, 36.842632, 29.808975>,  <36.749317, 36.784847, 30.097410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020363, 36.842632, 29.808975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412966, 0.886073, -0.210556,
		0.608517, 0.440460, 0.660077,
		0.677618, 0.144463, -0.721085,
		37.223648, 36.885971, 29.592649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825096, 37.504551, 30.085846>,  <36.749317, 36.784847, 30.097410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825096, 37.504551, 30.085846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034611, 37.430840, 29.753174>,  <37.160320, 37.386612, 29.553570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034611, 37.430840, 29.753174>,  <36.825096, 37.504551, 30.085846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034611, 37.430840, 29.753174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326680, 0.858222, -0.395897,
		0.786720, 0.479058, 0.389325,
		0.523785, -0.184276, -0.831680,
		37.191746, 37.375557, 29.503670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277790, 38.080414, 29.873276>,  <36.825096, 37.504551, 30.085846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277790, 38.080414, 29.873276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176449, 37.888840, 29.537077>,  <37.115643, 37.773895, 29.335358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176449, 37.888840, 29.537077>,  <37.277790, 38.080414, 29.873276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176449, 37.888840, 29.537077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357059, 0.853791, -0.378879,
		0.899067, 0.204116, -0.387319,
		-0.253355, -0.478933, -0.840497,
		37.100441, 37.745159, 29.284927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402523, 38.660843, 29.306322>,  <37.277790, 38.080414, 29.873276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402523, 38.660843, 29.306322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179230, 38.363895, 29.158125>,  <37.045254, 38.185726, 29.069206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179230, 38.363895, 29.158125>,  <37.402523, 38.660843, 29.306322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179230, 38.363895, 29.158125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543592, 0.664610, -0.512642,
		0.626801, -0.084778, -0.774553,
		-0.558236, -0.742366, -0.370493,
		37.011761, 38.141186, 29.046976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426647, 38.708176, 28.467728>,  <37.402523, 38.660843, 29.306322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426647, 38.708176, 28.467728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117653, 38.477844, 28.574825>,  <36.932255, 38.339645, 28.639084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117653, 38.477844, 28.574825>,  <37.426647, 38.708176, 28.467728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117653, 38.477844, 28.574825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595615, 0.510763, -0.619970,
		0.220240, -0.638393, -0.737529,
		-0.772487, -0.575826, 0.267746,
		36.885906, 38.305096, 28.655149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164219, 38.579002, 27.898710>,  <37.426647, 38.708176, 28.467728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164219, 38.579002, 27.898710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854397, 38.512543, 28.142828>,  <36.668503, 38.472668, 28.289299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854397, 38.512543, 28.142828>,  <37.164219, 38.579002, 27.898710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854397, 38.512543, 28.142828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568279, 0.606450, -0.556127,
		-0.277714, -0.777569, -0.564146,
		-0.774554, -0.166148, 0.610296,
		36.622032, 38.462700, 28.325916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.990047, 38.192238, 27.450705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995857, 38.362438, 27.812641>,  <35.999344, 38.464558, 28.029802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995857, 38.362438, 27.812641>,  <35.990047, 38.192238, 27.450705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995857, 38.362438, 27.812641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678708, 0.668727, -0.303579,
		-0.734265, -0.609713, 0.298504,
		0.014521, 0.425505, 0.904840,
		36.000214, 38.490089, 28.084093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310242, 38.111172, 27.630138>,  <35.990047, 38.192238, 27.450705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310242, 38.111172, 27.630138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.454742, 38.410923, 27.852104>,  <35.541443, 38.590775, 27.985283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.454742, 38.410923, 27.852104>,  <35.310242, 38.111172, 27.630138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454742, 38.410923, 27.852104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776723, 0.571106, -0.265591,
		-0.515943, -0.335070, 0.788372,
		0.361253, 0.749377, 0.554915,
		35.563118, 38.635735, 28.018579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733780, 38.375908, 27.900061>,  <35.310242, 38.111172, 27.630138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733780, 38.375908, 27.900061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.997307, 38.668133, 27.971880>,  <35.155422, 38.843468, 28.014971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.997307, 38.668133, 27.971880>,  <34.733780, 38.375908, 27.900061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997307, 38.668133, 27.971880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663388, 0.676720, -0.319320,
		-0.354787, 0.091264, 0.930482,
		0.658819, 0.730561, 0.179548,
		35.194954, 38.887302, 28.025745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355724, 38.995655, 28.208536>,  <34.733780, 38.375908, 27.900061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355724, 38.995655, 28.208536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709991, 39.159523, 28.121111>,  <34.922550, 39.257843, 28.068655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709991, 39.159523, 28.121111>,  <34.355724, 38.995655, 28.208536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709991, 39.159523, 28.121111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453854, 0.863198, -0.221146,
		0.098067, 0.295057, 0.950434,
		0.885663, 0.409671, -0.218564,
		34.975689, 39.282425, 28.055542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503441, 39.518284, 28.708313>,  <34.355724, 38.995655, 28.208536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503441, 39.518284, 28.708313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670185, 39.592834, 28.352449>,  <34.770233, 39.637566, 28.138931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670185, 39.592834, 28.352449>,  <34.503441, 39.518284, 28.708313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670185, 39.592834, 28.352449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514833, 0.855038, -0.062110,
		0.749116, 0.483917, 0.452382,
		0.416860, 0.186373, -0.889659,
		34.795242, 39.648746, 28.085552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718571, 40.202702, 28.745182>,  <34.503441, 39.518284, 28.708313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718571, 40.202702, 28.745182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686913, 40.150551, 28.349861>,  <34.667915, 40.119259, 28.112669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686913, 40.150551, 28.349861>,  <34.718571, 40.202702, 28.745182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686913, 40.150551, 28.349861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348637, 0.932422, -0.095084,
		0.933910, 0.337032, -0.119251,
		-0.079146, -0.130376, -0.988301,
		34.663170, 40.111439, 28.053371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920872, 40.832790, 28.367033>,  <34.718571, 40.202702, 28.745182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920872, 40.832790, 28.367033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696548, 40.644184, 28.094809>,  <34.561954, 40.531021, 27.931473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696548, 40.644184, 28.094809>,  <34.920872, 40.832790, 28.367033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696548, 40.644184, 28.094809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543303, 0.829839, -0.127237,
		0.624751, 0.298396, -0.721558,
		-0.560809, -0.471516, -0.680562,
		34.528305, 40.502728, 27.890640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802330, 41.293121, 27.736891>,  <34.920872, 40.832790, 28.367033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802330, 41.293121, 27.736891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.505936, 41.028698, 27.689657>,  <34.328098, 40.870045, 27.661318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.505936, 41.028698, 27.689657>,  <34.802330, 41.293121, 27.736891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505936, 41.028698, 27.689657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569098, 0.711525, -0.412139,
		0.356466, -0.238189, -0.903437,
		-0.740985, -0.661058, -0.118082,
		34.283642, 40.830379, 27.654232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671070, 41.198944, 27.023565>,  <34.802330, 41.293121, 27.736891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671070, 41.198944, 27.023565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331020, 41.108559, 27.213821>,  <34.126991, 41.054329, 27.327976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331020, 41.108559, 27.213821>,  <34.671070, 41.198944, 27.023565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331020, 41.108559, 27.213821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443357, 0.794495, -0.414985,
		-0.284125, -0.563667, -0.775599,
		-0.850122, -0.225960, 0.475641,
		34.075985, 41.040771, 27.356514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180481, 41.464493, 26.627226>,  <34.671070, 41.198944, 27.023565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180481, 41.464493, 26.627226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942646, 41.387897, 26.939583>,  <33.799946, 41.341942, 27.126997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942646, 41.387897, 26.939583>,  <34.180481, 41.464493, 26.627226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942646, 41.387897, 26.939583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701941, 0.597262, -0.388016,
		-0.392098, -0.778852, -0.489539,
		-0.594590, -0.191487, 0.780893,
		33.764267, 41.330452, 27.173851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515430, 41.240471, 26.305935>,  <34.180481, 41.464493, 26.627226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515430, 41.240471, 26.305935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467690, 41.377079, 26.678841>,  <33.439045, 41.459042, 26.902584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467690, 41.377079, 26.678841>,  <33.515430, 41.240471, 26.305935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467690, 41.377079, 26.678841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618683, 0.708805, -0.338862,
		-0.776522, -0.617221, 0.126695,
		-0.119350, 0.341518, 0.932267,
		33.431885, 41.479534, 26.958521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809643, 41.262032, 26.356781>,  <33.515430, 41.240471, 26.305935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809643, 41.262032, 26.356781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957897, 41.506798, 26.636263>,  <33.046848, 41.653660, 26.803951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957897, 41.506798, 26.636263>,  <32.809643, 41.262032, 26.356781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957897, 41.506798, 26.636263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642647, 0.712083, -0.282742,
		-0.670550, -0.344226, 0.657169,
		0.370632, 0.611920, 0.698703,
		33.069088, 41.690372, 26.845873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197800, 41.665981, 26.515007>,  <32.809643, 41.262032, 26.356781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197800, 41.665981, 26.515007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.487556, 41.882668, 26.685562>,  <32.661411, 42.012680, 26.787895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.487556, 41.882668, 26.685562>,  <32.197800, 41.665981, 26.515007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487556, 41.882668, 26.685562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522620, 0.834871, -0.172795,
		-0.449585, -0.097669, 0.887882,
		0.724390, 0.541711, 0.426390,
		32.704872, 42.045181, 26.813478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992270, 42.078083, 27.108688>,  <32.197800, 41.665981, 26.515007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992270, 42.078083, 27.108688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314220, 42.266083, 26.963760>,  <32.507393, 42.378883, 26.876804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314220, 42.266083, 26.963760>,  <31.992270, 42.078083, 27.108688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314220, 42.266083, 26.963760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507757, 0.861436, -0.010514,
		0.307173, 0.192432, 0.931995,
		0.804877, 0.469997, -0.362318,
		32.555683, 42.407082, 26.855064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948605, 42.664043, 27.438934>,  <31.992270, 42.078083, 27.108688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948605, 42.664043, 27.438934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181557, 42.745911, 27.124243>,  <32.321327, 42.795029, 26.935427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181557, 42.745911, 27.124243>,  <31.948605, 42.664043, 27.438934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181557, 42.745911, 27.124243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366606, 0.929909, -0.029472,
		0.725556, 0.305584, 0.616594,
		0.582382, 0.204663, -0.786730,
		32.356270, 42.807308, 26.888224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954071, 43.509243, 27.428034>,  <31.948605, 42.664043, 27.438934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954071, 43.509243, 27.428034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.095596, 43.363655, 27.083397>,  <32.180511, 43.276302, 26.876616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.095596, 43.363655, 27.083397>,  <31.954071, 43.509243, 27.428034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095596, 43.363655, 27.083397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219457, 0.863156, -0.454754,
		0.909206, 0.349980, 0.225520,
		0.353813, -0.363973, -0.861592,
		32.201740, 43.254463, 26.824919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460503, 43.919807, 27.343302>,  <31.954071, 43.509243, 27.428034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460503, 43.919807, 27.343302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.324329, 43.786430, 26.991638>,  <32.242626, 43.706402, 26.780640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.324329, 43.786430, 26.991638>,  <32.460503, 43.919807, 27.343302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324329, 43.786430, 26.991638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257482, 0.932327, -0.253907,
		0.904328, 0.139929, -0.403250,
		-0.340432, -0.333445, -0.879159,
		32.222198, 43.686398, 26.727890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568958, 44.481583, 26.865021>,  <32.460503, 43.919807, 27.343302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568958, 44.481583, 26.865021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301735, 44.271568, 26.654106>,  <32.141399, 44.145557, 26.527557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301735, 44.271568, 26.654106>,  <32.568958, 44.481583, 26.865021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301735, 44.271568, 26.654106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482854, 0.845045, -0.229677,
		0.566170, 0.101164, -0.818057,
		-0.668060, -0.525038, -0.527286,
		32.101318, 44.114056, 26.495920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532658, 44.839710, 26.260798>,  <32.568958, 44.481583, 26.865021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532658, 44.839710, 26.260798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.204575, 44.612694, 26.289543>,  <32.007725, 44.476486, 26.306789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.204575, 44.612694, 26.289543>,  <32.532658, 44.839710, 26.260798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204575, 44.612694, 26.289543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548774, 0.745089, -0.379064,
		0.161589, -0.350346, -0.922576,
		-0.820205, -0.567538, 0.071862,
		31.958513, 44.442432, 26.311102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221886, 44.895393, 25.553877>,  <32.532658, 44.839710, 26.260798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221886, 44.895393, 25.553877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.959433, 44.799114, 25.839968>,  <31.801960, 44.741344, 26.011621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.959433, 44.799114, 25.839968>,  <32.221886, 44.895393, 25.553877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959433, 44.799114, 25.839968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633570, 0.690594, -0.348812,
		-0.409972, -0.682014, -0.605624,
		-0.656135, -0.240702, 0.715227,
		31.762592, 44.726902, 26.054535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559996, 45.063766, 25.158268>,  <32.221886, 44.895393, 25.553877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559996, 45.063766, 25.158268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460239, 45.000439, 25.540417>,  <31.400385, 44.962440, 25.769707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460239, 45.000439, 25.540417>,  <31.559996, 45.063766, 25.158268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460239, 45.000439, 25.540417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758032, 0.645860, -0.090848,
		-0.602654, -0.746860, -0.281083,
		-0.249391, -0.158320, 0.955374,
		31.385422, 44.952942, 25.827028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841763, 44.997665, 25.184853>,  <31.559996, 45.063766, 25.158268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841763, 44.997665, 25.184853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.970119, 45.130981, 25.539467>,  <31.047134, 45.210972, 25.752235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.970119, 45.130981, 25.539467>,  <30.841763, 44.997665, 25.184853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970119, 45.130981, 25.539467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729607, 0.683831, 0.007006,
		-0.603906, -0.649071, 0.462607,
		0.320893, 0.333290, 0.886536,
		31.066387, 45.230968, 25.805428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340723, 44.944115, 25.700558>,  <30.841763, 44.997665, 25.184853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340723, 44.944115, 25.700558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.593493, 45.251247, 25.742699>,  <30.745155, 45.435528, 25.767982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.593493, 45.251247, 25.742699>,  <30.340723, 44.944115, 25.700558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593493, 45.251247, 25.742699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773268, 0.633796, 0.018950,
		-0.052221, -0.093439, 0.994254,
		0.631926, 0.767835, 0.105351,
		30.783070, 45.481598, 25.774303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622835, 44.908703, 26.017532>,  <30.340723, 44.944115, 25.700558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622835, 44.908703, 26.017532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.254663, 44.772495, 25.940744>,  <29.033760, 44.690769, 25.894672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.254663, 44.772495, 25.940744>,  <29.622835, 44.908703, 26.017532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254663, 44.772495, 25.940744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222705, -0.860394, 0.458393,
		-0.321261, 0.379166, 0.867770,
		-0.920431, -0.340520, -0.191969,
		28.978535, 44.670338, 25.883154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605362, 44.370171, 26.343897>,  <29.622835, 44.908703, 26.017532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605362, 44.370171, 26.343897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.255680, 44.326920, 26.154549>,  <29.045872, 44.300968, 26.040939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.255680, 44.326920, 26.154549>,  <29.605362, 44.370171, 26.343897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255680, 44.326920, 26.154549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030767, -0.960594, 0.276247,
		-0.484585, 0.256060, 0.836427,
		-0.874203, -0.108131, -0.473368,
		28.993420, 44.294479, 26.012539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137337, 44.092953, 26.753271>,  <29.605362, 44.370171, 26.343897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137337, 44.092953, 26.753271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.006281, 44.004589, 26.385826>,  <28.927649, 43.951572, 26.165359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.006281, 44.004589, 26.385826>,  <29.137337, 44.092953, 26.753271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006281, 44.004589, 26.385826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035655, -0.974479, 0.221628,
		-0.944131, 0.039861, 0.327152,
		-0.327637, -0.220910, -0.918614,
		28.907990, 43.938316, 26.110241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506895, 43.680962, 26.791786>,  <29.137337, 44.092953, 26.753271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506895, 43.680962, 26.791786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.665152, 43.604065, 26.432562>,  <28.760105, 43.557926, 26.217028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.665152, 43.604065, 26.432562>,  <28.506895, 43.680962, 26.791786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665152, 43.604065, 26.432562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051517, -0.971662, 0.230694,
		-0.916959, -0.137538, -0.374526,
		0.395641, -0.192243, -0.898059,
		28.783844, 43.546391, 26.163143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175922, 43.033466, 26.554359>,  <28.506895, 43.680962, 26.791786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175922, 43.033466, 26.554359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.524521, 43.091110, 26.366859>,  <28.733681, 43.125694, 26.254360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.524521, 43.091110, 26.366859>,  <28.175922, 43.033466, 26.554359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524521, 43.091110, 26.366859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215388, -0.971200, 0.101878,
		-0.440568, -0.189750, -0.877437,
		0.871497, 0.144105, -0.468749,
		28.785971, 43.134342, 26.226234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261894, 42.479626, 26.065233>,  <28.175922, 43.033466, 26.554359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261894, 42.479626, 26.065233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.629431, 42.623466, 26.130245>,  <28.849953, 42.709770, 26.169252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.629431, 42.623466, 26.130245>,  <28.261894, 42.479626, 26.065233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629431, 42.623466, 26.130245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359750, -0.932580, 0.029566,
		0.162206, 0.031304, -0.986260,
		0.918841, 0.359603, 0.162532,
		28.905083, 42.731346, 26.179005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678116, 41.993134, 25.710888>,  <28.261894, 42.479626, 26.065233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678116, 41.993134, 25.710888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.944246, 42.203983, 25.922352>,  <29.103926, 42.330494, 26.049231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.944246, 42.203983, 25.922352>,  <28.678116, 41.993134, 25.710888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944246, 42.203983, 25.922352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652949, -0.754183, -0.069759,
		0.361936, 0.391601, -0.845961,
		0.665327, 0.527121, 0.528662,
		29.143845, 42.362118, 26.080950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389246, 41.913403, 25.315624>,  <28.678116, 41.993134, 25.710888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389246, 41.913403, 25.315624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.475731, 42.008675, 25.694365>,  <29.527622, 42.065838, 25.921608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.475731, 42.008675, 25.694365>,  <29.389246, 41.913403, 25.315624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475731, 42.008675, 25.694365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759225, -0.650756, -0.009673,
		0.613864, 0.720963, -0.321531,
		0.216213, 0.238176, 0.946850,
		29.540594, 42.080128, 25.978420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048937, 41.739922, 25.312962>,  <29.389246, 41.913403, 25.315624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048937, 41.739922, 25.312962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964712, 41.772305, 25.702650>,  <29.914177, 41.791737, 25.936462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964712, 41.772305, 25.702650>,  <30.048937, 41.739922, 25.312962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964712, 41.772305, 25.702650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705586, -0.677171, 0.208777,
		0.676618, 0.731358, 0.085464,
		-0.210564, 0.080960, 0.974222,
		29.901543, 41.796593, 25.994917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681751, 41.859684, 25.732016>,  <30.048937, 41.739922, 25.312962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681751, 41.859684, 25.732016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.430227, 41.703011, 26.000696>,  <30.279312, 41.609009, 26.161905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.430227, 41.703011, 26.000696>,  <30.681751, 41.859684, 25.732016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430227, 41.703011, 26.000696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606546, -0.787603, 0.108552,
		0.486516, 0.475676, 0.732826,
		-0.628811, -0.391681, 0.671701,
		30.241585, 41.585506, 26.202206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061617, 41.694035, 26.270052>,  <30.681751, 41.859684, 25.732016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061617, 41.694035, 26.270052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.762119, 41.452583, 26.379604>,  <30.582420, 41.307713, 26.445335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.762119, 41.452583, 26.379604>,  <31.061617, 41.694035, 26.270052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762119, 41.452583, 26.379604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656448, -0.617935, 0.432702,
		-0.091951, 0.503773, 0.858928,
		-0.748746, -0.603630, 0.273881,
		30.537495, 41.271496, 26.461769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090021, 41.576111, 26.917110>,  <31.061617, 41.694035, 26.270052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090021, 41.576111, 26.917110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.882898, 41.258308, 26.790216>,  <30.758625, 41.067627, 26.714081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.882898, 41.258308, 26.790216>,  <31.090021, 41.576111, 26.917110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882898, 41.258308, 26.790216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718940, -0.605114, 0.341997,
		-0.463681, -0.050983, 0.884534,
		-0.517808, -0.794505, -0.317233,
		30.727556, 41.019958, 26.695045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978680, 41.070915, 27.540777>,  <31.090021, 41.576111, 26.917110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978680, 41.070915, 27.540777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936960, 40.889759, 27.186598>,  <30.911928, 40.781067, 26.974091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936960, 40.889759, 27.186598>,  <30.978680, 41.070915, 27.540777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936960, 40.889759, 27.186598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688359, -0.675465, 0.264404,
		-0.717833, -0.581929, 0.382197,
		-0.104296, -0.452887, -0.885447,
		30.905672, 40.753895, 26.920963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938240, 40.446365, 27.715582>,  <30.978680, 41.070915, 27.540777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938240, 40.446365, 27.715582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.062481, 40.419376, 27.336325>,  <31.137026, 40.403183, 27.108770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.062481, 40.419376, 27.336325>,  <30.938240, 40.446365, 27.715582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062481, 40.419376, 27.336325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758601, -0.583445, 0.290029,
		-0.572758, -0.809345, -0.130033,
		0.310601, -0.067473, -0.948143,
		31.155661, 40.399136, 27.051882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948822, 39.685997, 27.611422>,  <30.938240, 40.446365, 27.715582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948822, 39.685997, 27.611422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.172239, 39.827831, 27.311476>,  <31.306290, 39.912933, 27.131508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.172239, 39.827831, 27.311476>,  <30.948822, 39.685997, 27.611422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172239, 39.827831, 27.311476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659549, -0.738077, 0.142260,
		-0.503015, -0.574032, -0.646113,
		0.558543, 0.354584, -0.749866,
		31.339802, 39.934208, 27.086515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104101, 39.022072, 27.185740>,  <30.948822, 39.685997, 27.611422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104101, 39.022072, 27.185740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365156, 39.315365, 27.109390>,  <31.521790, 39.491341, 27.063580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365156, 39.315365, 27.109390>,  <31.104101, 39.022072, 27.185740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365156, 39.315365, 27.109390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747851, -0.663829, 0.007002,
		-0.121574, -0.147315, -0.981589,
		0.652639, 0.733232, -0.190875,
		31.560947, 39.535336, 27.052128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505468, 38.775421, 26.741989>,  <31.104101, 39.022072, 27.185740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505468, 38.775421, 26.741989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741074, 39.069588, 26.875990>,  <31.882437, 39.246086, 26.956390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741074, 39.069588, 26.875990>,  <31.505468, 38.775421, 26.741989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741074, 39.069588, 26.875990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769630, -0.636904, 0.044976,
		0.246442, 0.231338, -0.941143,
		0.589013, 0.735416, 0.335004,
		31.917778, 39.290211, 26.976492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088318, 38.714630, 26.276340>,  <31.505468, 38.775421, 26.741989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088318, 38.714630, 26.276340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.202488, 38.913700, 26.603964>,  <32.270988, 39.033142, 26.800537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.202488, 38.913700, 26.603964>,  <32.088318, 38.714630, 26.276340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202488, 38.913700, 26.603964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830305, -0.555235, 0.048029,
		0.478673, 0.666360, -0.571696,
		0.285421, 0.497673, 0.819058,
		32.288113, 39.063004, 26.849682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838100, 38.656490, 26.241756>,  <32.088318, 38.714630, 26.276340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838100, 38.656490, 26.241756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.750538, 38.759502, 26.618216>,  <32.698002, 38.821308, 26.844091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.750538, 38.759502, 26.618216>,  <32.838100, 38.656490, 26.241756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750538, 38.759502, 26.618216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755314, -0.565907, 0.330530,
		0.617723, 0.783217, -0.070633,
		-0.218905, 0.257526, 0.941149,
		32.684868, 38.836761, 26.900560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493500, 38.922962, 26.530647>,  <32.838100, 38.656490, 26.241756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493500, 38.922962, 26.530647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231224, 38.778194, 26.795702>,  <33.073856, 38.691334, 26.954735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231224, 38.778194, 26.795702>,  <33.493500, 38.922962, 26.530647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231224, 38.778194, 26.795702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650531, -0.716277, 0.252501,
		0.383246, 0.596627, 0.705094,
		-0.655692, -0.361916, 0.662635,
		33.034515, 38.669621, 26.994492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919895, 38.744896, 27.203382>,  <33.493500, 38.922962, 26.530647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919895, 38.744896, 27.203382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579807, 38.540493, 27.253988>,  <33.375755, 38.417850, 27.284351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579807, 38.540493, 27.253988>,  <33.919895, 38.744896, 27.203382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579807, 38.540493, 27.253988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520996, -0.782313, 0.341394,
		-0.075482, 0.356171, 0.931367,
		-0.850215, -0.511007, 0.126513,
		33.324741, 38.387192, 27.291943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.494678, 37.207024, 29.556881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.154114, 36.998512, 29.580105>,  <37.949776, 36.873405, 29.594038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.154114, 36.998512, 29.580105>,  <38.494678, 37.207024, 29.556881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154114, 36.998512, 29.580105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429903, -0.630151, 0.646601,
		-0.300473, 0.575482, 0.760616,
		-0.851410, -0.521277, 0.058058,
		37.898689, 36.842129, 29.597523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284752, 37.142746, 30.301674>,  <38.494678, 37.207024, 29.556881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284752, 37.142746, 30.301674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.105618, 36.843197, 30.106274>,  <37.998138, 36.663467, 29.989033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.105618, 36.843197, 30.106274>,  <38.284752, 37.142746, 30.301674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105618, 36.843197, 30.106274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212846, -0.619934, 0.755234,
		-0.868412, 0.234245, 0.437023,
		-0.447835, -0.748873, -0.488501,
		37.971268, 36.618534, 29.959723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108295, 36.695789, 30.872818>,  <38.284752, 37.142746, 30.301674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108295, 36.695789, 30.872818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.082348, 36.432709, 30.572624>,  <38.066780, 36.274860, 30.392508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.082348, 36.432709, 30.572624>,  <38.108295, 36.695789, 30.872818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082348, 36.432709, 30.572624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013174, -0.751437, 0.659674,
		-0.997807, 0.052682, 0.040084,
		-0.064873, -0.657699, -0.750483,
		38.062885, 36.235397, 30.347479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505241, 36.252735, 31.075788>,  <38.108295, 36.695789, 30.872818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505241, 36.252735, 31.075788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763916, 36.097744, 30.812986>,  <37.919121, 36.004749, 30.655306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763916, 36.097744, 30.812986>,  <37.505241, 36.252735, 31.075788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763916, 36.097744, 30.812986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127788, -0.794146, 0.594139,
		-0.751969, -0.468183, -0.464056,
		0.646694, -0.387474, -0.657001,
		37.957924, 35.981503, 30.615885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370800, 35.518227, 31.153471>,  <37.505241, 36.252735, 31.075788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370800, 35.518227, 31.153471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.719795, 35.511089, 30.958151>,  <37.929192, 35.506805, 30.840958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.719795, 35.511089, 30.958151>,  <37.370800, 35.518227, 31.153471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719795, 35.511089, 30.958151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364141, -0.642618, 0.674124,
		-0.325820, -0.765979, -0.554182,
		0.872492, -0.017842, -0.488302,
		37.981544, 35.505737, 30.811661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516453, 34.779202, 30.874439>,  <37.370800, 35.518227, 31.153471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516453, 34.779202, 30.874439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.857422, 34.980709, 30.930426>,  <38.062004, 35.101612, 30.964018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.857422, 34.980709, 30.930426>,  <37.516453, 34.779202, 30.874439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857422, 34.980709, 30.930426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372272, -0.772755, 0.514066,
		0.367128, -0.386097, -0.846254,
		0.852426, 0.503765, 0.139967,
		38.113152, 35.131840, 30.972416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003647, 34.257729, 31.061193>,  <37.516453, 34.779202, 30.874439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003647, 34.257729, 31.061193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209686, 34.590485, 31.143789>,  <38.333309, 34.790138, 31.193348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209686, 34.590485, 31.143789>,  <38.003647, 34.257729, 31.061193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209686, 34.590485, 31.143789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655433, -0.537528, 0.530539,
		0.552344, -0.137938, -0.822125,
		0.515097, 0.831887, 0.206492,
		38.364216, 34.840050, 31.205736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678791, 34.062042, 30.962349>,  <38.003647, 34.257729, 31.061193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678791, 34.062042, 30.962349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.678844, 34.366016, 31.222349>,  <38.678875, 34.548401, 31.378349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.678844, 34.366016, 31.222349>,  <38.678791, 34.062042, 30.962349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678844, 34.366016, 31.222349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577138, -0.530878, 0.620548,
		0.816647, 0.375056, -0.438659,
		0.000134, 0.759936, 0.649999,
		38.678886, 34.593998, 31.417349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341156, 34.092552, 31.204540>,  <38.678791, 34.062042, 30.962349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341156, 34.092552, 31.204540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.141964, 34.298180, 31.483896>,  <39.022449, 34.421555, 31.651510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.141964, 34.298180, 31.483896>,  <39.341156, 34.092552, 31.204540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141964, 34.298180, 31.483896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546315, -0.439469, 0.713027,
		0.673464, 0.736616, -0.061994,
		-0.497982, 0.514066, 0.698391,
		38.992569, 34.452400, 31.693413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862446, 34.239777, 31.716557>,  <39.341156, 34.092552, 31.204540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862446, 34.239777, 31.716557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.509129, 34.282124, 31.899240>,  <39.297138, 34.307529, 32.008850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.509129, 34.282124, 31.899240>,  <39.862446, 34.239777, 31.716557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509129, 34.282124, 31.899240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362283, -0.464179, 0.808263,
		0.297561, 0.879392, 0.371654,
		-0.883294, 0.105863, 0.456711,
		39.244141, 34.313881, 32.036255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045712, 34.304043, 32.465744>,  <39.862446, 34.239777, 31.716557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045712, 34.304043, 32.465744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.651672, 34.255474, 32.514477>,  <39.415249, 34.226334, 32.543716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.651672, 34.255474, 32.514477>,  <40.045712, 34.304043, 32.465744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651672, 34.255474, 32.514477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169857, -0.575017, 0.800315,
		-0.027124, 0.809080, 0.587072,
		-0.985095, -0.121426, 0.121831,
		39.356144, 34.219048, 32.551025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842442, 34.520100, 33.127216>,  <40.045712, 34.304043, 32.465744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842442, 34.520100, 33.127216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544838, 34.260437, 33.063904>,  <39.366276, 34.104641, 33.025917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544838, 34.260437, 33.063904>,  <39.842442, 34.520100, 33.127216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544838, 34.260437, 33.063904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196827, -0.439307, 0.876509,
		-0.638526, 0.620973, 0.454618,
		-0.744005, -0.649155, -0.158285,
		39.321636, 34.065689, 33.016418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366997, 34.576561, 33.766052>,  <39.842442, 34.520100, 33.127216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366997, 34.576561, 33.766052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369003, 34.218201, 33.588360>,  <39.370205, 34.003185, 33.481743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369003, 34.218201, 33.588360>,  <39.366997, 34.576561, 33.766052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369003, 34.218201, 33.588360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253617, -0.430854, 0.866051,
		-0.967292, 0.108325, -0.229375,
		0.005012, -0.895897, -0.444234,
		39.370506, 33.949432, 33.455090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778835, 34.254406, 33.924110>,  <39.366997, 34.576561, 33.766052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778835, 34.254406, 33.924110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102859, 34.024250, 33.878994>,  <39.297276, 33.886154, 33.851925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102859, 34.024250, 33.878994>,  <38.778835, 34.254406, 33.924110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102859, 34.024250, 33.878994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065860, -0.280440, 0.957610,
		-0.582635, -0.768294, -0.265069,
		0.810062, -0.575394, -0.112794,
		39.345879, 33.851631, 33.845158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644817, 35.010429, 33.984859>,  <38.778835, 34.254406, 33.924110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644817, 35.010429, 33.984859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540951, 35.002087, 34.371048>,  <38.478630, 34.997082, 34.602760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540951, 35.002087, 34.371048>,  <38.644817, 35.010429, 33.984859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540951, 35.002087, 34.371048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600757, 0.786247, -0.144590,
		-0.756085, -0.617560, -0.216690,
		-0.259665, -0.020856, 0.965473,
		38.463051, 34.995831, 34.660690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010265, 34.923962, 33.987419>,  <38.644817, 35.010429, 33.984859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010265, 34.923962, 33.987419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089645, 35.098816, 34.338310>,  <38.137272, 35.203728, 34.548843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089645, 35.098816, 34.338310>,  <38.010265, 34.923962, 33.987419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089645, 35.098816, 34.338310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680728, 0.705406, -0.197515,
		-0.705143, -0.557958, 0.437558,
		0.198451, 0.437134, 0.877229,
		38.149181, 35.229958, 34.601479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271248, 35.113575, 34.176064>,  <38.010265, 34.923962, 33.987419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271248, 35.113575, 34.176064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527195, 35.304848, 34.416702>,  <37.680763, 35.419609, 34.561085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527195, 35.304848, 34.416702>,  <37.271248, 35.113575, 34.176064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527195, 35.304848, 34.416702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499907, 0.853557, -0.146743,
		-0.583666, -0.206846, 0.785206,
		0.639865, 0.478179, 0.601596,
		37.719154, 35.448303, 34.597179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810081, 35.550510, 34.563824>,  <37.271248, 35.113575, 34.176064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810081, 35.550510, 34.563824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.166630, 35.729942, 34.589863>,  <37.380558, 35.837601, 34.605488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.166630, 35.729942, 34.589863>,  <36.810081, 35.550510, 34.563824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166630, 35.729942, 34.589863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442436, 0.892254, -0.090180,
		-0.098539, 0.051580, 0.993796,
		0.891370, 0.448577, 0.065101,
		37.434040, 35.864517, 34.609394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685703, 36.108967, 35.075306>,  <36.810081, 35.550510, 34.563824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685703, 36.108967, 35.075306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006058, 36.201126, 34.854218>,  <37.198273, 36.256420, 34.721565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006058, 36.201126, 34.854218>,  <36.685703, 36.108967, 35.075306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006058, 36.201126, 34.854218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326147, 0.941932, -0.079952,
		0.502201, 0.244300, 0.829525,
		0.800888, 0.230395, -0.552717,
		37.246323, 36.270245, 34.688404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822926, 36.727070, 35.235329>,  <36.685703, 36.108967, 35.075306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822926, 36.727070, 35.235329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.048508, 36.703384, 34.905857>,  <37.183857, 36.689175, 34.708176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.048508, 36.703384, 34.905857>,  <36.822926, 36.727070, 35.235329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048508, 36.703384, 34.905857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221842, 0.949900, -0.220174,
		0.795448, 0.306895, 0.522568,
		0.563958, -0.059210, -0.823678,
		37.217693, 36.685623, 34.658752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180191, 37.409348, 35.154396>,  <36.822926, 36.727070, 35.235329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180191, 37.409348, 35.154396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.179787, 37.243824, 34.790253>,  <37.179543, 37.144508, 34.571766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.179787, 37.243824, 34.790253>,  <37.180191, 37.409348, 35.154396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179787, 37.243824, 34.790253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407863, 0.831371, -0.377451,
		0.913042, 0.370921, -0.169619,
		-0.001012, -0.413810, -0.910362,
		37.179482, 37.119682, 34.517143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301327, 37.931248, 34.736000>,  <37.180191, 37.409348, 35.154396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301327, 37.931248, 34.736000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134384, 37.653133, 34.501945>,  <37.034218, 37.486263, 34.361511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134384, 37.653133, 34.501945>,  <37.301327, 37.931248, 34.736000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134384, 37.653133, 34.501945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419557, 0.718597, -0.554608,
		0.806091, 0.014029, -0.591625,
		-0.417359, -0.695285, -0.585141,
		37.009174, 37.444550, 34.326405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215347, 38.253319, 34.104862>,  <37.301327, 37.931248, 34.736000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215347, 38.253319, 34.104862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.994442, 37.933464, 34.010563>,  <36.861897, 37.741550, 33.953983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.994442, 37.933464, 34.010563>,  <37.215347, 38.253319, 34.104862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994442, 37.933464, 34.010563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596688, 0.576635, -0.558082,
		0.582211, -0.167534, -0.795590,
		-0.552263, -0.799640, -0.235758,
		36.828762, 37.693573, 33.939838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138695, 38.125149, 33.274223>,  <37.215347, 38.253319, 34.104862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138695, 38.125149, 33.274223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.823006, 37.996208, 33.483307>,  <36.633595, 37.918846, 33.608757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.823006, 37.996208, 33.483307>,  <37.138695, 38.125149, 33.274223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823006, 37.996208, 33.483307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605903, 0.547415, -0.577251,
		-0.100062, -0.772289, -0.627342,
		-0.789221, -0.322347, 0.522707,
		36.586239, 37.899506, 33.640118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653301, 37.950466, 32.810558>,  <37.138695, 38.125149, 33.274223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653301, 37.950466, 32.810558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448776, 38.020012, 33.147205>,  <36.326061, 38.061741, 33.349194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448776, 38.020012, 33.147205>,  <36.653301, 37.950466, 32.810558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448776, 38.020012, 33.147205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722404, 0.443502, -0.530507,
		-0.465497, -0.879248, -0.101170,
		-0.511316, 0.173864, 0.841622,
		36.295380, 38.072170, 33.399693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086884, 38.071629, 32.526878>,  <36.653301, 37.950466, 32.810558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086884, 38.071629, 32.526878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.004528, 38.188782, 32.900364>,  <35.955112, 38.259071, 33.124454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.004528, 38.188782, 32.900364>,  <36.086884, 38.071629, 32.526878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004528, 38.188782, 32.900364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667186, 0.655997, -0.352888,
		-0.715871, -0.695621, 0.060342,
		-0.205892, 0.292882, 0.933718,
		35.942760, 38.276646, 33.180481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491890, 38.260941, 32.478897>,  <36.086884, 38.071629, 32.526878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491890, 38.260941, 32.478897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.589474, 38.457748, 32.813179>,  <35.648022, 38.575832, 33.013748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.589474, 38.457748, 32.813179>,  <35.491890, 38.260941, 32.478897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589474, 38.457748, 32.813179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593675, 0.757171, -0.272474,
		-0.766834, -0.429666, 0.476815,
		0.243957, 0.492015, 0.835707,
		35.662663, 38.605354, 33.063892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808067, 38.616333, 32.712311>,  <35.491890, 38.260941, 32.478897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808067, 38.616333, 32.712311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.112999, 38.791008, 32.903378>,  <35.295956, 38.895813, 33.018017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.112999, 38.791008, 32.903378>,  <34.808067, 38.616333, 32.712311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112999, 38.791008, 32.903378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410519, 0.896848, -0.164735,
		-0.500332, -0.070509, 0.862958,
		0.762327, 0.436683, 0.477667,
		35.341698, 38.922012, 33.046677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413998, 38.305931, 33.128616>,  <34.808067, 38.616333, 32.712311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413998, 38.305931, 33.128616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.164852, 38.331276, 33.440521>,  <34.015366, 38.346485, 33.627663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.164852, 38.331276, 33.440521>,  <34.413998, 38.305931, 33.128616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164852, 38.331276, 33.440521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330792, -0.881900, 0.335900,
		0.708954, 0.467158, 0.528344,
		-0.622865, 0.063365, 0.779759,
		33.977993, 38.350285, 33.674450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792175, 38.056412, 33.691994>,  <34.413998, 38.305931, 33.128616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792175, 38.056412, 33.691994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.418583, 38.017746, 33.829597>,  <34.194427, 37.994545, 33.912159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.418583, 38.017746, 33.829597>,  <34.792175, 38.056412, 33.691994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418583, 38.017746, 33.829597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195155, -0.944448, 0.264447,
		0.299336, 0.314122, 0.900958,
		-0.933977, -0.096668, 0.344010,
		34.138390, 37.988747, 33.932800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843849, 37.804394, 34.432243>,  <34.792175, 38.056412, 33.691994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843849, 37.804394, 34.432243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.482510, 37.703266, 34.293659>,  <34.265705, 37.642590, 34.210506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.482510, 37.703266, 34.293659>,  <34.843849, 37.804394, 34.432243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482510, 37.703266, 34.293659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177817, -0.955865, 0.233887,
		-0.390303, 0.149675, 0.908439,
		-0.903352, -0.252823, -0.346462,
		34.211506, 37.627419, 34.189720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478085, 37.353142, 34.955017>,  <34.843849, 37.804394, 34.432243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478085, 37.353142, 34.955017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.285660, 37.276348, 34.612854>,  <34.170204, 37.230274, 34.407555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.285660, 37.276348, 34.612854>,  <34.478085, 37.353142, 34.955017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285660, 37.276348, 34.612854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087357, -0.981369, 0.171122,
		-0.872324, 0.007595, 0.488869,
		-0.481061, -0.191980, -0.855409,
		34.141342, 37.218754, 34.356232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901520, 36.948326, 35.174637>,  <34.478085, 37.353142, 34.955017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901520, 36.948326, 35.174637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.981777, 36.869789, 34.790722>,  <34.029930, 36.822666, 34.560371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.981777, 36.869789, 34.790722>,  <33.901520, 36.948326, 35.174637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981777, 36.869789, 34.790722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045291, -0.976804, 0.209289,
		-0.978617, -0.085462, -0.187096,
		0.200642, -0.196340, -0.959788,
		34.041969, 36.810886, 34.502785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523064, 36.377544, 35.011253>,  <33.901520, 36.948326, 35.174637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523064, 36.377544, 35.011253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.786854, 36.379082, 34.710567>,  <33.945129, 36.380005, 34.530155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.786854, 36.379082, 34.710567>,  <33.523064, 36.377544, 35.011253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786854, 36.379082, 34.710567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136238, -0.984038, 0.114491,
		-0.739279, -0.177916, -0.649471,
		0.659474, 0.003842, -0.751717,
		33.984695, 36.380234, 34.485054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329563, 35.808559, 34.602692>,  <33.523064, 36.377544, 35.011253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329563, 35.808559, 34.602692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.698097, 35.873398, 34.461346>,  <33.919216, 35.912300, 34.376537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.698097, 35.873398, 34.461346>,  <33.329563, 35.808559, 34.602692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698097, 35.873398, 34.461346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190748, -0.980485, 0.047575,
		-0.338757, -0.111236, -0.934275,
		0.921335, 0.162095, -0.353364,
		33.974499, 35.922028, 34.355335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423752, 35.238873, 34.152267>,  <33.329563, 35.808559, 34.602692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423752, 35.238873, 34.152267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.795914, 35.365280, 34.226540>,  <34.019211, 35.441124, 34.271103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.795914, 35.365280, 34.226540>,  <33.423752, 35.238873, 34.152267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795914, 35.365280, 34.226540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325931, -0.945070, -0.024725,
		0.167670, 0.083524, -0.982299,
		0.930406, 0.316016, 0.185683,
		34.075035, 35.460087, 34.282246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851089, 35.217014, 33.475563>,  <33.423752, 35.238873, 34.152267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851089, 35.217014, 33.475563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.070629, 35.210892, 33.809875>,  <34.202354, 35.207218, 34.010464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.070629, 35.210892, 33.809875>,  <33.851089, 35.217014, 33.475563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070629, 35.210892, 33.809875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292381, -0.933163, -0.209095,
		0.783121, 0.359128, -0.507690,
		0.548849, -0.015308, 0.835781,
		34.235283, 35.206299, 34.060612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484325, 34.852165, 33.306583>,  <33.851089, 35.217014, 33.475563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484325, 34.852165, 33.306583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.493298, 34.844093, 33.706402>,  <34.498680, 34.839252, 33.946293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.493298, 34.844093, 33.706402>,  <34.484325, 34.852165, 33.306583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493298, 34.844093, 33.706402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497842, -0.866794, -0.028667,
		0.866978, 0.498258, -0.009399,
		0.022431, -0.020175, 0.999545,
		34.500027, 34.838039, 34.006264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151154, 34.572762, 33.478153>,  <34.484325, 34.852165, 33.306583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151154, 34.572762, 33.478153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.954262, 34.526711, 33.823280>,  <34.836128, 34.499081, 34.030357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.954262, 34.526711, 33.823280>,  <35.151154, 34.572762, 33.478153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954262, 34.526711, 33.823280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443877, -0.885856, 0.135026,
		0.748790, 0.449450, 0.487144,
		-0.492227, -0.115126, 0.862820,
		34.806595, 34.492172, 34.082127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404106, 34.448002, 34.104847>,  <35.151154, 34.572762, 33.478153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404106, 34.448002, 34.104847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.045063, 34.271786, 34.110825>,  <34.829636, 34.166058, 34.114410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.045063, 34.271786, 34.110825>,  <35.404106, 34.448002, 34.104847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045063, 34.271786, 34.110825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432140, -0.872804, 0.226867,
		-0.086902, 0.210096, 0.973811,
		-0.897610, -0.440538, 0.014942,
		34.775780, 34.139626, 34.115307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.374931, 41.912804, 33.250256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102276, 41.625320, 33.305149>,  <31.938683, 41.452831, 33.338085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102276, 41.625320, 33.305149>,  <32.374931, 41.912804, 33.250256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102276, 41.625320, 33.305149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670118, -0.537890, 0.511485,
		-0.293792, 0.440608, 0.848263,
		-0.681637, -0.718706, 0.137232,
		31.897785, 41.409710, 33.346317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625164, 41.668274, 33.844105>,  <32.374931, 41.912804, 33.250256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625164, 41.668274, 33.844105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369610, 41.382484, 33.730019>,  <32.216278, 41.211010, 33.661568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369610, 41.382484, 33.730019>,  <32.625164, 41.668274, 33.844105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369610, 41.382484, 33.730019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555541, -0.684947, 0.471404,
		-0.532163, 0.142727, 0.834525,
		-0.638887, -0.714476, -0.285213,
		32.177944, 41.168140, 33.644455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411499, 41.237202, 34.452892>,  <32.625164, 41.668274, 33.844105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411499, 41.237202, 34.452892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384895, 41.032001, 34.110569>,  <32.368935, 40.908882, 33.905174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384895, 41.032001, 34.110569>,  <32.411499, 41.237202, 34.452892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384895, 41.032001, 34.110569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413212, -0.794862, 0.444353,
		-0.908203, -0.324078, 0.264842,
		-0.066508, -0.512999, -0.855809,
		32.364944, 40.878101, 33.853825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393768, 40.553101, 34.598717>,  <32.411499, 41.237202, 34.452892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393768, 40.553101, 34.598717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499775, 40.498444, 34.216911>,  <32.563377, 40.465649, 33.987827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499775, 40.498444, 34.216911>,  <32.393768, 40.553101, 34.598717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499775, 40.498444, 34.216911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459183, -0.852573, 0.249538,
		-0.847890, -0.504428, -0.163200,
		0.265014, -0.136642, -0.954514,
		32.579281, 40.457451, 33.930557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269249, 39.840210, 34.510094>,  <32.393768, 40.553101, 34.598717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269249, 39.840210, 34.510094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490494, 39.944538, 34.193604>,  <32.623241, 40.007137, 34.003708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490494, 39.944538, 34.193604>,  <32.269249, 39.840210, 34.510094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490494, 39.944538, 34.193604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399526, -0.916438, -0.022807,
		-0.731057, -0.303500, -0.611100,
		0.553113, 0.260824, -0.791225,
		32.656429, 40.022785, 33.956238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245525, 39.174740, 34.115059>,  <32.269249, 39.840210, 34.510094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245525, 39.174740, 34.115059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547607, 39.404949, 33.989555>,  <32.728855, 39.543076, 33.914253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547607, 39.404949, 33.989555>,  <32.245525, 39.174740, 34.115059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547607, 39.404949, 33.989555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620479, -0.781995, 0.059075,
		-0.211357, -0.239293, -0.947664,
		0.755205, 0.575519, -0.313756,
		32.774170, 39.577606, 33.895428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551022, 38.849873, 33.539719>,  <32.245525, 39.174740, 34.115059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551022, 38.849873, 33.539719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834644, 39.081978, 33.699986>,  <33.004818, 39.221241, 33.796146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834644, 39.081978, 33.699986>,  <32.551022, 38.849873, 33.539719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834644, 39.081978, 33.699986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625755, -0.779714, 0.021829,
		0.325076, 0.235244, -0.915961,
		0.709053, 0.580263, 0.400672,
		33.047359, 39.256058, 33.820187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049019, 38.744122, 33.039749>,  <32.551022, 38.849873, 33.539719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049019, 38.744122, 33.039749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243721, 38.872875, 33.364578>,  <33.360542, 38.950127, 33.559475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243721, 38.872875, 33.364578>,  <33.049019, 38.744122, 33.039749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243721, 38.872875, 33.364578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580325, -0.813995, -0.025204,
		0.652907, 0.483532, -0.583017,
		0.486760, 0.321883, 0.812069,
		33.389748, 38.969440, 33.608200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757771, 38.753094, 32.899338>,  <33.049019, 38.744122, 33.039749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757771, 38.753094, 32.899338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726940, 38.740646, 33.297955>,  <33.708443, 38.733177, 33.537125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726940, 38.740646, 33.297955>,  <33.757771, 38.753094, 32.899338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726940, 38.740646, 33.297955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532343, -0.846401, 0.014746,
		0.843013, 0.531637, 0.081801,
		-0.077076, -0.031115, 0.996540,
		33.703819, 38.731312, 33.596916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467129, 39.026966, 33.176483>,  <33.757771, 38.753094, 32.899338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467129, 39.026966, 33.176483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824608, 39.200054, 33.129047>,  <35.039093, 39.303909, 33.100586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824608, 39.200054, 33.129047>,  <34.467129, 39.026966, 33.176483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824608, 39.200054, 33.129047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448653, 0.859011, -0.246600,
		-0.004838, 0.273591, 0.961834,
		0.893693, 0.432722, -0.118591,
		35.092716, 39.329872, 33.093472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508217, 39.764191, 33.570530>,  <34.467129, 39.026966, 33.176483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508217, 39.764191, 33.570530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779144, 39.759556, 33.276291>,  <34.941700, 39.756775, 33.099747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779144, 39.759556, 33.276291>,  <34.508217, 39.764191, 33.570530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779144, 39.759556, 33.276291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172711, 0.969429, -0.174297,
		0.715128, 0.245100, 0.654613,
		0.677321, -0.011586, -0.735597,
		34.982342, 39.756081, 33.055611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082722, 40.387321, 33.676991>,  <34.508217, 39.764191, 33.570530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082722, 40.387321, 33.676991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085621, 40.300320, 33.286579>,  <35.087360, 40.248119, 33.052330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085621, 40.300320, 33.286579>,  <35.082722, 40.387321, 33.676991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085621, 40.300320, 33.286579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030757, 0.975547, -0.217628,
		0.999501, 0.031597, 0.000378,
		0.007245, -0.217507, -0.976032,
		35.087795, 40.235069, 32.993771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494667, 40.824574, 33.502041>,  <35.082722, 40.387321, 33.676991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494667, 40.824574, 33.502041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320709, 40.724796, 33.155945>,  <35.216335, 40.664932, 32.948288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320709, 40.724796, 33.155945>,  <35.494667, 40.824574, 33.502041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320709, 40.724796, 33.155945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067865, 0.949056, -0.307713,
		0.897920, -0.192543, -0.395811,
		-0.434895, -0.249440, -0.865243,
		35.190243, 40.649963, 32.896370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774170, 41.242603, 33.125542>,  <35.494667, 40.824574, 33.502041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774170, 41.242603, 33.125542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477528, 41.147297, 32.874702>,  <35.299541, 41.090111, 32.724201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477528, 41.147297, 32.874702>,  <35.774170, 41.242603, 33.125542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477528, 41.147297, 32.874702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142585, 0.969423, -0.199720,
		0.655507, -0.058699, -0.752904,
		-0.741607, -0.238271, -0.627094,
		35.255047, 41.075817, 32.686573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825096, 41.772526, 32.527325>,  <35.774170, 41.242603, 33.125542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825096, 41.772526, 32.527325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458427, 41.613823, 32.546513>,  <35.238426, 41.518600, 32.558025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458427, 41.613823, 32.546513>,  <35.825096, 41.772526, 32.527325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458427, 41.613823, 32.546513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399034, 0.901978, -0.164946,
		0.022181, -0.170341, -0.985135,
		-0.916667, -0.396762, 0.047966,
		35.183426, 41.494793, 32.560902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514629, 42.029953, 32.001385>,  <35.825096, 41.772526, 32.527325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514629, 42.029953, 32.001385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213345, 41.877796, 32.216038>,  <35.032574, 41.786503, 32.344830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213345, 41.877796, 32.216038>,  <35.514629, 42.029953, 32.001385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213345, 41.877796, 32.216038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564834, 0.792126, -0.231299,
		-0.337095, -0.477324, -0.811498,
		-0.753213, -0.380392, 0.536631,
		34.987381, 41.763680, 32.377026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811131, 42.165867, 31.582830>,  <35.514629, 42.029953, 32.001385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811131, 42.165867, 31.582830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691048, 42.073154, 31.952944>,  <34.618999, 42.017525, 32.175011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691048, 42.073154, 31.952944>,  <34.811131, 42.165867, 31.582830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691048, 42.073154, 31.952944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693720, 0.718837, -0.045008,
		-0.654696, -0.655400, -0.376594,
		-0.300208, -0.231784, 0.925285,
		34.600986, 42.003620, 32.230530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020172, 42.078110, 31.636787>,  <34.811131, 42.165867, 31.582830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020172, 42.078110, 31.636787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161098, 42.179623, 31.997114>,  <34.245655, 42.240532, 32.213310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161098, 42.179623, 31.997114>,  <34.020172, 42.078110, 31.636787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161098, 42.179623, 31.997114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685139, 0.725637, 0.063533,
		-0.637540, -0.639567, 0.429530,
		0.352317, 0.253783, 0.900815,
		34.266792, 42.255756, 32.267357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533981, 41.991535, 32.136959>,  <34.020172, 42.078110, 31.636787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533981, 41.991535, 32.136959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776005, 42.282986, 32.265331>,  <33.921219, 42.457855, 32.342354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776005, 42.282986, 32.265331>,  <33.533981, 41.991535, 32.136959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776005, 42.282986, 32.265331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788464, 0.604338, 0.114456,
		-0.110555, -0.322296, 0.940161,
		0.605063, 0.728630, 0.320931,
		33.957523, 42.501575, 32.361610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031738, 42.405838, 32.457008>,  <33.533981, 41.991535, 32.136959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031738, 42.405838, 32.457008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359055, 42.635540, 32.446918>,  <33.555443, 42.773361, 32.440865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359055, 42.635540, 32.446918>,  <33.031738, 42.405838, 32.457008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359055, 42.635540, 32.446918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574034, 0.814121, -0.087698,
		-0.029822, 0.086244, 0.995828,
		0.818288, 0.574255, -0.025228,
		33.604542, 42.807816, 32.439350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926525, 43.065678, 32.866268>,  <33.031738, 42.405838, 32.457008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926525, 43.065678, 32.866268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207233, 43.137466, 32.590500>,  <33.375660, 43.180538, 32.425037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207233, 43.137466, 32.590500>,  <32.926525, 43.065678, 32.866268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207233, 43.137466, 32.590500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530276, 0.777845, -0.337289,
		0.475731, 0.602285, 0.641040,
		0.701774, 0.179470, -0.689423,
		33.417767, 43.191307, 32.383675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861080, 43.845737, 32.702473>,  <32.926525, 43.065678, 32.866268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861080, 43.845737, 32.702473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127369, 43.756317, 32.417706>,  <33.287144, 43.702663, 32.246845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127369, 43.756317, 32.417706>,  <32.861080, 43.845737, 32.702473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127369, 43.756317, 32.417706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257228, 0.826836, -0.500176,
		0.700459, 0.516106, 0.492942,
		0.665726, -0.223554, -0.711922,
		33.327087, 43.689251, 32.204128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208321, 44.470798, 32.534195>,  <32.861080, 43.845737, 32.702473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208321, 44.470798, 32.534195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254612, 44.232929, 32.215958>,  <33.282387, 44.090206, 32.025013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254612, 44.232929, 32.215958>,  <33.208321, 44.470798, 32.534195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254612, 44.232929, 32.215958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232277, 0.762566, -0.603771,
		0.965741, 0.254672, -0.049879,
		0.115728, -0.594672, -0.795596,
		33.289330, 44.054527, 31.977280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.508266, 36.775524, 26.821018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.757750, 37.012192, 27.025337>,  <28.907440, 37.154194, 27.147928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.757750, 37.012192, 27.025337>,  <28.508266, 36.775524, 26.821018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757750, 37.012192, 27.025337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673033, -0.738830, 0.034005,
		0.397511, 0.322573, -0.859029,
		0.623708, 0.591672, 0.510796,
		28.944862, 37.189693, 27.178576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161100, 36.831081, 26.426632>,  <28.508266, 36.775524, 26.821018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161100, 36.831081, 26.426632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.240612, 36.905708, 26.811481>,  <29.288319, 36.950485, 27.042391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.240612, 36.905708, 26.811481>,  <29.161100, 36.831081, 26.426632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240612, 36.905708, 26.811481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678685, -0.734426, 0.002196,
		0.707017, 0.652542, -0.272609,
		0.198778, 0.186568, 0.962122,
		29.300245, 36.961678, 27.100119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925573, 36.766159, 26.536663>,  <29.161100, 36.831081, 26.426632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925573, 36.766159, 26.536663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.777494, 36.721802, 26.905588>,  <29.688646, 36.695187, 27.126944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.777494, 36.721802, 26.905588>,  <29.925573, 36.766159, 26.536663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777494, 36.721802, 26.905588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706968, -0.677701, 0.202282,
		0.602620, 0.726928, 0.329279,
		-0.370197, -0.110891, 0.922311,
		29.666435, 36.688534, 27.182281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559919, 36.651535, 26.831863>,  <29.925573, 36.766159, 26.536663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559919, 36.651535, 26.831863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.277704, 36.557442, 27.099262>,  <30.108376, 36.500988, 27.259701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.277704, 36.557442, 27.099262>,  <30.559919, 36.651535, 26.831863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277704, 36.557442, 27.099262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657427, -0.569448, 0.493476,
		0.264593, 0.787652, 0.556413,
		-0.705536, -0.235230, 0.668495,
		30.066044, 36.486874, 27.299810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969959, 36.710789, 27.533060>,  <30.559919, 36.651535, 26.831863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969959, 36.710789, 27.533060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.658461, 36.460575, 27.552076>,  <30.471561, 36.310448, 27.563486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.658461, 36.460575, 27.552076>,  <30.969959, 36.710789, 27.533060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658461, 36.460575, 27.552076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510858, -0.588342, 0.626799,
		-0.364114, 0.512404, 0.777729,
		-0.778746, -0.625536, 0.047542,
		30.424837, 36.272915, 27.566339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008574, 36.549438, 28.154375>,  <30.969959, 36.710789, 27.533060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008574, 36.549438, 28.154375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.762463, 36.267944, 28.012281>,  <30.614796, 36.099049, 27.927025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.762463, 36.267944, 28.012281>,  <31.008574, 36.549438, 28.154375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762463, 36.267944, 28.012281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400425, -0.667164, 0.628134,
		-0.679037, 0.244234, 0.692285,
		-0.615279, -0.703734, -0.355232,
		30.577879, 36.056824, 27.905712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702417, 36.239471, 28.770868>,  <31.008574, 36.549438, 28.154375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702417, 36.239471, 28.770868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.680950, 35.976978, 28.469809>,  <30.668070, 35.819481, 28.289173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.680950, 35.976978, 28.469809>,  <30.702417, 36.239471, 28.770868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680950, 35.976978, 28.469809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433248, -0.694398, 0.574550,
		-0.899676, -0.295248, 0.321579,
		-0.053669, -0.656232, -0.752648,
		30.664850, 35.780109, 28.244015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511021, 35.563030, 29.108593>,  <30.702417, 36.239471, 28.770868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511021, 35.563030, 29.108593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.670033, 35.467705, 28.754152>,  <30.765440, 35.410511, 28.541489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.670033, 35.467705, 28.754152>,  <30.511021, 35.563030, 29.108593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670033, 35.467705, 28.754152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490222, -0.761161, 0.424637,
		-0.775661, -0.603193, -0.185761,
		0.397532, -0.238310, -0.886102,
		30.789291, 35.396210, 28.488321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435562, 34.840725, 28.957254>,  <30.511021, 35.563030, 29.108593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435562, 34.840725, 28.957254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.739845, 34.937813, 28.716452>,  <30.922415, 34.996067, 28.571970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.739845, 34.937813, 28.716452>,  <30.435562, 34.840725, 28.957254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739845, 34.937813, 28.716452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566808, -0.700355, 0.433857,
		-0.316313, -0.671261, -0.670340,
		0.760707, 0.242719, -0.602007,
		30.968058, 35.010628, 28.535851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738770, 34.209396, 28.697893>,  <30.435562, 34.840725, 28.957254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738770, 34.209396, 28.697893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.049040, 34.458157, 28.654869>,  <31.235203, 34.607410, 28.629055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.049040, 34.458157, 28.654869>,  <30.738770, 34.209396, 28.697893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049040, 34.458157, 28.654869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624174, -0.730677, 0.276617,
		0.093436, -0.281702, -0.954942,
		0.775678, 0.621896, -0.107560,
		31.281744, 34.644726, 28.622601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211126, 33.771816, 28.447386>,  <30.738770, 34.209396, 28.697893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211126, 33.771816, 28.447386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.400625, 34.091511, 28.595325>,  <31.514324, 34.283325, 28.684090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.400625, 34.091511, 28.595325>,  <31.211126, 33.771816, 28.447386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400625, 34.091511, 28.595325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583537, -0.599426, 0.547881,
		0.659583, -0.043734, -0.750358,
		0.473745, 0.799234, 0.369851,
		31.542749, 34.331280, 28.706282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996248, 33.728748, 28.306826>,  <31.211126, 33.771816, 28.447386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996248, 33.728748, 28.306826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.953646, 33.985996, 28.610153>,  <31.928085, 34.140347, 28.792150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.953646, 33.985996, 28.610153>,  <31.996248, 33.728748, 28.306826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953646, 33.985996, 28.610153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532195, -0.607347, 0.589829,
		0.839896, 0.466393, -0.277582,
		-0.106504, 0.643123, 0.758321,
		31.921694, 34.178932, 28.837650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635963, 33.856480, 28.605812>,  <31.996248, 33.728748, 28.306826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635963, 33.856480, 28.605812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.393044, 33.941452, 28.912031>,  <32.247292, 33.992435, 29.095762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.393044, 33.941452, 28.912031>,  <32.635963, 33.856480, 28.605812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393044, 33.941452, 28.912031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591304, -0.522708, 0.614114,
		0.530613, 0.825622, 0.191830,
		-0.607297, 0.212427, 0.765549,
		32.210854, 34.005180, 29.141695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167343, 34.080959, 29.211477>,  <32.635963, 33.856480, 28.605812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167343, 34.080959, 29.211477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.807667, 33.992447, 29.362467>,  <32.591862, 33.939339, 29.453060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.807667, 33.992447, 29.362467>,  <33.167343, 34.080959, 29.211477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807667, 33.992447, 29.362467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437065, -0.494944, 0.751002,
		0.020645, 0.840276, 0.541765,
		-0.899193, -0.221282, 0.377474,
		32.537910, 33.926064, 29.475710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455166, 34.745617, 29.516384>,  <33.167343, 34.080959, 29.211477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455166, 34.745617, 29.516384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822803, 34.882088, 29.437519>,  <34.043385, 34.963970, 29.390200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822803, 34.882088, 29.437519>,  <33.455166, 34.745617, 29.516384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822803, 34.882088, 29.437519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392338, 0.745766, -0.538428,
		-0.036661, 0.572218, 0.819281,
		0.919090, 0.341175, -0.197163,
		34.098530, 34.984440, 29.378370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460407, 35.444492, 29.659220>,  <33.455166, 34.745617, 29.516384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460407, 35.444492, 29.659220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.777878, 35.414803, 29.417700>,  <33.968361, 35.396988, 29.272787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.777878, 35.414803, 29.417700>,  <33.460407, 35.444492, 29.659220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777878, 35.414803, 29.417700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261017, 0.854978, -0.448199,
		0.549503, 0.513326, 0.659199,
		0.793673, -0.074224, -0.603800,
		34.015980, 35.392536, 29.236561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714413, 36.082249, 29.627190>,  <33.460407, 35.444492, 29.659220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714413, 36.082249, 29.627190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850300, 35.904808, 29.295452>,  <33.931831, 35.798344, 29.096409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850300, 35.904808, 29.295452>,  <33.714413, 36.082249, 29.627190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850300, 35.904808, 29.295452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271391, 0.798043, -0.538027,
		0.900522, 0.407853, 0.150718,
		0.339716, -0.443601, -0.829344,
		33.952213, 35.771729, 29.046650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877457, 36.597576, 29.305096>,  <33.714413, 36.082249, 29.627190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877457, 36.597576, 29.305096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.913113, 36.329773, 29.010120>,  <33.934505, 36.169090, 28.833136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.913113, 36.329773, 29.010120>,  <33.877457, 36.597576, 29.305096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913113, 36.329773, 29.010120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020084, 0.739028, -0.673375,
		0.995816, 0.074836, 0.052431,
		0.089141, -0.669505, -0.737439,
		33.939854, 36.128922, 28.788889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395767, 36.843296, 28.919933>,  <33.877457, 36.597576, 29.305096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395767, 36.843296, 28.919933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181961, 36.597889, 28.687420>,  <34.053677, 36.450645, 28.547911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181961, 36.597889, 28.687420>,  <34.395767, 36.843296, 28.919933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181961, 36.597889, 28.687420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020454, 0.696970, -0.716809,
		0.844913, -0.371254, -0.385088,
		-0.534513, -0.613517, -0.581285,
		34.021606, 36.413834, 28.513035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670883, 36.821156, 28.296694>,  <34.395767, 36.843296, 28.919933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670883, 36.821156, 28.296694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298935, 36.700981, 28.211763>,  <34.075768, 36.628876, 28.160805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298935, 36.700981, 28.211763>,  <34.670883, 36.821156, 28.296694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298935, 36.700981, 28.211763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104128, 0.768470, -0.631357,
		0.352853, -0.564968, -0.745859,
		-0.929867, -0.300441, -0.212328,
		34.019974, 36.610847, 28.148066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630634, 36.841034, 27.519739>,  <34.670883, 36.821156, 28.296694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630634, 36.841034, 27.519739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.263088, 36.862122, 27.676151>,  <34.042561, 36.874775, 27.769999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.263088, 36.862122, 27.676151>,  <34.630634, 36.841034, 27.519739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263088, 36.862122, 27.676151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191671, 0.806605, -0.559153,
		-0.344885, -0.588736, -0.731057,
		-0.918867, 0.052721, 0.391029,
		33.987427, 36.877937, 27.793461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129673, 37.032982, 26.938395>,  <34.630634, 36.841034, 27.519739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129673, 37.032982, 26.938395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946655, 37.133247, 27.279644>,  <33.836845, 37.193409, 27.484394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946655, 37.133247, 27.279644>,  <34.129673, 37.032982, 26.938395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946655, 37.133247, 27.279644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421387, 0.783739, -0.456273,
		-0.783000, -0.568260, -0.252965,
		-0.457540, 0.250666, 0.853126,
		33.809395, 37.208447, 27.535582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319378, 37.193062, 26.718973>,  <34.129673, 37.032982, 26.938395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319378, 37.193062, 26.718973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.369919, 37.349861, 27.083473>,  <33.400242, 37.443939, 27.302174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.369919, 37.349861, 27.083473>,  <33.319378, 37.193062, 26.718973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369919, 37.349861, 27.083473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464284, 0.835153, -0.294889,
		-0.876628, -0.385819, 0.287519,
		0.126348, 0.391998, 0.911248,
		33.407822, 37.467461, 27.356848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620739, 37.398315, 26.925306>,  <33.319378, 37.193062, 26.718973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620739, 37.398315, 26.925306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.906490, 37.608646, 27.109987>,  <33.077942, 37.734844, 27.220795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.906490, 37.608646, 27.109987>,  <32.620739, 37.398315, 26.925306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906490, 37.608646, 27.109987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502579, 0.844649, -0.184340,
		-0.486907, -0.100353, 0.867669,
		0.714377, 0.525829, 0.461701,
		33.120804, 37.766396, 27.248497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200668, 37.839756, 27.329487>,  <32.620739, 37.398315, 26.925306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200668, 37.839756, 27.329487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.567230, 37.998592, 27.309414>,  <32.787167, 38.093895, 27.297371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.567230, 37.998592, 27.309414>,  <32.200668, 37.839756, 27.329487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567230, 37.998592, 27.309414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392626, 0.916216, 0.079951,
		0.077724, -0.053565, 0.995535,
		0.916408, 0.397087, -0.050181,
		32.842152, 38.117718, 27.294359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210712, 38.278103, 27.943836>,  <32.200668, 37.839756, 27.329487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210712, 38.278103, 27.943836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.462402, 38.389580, 27.653622>,  <32.613415, 38.456467, 27.479492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.462402, 38.389580, 27.653622>,  <32.210712, 38.278103, 27.943836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462402, 38.389580, 27.653622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511971, 0.850980, -0.117129,
		0.584774, 0.445154, 0.678142,
		0.629225, 0.278695, -0.725537,
		32.651169, 38.473186, 27.435961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505341, 39.003242, 28.165680>,  <32.210712, 38.278103, 27.943836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505341, 39.003242, 28.165680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.553917, 38.953026, 27.771830>,  <32.583061, 38.922897, 27.535519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.553917, 38.953026, 27.771830>,  <32.505341, 39.003242, 28.165680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553917, 38.953026, 27.771830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468487, 0.867281, -0.168359,
		0.875085, 0.481730, 0.046508,
		0.121439, -0.125540, -0.984628,
		32.590347, 38.915363, 27.476440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698349, 39.705280, 27.837681>,  <32.505341, 39.003242, 28.165680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698349, 39.705280, 27.837681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.546879, 39.465816, 27.555344>,  <32.455997, 39.322140, 27.385941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.546879, 39.465816, 27.555344>,  <32.698349, 39.705280, 27.837681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546879, 39.465816, 27.555344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593240, 0.742370, -0.311374,
		0.710403, 0.300826, -0.636263,
		-0.378673, -0.598658, -0.705844,
		32.433277, 39.286221, 27.343590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354961, 39.947269, 27.572052>,  <32.698349, 39.705280, 27.837681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354961, 39.947269, 27.572052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645317, 40.220623, 27.603212>,  <33.819530, 40.384636, 27.621908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645317, 40.220623, 27.603212>,  <33.354961, 39.947269, 27.572052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645317, 40.220623, 27.603212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673704, -0.729250, 0.119651,
		0.138575, -0.034373, -0.989755,
		0.725892, 0.683383, 0.077899,
		33.863083, 40.425636, 27.626581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932499, 39.724419, 27.090973>,  <33.354961, 39.947269, 27.572052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932499, 39.724419, 27.090973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.109104, 39.972916, 27.349932>,  <34.215069, 40.122013, 27.505306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.109104, 39.972916, 27.349932>,  <33.932499, 39.724419, 27.090973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109104, 39.972916, 27.349932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767621, -0.635115, 0.085949,
		0.464566, 0.459006, -0.757292,
		0.441517, 0.621242, 0.647396,
		34.241558, 40.159286, 27.544151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553535, 39.792130, 26.836012>,  <33.932499, 39.724419, 27.090973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553535, 39.792130, 26.836012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.597538, 39.899548, 27.218798>,  <34.623940, 39.963997, 27.448469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.597538, 39.899548, 27.218798>,  <34.553535, 39.792130, 26.836012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597538, 39.899548, 27.218798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767365, -0.634870, 0.089948,
		0.631704, 0.724447, -0.275910,
		0.110005, 0.268544, 0.956966,
		34.630539, 39.980110, 27.505888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344604, 39.975597, 26.944218>,  <34.553535, 39.792130, 26.836012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344604, 39.975597, 26.944218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.185913, 39.861511, 27.293219>,  <35.090698, 39.793060, 27.502619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.185913, 39.861511, 27.293219>,  <35.344604, 39.975597, 26.944218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185913, 39.861511, 27.293219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742652, -0.658386, 0.122459,
		0.539517, 0.696549, 0.473013,
		-0.396724, -0.285215, 0.872504,
		35.066895, 39.775948, 27.554970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881138, 39.857296, 27.436579>,  <35.344604, 39.975597, 26.944218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881138, 39.857296, 27.436579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.588345, 39.676117, 27.640160>,  <35.412666, 39.567410, 27.762308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.588345, 39.676117, 27.640160>,  <35.881138, 39.857296, 27.436579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588345, 39.676117, 27.640160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665012, -0.637447, 0.389129,
		0.148172, 0.623295, 0.767820,
		-0.731987, -0.452951, 0.508950,
		35.368748, 39.540230, 27.792845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033958, 39.839542, 28.176590>,  <35.881138, 39.857296, 27.436579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033958, 39.839542, 28.176590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778667, 39.534733, 28.132778>,  <35.625492, 39.351849, 28.106491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778667, 39.534733, 28.132778>,  <36.033958, 39.839542, 28.176590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778667, 39.534733, 28.132778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600938, -0.582051, 0.547805,
		-0.481191, 0.283800, 0.829405,
		-0.638223, -0.762020, -0.109531,
		35.587200, 39.306126, 28.099918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066429, 39.551350, 28.813639>,  <36.033958, 39.839542, 28.176590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066429, 39.551350, 28.813639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886696, 39.274326, 28.587908>,  <35.778854, 39.108112, 28.452469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886696, 39.274326, 28.587908>,  <36.066429, 39.551350, 28.813639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886696, 39.274326, 28.587908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566688, -0.709293, 0.419247,
		-0.690626, -0.131417, 0.711171,
		-0.449332, -0.692556, -0.564329,
		35.751896, 39.066559, 28.418610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822735, 38.978794, 29.254934>,  <36.066429, 39.551350, 28.813639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822735, 38.978794, 29.254934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905243, 38.850533, 28.885149>,  <35.954750, 38.773575, 28.663279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905243, 38.850533, 28.885149>,  <35.822735, 38.978794, 29.254934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905243, 38.850533, 28.885149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513855, -0.768521, 0.381219,
		-0.832709, -0.553676, 0.006244,
		0.206273, -0.320653, -0.924464,
		35.967125, 38.754337, 28.607809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616402, 38.237865, 29.127954>,  <35.822735, 38.978794, 29.254934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616402, 38.237865, 29.127954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923363, 38.300716, 28.879307>,  <36.107540, 38.338428, 28.730118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923363, 38.300716, 28.879307>,  <35.616402, 38.237865, 29.127954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923363, 38.300716, 28.879307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493356, -0.763924, 0.415956,
		-0.409510, -0.625884, -0.663756,
		0.767399, 0.157130, -0.621618,
		36.153584, 38.347855, 28.692822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879353, 37.565098, 28.954344>,  <35.616402, 38.237865, 29.127954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879353, 37.565098, 28.954344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187279, 37.808857, 28.878429>,  <36.372036, 37.955112, 28.832880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187279, 37.808857, 28.878429>,  <35.879353, 37.565098, 28.954344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187279, 37.808857, 28.878429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637616, -0.720811, 0.271805,
		0.028838, -0.330249, -0.943453,
		0.769815, 0.609399, -0.189785,
		36.418224, 37.991676, 28.821493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301231, 37.193256, 28.536024>,  <35.879353, 37.565098, 28.954344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301231, 37.193256, 28.536024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531261, 37.481411, 28.691118>,  <36.669277, 37.654305, 28.784174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531261, 37.481411, 28.691118>,  <36.301231, 37.193256, 28.536024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531261, 37.481411, 28.691118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670060, -0.686666, 0.281973,
		0.469374, 0.097651, -0.877583,
		0.575072, 0.720385, 0.387735,
		36.703781, 37.697525, 28.807438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937817, 37.135715, 28.172100>,  <36.301231, 37.193256, 28.536024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937817, 37.135715, 28.172100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972687, 37.322113, 28.524294>,  <36.993607, 37.433952, 28.735611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972687, 37.322113, 28.524294>,  <36.937817, 37.135715, 28.172100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972687, 37.322113, 28.524294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600510, -0.729794, 0.326786,
		0.794851, 0.500253, -0.343450,
		0.087172, 0.465992, 0.880484,
		36.998837, 37.461910, 28.788439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574654, 36.981255, 28.327049>,  <36.937817, 37.135715, 28.172100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574654, 36.981255, 28.327049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454819, 37.095734, 28.691101>,  <37.382919, 37.164421, 28.909533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454819, 37.095734, 28.691101>,  <37.574654, 36.981255, 28.327049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454819, 37.095734, 28.691101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557158, -0.721901, 0.410406,
		0.774483, 0.630038, 0.056811,
		-0.299584, 0.286200, 0.910131,
		37.364944, 37.181595, 28.964140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193462, 36.889164, 28.736994>,  <37.574654, 36.981255, 28.327049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193462, 36.889164, 28.736994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.877922, 36.900234, 28.982580>,  <37.688599, 36.906876, 29.129932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.877922, 36.900234, 28.982580>,  <38.193462, 36.889164, 28.736994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877922, 36.900234, 28.982580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458390, -0.638951, 0.617754,
		0.409390, 0.768750, 0.491349,
		-0.788846, 0.027673, 0.613967,
		37.641270, 36.908535, 29.166771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.321884, 44.955570, 31.954451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217106, 44.612514, 31.777431>,  <33.154240, 44.406681, 31.671221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217106, 44.612514, 31.777431>,  <33.321884, 44.955570, 31.954451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217106, 44.612514, 31.777431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339658, 0.511146, -0.789533,
		0.903336, -0.056500, -0.425195,
		-0.261945, -0.857635, -0.442546,
		33.138523, 44.355225, 31.644669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636444, 44.936420, 31.312391>,  <33.321884, 44.955570, 31.954451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636444, 44.936420, 31.312391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326382, 44.685261, 31.284472>,  <33.140343, 44.534565, 31.267719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326382, 44.685261, 31.284472>,  <33.636444, 44.936420, 31.312391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326382, 44.685261, 31.284472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242042, 0.397213, -0.885233,
		0.583566, -0.669298, -0.459881,
		-0.775155, -0.627903, -0.069801,
		33.093834, 44.496891, 31.263531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702049, 44.599075, 30.675177>,  <33.636444, 44.936420, 31.312391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702049, 44.599075, 30.675177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314983, 44.560539, 30.768423>,  <33.082745, 44.537418, 30.824371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314983, 44.560539, 30.768423>,  <33.702049, 44.599075, 30.675177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314983, 44.560539, 30.768423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251510, 0.298394, -0.920708,
		0.019139, -0.949568, -0.312976,
		-0.967665, -0.096338, 0.233115,
		33.024685, 44.531639, 30.838358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398399, 44.239868, 30.103321>,  <33.702049, 44.599075, 30.675177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398399, 44.239868, 30.103321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096180, 44.431564, 30.281977>,  <32.914848, 44.546581, 30.389170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096180, 44.431564, 30.281977>,  <33.398399, 44.239868, 30.103321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096180, 44.431564, 30.281977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355523, 0.272689, -0.894005,
		-0.550233, -0.834250, -0.035648,
		-0.755544, 0.479238, 0.446638,
		32.869518, 44.575336, 30.415968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788532, 43.985458, 29.754282>,  <33.398399, 44.239868, 30.103321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788532, 43.985458, 29.754282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676476, 44.320084, 29.942616>,  <32.609241, 44.520859, 30.055614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676476, 44.320084, 29.942616>,  <32.788532, 43.985458, 29.754282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676476, 44.320084, 29.942616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564258, 0.253297, -0.785782,
		-0.776617, -0.485800, 0.401079,
		-0.280141, 0.836564, 0.470832,
		32.592434, 44.571053, 30.083864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057243, 43.955345, 29.642736>,  <32.788532, 43.985458, 29.754282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057243, 43.955345, 29.642736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.162098, 44.334358, 29.715900>,  <32.225010, 44.561768, 29.759800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.162098, 44.334358, 29.715900>,  <32.057243, 43.955345, 29.642736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162098, 44.334358, 29.715900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529000, 0.299617, -0.793970,
		-0.807119, 0.111372, 0.579789,
		0.262141, 0.947536, 0.182911,
		32.240742, 44.618618, 29.770773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713375, 44.338753, 29.298512>,  <32.057243, 43.955345, 29.642736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713375, 44.338753, 29.298512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.889908, 44.677406, 29.417463>,  <31.995827, 44.880600, 29.488834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.889908, 44.677406, 29.417463>,  <31.713375, 44.338753, 29.298512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889908, 44.677406, 29.417463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608805, 0.525962, -0.593903,
		-0.659229, 0.081062, 0.747560,
		0.441331, 0.846636, 0.297379,
		32.022308, 44.931396, 29.506678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136644, 44.787209, 29.538601>,  <31.713375, 44.338753, 29.298512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136644, 44.787209, 29.538601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.457140, 44.994293, 29.418606>,  <31.649437, 45.118546, 29.346609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.457140, 44.994293, 29.418606>,  <31.136644, 44.787209, 29.538601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457140, 44.994293, 29.418606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589032, 0.594349, -0.547531,
		-0.105165, 0.615406, 0.781163,
		0.801237, 0.517711, -0.299990,
		31.697512, 45.149605, 29.328609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953966, 45.587009, 29.661545>,  <31.136644, 44.787209, 29.538601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953966, 45.587009, 29.661545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.264536, 45.554893, 29.411514>,  <31.450878, 45.535625, 29.261496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.264536, 45.554893, 29.411514>,  <30.953966, 45.587009, 29.661545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264536, 45.554893, 29.411514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437162, 0.645799, -0.625965,
		0.453931, 0.759274, 0.466315,
		0.776425, -0.080290, -0.625074,
		31.497463, 45.530807, 29.223991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013237, 46.256439, 29.465357>,  <30.953966, 45.587009, 29.661545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013237, 46.256439, 29.465357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.190411, 46.018562, 29.196983>,  <31.296715, 45.875835, 29.035959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.190411, 46.018562, 29.196983>,  <31.013237, 46.256439, 29.465357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190411, 46.018562, 29.196983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613791, 0.344339, -0.710416,
		0.653505, 0.726483, -0.212495,
		0.442935, -0.594688, -0.670936,
		31.323292, 45.840157, 28.995703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210089, 46.666035, 28.909842>,  <31.013237, 46.256439, 29.465357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210089, 46.666035, 28.909842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.163193, 46.297512, 28.761547>,  <31.135056, 46.076397, 28.672571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.163193, 46.297512, 28.761547>,  <31.210089, 46.666035, 28.909842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163193, 46.297512, 28.761547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703725, 0.340477, -0.623576,
		0.700733, 0.187788, -0.688265,
		-0.117238, -0.921310, -0.370734,
		31.128021, 46.021118, 28.650328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182831, 46.811199, 28.281422>,  <31.210089, 46.666035, 28.909842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182831, 46.811199, 28.281422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.031527, 46.441189, 28.295580>,  <30.940744, 46.219185, 28.304075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.031527, 46.441189, 28.295580>,  <31.182831, 46.811199, 28.281422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031527, 46.441189, 28.295580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748328, 0.283053, -0.599905,
		0.544908, -0.253407, -0.799288,
		-0.378261, -0.925022, 0.035394,
		30.918049, 46.163681, 28.306198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957701, 46.623863, 27.619001>,  <31.182831, 46.811199, 28.281422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957701, 46.623863, 27.619001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.740114, 46.377663, 27.847130>,  <30.609562, 46.229942, 27.984007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.740114, 46.377663, 27.847130>,  <30.957701, 46.623863, 27.619001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740114, 46.377663, 27.847130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795718, 0.162643, -0.583422,
		0.266337, -0.771174, -0.578235,
		-0.543965, -0.615498, 0.570319,
		30.576925, 46.193012, 28.018225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669495, 46.187885, 27.236261>,  <30.957701, 46.623863, 27.619001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669495, 46.187885, 27.236261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.456779, 46.254818, 27.568335>,  <30.329151, 46.294979, 27.767578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.456779, 46.254818, 27.568335>,  <30.669495, 46.187885, 27.236261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456779, 46.254818, 27.568335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845785, -0.055177, -0.530662,
		-0.042989, -0.984355, 0.170869,
		-0.531789, 0.167331, 0.830181,
		30.297243, 46.305019, 27.817389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189541, 45.636536, 27.044250>,  <30.669495, 46.187885, 27.236261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189541, 45.636536, 27.044250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.193710, 45.509769, 26.664892>,  <31.196211, 45.433708, 26.437277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.193710, 45.509769, 26.664892>,  <31.189541, 45.636536, 27.044250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193710, 45.509769, 26.664892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395077, -0.869975, 0.295056,
		-0.918589, -0.377764, 0.116141,
		0.010422, -0.316920, -0.948395,
		31.196836, 45.414692, 26.380373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095203, 44.868305, 27.134315>,  <31.189541, 45.636536, 27.044250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095203, 44.868305, 27.134315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.191538, 44.906387, 26.747961>,  <31.249338, 44.929237, 26.516148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.191538, 44.906387, 26.747961>,  <31.095203, 44.868305, 27.134315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191538, 44.906387, 26.747961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465642, -0.884500, 0.028919,
		-0.851573, -0.456721, -0.257351,
		0.240834, 0.095207, -0.965885,
		31.263788, 44.934948, 26.458195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867182, 44.267895, 26.852186>,  <31.095203, 44.868305, 27.134315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867182, 44.267895, 26.852186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.130966, 44.423714, 26.595013>,  <31.289236, 44.517204, 26.440708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.130966, 44.423714, 26.595013>,  <30.867182, 44.267895, 26.852186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130966, 44.423714, 26.595013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399177, -0.906182, -0.139615,
		-0.637001, -0.164574, -0.753090,
		0.659460, 0.389551, -0.642933,
		31.328804, 44.540581, 26.402132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825899, 43.801796, 26.386618>,  <30.867182, 44.267895, 26.852186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825899, 43.801796, 26.386618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.173834, 43.995033, 26.346619>,  <31.382595, 44.110977, 26.322618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.173834, 43.995033, 26.346619>,  <30.825899, 43.801796, 26.386618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173834, 43.995033, 26.346619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473113, -0.874304, -0.108423,
		-0.139807, 0.047000, -0.989063,
		0.869838, 0.483097, -0.099998,
		31.434786, 44.139961, 26.316620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245449, 43.558834, 25.721930>,  <30.825899, 43.801796, 26.386618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245449, 43.558834, 25.721930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497711, 43.704514, 25.996048>,  <31.649069, 43.791924, 26.160519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497711, 43.704514, 25.996048>,  <31.245449, 43.558834, 25.721930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497711, 43.704514, 25.996048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450963, -0.890635, 0.058321,
		0.631590, 0.272263, -0.725925,
		0.630655, 0.364200, 0.685297,
		31.686907, 43.813774, 26.201637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799564, 43.080830, 25.669054>,  <31.245449, 43.558834, 25.721930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799564, 43.080830, 25.669054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956408, 43.272915, 25.982906>,  <32.050514, 43.388168, 26.171217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956408, 43.272915, 25.982906>,  <31.799564, 43.080830, 25.669054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956408, 43.272915, 25.982906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562751, -0.799937, 0.208357,
		0.727711, 0.359853, -0.583903,
		0.392108, 0.480215, 0.784630,
		32.074039, 43.416981, 26.218296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508087, 43.021202, 25.614382>,  <31.799564, 43.080830, 25.669054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508087, 43.021202, 25.614382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442005, 43.110538, 25.998636>,  <32.402355, 43.164143, 26.229189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442005, 43.110538, 25.998636>,  <32.508087, 43.021202, 25.614382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442005, 43.110538, 25.998636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504939, -0.817531, 0.276910,
		0.847197, 0.530811, 0.022288,
		-0.165208, 0.223344, 0.960637,
		32.392445, 43.177540, 26.286827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203133, 43.075371, 25.985268>,  <32.508087, 43.021202, 25.614382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203133, 43.075371, 25.985268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.935699, 42.999317, 26.272835>,  <32.775238, 42.953686, 26.445375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.935699, 42.999317, 26.272835>,  <33.203133, 43.075371, 25.985268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935699, 42.999317, 26.272835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583421, -0.733571, 0.348560,
		0.461105, 0.652474, 0.601381,
		-0.668582, -0.190135, 0.718920,
		32.735126, 42.942276, 26.488510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676258, 43.015072, 26.485281>,  <33.203133, 43.075371, 25.985268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676258, 43.015072, 26.485281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330517, 42.842426, 26.588511>,  <33.123074, 42.738838, 26.650448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330517, 42.842426, 26.588511>,  <33.676258, 43.015072, 26.485281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330517, 42.842426, 26.588511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502800, -0.732146, 0.459516,
		-0.009388, 0.526942, 0.849849,
		-0.864352, -0.431618, 0.258073,
		33.071213, 42.712940, 26.665932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691891, 42.818733, 27.137653>,  <33.676258, 43.015072, 26.485281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691891, 42.818733, 27.137653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381363, 42.584240, 27.044998>,  <33.195045, 42.443542, 26.989405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381363, 42.584240, 27.044998>,  <33.691891, 42.818733, 27.137653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381363, 42.584240, 27.044998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502494, -0.797433, 0.334067,
		-0.380558, 0.142946, 0.913642,
		-0.776322, -0.586232, -0.231639,
		33.148468, 42.408371, 26.975506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640541, 42.464306, 27.733213>,  <33.691891, 42.818733, 27.137653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640541, 42.464306, 27.733213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434830, 42.236938, 27.476336>,  <33.311401, 42.100517, 27.322208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434830, 42.236938, 27.476336>,  <33.640541, 42.464306, 27.733213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434830, 42.236938, 27.476336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333935, -0.822435, 0.460530,
		-0.789937, 0.022391, 0.612779,
		-0.514282, -0.568418, -0.642195,
		33.280544, 42.066414, 27.283676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234318, 41.960274, 28.155701>,  <33.640541, 42.464306, 27.733213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234318, 41.960274, 28.155701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303295, 41.819366, 27.787752>,  <33.344681, 41.734821, 27.566982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303295, 41.819366, 27.787752>,  <33.234318, 41.960274, 28.155701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303295, 41.819366, 27.787752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428477, -0.814056, 0.392073,
		-0.886945, -0.461755, 0.010563,
		0.172442, -0.352273, -0.919874,
		33.355026, 41.713684, 27.511789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101315, 41.223576, 28.262920>,  <33.234318, 41.960274, 28.155701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101315, 41.223576, 28.262920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.285934, 41.231995, 27.908176>,  <33.396706, 41.237045, 27.695330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.285934, 41.231995, 27.908176>,  <33.101315, 41.223576, 28.262920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285934, 41.231995, 27.908176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432685, -0.878081, 0.204345,
		-0.774436, -0.478048, -0.414389,
		0.461554, 0.021048, -0.886862,
		33.424400, 41.238308, 27.642118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940552, 40.628395, 27.905977>,  <33.101315, 41.223576, 28.262920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940552, 40.628395, 27.905977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.283310, 40.763645, 27.750338>,  <33.488964, 40.844795, 27.656954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.283310, 40.763645, 27.750338>,  <32.940552, 40.628395, 27.905977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283310, 40.763645, 27.750338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457693, -0.846322, 0.272499,
		-0.237163, -0.411591, -0.879970,
		0.856896, 0.338129, -0.389098,
		33.540379, 40.865086, 27.633608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728371, 40.230453, 27.348898>,  <32.940552, 40.628395, 27.905977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728371, 40.230453, 27.348898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.483402, 39.942699, 27.217789>,  <32.336422, 39.770046, 27.139122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.483402, 39.942699, 27.217789>,  <32.728371, 40.230453, 27.348898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483402, 39.942699, 27.217789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635602, 0.694612, -0.336934,
		0.470060, 0.001989, -0.882632,
		-0.612417, -0.719381, -0.327774,
		32.299679, 39.726887, 27.119457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446712, 40.527275, 26.760448>,  <32.728371, 40.230453, 27.348898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446712, 40.527275, 26.760448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204357, 40.222496, 26.851954>,  <32.058945, 40.039627, 26.906857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204357, 40.222496, 26.851954>,  <32.446712, 40.527275, 26.760448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204357, 40.222496, 26.851954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794906, 0.568239, -0.212673,
		0.032054, -0.310701, -0.949967,
		-0.605886, -0.761951, 0.228764,
		32.022591, 39.993912, 26.920582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035061, 40.559612, 26.184677>,  <32.446712, 40.527275, 26.760448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035061, 40.559612, 26.184677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836252, 40.361019, 26.469347>,  <31.716969, 40.241863, 26.640148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836252, 40.361019, 26.469347>,  <32.035061, 40.559612, 26.184677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836252, 40.361019, 26.469347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851514, 0.436915, -0.289877,
		-0.167022, -0.750074, -0.639916,
		-0.497018, -0.496482, 0.711674,
		31.687147, 40.212074, 26.682850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422596, 40.193325, 25.794996>,  <32.035061, 40.559612, 26.184677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422596, 40.193325, 25.794996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.356983, 40.261326, 26.183674>,  <31.317616, 40.302124, 26.416882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.356983, 40.261326, 26.183674>,  <31.422596, 40.193325, 25.794996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356983, 40.261326, 26.183674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908083, 0.358753, -0.216059,
		-0.385329, -0.917822, 0.095527,
		-0.164033, 0.170001, 0.971696,
		31.307774, 40.312325, 26.475183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573565, 40.226246, 25.828016>,  <31.422596, 40.193325, 25.794996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573565, 40.226246, 25.828016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.681892, 40.306030, 26.204712>,  <30.746889, 40.353901, 26.430729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.681892, 40.306030, 26.204712>,  <30.573565, 40.226246, 25.828016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681892, 40.306030, 26.204712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782091, 0.615965, 0.094446,
		-0.561240, -0.762104, 0.322811,
		0.270818, 0.199461, 0.941740,
		30.763138, 40.365868, 26.487234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035465, 39.959850, 26.321264>,  <30.573565, 40.226246, 25.828016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035465, 39.959850, 26.321264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.242643, 40.285755, 26.425497>,  <30.366951, 40.481297, 26.488037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.242643, 40.285755, 26.425497>,  <30.035465, 39.959850, 26.321264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242643, 40.285755, 26.425497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835108, 0.547598, -0.052266,
		-0.185279, -0.190544, 0.964036,
		0.517945, 0.814757, 0.260583,
		30.398027, 40.530182, 26.503672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584980, 40.416039, 26.453997>,  <30.035465, 39.959850, 26.321264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584980, 40.416039, 26.453997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.863169, 40.702518, 26.477245>,  <30.030083, 40.874405, 26.491194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.863169, 40.702518, 26.477245>,  <29.584980, 40.416039, 26.453997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863169, 40.702518, 26.477245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715603, 0.683028, 0.146235,
		0.065035, -0.143294, 0.987541,
		0.695473, 0.716198, 0.058121,
		30.071810, 40.917377, 26.494682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290203, 40.321632, 27.163490>,  <29.584980, 40.416039, 26.453997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290203, 40.321632, 27.163490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.976984, 40.231483, 27.395367>,  <28.789053, 40.177395, 27.534492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.976984, 40.231483, 27.395367>,  <29.290203, 40.321632, 27.163490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976984, 40.231483, 27.395367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196157, -0.973961, -0.113681,
		0.590216, 0.024693, 0.806867,
		-0.783050, -0.225369, 0.579691,
		28.742069, 40.163872, 27.569275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540236, 39.808853, 27.754095>,  <29.290203, 40.321632, 27.163490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540236, 39.808853, 27.754095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.149065, 39.769249, 27.680494>,  <28.914362, 39.745487, 27.636333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.149065, 39.769249, 27.680494>,  <29.540236, 39.808853, 27.754095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149065, 39.769249, 27.680494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124376, -0.983433, -0.131869,
		-0.167897, -0.151844, 0.974040,
		-0.977927, -0.099007, -0.184001,
		28.855686, 39.739548, 27.625294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346481, 39.376850, 28.239765>,  <29.540236, 39.808853, 27.754095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346481, 39.376850, 28.239765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.065018, 39.336094, 27.958487>,  <28.896139, 39.311642, 27.789721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.065018, 39.336094, 27.958487>,  <29.346481, 39.376850, 28.239765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065018, 39.336094, 27.958487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192801, -0.979914, -0.050948,
		-0.683880, -0.171427, 0.709169,
		-0.703659, -0.101886, -0.703195,
		28.853920, 39.305527, 27.747528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925005, 38.798359, 28.446705>,  <29.346481, 39.376850, 28.239765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925005, 38.798359, 28.446705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.867294, 38.845909, 28.053757>,  <28.832668, 38.874439, 27.817987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.867294, 38.845909, 28.053757>,  <28.925005, 38.798359, 28.446705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867294, 38.845909, 28.053757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180796, -0.972880, -0.144277,
		-0.972881, -0.198425, 0.118873,
		0.144277, -0.118873, 0.982371,
		28.824011, 38.881573, 27.759045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344284, 38.317059, 28.208496>,  <28.925005, 38.798359, 28.446705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344284, 38.317059, 28.208496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.552740, 38.419346, 27.882792>,  <28.677814, 38.480717, 27.687368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.552740, 38.419346, 27.882792>,  <28.344284, 38.317059, 28.208496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552740, 38.419346, 27.882792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019426, -0.957365, -0.288227,
		-0.853250, 0.134389, -0.503890,
		0.521141, 0.255718, -0.814261,
		28.709082, 38.496059, 27.638514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091413, 37.847027, 27.814205>,  <28.344284, 38.317059, 28.208496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091413, 37.847027, 27.814205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.440374, 37.941120, 27.642820>,  <28.649752, 37.997578, 27.539989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.440374, 37.941120, 27.642820>,  <28.091413, 37.847027, 27.814205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440374, 37.941120, 27.642820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117797, -0.951925, -0.282778,
		-0.474381, 0.196225, -0.858171,
		0.872403, 0.235234, -0.428460,
		28.702095, 38.011692, 27.514282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114805, 37.509712, 27.090111>,  <28.091413, 37.847027, 27.814205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114805, 37.509712, 27.090111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.501490, 37.595787, 27.145485>,  <28.733500, 37.647434, 27.178709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.501490, 37.595787, 27.145485>,  <28.114805, 37.509712, 27.090111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501490, 37.595787, 27.145485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242646, -0.942680, -0.229079,
		0.081202, 0.255044, -0.963514,
		0.966710, 0.215191, 0.138433,
		28.791502, 37.660343, 27.187016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.673662, 45.043098, 29.244722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.866581, 44.878273, 28.935507>,  <27.982332, 44.779377, 28.749977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.866581, 44.878273, 28.935507>,  <27.673662, 45.043098, 29.244722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866581, 44.878273, 28.935507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484962, -0.609297, 0.627352,
		-0.729521, -0.677464, -0.094026,
		0.482298, -0.412067, -0.773039,
		28.011271, 44.754654, 28.703594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670792, 44.238918, 29.273960>,  <27.673662, 45.043098, 29.244722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670792, 44.238918, 29.273960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.008951, 44.407131, 29.142233>,  <28.211847, 44.508060, 29.063196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.008951, 44.407131, 29.142233>,  <27.670792, 44.238918, 29.273960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008951, 44.407131, 29.142233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490951, -0.368928, 0.789214,
		0.210398, -0.828880, -0.518354,
		0.845399, 0.420535, -0.329318,
		28.262571, 44.533291, 29.043438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097878, 43.681015, 29.285275>,  <27.670792, 44.238918, 29.273960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097878, 43.681015, 29.285275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321323, 44.012493, 29.271299>,  <28.455391, 44.211380, 29.262915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321323, 44.012493, 29.271299>,  <28.097878, 43.681015, 29.285275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321323, 44.012493, 29.271299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641716, -0.405120, 0.651213,
		0.525501, -0.386197, -0.758090,
		0.558614, 0.828692, -0.034938,
		28.488907, 44.261101, 29.260818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783686, 43.529495, 29.058846>,  <28.097878, 43.681015, 29.285275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783686, 43.529495, 29.058846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796701, 43.854156, 29.292137>,  <28.804510, 44.048954, 29.432112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796701, 43.854156, 29.292137>,  <28.783686, 43.529495, 29.058846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796701, 43.854156, 29.292137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712001, -0.428350, 0.556391,
		0.701424, 0.397157, -0.591837,
		0.032538, 0.811654, 0.583231,
		28.806463, 44.097652, 29.467106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483524, 43.540455, 29.261456>,  <28.783686, 43.529495, 29.058846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483524, 43.540455, 29.261456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.305363, 43.794922, 29.513458>,  <29.198465, 43.947601, 29.664660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.305363, 43.794922, 29.513458>,  <29.483524, 43.540455, 29.261456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305363, 43.794922, 29.513458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781495, -0.067131, 0.620290,
		0.436901, 0.768625, -0.467261,
		-0.445402, 0.636168, 0.630006,
		29.171741, 43.985771, 29.702459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090132, 43.822899, 29.443480>,  <29.483524, 43.540455, 29.261456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090132, 43.822899, 29.443480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775908, 43.865887, 29.687231>,  <29.587374, 43.891682, 29.833483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775908, 43.865887, 29.687231>,  <30.090132, 43.822899, 29.443480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775908, 43.865887, 29.687231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567025, -0.269265, 0.778447,
		0.247747, 0.957051, 0.150584,
		-0.785560, 0.107472, 0.609381,
		29.540239, 43.898129, 29.870045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405846, 44.078823, 30.054333>,  <30.090132, 43.822899, 29.443480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405846, 44.078823, 30.054333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063313, 43.904896, 30.165781>,  <29.857792, 43.800541, 30.232651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063313, 43.904896, 30.165781>,  <30.405846, 44.078823, 30.054333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063313, 43.904896, 30.165781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441608, -0.336859, 0.831570,
		-0.267722, 0.835143, 0.480481,
		-0.856333, -0.434814, 0.278622,
		29.806412, 43.774452, 30.249367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188999, 44.279278, 30.773796>,  <30.405846, 44.078823, 30.054333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188999, 44.279278, 30.773796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.023476, 43.922421, 30.701307>,  <29.924162, 43.708305, 30.657814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.023476, 43.922421, 30.701307>,  <30.188999, 44.279278, 30.773796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023476, 43.922421, 30.701307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351828, -0.340324, 0.872007,
		-0.839630, 0.297086, 0.454711,
		-0.413810, -0.892143, -0.181223,
		29.899332, 43.654778, 30.646940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041088, 44.076176, 31.440756>,  <30.188999, 44.279278, 30.773796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041088, 44.076176, 31.440756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997526, 43.748032, 31.216206>,  <29.971390, 43.551144, 31.081476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997526, 43.748032, 31.216206>,  <30.041088, 44.076176, 31.440756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997526, 43.748032, 31.216206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107152, -0.571131, 0.813835,
		-0.988260, 0.028478, 0.150102,
		-0.108904, -0.820365, -0.561375,
		29.964855, 43.501923, 31.047792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690620, 43.661251, 31.812618>,  <30.041088, 44.076176, 31.440756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690620, 43.661251, 31.812618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852295, 43.382298, 31.575876>,  <29.949299, 43.214928, 31.433830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852295, 43.382298, 31.575876>,  <29.690620, 43.661251, 31.812618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852295, 43.382298, 31.575876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044341, -0.631364, 0.774218,
		-0.913602, -0.339171, -0.224266,
		0.404186, -0.697382, -0.591855,
		29.973551, 43.173084, 31.398319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514673, 43.047604, 32.102764>,  <29.690620, 43.661251, 31.812618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514673, 43.047604, 32.102764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.807293, 42.964851, 31.842909>,  <29.982864, 42.915199, 31.686995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.807293, 42.964851, 31.842909>,  <29.514673, 43.047604, 32.102764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807293, 42.964851, 31.842909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360276, -0.691646, 0.625961,
		-0.578821, -0.691972, -0.431440,
		0.731552, -0.206881, -0.649640,
		30.026758, 42.902786, 31.648016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499771, 42.363533, 32.106144>,  <29.514673, 43.047604, 32.102764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499771, 42.363533, 32.106144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864357, 42.465046, 31.976635>,  <30.083109, 42.525951, 31.898930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864357, 42.465046, 31.976635>,  <29.499771, 42.363533, 32.106144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864357, 42.465046, 31.976635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410558, -0.610824, 0.677005,
		-0.025956, -0.749992, -0.660937,
		0.911465, 0.253781, -0.323770,
		30.137796, 42.541180, 31.879503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175444, 41.707478, 32.183411>,  <29.499771, 42.363533, 32.106144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175444, 41.707478, 32.183411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849560, 41.541752, 32.345688>,  <28.654030, 41.442314, 32.443054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849560, 41.541752, 32.345688>,  <29.175444, 41.707478, 32.183411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849560, 41.541752, 32.345688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575796, 0.495247, -0.650530,
		0.068604, -0.763593, -0.642043,
		-0.814710, -0.414315, 0.405698,
		28.605146, 41.417458, 32.467396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771971, 41.454113, 31.645119>,  <29.175444, 41.707478, 32.183411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771971, 41.454113, 31.645119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501438, 41.485950, 31.938032>,  <28.339119, 41.505054, 32.113781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501438, 41.485950, 31.938032>,  <28.771971, 41.454113, 31.645119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501438, 41.485950, 31.938032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534079, 0.631660, -0.561930,
		-0.507281, -0.771149, -0.384702,
		-0.676332, 0.079595, 0.732284,
		28.298538, 41.509830, 32.157719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162302, 41.407703, 31.261166>,  <28.771971, 41.454113, 31.645119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162302, 41.407703, 31.261166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.067713, 41.547688, 31.623735>,  <28.010960, 41.631676, 31.841278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.067713, 41.547688, 31.623735>,  <28.162302, 41.407703, 31.261166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067713, 41.547688, 31.623735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757632, 0.517662, -0.397517,
		-0.608338, -0.780740, 0.142727,
		-0.236473, 0.349959, 0.906427,
		27.996771, 41.652676, 31.895664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469604, 41.226570, 31.411634>,  <28.162302, 41.407703, 31.261166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469604, 41.226570, 31.411634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532902, 41.550705, 31.637312>,  <27.570881, 41.745186, 31.772718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532902, 41.550705, 31.637312>,  <27.469604, 41.226570, 31.411634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532902, 41.550705, 31.637312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783246, 0.450943, -0.427991,
		-0.601236, -0.374176, 0.706051,
		0.158244, 0.810335, 0.564195,
		27.580376, 41.793804, 31.806570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946207, 41.337975, 31.596935>,  <27.469604, 41.226570, 31.411634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946207, 41.337975, 31.596935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111885, 41.696468, 31.660429>,  <27.211292, 41.911564, 31.698526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111885, 41.696468, 31.660429>,  <26.946207, 41.337975, 31.596935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111885, 41.696468, 31.660429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812043, 0.442647, -0.380328,
		-0.411129, 0.028629, 0.911128,
		0.414196, 0.896239, 0.158737,
		27.236143, 41.965340, 31.708050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400732, 41.697536, 31.951038>,  <26.946207, 41.337975, 31.596935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400732, 41.697536, 31.951038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.656227, 41.948750, 31.773232>,  <26.809525, 42.099476, 31.666548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.656227, 41.948750, 31.773232>,  <26.400732, 41.697536, 31.951038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656227, 41.948750, 31.773232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761844, 0.435328, -0.479670,
		-0.107737, 0.645034, 0.756521,
		0.638738, 0.628029, -0.444515,
		26.847849, 42.137157, 31.639877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133377, 42.340176, 31.986469>,  <26.400732, 41.697536, 31.951038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133377, 42.340176, 31.986469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405731, 42.421413, 31.705004>,  <26.569143, 42.470158, 31.536123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405731, 42.421413, 31.705004>,  <26.133377, 42.340176, 31.986469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405731, 42.421413, 31.705004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656976, 0.594005, -0.464263,
		0.323691, 0.778402, 0.537879,
		0.680887, 0.203096, -0.703666,
		26.609997, 42.482342, 31.493904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314791, 43.083439, 31.858290>,  <26.133377, 42.340176, 31.986469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314791, 43.083439, 31.858290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.393009, 42.898918, 31.512119>,  <26.439939, 42.788204, 31.304417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.393009, 42.898918, 31.512119>,  <26.314791, 43.083439, 31.858290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393009, 42.898918, 31.512119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544481, 0.682892, -0.487032,
		0.815661, 0.566446, -0.117632,
		0.195547, -0.461301, -0.865426,
		26.451674, 42.760529, 31.252491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172983, 43.667217, 31.459116>,  <26.314791, 43.083439, 31.858290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172983, 43.667217, 31.459116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.246580, 43.391003, 31.179314>,  <26.290737, 43.225273, 31.011433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.246580, 43.391003, 31.179314>,  <26.172983, 43.667217, 31.459116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246580, 43.391003, 31.179314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382575, 0.605229, -0.698093,
		0.905419, 0.396057, -0.152824,
		0.183991, -0.690533, -0.699508,
		26.301777, 43.183842, 30.969461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471130, 44.009880, 30.960716>,  <26.172983, 43.667217, 31.459116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471130, 44.009880, 30.960716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.319702, 43.677399, 30.797850>,  <26.228846, 43.477909, 30.700129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.319702, 43.677399, 30.797850>,  <26.471130, 44.009880, 30.960716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319702, 43.677399, 30.797850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397220, 0.543242, -0.739665,
		0.836002, -0.118282, -0.535827,
		-0.378573, -0.831203, -0.407167,
		26.206131, 43.428040, 30.675699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581299, 44.077888, 30.215797>,  <26.471130, 44.009880, 30.960716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581299, 44.077888, 30.215797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.307623, 43.789867, 30.262119>,  <26.143417, 43.617054, 30.289911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.307623, 43.789867, 30.262119>,  <26.581299, 44.077888, 30.215797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307623, 43.789867, 30.262119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365307, 0.200931, -0.908943,
		0.631218, -0.664192, -0.400515,
		-0.684189, -0.720052, 0.115802,
		26.102365, 43.573853, 30.296860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622229, 43.713760, 29.575939>,  <26.581299, 44.077888, 30.215797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622229, 43.713760, 29.575939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.260082, 43.649353, 29.733107>,  <26.042795, 43.610706, 29.827406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.260082, 43.649353, 29.733107>,  <26.622229, 43.713760, 29.575939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260082, 43.649353, 29.733107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415822, 0.148694, -0.897208,
		0.086041, -0.975686, -0.201577,
		-0.905367, -0.161017, 0.392918,
		25.988472, 43.601048, 29.850983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223999, 43.280945, 29.044481>,  <26.622229, 43.713760, 29.575939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223999, 43.280945, 29.044481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.939556, 43.443409, 29.274040>,  <25.768890, 43.540886, 29.411776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.939556, 43.443409, 29.274040>,  <26.223999, 43.280945, 29.044481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939556, 43.443409, 29.274040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555141, 0.176537, -0.812806,
		-0.431443, -0.896587, 0.099939,
		-0.711108, 0.406160, 0.573898,
		25.726223, 43.565258, 29.446209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898272, 42.966507, 28.909437>,  <26.223999, 43.280945, 29.044481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898272, 42.966507, 28.909437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.723959, 42.827423, 28.577366>,  <26.619371, 42.743973, 28.378122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.723959, 42.827423, 28.577366>,  <26.898272, 42.966507, 28.909437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723959, 42.827423, 28.577366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465881, -0.876329, 0.122482,
		-0.770097, -0.333388, 0.543878,
		-0.435782, -0.347706, -0.830177,
		26.593224, 42.723110, 28.328312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778261, 42.302250, 29.089893>,  <26.898272, 42.966507, 28.909437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778261, 42.302250, 29.089893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.773140, 42.295147, 28.689989>,  <26.770067, 42.290886, 28.450047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.773140, 42.295147, 28.689989>,  <26.778261, 42.302250, 29.089893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773140, 42.295147, 28.689989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489124, -0.872165, 0.009229,
		-0.872120, -0.488889, 0.019848,
		-0.012799, -0.017756, -0.999760,
		26.769299, 42.289818, 28.390060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597700, 41.598564, 28.873116>,  <26.778261, 42.302250, 29.089893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597700, 41.598564, 28.873116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.795013, 41.759586, 28.564669>,  <26.913403, 41.856201, 28.379601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.795013, 41.759586, 28.564669>,  <26.597700, 41.598564, 28.873116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795013, 41.759586, 28.564669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545372, -0.833732, -0.086369,
		-0.677672, -0.377940, -0.630811,
		0.493285, 0.402556, -0.771115,
		26.942999, 41.880352, 28.333334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664852, 41.044483, 28.362051>,  <26.597700, 41.598564, 28.873116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664852, 41.044483, 28.362051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945217, 41.315460, 28.272787>,  <27.113436, 41.478046, 28.219229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945217, 41.315460, 28.272787>,  <26.664852, 41.044483, 28.362051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945217, 41.315460, 28.272787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646148, -0.735577, -0.203518,
		-0.302022, -0.001546, -0.953300,
		0.700911, 0.677440, -0.223159,
		27.155491, 41.518692, 28.205839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889784, 40.835991, 27.824095>,  <26.664852, 41.044483, 28.362051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889784, 40.835991, 27.824095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.188318, 41.079758, 27.931120>,  <27.367439, 41.226017, 27.995335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.188318, 41.079758, 27.931120>,  <26.889784, 40.835991, 27.824095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188318, 41.079758, 27.931120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663842, -0.652653, -0.365183,
		-0.047923, 0.450170, -0.891656,
		0.746336, 0.609419, 0.267565,
		27.412220, 41.262585, 28.011389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262287, 40.835648, 27.227020>,  <26.889784, 40.835991, 27.824095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262287, 40.835648, 27.227020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505920, 40.907379, 27.536047>,  <27.652102, 40.950417, 27.721462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505920, 40.907379, 27.536047>,  <27.262287, 40.835648, 27.227020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505920, 40.907379, 27.536047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676424, -0.626044, -0.387968,
		0.414085, 0.758887, -0.502617,
		0.609084, 0.179330, 0.772565,
		27.688646, 40.961178, 27.767817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887226, 40.606133, 26.948635>,  <27.262287, 40.835648, 27.227020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887226, 40.606133, 26.948635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.976780, 40.667747, 27.333582>,  <28.030512, 40.704716, 27.564550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.976780, 40.667747, 27.333582>,  <27.887226, 40.606133, 26.948635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976780, 40.667747, 27.333582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730252, -0.680451, -0.060970,
		0.645451, 0.716420, -0.264833,
		0.223886, 0.154041, 0.962365,
		28.043945, 40.713959, 27.622292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573257, 40.872650, 26.984032>,  <27.887226, 40.606133, 26.948635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573257, 40.872650, 26.984032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485632, 40.683285, 27.325298>,  <28.433058, 40.569668, 27.530058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485632, 40.683285, 27.325298>,  <28.573257, 40.872650, 26.984032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485632, 40.683285, 27.325298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634978, -0.733073, -0.243734,
		0.740820, 0.488350, 0.461194,
		-0.219061, -0.473412, 0.853167,
		28.419914, 40.541260, 27.581249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262669, 41.089458, 26.810648>,  <28.573257, 40.872650, 26.984032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262669, 41.089458, 26.810648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.592724, 41.258347, 26.660511>,  <29.790756, 41.359680, 26.570429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.592724, 41.258347, 26.660511>,  <29.262669, 41.089458, 26.810648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592724, 41.258347, 26.660511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446887, 0.894280, 0.023547,
		0.345601, 0.148306, 0.926588,
		0.825137, 0.422218, -0.375340,
		29.840265, 41.385014, 26.547909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472038, 41.699188, 27.214705>,  <29.262669, 41.089458, 26.810648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472038, 41.699188, 27.214705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.610567, 41.737675, 26.841436>,  <29.693684, 41.760765, 26.617476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.610567, 41.737675, 26.841436>,  <29.472038, 41.699188, 27.214705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610567, 41.737675, 26.841436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382895, 0.922596, -0.046979,
		0.856419, 0.373576, 0.356353,
		0.346320, 0.096212, -0.933170,
		29.714462, 41.766537, 26.561485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703171, 42.373299, 27.232136>,  <29.472038, 41.699188, 27.214705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703171, 42.373299, 27.232136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676167, 42.311485, 26.837864>,  <29.659964, 42.274395, 26.601301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676167, 42.311485, 26.837864>,  <29.703171, 42.373299, 27.232136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676167, 42.311485, 26.837864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334852, 0.934139, -0.123521,
		0.939849, 0.321717, -0.114812,
		-0.067511, -0.154536, -0.985678,
		29.655912, 42.265125, 26.542160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986942, 43.025269, 26.799490>,  <29.703171, 42.373299, 27.232136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986942, 43.025269, 26.799490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730543, 42.812923, 26.577747>,  <29.576704, 42.685516, 26.444702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730543, 42.812923, 26.577747>,  <29.986942, 43.025269, 26.799490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730543, 42.812923, 26.577747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394331, 0.847408, -0.355531,
		0.658502, -0.009295, -0.752522,
		-0.640998, -0.530861, -0.554354,
		29.538244, 42.653664, 26.411440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032049, 43.340889, 26.148466>,  <29.986942, 43.025269, 26.799490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032049, 43.340889, 26.148466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688923, 43.139000, 26.187256>,  <29.483047, 43.017864, 26.210529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688923, 43.139000, 26.187256>,  <30.032049, 43.340889, 26.148466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688923, 43.139000, 26.187256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472191, 0.699442, -0.536485,
		0.202949, -0.505997, -0.838319,
		-0.857816, -0.504726, 0.096976,
		29.431578, 42.987583, 26.216349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759382, 43.194077, 25.390705>,  <30.032049, 43.340889, 26.148466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759382, 43.194077, 25.390705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473763, 43.195858, 25.670738>,  <29.302391, 43.196926, 25.838758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473763, 43.195858, 25.670738>,  <29.759382, 43.194077, 25.390705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473763, 43.195858, 25.670738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466253, 0.742926, -0.480281,
		-0.522247, -0.669359, -0.528409,
		-0.714049, 0.004453, 0.700082,
		29.259548, 43.197193, 25.880762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262815, 43.376644, 24.955759>,  <29.759382, 43.194077, 25.390705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262815, 43.376644, 24.955759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.100210, 43.432865, 25.316866>,  <29.002647, 43.466599, 25.533531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.100210, 43.432865, 25.316866>,  <29.262815, 43.376644, 24.955759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100210, 43.432865, 25.316866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578610, 0.725090, -0.373437,
		-0.707075, -0.674159, -0.213435,
		-0.406515, 0.140552, 0.902768,
		28.978256, 43.475029, 25.587696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502914, 43.563118, 24.881224>,  <29.262815, 43.376644, 24.955759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502914, 43.563118, 24.881224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609310, 43.673386, 25.250711>,  <28.673147, 43.739548, 25.472404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609310, 43.673386, 25.250711>,  <28.502914, 43.563118, 24.881224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609310, 43.673386, 25.250711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427170, 0.892725, -0.143416,
		-0.864161, -0.356437, 0.355215,
		0.265990, 0.275672, 0.923718,
		28.689108, 43.756088, 25.527826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011587, 43.967087, 25.145403>,  <28.502914, 43.563118, 24.881224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011587, 43.967087, 25.145403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.315754, 44.081779, 25.378485>,  <28.498255, 44.150597, 25.518333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.315754, 44.081779, 25.378485>,  <28.011587, 43.967087, 25.145403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315754, 44.081779, 25.378485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174367, 0.954450, -0.242117,
		-0.625588, 0.082505, 0.775778,
		0.760418, 0.286736, 0.582707,
		28.543879, 44.167801, 25.553297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.629349, 31.647028, 31.836205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.805397, 31.980553, 31.969505>,  <36.911026, 32.180668, 32.049484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.805397, 31.980553, 31.969505>,  <36.629349, 31.647028, 31.836205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805397, 31.980553, 31.969505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626243, 0.550999, -0.551562,
		-0.643518, 0.034057, 0.764673,
		0.440119, 0.833811, 0.333250,
		36.937431, 32.230698, 32.069481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094345, 32.205067, 32.006062>,  <36.629349, 31.647028, 31.836205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094345, 32.205067, 32.006062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428585, 32.420197, 31.961288>,  <36.629128, 32.549274, 31.934423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428585, 32.420197, 31.961288>,  <36.094345, 32.205067, 32.006062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428585, 32.420197, 31.961288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517213, 0.701551, -0.490221,
		-0.185124, 0.467520, 0.864381,
		0.835595, 0.537821, -0.111934,
		36.679264, 32.581543, 31.927708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896553, 32.888191, 32.255039>,  <36.094345, 32.205067, 32.006062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896553, 32.888191, 32.255039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235695, 32.947784, 32.051491>,  <36.439178, 32.983540, 31.929361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235695, 32.947784, 32.051491>,  <35.896553, 32.888191, 32.255039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235695, 32.947784, 32.051491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383694, 0.834768, -0.394894,
		0.365956, 0.530063, 0.764925,
		0.847854, 0.148983, -0.508870,
		36.490051, 32.992481, 31.898830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108959, 33.538216, 32.330051>,  <35.896553, 32.888191, 32.255039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108959, 33.538216, 32.330051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317448, 33.458008, 31.998240>,  <36.442543, 33.409882, 31.799152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317448, 33.458008, 31.998240>,  <36.108959, 33.538216, 32.330051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317448, 33.458008, 31.998240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426111, 0.781027, -0.456536,
		0.739429, 0.591429, 0.321647,
		0.521224, -0.200519, -0.829529,
		36.473816, 33.397854, 31.749380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257454, 34.179089, 32.102524>,  <36.108959, 33.538216, 32.330051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257454, 34.179089, 32.102524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303444, 33.942253, 31.783472>,  <36.331039, 33.800152, 31.592041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303444, 33.942253, 31.783472>,  <36.257454, 34.179089, 32.102524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303444, 33.942253, 31.783472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404122, 0.705623, -0.582049,
		0.907449, 0.389263, -0.158144,
		0.114980, -0.592090, -0.797627,
		36.337936, 33.764626, 31.544184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481178, 34.574253, 31.625513>,  <36.257454, 34.179089, 32.102524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481178, 34.574253, 31.625513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334713, 34.264038, 31.419807>,  <36.246834, 34.077908, 31.296385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334713, 34.264038, 31.419807>,  <36.481178, 34.574253, 31.625513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334713, 34.264038, 31.419807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518337, 0.628953, -0.579435,
		0.772821, 0.054394, -0.632289,
		-0.366162, -0.775538, -0.514262,
		36.224865, 34.031376, 31.265530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436493, 34.698185, 30.865513>,  <36.481178, 34.574253, 31.625513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436493, 34.698185, 30.865513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158260, 34.417747, 30.928288>,  <35.991322, 34.249485, 30.965952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158260, 34.417747, 30.928288>,  <36.436493, 34.698185, 30.865513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158260, 34.417747, 30.928288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646553, 0.515611, -0.562240,
		0.313266, -0.492552, -0.811946,
		-0.695581, -0.701097, 0.156937,
		35.949585, 34.207417, 30.975368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382275, 34.397694, 30.277281>,  <36.436493, 34.698185, 30.865513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382275, 34.397694, 30.277281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035492, 34.314518, 30.458454>,  <35.827423, 34.264610, 30.567158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035492, 34.314518, 30.458454>,  <36.382275, 34.397694, 30.277281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035492, 34.314518, 30.458454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498382, 0.365259, -0.786257,
		-0.001944, -0.907384, -0.420297,
		-0.866955, -0.207941, 0.452934,
		35.775406, 34.252136, 30.594334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927734, 34.062691, 29.739380>,  <36.382275, 34.397694, 30.277281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927734, 34.062691, 29.739380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.683422, 34.179863, 30.033628>,  <35.536835, 34.250164, 30.210178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.683422, 34.179863, 30.033628>,  <35.927734, 34.062691, 29.739380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683422, 34.179863, 30.033628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693987, 0.249255, -0.675465,
		-0.381221, -0.923074, 0.051049,
		-0.610780, 0.292929, 0.735623,
		35.500187, 34.267742, 30.254314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322735, 33.670982, 29.628521>,  <35.927734, 34.062691, 29.739380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322735, 33.670982, 29.628521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227272, 33.991920, 29.847349>,  <35.169994, 34.184483, 29.978645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227272, 33.991920, 29.847349>,  <35.322735, 33.670982, 29.628521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227272, 33.991920, 29.847349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689874, 0.256402, -0.677002,
		-0.683459, -0.538980, 0.492325,
		-0.238658, 0.802346, 0.547068,
		35.155674, 34.232624, 30.011469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577541, 33.710789, 29.617767>,  <35.322735, 33.670982, 29.628521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577541, 33.710789, 29.617767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670269, 34.087784, 29.714077>,  <34.725906, 34.313980, 29.771862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670269, 34.087784, 29.714077>,  <34.577541, 33.710789, 29.617767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670269, 34.087784, 29.714077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741427, 0.331425, -0.583476,
		-0.629718, -0.043254, 0.775618,
		0.231822, 0.942489, 0.240775,
		34.739815, 34.370529, 29.786310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948757, 34.110455, 29.473108>,  <34.577541, 33.710789, 29.617767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948757, 34.110455, 29.473108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201340, 34.416084, 29.525953>,  <34.352890, 34.599464, 29.557661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201340, 34.416084, 29.525953>,  <33.948757, 34.110455, 29.473108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201340, 34.416084, 29.525953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537167, 0.553916, -0.636104,
		-0.559213, 0.330702, 0.760209,
		0.631453, 0.764077, 0.132114,
		34.390774, 34.645306, 29.565588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289017, 34.038280, 29.955019>,  <33.948757, 34.110455, 29.473108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289017, 34.038280, 29.955019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934048, 33.856319, 29.925240>,  <32.721066, 33.747143, 29.907372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934048, 33.856319, 29.925240>,  <33.289017, 34.038280, 29.955019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934048, 33.856319, 29.925240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213583, -0.548921, 0.808127,
		-0.408483, 0.701251, 0.584285,
		-0.887426, -0.454899, -0.074450,
		32.667820, 33.719849, 29.902905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983932, 34.067272, 30.624359>,  <33.289017, 34.038280, 29.955019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983932, 34.067272, 30.624359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797192, 33.766262, 30.438562>,  <32.685146, 33.585655, 30.327085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797192, 33.766262, 30.438562>,  <32.983932, 34.067272, 30.624359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797192, 33.766262, 30.438562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127346, -0.576975, 0.806773,
		-0.875120, 0.317491, 0.365192,
		-0.466850, -0.752529, -0.464491,
		32.657135, 33.540504, 30.299215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612743, 33.756821, 31.154121>,  <32.983932, 34.067272, 30.624359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612743, 33.756821, 31.154121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.610130, 33.464764, 30.880816>,  <32.608562, 33.289528, 30.716831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.610130, 33.464764, 30.880816>,  <32.612743, 33.756821, 31.154121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610130, 33.464764, 30.880816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290357, -0.655225, 0.697405,
		-0.956896, -0.193837, 0.216280,
		-0.006529, -0.730142, -0.683264,
		32.608173, 33.245720, 30.675837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175182, 33.234783, 31.428381>,  <32.612743, 33.756821, 31.154121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175182, 33.234783, 31.428381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.419212, 33.041481, 31.177217>,  <32.565632, 32.925499, 31.026520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.419212, 33.041481, 31.177217>,  <32.175182, 33.234783, 31.428381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419212, 33.041481, 31.177217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167602, -0.695833, 0.698374,
		-0.774416, -0.531298, -0.343513,
		0.610073, -0.483259, -0.627911,
		32.602234, 32.896503, 30.988844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999519, 32.590965, 31.656006>,  <32.175182, 33.234783, 31.428381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999519, 32.590965, 31.656006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325241, 32.551220, 31.427258>,  <32.520676, 32.527374, 31.290009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325241, 32.551220, 31.427258>,  <31.999519, 32.590965, 31.656006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325241, 32.551220, 31.427258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333805, -0.725848, 0.601431,
		-0.474851, -0.680641, -0.557893,
		0.814304, -0.099363, -0.571871,
		32.569530, 32.521412, 31.255695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099415, 31.932426, 31.596424>,  <31.999519, 32.590965, 31.656006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099415, 31.932426, 31.596424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462490, 32.066792, 31.495815>,  <32.680336, 32.147411, 31.435450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462490, 32.066792, 31.495815>,  <32.099415, 31.932426, 31.596424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462490, 32.066792, 31.495815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419502, -0.710732, 0.564693,
		0.010921, -0.618080, -0.786039,
		0.907689, 0.335912, -0.251524,
		32.734798, 32.167564, 31.420359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479656, 31.322842, 31.455002>,  <32.099415, 31.932426, 31.596424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479656, 31.322842, 31.455002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744640, 31.606621, 31.551195>,  <32.903629, 31.776888, 31.608912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744640, 31.606621, 31.551195>,  <32.479656, 31.322842, 31.455002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744640, 31.606621, 31.551195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432097, -0.624133, 0.650961,
		0.611917, -0.327323, -0.720012,
		0.662458, 0.709449, 0.240483,
		32.943378, 31.819456, 31.623341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129177, 30.861433, 31.647888>,  <32.479656, 31.322842, 31.455002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129177, 30.861433, 31.647888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218361, 31.230991, 31.772276>,  <33.271873, 31.452726, 31.846909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218361, 31.230991, 31.772276>,  <33.129177, 30.861433, 31.647888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218361, 31.230991, 31.772276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519264, -0.382538, 0.764219,
		0.825017, -0.008918, -0.565038,
		0.222964, 0.923897, 0.310969,
		33.285252, 31.508160, 31.865566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826599, 30.883015, 31.794998>,  <33.129177, 30.861433, 31.647888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826599, 30.883015, 31.794998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628605, 31.164970, 31.998220>,  <33.509808, 31.334145, 32.120155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628605, 31.164970, 31.998220>,  <33.826599, 30.883015, 31.794998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628605, 31.164970, 31.998220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293837, -0.414470, 0.861321,
		0.817711, 0.575626, -0.001967,
		-0.494984, 0.704890, 0.508057,
		33.480110, 31.376438, 32.150639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149567, 30.868336, 32.447472>,  <33.826599, 30.883015, 31.794998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149567, 30.868336, 32.447472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835190, 31.101301, 32.530499>,  <33.646564, 31.241079, 32.580315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835190, 31.101301, 32.530499>,  <34.149567, 30.868336, 32.447472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835190, 31.101301, 32.530499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171292, -0.117467, 0.978192,
		0.594094, 0.804361, -0.007440,
		-0.785946, 0.582412, 0.207568,
		33.599407, 31.276026, 32.592770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367146, 31.361670, 32.926239>,  <34.149567, 30.868336, 32.447472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367146, 31.361670, 32.926239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969570, 31.340744, 32.964928>,  <33.731026, 31.328188, 32.988140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969570, 31.340744, 32.964928>,  <34.367146, 31.361670, 32.926239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969570, 31.340744, 32.964928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104837, -0.185328, 0.977069,
		-0.033188, 0.981283, 0.189689,
		-0.993936, -0.052314, 0.096725,
		33.671391, 31.325050, 32.993946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227997, 31.751040, 33.506317>,  <34.367146, 31.361670, 32.926239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227997, 31.751040, 33.506317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.932728, 31.485794, 33.456711>,  <33.755566, 31.326647, 33.426949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.932728, 31.485794, 33.456711>,  <34.227997, 31.751040, 33.506317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932728, 31.485794, 33.456711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021976, -0.207372, 0.978015,
		-0.674252, 0.719220, 0.167649,
		-0.738174, -0.663113, -0.124015,
		33.711277, 31.286860, 33.419506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580414, 32.041512, 33.821507>,  <34.227997, 31.751040, 33.506317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580414, 32.041512, 33.821507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.567108, 31.642309, 33.800072>,  <33.559124, 31.402786, 33.787212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.567108, 31.642309, 33.800072>,  <33.580414, 32.041512, 33.821507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567108, 31.642309, 33.800072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139100, -0.048469, 0.989091,
		-0.989719, 0.040358, -0.137211,
		-0.033268, -0.998009, -0.053584,
		33.557129, 31.342907, 33.783997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051868, 31.836147, 34.201878>,  <33.580414, 32.041512, 33.821507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051868, 31.836147, 34.201878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.283302, 31.509911, 34.204720>,  <33.422161, 31.314169, 34.206425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.283302, 31.509911, 34.204720>,  <33.051868, 31.836147, 34.201878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283302, 31.509911, 34.204720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221326, -0.148615, 0.963809,
		-0.785019, -0.559218, -0.266498,
		0.578585, -0.815591, 0.007104,
		33.456879, 31.265234, 34.206852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621136, 31.392832, 34.506870>,  <33.051868, 31.836147, 34.201878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621136, 31.392832, 34.506870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007378, 31.304316, 34.561481>,  <33.239120, 31.251205, 34.594250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007378, 31.304316, 34.561481>,  <32.621136, 31.392832, 34.506870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007378, 31.304316, 34.561481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170755, -0.143662, 0.974784,
		-0.196101, -0.964567, -0.176507,
		0.965602, -0.221295, 0.136532,
		33.297058, 31.237928, 34.602440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310211, 32.056606, 34.643829>,  <32.621136, 31.392832, 34.506870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310211, 32.056606, 34.643829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.660763, 32.090626, 34.833454>,  <32.871094, 32.111038, 34.947227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.660763, 32.090626, 34.833454>,  <32.310211, 32.056606, 34.643829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660763, 32.090626, 34.833454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285963, 0.883899, 0.370065,
		-0.387546, -0.459879, 0.798949,
		0.876375, 0.085053, 0.474060,
		32.923676, 32.116142, 34.975674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250999, 32.230080, 35.397331>,  <32.310211, 32.056606, 34.643829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250999, 32.230080, 35.397331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614437, 32.363331, 35.296555>,  <32.832500, 32.443279, 35.236088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614437, 32.363331, 35.296555>,  <32.250999, 32.230080, 35.397331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614437, 32.363331, 35.296555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194316, 0.871104, 0.451020,
		0.369715, -0.360840, 0.856216,
		0.908599, 0.333126, -0.251943,
		32.887016, 32.463268, 35.220970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489571, 32.636086, 35.926521>,  <32.250999, 32.230080, 35.397331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489571, 32.636086, 35.926521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667007, 32.762753, 35.591152>,  <32.773468, 32.838753, 35.389931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667007, 32.762753, 35.591152>,  <32.489571, 32.636086, 35.926521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667007, 32.762753, 35.591152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204303, 0.946596, 0.249431,
		0.872633, 0.060647, 0.484596,
		0.443590, 0.316666, -0.838422,
		32.800083, 32.857754, 35.339626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844467, 33.339558, 36.128960>,  <32.489571, 32.636086, 35.926521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844467, 33.339558, 36.128960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792809, 33.331535, 35.732391>,  <32.761814, 33.326721, 35.494450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792809, 33.331535, 35.732391>,  <32.844467, 33.339558, 36.128960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792809, 33.331535, 35.732391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422764, 0.905494, 0.036752,
		0.896990, 0.423885, -0.125422,
		-0.129148, -0.020058, -0.991422,
		32.754063, 33.325520, 35.434963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946953, 33.982010, 36.014416>,  <32.844467, 33.339558, 36.128960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946953, 33.982010, 36.014416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775497, 33.850376, 35.677853>,  <32.672623, 33.771397, 35.475914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775497, 33.850376, 35.677853>,  <32.946953, 33.982010, 36.014416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775497, 33.850376, 35.677853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608756, 0.793357, -0.000172,
		0.667595, 0.512139, -0.540399,
		-0.428641, -0.329086, -0.841409,
		32.646904, 33.751652, 35.425430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095398, 34.541954, 35.491188>,  <32.946953, 33.982010, 36.014416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095398, 34.541954, 35.491188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781120, 34.343658, 35.343174>,  <32.592552, 34.224682, 35.254368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781120, 34.343658, 35.343174>,  <33.095398, 34.541954, 35.491188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781120, 34.343658, 35.343174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438373, 0.868230, -0.232390,
		0.436480, -0.020375, -0.899483,
		-0.785694, -0.495743, -0.370033,
		32.545414, 34.194935, 35.232162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926067, 34.700851, 34.831940>,  <33.095398, 34.541954, 35.491188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926067, 34.700851, 34.831940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582130, 34.534985, 34.951088>,  <32.375771, 34.435463, 35.022579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582130, 34.534985, 34.951088>,  <32.926067, 34.700851, 34.831940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582130, 34.534985, 34.951088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496870, 0.813830, -0.301331,
		-0.117466, -0.407100, -0.905798,
		-0.859838, -0.414668, 0.297873,
		32.324181, 34.410583, 35.040451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444439, 34.832291, 34.371632>,  <32.926067, 34.700851, 34.831940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444439, 34.832291, 34.371632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233166, 34.762344, 34.704006>,  <32.106403, 34.720379, 34.903431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233166, 34.762344, 34.704006>,  <32.444439, 34.832291, 34.371632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233166, 34.762344, 34.704006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552426, 0.813926, -0.179863,
		-0.644866, -0.554029, -0.526497,
		-0.528179, -0.174863, 0.830933,
		32.074711, 34.709885, 34.953285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885712, 34.960060, 34.100460>,  <32.444439, 34.832291, 34.371632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885712, 34.960060, 34.100460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.844044, 34.968971, 34.498184>,  <31.819042, 34.974316, 34.736820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.844044, 34.968971, 34.498184>,  <31.885712, 34.960060, 34.100460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844044, 34.968971, 34.498184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573164, 0.815689, -0.078323,
		-0.812792, -0.578062, -0.072203,
		-0.104170, 0.022276, 0.994310,
		31.812792, 34.975655, 34.796478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205860, 35.059650, 34.217152>,  <31.885712, 34.960060, 34.100460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205860, 35.059650, 34.217152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.384466, 35.193390, 34.549137>,  <31.491631, 35.273632, 34.748329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.384466, 35.193390, 34.549137>,  <31.205860, 35.059650, 34.217152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384466, 35.193390, 34.549137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510899, 0.856763, -0.070286,
		-0.734579, -0.392642, 0.553377,
		0.446516, 0.334350, 0.829960,
		31.518421, 35.293694, 34.798126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645418, 35.291142, 34.640835>,  <31.205860, 35.059650, 34.217152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645418, 35.291142, 34.640835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.973885, 35.489952, 34.753010>,  <31.170965, 35.609238, 34.820316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.973885, 35.489952, 34.753010>,  <30.645418, 35.291142, 34.640835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973885, 35.489952, 34.753010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502248, 0.862749, -0.058415,
		-0.270983, -0.092882, 0.958093,
		0.821168, 0.497029, 0.280440,
		31.220234, 35.639061, 34.837143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421349, 35.728283, 35.170547>,  <30.645418, 35.291142, 34.640835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421349, 35.728283, 35.170547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.767641, 35.863796, 35.023178>,  <30.975416, 35.945103, 34.934757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.767641, 35.863796, 35.023178>,  <30.421349, 35.728283, 35.170547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767641, 35.863796, 35.023178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357674, 0.933672, 0.018075,
		0.350113, 0.116129, 0.929481,
		0.865731, 0.338779, -0.368427,
		31.027361, 35.965431, 34.912651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409248, 36.361450, 35.430473>,  <30.421349, 35.728283, 35.170547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409248, 36.361450, 35.430473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.698563, 36.401337, 35.157146>,  <30.872150, 36.425270, 34.993153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.698563, 36.401337, 35.157146>,  <30.409248, 36.361450, 35.430473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698563, 36.401337, 35.157146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254854, 0.958211, -0.129928,
		0.641802, 0.268120, 0.718472,
		0.723284, 0.099718, -0.683313,
		30.915548, 36.431252, 34.952152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761648, 36.999866, 35.609779>,  <30.409248, 36.361450, 35.430473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761648, 36.999866, 35.609779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.838690, 36.913963, 35.226784>,  <30.884914, 36.862423, 34.996986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.838690, 36.913963, 35.226784>,  <30.761648, 36.999866, 35.609779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838690, 36.913963, 35.226784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092661, 0.967418, -0.235620,
		0.976892, 0.134103, 0.166430,
		0.192604, -0.214754, -0.957489,
		30.896471, 36.849537, 34.939537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056654, 37.641182, 35.298168>,  <30.761648, 36.999866, 35.609779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056654, 37.641182, 35.298168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.930172, 37.447983, 34.971554>,  <30.854282, 37.332062, 34.775585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.930172, 37.447983, 34.971554>,  <31.056654, 37.641182, 35.298168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930172, 37.447983, 34.971554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372080, 0.854875, -0.361588,
		0.872681, 0.189481, -0.450027,
		-0.316202, -0.482997, -0.816535,
		30.835310, 37.303085, 34.726593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259665, 38.042530, 34.803024>,  <31.056654, 37.641182, 35.298168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259665, 38.042530, 34.803024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.977146, 37.799614, 34.657505>,  <30.807634, 37.653866, 34.570194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.977146, 37.799614, 34.657505>,  <31.259665, 38.042530, 34.803024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977146, 37.799614, 34.657505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324608, 0.734513, -0.595920,
		0.629106, -0.302806, -0.715915,
		-0.706297, -0.607289, -0.363793,
		30.765257, 37.617428, 34.548367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335819, 38.146072, 34.139324>,  <31.259665, 38.042530, 34.803024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335819, 38.146072, 34.139324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972807, 37.983109, 34.180122>,  <30.754999, 37.885330, 34.204601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972807, 37.983109, 34.180122>,  <31.335819, 38.146072, 34.139324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972807, 37.983109, 34.180122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401353, 0.769770, -0.496357,
		0.123705, -0.491397, -0.862106,
		-0.907531, -0.407411, 0.102000,
		30.700548, 37.860886, 34.210724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105976, 38.120689, 33.487499>,  <31.335819, 38.146072, 34.139324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105976, 38.120689, 33.487499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.777775, 38.083939, 33.713181>,  <30.580854, 38.061890, 33.848591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.777775, 38.083939, 33.713181>,  <31.105976, 38.120689, 33.487499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777775, 38.083939, 33.713181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397991, 0.800306, -0.448457,
		-0.410336, -0.592510, -0.693221,
		-0.820505, -0.091877, 0.564208,
		30.531624, 38.056374, 33.882442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551254, 38.115593, 33.012264>,  <31.105976, 38.120689, 33.487499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551254, 38.115593, 33.012264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.363567, 38.208355, 33.353100>,  <30.250956, 38.264011, 33.557602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.363567, 38.208355, 33.353100>,  <30.551254, 38.115593, 33.012264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363567, 38.208355, 33.353100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475647, 0.746607, -0.465122,
		-0.744039, -0.623537, -0.240017,
		-0.469219, 0.231906, 0.852088,
		30.222801, 38.277927, 33.608727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832176, 38.184261, 32.838417>,  <30.551254, 38.115593, 33.012264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832176, 38.184261, 32.838417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880951, 38.387012, 33.179756>,  <29.910215, 38.508663, 33.384560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880951, 38.387012, 33.179756>,  <29.832176, 38.184261, 32.838417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880951, 38.387012, 33.179756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672239, 0.674718, -0.304714,
		-0.730223, -0.536499, 0.423016,
		0.121938, 0.506877, 0.853350,
		29.917532, 38.539074, 33.435760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157570, 38.429901, 32.989487>,  <29.832176, 38.184261, 32.838417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157570, 38.429901, 32.989487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.394423, 38.673637, 33.200420>,  <29.536535, 38.819881, 33.326981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.394423, 38.673637, 33.200420>,  <29.157570, 38.429901, 32.989487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394423, 38.673637, 33.200420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576321, 0.777597, -0.251388,
		-0.563234, -0.155058, 0.811618,
		0.592133, 0.609343, 0.527333,
		29.572062, 38.856441, 33.358620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735548, 38.805836, 33.494503>,  <29.157570, 38.429901, 32.989487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735548, 38.805836, 33.494503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.061508, 39.029747, 33.434383>,  <29.257084, 39.164093, 33.398312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.061508, 39.029747, 33.434383>,  <28.735548, 38.805836, 33.494503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061508, 39.029747, 33.434383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573924, 0.815521, -0.074407,
		0.080919, 0.146893, 0.985837,
		0.814900, 0.559775, -0.150297,
		29.305979, 39.197681, 33.389294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603252, 39.384678, 33.801678>,  <28.735548, 38.805836, 33.494503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603252, 39.384678, 33.801678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.918081, 39.502659, 33.584969>,  <29.106979, 39.573448, 33.454945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.918081, 39.502659, 33.584969>,  <28.603252, 39.384678, 33.801678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918081, 39.502659, 33.584969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522366, 0.785836, -0.331051,
		0.328098, 0.543564, 0.772586,
		0.787074, 0.294956, -0.541771,
		29.154203, 39.591145, 33.422436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633396, 40.052017, 33.928963>,  <28.603252, 39.384678, 33.801678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633396, 40.052017, 33.928963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.870363, 40.050262, 33.606716>,  <29.012543, 40.049210, 33.413368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.870363, 40.050262, 33.606716>,  <28.633396, 40.052017, 33.928963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870363, 40.050262, 33.606716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325367, 0.913503, -0.244232,
		0.737007, 0.406809, 0.539748,
		0.592417, -0.004385, -0.805620,
		29.048088, 40.048946, 33.365028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976229, 40.646542, 33.960129>,  <28.633396, 40.052017, 33.928963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976229, 40.646542, 33.960129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.010824, 40.527012, 33.579975>,  <29.031582, 40.455296, 33.351883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.010824, 40.527012, 33.579975>,  <28.976229, 40.646542, 33.960129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010824, 40.527012, 33.579975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086174, 0.948137, -0.305959,
		0.992519, 0.108360, 0.056252,
		0.086488, -0.298823, -0.950381,
		29.036770, 40.437366, 33.294861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331625, 41.140537, 33.578072>,  <28.976229, 40.646542, 33.960129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331625, 41.140537, 33.578072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.116047, 40.958561, 33.294502>,  <28.986700, 40.849377, 33.124363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.116047, 40.958561, 33.294502>,  <29.331625, 41.140537, 33.578072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116047, 40.958561, 33.294502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245159, 0.889890, -0.384699,
		0.805875, -0.033534, -0.591135,
		-0.538945, -0.454941, -0.708919,
		28.954363, 40.822079, 33.081825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428892, 41.522163, 32.872643>,  <29.331625, 41.140537, 33.578072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428892, 41.522163, 32.872643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.102190, 41.298779, 32.814632>,  <28.906168, 41.164749, 32.779827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.102190, 41.298779, 32.814632>,  <29.428892, 41.522163, 32.872643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102190, 41.298779, 32.814632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434917, 0.761057, -0.481289,
		0.379154, -0.330021, -0.864481,
		-0.816755, -0.558460, -0.145027,
		28.857164, 41.131241, 32.771126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927038, 41.803185, 32.268173>,  <29.428892, 41.522163, 32.872643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927038, 41.803185, 32.268173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.217596, 42.065788, 32.186844>,  <30.391930, 42.223351, 32.138046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.217596, 42.065788, 32.186844>,  <29.927038, 41.803185, 32.268173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217596, 42.065788, 32.186844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632421, -0.522672, 0.571715,
		0.269065, -0.543879, -0.794859,
		0.726393, 0.656514, -0.203328,
		30.435514, 42.262741, 32.125847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391943, 41.374195, 31.988726>,  <29.927038, 41.803185, 32.268173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391943, 41.374195, 31.988726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.566307, 41.698349, 32.145321>,  <30.670925, 41.892841, 32.239277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.566307, 41.698349, 32.145321>,  <30.391943, 41.374195, 31.988726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566307, 41.698349, 32.145321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615133, -0.585800, 0.527683,
		0.656958, 0.010794, -0.753850,
		0.435909, 0.810384, 0.391486,
		30.697081, 41.941463, 32.262768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137470, 41.332088, 31.838875>,  <30.391943, 41.374195, 31.988726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137470, 41.332088, 31.838875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.090094, 41.573257, 32.154457>,  <31.061668, 41.717960, 32.343807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.090094, 41.573257, 32.154457>,  <31.137470, 41.332088, 31.838875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090094, 41.573257, 32.154457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696471, -0.515881, 0.498794,
		0.707743, 0.608564, -0.358817,
		-0.118442, 0.602924, 0.788958,
		31.054562, 41.754135, 32.391144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808300, 41.340988, 32.127434>,  <31.137470, 41.332088, 31.838875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808300, 41.340988, 32.127434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.589251, 41.496799, 32.423645>,  <31.457821, 41.590286, 32.601372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.589251, 41.496799, 32.423645>,  <31.808300, 41.340988, 32.127434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589251, 41.496799, 32.423645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410756, -0.645895, 0.643505,
		0.728963, 0.656574, 0.193708,
		-0.547624, 0.389525, 0.740525,
		31.424963, 41.613659, 32.645802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262062, 41.719902, 32.550983>,  <31.808300, 41.340988, 32.127434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262062, 41.719902, 32.550983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956118, 41.615318, 32.786484>,  <31.772551, 41.552567, 32.927784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956118, 41.615318, 32.786484>,  <32.262062, 41.719902, 32.550983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956118, 41.615318, 32.786484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642800, -0.369916, 0.670798,
		0.042398, 0.891515, 0.451003,
		-0.764860, -0.261464, 0.588750,
		31.726660, 41.536880, 32.963108>
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
