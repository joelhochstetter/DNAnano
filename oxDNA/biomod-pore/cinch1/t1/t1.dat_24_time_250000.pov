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
	<43.046749, 32.497124, 23.077105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766247, 32.535179, 22.794491>,  <42.597946, 32.558014, 22.624922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766247, 32.535179, 22.794491>,  <43.046749, 32.497124, 23.077105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766247, 32.535179, 22.794491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390630, -0.880316, 0.269168,
		-0.596366, 0.464749, 0.654490,
		-0.701254, 0.095141, -0.706535,
		42.555870, 32.563721, 22.582531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433029, 32.201054, 23.367401>,  <43.046749, 32.497124, 23.077105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433029, 32.201054, 23.367401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376446, 32.210438, 22.971535>,  <42.342495, 32.216068, 22.734015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376446, 32.210438, 22.971535>,  <42.433029, 32.201054, 23.367401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376446, 32.210438, 22.971535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462140, -0.885662, 0.045063,
		-0.875452, 0.463738, 0.136125,
		-0.141458, 0.023459, -0.989666,
		42.334007, 32.217476, 22.674635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705734, 32.019062, 23.245857>,  <42.433029, 32.201054, 23.367401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705734, 32.019062, 23.245857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963936, 31.924088, 22.955494>,  <42.118858, 31.867104, 22.781277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963936, 31.924088, 22.955494>,  <41.705734, 32.019062, 23.245857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963936, 31.924088, 22.955494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349368, -0.936976, -0.004199,
		-0.679162, 0.256320, -0.687778,
		0.645508, -0.237436, -0.725909,
		42.157589, 31.852858, 22.737720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155384, 32.633392, 23.436539>,  <41.705734, 32.019062, 23.245857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155384, 32.633392, 23.436539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812424, 32.552387, 23.625793>,  <40.606647, 32.503784, 23.739347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812424, 32.552387, 23.625793>,  <41.155384, 32.633392, 23.436539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812424, 32.552387, 23.625793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021294, -0.932501, -0.360540,
		0.514216, -0.299050, 0.803835,
		-0.857396, -0.202513, 0.473139,
		40.555206, 32.491634, 23.767735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769623, 31.973099, 23.373455>,  <41.155384, 32.633392, 23.436539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769623, 31.973099, 23.373455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382679, 32.062431, 23.325569>,  <40.150513, 32.116032, 23.296839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382679, 32.062431, 23.325569>,  <40.769623, 31.973099, 23.373455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382679, 32.062431, 23.325569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182775, 0.287771, -0.940096,
		-0.175501, -0.931296, -0.319198,
		-0.967364, 0.223330, -0.119713,
		40.092468, 32.129429, 23.289656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448643, 31.625692, 22.867226>,  <40.769623, 31.973099, 23.373455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448643, 31.625692, 22.867226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266983, 31.979156, 22.912647>,  <40.157986, 32.191235, 22.939899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266983, 31.979156, 22.912647>,  <40.448643, 31.625692, 22.867226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266983, 31.979156, 22.912647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303973, 0.273495, -0.912579,
		-0.837465, -0.379930, -0.392816,
		-0.454150, 0.883659, 0.113554,
		40.130737, 32.244255, 22.946712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945160, 31.663305, 22.425682>,  <40.448643, 31.625692, 22.867226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945160, 31.663305, 22.425682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045746, 32.043503, 22.498707>,  <40.106098, 32.271622, 22.542521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045746, 32.043503, 22.498707>,  <39.945160, 31.663305, 22.425682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045746, 32.043503, 22.498707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237415, 0.122282, -0.963681,
		-0.938295, 0.285677, -0.194912,
		0.251467, 0.950493, 0.182560,
		40.121185, 32.328651, 22.553474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990139, 31.915390, 21.728312>,  <39.945160, 31.663305, 22.425682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990139, 31.915390, 21.728312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150375, 32.198624, 21.960911>,  <40.246517, 32.368565, 22.100471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150375, 32.198624, 21.960911>,  <39.990139, 31.915390, 21.728312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150375, 32.198624, 21.960911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586268, 0.289641, -0.756570,
		-0.704141, 0.643992, -0.299098,
		0.400594, 0.708083, 0.581500,
		40.270554, 32.411049, 22.135361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964851, 32.631870, 21.343077>,  <39.990139, 31.915390, 21.728312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964851, 32.631870, 21.343077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276493, 32.640419, 21.593689>,  <40.463478, 32.645546, 21.744057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276493, 32.640419, 21.593689>,  <39.964851, 32.631870, 21.343077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276493, 32.640419, 21.593689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607874, 0.218574, -0.763358,
		-0.153256, 0.975586, 0.157302,
		0.779103, 0.021369, 0.626531,
		40.510223, 32.646832, 21.781649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293987, 33.196796, 21.088181>,  <39.964851, 32.631870, 21.343077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293987, 33.196796, 21.088181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548882, 32.976013, 21.303314>,  <40.701817, 32.843544, 21.432394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548882, 32.976013, 21.303314>,  <40.293987, 33.196796, 21.088181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548882, 32.976013, 21.303314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740142, 0.243849, -0.626680,
		0.214753, 0.797418, 0.563920,
		0.637237, -0.551962, 0.537835,
		40.740051, 32.810425, 21.464664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951168, 33.548382, 21.133121>,  <40.293987, 33.196796, 21.088181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951168, 33.548382, 21.133121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019863, 33.159836, 21.198792>,  <41.061081, 32.926708, 21.238194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019863, 33.159836, 21.198792>,  <40.951168, 33.548382, 21.133121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019863, 33.159836, 21.198792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799466, 0.040045, -0.599375,
		0.575637, 0.234192, 0.783451,
		0.171742, -0.971365, 0.164177,
		41.071384, 32.868427, 21.248045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659908, 33.593658, 21.193989>,  <40.951168, 33.548382, 21.133121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659908, 33.593658, 21.193989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567570, 33.211029, 21.122787>,  <41.512165, 32.981453, 21.080067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567570, 33.211029, 21.122787>,  <41.659908, 33.593658, 21.193989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567570, 33.211029, 21.122787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791910, -0.078421, -0.605581,
		0.565322, -0.280757, 0.775620,
		-0.230847, -0.956570, -0.178001,
		41.498314, 32.924057, 21.069387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206745, 33.199612, 21.333763>,  <41.659908, 33.593658, 21.193989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206745, 33.199612, 21.333763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996952, 32.948921, 21.103241>,  <41.871075, 32.798508, 20.964928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996952, 32.948921, 21.103241>,  <42.206745, 33.199612, 21.333763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996952, 32.948921, 21.103241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775588, -0.072434, -0.627069,
		0.351258, -0.775864, 0.524074,
		-0.524481, -0.626729, -0.576308,
		41.839607, 32.760902, 20.930349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698135, 32.519329, 21.126783>,  <42.206745, 33.199612, 21.333763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698135, 32.519329, 21.126783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400726, 32.582008, 20.866749>,  <42.222279, 32.619617, 20.710728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400726, 32.582008, 20.866749>,  <42.698135, 32.519329, 21.126783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400726, 32.582008, 20.866749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615883, -0.218236, -0.757008,
		-0.260499, -0.963232, 0.065753,
		-0.743525, 0.156704, -0.650089,
		42.177670, 32.629017, 20.671722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815910, 32.009617, 20.582657>,  <42.698135, 32.519329, 21.126783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815910, 32.009617, 20.582657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568596, 32.260960, 20.393814>,  <42.420208, 32.411766, 20.280508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568596, 32.260960, 20.393814>,  <42.815910, 32.009617, 20.582657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568596, 32.260960, 20.393814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483638, -0.169312, -0.858737,
		-0.619525, -0.759278, -0.199212,
		-0.618291, 0.628355, -0.472109,
		42.383110, 32.449467, 20.252182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553299, 31.618074, 20.111317>,  <42.815910, 32.009617, 20.582657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553299, 31.618074, 20.111317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534271, 32.007359, 20.021343>,  <42.522854, 32.240929, 19.967360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534271, 32.007359, 20.021343>,  <42.553299, 31.618074, 20.111317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534271, 32.007359, 20.021343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605418, -0.151018, -0.781449,
		-0.794484, -0.173356, -0.582016,
		-0.047573, 0.973212, -0.224934,
		42.520000, 32.299320, 19.953863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503571, 31.627058, 19.353920>,  <42.553299, 31.618074, 20.111317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503571, 31.627058, 19.353920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593254, 32.006756, 19.442162>,  <42.647064, 32.234573, 19.495106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593254, 32.006756, 19.442162>,  <42.503571, 31.627058, 19.353920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593254, 32.006756, 19.442162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615760, 0.037465, -0.787043,
		-0.755360, 0.312302, -0.576106,
		0.224211, 0.949244, 0.220603,
		42.660519, 32.291531, 19.508343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588757, 31.911030, 18.647665>,  <42.503571, 31.627058, 19.353920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588757, 31.911030, 18.647665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743473, 32.188278, 18.890968>,  <42.836304, 32.354626, 19.036951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743473, 32.188278, 18.890968>,  <42.588757, 31.911030, 18.647665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743473, 32.188278, 18.890968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736542, 0.164696, -0.656035,
		-0.554888, 0.701756, -0.446809,
		0.386788, 0.693119, 0.608260,
		42.859509, 32.396214, 19.073446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651417, 32.567417, 18.357300>,  <42.588757, 31.911030, 18.647665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651417, 32.567417, 18.357300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930103, 32.579884, 18.643967>,  <43.097317, 32.587364, 18.815968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930103, 32.579884, 18.643967>,  <42.651417, 32.567417, 18.357300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930103, 32.579884, 18.643967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711382, 0.098552, -0.695862,
		-0.092316, 0.994644, 0.046492,
		0.696716, 0.031166, 0.716669,
		43.139118, 32.589233, 18.858967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110138, 33.201576, 18.258993>,  <42.651417, 32.567417, 18.357300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110138, 33.201576, 18.258993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328384, 32.944504, 18.474129>,  <43.459332, 32.790260, 18.603210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328384, 32.944504, 18.474129>,  <43.110138, 33.201576, 18.258993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328384, 32.944504, 18.474129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755560, 0.099604, -0.647463,
		0.362539, 0.759636, 0.539926,
		0.545615, -0.642676, 0.537840,
		43.492069, 32.751701, 18.635481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717857, 33.537560, 18.155516>,  <43.110138, 33.201576, 18.258993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717857, 33.537560, 18.155516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826809, 33.182823, 18.304821>,  <43.892181, 32.969982, 18.394403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826809, 33.182823, 18.304821>,  <43.717857, 33.537560, 18.155516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826809, 33.182823, 18.304821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861187, 0.051676, -0.505656,
		0.429146, 0.459180, 0.777809,
		0.272381, -0.886839, 0.373263,
		43.908524, 32.916771, 18.416800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332008, 33.655819, 18.506035>,  <43.717857, 33.537560, 18.155516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332008, 33.655819, 18.506035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332405, 33.262417, 18.433689>,  <44.332642, 33.026375, 18.390282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332405, 33.262417, 18.433689>,  <44.332008, 33.655819, 18.506035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332405, 33.262417, 18.433689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766926, 0.116815, -0.631014,
		0.641735, -0.138085, 0.754393,
		0.000991, -0.983507, -0.180866,
		44.332703, 32.967365, 18.379429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043434, 33.429787, 18.479746>,  <44.332008, 33.655819, 18.506035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043434, 33.429787, 18.479746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834858, 33.144192, 18.292847>,  <44.709713, 32.972836, 18.180708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834858, 33.144192, 18.292847>,  <45.043434, 33.429787, 18.479746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834858, 33.144192, 18.292847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764623, -0.147928, -0.627271,
		0.378743, -0.684355, 0.623066,
		-0.521445, -0.713986, -0.467247,
		44.678425, 32.929996, 18.152672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471222, 32.786762, 18.387403>,  <45.043434, 33.429787, 18.479746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471222, 32.786762, 18.387403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192631, 32.788357, 18.100376>,  <45.025475, 32.789314, 17.928160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192631, 32.788357, 18.100376>,  <45.471222, 32.786762, 18.387403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192631, 32.788357, 18.100376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708758, -0.152499, -0.688771,
		-0.112169, -0.988296, 0.103393,
		-0.696477, 0.003978, -0.717568,
		44.983688, 32.789551, 17.885105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694256, 32.293930, 17.952021>,  <45.471222, 32.786762, 18.387403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694256, 32.293930, 17.952021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436543, 32.491436, 17.718410>,  <45.281914, 32.609940, 17.578245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436543, 32.491436, 17.718410>,  <45.694256, 32.293930, 17.952021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436543, 32.491436, 17.718410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654588, -0.038862, -0.754986,
		-0.395485, -0.868725, -0.298176,
		-0.644288, 0.493768, -0.584026,
		45.243256, 32.639568, 17.543203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801346, 32.082626, 17.308088>,  <45.694256, 32.293930, 17.952021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801346, 32.082626, 17.308088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590218, 32.409756, 17.216381>,  <45.463539, 32.606033, 17.161358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590218, 32.409756, 17.216381>,  <45.801346, 32.082626, 17.308088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590218, 32.409756, 17.216381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508820, 0.088330, -0.856329,
		-0.680079, -0.568643, -0.462749,
		-0.527821, 0.817828, -0.229266,
		45.431870, 32.655106, 17.147602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723305, 32.079018, 16.526138>,  <45.801346, 32.082626, 17.308088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723305, 32.079018, 16.526138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655209, 32.463017, 16.615063>,  <45.614353, 32.693417, 16.668417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655209, 32.463017, 16.615063>,  <45.723305, 32.079018, 16.526138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655209, 32.463017, 16.615063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607381, 0.279877, -0.743476,
		-0.775955, 0.008459, -0.630731,
		-0.170238, 0.959998, 0.222310,
		45.604137, 32.751015, 16.681755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642479, 32.527138, 15.888284>,  <45.723305, 32.079018, 16.526138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642479, 32.527138, 15.888284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765984, 32.776421, 16.175694>,  <45.840088, 32.925991, 16.348139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765984, 32.776421, 16.175694>,  <45.642479, 32.527138, 15.888284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765984, 32.776421, 16.175694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658612, 0.404937, -0.634237,
		-0.686219, 0.669056, -0.285423,
		0.308762, 0.623209, 0.718524,
		45.858612, 32.963383, 16.391251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728207, 33.133335, 15.473430>,  <45.642479, 32.527138, 15.888284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728207, 33.133335, 15.473430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950146, 33.114124, 15.805655>,  <46.083309, 33.102600, 16.004992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950146, 33.114124, 15.805655>,  <45.728207, 33.133335, 15.473430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.950146, 33.114124, 15.805655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765739, 0.419776, -0.487270,
		-0.325251, 0.906356, 0.269685,
		0.554848, -0.048024, 0.830564,
		46.116600, 33.099716, 16.054825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953358, 33.817699, 15.747993>,  <45.728207, 33.133335, 15.473430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953358, 33.817699, 15.747993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.228279, 33.540974, 15.836534>,  <46.393234, 33.374939, 15.889658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.228279, 33.540974, 15.836534>,  <45.953358, 33.817699, 15.747993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.228279, 33.540974, 15.836534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664484, 0.475759, -0.576293,
		0.293380, 0.543176, 0.786695,
		0.687306, -0.691819, 0.221354,
		46.434471, 33.333427, 15.902940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007248, 34.533512, 15.877033>,  <45.953358, 33.817699, 15.747993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007248, 34.533512, 15.877033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000595, 34.880936, 15.678910>,  <45.996601, 35.089390, 15.560037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000595, 34.880936, 15.678910>,  <46.007248, 34.533512, 15.877033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000595, 34.880936, 15.678910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803501, 0.283211, 0.523619,
		0.595071, 0.406690, 0.693177,
		-0.016635, 0.868559, -0.495307,
		45.995605, 35.141502, 15.530318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801102, 35.016964, 16.398891>,  <46.007248, 34.533512, 15.877033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801102, 35.016964, 16.398891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.706238, 35.168987, 16.041275>,  <45.649319, 35.260201, 15.826705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.706238, 35.168987, 16.041275>,  <45.801102, 35.016964, 16.398891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706238, 35.168987, 16.041275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850884, 0.362818, 0.379948,
		0.468775, 0.850835, 0.237337,
		-0.237163, 0.380057, -0.894042,
		45.635090, 35.283005, 15.773063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674313, 35.725018, 16.543221>,  <45.801102, 35.016964, 16.398891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674313, 35.725018, 16.543221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497437, 35.629684, 16.197350>,  <45.391312, 35.572483, 15.989827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497437, 35.629684, 16.197350>,  <45.674313, 35.725018, 16.543221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497437, 35.629684, 16.197350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834548, 0.462557, 0.299282,
		0.328633, 0.853954, -0.403439,
		-0.442187, -0.238336, -0.864677,
		45.364780, 35.558186, 15.937946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313541, 36.283821, 16.331560>,  <45.674313, 35.725018, 16.543221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313541, 36.283821, 16.331560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141590, 35.941254, 16.217194>,  <45.038418, 35.735714, 16.148575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141590, 35.941254, 16.217194>,  <45.313541, 36.283821, 16.331560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141590, 35.941254, 16.217194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870862, 0.309709, 0.381679,
		-0.238327, 0.413069, -0.878962,
		-0.429883, -0.856419, -0.285914,
		45.012627, 35.684326, 16.131420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734505, 36.229042, 15.676794>,  <45.313541, 36.283821, 16.331560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734505, 36.229042, 15.676794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684490, 36.010372, 16.007977>,  <44.654480, 35.879169, 16.206686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684490, 36.010372, 16.007977>,  <44.734505, 36.229042, 15.676794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684490, 36.010372, 16.007977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843248, 0.498270, 0.201643,
		-0.522779, -0.672959, -0.523286,
		-0.125040, -0.546675, 0.827956,
		44.646976, 35.846371, 16.256363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995575, 36.288349, 15.813405>,  <44.734505, 36.229042, 15.676794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995575, 36.288349, 15.813405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163521, 36.175060, 16.158310>,  <44.264290, 36.107086, 16.365253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163521, 36.175060, 16.158310>,  <43.995575, 36.288349, 15.813405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163521, 36.175060, 16.158310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806524, 0.319253, 0.497591,
		-0.416209, -0.904357, -0.094383,
		0.419868, -0.283224, 0.862262,
		44.289482, 36.090092, 16.416988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561878, 35.754215, 16.182541>,  <43.995575, 36.288349, 15.813405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561878, 35.754215, 16.182541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770855, 35.979630, 16.438503>,  <43.896240, 36.114880, 16.592081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770855, 35.979630, 16.438503>,  <43.561878, 35.754215, 16.182541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770855, 35.979630, 16.438503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801809, 0.069366, 0.593541,
		0.290095, -0.823173, 0.488089,
		0.522444, 0.563537, 0.639905,
		43.927589, 36.148689, 16.630474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444324, 35.422352, 16.790621>,  <43.561878, 35.754215, 16.182541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444324, 35.422352, 16.790621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560638, 35.785904, 16.910202>,  <43.630428, 36.004036, 16.981951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560638, 35.785904, 16.910202>,  <43.444324, 35.422352, 16.790621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560638, 35.785904, 16.910202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661426, -0.034814, 0.749202,
		0.691345, -0.415595, 0.591036,
		0.290788, 0.908883, 0.298954,
		43.647873, 36.058571, 16.999887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325867, 35.396301, 17.530657>,  <43.444324, 35.422352, 16.790621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325867, 35.396301, 17.530657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412560, 35.776688, 17.442390>,  <43.464577, 36.004917, 17.389431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412560, 35.776688, 17.442390>,  <43.325867, 35.396301, 17.530657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412560, 35.776688, 17.442390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472004, 0.299941, 0.829004,
		0.854540, -0.075520, 0.513866,
		0.216736, 0.950964, -0.220665,
		43.477581, 36.061977, 17.376190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559307, 35.669735, 18.128925>,  <43.325867, 35.396301, 17.530657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559307, 35.669735, 18.128925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390934, 35.957844, 17.908371>,  <43.289909, 36.130707, 17.776037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390934, 35.957844, 17.908371>,  <43.559307, 35.669735, 18.128925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390934, 35.957844, 17.908371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619922, 0.215333, 0.754538,
		0.662202, 0.659428, 0.355870,
		-0.420933, 0.720268, -0.551388,
		43.264652, 36.173923, 17.742954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661427, 36.158211, 18.605228>,  <43.559307, 35.669735, 18.128925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661427, 36.158211, 18.605228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378273, 36.259251, 18.341381>,  <43.208382, 36.319874, 18.183073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378273, 36.259251, 18.341381>,  <43.661427, 36.158211, 18.605228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378273, 36.259251, 18.341381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573792, 0.338939, 0.745575,
		0.411899, 0.906265, -0.094992,
		-0.707885, 0.252596, -0.659616,
		43.165909, 36.335030, 18.143496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348583, 36.729362, 18.933136>,  <43.661427, 36.158211, 18.605228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348583, 36.729362, 18.933136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084274, 36.615238, 18.655437>,  <42.925690, 36.546764, 18.488817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084274, 36.615238, 18.655437>,  <43.348583, 36.729362, 18.933136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084274, 36.615238, 18.655437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742020, 0.108952, 0.661465,
		-0.113083, 0.952223, -0.283698,
		-0.660772, -0.285310, -0.694247,
		42.886044, 36.529644, 18.447163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776169, 37.268192, 18.818012>,  <43.348583, 36.729362, 18.933136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776169, 37.268192, 18.818012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676247, 36.886070, 18.754776>,  <42.616295, 36.656796, 18.716835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676247, 36.886070, 18.754776>,  <42.776169, 37.268192, 18.818012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676247, 36.886070, 18.754776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727999, 0.077640, 0.681168,
		-0.638449, 0.285245, -0.714855,
		-0.249801, -0.955305, -0.158089,
		42.601307, 36.599480, 18.707350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148830, 37.335930, 19.113411>,  <42.776169, 37.268192, 18.818012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148830, 37.335930, 19.113411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184433, 36.946789, 19.027962>,  <42.205795, 36.713303, 18.976692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184433, 36.946789, 19.027962>,  <42.148830, 37.335930, 19.113411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184433, 36.946789, 19.027962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814352, -0.194572, 0.546784,
		-0.573505, 0.125297, -0.809563,
		0.089008, -0.972852, -0.213624,
		42.211136, 36.654934, 18.963875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502968, 37.160870, 19.110796>,  <42.148830, 37.335930, 19.113411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502968, 37.160870, 19.110796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687344, 36.807331, 19.142689>,  <41.797970, 36.595207, 19.161823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687344, 36.807331, 19.142689>,  <41.502968, 37.160870, 19.110796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687344, 36.807331, 19.142689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725347, -0.323463, 0.607655,
		-0.511282, -0.337922, -0.790189,
		0.460937, -0.883844, 0.079730,
		41.825626, 36.542179, 19.166607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032574, 36.519627, 19.005804>,  <41.502968, 37.160870, 19.110796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032574, 36.519627, 19.005804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317631, 36.397007, 19.258205>,  <41.488667, 36.323433, 19.409645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317631, 36.397007, 19.258205>,  <41.032574, 36.519627, 19.005804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317631, 36.397007, 19.258205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697494, -0.213346, 0.684095,
		-0.075086, -0.927638, -0.365855,
		0.712646, -0.306548, 0.631002,
		41.531425, 36.305042, 19.447506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790394, 35.862579, 19.229868>,  <41.032574, 36.519627, 19.005804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790394, 35.862579, 19.229868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056705, 35.942665, 19.517384>,  <41.216492, 35.990719, 19.689892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056705, 35.942665, 19.517384>,  <40.790394, 35.862579, 19.229868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056705, 35.942665, 19.517384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656572, -0.300454, 0.691839,
		0.354480, -0.932546, -0.068579,
		0.665777, 0.200216, 0.718788,
		41.256439, 36.002731, 19.733021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873611, 35.202843, 19.674669>,  <40.790394, 35.862579, 19.229868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873611, 35.202843, 19.674669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025600, 35.499039, 19.896408>,  <41.116795, 35.676758, 20.029451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025600, 35.499039, 19.896408>,  <40.873611, 35.202843, 19.674669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025600, 35.499039, 19.896408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495859, -0.342850, 0.797858,
		0.780863, -0.578039, 0.236905,
		0.379970, 0.740489, 0.554345,
		41.139591, 35.721184, 20.062712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044960, 34.860073, 20.283947>,  <40.873611, 35.202843, 19.674669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044960, 34.860073, 20.283947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022717, 35.253773, 20.351070>,  <41.009369, 35.489994, 20.391344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022717, 35.253773, 20.351070>,  <41.044960, 34.860073, 20.283947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022717, 35.253773, 20.351070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426421, -0.175383, 0.887359,
		0.902814, -0.022211, 0.429458,
		-0.055610, 0.984250, 0.167810,
		41.006035, 35.549049, 20.401413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273235, 34.917191, 20.956640>,  <41.044960, 34.860073, 20.283947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273235, 34.917191, 20.956640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052677, 35.238567, 20.866802>,  <40.920341, 35.431393, 20.812899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052677, 35.238567, 20.866802>,  <41.273235, 34.917191, 20.956640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052677, 35.238567, 20.866802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643951, -0.238756, 0.726858,
		0.530363, 0.545418, 0.649026,
		-0.551400, 0.803440, -0.224595,
		40.887257, 35.479599, 20.799423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034828, 35.166599, 21.602602>,  <41.273235, 34.917191, 20.956640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034828, 35.166599, 21.602602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804920, 35.288898, 21.298981>,  <40.666977, 35.362278, 21.116808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804920, 35.288898, 21.298981>,  <41.034828, 35.166599, 21.602602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804920, 35.288898, 21.298981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807217, -0.364084, 0.464589,
		-0.134313, 0.879752, 0.456067,
		-0.574770, 0.305745, -0.759052,
		40.632488, 35.380623, 21.071264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806015, 35.713192, 22.106941>,  <41.034828, 35.166599, 21.602602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806015, 35.713192, 22.106941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566109, 35.651306, 21.792912>,  <40.422165, 35.614174, 21.604494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566109, 35.651306, 21.792912>,  <40.806015, 35.713192, 22.106941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566109, 35.651306, 21.792912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460119, -0.736015, 0.496560,
		-0.654654, 0.659048, 0.370248,
		-0.599765, -0.154717, -0.785076,
		40.386181, 35.604893, 21.557388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122627, 35.719780, 22.382910>,  <40.806015, 35.713192, 22.106941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122627, 35.719780, 22.382910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136951, 35.530312, 22.030922>,  <40.145546, 35.416630, 21.819729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136951, 35.530312, 22.030922>,  <40.122627, 35.719780, 22.382910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136951, 35.530312, 22.030922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615557, -0.704127, 0.353972,
		-0.787279, 0.528998, -0.316786,
		0.035807, -0.473674, -0.879972,
		40.147694, 35.388210, 21.766930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505920, 35.637539, 22.219181>,  <40.122627, 35.719780, 22.382910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505920, 35.637539, 22.219181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690636, 35.361252, 21.996590>,  <39.801464, 35.195480, 21.863035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690636, 35.361252, 21.996590>,  <39.505920, 35.637539, 22.219181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690636, 35.361252, 21.996590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758456, -0.632774, 0.156020,
		-0.459891, 0.350018, -0.816081,
		0.461785, -0.690713, -0.556480,
		39.829170, 35.154037, 21.829645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033215, 35.492767, 21.681684>,  <39.505920, 35.637539, 22.219181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033215, 35.492767, 21.681684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293415, 35.188984, 21.678150>,  <39.449535, 35.006714, 21.676029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293415, 35.188984, 21.678150>,  <39.033215, 35.492767, 21.681684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293415, 35.188984, 21.678150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757469, -0.649560, 0.065669,
		-0.055611, -0.036026, -0.997802,
		0.650498, -0.759457, -0.008834,
		39.488564, 34.961147, 21.675499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733932, 35.018139, 21.260031>,  <39.033215, 35.492767, 21.681684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733932, 35.018139, 21.260031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006805, 34.824810, 21.479496>,  <39.170528, 34.708813, 21.611176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006805, 34.824810, 21.479496>,  <38.733932, 35.018139, 21.260031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006805, 34.824810, 21.479496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687448, -0.679582, 0.256093,
		0.249088, -0.551880, -0.795854,
		0.682181, -0.483318, 0.548664,
		39.211460, 34.679813, 21.644094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728783, 34.220528, 20.942404>,  <38.733932, 35.018139, 21.260031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728783, 34.220528, 20.942404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891827, 34.207546, 21.307434>,  <38.989655, 34.199757, 21.526453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891827, 34.207546, 21.307434>,  <38.728783, 34.220528, 20.942404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891827, 34.207546, 21.307434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746887, -0.586816, 0.312740,
		0.525367, -0.809070, -0.263431,
		0.407614, -0.032450, 0.912578,
		39.014111, 34.197811, 21.581207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686459, 33.543270, 21.165737>,  <38.728783, 34.220528, 20.942404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686459, 33.543270, 21.165737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721653, 33.765465, 21.496479>,  <38.742771, 33.898781, 21.694923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721653, 33.765465, 21.496479>,  <38.686459, 33.543270, 21.165737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721653, 33.765465, 21.496479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732821, -0.526141, 0.431450,
		0.674708, -0.643900, 0.360779,
		0.087990, 0.555489, 0.826855,
		38.748051, 33.932110, 21.744535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858150, 33.198811, 21.790859>,  <38.686459, 33.543270, 21.165737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858150, 33.198811, 21.790859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658024, 33.537460, 21.863430>,  <38.537949, 33.740650, 21.906973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658024, 33.537460, 21.863430>,  <38.858150, 33.198811, 21.790859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658024, 33.537460, 21.863430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775389, -0.531349, 0.341234,
		0.385296, 0.030051, 0.922304,
		-0.500319, 0.846620, 0.181425,
		38.507927, 33.791447, 21.917858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572197, 33.079197, 22.462614>,  <38.858150, 33.198811, 21.790859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572197, 33.079197, 22.462614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345890, 33.364265, 22.296715>,  <38.210106, 33.535305, 22.197176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345890, 33.364265, 22.296715>,  <38.572197, 33.079197, 22.462614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345890, 33.364265, 22.296715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807964, -0.378712, 0.451411,
		0.164637, 0.590492, 0.790072,
		-0.565764, 0.712669, -0.414746,
		38.176159, 33.578068, 22.172291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279781, 33.513420, 22.960110>,  <38.572197, 33.079197, 22.462614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279781, 33.513420, 22.960110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053024, 33.499290, 22.630898>,  <37.916969, 33.490814, 22.433371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053024, 33.499290, 22.630898>,  <38.279781, 33.513420, 22.960110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053024, 33.499290, 22.630898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755154, -0.376964, 0.536322,
		-0.329198, 0.925554, 0.187025,
		-0.566896, -0.035323, -0.823031,
		37.882954, 33.488693, 22.383987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689316, 33.969402, 22.881954>,  <38.279781, 33.513420, 22.960110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689316, 33.969402, 22.881954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614910, 33.622021, 22.698132>,  <37.570267, 33.413593, 22.587837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614910, 33.622021, 22.698132>,  <37.689316, 33.969402, 22.881954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614910, 33.622021, 22.698132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775680, -0.157295, 0.611210,
		-0.603092, 0.470161, -0.644382,
		-0.186010, -0.868451, -0.459558,
		37.559109, 33.361485, 22.560265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016941, 34.060940, 22.706715>,  <37.689316, 33.969402, 22.881954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016941, 34.060940, 22.706715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136200, 33.694698, 22.814625>,  <37.207756, 33.474953, 22.879372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136200, 33.694698, 22.814625>,  <37.016941, 34.060940, 22.706715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136200, 33.694698, 22.814625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732641, -0.038350, 0.679534,
		-0.611837, -0.400251, -0.682242,
		0.298148, -0.915603, 0.269776,
		37.225643, 33.420017, 22.895557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441879, 33.572254, 22.744247>,  <37.016941, 34.060940, 22.706715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441879, 33.572254, 22.744247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712395, 33.403782, 22.985989>,  <36.874706, 33.302700, 23.131033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712395, 33.403782, 22.985989>,  <36.441879, 33.572254, 22.744247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712395, 33.403782, 22.985989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696881, -0.099937, 0.710190,
		-0.238719, -0.901455, -0.361097,
		0.676291, -0.421178, 0.604350,
		36.915283, 33.277428, 23.167294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179985, 32.848511, 22.671320>,  <36.441879, 33.572254, 22.744247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179985, 32.848511, 22.671320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056236, 33.065315, 22.983860>,  <35.981987, 33.195400, 23.171385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056236, 33.065315, 22.983860>,  <36.179985, 32.848511, 22.671320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056236, 33.065315, 22.983860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028676, -0.826605, 0.562051,
		0.950508, 0.151479, 0.271274,
		-0.309375, 0.542013, 0.781351,
		35.963425, 33.227921, 23.218266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497337, 32.643238, 23.238180>,  <36.179985, 32.848511, 22.671320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497337, 32.643238, 23.238180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190506, 32.804638, 23.437691>,  <36.006409, 32.901478, 23.557398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190506, 32.804638, 23.437691>,  <36.497337, 32.643238, 23.238180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190506, 32.804638, 23.437691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090499, -0.837731, 0.538531,
		0.635139, 0.367957, 0.679122,
		-0.767078, 0.403502, 0.498776,
		35.960384, 32.925690, 23.587324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621826, 32.499527, 23.936533>,  <36.497337, 32.643238, 23.238180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621826, 32.499527, 23.936533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228745, 32.569798, 23.913132>,  <35.992893, 32.611958, 23.899092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228745, 32.569798, 23.913132>,  <36.621826, 32.499527, 23.936533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228745, 32.569798, 23.913132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175044, -0.778429, 0.602834,
		0.060361, 0.602651, 0.795719,
		-0.982709, 0.175674, -0.058503,
		35.933933, 32.622501, 23.895580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459778, 32.444725, 24.610994>,  <36.621826, 32.499527, 23.936533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459778, 32.444725, 24.610994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106579, 32.413834, 24.425800>,  <35.894661, 32.395298, 24.314684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106579, 32.413834, 24.425800>,  <36.459778, 32.444725, 24.610994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106579, 32.413834, 24.425800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339752, -0.575421, 0.743949,
		-0.323867, 0.814203, 0.481854,
		-0.882994, -0.077229, -0.462987,
		35.841682, 32.390663, 24.286903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934540, 32.503151, 25.137796>,  <36.459778, 32.444725, 24.610994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934540, 32.503151, 25.137796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791119, 32.295822, 24.827240>,  <35.705067, 32.171425, 24.640907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791119, 32.295822, 24.827240>,  <35.934540, 32.503151, 25.137796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791119, 32.295822, 24.827240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283707, -0.731844, 0.619608,
		-0.889354, 0.442429, 0.115352,
		-0.358552, -0.518325, -0.776389,
		35.683552, 32.140324, 24.594324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485764, 32.098835, 25.474125>,  <35.934540, 32.503151, 25.137796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485764, 32.098835, 25.474125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451965, 31.922527, 25.116673>,  <35.431686, 31.816742, 24.902201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451965, 31.922527, 25.116673>,  <35.485764, 32.098835, 25.474125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451965, 31.922527, 25.116673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039814, -0.897617, 0.438974,
		-0.995628, 0.001512, 0.093395,
		-0.084497, -0.440773, -0.893632,
		35.426617, 31.790295, 24.848583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715530, 31.789820, 25.345978>,  <35.485764, 32.098835, 25.474125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715530, 31.789820, 25.345978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956985, 31.601246, 25.088802>,  <35.101860, 31.488102, 24.934498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956985, 31.601246, 25.088802>,  <34.715530, 31.789820, 25.345978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956985, 31.601246, 25.088802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161193, -0.861951, 0.480683,
		-0.780791, -0.186523, -0.596301,
		0.603641, -0.471433, -0.642937,
		35.138077, 31.459816, 24.895922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313168, 31.340073, 25.093433>,  <34.715530, 31.789820, 25.345978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313168, 31.340073, 25.093433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687073, 31.205338, 25.048244>,  <34.911415, 31.124496, 25.021132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687073, 31.205338, 25.048244>,  <34.313168, 31.340073, 25.093433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687073, 31.205338, 25.048244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196968, -0.755978, 0.624260,
		-0.295682, -0.561281, -0.773005,
		0.934760, -0.336840, -0.112974,
		34.967499, 31.104286, 25.014353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267178, 30.601053, 24.990639>,  <34.313168, 31.340073, 25.093433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267178, 30.601053, 24.990639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640327, 30.650776, 25.125874>,  <34.864216, 30.680609, 25.207014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640327, 30.650776, 25.125874>,  <34.267178, 30.601053, 24.990639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640327, 30.650776, 25.125874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173405, -0.667688, 0.723963,
		0.315728, -0.733989, -0.601311,
		0.932870, 0.124305, 0.338085,
		34.920189, 30.688066, 25.227299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533863, 29.924942, 24.935728>,  <34.267178, 30.601053, 24.990639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533863, 29.924942, 24.935728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732891, 30.157372, 25.193340>,  <34.852306, 30.296829, 25.347908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732891, 30.157372, 25.193340>,  <34.533863, 29.924942, 24.935728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732891, 30.157372, 25.193340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012970, -0.747365, 0.664288,
		0.867327, -0.322177, -0.379403,
		0.497570, 0.581075, 0.644031,
		34.882164, 30.331694, 25.386549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881504, 29.456369, 25.342957>,  <34.533863, 29.924942, 24.935728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881504, 29.456369, 25.342957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918468, 29.768818, 25.589958>,  <34.940647, 29.956287, 25.738159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918468, 29.768818, 25.589958>,  <34.881504, 29.456369, 25.342957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918468, 29.768818, 25.589958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119936, -0.606911, 0.785668,
		0.988472, -0.146663, 0.037600,
		0.092409, 0.781120, 0.617505,
		34.946190, 30.003155, 25.775209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312656, 29.202316, 25.878880>,  <34.881504, 29.456369, 25.342957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312656, 29.202316, 25.878880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173599, 29.535603, 26.050880>,  <35.090164, 29.735575, 26.154081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173599, 29.535603, 26.050880>,  <35.312656, 29.202316, 25.878880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173599, 29.535603, 26.050880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052162, -0.475082, 0.878394,
		0.936177, 0.282934, 0.208619,
		-0.347638, 0.833214, 0.430002,
		35.069309, 29.785566, 26.179880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732822, 29.303112, 26.460388>,  <35.312656, 29.202316, 25.878880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732822, 29.303112, 26.460388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391388, 29.492184, 26.547997>,  <35.186527, 29.605627, 26.600561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391388, 29.492184, 26.547997>,  <35.732822, 29.303112, 26.460388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391388, 29.492184, 26.547997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096289, -0.556327, 0.825366,
		0.511982, 0.683429, 0.520384,
		-0.853582, 0.472680, 0.219023,
		35.135315, 29.633987, 26.613703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745205, 29.280373, 27.192017>,  <35.732822, 29.303112, 26.460388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745205, 29.280373, 27.192017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367912, 29.368774, 27.092842>,  <35.141537, 29.421816, 27.033337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367912, 29.368774, 27.092842>,  <35.745205, 29.280373, 27.192017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367912, 29.368774, 27.092842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330446, -0.549171, 0.767604,
		0.033483, 0.805958, 0.591025,
		-0.943231, 0.221003, -0.247938,
		35.084942, 29.435076, 27.018461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400768, 29.705233, 27.694942>,  <35.745205, 29.280373, 27.192017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400768, 29.705233, 27.694942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121845, 29.474239, 27.525108>,  <34.954491, 29.335644, 27.423208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121845, 29.474239, 27.525108>,  <35.400768, 29.705233, 27.694942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121845, 29.474239, 27.525108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076722, -0.528820, 0.845260,
		-0.712653, 0.621982, 0.324445,
		-0.697309, -0.577485, -0.424584,
		34.912651, 29.300993, 27.397734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894306, 29.530151, 28.248510>,  <35.400768, 29.705233, 27.694942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894306, 29.530151, 28.248510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873779, 29.272594, 27.943153>,  <34.861465, 29.118061, 27.759939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873779, 29.272594, 27.943153>,  <34.894306, 29.530151, 28.248510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873779, 29.272594, 27.943153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015759, -0.763784, 0.645280,
		-0.998558, 0.045143, 0.029047,
		-0.051315, -0.643892, -0.763394,
		34.858383, 29.079428, 27.714136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412121, 29.052500, 28.448227>,  <34.894306, 29.530151, 28.248510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412121, 29.052500, 28.448227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636726, 28.877213, 28.167465>,  <34.771488, 28.772039, 27.999008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636726, 28.877213, 28.167465>,  <34.412121, 29.052500, 28.448227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636726, 28.877213, 28.167465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094142, -0.876580, 0.471959,
		-0.822096, -0.198931, -0.533464,
		0.561511, -0.438217, -0.701905,
		34.805180, 28.745747, 27.956894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180428, 28.344263, 28.435266>,  <34.412121, 29.052500, 28.448227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180428, 28.344263, 28.435266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528316, 28.328804, 28.238457>,  <34.737049, 28.319529, 28.120371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528316, 28.328804, 28.238457>,  <34.180428, 28.344263, 28.435266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528316, 28.328804, 28.238457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203288, -0.880377, 0.428498,
		-0.449726, -0.472698, -0.757828,
		0.869724, -0.038649, -0.492022,
		34.789234, 28.317209, 28.090851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222656, 27.647739, 28.280657>,  <34.180428, 28.344263, 28.435266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222656, 27.647739, 28.280657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597458, 27.787319, 28.274250>,  <34.822338, 27.871067, 28.270407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597458, 27.787319, 28.274250>,  <34.222656, 27.647739, 28.280657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597458, 27.787319, 28.274250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317652, -0.832097, 0.454656,
		0.145326, -0.431101, -0.890523,
		0.937005, 0.348949, -0.016015,
		34.878559, 27.892004, 28.269445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567734, 27.044991, 28.245029>,  <34.222656, 27.647739, 28.280657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567734, 27.044991, 28.245029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852966, 27.306263, 28.346905>,  <35.024105, 27.463026, 28.408030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852966, 27.306263, 28.346905>,  <34.567734, 27.044991, 28.245029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852966, 27.306263, 28.346905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452300, -0.706181, 0.544732,
		0.535666, -0.273242, -0.799000,
		0.713082, 0.653182, 0.254689,
		35.066891, 27.502218, 28.423311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207462, 26.751276, 28.098175>,  <34.567734, 27.044991, 28.245029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207462, 26.751276, 28.098175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295223, 27.022747, 28.378536>,  <35.347878, 27.185629, 28.546753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295223, 27.022747, 28.378536>,  <35.207462, 26.751276, 28.098175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295223, 27.022747, 28.378536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541344, -0.682355, 0.491263,
		0.811671, 0.271645, -0.517106,
		0.219400, 0.678676, 0.700901,
		35.361042, 27.226349, 28.588806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830795, 26.614466, 28.305716>,  <35.207462, 26.751276, 28.098175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830795, 26.614466, 28.305716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678200, 26.818867, 28.613831>,  <35.586643, 26.941507, 28.798700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678200, 26.818867, 28.613831>,  <35.830795, 26.614466, 28.305716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678200, 26.818867, 28.613831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495029, -0.590806, 0.637098,
		0.780651, 0.624359, -0.027578,
		-0.381485, 0.511003, 0.770289,
		35.563755, 26.972168, 28.844917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337566, 26.695829, 28.724297>,  <35.830795, 26.614466, 28.305716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337566, 26.695829, 28.724297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023575, 26.752361, 28.965569>,  <35.835178, 26.786282, 29.110332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023575, 26.752361, 28.965569>,  <36.337566, 26.695829, 28.724297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023575, 26.752361, 28.965569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390600, -0.642821, 0.658948,
		0.480867, 0.752866, 0.449400,
		-0.784983, 0.141331, 0.603180,
		35.788078, 26.794760, 29.146523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666515, 26.770716, 29.410170>,  <36.337566, 26.695829, 28.724297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666515, 26.770716, 29.410170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275455, 26.688156, 29.426167>,  <36.040821, 26.638620, 29.435764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275455, 26.688156, 29.426167>,  <36.666515, 26.770716, 29.410170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275455, 26.688156, 29.426167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179375, -0.719685, 0.670730,
		-0.109658, 0.662912, 0.740623,
		-0.977650, -0.206400, 0.039990,
		35.982159, 26.626236, 29.438164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620777, 26.673756, 30.153574>,  <36.666515, 26.770716, 29.410170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620777, 26.673756, 30.153574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284504, 26.526028, 29.995152>,  <36.082741, 26.437391, 29.900099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284504, 26.526028, 29.995152>,  <36.620777, 26.673756, 30.153574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284504, 26.526028, 29.995152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087839, -0.628679, 0.772688,
		-0.534361, 0.684372, 0.496077,
		-0.840680, -0.369320, -0.396056,
		36.032299, 26.415232, 29.876335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066666, 26.740229, 30.684284>,  <36.620777, 26.673756, 30.153574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066666, 26.740229, 30.684284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967094, 26.452568, 30.424789>,  <35.907352, 26.279972, 30.269093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967094, 26.452568, 30.424789>,  <36.066666, 26.740229, 30.684284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967094, 26.452568, 30.424789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183006, -0.622830, 0.760652,
		-0.951076, 0.308068, 0.023428,
		-0.248924, -0.719151, -0.648736,
		35.892418, 26.236822, 30.230169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386105, 26.495134, 30.882658>,  <36.066666, 26.740229, 30.684284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386105, 26.495134, 30.882658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545361, 26.199085, 30.665882>,  <35.640915, 26.021456, 30.535816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545361, 26.199085, 30.665882>,  <35.386105, 26.495134, 30.882658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545361, 26.199085, 30.665882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311248, -0.664734, 0.679157,
		-0.862906, -0.101723, -0.495021,
		0.398143, -0.740123, -0.541942,
		35.664803, 25.977049, 30.503300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952938, 26.063641, 31.044062>,  <35.386105, 26.495134, 30.882658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952938, 26.063641, 31.044062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237377, 25.833065, 30.883038>,  <35.408039, 25.694719, 30.786423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237377, 25.833065, 30.883038>,  <34.952938, 26.063641, 31.044062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237377, 25.833065, 30.883038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213250, -0.722414, 0.657756,
		-0.669973, -0.381883, -0.636633,
		0.711098, -0.576441, -0.402562,
		35.450706, 25.660133, 30.762268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706074, 25.447670, 30.996756>,  <34.952938, 26.063641, 31.044062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706074, 25.447670, 30.996756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096375, 25.360168, 30.993706>,  <35.330555, 25.307667, 30.991877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096375, 25.360168, 30.993706>,  <34.706074, 25.447670, 30.996756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096375, 25.360168, 30.993706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159903, -0.736157, 0.657651,
		-0.149477, -0.640483, -0.753285,
		0.975750, -0.218756, -0.007623,
		35.389099, 25.294542, 30.991419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850235, 24.708876, 30.671919>,  <34.706074, 25.447670, 30.996756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850235, 24.708876, 30.671919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156433, 24.804935, 30.910698>,  <35.340153, 24.862572, 31.053967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156433, 24.804935, 30.910698>,  <34.850235, 24.708876, 30.671919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156433, 24.804935, 30.910698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280222, -0.710714, 0.645260,
		0.579220, -0.661221, -0.476751,
		0.765493, 0.240151, 0.596949,
		35.386082, 24.876982, 31.089783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126163, 24.071661, 30.928469>,  <34.850235, 24.708876, 30.671919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126163, 24.071661, 30.928469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297470, 24.337303, 31.173599>,  <35.400253, 24.496689, 31.320679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297470, 24.337303, 31.173599>,  <35.126163, 24.071661, 30.928469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297470, 24.337303, 31.173599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101905, -0.638347, 0.762974,
		0.897891, -0.389203, -0.205704,
		0.428262, 0.664104, 0.612827,
		35.425949, 24.536535, 31.357447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527592, 23.641575, 31.413137>,  <35.126163, 24.071661, 30.928469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527592, 23.641575, 31.413137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465389, 24.001904, 31.575294>,  <35.428070, 24.218100, 31.672588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465389, 24.001904, 31.575294>,  <35.527592, 23.641575, 31.413137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465389, 24.001904, 31.575294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048633, -0.416868, 0.907665,
		0.986637, 0.121430, 0.108635,
		-0.155504, 0.900820, 0.405392,
		35.418739, 24.272150, 31.696913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983475, 23.640041, 32.018002>,  <35.527592, 23.641575, 31.413137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983475, 23.640041, 32.018002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697372, 23.914078, 32.073223>,  <35.525711, 24.078499, 32.106358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697372, 23.914078, 32.073223>,  <35.983475, 23.640041, 32.018002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697372, 23.914078, 32.073223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100247, -0.296076, 0.949889,
		0.691634, 0.665576, 0.280449,
		-0.715258, 0.685090, 0.138054,
		35.482796, 24.119604, 32.114639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082504, 23.924009, 32.633598>,  <35.983475, 23.640041, 32.018002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082504, 23.924009, 32.633598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695175, 24.013027, 32.588303>,  <35.462776, 24.066437, 32.561127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695175, 24.013027, 32.588303>,  <36.082504, 23.924009, 32.633598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695175, 24.013027, 32.588303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187696, -0.349650, 0.917886,
		0.164675, 0.910066, 0.380345,
		-0.968324, 0.222543, -0.113237,
		35.404678, 24.079790, 32.554333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860779, 24.280245, 33.207016>,  <36.082504, 23.924009, 32.633598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860779, 24.280245, 33.207016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533405, 24.115124, 33.047131>,  <35.336983, 24.016052, 32.951199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533405, 24.115124, 33.047131>,  <35.860779, 24.280245, 33.207016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533405, 24.115124, 33.047131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239260, -0.387628, 0.890224,
		-0.522423, 0.824221, 0.218480,
		-0.818431, -0.412800, -0.399709,
		35.287876, 23.991283, 32.927219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321484, 24.394817, 33.756817>,  <35.860779, 24.280245, 33.207016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321484, 24.394817, 33.756817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165146, 24.149345, 33.482407>,  <35.071342, 24.002062, 33.317760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165146, 24.149345, 33.482407>,  <35.321484, 24.394817, 33.756817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165146, 24.149345, 33.482407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478492, -0.501230, 0.720981,
		-0.786310, 0.610052, -0.097737,
		-0.390847, -0.613681, -0.686028,
		35.047894, 23.965240, 33.276600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594540, 24.488304, 33.931488>,  <35.321484, 24.394817, 33.756817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594540, 24.488304, 33.931488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667900, 24.146542, 33.737022>,  <34.711918, 23.941484, 33.620342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667900, 24.146542, 33.737022>,  <34.594540, 24.488304, 33.931488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667900, 24.146542, 33.737022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550207, -0.499050, 0.669493,
		-0.814638, 0.144703, -0.561628,
		0.183403, -0.854407, -0.486161,
		34.722919, 23.890219, 33.591175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956768, 24.239342, 33.800667>,  <34.594540, 24.488304, 33.931488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956768, 24.239342, 33.800667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210777, 23.930889, 33.782356>,  <34.363182, 23.745817, 33.771370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210777, 23.930889, 33.782356>,  <33.956768, 24.239342, 33.800667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210777, 23.930889, 33.782356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593543, -0.524995, 0.609989,
		-0.494411, -0.360194, -0.791087,
		0.635031, -0.771130, -0.045773,
		34.401287, 23.699549, 33.768623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522575, 23.639721, 33.941723>,  <33.956768, 24.239342, 33.800667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522575, 23.639721, 33.941723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895302, 23.506226, 33.998764>,  <34.118938, 23.426128, 34.032990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895302, 23.506226, 33.998764>,  <33.522575, 23.639721, 33.941723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895302, 23.506226, 33.998764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297450, -0.477146, 0.826955,
		-0.207940, -0.812990, -0.543882,
		0.931817, -0.333736, 0.142606,
		34.174847, 23.406105, 34.041546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405121, 22.931686, 34.270908>,  <33.522575, 23.639721, 33.941723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405121, 22.931686, 34.270908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772335, 23.046413, 34.380417>,  <33.992664, 23.115250, 34.446121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772335, 23.046413, 34.380417>,  <33.405121, 22.931686, 34.270908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772335, 23.046413, 34.380417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194049, -0.277136, 0.941032,
		0.345776, -0.917023, -0.198764,
		0.918033, 0.286816, 0.273774,
		34.047745, 23.132458, 34.462547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523544, 22.464117, 34.691185>,  <33.405121, 22.931686, 34.270908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523544, 22.464117, 34.691185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824200, 22.713451, 34.777431>,  <34.004593, 22.863052, 34.829182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824200, 22.713451, 34.777431>,  <33.523544, 22.464117, 34.691185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824200, 22.713451, 34.777431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001509, -0.328530, 0.944492,
		0.659575, -0.709590, -0.247875,
		0.751637, 0.623338, 0.215619,
		34.049690, 22.900452, 34.842117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079845, 22.023863, 35.085144>,  <33.523544, 22.464117, 34.691185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079845, 22.023863, 35.085144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112240, 22.413380, 35.170155>,  <34.131676, 22.647091, 35.221161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112240, 22.413380, 35.170155>,  <34.079845, 22.023863, 35.085144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112240, 22.413380, 35.170155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008063, -0.213857, 0.976832,
		0.996683, -0.077396, -0.025171,
		0.080985, 0.973794, 0.212524,
		34.136536, 22.705519, 35.233913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779236, 22.138937, 35.261650>,  <34.079845, 22.023863, 35.085144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779236, 22.138937, 35.261650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519714, 22.400745, 35.416908>,  <34.364002, 22.557831, 35.510063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519714, 22.400745, 35.416908>,  <34.779236, 22.138937, 35.261650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519714, 22.400745, 35.416908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223223, -0.323935, 0.919368,
		0.727482, 0.683130, 0.064065,
		-0.648800, 0.654522, 0.388148,
		34.325073, 22.597103, 35.533352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119408, 22.724730, 35.652874>,  <34.779236, 22.138937, 35.261650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119408, 22.724730, 35.652874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745438, 22.674252, 35.785526>,  <34.521053, 22.643965, 35.865120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745438, 22.674252, 35.785526>,  <35.119408, 22.724730, 35.652874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745438, 22.674252, 35.785526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348059, -0.144400, 0.926285,
		-0.069005, 0.981439, 0.178927,
		-0.934929, -0.126196, 0.331635,
		34.464958, 22.636393, 35.885017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009430, 23.216257, 36.193565>,  <35.119408, 22.724730, 35.652874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009430, 23.216257, 36.193565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857334, 22.846832, 36.173763>,  <34.766075, 22.625177, 36.161884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857334, 22.846832, 36.173763>,  <35.009430, 23.216257, 36.193565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857334, 22.846832, 36.173763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556636, -0.271262, 0.785222,
		-0.738628, 0.271021, 0.617232,
		-0.380243, -0.923561, -0.049501,
		34.743259, 22.569763, 36.158913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922970, 22.979555, 36.911217>,  <35.009430, 23.216257, 36.193565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922970, 22.979555, 36.911217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961948, 22.669769, 36.661190>,  <34.985336, 22.483898, 36.511173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961948, 22.669769, 36.661190>,  <34.922970, 22.979555, 36.911217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961948, 22.669769, 36.661190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517976, -0.496825, 0.696323,
		-0.849826, -0.391625, 0.352739,
		0.097448, -0.774464, -0.625067,
		34.991184, 22.437429, 36.473671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374916, 22.461042, 37.200546>,  <34.922970, 22.979555, 36.911217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374916, 22.461042, 37.200546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335796, 22.404091, 36.806561>,  <34.312325, 22.369919, 36.570168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335796, 22.404091, 36.806561>,  <34.374916, 22.461042, 37.200546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335796, 22.404091, 36.806561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135421, 0.978604, -0.154906,
		0.985950, -0.148536, -0.076425,
		-0.097799, -0.142380, -0.984969,
		34.306458, 22.361378, 36.511070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670166, 22.736506, 36.794189>,  <34.374916, 22.461042, 37.200546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670166, 22.736506, 36.794189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782524, 23.046333, 36.567513>,  <33.849937, 23.232231, 36.431507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782524, 23.046333, 36.567513>,  <33.670166, 22.736506, 36.794189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782524, 23.046333, 36.567513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944760, 0.119251, -0.305297,
		-0.168896, 0.621144, 0.765280,
		0.280894, 0.774570, -0.566691,
		33.866791, 23.278704, 36.397507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218185, 23.230061, 36.431641>,  <33.670166, 22.736506, 36.794189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218185, 23.230061, 36.431641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248775, 23.353596, 36.810856>,  <33.267132, 23.427717, 37.038383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248775, 23.353596, 36.810856>,  <33.218185, 23.230061, 36.431641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248775, 23.353596, 36.810856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163811, 0.934008, -0.317481,
		-0.983523, 0.179579, 0.020841,
		0.076479, 0.308836, 0.948036,
		33.271721, 23.446247, 37.095268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842400, 23.719900, 36.572323>,  <33.218185, 23.230061, 36.431641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842400, 23.719900, 36.572323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125759, 23.784367, 36.847191>,  <33.295776, 23.823046, 37.012112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125759, 23.784367, 36.847191>,  <32.842400, 23.719900, 36.572323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125759, 23.784367, 36.847191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025490, 0.967104, -0.253100,
		-0.705352, 0.196812, 0.680987,
		0.708399, 0.161167, 0.687165,
		33.338280, 23.832716, 37.053341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647011, 24.193039, 37.183064>,  <32.842400, 23.719900, 36.572323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647011, 24.193039, 37.183064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043839, 24.215107, 37.137882>,  <33.281933, 24.228348, 37.110775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043839, 24.215107, 37.137882>,  <32.647011, 24.193039, 37.183064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043839, 24.215107, 37.137882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080524, 0.968894, -0.234010,
		0.096530, 0.241249, 0.965651,
		0.992068, 0.055169, -0.112953,
		33.341457, 24.231657, 37.103996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965401, 24.806974, 37.474731>,  <32.647011, 24.193039, 37.183064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965401, 24.806974, 37.474731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186489, 24.722904, 37.152161>,  <33.319141, 24.672462, 36.958618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186489, 24.722904, 37.152161>,  <32.965401, 24.806974, 37.474731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186489, 24.722904, 37.152161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106794, 0.941832, -0.318666,
		0.826493, 0.262256, 0.498128,
		0.552725, -0.210178, -0.806424,
		33.352306, 24.659851, 36.910233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304066, 25.385092, 37.418503>,  <32.965401, 24.806974, 37.474731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304066, 25.385092, 37.418503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358429, 25.179333, 37.079819>,  <33.391048, 25.055878, 36.876606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358429, 25.179333, 37.079819>,  <33.304066, 25.385092, 37.418503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358429, 25.179333, 37.079819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118538, 0.856947, -0.501588,
		0.983604, -0.032196, 0.177446,
		0.135912, -0.514398, -0.846713,
		33.399204, 25.025013, 36.825806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922337, 25.672825, 37.152878>,  <33.304066, 25.385092, 37.418503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922337, 25.672825, 37.152878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729851, 25.493965, 36.851284>,  <33.614361, 25.386650, 36.670326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729851, 25.493965, 36.851284>,  <33.922337, 25.672825, 37.152878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729851, 25.493965, 36.851284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293117, 0.728535, -0.619128,
		0.826148, -0.518937, -0.219511,
		-0.481209, -0.447149, -0.753987,
		33.585487, 25.359821, 36.625088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288399, 25.817459, 36.533203>,  <33.922337, 25.672825, 37.152878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288399, 25.817459, 36.533203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936794, 25.693851, 36.387959>,  <33.725830, 25.619686, 36.300812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936794, 25.693851, 36.387959>,  <34.288399, 25.817459, 36.533203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936794, 25.693851, 36.387959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069835, 0.669896, -0.739163,
		0.471660, -0.675090, -0.567266,
		-0.879011, -0.309019, -0.363108,
		33.673092, 25.601147, 36.279026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370907, 25.735973, 35.845428>,  <34.288399, 25.817459, 36.533203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370907, 25.735973, 35.845428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974136, 25.772976, 35.880142>,  <33.736076, 25.795177, 35.900970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974136, 25.772976, 35.880142>,  <34.370907, 25.735973, 35.845428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974136, 25.772976, 35.880142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012714, 0.608251, -0.793643,
		-0.126203, -0.788336, -0.602162,
		-0.991923, 0.092505, 0.086786,
		33.676559, 25.800728, 35.906178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084343, 25.639299, 35.144913>,  <34.370907, 25.735973, 35.845428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084343, 25.639299, 35.144913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818645, 25.852108, 35.354954>,  <33.659225, 25.979794, 35.480976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818645, 25.852108, 35.354954>,  <34.084343, 25.639299, 35.144913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818645, 25.852108, 35.354954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062296, 0.660618, -0.748132,
		-0.744915, -0.529654, -0.405669,
		-0.664244, 0.532024, 0.525100,
		33.619373, 26.011715, 35.512486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585373, 25.859634, 34.643967>,  <34.084343, 25.639299, 35.144913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585373, 25.859634, 34.643967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504272, 26.088272, 34.962002>,  <33.455612, 26.225454, 35.152824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504272, 26.088272, 34.962002>,  <33.585373, 25.859634, 34.643967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504272, 26.088272, 34.962002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400675, 0.692450, -0.599978,
		-0.893505, -0.440220, 0.088628,
		-0.202752, 0.571594, 0.795092,
		33.443447, 26.259750, 35.200531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825340, 26.049858, 34.576351>,  <33.585373, 25.859634, 34.643967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825340, 26.049858, 34.576351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009911, 26.323677, 34.802090>,  <33.120651, 26.487968, 34.937531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009911, 26.323677, 34.802090>,  <32.825340, 26.049858, 34.576351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009911, 26.323677, 34.802090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384060, 0.727542, -0.568490,
		-0.799741, 0.045574, 0.598613,
		0.461424, 0.684548, 0.564342,
		33.148338, 26.529041, 34.971394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321854, 26.564981, 34.792328>,  <32.825340, 26.049858, 34.576351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321854, 26.564981, 34.792328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673393, 26.746822, 34.850243>,  <32.884315, 26.855927, 34.884991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673393, 26.746822, 34.850243>,  <32.321854, 26.564981, 34.792328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673393, 26.746822, 34.850243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365026, 0.836101, -0.409501,
		-0.307212, 0.307040, 0.900748,
		0.878849, 0.454600, 0.144783,
		32.937050, 26.883202, 34.893677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108730, 27.184557, 35.024178>,  <32.321854, 26.564981, 34.792328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108730, 27.184557, 35.024178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482147, 27.212574, 34.883553>,  <32.706196, 27.229383, 34.799179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482147, 27.212574, 34.883553>,  <32.108730, 27.184557, 35.024178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482147, 27.212574, 34.883553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217151, 0.890799, -0.399153,
		0.285213, 0.448967, 0.846807,
		0.933541, 0.070041, -0.351561,
		32.762211, 27.233587, 34.778084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205456, 27.822199, 35.144863>,  <32.108730, 27.184557, 35.024178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205456, 27.822199, 35.144863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503101, 27.737785, 34.891327>,  <32.681690, 27.687138, 34.739204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503101, 27.737785, 34.891327>,  <32.205456, 27.822199, 35.144863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503101, 27.737785, 34.891327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170639, 0.857281, -0.485748,
		0.645890, 0.469611, 0.601906,
		0.744116, -0.211032, -0.633843,
		32.726337, 27.674477, 34.701176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802330, 28.467878, 35.147495>,  <32.205456, 27.822199, 35.144863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802330, 28.467878, 35.147495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821007, 28.260536, 34.805939>,  <32.832214, 28.136131, 34.601006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821007, 28.260536, 34.805939>,  <32.802330, 28.467878, 35.147495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821007, 28.260536, 34.805939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158189, 0.847871, -0.506055,
		0.986304, -0.111446, 0.121588,
		0.046693, -0.518357, -0.853888,
		32.835014, 28.105028, 34.549770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180611, 28.898369, 34.788391>,  <32.802330, 28.467878, 35.147495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180611, 28.898369, 34.788391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054211, 28.637184, 34.513065>,  <32.978371, 28.480473, 34.347870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054211, 28.637184, 34.513065>,  <33.180611, 28.898369, 34.788391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054211, 28.637184, 34.513065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215510, 0.657127, -0.722316,
		0.923957, -0.376594, -0.066933,
		-0.316003, -0.652964, -0.688317,
		32.959408, 28.441296, 34.306572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700325, 28.903252, 34.286495>,  <33.180611, 28.898369, 34.788391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700325, 28.903252, 34.286495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360474, 28.771893, 34.121429>,  <33.156563, 28.693077, 34.022388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360474, 28.771893, 34.121429>,  <33.700325, 28.903252, 34.286495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360474, 28.771893, 34.121429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138283, 0.616379, -0.775213,
		0.508935, -0.715705, -0.478279,
		-0.849625, -0.328395, -0.412666,
		33.105587, 28.673374, 33.997631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866524, 28.750837, 33.611786>,  <33.700325, 28.903252, 34.286495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866524, 28.750837, 33.611786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474743, 28.827652, 33.636444>,  <33.239674, 28.873741, 33.651237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474743, 28.827652, 33.636444>,  <33.866524, 28.750837, 33.611786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474743, 28.827652, 33.636444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068798, 0.605427, -0.792922,
		-0.189593, -0.772386, -0.606197,
		-0.979450, 0.192037, 0.061646,
		33.180908, 28.885263, 33.654938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661194, 28.605980, 32.947563>,  <33.866524, 28.750837, 33.611786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661194, 28.605980, 32.947563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360764, 28.814430, 33.109703>,  <33.180504, 28.939499, 33.206989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360764, 28.814430, 33.109703>,  <33.661194, 28.605980, 32.947563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360764, 28.814430, 33.109703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202587, 0.402440, -0.892749,
		-0.628363, -0.752643, -0.196691,
		-0.751078, 0.521124, 0.405354,
		33.135441, 28.970768, 33.231308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114258, 28.563591, 32.489681>,  <33.661194, 28.605980, 32.947563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114258, 28.563591, 32.489681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100681, 28.898102, 32.708584>,  <33.092533, 29.098808, 32.839924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100681, 28.898102, 32.708584>,  <33.114258, 28.563591, 32.489681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100681, 28.898102, 32.708584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016438, 0.547029, -0.836952,
		-0.999288, -0.037407, -0.004822,
		-0.033946, 0.836277, 0.547255,
		33.090496, 29.148985, 32.872761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789951, 28.972624, 32.105873>,  <33.114258, 28.563591, 32.489681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789951, 28.972624, 32.105873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963066, 29.227036, 32.361423>,  <33.066936, 29.379683, 32.514755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963066, 29.227036, 32.361423>,  <32.789951, 28.972624, 32.105873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963066, 29.227036, 32.361423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021396, 0.715731, -0.698049,
		-0.901242, 0.288438, 0.323368,
		0.432788, 0.636029, 0.638875,
		33.092903, 29.417845, 32.553085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451855, 29.609962, 31.944473>,  <32.789951, 28.972624, 32.105873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451855, 29.609962, 31.944473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793449, 29.710129, 32.126900>,  <32.998405, 29.770229, 32.236355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793449, 29.710129, 32.126900>,  <32.451855, 29.609962, 31.944473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793449, 29.710129, 32.126900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145178, 0.727051, -0.671059,
		-0.499628, 0.639286, 0.584538,
		0.853988, 0.250418, 0.456065,
		33.049644, 29.785254, 32.263718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405865, 30.317841, 32.084042>,  <32.451855, 29.609962, 31.944473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405865, 30.317841, 32.084042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795937, 30.233398, 32.110767>,  <33.029980, 30.182734, 32.126804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795937, 30.233398, 32.110767>,  <32.405865, 30.317841, 32.084042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795937, 30.233398, 32.110767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217026, 0.851392, -0.477527,
		0.043922, 0.480174, 0.876073,
		0.975177, -0.211105, 0.066815,
		33.088490, 30.170067, 32.130814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729465, 30.973787, 32.091244>,  <32.405865, 30.317841, 32.084042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729465, 30.973787, 32.091244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026360, 30.722187, 31.998768>,  <33.204494, 30.571228, 31.943283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026360, 30.722187, 31.998768>,  <32.729465, 30.973787, 32.091244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026360, 30.722187, 31.998768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386666, 0.683738, -0.618864,
		0.547337, 0.369950, 0.750706,
		0.742235, -0.628999, -0.231188,
		33.249031, 30.533487, 31.929411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385899, 31.376839, 32.138237>,  <32.729465, 30.973787, 32.091244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385899, 31.376839, 32.138237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420456, 31.071774, 31.881840>,  <33.441193, 30.888735, 31.728001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420456, 31.071774, 31.881840>,  <33.385899, 31.376839, 32.138237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420456, 31.071774, 31.881840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361249, 0.623597, -0.693272,
		0.928459, -0.171664, 0.329388,
		0.086395, -0.762665, -0.640998,
		33.446373, 30.842974, 31.689541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896202, 31.535604, 31.683111>,  <33.385899, 31.376839, 32.138237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896202, 31.535604, 31.683111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799187, 31.211357, 31.469917>,  <33.740978, 31.016808, 31.342001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799187, 31.211357, 31.469917>,  <33.896202, 31.535604, 31.683111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799187, 31.211357, 31.469917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382355, 0.425049, -0.820450,
		0.891617, -0.402778, 0.206854,
		-0.242536, -0.810619, -0.532985,
		33.726425, 30.968172, 31.310022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502064, 31.393553, 31.271528>,  <33.896202, 31.535604, 31.683111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502064, 31.393553, 31.271528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200893, 31.185913, 31.109715>,  <34.020191, 31.061329, 31.012627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200893, 31.185913, 31.109715>,  <34.502064, 31.393553, 31.271528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200893, 31.185913, 31.109715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206831, 0.396897, -0.894256,
		0.624765, -0.756974, -0.191466,
		-0.752921, -0.519098, -0.404533,
		33.975018, 31.030184, 30.988354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811787, 30.877201, 30.773886>,  <34.502064, 31.393553, 31.271528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811787, 30.877201, 30.773886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433327, 30.975658, 30.689774>,  <34.206253, 31.034733, 30.639305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433327, 30.975658, 30.689774>,  <34.811787, 30.877201, 30.773886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433327, 30.975658, 30.689774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288114, 0.344006, -0.893672,
		-0.147633, -0.906131, -0.396398,
		-0.946147, 0.246143, -0.210282,
		34.149483, 31.049501, 30.626688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625031, 30.649811, 30.082378>,  <34.811787, 30.877201, 30.773886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625031, 30.649811, 30.082378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329773, 30.911022, 30.150146>,  <34.152618, 31.067749, 30.190807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329773, 30.911022, 30.150146>,  <34.625031, 30.649811, 30.082378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329773, 30.911022, 30.150146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130131, 0.384226, -0.914022,
		-0.661978, -0.652629, -0.368592,
		-0.738140, 0.653028, 0.169421,
		34.108330, 31.106930, 30.200974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146183, 30.642603, 29.503435>,  <34.625031, 30.649811, 30.082378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146183, 30.642603, 29.503435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113689, 31.000320, 29.679451>,  <34.094193, 31.214951, 29.785061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113689, 31.000320, 29.679451>,  <34.146183, 30.642603, 29.503435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113689, 31.000320, 29.679451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221817, 0.446649, -0.866777,
		-0.971698, 0.027194, -0.234654,
		-0.081237, 0.894296, 0.440040,
		34.089317, 31.268610, 29.811462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782257, 31.093826, 29.078218>,  <34.146183, 30.642603, 29.503435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782257, 31.093826, 29.078218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948475, 31.357792, 29.328606>,  <34.048206, 31.516171, 29.478838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948475, 31.357792, 29.328606>,  <33.782257, 31.093826, 29.078218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948475, 31.357792, 29.328606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291337, 0.555376, -0.778897,
		-0.861653, 0.506034, 0.038526,
		0.415545, 0.659915, 0.625968,
		34.073139, 31.555767, 29.516396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606083, 31.699900, 28.828180>,  <33.782257, 31.093826, 29.078218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606083, 31.699900, 28.828180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915646, 31.811359, 29.055660>,  <34.101383, 31.878235, 29.192148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915646, 31.811359, 29.055660>,  <33.606083, 31.699900, 28.828180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915646, 31.811359, 29.055660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308060, 0.618955, -0.722492,
		-0.553320, 0.734337, 0.393175,
		0.773910, 0.278648, 0.568700,
		34.147820, 31.894955, 29.226271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525841, 32.410042, 28.967701>,  <33.606083, 31.699900, 28.828180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525841, 32.410042, 28.967701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911163, 32.311172, 29.009548>,  <34.142357, 32.251850, 29.034657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911163, 32.311172, 29.009548>,  <33.525841, 32.410042, 28.967701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911163, 32.311172, 29.009548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259287, 0.756288, -0.600666,
		0.069345, 0.605752, 0.792626,
		0.963308, -0.247171, 0.104618,
		34.200157, 32.237022, 29.040934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844982, 33.055061, 29.039167>,  <33.525841, 32.410042, 28.967701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844982, 33.055061, 29.039167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147217, 32.806835, 28.955265>,  <34.328556, 32.657902, 28.904924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147217, 32.806835, 28.955265>,  <33.844982, 33.055061, 29.039167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147217, 32.806835, 28.955265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443767, 0.720454, -0.532933,
		0.481836, 0.309593, 0.819748,
		0.755582, -0.620564, -0.209754,
		34.373890, 32.620667, 28.892340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337685, 33.470699, 29.138544>,  <33.844982, 33.055061, 29.039167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337685, 33.470699, 29.138544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473175, 33.171593, 28.910118>,  <34.554470, 32.992130, 28.773062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473175, 33.171593, 28.910118>,  <34.337685, 33.470699, 29.138544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473175, 33.171593, 28.910118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413147, 0.663509, -0.623751,
		0.845325, -0.024653, 0.533684,
		0.338727, -0.747762, -0.571066,
		34.574795, 32.947266, 28.738798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888214, 33.722370, 28.945419>,  <34.337685, 33.470699, 29.138544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888214, 33.722370, 28.945419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819885, 33.436642, 28.673962>,  <34.778889, 33.265205, 28.511087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819885, 33.436642, 28.673962>,  <34.888214, 33.722370, 28.945419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819885, 33.436642, 28.673962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378667, 0.588278, -0.714521,
		0.909632, -0.379037, 0.170000,
		-0.170822, -0.714325, -0.678645,
		34.768639, 33.222343, 28.470367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452511, 33.689697, 28.549843>,  <34.888214, 33.722370, 28.945419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452511, 33.689697, 28.549843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178951, 33.518246, 28.313690>,  <35.014816, 33.415375, 28.171999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178951, 33.518246, 28.313690>,  <35.452511, 33.689697, 28.549843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178951, 33.518246, 28.313690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305544, 0.566558, -0.765281,
		0.662512, -0.703764, -0.256503,
		-0.683901, -0.428635, -0.590382,
		34.973782, 33.389656, 28.136576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872879, 33.383667, 28.005274>,  <35.452511, 33.689697, 28.549843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872879, 33.383667, 28.005274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496590, 33.385445, 27.869617>,  <35.270817, 33.386509, 27.788223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496590, 33.385445, 27.869617>,  <35.872879, 33.383667, 28.005274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496590, 33.385445, 27.869617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320306, 0.340474, -0.884014,
		0.111542, -0.940244, -0.321715,
		-0.940725, 0.004443, -0.339143,
		35.214371, 33.386776, 27.767874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831928, 33.090897, 27.319454>,  <35.872879, 33.383667, 28.005274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831928, 33.090897, 27.319454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485409, 33.290634, 27.324703>,  <35.277496, 33.410477, 27.327852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485409, 33.290634, 27.324703>,  <35.831928, 33.090897, 27.319454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485409, 33.290634, 27.324703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153319, 0.290810, -0.944417,
		-0.475410, -0.816138, -0.328489,
		-0.866302, 0.499349, 0.013124,
		35.225517, 33.440437, 27.328640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477879, 32.978573, 26.644350>,  <35.831928, 33.090897, 27.319454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477879, 32.978573, 26.644350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343369, 33.324352, 26.793831>,  <35.262661, 33.531818, 26.883518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343369, 33.324352, 26.793831>,  <35.477879, 32.978573, 26.644350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343369, 33.324352, 26.793831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002790, 0.395893, -0.918292,
		-0.941758, -0.309845, -0.130719,
		-0.336279, 0.864445, 0.373700,
		35.242485, 33.583687, 26.905941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251534, 33.289013, 26.087889>,  <35.477879, 32.978573, 26.644350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251534, 33.289013, 26.087889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258419, 33.590508, 26.350670>,  <35.262550, 33.771404, 26.508339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258419, 33.590508, 26.350670>,  <35.251534, 33.289013, 26.087889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258419, 33.590508, 26.350670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046658, 0.655728, -0.753555,
		-0.998763, 0.043626, -0.023878,
		0.017217, 0.753736, 0.656952,
		35.263584, 33.816628, 26.547756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723206, 33.652042, 25.847559>,  <35.251534, 33.289013, 26.087889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723206, 33.652042, 25.847559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924812, 33.905201, 26.082642>,  <35.045776, 34.057098, 26.223692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924812, 33.905201, 26.082642>,  <34.723206, 33.652042, 25.847559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924812, 33.905201, 26.082642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005493, 0.678097, -0.734952,
		-0.863674, 0.373660, 0.338299,
		0.504021, 0.632900, 0.587707,
		35.076019, 34.095070, 26.258953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255318, 34.207100, 25.891682>,  <34.723206, 33.652042, 25.847559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255318, 34.207100, 25.891682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642323, 34.288200, 25.952099>,  <34.874523, 34.336861, 25.988350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642323, 34.288200, 25.952099>,  <34.255318, 34.207100, 25.891682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642323, 34.288200, 25.952099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023640, 0.522240, -0.852471,
		-0.251724, 0.828345, 0.500479,
		0.967510, 0.202756, 0.151043,
		34.932575, 34.349026, 25.997412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171211, 34.849728, 25.722134>,  <34.255318, 34.207100, 25.891682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171211, 34.849728, 25.722134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560791, 34.759979, 25.708969>,  <34.794537, 34.706131, 25.701071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560791, 34.759979, 25.708969>,  <34.171211, 34.849728, 25.722134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560791, 34.759979, 25.708969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075546, 0.457862, -0.885808,
		0.213820, 0.860244, 0.462884,
		0.973948, -0.224372, -0.032912,
		34.852974, 34.692669, 25.699095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466663, 35.253128, 25.705236>,  <34.171211, 34.849728, 25.722134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466663, 35.253128, 25.705236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137226, 35.144939, 25.505821>,  <32.939564, 35.080025, 25.386171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137226, 35.144939, 25.505821>,  <33.466663, 35.253128, 25.705236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137226, 35.144939, 25.505821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430504, -0.274165, 0.859942,
		-0.369272, 0.922864, 0.109361,
		-0.823592, -0.270472, -0.498538,
		32.890148, 35.063797, 25.356260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881088, 35.643997, 25.946531>,  <33.466663, 35.253128, 25.705236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881088, 35.643997, 25.946531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749699, 35.298229, 25.794277>,  <32.670864, 35.090767, 25.702925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749699, 35.298229, 25.794277>,  <32.881088, 35.643997, 25.946531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749699, 35.298229, 25.794277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569148, -0.140463, 0.810148,
		-0.753772, 0.482753, -0.445843,
		-0.328477, -0.864419, -0.380635,
		32.651154, 35.038902, 25.680086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298050, 35.600243, 26.230879>,  <32.881088, 35.643997, 25.946531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298050, 35.600243, 26.230879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333309, 35.221519, 26.107082>,  <32.354465, 34.994286, 26.032804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333309, 35.221519, 26.107082>,  <32.298050, 35.600243, 26.230879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333309, 35.221519, 26.107082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617592, -0.295723, 0.728785,
		-0.781543, 0.126894, -0.610810,
		0.088152, -0.946808, -0.309489,
		32.359756, 34.937477, 26.014236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628275, 35.363258, 26.195881>,  <32.298050, 35.600243, 26.230879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628275, 35.363258, 26.195881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825766, 35.017849, 26.237000>,  <31.944260, 34.810604, 26.261671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825766, 35.017849, 26.237000>,  <31.628275, 35.363258, 26.195881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825766, 35.017849, 26.237000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667032, -0.300209, 0.681867,
		-0.557946, -0.405224, -0.724217,
		0.493726, -0.863520, 0.102797,
		31.973883, 34.758793, 26.267839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153967, 34.828796, 26.158381>,  <31.628275, 35.363258, 26.195881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153967, 34.828796, 26.158381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464952, 34.677849, 26.359634>,  <31.651543, 34.587280, 26.480387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464952, 34.677849, 26.359634>,  <31.153967, 34.828796, 26.158381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464952, 34.677849, 26.359634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623466, -0.357228, 0.695469,
		-0.082713, -0.854390, -0.513007,
		0.777463, -0.377367, 0.503136,
		31.698191, 34.564640, 26.510574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020073, 34.172535, 26.270321>,  <31.153967, 34.828796, 26.158381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020073, 34.172535, 26.270321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309050, 34.240692, 26.538364>,  <31.482435, 34.281586, 26.699190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309050, 34.240692, 26.538364>,  <31.020073, 34.172535, 26.270321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309050, 34.240692, 26.538364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576319, -0.387073, 0.719744,
		0.382019, -0.906169, -0.181438,
		0.722439, 0.170390, 0.670111,
		31.525782, 34.291809, 26.739397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279993, 33.560287, 26.591553>,  <31.020073, 34.172535, 26.270321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279993, 33.560287, 26.591553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376440, 33.841835, 26.858814>,  <31.434307, 34.010765, 27.019171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376440, 33.841835, 26.858814>,  <31.279993, 33.560287, 26.591553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376440, 33.841835, 26.858814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496420, -0.502133, 0.708118,
		0.833925, -0.502423, 0.228343,
		0.241117, 0.703871, 0.668154,
		31.448774, 34.052998, 27.059259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438345, 33.193356, 27.192421>,  <31.279993, 33.560287, 26.591553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438345, 33.193356, 27.192421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390932, 33.558937, 27.347672>,  <31.362484, 33.778286, 27.440821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390932, 33.558937, 27.347672>,  <31.438345, 33.193356, 27.192421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390932, 33.558937, 27.347672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220249, -0.405343, 0.887236,
		0.968215, 0.019681, 0.249342,
		-0.118531, 0.913953, 0.388124,
		31.355373, 33.833122, 27.464109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754215, 33.188038, 27.738281>,  <31.438345, 33.193356, 27.192421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754215, 33.188038, 27.738281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504517, 33.496445, 27.788631>,  <31.354698, 33.681488, 27.818842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504517, 33.496445, 27.788631>,  <31.754215, 33.188038, 27.738281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504517, 33.496445, 27.788631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283872, -0.373977, 0.882926,
		0.727829, 0.515430, 0.452324,
		-0.624245, 0.771021, 0.125875,
		31.317244, 33.727753, 27.826393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847837, 33.221817, 28.386509>,  <31.754215, 33.188038, 27.738281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847837, 33.221817, 28.386509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508488, 33.423981, 28.323486>,  <31.304878, 33.545277, 28.285673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508488, 33.423981, 28.323486>,  <31.847837, 33.221817, 28.386509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508488, 33.423981, 28.323486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311467, -0.235859, 0.920521,
		0.428076, 0.830021, 0.357514,
		-0.848374, 0.505407, -0.157558,
		31.253975, 33.575603, 28.276218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751841, 33.504036, 29.006077>,  <31.847837, 33.221817, 28.386509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751841, 33.504036, 29.006077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406260, 33.536205, 28.807232>,  <31.198912, 33.555508, 28.687925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406260, 33.536205, 28.807232>,  <31.751841, 33.504036, 29.006077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406260, 33.536205, 28.807232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503484, -0.156749, 0.849667,
		-0.009588, 0.984359, 0.175916,
		-0.863952, 0.080424, -0.497111,
		31.147074, 33.560333, 28.658098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342661, 33.889641, 29.484262>,  <31.751841, 33.504036, 29.006077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342661, 33.889641, 29.484262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129244, 33.680737, 29.218159>,  <31.001194, 33.555393, 29.058496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129244, 33.680737, 29.218159>,  <31.342661, 33.889641, 29.484262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129244, 33.680737, 29.218159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518226, -0.419756, 0.745149,
		-0.668410, 0.742326, -0.046691,
		-0.533544, -0.522262, -0.665262,
		30.969181, 33.524059, 29.018579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651094, 33.962349, 29.711702>,  <31.342661, 33.889641, 29.484262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651094, 33.962349, 29.711702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643400, 33.637768, 29.478062>,  <30.638783, 33.443020, 29.337877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643400, 33.637768, 29.478062>,  <30.651094, 33.962349, 29.711702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643400, 33.637768, 29.478062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486558, -0.502767, 0.714484,
		-0.873437, 0.297944, -0.385146,
		-0.019238, -0.811452, -0.584102,
		30.637629, 33.394333, 29.302832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918585, 33.677891, 29.712637>,  <30.651094, 33.962349, 29.711702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918585, 33.677891, 29.712637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172014, 33.382812, 29.619350>,  <30.324072, 33.205765, 29.563379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172014, 33.382812, 29.619350>,  <29.918585, 33.677891, 29.712637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172014, 33.382812, 29.619350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436442, -0.589674, 0.679561,
		-0.638832, -0.328765, -0.695562,
		0.633570, -0.737698, -0.233216,
		30.362085, 33.161503, 29.549385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527838, 33.034527, 29.778854>,  <29.918585, 33.677891, 29.712637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527838, 33.034527, 29.778854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903500, 32.897163, 29.781963>,  <30.128897, 32.814747, 29.783829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903500, 32.897163, 29.781963>,  <29.527838, 33.034527, 29.778854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903500, 32.897163, 29.781963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248279, -0.663013, 0.706237,
		-0.237373, -0.665196, -0.707933,
		0.939154, -0.343407, 0.007772,
		30.185246, 32.794140, 29.784294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486631, 32.281265, 29.800680>,  <29.527838, 33.034527, 29.778854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486631, 32.281265, 29.800680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850571, 32.380455, 29.933758>,  <30.068933, 32.439968, 30.013605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850571, 32.380455, 29.933758>,  <29.486631, 32.281265, 29.800680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850571, 32.380455, 29.933758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111787, -0.625658, 0.772046,
		0.399601, -0.739635, -0.541533,
		0.909848, 0.247974, 0.332695,
		30.123526, 32.454845, 30.033566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905508, 31.647366, 29.844248>,  <29.486631, 32.281265, 29.800680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905508, 31.647366, 29.844248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065981, 31.908386, 30.101379>,  <30.162266, 32.064999, 30.255657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065981, 31.908386, 30.101379>,  <29.905508, 31.647366, 29.844248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065981, 31.908386, 30.101379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066812, -0.720755, 0.689963,
		0.913558, -0.233854, -0.332753,
		0.401184, 0.652553, 0.642827,
		30.186337, 32.104153, 30.294228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376970, 31.222193, 30.315266>,  <29.905508, 31.647366, 29.844248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376970, 31.222193, 30.315266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377214, 31.573318, 30.506866>,  <30.377361, 31.783993, 30.621828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377214, 31.573318, 30.506866>,  <30.376970, 31.222193, 30.315266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377214, 31.573318, 30.506866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186499, -0.470700, 0.862357,
		0.982455, 0.088809, -0.163998,
		0.000608, 0.877813, 0.479004,
		30.377398, 31.836662, 30.650568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998634, 31.160961, 30.617987>,  <30.376970, 31.222193, 30.315266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998634, 31.160961, 30.617987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775887, 31.413128, 30.834309>,  <30.642239, 31.564428, 30.964102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775887, 31.413128, 30.834309>,  <30.998634, 31.160961, 30.617987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775887, 31.413128, 30.834309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240133, -0.501104, 0.831403,
		0.795131, 0.592847, 0.127665,
		-0.556868, 0.630418, 0.540806,
		30.608826, 31.602253, 30.996550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406721, 31.432604, 31.278986>,  <30.998634, 31.160961, 30.617987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406721, 31.432604, 31.278986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019512, 31.473850, 31.370464>,  <30.787188, 31.498598, 31.425352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019512, 31.473850, 31.370464>,  <31.406721, 31.432604, 31.278986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019512, 31.473850, 31.370464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139034, -0.538291, 0.831211,
		0.208818, 0.836427, 0.506740,
		-0.968021, 0.103117, 0.228697,
		30.729105, 31.504786, 31.439074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462894, 31.456175, 32.016987>,  <31.406721, 31.432604, 31.278986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462894, 31.456175, 32.016987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078005, 31.391659, 31.929249>,  <30.847071, 31.352949, 31.876606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078005, 31.391659, 31.929249>,  <31.462894, 31.456175, 32.016987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078005, 31.391659, 31.929249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074222, -0.619719, 0.781306,
		-0.261948, 0.768071, 0.584337,
		-0.962224, -0.161291, -0.219342,
		30.789337, 31.343271, 31.863445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167454, 31.444370, 32.626255>,  <31.462894, 31.456175, 32.016987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167454, 31.444370, 32.626255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904358, 31.251904, 32.394440>,  <30.746500, 31.136423, 32.255352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904358, 31.251904, 32.394440>,  <31.167454, 31.444370, 32.626255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904358, 31.251904, 32.394440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111642, -0.698610, 0.706739,
		-0.744928, 0.529549, 0.405784,
		-0.657738, -0.481167, -0.579534,
		30.707037, 31.107553, 32.220581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457926, 31.229721, 33.031197>,  <31.167454, 31.444370, 32.626255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457926, 31.229721, 33.031197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471825, 30.973148, 32.724640>,  <30.480164, 30.819204, 32.540707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471825, 30.973148, 32.724640>,  <30.457926, 31.229721, 33.031197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471825, 30.973148, 32.724640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185145, -0.757713, 0.625774,
		-0.982097, 0.120149, -0.145087,
		0.034748, -0.641432, -0.766392,
		30.482248, 30.780718, 32.494720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050955, 30.727259, 33.229717>,  <30.457926, 31.229721, 33.031197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050955, 30.727259, 33.229717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272284, 30.530170, 32.961075>,  <30.405081, 30.411917, 32.799889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272284, 30.530170, 32.961075>,  <30.050955, 30.727259, 33.229717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272284, 30.530170, 32.961075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118602, -0.844673, 0.521977,
		-0.824476, -0.209171, -0.525819,
		0.553328, -0.492721, -0.671605,
		30.438280, 30.382353, 32.759594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630976, 30.206696, 33.102074>,  <30.050955, 30.727259, 33.229717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630976, 30.206696, 33.102074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995466, 30.087849, 32.987957>,  <30.214161, 30.016541, 32.919487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995466, 30.087849, 32.987957>,  <29.630976, 30.206696, 33.102074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995466, 30.087849, 32.987957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120207, -0.854271, 0.505739,
		-0.393978, -0.426548, -0.814149,
		0.911225, -0.297117, -0.285290,
		30.268833, 29.998714, 32.902370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508484, 29.575539, 32.947952>,  <29.630976, 30.206696, 33.102074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508484, 29.575539, 32.947952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907301, 29.585369, 32.977089>,  <30.146591, 29.591267, 32.994572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907301, 29.585369, 32.977089>,  <29.508484, 29.575539, 32.947952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907301, 29.585369, 32.977089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002354, -0.937320, 0.348461,
		0.076841, -0.347601, -0.934489,
		0.997040, 0.024577, 0.072843,
		30.206413, 29.592743, 32.998943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687012, 28.966709, 32.588329>,  <29.508484, 29.575539, 32.947952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687012, 28.966709, 32.588329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998690, 29.065933, 32.818573>,  <30.185696, 29.125467, 32.956718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998690, 29.065933, 32.818573>,  <29.687012, 28.966709, 32.588329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998690, 29.065933, 32.818573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034803, -0.934057, 0.355423,
		0.625815, -0.256910, -0.736446,
		0.779194, 0.248060, 0.575606,
		30.232449, 29.140350, 32.991257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174900, 28.397692, 32.570309>,  <29.687012, 28.966709, 32.588329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174900, 28.397692, 32.570309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266853, 28.589645, 32.908981>,  <30.322025, 28.704819, 33.112183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266853, 28.589645, 32.908981>,  <30.174900, 28.397692, 32.570309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266853, 28.589645, 32.908981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041210, -0.864398, 0.501117,
		0.972346, -0.150090, -0.178933,
		0.229882, 0.479885, 0.846678,
		30.335817, 28.733610, 33.162987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659103, 27.982187, 32.867062>,  <30.174900, 28.397692, 32.570309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659103, 27.982187, 32.867062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533062, 28.205921, 33.173748>,  <30.457438, 28.340162, 33.357761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533062, 28.205921, 33.173748>,  <30.659103, 27.982187, 32.867062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533062, 28.205921, 33.173748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041687, -0.798934, 0.599972,
		0.948142, 0.221014, 0.228428,
		-0.315101, 0.559336, 0.766716,
		30.438532, 28.373722, 33.403763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113564, 27.954184, 33.537601>,  <30.659103, 27.982187, 32.867062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113564, 27.954184, 33.537601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733625, 28.040726, 33.627922>,  <30.505663, 28.092651, 33.682114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733625, 28.040726, 33.627922>,  <31.113564, 27.954184, 33.537601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733625, 28.040726, 33.627922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083022, -0.870597, 0.484942,
		0.301501, 0.441872, 0.844894,
		-0.949844, 0.216356, 0.225801,
		30.448671, 28.105633, 33.695663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052387, 27.737030, 34.204353>,  <31.113564, 27.954184, 33.537601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052387, 27.737030, 34.204353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675276, 27.788158, 34.081177>,  <30.449009, 27.818836, 34.007271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675276, 27.788158, 34.081177>,  <31.052387, 27.737030, 34.204353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675276, 27.788158, 34.081177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268980, -0.837342, 0.475928,
		-0.197018, 0.531526, 0.823811,
		-0.942780, 0.127822, -0.307941,
		30.392443, 27.826506, 33.988796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650150, 27.622622, 34.847775>,  <31.052387, 27.737030, 34.204353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650150, 27.622622, 34.847775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399450, 27.594341, 34.537373>,  <30.249031, 27.577374, 34.351131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399450, 27.594341, 34.537373>,  <30.650150, 27.622622, 34.847775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399450, 27.594341, 34.537373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253209, -0.923351, 0.288632,
		-0.736933, 0.377392, 0.560807,
		-0.626750, -0.070701, -0.776007,
		30.211426, 27.573132, 34.304569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938887, 27.476702, 35.103504>,  <30.650150, 27.622622, 34.847775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938887, 27.476702, 35.103504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970537, 27.347736, 34.726189>,  <29.989529, 27.270357, 34.499802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970537, 27.347736, 34.726189>,  <29.938887, 27.476702, 35.103504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970537, 27.347736, 34.726189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114801, -0.942905, 0.312653,
		-0.990232, 0.083550, -0.111624,
		0.079129, -0.322414, -0.943286,
		29.994276, 27.251013, 34.443203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398163, 27.135511, 35.010616>,  <29.938887, 27.476702, 35.103504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398163, 27.135511, 35.010616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644667, 26.956333, 34.751518>,  <29.792568, 26.848827, 34.596062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644667, 26.956333, 34.751518>,  <29.398163, 27.135511, 35.010616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644667, 26.956333, 34.751518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234276, -0.889522, 0.392258,
		-0.751891, -0.089981, -0.653117,
		0.616258, -0.447945, -0.647744,
		29.829544, 26.821949, 34.557194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025537, 26.563135, 34.774460>,  <29.398163, 27.135511, 35.010616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025537, 26.563135, 34.774460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408682, 26.481678, 34.693436>,  <29.638569, 26.432804, 34.644821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408682, 26.481678, 34.693436>,  <29.025537, 26.563135, 34.774460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408682, 26.481678, 34.693436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129927, -0.936136, 0.326753,
		-0.256164, -0.286666, -0.923148,
		0.957862, -0.203644, -0.202559,
		29.696041, 26.420586, 34.632668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943003, 25.896782, 34.606808>,  <29.025537, 26.563135, 34.774460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943003, 25.896782, 34.606808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340416, 25.930332, 34.637413>,  <29.578865, 25.950462, 34.655777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340416, 25.930332, 34.637413>,  <28.943003, 25.896782, 34.606808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340416, 25.930332, 34.637413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041873, -0.897130, 0.439777,
		0.105528, -0.433730, -0.894842,
		0.993534, 0.083878, 0.076511,
		29.638475, 25.955496, 34.660366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243631, 25.274576, 34.314106>,  <28.943003, 25.896782, 34.606808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243631, 25.274576, 34.314106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488955, 25.443798, 34.580902>,  <29.636148, 25.545332, 34.740978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488955, 25.443798, 34.580902>,  <29.243631, 25.274576, 34.314106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488955, 25.443798, 34.580902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085818, -0.875153, 0.476175,
		0.785167, -0.234803, -0.573044,
		0.613309, 0.423055, 0.666991,
		29.672947, 25.570715, 34.780998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761854, 24.780830, 34.546387>,  <29.243631, 25.274576, 34.314106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761854, 24.780830, 34.546387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805481, 25.026375, 34.859123>,  <29.831657, 25.173700, 35.046764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805481, 25.026375, 34.859123>,  <29.761854, 24.780830, 34.546387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805481, 25.026375, 34.859123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155720, -0.787377, 0.596481,
		0.981762, 0.056693, -0.181466,
		0.109066, 0.613860, 0.781845,
		29.838202, 25.210533, 35.093678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929686, 24.048555, 34.335567>,  <29.761854, 24.780830, 34.546387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929686, 24.048555, 34.335567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772915, 23.884624, 34.006100>,  <29.678852, 23.786266, 33.808418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772915, 23.884624, 34.006100>,  <29.929686, 24.048555, 34.335567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772915, 23.884624, 34.006100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379139, 0.743788, -0.550484,
		0.838241, -0.528035, -0.136128,
		-0.391925, -0.409827, -0.823673,
		29.655336, 23.761677, 33.758999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472458, 24.130274, 33.822483>,  <29.929686, 24.048555, 34.335567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472458, 24.130274, 33.822483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152992, 24.019005, 33.609032>,  <29.961313, 23.952244, 33.480961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152992, 24.019005, 33.609032>,  <30.472458, 24.130274, 33.822483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152992, 24.019005, 33.609032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165524, 0.750997, -0.639222,
		0.578565, -0.598851, -0.553750,
		-0.798663, -0.278173, -0.533625,
		29.913393, 23.935553, 33.448944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758677, 24.230711, 33.175182>,  <30.472458, 24.130274, 33.822483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758677, 24.230711, 33.175182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361843, 24.271732, 33.146194>,  <30.123743, 24.296345, 33.128803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361843, 24.271732, 33.146194>,  <30.758677, 24.230711, 33.175182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361843, 24.271732, 33.146194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123578, 0.694957, -0.708352,
		-0.022282, -0.711701, -0.702129,
		-0.992085, 0.102551, -0.072466,
		30.064219, 24.302498, 33.124454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549681, 24.204500, 32.493019>,  <30.758677, 24.230711, 33.175182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549681, 24.204500, 32.493019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229887, 24.399635, 32.633213>,  <30.038010, 24.516716, 32.717327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229887, 24.399635, 32.633213>,  <30.549681, 24.204500, 32.493019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229887, 24.399635, 32.633213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028862, 0.613993, -0.788784,
		-0.599992, -0.620506, -0.504958,
		-0.799486, 0.487838, 0.350481,
		29.990042, 24.545986, 32.738358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166323, 24.343338, 31.880264>,  <30.549681, 24.204500, 32.493019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166323, 24.343338, 31.880264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004539, 24.610931, 32.129704>,  <29.907469, 24.771486, 32.279369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004539, 24.610931, 32.129704>,  <30.166323, 24.343338, 31.880264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004539, 24.610931, 32.129704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107382, 0.711882, -0.694041,
		-0.908230, -0.213748, -0.359763,
		-0.404459, 0.668981, 0.623600,
		29.883202, 24.811626, 32.316784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738253, 24.751055, 31.514112>,  <30.166323, 24.343338, 31.880264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738253, 24.751055, 31.514112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814545, 24.961464, 31.845634>,  <29.860321, 25.087709, 32.044548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814545, 24.961464, 31.845634>,  <29.738253, 24.751055, 31.514112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814545, 24.961464, 31.845634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110916, 0.827352, -0.550624,
		-0.975356, 0.196950, 0.099458,
		0.190732, 0.526023, 0.828807,
		29.871765, 25.119270, 32.094276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389156, 25.280031, 31.299074>,  <29.738253, 24.751055, 31.514112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389156, 25.280031, 31.299074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664417, 25.375126, 31.573280>,  <29.829573, 25.432182, 31.737804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664417, 25.375126, 31.573280>,  <29.389156, 25.280031, 31.299074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664417, 25.375126, 31.573280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296865, 0.769843, -0.564989,
		-0.662057, 0.592303, 0.459192,
		0.688150, 0.237737, 0.685515,
		29.870863, 25.446447, 31.778934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419781, 26.049194, 31.206522>,  <29.389156, 25.280031, 31.299074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419781, 26.049194, 31.206522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742889, 25.999672, 31.437061>,  <29.936754, 25.969959, 31.575384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742889, 25.999672, 31.437061>,  <29.419781, 26.049194, 31.206522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742889, 25.999672, 31.437061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464419, 0.735813, -0.492842,
		-0.363067, 0.665771, 0.651867,
		0.807773, -0.123805, 0.576346,
		29.985222, 25.962530, 31.609964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590813, 26.668066, 31.564980>,  <29.419781, 26.049194, 31.206522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590813, 26.668066, 31.564980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926437, 26.450516, 31.559647>,  <30.127811, 26.319986, 31.556446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926437, 26.450516, 31.559647>,  <29.590813, 26.668066, 31.564980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926437, 26.450516, 31.559647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464640, 0.729137, -0.502463,
		0.282999, 0.415401, 0.864496,
		0.839059, -0.543876, -0.013333,
		30.178156, 26.287354, 31.555647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077251, 27.075981, 31.855852>,  <29.590813, 26.668066, 31.564980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077251, 27.075981, 31.855852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269726, 26.822742, 31.613316>,  <30.385210, 26.670799, 31.467794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269726, 26.822742, 31.613316>,  <30.077251, 27.075981, 31.855852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269726, 26.822742, 31.613316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522985, 0.762429, -0.381036,
		0.703524, -0.133757, 0.697970,
		0.481187, -0.633096, -0.606341,
		30.414082, 26.632814, 31.431414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764160, 27.244787, 31.766487>,  <30.077251, 27.075981, 31.855852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764160, 27.244787, 31.766487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754414, 26.997208, 31.452465>,  <30.748566, 26.848660, 31.264051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754414, 26.997208, 31.452465>,  <30.764160, 27.244787, 31.766487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754414, 26.997208, 31.452465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789375, 0.469948, -0.395014,
		0.613428, -0.629328, 0.477130,
		-0.024367, -0.618947, -0.785055,
		30.747103, 26.811523, 31.216949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467676, 27.198854, 31.540176>,  <30.764160, 27.244787, 31.766487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467676, 27.198854, 31.540176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238384, 27.076992, 31.235916>,  <31.100809, 27.003876, 31.053360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238384, 27.076992, 31.235916>,  <31.467676, 27.198854, 31.540176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238384, 27.076992, 31.235916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379487, 0.724049, -0.575971,
		0.726197, -0.618835, -0.299468,
		-0.573261, -0.304624, -0.760642,
		31.066416, 26.985596, 31.007721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866024, 27.354147, 30.926729>,  <31.467676, 27.198854, 31.540176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866024, 27.354147, 30.926729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490845, 27.303612, 30.797550>,  <31.265738, 27.273291, 30.720043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490845, 27.303612, 30.797550>,  <31.866024, 27.354147, 30.926729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490845, 27.303612, 30.797550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110447, 0.773950, -0.623541,
		0.328723, -0.620516, -0.711970,
		-0.937946, -0.126337, -0.322949,
		31.209461, 27.265711, 30.700665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872074, 27.167023, 30.180481>,  <31.866024, 27.354147, 30.926729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872074, 27.167023, 30.180481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522644, 27.342644, 30.264484>,  <31.312986, 27.448015, 30.314886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522644, 27.342644, 30.264484>,  <31.872074, 27.167023, 30.180481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522644, 27.342644, 30.264484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222893, 0.744505, -0.629310,
		-0.432653, -0.502938, -0.748241,
		-0.873573, 0.439051, 0.210011,
		31.260572, 27.474360, 30.327488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471714, 27.331682, 29.534542>,  <31.872074, 27.167023, 30.180481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471714, 27.331682, 29.534542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368292, 27.576653, 29.833363>,  <31.306238, 27.723635, 30.012655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368292, 27.576653, 29.833363>,  <31.471714, 27.331682, 29.534542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368292, 27.576653, 29.833363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008048, 0.774687, -0.632294,
		-0.965963, -0.157470, -0.205228,
		-0.258554, 0.612424, 0.747052,
		31.290726, 27.760380, 30.057478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937311, 27.636391, 29.211632>,  <31.471714, 27.331682, 29.534542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937311, 27.636391, 29.211632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024387, 27.877884, 29.518387>,  <31.076633, 28.022779, 29.702440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024387, 27.877884, 29.518387>,  <30.937311, 27.636391, 29.211632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024387, 27.877884, 29.518387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084840, 0.794462, -0.601359,
		-0.972323, 0.065849, 0.224170,
		0.217693, 0.603733, 0.766887,
		31.089695, 28.059004, 29.748453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396563, 28.173372, 29.090330>,  <30.937311, 27.636391, 29.211632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396563, 28.173372, 29.090330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675835, 28.325626, 29.332870>,  <30.843399, 28.416979, 29.478394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675835, 28.325626, 29.332870>,  <30.396563, 28.173372, 29.090330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675835, 28.325626, 29.332870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060398, 0.875247, -0.479890,
		-0.713368, 0.298428, 0.634072,
		0.698182, 0.380634, 0.606349,
		30.885290, 28.439817, 29.514774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104774, 28.763630, 29.350101>,  <30.396563, 28.173372, 29.090330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104774, 28.763630, 29.350101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499640, 28.805191, 29.398628>,  <30.736559, 28.830128, 29.427744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499640, 28.805191, 29.398628>,  <30.104774, 28.763630, 29.350101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499640, 28.805191, 29.398628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039837, 0.895661, -0.442949,
		-0.154683, 0.432429, 0.888301,
		0.987161, 0.103904, 0.121317,
		30.795788, 28.836363, 29.435022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201410, 29.409201, 29.453751>,  <30.104774, 28.763630, 29.350101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201410, 29.409201, 29.453751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585840, 29.327583, 29.379242>,  <30.816498, 29.278614, 29.334536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585840, 29.327583, 29.379242>,  <30.201410, 29.409201, 29.453751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585840, 29.327583, 29.379242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075264, 0.842080, -0.534076,
		0.265831, 0.499269, 0.824660,
		0.961077, -0.204041, -0.186274,
		30.874163, 29.266371, 29.323360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631506, 29.902775, 29.773439>,  <30.201410, 29.409201, 29.453751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631506, 29.902775, 29.773439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826263, 29.761456, 29.453911>,  <30.943119, 29.676664, 29.262194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826263, 29.761456, 29.453911>,  <30.631506, 29.902775, 29.773439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826263, 29.761456, 29.453911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017126, 0.918232, -0.395672,
		0.873292, 0.178970, 0.453134,
		0.486896, -0.353298, -0.798820,
		30.972332, 29.655466, 29.214264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159077, 30.406796, 29.626080>,  <30.631506, 29.902775, 29.773439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159077, 30.406796, 29.626080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056324, 30.198799, 29.300228>,  <30.994673, 30.074001, 29.104717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056324, 30.198799, 29.300228>,  <31.159077, 30.406796, 29.626080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056324, 30.198799, 29.300228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060259, 0.832659, -0.550499,
		0.964562, -0.190502, -0.182561,
		-0.256882, -0.519989, -0.814631,
		30.979259, 30.042803, 29.055840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177996, 30.914328, 29.107956>,  <31.159077, 30.406796, 29.626080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177996, 30.914328, 29.107956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087271, 30.604965, 28.871178>,  <31.032835, 30.419348, 28.729111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087271, 30.604965, 28.871178>,  <31.177996, 30.914328, 29.107956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087271, 30.604965, 28.871178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117106, 0.625033, -0.771765,
		0.966872, -0.105726, -0.232336,
		-0.226813, -0.773406, -0.591946,
		31.019226, 30.372944, 28.693594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576559, 30.925739, 28.378231>,  <31.177996, 30.914328, 29.107956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576559, 30.925739, 28.378231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242350, 30.714535, 28.317432>,  <31.041824, 30.587812, 28.280952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242350, 30.714535, 28.317432>,  <31.576559, 30.925739, 28.378231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242350, 30.714535, 28.317432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246382, 0.607302, -0.755301,
		0.491114, -0.593624, -0.637509,
		-0.835525, -0.528010, -0.151996,
		30.991692, 30.556131, 28.271833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570478, 30.712139, 27.592052>,  <31.576559, 30.925739, 28.378231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570478, 30.712139, 27.592052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212503, 30.725616, 27.770020>,  <30.997719, 30.733704, 27.876801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212503, 30.725616, 27.770020>,  <31.570478, 30.712139, 27.592052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212503, 30.725616, 27.770020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392325, 0.415533, -0.820618,
		-0.212528, -0.908954, -0.358657,
		-0.894937, 0.033694, 0.444917,
		30.944023, 30.735725, 27.903494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153690, 30.811419, 26.929169>,  <31.570478, 30.712139, 27.592052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153690, 30.811419, 26.929169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917582, 30.877529, 27.245209>,  <30.775915, 30.917196, 27.434834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917582, 30.877529, 27.245209>,  <31.153690, 30.811419, 26.929169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917582, 30.877529, 27.245209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420866, 0.772226, -0.475961,
		-0.688803, -0.613474, -0.386265,
		-0.590273, 0.165278, 0.790102,
		30.740499, 30.927113, 27.482239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543970, 30.641113, 26.726620>,  <31.153690, 30.811419, 26.929169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543970, 30.641113, 26.726620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505239, 30.905594, 27.024193>,  <30.482002, 31.064283, 27.202736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505239, 30.905594, 27.024193>,  <30.543970, 30.641113, 26.726620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505239, 30.905594, 27.024193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559167, 0.582199, -0.590234,
		-0.823381, -0.473132, 0.313352,
		-0.096825, 0.661203, 0.743932,
		30.476192, 31.103954, 27.247372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906633, 30.901293, 26.586285>,  <30.543970, 30.641113, 26.726620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906633, 30.901293, 26.586285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051336, 31.175575, 26.838932>,  <30.138159, 31.340145, 26.990520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051336, 31.175575, 26.838932>,  <29.906633, 30.901293, 26.586285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051336, 31.175575, 26.838932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483400, 0.717277, -0.501836,
		-0.797155, -0.123780, 0.590950,
		0.361757, 0.685706, 0.631616,
		30.159864, 31.381287, 27.028418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308493, 31.339106, 26.576035>,  <29.906633, 30.901293, 26.586285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308493, 31.339106, 26.576035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610121, 31.560158, 26.718010>,  <29.791098, 31.692789, 26.803196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610121, 31.560158, 26.718010>,  <29.308493, 31.339106, 26.576035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610121, 31.560158, 26.718010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319861, 0.780986, -0.536424,
		-0.573646, 0.290969, 0.765681,
		0.754068, 0.552628, 0.354940,
		29.836342, 31.725946, 26.824492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092670, 32.053802, 26.698311>,  <29.308493, 31.339106, 26.576035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092670, 32.053802, 26.698311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488661, 32.087948, 26.653305>,  <29.726255, 32.108437, 26.626301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488661, 32.087948, 26.653305>,  <29.092670, 32.053802, 26.698311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488661, 32.087948, 26.653305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135364, 0.800772, -0.583474,
		0.040292, 0.592856, 0.804300,
		0.989976, 0.085364, -0.112516,
		29.785654, 32.113556, 26.619551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264822, 32.811420, 26.821033>,  <29.092670, 32.053802, 26.698311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264822, 32.811420, 26.821033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579212, 32.670055, 26.618118>,  <29.767847, 32.585236, 26.496368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579212, 32.670055, 26.618118>,  <29.264822, 32.811420, 26.821033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579212, 32.670055, 26.618118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027569, 0.799660, -0.599820,
		0.617643, 0.485429, 0.618769,
		0.785975, -0.353416, -0.507287,
		29.815004, 32.564030, 26.465933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676882, 33.313419, 26.746332>,  <29.264822, 32.811420, 26.821033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676882, 33.313419, 26.746332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775051, 33.065216, 26.448410>,  <29.833952, 32.916294, 26.269657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775051, 33.065216, 26.448410>,  <29.676882, 33.313419, 26.746332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775051, 33.065216, 26.448410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036043, 0.761929, -0.646657,
		0.968746, 0.185549, 0.164630,
		0.245423, -0.620513, -0.744803,
		29.848679, 32.879063, 26.224970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214745, 33.605782, 26.331793>,  <29.676882, 33.313419, 26.746332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214745, 33.605782, 26.331793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050785, 33.348186, 26.073410>,  <29.952410, 33.193630, 25.918381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050785, 33.348186, 26.073410>,  <30.214745, 33.605782, 26.331793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050785, 33.348186, 26.073410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005901, 0.706298, -0.707890,
		0.912111, -0.293977, -0.285712,
		-0.409901, -0.643989, -0.645957,
		29.927814, 33.154991, 25.879623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569126, 33.756508, 25.648039>,  <30.214745, 33.605782, 26.331793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569126, 33.756508, 25.648039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267014, 33.524170, 25.526604>,  <30.085747, 33.384766, 25.453743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267014, 33.524170, 25.526604>,  <30.569126, 33.756508, 25.648039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267014, 33.524170, 25.526604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120508, 0.578386, -0.806813,
		0.644227, -0.572786, -0.506841,
		-0.755280, -0.580849, -0.303586,
		30.040430, 33.349915, 25.435528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642086, 33.655201, 24.874989>,  <30.569126, 33.756508, 25.648039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642086, 33.655201, 24.874989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271818, 33.509514, 24.915936>,  <30.049658, 33.422100, 24.940504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271818, 33.509514, 24.915936>,  <30.642086, 33.655201, 24.874989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271818, 33.509514, 24.915936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244680, 0.369958, -0.896249,
		0.288561, -0.854678, -0.431576,
		-0.925670, -0.364220, 0.102368,
		29.994118, 33.400249, 24.946646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473040, 33.289310, 24.249805>,  <30.642086, 33.655201, 24.874989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473040, 33.289310, 24.249805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135151, 33.405312, 24.429737>,  <29.932419, 33.474911, 24.537697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135151, 33.405312, 24.429737>,  <30.473040, 33.289310, 24.249805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135151, 33.405312, 24.429737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311398, 0.417266, -0.853768,
		-0.435292, -0.861272, -0.262167,
		-0.844720, 0.290000, 0.449831,
		29.881735, 33.492313, 24.564686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997475, 33.027020, 23.922541>,  <30.473040, 33.289310, 24.249805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997475, 33.027020, 23.922541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795563, 33.323681, 24.099239>,  <29.674416, 33.501678, 24.205259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795563, 33.323681, 24.099239>,  <29.997475, 33.027020, 23.922541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795563, 33.323681, 24.099239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397488, 0.254561, -0.881590,
		-0.766290, -0.620598, 0.166304,
		-0.504779, 0.741658, 0.441748,
		29.644129, 33.546177, 24.231764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414017, 33.023994, 23.602562>,  <29.997475, 33.027020, 23.922541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414017, 33.023994, 23.602562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360332, 33.381824, 23.773083>,  <29.328123, 33.596523, 23.875395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360332, 33.381824, 23.773083>,  <29.414017, 33.023994, 23.602562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360332, 33.381824, 23.773083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492854, 0.312955, -0.811883,
		-0.859699, -0.319065, 0.398892,
		-0.134208, 0.894571, 0.426300,
		29.320070, 33.650196, 23.900972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736778, 33.194798, 23.550926>,  <29.414017, 33.023994, 23.602562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736778, 33.194798, 23.550926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920849, 33.547550, 23.591949>,  <29.031290, 33.759201, 23.616564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920849, 33.547550, 23.591949>,  <28.736778, 33.194798, 23.550926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920849, 33.547550, 23.591949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516443, 0.359849, -0.777043,
		-0.722168, 0.304610, 0.621037,
		0.460174, 0.881885, 0.102557,
		29.058901, 33.812115, 23.622717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272732, 33.672867, 23.497578>,  <28.736778, 33.194798, 23.550926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272732, 33.672867, 23.497578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590929, 33.907444, 23.436543>,  <28.781847, 34.048191, 23.399921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590929, 33.907444, 23.436543>,  <28.272732, 33.672867, 23.497578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590929, 33.907444, 23.436543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460388, 0.421178, -0.781442,
		-0.394001, 0.691881, 0.605032,
		0.795491, 0.586439, -0.152589,
		28.829576, 34.083374, 23.390766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014421, 34.384388, 23.282703>,  <28.272732, 33.672867, 23.497578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014421, 34.384388, 23.282703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391714, 34.374214, 23.150238>,  <28.618090, 34.368111, 23.070759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391714, 34.374214, 23.150238>,  <28.014421, 34.384388, 23.282703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391714, 34.374214, 23.150238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202468, 0.746356, -0.634003,
		0.263295, 0.665061, 0.698835,
		0.943230, -0.025437, -0.331165,
		28.674683, 34.366585, 23.050888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611347, 33.839874, 22.857901>,  <28.014421, 34.384388, 23.282703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611347, 33.839874, 22.857901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533743, 34.211220, 22.731091>,  <27.487181, 34.434029, 22.655005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533743, 34.211220, 22.731091>,  <27.611347, 33.839874, 22.857901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533743, 34.211220, 22.731091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964240, 0.120983, -0.235805,
		-0.180558, -0.351435, -0.918636,
		-0.194009, 0.928362, -0.317023,
		27.475540, 34.489727, 22.635984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342319, 33.918575, 23.582962>,  <27.611347, 33.839874, 22.857901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342319, 33.918575, 23.582962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102907, 33.912712, 23.262577>,  <26.959259, 33.909195, 23.070345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102907, 33.912712, 23.262577>,  <27.342319, 33.918575, 23.582962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102907, 33.912712, 23.262577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714893, 0.460962, 0.525777,
		0.361506, 0.887299, -0.286382,
		-0.598533, -0.014661, -0.800964,
		26.923347, 33.908314, 23.022287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053814, 34.551014, 23.545807>,  <27.342319, 33.918575, 23.582962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053814, 34.551014, 23.545807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815739, 34.269920, 23.389904>,  <26.672894, 34.101265, 23.296362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815739, 34.269920, 23.389904>,  <27.053814, 34.551014, 23.545807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815739, 34.269920, 23.389904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798387, 0.462040, 0.386130,
		-0.091265, 0.540997, -0.836058,
		-0.595188, -0.702738, -0.389757,
		26.637182, 34.059097, 23.272976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548748, 34.787205, 22.991482>,  <27.053814, 34.551014, 23.545807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548748, 34.787205, 22.991482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381689, 34.476883, 23.180668>,  <26.281454, 34.290688, 23.294180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381689, 34.476883, 23.180668>,  <26.548748, 34.787205, 22.991482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381689, 34.476883, 23.180668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730763, 0.596143, 0.332562,
		-0.539959, -0.206732, -0.815908,
		-0.417647, -0.775806, 0.472965,
		26.256395, 34.244141, 23.322557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803780, 34.597694, 22.874735>,  <26.548748, 34.787205, 22.991482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803780, 34.597694, 22.874735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861084, 34.541489, 23.266598>,  <25.895466, 34.507767, 23.501717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861084, 34.541489, 23.266598>,  <25.803780, 34.597694, 22.874735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861084, 34.541489, 23.266598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659767, 0.724266, 0.200363,
		-0.737688, -0.675051, 0.011050,
		0.143259, -0.140515, 0.979660,
		25.904062, 34.499336, 23.560495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167948, 34.535320, 23.234165>,  <25.803780, 34.597694, 22.874735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167948, 34.535320, 23.234165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429068, 34.702103, 23.487148>,  <25.585739, 34.802170, 23.638939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429068, 34.702103, 23.487148>,  <25.167948, 34.535320, 23.234165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429068, 34.702103, 23.487148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651198, 0.735432, 0.187300,
		-0.387035, -0.534125, 0.751608,
		0.652798, 0.416954, 0.632459,
		25.624907, 34.827190, 23.676886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826233, 34.470905, 23.767996>,  <25.167948, 34.535320, 23.234165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826233, 34.470905, 23.767996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083384, 34.777294, 23.768501>,  <25.237675, 34.961128, 23.768805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083384, 34.777294, 23.768501>,  <24.826233, 34.470905, 23.767996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083384, 34.777294, 23.768501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757318, 0.635369, 0.150919,
		0.114796, -0.097979, 0.988546,
		0.642878, 0.765968, 0.001264,
		25.276247, 35.007084, 23.768881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.281240, 34.852718, 23.945889>,  <24.826233, 34.470905, 23.767996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.281240, 34.852718, 23.945889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.928118, 35.031010, 24.005192>,  <23.716244, 35.137985, 24.040773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.928118, 35.031010, 24.005192>,  <24.281240, 34.852718, 23.945889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.928118, 35.031010, 24.005192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438225, -0.895138, 0.081775,
		0.169160, 0.007221, 0.985562,
		-0.882804, 0.445731, 0.148257,
		23.663277, 35.164730, 24.049669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.917425, 34.553970, 24.599072>,  <24.281240, 34.852718, 23.945889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.917425, 34.553970, 24.599072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.630621, 34.709229, 24.367474>,  <23.458538, 34.802383, 24.228516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.630621, 34.709229, 24.367474>,  <23.917425, 34.553970, 24.599072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.630621, 34.709229, 24.367474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533811, -0.839905, 0.098003,
		-0.448261, 0.379344, 0.809420,
		-0.717013, 0.388146, -0.578995,
		23.415518, 34.825672, 24.193775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.299547, 34.332973, 24.901316>,  <23.917425, 34.553970, 24.599072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.299547, 34.332973, 24.901316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.213871, 34.430790, 24.523041>,  <23.162466, 34.489479, 24.296076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.213871, 34.430790, 24.523041>,  <23.299547, 34.332973, 24.901316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.213871, 34.430790, 24.523041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552267, -0.828875, -0.089252,
		-0.805681, 0.503154, 0.312591,
		-0.214191, 0.244543, -0.945685,
		23.149614, 34.504154, 24.239336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.609539, 34.059917, 24.834263>,  <23.299547, 34.332973, 24.901316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.609539, 34.059917, 24.834263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.752134, 34.101780, 24.462894>,  <22.837692, 34.126896, 24.240074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.752134, 34.101780, 24.462894>,  <22.609539, 34.059917, 24.834263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.752134, 34.101780, 24.462894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554374, -0.776180, -0.300357,
		-0.752054, 0.621765, -0.218682,
		0.356488, 0.104653, -0.928420,
		22.859081, 34.133175, 24.184368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.034885, 33.774837, 24.379482>,  <22.609539, 34.059917, 24.834263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.034885, 33.774837, 24.379482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.362764, 33.786030, 24.150639>,  <22.559492, 33.792747, 24.013332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.362764, 33.786030, 24.150639>,  <22.034885, 33.774837, 24.379482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.362764, 33.786030, 24.150639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263519, -0.868405, -0.420036,
		-0.508577, 0.495065, -0.704457,
		0.819699, 0.027983, -0.572110,
		22.608675, 33.794426, 23.979006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.783705, 33.792458, 23.771294>,  <22.034885, 33.774837, 24.379482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.783705, 33.792458, 23.771294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.154802, 33.644669, 23.750183>,  <22.377460, 33.555996, 23.737516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.154802, 33.644669, 23.750183>,  <21.783705, 33.792458, 23.771294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.154802, 33.644669, 23.750183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357643, -0.839657, -0.408738,
		0.106703, 0.398079, -0.911124,
		0.927742, -0.369470, -0.052776,
		22.433125, 33.533829, 23.734350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.929064, 33.696865, 23.106384>,  <21.783705, 33.792458, 23.771294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.929064, 33.696865, 23.106384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.165487, 33.439838, 23.301426>,  <22.307341, 33.285622, 23.418451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.165487, 33.439838, 23.301426>,  <21.929064, 33.696865, 23.106384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.165487, 33.439838, 23.301426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337597, -0.746068, -0.573944,
		0.732583, 0.174620, -0.657898,
		0.591059, -0.642566, 0.487606,
		22.342804, 33.247070, 23.447708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.221746, 33.246620, 22.633453>,  <21.929064, 33.696865, 23.106384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.221746, 33.246620, 22.633453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292803, 33.033932, 22.964684>,  <22.335436, 32.906319, 23.163422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292803, 33.033932, 22.964684>,  <22.221746, 33.246620, 22.633453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.292803, 33.033932, 22.964684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340879, -0.822614, -0.455091,
		0.923172, -0.201431, -0.327384,
		0.177641, -0.531725, 0.828078,
		22.346096, 32.874413, 23.213106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.587708, 32.551952, 22.413036>,  <22.221746, 33.246620, 22.633453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.587708, 32.551952, 22.413036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.431820, 32.475887, 22.773472>,  <22.338287, 32.430248, 22.989733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.431820, 32.475887, 22.773472>,  <22.587708, 32.551952, 22.413036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.431820, 32.475887, 22.773472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431720, -0.826553, -0.361148,
		0.813472, -0.529763, 0.240028,
		-0.389719, -0.190159, 0.901088,
		22.314903, 32.418839, 23.043798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.560741, 31.817148, 22.471411>,  <22.587708, 32.551952, 22.413036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.560741, 31.817148, 22.471411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.315920, 31.926689, 22.768166>,  <22.169027, 31.992414, 22.946218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.315920, 31.926689, 22.768166>,  <22.560741, 31.817148, 22.471411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.315920, 31.926689, 22.768166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614601, -0.755073, -0.228320,
		0.497653, -0.595708, 0.630455,
		-0.612052, 0.273854, 0.741887,
		22.132305, 32.008846, 22.990732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.397951, 31.194042, 22.827173>,  <22.560741, 31.817148, 22.471411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.397951, 31.194042, 22.827173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097755, 31.446030, 22.907078>,  <21.917637, 31.597221, 22.955021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097755, 31.446030, 22.907078>,  <22.397951, 31.194042, 22.827173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.097755, 31.446030, 22.907078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656372, -0.675251, -0.336472,
		-0.077077, -0.383636, 0.920262,
		-0.750490, 0.629968, 0.199761,
		21.872608, 31.635019, 22.967007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.819378, 30.835571, 23.325722>,  <22.397951, 31.194042, 22.827173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.819378, 30.835571, 23.325722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.682600, 31.138336, 23.102955>,  <21.600533, 31.319996, 22.969294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.682600, 31.138336, 23.102955>,  <21.819378, 30.835571, 23.325722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.682600, 31.138336, 23.102955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692072, -0.603749, -0.395631,
		-0.635697, 0.250146, 0.730285,
		-0.341943, 0.756911, -0.556921,
		21.580017, 31.365410, 22.935879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.094427, 30.650373, 23.353380>,  <21.819378, 30.835571, 23.325722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.094427, 30.650373, 23.353380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.135529, 30.931839, 23.072155>,  <21.160191, 31.100718, 22.903419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.135529, 30.931839, 23.072155>,  <21.094427, 30.650373, 23.353380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.135529, 30.931839, 23.072155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591155, -0.525244, -0.612091,
		-0.799986, 0.478516, 0.362002,
		0.102756, 0.703663, -0.703065,
		21.166355, 31.142939, 22.861235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466032, 30.658651, 23.056965>,  <21.094427, 30.650373, 23.353380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466032, 30.658651, 23.056965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.684425, 30.840958, 22.775772>,  <20.815462, 30.950340, 22.607058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.684425, 30.840958, 22.775772>,  <20.466032, 30.658651, 23.056965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.684425, 30.840958, 22.775772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653407, -0.293526, -0.697783,
		-0.524367, 0.840310, 0.137539,
		0.545983, 0.455764, -0.702980,
		20.848221, 30.977686, 22.564878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.932404, 30.931770, 22.513000>,  <20.466032, 30.658651, 23.056965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.932404, 30.931770, 22.513000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.288189, 30.896980, 22.333538>,  <20.501659, 30.876106, 22.225861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.288189, 30.896980, 22.333538>,  <19.932404, 30.931770, 22.513000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.288189, 30.896980, 22.333538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429115, -0.496678, -0.754435,
		-0.157219, 0.863566, -0.479099,
		0.889462, -0.086977, -0.448656,
		20.555027, 30.870888, 22.198940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.923498, 31.270657, 21.816126>,  <19.932404, 30.931770, 22.513000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.923498, 31.270657, 21.816126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238136, 31.025455, 21.786476>,  <20.426920, 30.878334, 21.768686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238136, 31.025455, 21.786476>,  <19.923498, 31.270657, 21.816126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.238136, 31.025455, 21.786476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452670, -0.490841, -0.744423,
		0.419950, 0.619114, -0.663581,
		0.786595, -0.613004, -0.074126,
		20.474115, 30.841555, 21.764238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.177364, 31.243746, 21.154520>,  <19.923498, 31.270657, 21.816126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.177364, 31.243746, 21.154520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357756, 30.916679, 21.297649>,  <20.465990, 30.720440, 21.383528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357756, 30.916679, 21.297649>,  <20.177364, 31.243746, 21.154520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357756, 30.916679, 21.297649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121872, -0.453567, -0.882850,
		0.884176, 0.354536, -0.304199,
		0.450977, -0.817668, 0.357825,
		20.493050, 30.671379, 21.404997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.586021, 30.986616, 20.589296>,  <20.177364, 31.243746, 21.154520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.586021, 30.986616, 20.589296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.532598, 30.675064, 20.834412>,  <20.500544, 30.488132, 20.981482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.532598, 30.675064, 20.834412>,  <20.586021, 30.986616, 20.589296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.532598, 30.675064, 20.834412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043995, -0.613060, -0.788811,
		0.990064, -0.132313, 0.047612,
		-0.133559, -0.778878, 0.612789,
		20.492531, 30.441401, 21.018248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127296, 30.354319, 20.318359>,  <20.586021, 30.986616, 20.589296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127296, 30.354319, 20.318359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830626, 30.205597, 20.541672>,  <20.652624, 30.116364, 20.675659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830626, 30.205597, 20.541672>,  <21.127296, 30.354319, 20.318359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830626, 30.205597, 20.541672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213637, -0.658028, -0.722052,
		0.635828, -0.654797, 0.408612,
		-0.741675, -0.371806, 0.558281,
		20.608124, 30.094055, 20.709156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.172733, 29.642540, 20.237858>,  <21.127296, 30.354319, 20.318359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.172733, 29.642540, 20.237858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821093, 29.619846, 20.427155>,  <20.610107, 29.606230, 20.540733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821093, 29.619846, 20.427155>,  <21.172733, 29.642540, 20.237858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821093, 29.619846, 20.427155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273875, -0.752486, -0.598964,
		0.390090, -0.656160, 0.645975,
		-0.879103, -0.056734, 0.473243,
		20.557362, 29.602827, 20.569128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078465, 28.946461, 20.569939>,  <21.172733, 29.642540, 20.237858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078465, 28.946461, 20.569939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.717663, 29.105927, 20.503662>,  <20.501181, 29.201605, 20.463896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.717663, 29.105927, 20.503662>,  <21.078465, 28.946461, 20.569939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.717663, 29.105927, 20.503662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306784, -0.861915, -0.403716,
		-0.303759, -0.313322, 0.899755,
		-0.902005, 0.398663, -0.165692,
		20.447062, 29.225525, 20.453955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.572805, 28.501320, 20.785664>,  <21.078465, 28.946461, 20.569939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.572805, 28.501320, 20.785664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.406384, 28.729313, 20.502251>,  <20.306530, 28.866108, 20.332203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.406384, 28.729313, 20.502251>,  <20.572805, 28.501320, 20.785664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.406384, 28.729313, 20.502251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334410, -0.820477, -0.463668,
		-0.845618, 0.044031, 0.531969,
		-0.416052, 0.569981, -0.708534,
		20.281567, 28.900307, 20.289690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766045, 28.284569, 20.730764>,  <20.572805, 28.501320, 20.785664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766045, 28.284569, 20.730764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.920528, 28.458652, 20.405449>,  <20.013218, 28.563103, 20.210260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.920528, 28.458652, 20.405449>,  <19.766045, 28.284569, 20.730764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.920528, 28.458652, 20.405449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341425, -0.751628, -0.564344,
		-0.856897, 0.495631, -0.141695,
		0.386208, 0.435207, -0.813288,
		20.036390, 28.589214, 20.161463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.168112, 28.377846, 20.148470>,  <19.766045, 28.284569, 20.730764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.168112, 28.377846, 20.148470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550833, 28.321938, 20.046494>,  <19.780466, 28.288393, 19.985308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550833, 28.321938, 20.046494>,  <19.168112, 28.377846, 20.148470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.550833, 28.321938, 20.046494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256975, -0.816695, -0.516694,
		-0.135989, 0.559887, -0.817333,
		0.956802, -0.139769, -0.254939,
		19.837873, 28.280006, 19.970013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.036060, 28.253511, 19.407043>,  <19.168112, 28.377846, 20.148470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.036060, 28.253511, 19.407043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.366774, 28.093796, 19.565536>,  <19.565201, 27.997967, 19.660633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.366774, 28.093796, 19.565536>,  <19.036060, 28.253511, 19.407043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.366774, 28.093796, 19.565536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107310, -0.803404, -0.585685,
		0.552192, 0.441714, -0.707088,
		0.826782, -0.399288, 0.396233,
		19.614809, 27.974009, 19.684406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.534063, 28.644295, 18.917904>,  <19.036060, 28.253511, 19.407043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.534063, 28.644295, 18.917904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854059, 28.445202, 18.783875>,  <19.046057, 28.325747, 18.703457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854059, 28.445202, 18.783875>,  <18.534063, 28.644295, 18.917904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.854059, 28.445202, 18.783875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585064, 0.770966, 0.251619,
		0.133092, -0.397333, 0.907972,
		0.799992, -0.497733, -0.335075,
		19.094057, 28.295881, 18.683352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.805382, 28.709383, 18.743109>,  <18.534063, 28.644295, 18.917904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.805382, 28.709383, 18.743109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.674028, 28.378578, 18.560585>,  <17.595217, 28.180096, 18.451071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.674028, 28.378578, 18.560585>,  <17.805382, 28.709383, 18.743109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.674028, 28.378578, 18.560585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659748, -0.144892, 0.737387,
		-0.675943, 0.543193, -0.498039,
		-0.328381, -0.827012, -0.456309,
		17.575514, 28.130474, 18.423693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519579, 29.471344, 18.828535>,  <17.805382, 28.709383, 18.743109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.519579, 29.471344, 18.828535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.309074, 29.754299, 19.017281>,  <17.182772, 29.924072, 19.130527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.309074, 29.754299, 19.017281>,  <17.519579, 29.471344, 18.828535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.309074, 29.754299, 19.017281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776605, 0.625849, -0.072097,
		-0.346316, 0.328511, -0.878718,
		-0.526260, 0.707386, 0.471864,
		17.151196, 29.966515, 19.158840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.980066, 29.911560, 18.849888>,  <17.519579, 29.471344, 18.828535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.980066, 29.911560, 18.849888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.693958, 30.118465, 19.037857>,  <17.522293, 30.242609, 19.150639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.693958, 30.118465, 19.037857>,  <17.980066, 29.911560, 18.849888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.693958, 30.118465, 19.037857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605088, 0.794822, 0.046117,
		-0.349651, 0.317331, -0.881502,
		-0.715271, 0.517261, 0.469923,
		17.479378, 30.273643, 19.178835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015699, 30.532822, 18.566189>,  <17.980066, 29.911560, 18.849888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015699, 30.532822, 18.566189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.848743, 30.578587, 18.926788>,  <17.748569, 30.606047, 19.143148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.848743, 30.578587, 18.926788>,  <18.015699, 30.532822, 18.566189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.848743, 30.578587, 18.926788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546235, 0.824404, 0.148274,
		-0.726233, 0.554317, -0.406594,
		-0.417389, 0.114414, 0.901497,
		17.723526, 30.612911, 19.197237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800158, 31.241692, 18.662634>,  <18.015699, 30.532822, 18.566189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800158, 31.241692, 18.662634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.825560, 31.079899, 19.027569>,  <17.840801, 30.982822, 19.246531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.825560, 31.079899, 19.027569>,  <17.800158, 31.241692, 18.662634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.825560, 31.079899, 19.027569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575059, 0.761987, 0.297796,
		-0.815643, 0.505736, 0.280994,
		0.063507, -0.404483, 0.912338,
		17.844612, 30.958553, 19.301270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548517, 31.640024, 19.262877>,  <17.800158, 31.241692, 18.662634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548517, 31.640024, 19.262877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.843866, 31.398113, 19.382244>,  <18.021076, 31.252968, 19.453865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.843866, 31.398113, 19.382244>,  <17.548517, 31.640024, 19.262877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843866, 31.398113, 19.382244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525637, 0.793318, 0.307169,
		-0.422509, -0.069945, 0.903656,
		0.738371, -0.604776, 0.298418,
		18.065378, 31.216681, 19.471769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771351, 31.925802, 19.948942>,  <17.548517, 31.640024, 19.262877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771351, 31.925802, 19.948942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.063263, 31.671562, 19.848198>,  <18.238411, 31.519018, 19.787752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.063263, 31.671562, 19.848198>,  <17.771351, 31.925802, 19.948942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.063263, 31.671562, 19.848198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663416, 0.569314, 0.485552,
		-0.165229, -0.521434, 0.837141,
		0.729780, -0.635600, -0.251861,
		18.282196, 31.480883, 19.772640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007284, 31.676117, 20.557060>,  <17.771351, 31.925802, 19.948942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007284, 31.676117, 20.557060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.292768, 31.622108, 20.282139>,  <18.464058, 31.589703, 20.117186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.292768, 31.622108, 20.282139>,  <18.007284, 31.676117, 20.557060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.292768, 31.622108, 20.282139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593652, 0.637382, 0.491245,
		0.371747, -0.758626, 0.535062,
		0.713710, -0.135022, -0.687304,
		18.506882, 31.581602, 20.075947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.681841, 31.400280, 20.911873>,  <18.007284, 31.676117, 20.557060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.681841, 31.400280, 20.911873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.801701, 31.589939, 20.580719>,  <18.873617, 31.703735, 20.382027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.801701, 31.589939, 20.580719>,  <18.681841, 31.400280, 20.911873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.801701, 31.589939, 20.580719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646600, 0.537132, 0.541662,
		0.701512, -0.697619, -0.145634,
		0.299649, 0.474149, -0.827885,
		18.891596, 31.732183, 20.332354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.389202, 31.468386, 20.913572>,  <18.681841, 31.400280, 20.911873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.389202, 31.468386, 20.913572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.314392, 31.760441, 20.650688>,  <19.269506, 31.935673, 20.492958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.314392, 31.760441, 20.650688>,  <19.389202, 31.468386, 20.913572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.314392, 31.760441, 20.650688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557229, 0.629818, 0.541133,
		0.809023, -0.265011, -0.524644,
		-0.187024, 0.730136, -0.657209,
		19.258286, 31.979481, 20.453526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.989389, 31.748495, 20.663853>,  <19.389202, 31.468386, 20.913572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.989389, 31.748495, 20.663853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.738455, 32.046944, 20.574631>,  <19.587894, 32.226013, 20.521097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.738455, 32.046944, 20.574631>,  <19.989389, 31.748495, 20.663853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.738455, 32.046944, 20.574631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571375, 0.635613, 0.519160,
		0.529133, 0.198239, -0.825057,
		-0.627335, 0.746122, -0.223055,
		19.550255, 32.270779, 20.507713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.284861, 32.462906, 20.468151>,  <19.989389, 31.748495, 20.663853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.284861, 32.462906, 20.468151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911066, 32.556789, 20.575218>,  <19.686789, 32.613121, 20.639460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911066, 32.556789, 20.575218>,  <20.284861, 32.462906, 20.468151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.911066, 32.556789, 20.575218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350163, 0.741569, 0.572242,
		-0.064186, 0.628480, -0.775172,
		-0.934487, 0.234707, 0.267669,
		19.630720, 32.627201, 20.655519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.293694, 33.185474, 20.508881>,  <20.284861, 32.462906, 20.468151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.293694, 33.185474, 20.508881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.942373, 33.114521, 20.686474>,  <19.731581, 33.071949, 20.793030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.942373, 33.114521, 20.686474>,  <20.293694, 33.185474, 20.508881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.942373, 33.114521, 20.686474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150585, 0.778732, 0.609016,
		-0.453772, 0.601758, -0.657251,
		-0.878303, -0.177382, 0.443982,
		19.678883, 33.061306, 20.819668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.940886, 33.840401, 20.561464>,  <20.293694, 33.185474, 20.508881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.940886, 33.840401, 20.561464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.791788, 33.590828, 20.836208>,  <19.702330, 33.441086, 21.001055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.791788, 33.590828, 20.836208>,  <19.940886, 33.840401, 20.561464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.791788, 33.590828, 20.836208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101767, 0.708250, 0.698588,
		-0.922336, 0.330295, -0.200502,
		-0.372746, -0.623928, 0.686858,
		19.679964, 33.403648, 21.042265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.488014, 34.340710, 21.012705>,  <19.940886, 33.840401, 20.561464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.488014, 34.340710, 21.012705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.578045, 34.000298, 21.202477>,  <19.632063, 33.796051, 21.316339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.578045, 34.000298, 21.202477>,  <19.488014, 34.340710, 21.012705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.578045, 34.000298, 21.202477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043410, 0.495198, 0.867695,
		-0.973374, -0.174701, 0.148400,
		0.225075, -0.851034, 0.474429,
		19.645567, 33.744987, 21.344805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092459, 34.322693, 21.615314>,  <19.488014, 34.340710, 21.012705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092459, 34.322693, 21.615314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.418919, 34.097530, 21.667519>,  <19.614794, 33.962433, 21.698841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.418919, 34.097530, 21.667519>,  <19.092459, 34.322693, 21.615314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.418919, 34.097530, 21.667519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182558, 0.465475, 0.866028,
		-0.548246, -0.682982, 0.482661,
		0.816149, -0.562910, 0.130511,
		19.663763, 33.928658, 21.706673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.142290, 34.194302, 22.277088>,  <19.092459, 34.322693, 21.615314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.142290, 34.194302, 22.277088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.515657, 34.095768, 22.172741>,  <19.739677, 34.036648, 22.110132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.515657, 34.095768, 22.172741>,  <19.142290, 34.194302, 22.277088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.515657, 34.095768, 22.172741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358721, 0.655256, 0.664800,
		0.007175, -0.714115, 0.699991,
		0.933417, -0.246331, -0.260870,
		19.795683, 34.021870, 22.094481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492693, 34.181198, 22.896330>,  <19.142290, 34.194302, 22.277088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492693, 34.181198, 22.896330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.791351, 34.184071, 22.630257>,  <19.970547, 34.185795, 22.470613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.791351, 34.184071, 22.630257>,  <19.492693, 34.181198, 22.896330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.791351, 34.184071, 22.630257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581520, 0.478537, 0.657904,
		0.323039, -0.878038, 0.353122,
		0.746647, 0.007181, -0.665182,
		20.015345, 34.186226, 22.430702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.088428, 33.944157, 23.232704>,  <19.492693, 34.181198, 22.896330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.088428, 33.944157, 23.232704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.199533, 34.163559, 22.917240>,  <20.266197, 34.295200, 22.727962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.199533, 34.163559, 22.917240>,  <20.088428, 33.944157, 23.232704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.199533, 34.163559, 22.917240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604529, 0.538224, 0.587247,
		0.746587, -0.639883, -0.182091,
		0.277764, 0.548510, -0.788659,
		20.282864, 34.328114, 22.680643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.725863, 34.033878, 23.344007>,  <20.088428, 33.944157, 23.232704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.725863, 34.033878, 23.344007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.658117, 34.320198, 23.073025>,  <20.617470, 34.491989, 22.910435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.658117, 34.320198, 23.073025>,  <20.725863, 34.033878, 23.344007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.658117, 34.320198, 23.073025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616669, 0.613168, 0.493704,
		0.768788, -0.334152, -0.545259,
		-0.169363, 0.715798, -0.677457,
		20.607307, 34.534939, 22.869787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.319151, 34.355175, 23.210625>,  <20.725863, 34.033878, 23.344007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.319151, 34.355175, 23.210625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035862, 34.614876, 23.099705>,  <20.865889, 34.770695, 23.033152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035862, 34.614876, 23.099705>,  <21.319151, 34.355175, 23.210625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.035862, 34.614876, 23.099705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500414, 0.738719, 0.451531,
		0.498005, 0.181018, -0.848070,
		-0.708221, 0.649251, -0.277302,
		20.823397, 34.809650, 23.016514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.654585, 34.980957, 22.961439>,  <21.319151, 34.355175, 23.210625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.654585, 34.980957, 22.961439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.283340, 35.087509, 23.065479>,  <21.060595, 35.151440, 23.127903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.283340, 35.087509, 23.065479>,  <21.654585, 34.980957, 22.961439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.283340, 35.087509, 23.065479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371481, 0.616116, 0.694552,
		0.024765, 0.741243, -0.670779,
		-0.928110, 0.266382, 0.260100,
		21.004908, 35.167423, 23.143509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.629147, 35.736279, 23.116407>,  <21.654585, 34.980957, 22.961439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.629147, 35.736279, 23.116407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.297630, 35.628281, 23.312450>,  <21.098721, 35.563480, 23.430077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.297630, 35.628281, 23.312450>,  <21.629147, 35.736279, 23.116407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.297630, 35.628281, 23.312450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180830, 0.699651, 0.691223,
		-0.529532, 0.661506, -0.531042,
		-0.828793, -0.269996, 0.490107,
		21.048992, 35.547283, 23.459482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.267313, 36.360203, 23.193262>,  <21.629147, 35.736279, 23.116407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.267313, 36.360203, 23.193262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.123764, 36.106941, 23.467583>,  <21.037634, 35.954983, 23.632175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.123764, 36.106941, 23.467583>,  <21.267313, 36.360203, 23.193262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123764, 36.106941, 23.467583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116806, 0.698505, 0.706008,
		-0.926048, 0.333474, -0.176719,
		-0.358874, -0.633156, 0.685801,
		21.016102, 35.916996, 23.673323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.767391, 36.810280, 23.421209>,  <21.267313, 36.360203, 23.193262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.767391, 36.810280, 23.421209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.855694, 36.508804, 23.668827>,  <20.908676, 36.327919, 23.817398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.855694, 36.508804, 23.668827>,  <20.767391, 36.810280, 23.421209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.855694, 36.508804, 23.668827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167804, 0.654589, 0.737126,
		-0.960785, -0.058848, 0.270979,
		0.220758, -0.753691, 0.619044,
		20.921921, 36.282696, 23.854540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.985973, 37.533298, 23.788477>,  <20.767391, 36.810280, 23.421209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.985973, 37.533298, 23.788477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.278046, 37.735645, 23.972187>,  <21.453289, 37.857056, 24.082413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.278046, 37.735645, 23.972187>,  <20.985973, 37.533298, 23.788477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.278046, 37.735645, 23.972187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325257, 0.333782, -0.884758,
		-0.600869, 0.795416, 0.079184,
		0.730181, 0.505869, 0.459274,
		21.497101, 37.887405, 24.109970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.247734, 37.423668, 23.945335>,  <20.985973, 37.533298, 23.788477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.247734, 37.423668, 23.945335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.059048, 37.228443, 23.651592>,  <19.945837, 37.111309, 23.475348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.059048, 37.228443, 23.651592>,  <20.247734, 37.423668, 23.945335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.059048, 37.228443, 23.651592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881718, 0.268345, 0.388025,
		0.007679, 0.830532, -0.556918,
		-0.471714, -0.488065, -0.734356,
		19.917534, 37.082024, 23.431286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603447, 37.656212, 24.055059>,  <20.247734, 37.423668, 23.945335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603447, 37.656212, 24.055059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.541332, 37.371868, 23.780666>,  <19.504063, 37.201263, 23.616032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.541332, 37.371868, 23.780666>,  <19.603447, 37.656212, 24.055059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.541332, 37.371868, 23.780666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987276, 0.087621, 0.132693,
		-0.034219, 0.697859, -0.715418,
		-0.155287, -0.710856, -0.685981,
		19.494745, 37.158611, 23.574873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186422, 37.843845, 23.466772>,  <19.603447, 37.656212, 24.055059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186422, 37.843845, 23.466772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.136824, 37.460453, 23.569492>,  <19.107065, 37.230419, 23.631124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.136824, 37.460453, 23.569492>,  <19.186422, 37.843845, 23.466772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.136824, 37.460453, 23.569492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967675, 0.174079, 0.182486,
		-0.219613, -0.225873, -0.949079,
		-0.123996, -0.958477, 0.256802,
		19.099625, 37.172909, 23.646532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540588, 37.751354, 23.215218>,  <19.186422, 37.843845, 23.466772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540588, 37.751354, 23.215218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582317, 37.422981, 23.439785>,  <18.607355, 37.225960, 23.574526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582317, 37.422981, 23.439785>,  <18.540588, 37.751354, 23.215218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582317, 37.422981, 23.439785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972933, 0.032800, 0.228746,
		-0.206199, -0.570088, -0.795287,
		0.104320, -0.820929, 0.561421,
		18.613613, 37.176704, 23.608212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020220, 37.236828, 22.978045>,  <18.540588, 37.751354, 23.215218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020220, 37.236828, 22.978045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.149908, 37.136948, 23.343018>,  <18.227720, 37.077019, 23.562002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.149908, 37.136948, 23.343018>,  <18.020220, 37.236828, 22.978045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.149908, 37.136948, 23.343018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923614, -0.292065, 0.248266,
		0.204498, -0.923228, -0.325317,
		0.324220, -0.249698, 0.912433,
		18.247173, 37.062038, 23.616747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.092796, 25.334465, 28.016340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.470757, 25.436012, 28.099014>,  <32.697533, 25.496941, 28.148619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.470757, 25.436012, 28.099014>,  <32.092796, 25.334465, 28.016340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470757, 25.436012, 28.099014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107282, 0.836632, -0.537157,
		-0.309285, 0.485385, 0.817768,
		0.944898, 0.253867, 0.206685,
		32.754227, 25.512173, 28.161020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090034, 25.933939, 28.324987>,  <32.092796, 25.334465, 28.016340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090034, 25.933939, 28.324987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.459000, 25.917603, 28.171368>,  <32.680378, 25.907801, 28.079197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.459000, 25.917603, 28.171368>,  <32.090034, 25.933939, 28.324987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459000, 25.917603, 28.171368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146483, 0.883097, -0.445737,
		0.357355, 0.467409, 0.808595,
		0.922410, -0.040841, -0.384047,
		32.735722, 25.905350, 28.056154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243446, 26.604279, 28.311090>,  <32.090034, 25.933939, 28.324987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243446, 26.604279, 28.311090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.515411, 26.443439, 28.065804>,  <32.678589, 26.346935, 27.918631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.515411, 26.443439, 28.065804>,  <32.243446, 26.604279, 28.311090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515411, 26.443439, 28.065804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217779, 0.909246, -0.354746,
		0.700210, 0.107649, 0.705775,
		0.679911, -0.402099, -0.613219,
		32.719383, 26.322809, 27.881838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824360, 27.052361, 28.238842>,  <32.243446, 26.604279, 28.311090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824360, 27.052361, 28.238842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.856628, 26.818348, 27.916046>,  <32.875988, 26.677940, 27.722368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.856628, 26.818348, 27.916046>,  <32.824360, 27.052361, 28.238842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856628, 26.818348, 27.916046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353676, 0.773744, -0.525579,
		0.931883, -0.243015, 0.269328,
		0.080668, -0.585033, -0.806987,
		32.880829, 26.642838, 27.673950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535618, 27.247887, 27.977503>,  <32.824360, 27.052361, 28.238842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535618, 27.247887, 27.977503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.287285, 27.097054, 27.702583>,  <33.138287, 27.006554, 27.537632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.287285, 27.097054, 27.702583>,  <33.535618, 27.247887, 27.977503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287285, 27.097054, 27.702583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192850, 0.776315, -0.600120,
		0.759853, -0.505120, -0.409242,
		-0.620833, -0.377081, -0.687297,
		33.101036, 26.983929, 27.496395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928547, 27.340761, 27.377491>,  <33.535618, 27.247887, 27.977503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928547, 27.340761, 27.377491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.560093, 27.251251, 27.250099>,  <33.339020, 27.197546, 27.173664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.560093, 27.251251, 27.250099>,  <33.928547, 27.340761, 27.377491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560093, 27.251251, 27.250099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052157, 0.739875, -0.670720,
		0.385723, -0.634437, -0.669856,
		-0.921139, -0.223774, -0.318477,
		33.283752, 27.184118, 27.154556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891212, 27.316406, 26.629732>,  <33.928547, 27.340761, 27.377491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891212, 27.316406, 26.629732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.502090, 27.356293, 26.713360>,  <33.268616, 27.380224, 26.763536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.502090, 27.356293, 26.713360>,  <33.891212, 27.316406, 26.629732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502090, 27.356293, 26.713360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103030, 0.622117, -0.776115,
		-0.207456, -0.776548, -0.594924,
		-0.972803, 0.099715, 0.209070,
		33.210251, 27.386208, 26.776081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591507, 27.200390, 25.993053>,  <33.891212, 27.316406, 26.629732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591507, 27.200390, 25.993053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328011, 27.397697, 26.220295>,  <33.169910, 27.516083, 26.356640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328011, 27.397697, 26.220295>,  <33.591507, 27.200390, 25.993053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328011, 27.397697, 26.220295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177665, 0.631748, -0.754540,
		-0.731091, -0.597979, -0.328522,
		-0.658743, 0.493270, 0.568105,
		33.130386, 27.545679, 26.390726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933689, 27.367908, 25.650532>,  <33.591507, 27.200390, 25.993053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933689, 27.367908, 25.650532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.002369, 27.630856, 25.944031>,  <33.043579, 27.788624, 26.120131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.002369, 27.630856, 25.944031>,  <32.933689, 27.367908, 25.650532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002369, 27.630856, 25.944031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295767, 0.744846, -0.598102,
		-0.939702, -0.114322, 0.322320,
		0.171703, 0.657369, 0.733746,
		33.053879, 27.828066, 26.164154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535587, 27.879908, 25.367460>,  <32.933689, 27.367908, 25.650532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535587, 27.879908, 25.367460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.720585, 28.074802, 25.663757>,  <32.831581, 28.191740, 25.841536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.720585, 28.074802, 25.663757>,  <32.535587, 27.879908, 25.367460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720585, 28.074802, 25.663757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348084, 0.868169, -0.353724,
		-0.815438, -0.094247, 0.571120,
		0.462491, 0.487238, 0.740744,
		32.859333, 28.220974, 25.885981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069794, 28.399151, 25.496689>,  <32.535587, 27.879908, 25.367460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069794, 28.399151, 25.496689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.416164, 28.522980, 25.653835>,  <32.623985, 28.597277, 25.748123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.416164, 28.522980, 25.653835>,  <32.069794, 28.399151, 25.496689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416164, 28.522980, 25.653835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197190, 0.933125, -0.300656,
		-0.459666, 0.182876, 0.869059,
		0.865924, 0.309571, 0.392864,
		32.675941, 28.615850, 25.771694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881317, 29.054571, 25.885714>,  <32.069794, 28.399151, 25.496689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881317, 29.054571, 25.885714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.267899, 29.035233, 25.784813>,  <32.499847, 29.023630, 25.724274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.267899, 29.035233, 25.784813>,  <31.881317, 29.054571, 25.885714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267899, 29.035233, 25.784813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056145, 0.918605, -0.391169,
		0.250630, 0.392210, 0.885074,
		0.966454, -0.048346, -0.252250,
		32.557835, 29.020729, 25.709137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188320, 29.624146, 26.160488>,  <31.881317, 29.054571, 25.885714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188320, 29.624146, 26.160488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.440998, 29.513275, 25.870899>,  <32.592606, 29.446753, 25.697145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.440998, 29.513275, 25.870899>,  <32.188320, 29.624146, 26.160488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440998, 29.513275, 25.870899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121539, 0.886937, -0.445614,
		0.765632, 0.369482, 0.526584,
		0.631693, -0.277175, -0.723974,
		32.630505, 29.430122, 25.653708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731380, 30.057976, 26.145380>,  <32.188320, 29.624146, 26.160488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731380, 30.057976, 26.145380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.761093, 29.894691, 25.781437>,  <32.778923, 29.796721, 25.563070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.761093, 29.894691, 25.781437>,  <32.731380, 30.057976, 26.145380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761093, 29.894691, 25.781437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120003, 0.902091, -0.414525,
		0.989991, 0.139979, 0.018024,
		0.074284, -0.408213, -0.909860,
		32.783379, 29.772228, 25.508478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173222, 30.545263, 25.840454>,  <32.731380, 30.057976, 26.145380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173222, 30.545263, 25.840454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.022858, 30.351570, 25.524426>,  <32.932640, 30.235353, 25.334808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.022858, 30.351570, 25.524426>,  <33.173222, 30.545263, 25.840454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022858, 30.351570, 25.524426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026709, 0.857910, -0.513105,
		0.926271, -0.171779, -0.335430,
		-0.375909, -0.484234, -0.790070,
		32.910084, 30.206301, 25.287405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479198, 30.789431, 25.195721>,  <33.173222, 30.545263, 25.840454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479198, 30.789431, 25.195721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.131294, 30.622379, 25.090572>,  <32.922550, 30.522148, 25.027483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.131294, 30.622379, 25.090572>,  <33.479198, 30.789431, 25.195721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131294, 30.622379, 25.090572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187234, 0.772152, -0.607227,
		0.456571, -0.478924, -0.749783,
		-0.869762, -0.417628, -0.262871,
		32.870365, 30.497091, 25.011711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537178, 30.878536, 24.407984>,  <33.479198, 30.789431, 25.195721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537178, 30.878536, 24.407984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.158745, 30.826332, 24.526573>,  <32.931686, 30.795010, 24.597727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.158745, 30.826332, 24.526573>,  <33.537178, 30.878536, 24.407984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158745, 30.826332, 24.526573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284512, 0.772355, -0.567909,
		-0.154866, -0.621639, -0.767842,
		-0.946081, -0.130510, 0.296475,
		32.874920, 30.787178, 24.615515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180424, 30.969000, 23.769922>,  <33.537178, 30.878536, 24.407984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180424, 30.969000, 23.769922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.901810, 31.014790, 24.053257>,  <32.734642, 31.042263, 24.223257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.901810, 31.014790, 24.053257>,  <33.180424, 30.969000, 23.769922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901810, 31.014790, 24.053257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418807, 0.736721, -0.530888,
		-0.582617, -0.666437, -0.465208,
		-0.696532, 0.114472, 0.708335,
		32.692848, 31.049131, 24.265757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551128, 30.883995, 23.460659>,  <33.180424, 30.969000, 23.769922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551128, 30.883995, 23.460659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.480473, 31.124172, 23.772625>,  <32.438080, 31.268278, 23.959805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.480473, 31.124172, 23.772625>,  <32.551128, 30.883995, 23.460659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480473, 31.124172, 23.772625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459627, 0.650357, -0.604797,
		-0.870369, -0.465299, 0.161103,
		-0.176637, 0.600444, 0.779915,
		32.427483, 31.304306, 24.006599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879114, 31.176418, 23.392174>,  <32.551128, 30.883995, 23.460659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879114, 31.176418, 23.392174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.083275, 31.411518, 23.643265>,  <32.205772, 31.552578, 23.793919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.083275, 31.411518, 23.643265>,  <31.879114, 31.176418, 23.392174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083275, 31.411518, 23.643265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416848, 0.807575, -0.417206,
		-0.752148, -0.048723, 0.657190,
		0.510403, 0.587749, 0.627726,
		32.236397, 31.587843, 23.831583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634390, 31.731979, 23.125048>,  <31.879114, 31.176418, 23.392174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634390, 31.731979, 23.125048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.888460, 31.876064, 23.398338>,  <32.040901, 31.962515, 23.562313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.888460, 31.876064, 23.398338>,  <31.634390, 31.731979, 23.125048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888460, 31.876064, 23.398338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099476, 0.915372, -0.390126,
		-0.765933, 0.179835, 0.617256,
		0.635177, 0.360213, 0.683225,
		32.079014, 31.984129, 23.603306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254423, 32.307568, 23.294960>,  <31.634390, 31.731979, 23.125048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254423, 32.307568, 23.294960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.640038, 32.386444, 23.366234>,  <31.871407, 32.433769, 23.408998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.640038, 32.386444, 23.366234>,  <31.254423, 32.307568, 23.294960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640038, 32.386444, 23.366234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121469, 0.923233, -0.364535,
		-0.236391, 0.329781, 0.913983,
		0.964036, 0.197193, 0.178186,
		31.929249, 32.445602, 23.419689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782515, 32.065987, 22.942226>,  <31.254423, 32.307568, 23.294960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782515, 32.065987, 22.942226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.403275, 32.145897, 22.843277>,  <30.175730, 32.193844, 22.783907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.403275, 32.145897, 22.843277>,  <30.782515, 32.065987, 22.942226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403275, 32.145897, 22.843277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311171, -0.742958, 0.592610,
		-0.065400, 0.638830, 0.766563,
		-0.948101, 0.199775, -0.247375,
		30.118845, 32.205830, 22.769064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426977, 31.970110, 23.584105>,  <30.782515, 32.065987, 22.942226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426977, 31.970110, 23.584105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.172033, 31.922043, 23.279648>,  <30.019068, 31.893202, 23.096973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.172033, 31.922043, 23.279648>,  <30.426977, 31.970110, 23.584105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172033, 31.922043, 23.279648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420675, -0.773318, 0.474354,
		-0.645606, 0.622526, 0.442329,
		-0.637359, -0.120169, -0.761139,
		29.980825, 31.885992, 23.051306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873249, 31.908258, 23.985929>,  <30.426977, 31.970110, 23.584105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873249, 31.908258, 23.985929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.790535, 31.754562, 23.626019>,  <29.740906, 31.662344, 23.410072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.790535, 31.754562, 23.626019>,  <29.873249, 31.908258, 23.985929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790535, 31.754562, 23.626019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284971, -0.856126, 0.431092,
		-0.935966, 0.345554, 0.067537,
		-0.206785, -0.384241, -0.899777,
		29.728498, 31.639290, 23.356085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304705, 31.630362, 24.163986>,  <29.873249, 31.908258, 23.985929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304705, 31.630362, 24.163986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.387194, 31.444908, 23.819309>,  <29.436687, 31.333635, 23.612503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.387194, 31.444908, 23.819309>,  <29.304705, 31.630362, 24.163986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387194, 31.444908, 23.819309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230763, -0.878827, 0.417627,
		-0.950905, 0.112722, -0.288224,
		0.206224, -0.463635, -0.861693,
		29.449060, 31.305817, 23.560802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737696, 31.187021, 23.889132>,  <29.304705, 31.630362, 24.163986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737696, 31.187021, 23.889132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.046255, 31.024330, 23.693367>,  <29.231390, 30.926716, 23.575909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.046255, 31.024330, 23.693367>,  <28.737696, 31.187021, 23.889132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046255, 31.024330, 23.693367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226737, -0.894279, 0.385817,
		-0.594590, -0.186651, -0.782064,
		0.771396, -0.406726, -0.489409,
		29.277674, 30.902311, 23.546545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513470, 30.528467, 23.613514>,  <28.737696, 31.187021, 23.889132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513470, 30.528467, 23.613514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.911268, 30.501781, 23.645828>,  <29.149948, 30.485769, 23.665216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.911268, 30.501781, 23.645828>,  <28.513470, 30.528467, 23.613514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911268, 30.501781, 23.645828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095662, -0.892653, 0.440476,
		0.042727, -0.445780, -0.894122,
		0.994496, -0.066714, 0.080784,
		29.209618, 30.481768, 23.670063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721535, 29.741133, 23.442669>,  <28.513470, 30.528467, 23.613514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721535, 29.741133, 23.442669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.039560, 29.908268, 23.618526>,  <29.230375, 30.008549, 23.724041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.039560, 29.908268, 23.618526>,  <28.721535, 29.741133, 23.442669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039560, 29.908268, 23.618526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208473, -0.868953, 0.448842,
		0.569573, -0.265204, -0.777981,
		0.795063, 0.417837, 0.439644,
		29.278080, 30.033619, 23.750420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421476, 29.291468, 23.289276>,  <28.721535, 29.741133, 23.442669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421476, 29.291468, 23.289276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.482571, 29.515743, 23.614803>,  <29.519228, 29.650309, 23.810120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.482571, 29.515743, 23.614803>,  <29.421476, 29.291468, 23.289276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482571, 29.515743, 23.614803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363681, -0.797581, 0.481248,
		0.918917, 0.222467, -0.325731,
		0.152736, 0.560689, 0.813818,
		29.528391, 29.683950, 23.858948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036320, 29.071955, 23.425783>,  <29.421476, 29.291468, 23.289276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036320, 29.071955, 23.425783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.919889, 29.219051, 23.779064>,  <29.850031, 29.307308, 23.991032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.919889, 29.219051, 23.779064>,  <30.036320, 29.071955, 23.425783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919889, 29.219051, 23.779064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711272, -0.534214, 0.456845,
		0.639818, 0.761172, -0.106066,
		-0.291075, 0.367739, 0.883200,
		29.832567, 29.329372, 24.044024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636604, 29.026518, 23.989786>,  <30.036320, 29.071955, 23.425783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636604, 29.026518, 23.989786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.309990, 29.102127, 24.207973>,  <30.114021, 29.147491, 24.338886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.309990, 29.102127, 24.207973>,  <30.636604, 29.026518, 23.989786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309990, 29.102127, 24.207973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451950, -0.378569, 0.807730,
		0.359176, 0.906066, 0.223687,
		-0.816538, 0.189022, 0.545469,
		30.065029, 29.158834, 24.371614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912193, 29.225565, 24.622065>,  <30.636604, 29.026518, 23.989786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912193, 29.225565, 24.622065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.529968, 29.132324, 24.694244>,  <30.300632, 29.076380, 24.737553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.529968, 29.132324, 24.694244>,  <30.912193, 29.225565, 24.622065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529968, 29.132324, 24.694244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259723, -0.376201, 0.889391,
		-0.139434, 0.896737, 0.420026,
		-0.955564, -0.233102, 0.180448,
		30.243299, 29.062393, 24.748379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806173, 29.533468, 25.291653>,  <30.912193, 29.225565, 24.622065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806173, 29.533468, 25.291653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.551994, 29.235565, 25.210129>,  <30.399487, 29.056824, 25.161215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.551994, 29.235565, 25.210129>,  <30.806173, 29.533468, 25.291653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551994, 29.235565, 25.210129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146198, -0.375227, 0.915331,
		-0.758177, 0.551849, 0.347319,
		-0.635448, -0.744760, -0.203809,
		30.361361, 29.012136, 25.148987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582756, 29.237631, 25.861483>,  <30.806173, 29.533468, 25.291653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582756, 29.237631, 25.861483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.430208, 28.934837, 25.649242>,  <30.338680, 28.753162, 25.521898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.430208, 28.934837, 25.649242>,  <30.582756, 29.237631, 25.861483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430208, 28.934837, 25.649242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007899, -0.571289, 0.820711,
		-0.924389, 0.317185, 0.211892,
		-0.381369, -0.756983, -0.530598,
		30.315798, 28.707743, 25.490063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978575, 28.931969, 26.237217>,  <30.582756, 29.237631, 25.861483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978575, 28.931969, 26.237217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.135872, 28.654011, 25.996391>,  <30.230249, 28.487236, 25.851896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.135872, 28.654011, 25.996391>,  <29.978575, 28.931969, 26.237217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135872, 28.654011, 25.996391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001405, -0.654364, 0.756179,
		-0.919434, -0.298207, -0.256347,
		0.393242, -0.694896, -0.602063,
		30.253845, 28.445541, 25.815773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543499, 28.344484, 26.346695>,  <29.978575, 28.931969, 26.237217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543499, 28.344484, 26.346695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.879740, 28.218945, 26.170113>,  <30.081484, 28.143621, 26.064163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.879740, 28.218945, 26.170113>,  <29.543499, 28.344484, 26.346695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879740, 28.218945, 26.170113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042843, -0.850995, 0.523423,
		-0.539954, -0.421078, -0.728796,
		0.840604, -0.313848, -0.441458,
		30.131922, 28.124790, 26.037676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408045, 27.671753, 26.195877>,  <29.543499, 28.344484, 26.346695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408045, 27.671753, 26.195877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.807693, 27.682392, 26.208809>,  <30.047483, 27.688776, 26.216568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.807693, 27.682392, 26.208809>,  <29.408045, 27.671753, 26.195877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807693, 27.682392, 26.208809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005076, -0.843529, 0.537059,
		0.041555, -0.536425, -0.842924,
		0.999123, 0.026596, 0.032330,
		30.107431, 27.690371, 26.218508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560032, 26.951221, 26.357817>,  <29.408045, 27.671753, 26.195877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560032, 26.951221, 26.357817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.914051, 27.129253, 26.412354>,  <30.126463, 27.236073, 26.445076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.914051, 27.129253, 26.412354>,  <29.560032, 26.951221, 26.357817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914051, 27.129253, 26.412354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315341, -0.788717, 0.527717,
		0.342414, -0.424061, -0.838406,
		0.885049, 0.445082, 0.136344,
		30.179565, 27.262777, 26.453257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078785, 26.434753, 26.086702>,  <29.560032, 26.951221, 26.357817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078785, 26.434753, 26.086702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.242575, 26.689846, 26.347664>,  <30.340849, 26.842901, 26.504240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.242575, 26.689846, 26.347664>,  <30.078785, 26.434753, 26.086702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242575, 26.689846, 26.347664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225163, -0.763623, 0.605130,
		0.884100, -0.100888, -0.456276,
		0.409473, 0.637732, 0.652403,
		30.365417, 26.881166, 26.543385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.541451, 25.954824, 26.380810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504805, 26.252708, 26.645237>,  <30.482817, 26.431438, 26.803894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504805, 26.252708, 26.645237>,  <30.541451, 25.954824, 26.380810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504805, 26.252708, 26.645237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048735, -0.666418, 0.743984,
		0.994601, 0.035942, 0.097346,
		-0.091614, 0.744711, 0.661069,
		30.477320, 26.476122, 26.843557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108366, 26.011288, 26.858786>,  <30.541451, 25.954824, 26.380810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108366, 26.011288, 26.858786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.825102, 26.199707, 27.069164>,  <30.655144, 26.312757, 27.195393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.825102, 26.199707, 27.069164>,  <31.108366, 26.011288, 26.858786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825102, 26.199707, 27.069164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235029, -0.545164, 0.804710,
		0.665784, 0.693478, 0.275354,
		-0.708161, 0.471047, 0.525949,
		30.612654, 26.341021, 27.226950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389500, 26.163227, 27.521999>,  <31.108366, 26.011288, 26.858786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389500, 26.163227, 27.521999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.000025, 26.232498, 27.581249>,  <30.766340, 26.274061, 27.616800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.000025, 26.232498, 27.581249>,  <31.389500, 26.163227, 27.521999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000025, 26.232498, 27.581249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039551, -0.511716, 0.858244,
		0.224428, 0.841520, 0.491402,
		-0.973688, 0.173178, 0.148126,
		30.707918, 26.284452, 27.625687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372149, 26.425133, 28.165300>,  <31.389500, 26.163227, 27.521999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372149, 26.425133, 28.165300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.004959, 26.274498, 28.115498>,  <30.784645, 26.184116, 28.085615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.004959, 26.274498, 28.115498>,  <31.372149, 26.425133, 28.165300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004959, 26.274498, 28.115498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127840, -0.578076, 0.805906,
		-0.375470, 0.723885, 0.578803,
		-0.917976, -0.376588, -0.124508,
		30.729567, 26.161522, 28.078146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056534, 26.443514, 28.889013>,  <31.372149, 26.425133, 28.165300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056534, 26.443514, 28.889013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888390, 26.155327, 28.668388>,  <30.787504, 25.982414, 28.536013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888390, 26.155327, 28.668388>,  <31.056534, 26.443514, 28.889013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888390, 26.155327, 28.668388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015750, -0.613582, 0.789474,
		-0.907221, 0.323176, 0.269273,
		-0.420360, -0.720468, -0.551564,
		30.762281, 25.939186, 28.502918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512094, 26.155008, 29.306726>,  <31.056534, 26.443514, 28.889013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512094, 26.155008, 29.306726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.568584, 25.869495, 29.032333>,  <30.602478, 25.698187, 28.867699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.568584, 25.869495, 29.032333>,  <30.512094, 26.155008, 29.306726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568584, 25.869495, 29.032333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038354, -0.688461, 0.724259,
		-0.989235, -0.128592, -0.069850,
		0.141223, -0.713783, -0.685981,
		30.610950, 25.655361, 28.826538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936655, 25.602419, 29.439365>,  <30.512094, 26.155008, 29.306726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936655, 25.602419, 29.439365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.229361, 25.422253, 29.234760>,  <30.404984, 25.314154, 29.111998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.229361, 25.422253, 29.234760>,  <29.936655, 25.602419, 29.439365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229361, 25.422253, 29.234760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099793, -0.813226, 0.573327,
		-0.674213, -0.368494, -0.640038,
		0.731763, -0.450416, -0.511515,
		30.448891, 25.287128, 29.081306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622730, 25.003355, 29.218735>,  <29.936655, 25.602419, 29.439365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622730, 25.003355, 29.218735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.010504, 24.911507, 29.184155>,  <30.243168, 24.856398, 29.163406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.010504, 24.911507, 29.184155>,  <29.622730, 25.003355, 29.218735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010504, 24.911507, 29.184155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170371, -0.883536, 0.436277,
		-0.176559, -0.408213, -0.895650,
		0.969433, -0.229621, -0.086449,
		30.301334, 24.842621, 29.158220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631258, 24.317736, 28.876118>,  <29.622730, 25.003355, 29.218735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631258, 24.317736, 28.876118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.985415, 24.367180, 29.055363>,  <30.197908, 24.396847, 29.162910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.985415, 24.367180, 29.055363>,  <29.631258, 24.317736, 28.876118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985415, 24.367180, 29.055363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074079, -0.914158, 0.398531,
		0.458910, -0.386051, -0.800229,
		0.885389, 0.123610, 0.448115,
		30.251032, 24.404263, 29.189796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910807, 23.699347, 28.892176>,  <29.631258, 24.317736, 28.876118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910807, 23.699347, 28.892176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.165150, 23.856869, 29.157688>,  <30.317755, 23.951382, 29.316996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.165150, 23.856869, 29.157688>,  <29.910807, 23.699347, 28.892176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165150, 23.856869, 29.157688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135544, -0.903645, 0.406268,
		0.759812, -0.168356, -0.627966,
		0.635856, 0.393805, 0.663780,
		30.355907, 23.975010, 29.356823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629126, 23.313711, 28.797779>,  <29.910807, 23.699347, 28.892176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629126, 23.313711, 28.797779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.562822, 23.495872, 29.147667>,  <30.523041, 23.605169, 29.357599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.562822, 23.495872, 29.147667>,  <30.629126, 23.313711, 28.797779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562822, 23.495872, 29.147667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105821, -0.890080, 0.443351,
		0.980473, -0.019075, 0.195728,
		-0.165756, 0.455406, 0.874717,
		30.513096, 23.632494, 29.410082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292517, 23.237564, 29.133230>,  <30.629126, 23.313711, 28.797779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292517, 23.237564, 29.133230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997591, 23.294621, 29.397358>,  <30.820635, 23.328854, 29.555834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997591, 23.294621, 29.397358>,  <31.292517, 23.237564, 29.133230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997591, 23.294621, 29.397358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131570, -0.928416, 0.347466,
		0.662612, 0.343070, 0.665768,
		-0.737315, 0.142640, 0.660318,
		30.776396, 23.337412, 29.595453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635351, 23.104778, 29.792574>,  <31.292517, 23.237564, 29.133230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635351, 23.104778, 29.792574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.244200, 23.090618, 29.875034>,  <31.009508, 23.082121, 29.924511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.244200, 23.090618, 29.875034>,  <31.635351, 23.104778, 29.792574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244200, 23.090618, 29.875034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174521, -0.681366, 0.710832,
		0.115300, 0.731086, 0.672472,
		-0.977880, -0.035401, 0.206151,
		30.950836, 23.079998, 29.936880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575161, 23.115444, 30.567041>,  <31.635351, 23.104778, 29.792574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575161, 23.115444, 30.567041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.222363, 22.973171, 30.443382>,  <31.010683, 22.887808, 30.369186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.222363, 22.973171, 30.443382>,  <31.575161, 23.115444, 30.567041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222363, 22.973171, 30.443382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006132, -0.664612, 0.747164,
		-0.471215, 0.657101, 0.588367,
		-0.881997, -0.355682, -0.309145,
		30.957764, 22.866467, 30.350639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119534, 23.223087, 31.026068>,  <31.575161, 23.115444, 30.567041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119534, 23.223087, 31.026068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.965542, 22.915630, 30.821724>,  <30.873146, 22.731155, 30.699118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.965542, 22.915630, 30.821724>,  <31.119534, 23.223087, 31.026068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965542, 22.915630, 30.821724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051875, -0.534625, 0.843495,
		-0.921466, 0.351229, 0.165946,
		-0.384979, -0.768644, -0.510859,
		30.850048, 22.685038, 30.668467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461555, 23.127478, 31.340542>,  <31.119534, 23.223087, 31.026068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461555, 23.127478, 31.340542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578348, 22.791679, 31.157242>,  <30.648424, 22.590200, 31.047262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578348, 22.791679, 31.157242>,  <30.461555, 23.127478, 31.340542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578348, 22.791679, 31.157242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242284, -0.528423, 0.813675,
		-0.925227, -0.126552, -0.357687,
		0.291983, -0.839496, -0.458250,
		30.665943, 22.539831, 31.019768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885918, 22.621393, 31.375582>,  <30.461555, 23.127478, 31.340542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885918, 22.621393, 31.375582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.202408, 22.391056, 31.293247>,  <30.392302, 22.252853, 31.243847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.202408, 22.391056, 31.293247>,  <29.885918, 22.621393, 31.375582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202408, 22.391056, 31.293247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334488, -0.689306, 0.642631,
		-0.511940, -0.439615, -0.738008,
		0.791224, -0.575844, -0.205837,
		30.439775, 22.218304, 31.231495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704178, 21.963825, 31.519930>,  <29.885918, 22.621393, 31.375582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704178, 21.963825, 31.519930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103830, 21.950043, 31.529316>,  <30.343622, 21.941774, 31.534948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103830, 21.950043, 31.529316>,  <29.704178, 21.963825, 31.519930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103830, 21.950043, 31.529316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037970, -0.519833, 0.853424,
		-0.017206, -0.853573, -0.520689,
		0.999131, -0.034455, 0.023466,
		30.403570, 21.939707, 31.536356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682369, 21.483938, 31.958391>,  <29.704178, 21.963825, 31.519930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682369, 21.483938, 31.958391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.063343, 21.605679, 31.952148>,  <30.291927, 21.678722, 31.948402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.063343, 21.605679, 31.952148>,  <29.682369, 21.483938, 31.958391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063343, 21.605679, 31.952148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145134, -0.407959, 0.901391,
		0.267972, -0.860779, -0.432725,
		0.952433, 0.304351, -0.015607,
		30.349073, 21.696983, 31.947466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065840, 20.894175, 31.998045>,  <29.682369, 21.483938, 31.958391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065840, 20.894175, 31.998045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.304417, 21.191750, 32.118584>,  <30.447563, 21.370295, 32.190907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.304417, 21.191750, 32.118584>,  <30.065840, 20.894175, 31.998045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304417, 21.191750, 32.118584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179671, -0.489656, 0.853203,
		0.782288, -0.454743, -0.425716,
		0.596442, 0.743940, 0.301348,
		30.483349, 21.414932, 32.208988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671938, 20.558336, 32.275852>,  <30.065840, 20.894175, 31.998045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671938, 20.558336, 32.275852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.674393, 20.921799, 32.442852>,  <30.675865, 21.139875, 32.543053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.674393, 20.921799, 32.442852>,  <30.671938, 20.558336, 32.275852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674393, 20.921799, 32.442852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271599, -0.403331, 0.873818,
		0.962391, 0.108031, -0.249264,
		0.006137, 0.908655, 0.417504,
		30.676233, 21.194395, 32.568104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257553, 20.585352, 32.681862>,  <30.671938, 20.558336, 32.275852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257553, 20.585352, 32.681862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.035873, 20.885677, 32.825607>,  <30.902864, 21.065872, 32.911854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.035873, 20.885677, 32.825607>,  <31.257553, 20.585352, 32.681862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035873, 20.885677, 32.825607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121705, -0.353996, 0.927294,
		0.823437, 0.557644, 0.104808,
		-0.554202, 0.750813, 0.359362,
		30.869614, 21.110922, 32.933414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557652, 20.898382, 33.269230>,  <31.257553, 20.585352, 32.681862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557652, 20.898382, 33.269230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.162643, 20.925701, 33.326000>,  <30.925638, 20.942093, 33.360062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.162643, 20.925701, 33.326000>,  <31.557652, 20.898382, 33.269230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162643, 20.925701, 33.326000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111186, -0.335941, 0.935297,
		0.111558, 0.939404, 0.324154,
		-0.987518, 0.068298, 0.141926,
		30.866388, 20.946190, 33.368576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355289, 21.134010, 33.997978>,  <31.557652, 20.898382, 33.269230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355289, 21.134010, 33.997978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.030401, 20.961117, 33.841274>,  <30.835468, 20.857382, 33.747253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.030401, 20.961117, 33.841274>,  <31.355289, 21.134010, 33.997978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030401, 20.961117, 33.841274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143176, -0.503315, 0.852159,
		-0.565508, 0.748231, 0.346917,
		-0.812220, -0.432232, -0.391757,
		30.786736, 20.831448, 33.723747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985909, 20.721186, 34.208500>,  <31.355289, 21.134010, 33.997978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985909, 20.721186, 34.208500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357998, 20.603294, 34.121033>,  <32.581253, 20.532560, 34.068550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357998, 20.603294, 34.121033>,  <31.985909, 20.721186, 34.208500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357998, 20.603294, 34.121033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037210, 0.668525, -0.742758,
		0.365099, 0.682795, 0.632846,
		0.930225, -0.294729, -0.218671,
		32.637066, 20.514875, 34.055431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427258, 21.376820, 34.180634>,  <31.985909, 20.721186, 34.208500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427258, 21.376820, 34.180634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621769, 21.076283, 34.002190>,  <32.738476, 20.895960, 33.895123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621769, 21.076283, 34.002190>,  <32.427258, 21.376820, 34.180634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621769, 21.076283, 34.002190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359466, 0.637346, -0.681597,
		0.796438, 0.171089, 0.580013,
		0.486283, -0.751344, -0.446106,
		32.767654, 20.850880, 33.868359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150276, 21.613235, 34.130489>,  <32.427258, 21.376820, 34.180634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150276, 21.613235, 34.130489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.094513, 21.327408, 33.856274>,  <33.061054, 21.155912, 33.691746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.094513, 21.327408, 33.856274>,  <33.150276, 21.613235, 34.130489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094513, 21.327408, 33.856274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530920, 0.530444, -0.660873,
		0.835876, -0.456096, 0.305430,
		-0.139408, -0.714567, -0.685535,
		33.052689, 21.113037, 33.650612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722237, 21.526037, 33.744869>,  <33.150276, 21.613235, 34.130489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722237, 21.526037, 33.744869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444118, 21.368721, 33.504242>,  <33.277248, 21.274332, 33.359867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444118, 21.368721, 33.504242>,  <33.722237, 21.526037, 33.744869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444118, 21.368721, 33.504242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178116, 0.716599, -0.674360,
		0.696303, -0.576029, -0.428198,
		-0.695297, -0.393290, -0.601569,
		33.235527, 21.250734, 33.323772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085564, 21.621433, 33.109467>,  <33.722237, 21.526037, 33.744869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085564, 21.621433, 33.109467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.704609, 21.548096, 33.012020>,  <33.476036, 21.504093, 32.953552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.704609, 21.548096, 33.012020>,  <34.085564, 21.621433, 33.109467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704609, 21.548096, 33.012020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117791, 0.515718, -0.848622,
		0.281226, -0.836911, -0.469566,
		-0.952385, -0.183344, -0.243614,
		33.418892, 21.493092, 32.938934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091370, 21.409094, 32.480835>,  <34.085564, 21.621433, 33.109467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091370, 21.409094, 32.480835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.714550, 21.532440, 32.533669>,  <33.488457, 21.606449, 32.565369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.714550, 21.532440, 32.533669>,  <34.091370, 21.409094, 32.480835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714550, 21.532440, 32.533669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078576, 0.585605, -0.806779,
		-0.326131, -0.749651, -0.575901,
		-0.942054, 0.308367, 0.132079,
		33.431934, 21.624950, 32.573292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680855, 21.327106, 31.820282>,  <34.091370, 21.409094, 32.480835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680855, 21.327106, 31.820282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486164, 21.593678, 32.046192>,  <33.369350, 21.753620, 32.181740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486164, 21.593678, 32.046192>,  <33.680855, 21.327106, 31.820282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486164, 21.593678, 32.046192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077172, 0.676802, -0.732109,
		-0.870137, -0.312754, -0.380849,
		-0.486729, 0.666426, 0.564775,
		33.340145, 21.793606, 32.215626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328979, 21.624624, 31.349176>,  <33.680855, 21.327106, 31.820282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328979, 21.624624, 31.349176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238819, 21.868958, 31.652775>,  <33.184723, 22.015558, 31.834934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238819, 21.868958, 31.652775>,  <33.328979, 21.624624, 31.349176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238819, 21.868958, 31.652775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019811, 0.781757, -0.623268,
		-0.974064, -0.125449, -0.188311,
		-0.225402, 0.610834, 0.758997,
		33.171200, 22.052208, 31.880474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830864, 21.987532, 31.091295>,  <33.328979, 21.624624, 31.349176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830864, 21.987532, 31.091295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988388, 22.208374, 31.385258>,  <33.082905, 22.340879, 31.561636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988388, 22.208374, 31.385258>,  <32.830864, 21.987532, 31.091295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988388, 22.208374, 31.385258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098395, 0.769602, -0.630897,
		-0.913909, 0.320767, 0.248756,
		0.393814, 0.552106, 0.734908,
		33.106533, 22.374006, 31.605730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378307, 22.502338, 31.274496>,  <32.830864, 21.987532, 31.091295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378307, 22.502338, 31.274496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743259, 22.632748, 31.373512>,  <32.962231, 22.710993, 31.432922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743259, 22.632748, 31.373512>,  <32.378307, 22.502338, 31.274496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743259, 22.632748, 31.373512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124802, 0.797466, -0.590315,
		-0.389860, 0.507697, 0.768279,
		0.912378, 0.326023, 0.247539,
		33.016972, 22.730555, 31.447773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384686, 23.239119, 31.547762>,  <32.378307, 22.502338, 31.274496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384686, 23.239119, 31.547762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746578, 23.152882, 31.400799>,  <32.963715, 23.101139, 31.312620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746578, 23.152882, 31.400799>,  <32.384686, 23.239119, 31.547762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746578, 23.152882, 31.400799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043886, 0.810718, -0.583789,
		0.423725, 0.544294, 0.724017,
		0.904727, -0.215592, -0.367408,
		33.017998, 23.088203, 31.290577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548676, 23.830786, 31.432779>,  <32.384686, 23.239119, 31.547762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548676, 23.830786, 31.432779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.843704, 23.626488, 31.256084>,  <33.020721, 23.503910, 31.150068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.843704, 23.626488, 31.256084>,  <32.548676, 23.830786, 31.432779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843704, 23.626488, 31.256084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250569, 0.814464, -0.523320,
		0.627061, 0.275299, 0.728701,
		0.737570, -0.510743, -0.441737,
		33.064976, 23.473265, 31.123564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108986, 24.218683, 31.421518>,  <32.548676, 23.830786, 31.432779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108986, 24.218683, 31.421518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135822, 23.954681, 31.122215>,  <33.151924, 23.796280, 30.942633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135822, 23.954681, 31.122215>,  <33.108986, 24.218683, 31.421518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135822, 23.954681, 31.122215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064490, 0.751249, -0.656861,
		0.995661, -0.004188, 0.092963,
		0.067088, -0.660006, -0.748259,
		33.155949, 23.756680, 30.897738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531937, 24.640545, 30.964613>,  <33.108986, 24.218683, 31.421518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531937, 24.640545, 30.964613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400894, 24.349941, 30.723000>,  <33.322269, 24.175579, 30.578032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400894, 24.349941, 30.723000>,  <33.531937, 24.640545, 30.964613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400894, 24.349941, 30.723000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048049, 0.651300, -0.757297,
		0.943591, -0.219075, -0.248280,
		-0.327609, -0.726508, -0.604035,
		33.302612, 24.131989, 30.541790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582569, 24.948277, 30.328104>,  <33.531937, 24.640545, 30.964613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582569, 24.948277, 30.328104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.428997, 24.593178, 30.226509>,  <33.336853, 24.380119, 30.165552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.428997, 24.593178, 30.226509>,  <33.582569, 24.948277, 30.328104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428997, 24.593178, 30.226509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001314, 0.274542, -0.961574,
		0.923363, -0.369507, -0.104238,
		-0.383926, -0.887745, -0.253988,
		33.313820, 24.326855, 30.150312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043419, 24.482038, 29.900745>,  <33.582569, 24.948277, 30.328104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043419, 24.482038, 29.900745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648869, 24.442238, 29.848354>,  <33.412136, 24.418358, 29.816919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648869, 24.442238, 29.848354>,  <34.043419, 24.482038, 29.900745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648869, 24.442238, 29.848354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090843, 0.334294, -0.938081,
		0.137127, -0.937201, -0.320702,
		-0.986379, -0.099502, -0.130978,
		33.352955, 24.412388, 29.809061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047520, 24.354681, 29.175398>,  <34.043419, 24.482038, 29.900745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047520, 24.354681, 29.175398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660954, 24.393074, 29.270752>,  <33.429012, 24.416109, 29.327965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660954, 24.393074, 29.270752>,  <34.047520, 24.354681, 29.175398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660954, 24.393074, 29.270752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166413, 0.473123, -0.865136,
		-0.195824, -0.875752, -0.441261,
		-0.966416, 0.095983, 0.238385,
		33.371029, 24.421869, 29.342268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624950, 24.100380, 28.574944>,  <34.047520, 24.354681, 29.175398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624950, 24.100380, 28.574944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.407070, 24.363865, 28.782558>,  <33.276340, 24.521955, 28.907127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.407070, 24.363865, 28.782558>,  <33.624950, 24.100380, 28.574944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407070, 24.363865, 28.782558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031218, 0.602556, -0.797466,
		-0.838048, -0.450586, -0.307651,
		-0.544703, 0.658710, 0.519037,
		33.243660, 24.561478, 28.938269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952568, 24.119001, 28.233507>,  <33.624950, 24.100380, 28.574944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952568, 24.119001, 28.233507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015621, 24.459145, 28.434322>,  <33.053455, 24.663231, 28.554811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015621, 24.459145, 28.434322>,  <32.952568, 24.119001, 28.233507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015621, 24.459145, 28.434322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110128, 0.520360, -0.846816,
		-0.981337, 0.078201, 0.175676,
		0.157637, 0.850358, 0.502037,
		33.062912, 24.714252, 28.584934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426308, 24.581768, 27.982275>,  <32.952568, 24.119001, 28.233507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426308, 24.581768, 27.982275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683369, 24.826332, 28.166958>,  <32.837605, 24.973070, 28.277767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683369, 24.826332, 28.166958>,  <32.426308, 24.581768, 27.982275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683369, 24.826332, 28.166958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196077, 0.713809, -0.672333,
		-0.740644, 0.341545, 0.578613,
		0.642651, 0.611412, 0.461709,
		32.876163, 25.009756, 28.305471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.319613, 29.790924, 20.293411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.668129, 29.603321, 20.351223>,  <19.877239, 29.490759, 20.385910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.668129, 29.603321, 20.351223>,  <19.319613, 29.790924, 20.293411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.668129, 29.603321, 20.351223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292118, 0.732256, 0.615198,
		-0.394363, -0.493796, 0.775012,
		0.871289, -0.469006, 0.144528,
		19.929516, 29.462620, 20.394581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382856, 29.863846, 20.990156>,  <19.319613, 29.790924, 20.293411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382856, 29.863846, 20.990156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.752003, 29.778816, 20.861702>,  <19.973492, 29.727798, 20.784630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.752003, 29.778816, 20.861702>,  <19.382856, 29.863846, 20.990156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752003, 29.778816, 20.861702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382668, 0.600051, 0.702498,
		0.043362, -0.771200, 0.635114,
		0.922868, -0.212576, -0.321133,
		20.028864, 29.715044, 20.765362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.748310, 29.507614, 21.507923>,  <19.382856, 29.863846, 20.990156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.748310, 29.507614, 21.507923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.012968, 29.680031, 21.262508>,  <20.171762, 29.783482, 21.115259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.012968, 29.680031, 21.262508>,  <19.748310, 29.507614, 21.507923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.012968, 29.680031, 21.262508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419996, 0.464792, 0.779469,
		0.621153, -0.773414, 0.126490,
		0.661644, 0.431044, -0.613538,
		20.211462, 29.809343, 21.078447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.400700, 29.304661, 21.638611>,  <19.748310, 29.507614, 21.507923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.400700, 29.304661, 21.638611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.421618, 29.666943, 21.470345>,  <20.434168, 29.884312, 21.369385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.421618, 29.666943, 21.470345>,  <20.400700, 29.304661, 21.638611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.421618, 29.666943, 21.470345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496642, 0.341870, 0.797792,
		0.866379, -0.250641, -0.431934,
		0.052294, 0.905706, -0.420668,
		20.437305, 29.938654, 21.344145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.971317, 29.587725, 21.823275>,  <20.400700, 29.304661, 21.638611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.971317, 29.587725, 21.823275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.794104, 29.925709, 21.703434>,  <20.687777, 30.128500, 21.631529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.794104, 29.925709, 21.703434>,  <20.971317, 29.587725, 21.823275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794104, 29.925709, 21.703434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525157, 0.515450, 0.677142,
		0.726589, 0.142658, -0.672099,
		-0.443033, 0.844961, -0.299603,
		20.661194, 30.179197, 21.613554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.523571, 30.087339, 21.653889>,  <20.971317, 29.587725, 21.823275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.523571, 30.087339, 21.653889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.192724, 30.307167, 21.700958>,  <20.994215, 30.439064, 21.729200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.192724, 30.307167, 21.700958>,  <21.523571, 30.087339, 21.653889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.192724, 30.307167, 21.700958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524671, 0.679970, 0.512211,
		0.201480, 0.485400, -0.850760,
		-0.827119, 0.549570, 0.117675,
		20.944588, 30.472038, 21.736261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.762661, 30.850929, 21.672590>,  <21.523571, 30.087339, 21.653889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.762661, 30.850929, 21.672590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.396946, 30.848618, 21.834602>,  <21.177517, 30.847231, 21.931808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.396946, 30.848618, 21.834602>,  <21.762661, 30.850929, 21.672590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.396946, 30.848618, 21.834602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264410, 0.748984, 0.607545,
		-0.306870, 0.662563, -0.683258,
		-0.914286, -0.005777, 0.405029,
		21.122660, 30.846884, 21.956112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.472363, 31.464319, 21.563295>,  <21.762661, 30.850929, 21.672590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.472363, 31.464319, 21.563295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.272232, 31.334892, 21.884537>,  <21.152153, 31.257236, 22.077282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.272232, 31.334892, 21.884537>,  <21.472363, 31.464319, 21.563295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.272232, 31.334892, 21.884537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361669, 0.764651, 0.533390,
		-0.786683, 0.557327, -0.265550,
		-0.500326, -0.323568, 0.803105,
		21.122135, 31.237822, 22.125469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244884, 32.041725, 21.881783>,  <21.472363, 31.464319, 21.563295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244884, 32.041725, 21.881783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.222454, 31.783142, 22.186138>,  <21.208996, 31.627993, 22.368752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.222454, 31.783142, 22.186138>,  <21.244884, 32.041725, 21.881783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.222454, 31.783142, 22.186138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380851, 0.690617, 0.614818,
		-0.922934, 0.324263, 0.207474,
		-0.056078, -0.646453, 0.760890,
		21.205631, 31.589207, 22.414406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.882812, 32.368492, 22.464327>,  <21.244884, 32.041725, 21.881783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.882812, 32.368492, 22.464327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.120672, 32.081299, 22.609043>,  <21.263388, 31.908983, 22.695873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.120672, 32.081299, 22.609043>,  <20.882812, 32.368492, 22.464327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.120672, 32.081299, 22.609043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467137, 0.674795, 0.571344,
		-0.654350, -0.170743, 0.736663,
		0.594650, -0.717982, 0.361792,
		21.299067, 31.865904, 22.717581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.904558, 32.361080, 23.217117>,  <20.882812, 32.368492, 22.464327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.904558, 32.361080, 23.217117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.234695, 32.151363, 23.133286>,  <21.432777, 32.025532, 23.082987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.234695, 32.151363, 23.133286>,  <20.904558, 32.361080, 23.217117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.234695, 32.151363, 23.133286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528454, 0.586553, 0.613751,
		-0.198856, -0.617309, 0.761173,
		0.825343, -0.524294, -0.209580,
		21.482298, 31.994076, 23.070412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249565, 32.381626, 23.860542>,  <20.904558, 32.361080, 23.217117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249565, 32.381626, 23.860542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.530134, 32.257526, 23.603870>,  <21.698475, 32.183067, 23.449867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.530134, 32.257526, 23.603870>,  <21.249565, 32.381626, 23.860542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530134, 32.257526, 23.603870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700216, 0.468016, 0.539127,
		0.133051, -0.827469, 0.545520,
		0.701423, -0.310251, -0.641677,
		21.740561, 32.164452, 23.411367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.823662, 32.245625, 24.256365>,  <21.249565, 32.381626, 23.860542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.823662, 32.245625, 24.256365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.986515, 32.287376, 23.893410>,  <22.084227, 32.312428, 23.675636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.986515, 32.287376, 23.893410>,  <21.823662, 32.245625, 24.256365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.986515, 32.287376, 23.893410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653932, 0.660262, 0.369360,
		0.637666, -0.743747, 0.200558,
		0.407131, 0.104377, -0.907386,
		22.108654, 32.318687, 23.621195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653419, 32.215572, 24.285408>,  <21.823662, 32.245625, 24.256365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653419, 32.215572, 24.285408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.537241, 32.429733, 23.968174>,  <22.467533, 32.558231, 23.777834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.537241, 32.429733, 23.968174>,  <22.653419, 32.215572, 24.285408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.537241, 32.429733, 23.968174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646415, 0.720889, 0.249932,
		0.705541, -0.440070, -0.555474,
		-0.290447, 0.535404, -0.793084,
		22.450108, 32.590355, 23.730249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.294388, 32.498375, 23.928188>,  <22.653419, 32.215572, 24.285408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.294388, 32.498375, 23.928188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.999594, 32.731804, 23.791779>,  <22.822718, 32.871861, 23.709932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.999594, 32.731804, 23.791779>,  <23.294388, 32.498375, 23.928188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.999594, 32.731804, 23.791779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614619, 0.788541, 0.021141,
		0.281248, -0.194019, -0.939817,
		-0.736983, 0.583575, -0.341023,
		22.778500, 32.906876, 23.689472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.656599, 33.065449, 23.777000>,  <23.294388, 32.498375, 23.928188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.656599, 33.065449, 23.777000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.286621, 33.209393, 23.728046>,  <23.064634, 33.295757, 23.698673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.286621, 33.209393, 23.728046>,  <23.656599, 33.065449, 23.777000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.286621, 33.209393, 23.728046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353105, 0.932670, 0.073774,
		0.140695, 0.025022, -0.989737,
		-0.924944, 0.359861, -0.122387,
		23.009138, 33.317352, 23.691330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.755297, 33.679771, 23.384066>,  <23.656599, 33.065449, 23.777000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.755297, 33.679771, 23.384066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.390146, 33.716221, 23.543240>,  <23.171055, 33.738091, 23.638744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.390146, 33.716221, 23.543240>,  <23.755297, 33.679771, 23.384066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.390146, 33.716221, 23.543240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102439, 0.994713, 0.007218,
		-0.395173, 0.047353, -0.917385,
		-0.912877, 0.091124, 0.397934,
		23.116283, 33.743557, 23.662621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.299784, 34.183437, 22.972488>,  <23.755297, 33.679771, 23.384066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.299784, 34.183437, 22.972488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.168907, 34.169029, 23.350197>,  <23.090382, 34.160385, 23.576822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.168907, 34.169029, 23.350197>,  <23.299784, 34.183437, 22.972488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.168907, 34.169029, 23.350197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029371, 0.999178, 0.027941,
		-0.944502, -0.018592, -0.327979,
		-0.327190, -0.036024, 0.944272,
		23.070749, 34.158222, 23.633478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.806519, 34.652760, 23.024101>,  <23.299784, 34.183437, 22.972488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.806519, 34.652760, 23.024101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.916019, 34.615505, 23.407013>,  <22.981720, 34.593151, 23.636761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.916019, 34.615505, 23.407013>,  <22.806519, 34.652760, 23.024101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.916019, 34.615505, 23.407013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277526, 0.960615, 0.014099,
		-0.920890, 0.261810, 0.288820,
		0.273753, -0.093138, 0.957280,
		22.998146, 34.587563, 23.694197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.576099, 35.290684, 23.341532>,  <22.806519, 34.652760, 23.024101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.576099, 35.290684, 23.341532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.817867, 35.136932, 23.620651>,  <22.962929, 35.044682, 23.788124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.817867, 35.136932, 23.620651>,  <22.576099, 35.290684, 23.341532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.817867, 35.136932, 23.620651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365414, 0.912091, 0.185910,
		-0.707919, 0.142619, 0.691745,
		0.604420, -0.384383, 0.697801,
		22.999193, 35.021618, 23.829992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.589920, 35.832516, 23.912075>,  <22.576099, 35.290684, 23.341532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.589920, 35.832516, 23.912075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.930391, 35.623543, 23.932327>,  <23.134674, 35.498161, 23.944479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.930391, 35.623543, 23.932327>,  <22.589920, 35.832516, 23.912075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.930391, 35.623543, 23.932327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510339, 0.846288, 0.152809,
		-0.122680, -0.104230, 0.986958,
		0.851178, -0.522430, 0.050630,
		23.185745, 35.466812, 23.947515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.983912, 35.655983, 24.383419>,  <22.589920, 35.832516, 23.912075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.983912, 35.655983, 24.383419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.644329, 35.863083, 24.425770>,  <21.440578, 35.987343, 24.451180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.644329, 35.863083, 24.425770>,  <21.983912, 35.655983, 24.383419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644329, 35.863083, 24.425770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498452, -0.717962, -0.485876,
		-0.175545, -0.465263, 0.867591,
		-0.848958, 0.517746, 0.105877,
		21.389641, 36.018406, 24.457533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.336618, 35.308460, 24.571415>,  <21.983912, 35.655983, 24.383419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.336618, 35.308460, 24.571415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.193045, 35.621681, 24.368244>,  <21.106899, 35.809616, 24.246342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.193045, 35.621681, 24.368244>,  <21.336618, 35.308460, 24.571415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.193045, 35.621681, 24.368244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570291, -0.614790, -0.544795,
		-0.738873, 0.094120, 0.667239,
		-0.358936, 0.783054, -0.507928,
		21.085363, 35.856598, 24.215866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.566711, 35.147152, 24.573349>,  <21.336618, 35.308460, 24.571415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.566711, 35.147152, 24.573349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.675659, 35.389217, 24.274124>,  <20.741028, 35.534454, 24.094589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.675659, 35.389217, 24.274124>,  <20.566711, 35.147152, 24.573349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675659, 35.389217, 24.274124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419375, -0.625060, -0.658350,
		-0.865991, 0.493032, 0.083543,
		0.272368, 0.605161, -0.748061,
		20.757370, 35.570766, 24.049706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.974726, 35.250370, 24.070993>,  <20.566711, 35.147152, 24.573349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.974726, 35.250370, 24.070993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.313622, 35.316696, 23.869125>,  <20.516958, 35.356491, 23.748005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.313622, 35.316696, 23.869125>,  <19.974726, 35.250370, 24.070993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.313622, 35.316696, 23.869125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353052, -0.534084, -0.768185,
		-0.396916, 0.829010, -0.393954,
		0.847238, 0.165819, -0.504670,
		20.567793, 35.366444, 23.717724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772430, 35.419952, 23.356331>,  <19.974726, 35.250370, 24.070993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772430, 35.419952, 23.356331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.158689, 35.326637, 23.310535>,  <20.390444, 35.270649, 23.283058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.158689, 35.326637, 23.310535>,  <19.772430, 35.419952, 23.356331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.158689, 35.326637, 23.310535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222016, -0.511669, -0.830002,
		0.135048, 0.826906, -0.545884,
		0.965645, -0.233285, -0.114487,
		20.448383, 35.256653, 23.276190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.967672, 35.644474, 22.614098>,  <19.772430, 35.419952, 23.356331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.967672, 35.644474, 22.614098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.213064, 35.364552, 22.760475>,  <20.360298, 35.196598, 22.848303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.213064, 35.364552, 22.760475>,  <19.967672, 35.644474, 22.614098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.213064, 35.364552, 22.760475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212668, -0.592671, -0.776861,
		0.760537, 0.398763, -0.512417,
		0.613478, -0.699806, 0.365945,
		20.397108, 35.154610, 22.870258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.363358, 35.477104, 22.029316>,  <19.967672, 35.644474, 22.614098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.363358, 35.477104, 22.029316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.468832, 35.173100, 22.266922>,  <20.532118, 34.990696, 22.409485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.468832, 35.173100, 22.266922>,  <20.363358, 35.477104, 22.029316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.468832, 35.173100, 22.266922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227380, -0.647428, -0.727417,
		0.937425, 0.056744, -0.343531,
		0.263688, -0.760011, 0.594013,
		20.547939, 34.945095, 22.445126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.684727, 34.995167, 21.591883>,  <20.363358, 35.477104, 22.029316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.684727, 34.995167, 21.591883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.567413, 34.791824, 21.915749>,  <20.497026, 34.669819, 22.110067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.567413, 34.791824, 21.915749>,  <20.684727, 34.995167, 21.591883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.567413, 34.791824, 21.915749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273880, -0.766733, -0.580612,
		0.915956, -0.392033, 0.085639,
		-0.293281, -0.508360, 0.809664,
		20.479429, 34.639317, 22.158648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.887676, 34.310764, 21.484823>,  <20.684727, 34.995167, 21.591883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.887676, 34.310764, 21.484823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.627974, 34.248016, 21.782509>,  <20.472153, 34.210369, 21.961121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.627974, 34.248016, 21.782509>,  <20.887676, 34.310764, 21.484823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.627974, 34.248016, 21.782509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304605, -0.842965, -0.443424,
		0.696908, -0.514588, 0.499518,
		-0.649257, -0.156870, 0.744215,
		20.433197, 34.200954, 22.005774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.959148, 33.667366, 21.708796>,  <20.887676, 34.310764, 21.484823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.959148, 33.667366, 21.708796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.602148, 33.733814, 21.876534>,  <20.387949, 33.773685, 21.977177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.602148, 33.733814, 21.876534>,  <20.959148, 33.667366, 21.708796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.602148, 33.733814, 21.876534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395364, -0.735621, -0.550045,
		0.217103, -0.656708, 0.722220,
		-0.892499, 0.166123, 0.419344,
		20.334398, 33.783649, 22.002337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.633154, 33.037014, 21.901745>,  <20.959148, 33.667366, 21.708796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.633154, 33.037014, 21.901745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.343681, 33.304527, 21.833607>,  <20.169998, 33.465034, 21.792725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.343681, 33.304527, 21.833607>,  <20.633154, 33.037014, 21.901745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.343681, 33.304527, 21.833607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554629, -0.710482, -0.433130,
		-0.410697, -0.218969, 0.885088,
		-0.723682, 0.668781, -0.170346,
		20.126577, 33.505161, 21.782503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.054092, 32.638115, 21.870577>,  <20.633154, 33.037014, 21.901745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.054092, 32.638115, 21.870577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.934669, 32.991077, 21.725124>,  <19.863016, 33.202854, 21.637852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.934669, 32.991077, 21.725124>,  <20.054092, 32.638115, 21.870577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.934669, 32.991077, 21.725124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706462, -0.460505, -0.537444,
		-0.641698, 0.096436, 0.760871,
		-0.298556, 0.882403, -0.363633,
		19.845102, 33.255798, 21.616034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.368717, 32.511414, 21.907955>,  <20.054092, 32.638115, 21.870577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.368717, 32.511414, 21.907955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.410599, 32.810947, 21.646183>,  <19.435728, 32.990669, 21.489120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.410599, 32.810947, 21.646183>,  <19.368717, 32.511414, 21.907955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410599, 32.810947, 21.646183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425268, -0.561135, -0.710122,
		-0.898991, 0.352661, 0.259704,
		0.104704, 0.748837, -0.654431,
		19.442009, 33.035599, 21.449854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685598, 32.704247, 21.599922>,  <19.368717, 32.511414, 21.907955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685598, 32.704247, 21.599922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.978771, 32.811954, 21.350025>,  <19.154675, 32.876579, 21.200087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.978771, 32.811954, 21.350025>,  <18.685598, 32.704247, 21.599922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978771, 32.811954, 21.350025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491572, -0.425208, -0.759970,
		-0.470281, 0.864113, -0.179285,
		0.732934, 0.269269, -0.624742,
		19.198652, 32.892735, 21.162603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.423691, 33.042629, 20.922340>,  <18.685598, 32.704247, 21.599922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.423691, 33.042629, 20.922340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.792908, 32.900940, 20.862312>,  <19.014437, 32.815926, 20.826296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.792908, 32.900940, 20.862312>,  <18.423691, 33.042629, 20.922340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.792908, 32.900940, 20.862312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296191, -0.405443, -0.864804,
		0.245490, 0.842699, -0.479159,
		0.923041, -0.354223, -0.150068,
		19.069820, 32.794674, 20.817291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.579952, 33.081673, 20.205231>,  <18.423691, 33.042629, 20.922340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.579952, 33.081673, 20.205231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.889925, 32.843563, 20.290211>,  <19.075909, 32.700699, 20.341198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.889925, 32.843563, 20.290211>,  <18.579952, 33.081673, 20.205231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889925, 32.843563, 20.290211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276611, -0.621641, -0.732836,
		0.568302, 0.509132, -0.646387,
		0.774931, -0.595271, 0.212448,
		19.122404, 32.664982, 20.353945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.945459, 32.826797, 19.527290>,  <18.579952, 33.081673, 20.205231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.945459, 32.826797, 19.527290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.068066, 32.561516, 19.800407>,  <19.141630, 32.402348, 19.964277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.068066, 32.561516, 19.800407>,  <18.945459, 32.826797, 19.527290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.068066, 32.561516, 19.800407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346113, -0.745876, -0.569100,
		0.886710, -0.061886, -0.458166,
		0.306515, -0.663204, 0.682795,
		19.160021, 32.362553, 20.005245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344439, 32.185379, 19.191975>,  <18.945459, 32.826797, 19.527290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344439, 32.185379, 19.191975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.183792, 32.060909, 19.536503>,  <19.087404, 31.986227, 19.743219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.183792, 32.060909, 19.536503>,  <19.344439, 32.185379, 19.191975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183792, 32.060909, 19.536503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581151, -0.640282, -0.502297,
		0.707792, -0.702288, 0.076306,
		-0.401615, -0.311176, 0.861321,
		19.063307, 31.967556, 19.794899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.465544, 31.442236, 19.138485>,  <19.344439, 32.185379, 19.191975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.465544, 31.442236, 19.138485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.182913, 31.485233, 19.418255>,  <19.013334, 31.511032, 19.586117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.182913, 31.485233, 19.418255>,  <19.465544, 31.442236, 19.138485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.182913, 31.485233, 19.418255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483953, -0.794514, -0.366794,
		0.516272, -0.597656, 0.613409,
		-0.706578, 0.107495, 0.699422,
		18.970940, 31.517483, 19.628082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.398569, 30.769072, 19.467575>,  <19.465544, 31.442236, 19.138485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.398569, 30.769072, 19.467575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.055998, 30.960114, 19.545986>,  <18.850456, 31.074739, 19.593033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.055998, 30.960114, 19.545986>,  <19.398569, 30.769072, 19.467575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.055998, 30.960114, 19.545986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516228, -0.787412, -0.336886,
		-0.006545, -0.389713, 0.920913,
		-0.856426, 0.477606, 0.196027,
		18.799070, 31.103395, 19.604794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901093, 30.437164, 19.960665>,  <19.398569, 30.769072, 19.467575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901093, 30.437164, 19.960665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.742662, 30.616241, 19.639992>,  <18.647604, 30.723688, 19.447588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.742662, 30.616241, 19.639992>,  <18.901093, 30.437164, 19.960665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.742662, 30.616241, 19.639992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273201, -0.891003, -0.362595,
		-0.876631, 0.075403, 0.475219,
		-0.396080, 0.447692, -0.801681,
		18.623838, 30.750549, 19.399487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.399696, 28.043406, 24.895405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666632, 28.326687, 24.987587>,  <29.826794, 28.496655, 25.042896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666632, 28.326687, 24.987587>,  <29.399696, 28.043406, 24.895405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666632, 28.326687, 24.987587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447013, 0.628389, -0.636637,
		-0.595684, 0.321835, 0.735923,
		0.667338, 0.708201, 0.230457,
		29.866833, 28.539146, 25.056725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047562, 28.688099, 25.007439>,  <29.399696, 28.043406, 24.895405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047562, 28.688099, 25.007439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421490, 28.802032, 24.922607>,  <29.645847, 28.870394, 24.871708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421490, 28.802032, 24.922607>,  <29.047562, 28.688099, 25.007439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421490, 28.802032, 24.922607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355101, 0.743775, -0.566305,
		-0.003563, 0.604704, 0.796442,
		0.934821, 0.284835, -0.212080,
		29.701937, 28.887484, 24.858984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073935, 29.325304, 25.168234>,  <29.047562, 28.688099, 25.007439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073935, 29.325304, 25.168234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391993, 29.303940, 24.926609>,  <29.582827, 29.291121, 24.781633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391993, 29.303940, 24.926609>,  <29.073935, 29.325304, 25.168234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391993, 29.303940, 24.926609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331750, 0.795526, -0.507031,
		0.507629, 0.603561, 0.614839,
		0.795145, -0.053410, -0.604063,
		29.630535, 29.287916, 24.745390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204487, 30.040934, 25.017132>,  <29.073935, 29.325304, 25.168234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204487, 30.040934, 25.017132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412807, 29.843719, 24.738369>,  <29.537800, 29.725391, 24.571112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412807, 29.843719, 24.738369>,  <29.204487, 30.040934, 25.017132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412807, 29.843719, 24.738369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139665, 0.756149, -0.639322,
		0.842174, 0.430295, 0.324945,
		0.520804, -0.493037, -0.696906,
		29.569048, 29.695808, 24.529297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801470, 30.443615, 24.893827>,  <29.204487, 30.040934, 25.017132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801470, 30.443615, 24.893827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708847, 30.220821, 24.574791>,  <29.653273, 30.087145, 24.383369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708847, 30.220821, 24.574791>,  <29.801470, 30.443615, 24.893827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708847, 30.220821, 24.574791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071004, 0.827363, -0.557162,
		0.970227, -0.072383, -0.231130,
		-0.231557, -0.556984, -0.797590,
		29.639380, 30.053726, 24.335514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332813, 30.520773, 24.356947>,  <29.801470, 30.443615, 24.893827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332813, 30.520773, 24.356947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003187, 30.378246, 24.180786>,  <29.805410, 30.292730, 24.075090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003187, 30.378246, 24.180786>,  <30.332813, 30.520773, 24.356947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003187, 30.378246, 24.180786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083549, 0.692473, -0.716590,
		0.560297, -0.627313, -0.540874,
		-0.824067, -0.356314, -0.440402,
		29.755968, 30.271353, 24.048666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527208, 30.447731, 23.686575>,  <30.332813, 30.520773, 24.356947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527208, 30.447731, 23.686575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127640, 30.458797, 23.701469>,  <29.887897, 30.465437, 23.710405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127640, 30.458797, 23.701469>,  <30.527208, 30.447731, 23.686575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127640, 30.458797, 23.701469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003121, 0.760794, -0.648986,
		-0.046285, -0.648403, -0.759889,
		-0.998923, 0.027666, 0.037237,
		29.827963, 30.467098, 23.712641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257992, 30.337494, 22.981323>,  <30.527208, 30.447731, 23.686575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257992, 30.337494, 22.981323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956551, 30.527237, 23.163342>,  <29.775686, 30.641083, 23.272552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956551, 30.527237, 23.163342>,  <30.257992, 30.337494, 22.981323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956551, 30.527237, 23.163342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130507, 0.786455, -0.603702,
		-0.644243, -0.395565, -0.654583,
		-0.753604, 0.474358, 0.455044,
		29.730469, 30.669544, 23.299854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961155, 30.739708, 22.457140>,  <30.257992, 30.337494, 22.981323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961155, 30.739708, 22.457140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776939, 30.897228, 22.775341>,  <29.666410, 30.991741, 22.966261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776939, 30.897228, 22.775341>,  <29.961155, 30.739708, 22.457140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776939, 30.897228, 22.775341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148572, 0.849358, -0.506476,
		-0.875117, -0.351442, -0.332654,
		-0.460539, 0.393802, 0.795502,
		29.638777, 31.015369, 23.013992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283936, 30.923349, 22.316500>,  <29.961155, 30.739708, 22.457140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283936, 30.923349, 22.316500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417280, 31.160461, 22.609753>,  <29.497286, 31.302729, 22.785704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417280, 31.160461, 22.609753>,  <29.283936, 30.923349, 22.316500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417280, 31.160461, 22.609753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041890, 0.786155, -0.616608,
		-0.941868, 0.174841, 0.286905,
		0.333360, 0.592782, 0.733131,
		29.517288, 31.338297, 22.829691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999624, 31.613968, 22.294283>,  <29.283936, 30.923349, 22.316500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999624, 31.613968, 22.294283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323349, 31.698681, 22.513432>,  <29.517584, 31.749508, 22.644920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323349, 31.698681, 22.513432>,  <28.999624, 31.613968, 22.294283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323349, 31.698681, 22.513432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168094, 0.810223, -0.561501,
		-0.562814, 0.546523, 0.620123,
		0.809311, 0.211782, 0.547872,
		29.566143, 31.762215, 22.677794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034376, 32.276585, 22.059999>,  <28.999624, 31.613968, 22.294283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034376, 32.276585, 22.059999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368584, 32.239174, 22.276577>,  <29.569109, 32.216728, 22.406523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368584, 32.239174, 22.276577>,  <29.034376, 32.276585, 22.059999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368584, 32.239174, 22.276577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261400, 0.934411, -0.241963,
		-0.483299, 0.343698, 0.805167,
		0.835519, -0.093530, 0.541442,
		29.619240, 32.211117, 22.439011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163410, 32.947960, 22.369070>,  <29.034376, 32.276585, 22.059999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163410, 32.947960, 22.369070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532507, 32.796543, 22.340065>,  <29.753965, 32.705692, 22.322662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532507, 32.796543, 22.340065>,  <29.163410, 32.947960, 22.369070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532507, 32.796543, 22.340065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319607, 0.856657, -0.404956,
		0.215412, 0.350494, 0.911456,
		0.922740, -0.378540, -0.072514,
		29.809328, 32.682980, 22.318312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717516, 33.439465, 22.650122>,  <29.163410, 32.947960, 22.369070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717516, 33.439465, 22.650122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849995, 33.217522, 22.344849>,  <29.929482, 33.084358, 22.161686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849995, 33.217522, 22.344849>,  <29.717516, 33.439465, 22.650122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849995, 33.217522, 22.344849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264110, 0.831013, -0.489554,
		0.905844, -0.039424, 0.421773,
		0.331198, -0.554854, -0.763180,
		29.949354, 33.051064, 22.115894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831360, 34.196945, 22.489584>,  <29.717516, 33.439465, 22.650122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831360, 34.196945, 22.489584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484287, 34.259884, 22.678207>,  <29.276043, 34.297649, 22.791382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484287, 34.259884, 22.678207>,  <29.831360, 34.196945, 22.489584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484287, 34.259884, 22.678207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357471, -0.461705, 0.811815,
		0.345460, 0.872966, 0.344365,
		-0.867682, 0.157349, 0.471560,
		29.223982, 34.307087, 22.819675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960413, 34.595055, 23.105518>,  <29.831360, 34.196945, 22.489584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960413, 34.595055, 23.105518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595034, 34.452820, 23.184685>,  <29.375807, 34.367477, 23.232185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595034, 34.452820, 23.184685>,  <29.960413, 34.595055, 23.105518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595034, 34.452820, 23.184685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289627, -0.226391, 0.929980,
		-0.285881, 0.906811, 0.309784,
		-0.913448, -0.355586, 0.197916,
		29.320999, 34.346146, 23.244061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787094, 34.838310, 23.769209>,  <29.960413, 34.595055, 23.105518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787094, 34.838310, 23.769209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559883, 34.510281, 23.741451>,  <29.423557, 34.313461, 23.724796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559883, 34.510281, 23.741451>,  <29.787094, 34.838310, 23.769209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559883, 34.510281, 23.741451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138935, -0.178654, 0.974053,
		-0.811197, 0.543649, 0.215418,
		-0.568028, -0.820078, -0.069392,
		29.389475, 34.264256, 23.720634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340872, 34.869255, 24.382038>,  <29.787094, 34.838310, 23.769209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340872, 34.869255, 24.382038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334059, 34.492096, 24.248978>,  <29.329971, 34.265800, 24.169142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334059, 34.492096, 24.248978>,  <29.340872, 34.869255, 24.382038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334059, 34.492096, 24.248978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122365, -0.332166, 0.935250,
		-0.992339, -0.024774, 0.121036,
		-0.017034, -0.942896, -0.332652,
		29.328949, 34.209229, 24.149181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033083, 34.485363, 24.877930>,  <29.340872, 34.869255, 24.382038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033083, 34.485363, 24.877930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201624, 34.181164, 24.680302>,  <29.302748, 33.998646, 24.561726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201624, 34.181164, 24.680302>,  <29.033083, 34.485363, 24.877930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201624, 34.181164, 24.680302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351332, -0.365367, 0.862017,
		-0.836080, -0.536794, 0.113240,
		0.421351, -0.760499, -0.494069,
		29.328030, 33.953014, 24.532082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856730, 33.952534, 25.208160>,  <29.033083, 34.485363, 24.877930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856730, 33.952534, 25.208160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166803, 33.804451, 25.003403>,  <29.352848, 33.715599, 24.880548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166803, 33.804451, 25.003403>,  <28.856730, 33.952534, 25.208160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166803, 33.804451, 25.003403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252329, -0.561410, 0.788130,
		-0.579174, -0.740103, -0.341770,
		0.775170, -0.370225, -0.511903,
		29.399359, 33.693390, 24.849834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693714, 33.152225, 24.974552>,  <28.856730, 33.952534, 25.208160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693714, 33.152225, 24.974552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086575, 33.225925, 24.989670>,  <29.322290, 33.270145, 24.998739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086575, 33.225925, 24.989670>,  <28.693714, 33.152225, 24.974552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086575, 33.225925, 24.989670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098911, -0.676862, 0.729434,
		0.159979, -0.712678, -0.683006,
		0.982153, 0.184251, 0.037792,
		29.381220, 33.281200, 25.001007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029659, 32.506237, 25.314041>,  <28.693714, 33.152225, 24.974552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029659, 32.506237, 25.314041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336494, 32.761894, 25.291882>,  <29.520596, 32.915291, 25.278585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336494, 32.761894, 25.291882>,  <29.029659, 32.506237, 25.314041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336494, 32.761894, 25.291882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456679, -0.483356, 0.746868,
		0.450581, -0.598212, -0.662661,
		0.767087, 0.639147, -0.055400,
		29.566620, 32.953640, 25.275261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617361, 32.133331, 25.211838>,  <29.029659, 32.506237, 25.314041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617361, 32.133331, 25.211838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714762, 32.473118, 25.399075>,  <29.773201, 32.676991, 25.511415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714762, 32.473118, 25.399075>,  <29.617361, 32.133331, 25.211838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714762, 32.473118, 25.399075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557113, -0.517557, 0.649431,
		0.793935, 0.102643, -0.599276,
		0.243500, 0.849470, 0.468090,
		29.787811, 32.727959, 25.539501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309622, 32.207718, 25.216845>,  <29.617361, 32.133331, 25.211838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309622, 32.207718, 25.216845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161600, 32.407257, 25.530331>,  <30.072788, 32.526981, 25.718422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161600, 32.407257, 25.530331>,  <30.309622, 32.207718, 25.216845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161600, 32.407257, 25.530331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331637, -0.717086, 0.613029,
		0.867800, 0.486763, 0.099923,
		-0.370053, 0.498849, 0.783716,
		30.050585, 32.556911, 25.765446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782553, 32.039280, 25.802401>,  <30.309622, 32.207718, 25.216845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782553, 32.039280, 25.802401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488045, 32.212551, 26.010349>,  <30.311340, 32.316513, 26.135118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488045, 32.212551, 26.010349>,  <30.782553, 32.039280, 25.802401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488045, 32.212551, 26.010349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179711, -0.615501, 0.767374,
		0.652386, 0.658422, 0.375329,
		-0.736272, 0.433173, 0.519870,
		30.267162, 32.342503, 26.166309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070385, 32.147087, 26.474249>,  <30.782553, 32.039280, 25.802401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070385, 32.147087, 26.474249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673515, 32.159725, 26.522572>,  <30.435394, 32.167309, 26.551565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673515, 32.159725, 26.522572>,  <31.070385, 32.147087, 26.474249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673515, 32.159725, 26.522572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100307, -0.374527, 0.921774,
		0.074366, 0.926678, 0.368426,
		-0.992173, 0.031593, 0.120804,
		30.375864, 32.169205, 26.558813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925203, 32.489994, 27.110220>,  <31.070385, 32.147087, 26.474249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925203, 32.489994, 27.110220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601404, 32.264687, 27.043949>,  <30.407125, 32.129501, 27.004187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601404, 32.264687, 27.043949>,  <30.925203, 32.489994, 27.110220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601404, 32.264687, 27.043949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183960, -0.511297, 0.839484,
		-0.557562, 0.649081, 0.517511,
		-0.809496, -0.563266, -0.165675,
		30.358555, 32.095707, 26.994247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734989, 32.297184, 27.748154>,  <30.925203, 32.489994, 27.110220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734989, 32.297184, 27.748154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552568, 32.019379, 27.525562>,  <30.443117, 31.852695, 27.392008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552568, 32.019379, 27.525562>,  <30.734989, 32.297184, 27.748154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552568, 32.019379, 27.525562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292444, -0.707517, 0.643348,
		-0.840533, 0.130659, 0.525769,
		-0.456050, -0.694513, -0.556481,
		30.415754, 31.811026, 27.358618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258060, 32.675591, 28.267803>,  <30.734989, 32.297184, 27.748154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258060, 32.675591, 28.267803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476854, 32.934406, 28.480274>,  <30.608130, 33.089695, 28.607758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476854, 32.934406, 28.480274>,  <30.258060, 32.675591, 28.267803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476854, 32.934406, 28.480274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169616, 0.535695, -0.827201,
		-0.819780, 0.542561, 0.183269,
		0.546983, 0.647038, 0.531179,
		30.640949, 33.128517, 28.639627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071331, 33.348862, 28.037636>,  <30.258060, 32.675591, 28.267803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071331, 33.348862, 28.037636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421494, 33.413322, 28.219929>,  <30.631592, 33.452000, 28.329304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421494, 33.413322, 28.219929>,  <30.071331, 33.348862, 28.037636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421494, 33.413322, 28.219929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265970, 0.626664, -0.732498,
		-0.403636, 0.762444, 0.505723,
		0.875407, 0.161155, 0.455731,
		30.684116, 33.461670, 28.356647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102840, 34.103920, 28.071283>,  <30.071331, 33.348862, 28.037636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102840, 34.103920, 28.071283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465872, 33.941841, 28.115307>,  <30.683691, 33.844593, 28.141720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465872, 33.941841, 28.115307>,  <30.102840, 34.103920, 28.071283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465872, 33.941841, 28.115307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366057, 0.635176, -0.680113,
		0.205677, 0.657544, 0.724799,
		0.907579, -0.405201, 0.110057,
		30.738146, 33.820282, 28.148325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480846, 34.694401, 28.044136>,  <30.102840, 34.103920, 28.071283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480846, 34.694401, 28.044136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760752, 34.411591, 28.003250>,  <30.928694, 34.241905, 27.978718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760752, 34.411591, 28.003250>,  <30.480846, 34.694401, 28.044136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760752, 34.411591, 28.003250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530434, 0.610077, -0.588597,
		0.478512, 0.357659, 0.801939,
		0.699761, -0.707026, -0.102214,
		30.970680, 34.199482, 27.972586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068069, 35.014523, 27.894684>,  <30.480846, 34.694401, 28.044136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068069, 35.014523, 27.894684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143164, 34.645313, 27.760353>,  <31.188219, 34.423786, 27.679754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143164, 34.645313, 27.760353>,  <31.068069, 35.014523, 27.894684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143164, 34.645313, 27.760353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623549, 0.376170, -0.685334,
		0.758909, -0.080745, 0.646171,
		0.187733, -0.923026, -0.335827,
		31.199484, 34.368404, 27.659605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833078, 34.936836, 27.928164>,  <31.068069, 35.014523, 27.894684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833078, 34.936836, 27.928164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710697, 34.678005, 27.648827>,  <31.637268, 34.522705, 27.481224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710697, 34.678005, 27.648827>,  <31.833078, 34.936836, 27.928164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710697, 34.678005, 27.648827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807395, 0.212337, -0.550479,
		0.504488, -0.732257, 0.457484,
		-0.305951, -0.647080, -0.698342,
		31.618912, 34.483883, 27.439323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488029, 34.604393, 27.567513>,  <31.833078, 34.936836, 27.928164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488029, 34.604393, 27.567513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192863, 34.486725, 27.324551>,  <32.015762, 34.416122, 27.178774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192863, 34.486725, 27.324551>,  <32.488029, 34.604393, 27.567513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192863, 34.486725, 27.324551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626953, 0.034343, -0.778300,
		0.249817, -0.955134, 0.159092,
		-0.737917, -0.294175, -0.607405,
		31.971489, 34.398472, 27.142330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736553, 33.969757, 27.051292>,  <32.488029, 34.604393, 27.567513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736553, 33.969757, 27.051292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419365, 34.158047, 26.896568>,  <32.229053, 34.271019, 26.803734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419365, 34.158047, 26.896568>,  <32.736553, 33.969757, 27.051292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419365, 34.158047, 26.896568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478554, 0.088285, -0.873609,
		-0.377076, -0.877854, -0.295272,
		-0.792969, 0.470720, -0.386810,
		32.181473, 34.299263, 26.780525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549591, 33.607006, 26.395124>,  <32.736553, 33.969757, 27.051292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549591, 33.607006, 26.395124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386391, 33.971024, 26.365849>,  <32.288471, 34.189434, 26.348282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386391, 33.971024, 26.365849>,  <32.549591, 33.607006, 26.395124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386391, 33.971024, 26.365849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195217, 0.008646, -0.980722,
		-0.891866, -0.414425, -0.181183,
		-0.408002, 0.910042, -0.073192,
		32.263988, 34.244038, 26.343891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727440, 33.778954, 25.625269>,  <32.549591, 33.607006, 26.395124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727440, 33.778954, 25.625269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593357, 34.136230, 25.745167>,  <32.512909, 34.350597, 25.817106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593357, 34.136230, 25.745167>,  <32.727440, 33.778954, 25.625269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593357, 34.136230, 25.745167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107505, 0.352335, -0.929679,
		-0.935992, -0.279408, -0.214127,
		-0.335204, 0.893192, 0.299745,
		32.492794, 34.404186, 25.835091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246590, 34.009735, 25.076574>,  <32.727440, 33.778954, 25.625269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246590, 34.009735, 25.076574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359573, 34.331024, 25.286354>,  <32.427364, 34.523796, 25.412222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359573, 34.331024, 25.286354>,  <32.246590, 34.009735, 25.076574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359573, 34.331024, 25.286354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148609, 0.503474, -0.851134,
		-0.947699, 0.318347, 0.022843,
		0.282456, 0.803224, 0.524452,
		32.444309, 34.571991, 25.443689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872559, 34.517792, 24.679394>,  <32.246590, 34.009735, 25.076574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872559, 34.517792, 24.679394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192638, 34.647472, 24.881214>,  <32.384686, 34.725281, 25.002306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192638, 34.647472, 24.881214>,  <31.872559, 34.517792, 24.679394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192638, 34.647472, 24.881214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341090, 0.445963, -0.827511,
		-0.493291, 0.834273, 0.246279,
		0.800201, 0.324201, 0.504552,
		32.432697, 34.744732, 25.032579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.610504, 31.090210, 31.672974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.003775, 31.157715, 31.700928>,  <30.239737, 31.198217, 31.717701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.003775, 31.157715, 31.700928>,  <29.610504, 31.090210, 31.672974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003775, 31.157715, 31.700928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123074, 0.894768, -0.429236,
		-0.134970, 0.413414, 0.900484,
		0.983177, 0.168760, 0.069886,
		30.298727, 31.208344, 31.721893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480112, 31.745455, 31.703798>,  <29.610504, 31.090210, 31.672974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480112, 31.745455, 31.703798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.864042, 31.668056, 31.622517>,  <30.094400, 31.621618, 31.573748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.864042, 31.668056, 31.622517>,  <29.480112, 31.745455, 31.703798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864042, 31.668056, 31.622517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046554, 0.823979, -0.564705,
		0.276705, 0.532559, 0.799884,
		0.959827, -0.193494, -0.203206,
		30.151991, 31.610008, 31.561554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818604, 32.356300, 31.682560>,  <29.480112, 31.745455, 31.703798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818604, 32.356300, 31.682560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.066641, 32.124504, 31.471024>,  <30.215464, 31.985426, 31.344101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.066641, 32.124504, 31.471024>,  <29.818604, 32.356300, 31.682560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066641, 32.124504, 31.471024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028104, 0.657251, -0.753148,
		0.784024, 0.481885, 0.391271,
		0.620094, -0.579490, -0.528843,
		30.252668, 31.950657, 31.312370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257475, 32.877151, 31.394997>,  <29.818604, 32.356300, 31.682560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257475, 32.877151, 31.394997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.298277, 32.555038, 31.161377>,  <30.322758, 32.361771, 31.021204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.298277, 32.555038, 31.161377>,  <30.257475, 32.877151, 31.394997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298277, 32.555038, 31.161377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231243, 0.590225, -0.773409,
		0.967534, -0.056167, 0.246421,
		0.102003, -0.805283, -0.584051,
		30.328878, 32.313454, 30.986162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815256, 33.039219, 30.993843>,  <30.257475, 32.877151, 31.394997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815256, 33.039219, 30.993843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.632034, 32.749466, 30.787750>,  <30.522100, 32.575615, 30.664095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.632034, 32.749466, 30.787750>,  <30.815256, 33.039219, 30.993843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632034, 32.749466, 30.787750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248646, 0.452067, -0.856627,
		0.853441, -0.520492, -0.026958,
		-0.458054, -0.724378, -0.515230,
		30.494617, 32.532154, 30.633181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284130, 32.920624, 30.512011>,  <30.815256, 33.039219, 30.993843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284130, 32.920624, 30.512011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.951605, 32.752914, 30.366062>,  <30.752090, 32.652290, 30.278492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.951605, 32.752914, 30.366062>,  <31.284130, 32.920624, 30.512011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951605, 32.752914, 30.366062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334799, 0.146267, -0.930868,
		0.443657, -0.896000, 0.018779,
		-0.831311, -0.419273, -0.364872,
		30.702211, 32.627132, 30.256601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439024, 32.520622, 29.845604>,  <31.284130, 32.920624, 30.512011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439024, 32.520622, 29.845604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.045172, 32.589825, 29.836056>,  <30.808861, 32.631344, 29.830328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.045172, 32.589825, 29.836056>,  <31.439024, 32.520622, 29.845604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045172, 32.589825, 29.836056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095449, 0.418646, -0.903120,
		-0.146249, -0.891519, -0.428725,
		-0.984632, 0.173002, -0.023868,
		30.749783, 32.641724, 29.828896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193892, 32.190334, 29.125393>,  <31.439024, 32.520622, 29.845604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193892, 32.190334, 29.125393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.969076, 32.491257, 29.262886>,  <30.834187, 32.671810, 29.345383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.969076, 32.491257, 29.262886>,  <31.193892, 32.190334, 29.125393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969076, 32.491257, 29.262886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071268, 0.458086, -0.886046,
		-0.824036, -0.473493, -0.311077,
		-0.562037, 0.752304, 0.343735,
		30.800465, 32.716949, 29.366007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797483, 32.315746, 28.648785>,  <31.193892, 32.190334, 29.125393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797483, 32.315746, 28.648785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.785645, 32.658699, 28.854317>,  <30.778542, 32.864471, 28.977636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.785645, 32.658699, 28.854317>,  <30.797483, 32.315746, 28.648785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785645, 32.658699, 28.854317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190995, 0.509434, -0.839046,
		-0.981145, 0.073306, -0.178834,
		-0.029597, 0.857382, 0.513829,
		30.776766, 32.915913, 29.008465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395176, 31.915703, 28.256571>,  <30.797483, 32.315746, 28.648785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395176, 31.915703, 28.256571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.392021, 31.668468, 27.942142>,  <30.390129, 31.520128, 27.753485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.392021, 31.668468, 27.942142>,  <30.395176, 31.915703, 28.256571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392021, 31.668468, 27.942142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179483, -0.774205, 0.606953,
		-0.983730, -0.136300, 0.117041,
		-0.007886, -0.618084, -0.786072,
		30.389656, 31.483044, 27.706322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984655, 31.304243, 28.428446>,  <30.395176, 31.915703, 28.256571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984655, 31.304243, 28.428446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.216108, 31.165871, 28.133011>,  <30.354980, 31.082848, 27.955750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.216108, 31.165871, 28.133011>,  <29.984655, 31.304243, 28.428446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216108, 31.165871, 28.133011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156529, -0.841654, 0.516834,
		-0.800425, -0.414669, -0.432862,
		0.578635, -0.345932, -0.738589,
		30.389698, 31.062092, 27.911434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725910, 30.637764, 28.280828>,  <29.984655, 31.304243, 28.428446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725910, 30.637764, 28.280828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.108791, 30.680576, 28.173271>,  <30.338520, 30.706264, 28.108736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.108791, 30.680576, 28.173271>,  <29.725910, 30.637764, 28.280828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108791, 30.680576, 28.173271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253097, -0.760186, 0.598380,
		-0.140364, -0.640828, -0.754743,
		0.957204, 0.107032, -0.268894,
		30.395952, 30.712687, 28.092604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889137, 29.997660, 28.283592>,  <29.725910, 30.637764, 28.280828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889137, 29.997660, 28.283592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.253662, 30.156754, 28.241032>,  <30.472376, 30.252209, 28.215496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.253662, 30.156754, 28.241032>,  <29.889137, 29.997660, 28.283592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253662, 30.156754, 28.241032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405528, -0.822465, 0.398873,
		0.071135, -0.406645, -0.910813,
		0.911311, 0.397734, -0.106399,
		30.527056, 30.276073, 28.209112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350140, 29.508741, 28.091272>,  <29.889137, 29.997660, 28.283592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350140, 29.508741, 28.091272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.596815, 29.772495, 28.263275>,  <30.744822, 29.930748, 28.366476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.596815, 29.772495, 28.263275>,  <30.350140, 29.508741, 28.091272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596815, 29.772495, 28.263275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554191, -0.751598, 0.357734,
		0.559075, 0.017693, -0.828928,
		0.616691, 0.659385, 0.430005,
		30.781822, 29.970310, 28.392277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057322, 29.344339, 27.950699>,  <30.350140, 29.508741, 28.091272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057322, 29.344339, 27.950699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.057739, 29.560081, 28.287529>,  <31.057989, 29.689528, 28.489628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.057739, 29.560081, 28.287529>,  <31.057322, 29.344339, 27.950699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057739, 29.560081, 28.287529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479739, -0.739119, 0.472815,
		0.877411, 0.403483, -0.259522,
		0.001045, 0.539355, 0.842077,
		31.058052, 29.721888, 28.540152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716869, 29.235701, 28.257753>,  <31.057322, 29.344339, 27.950699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716869, 29.235701, 28.257753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.462915, 29.362640, 28.539520>,  <31.310543, 29.438805, 28.708580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.462915, 29.362640, 28.539520>,  <31.716869, 29.235701, 28.257753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462915, 29.362640, 28.539520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237620, -0.787348, 0.568876,
		0.735157, 0.528556, 0.424468,
		-0.634887, 0.317351, 0.704420,
		31.272449, 29.457846, 28.750847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055046, 29.047335, 28.913309>,  <31.716869, 29.235701, 28.257753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055046, 29.047335, 28.913309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.671627, 29.093719, 29.017422>,  <31.441576, 29.121550, 29.079889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.671627, 29.093719, 29.017422>,  <32.055046, 29.047335, 28.913309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671627, 29.093719, 29.017422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104830, -0.705871, 0.700541,
		0.264960, 0.698785, 0.664452,
		-0.958544, 0.115960, 0.260281,
		31.384064, 29.128508, 29.095507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077686, 28.971794, 29.628466>,  <32.055046, 29.047335, 28.913309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077686, 28.971794, 29.628466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.687304, 28.928085, 29.553024>,  <31.453074, 28.901861, 29.507759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.687304, 28.928085, 29.553024>,  <32.077686, 28.971794, 29.628466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687304, 28.928085, 29.553024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058399, -0.702561, 0.709223,
		-0.210004, 0.703184, 0.679287,
		-0.975955, -0.109270, -0.188606,
		31.394518, 28.895304, 29.496443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853321, 28.894285, 30.285753>,  <32.077686, 28.971794, 29.628466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853321, 28.894285, 30.285753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.548424, 28.782932, 30.052006>,  <31.365486, 28.716120, 29.911757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.548424, 28.782932, 30.052006>,  <31.853321, 28.894285, 30.285753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548424, 28.782932, 30.052006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257886, -0.697441, 0.668633,
		-0.593700, 0.660362, 0.459829,
		-0.762244, -0.278384, -0.584369,
		31.319750, 28.699417, 29.876696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184683, 28.815229, 30.759277>,  <31.853321, 28.894285, 30.285753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184683, 28.815229, 30.759277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.142881, 28.568001, 30.447620>,  <31.117802, 28.419662, 30.260626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.142881, 28.568001, 30.447620>,  <31.184683, 28.815229, 30.759277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142881, 28.568001, 30.447620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248252, -0.742421, 0.622239,
		-0.963042, 0.258450, -0.075853,
		-0.104503, -0.618073, -0.779143,
		31.111530, 28.382578, 30.213877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558439, 28.469475, 30.870668>,  <31.184683, 28.815229, 30.759277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558439, 28.469475, 30.870668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.763319, 28.243423, 30.611969>,  <30.886248, 28.107794, 30.456749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.763319, 28.243423, 30.611969>,  <30.558439, 28.469475, 30.870668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763319, 28.243423, 30.611969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318522, -0.824314, 0.468028,
		-0.797618, -0.033721, -0.602219,
		0.512200, -0.565127, -0.646747,
		30.916979, 28.073885, 30.417944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079906, 27.942724, 30.616770>,  <30.558439, 28.469475, 30.870668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079906, 27.942724, 30.616770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.458260, 27.828941, 30.554302>,  <30.685272, 27.760672, 30.516821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.458260, 27.828941, 30.554302>,  <30.079906, 27.942724, 30.616770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458260, 27.828941, 30.554302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210909, -0.904638, 0.370336,
		-0.246621, -0.317358, -0.915676,
		0.945884, -0.284456, -0.156169,
		30.742025, 27.743605, 30.507452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977440, 27.293545, 30.289007>,  <30.079906, 27.942724, 30.616770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977440, 27.293545, 30.289007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.354952, 27.288712, 30.421146>,  <30.581459, 27.285812, 30.500431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.354952, 27.288712, 30.421146>,  <29.977440, 27.293545, 30.289007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354952, 27.288712, 30.421146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138481, -0.921867, 0.361917,
		0.300166, -0.387317, -0.871715,
		0.943781, -0.012081, 0.330349,
		30.638086, 27.285088, 30.520250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.585358, 25.094467, 30.344360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.240746, 25.255161, 30.468536>,  <36.033978, 25.351578, 30.543041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.240746, 25.255161, 30.468536>,  <36.585358, 25.094467, 30.344360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240746, 25.255161, 30.468536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049250, 0.542446, -0.838646,
		-0.505310, -0.737809, -0.447549,
		-0.861531, 0.401735, 0.310440,
		35.982285, 25.375681, 30.561668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191391, 25.127892, 29.722052>,  <36.585358, 25.094467, 30.344360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191391, 25.127892, 29.722052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033836, 25.385578, 29.984299>,  <35.939304, 25.540190, 30.141647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033836, 25.385578, 29.984299>,  <36.191391, 25.127892, 29.722052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033836, 25.385578, 29.984299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242029, 0.615417, -0.750122,
		-0.886723, -0.454141, -0.086484,
		-0.393885, 0.644219, 0.655620,
		35.915672, 25.578844, 30.180984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650768, 25.388975, 29.269369>,  <36.191391, 25.127892, 29.722052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650768, 25.388975, 29.269369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.714981, 25.639931, 29.574162>,  <35.753510, 25.790504, 29.757036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.714981, 25.639931, 29.574162>,  <35.650768, 25.388975, 29.269369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714981, 25.639931, 29.574162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299045, 0.766623, -0.568209,
		-0.940639, -0.136649, 0.310687,
		0.160534, 0.627388, 0.761980,
		35.763142, 25.828148, 29.802755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020958, 25.782595, 29.307556>,  <35.650768, 25.388975, 29.269369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020958, 25.782595, 29.307556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.317337, 25.981018, 29.488628>,  <35.495167, 26.100073, 29.597271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.317337, 25.981018, 29.488628>,  <35.020958, 25.782595, 29.307556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317337, 25.981018, 29.488628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268026, 0.836497, -0.477949,
		-0.615756, 0.232806, 0.752759,
		0.740950, 0.496058, 0.452680,
		35.539623, 26.129835, 29.624432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737358, 26.375753, 29.680681>,  <35.020958, 25.782595, 29.307556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737358, 26.375753, 29.680681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120224, 26.450451, 29.592167>,  <35.349941, 26.495270, 29.539059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120224, 26.450451, 29.592167>,  <34.737358, 26.375753, 29.680681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120224, 26.450451, 29.592167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263207, 0.879649, -0.396156,
		0.120674, 0.437429, 0.891119,
		0.957163, 0.186743, -0.221285,
		35.407372, 26.506474, 29.525782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788288, 27.039373, 29.914148>,  <34.737358, 26.375753, 29.680681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788288, 27.039373, 29.914148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.097816, 26.957447, 29.674397>,  <35.283531, 26.908291, 29.530546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.097816, 26.957447, 29.674397>,  <34.788288, 27.039373, 29.914148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097816, 26.957447, 29.674397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118213, 0.882952, -0.454335,
		0.622280, 0.422427, 0.659032,
		0.773817, -0.204817, -0.599380,
		35.329960, 26.896002, 29.494583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133526, 27.785225, 29.802898>,  <34.788288, 27.039373, 29.914148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133526, 27.785225, 29.802898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259777, 27.526566, 29.525127>,  <35.335526, 27.371370, 29.358465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259777, 27.526566, 29.525127>,  <35.133526, 27.785225, 29.802898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259777, 27.526566, 29.525127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032747, 0.738822, -0.673104,
		0.948319, 0.189707, 0.254366,
		0.315624, -0.646647, -0.694427,
		35.354465, 27.332571, 29.316799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615631, 28.104908, 29.519070>,  <35.133526, 27.785225, 29.802898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615631, 28.104908, 29.519070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537804, 27.835365, 29.233955>,  <35.491108, 27.673639, 29.062887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537804, 27.835365, 29.233955>,  <35.615631, 28.104908, 29.519070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537804, 27.835365, 29.233955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023654, 0.729683, -0.683376,
		0.980604, -0.116102, -0.157911,
		-0.194566, -0.673857, -0.712784,
		35.479435, 27.633207, 29.020121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983688, 28.304947, 28.988918>,  <35.615631, 28.104908, 29.519070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983688, 28.304947, 28.988918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708858, 28.074329, 28.812046>,  <35.543961, 27.935959, 28.705923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708858, 28.074329, 28.812046>,  <35.983688, 28.304947, 28.988918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708858, 28.074329, 28.812046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145714, 0.705547, -0.693521,
		0.711850, -0.412047, -0.568758,
		-0.687049, -0.576559, -0.442203,
		35.502735, 27.901367, 28.679392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128315, 28.205109, 28.241735>,  <35.983688, 28.304947, 28.988918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128315, 28.205109, 28.241735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736088, 28.129513, 28.262764>,  <35.500751, 28.084156, 28.275381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736088, 28.129513, 28.262764>,  <36.128315, 28.205109, 28.241735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736088, 28.129513, 28.262764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167424, 0.666628, -0.726345,
		0.102226, -0.721034, -0.685317,
		-0.980571, -0.188990, 0.052572,
		35.441917, 28.072815, 28.278536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963612, 28.260103, 27.536592>,  <36.128315, 28.205109, 28.241735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963612, 28.260103, 27.536592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606735, 28.275810, 27.716572>,  <35.392609, 28.285234, 27.824560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606735, 28.275810, 27.716572>,  <35.963612, 28.260103, 27.536592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606735, 28.275810, 27.716572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354174, 0.557379, -0.750926,
		-0.280280, -0.829329, -0.483380,
		-0.892191, 0.039268, 0.449949,
		35.339077, 28.287590, 27.851557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426327, 28.140331, 27.010113>,  <35.963612, 28.260103, 27.536592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426327, 28.140331, 27.010113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.248848, 28.346695, 27.303226>,  <35.142361, 28.470512, 27.479094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.248848, 28.346695, 27.303226>,  <35.426327, 28.140331, 27.010113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248848, 28.346695, 27.303226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363347, 0.643895, -0.673333,
		-0.819214, -0.565011, -0.098240,
		-0.443697, 0.515909, 0.732783,
		35.115738, 28.501467, 27.523062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858589, 28.268768, 26.691675>,  <35.426327, 28.140331, 27.010113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858589, 28.268768, 26.691675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.884026, 28.515003, 27.005875>,  <34.899288, 28.662745, 27.194395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.884026, 28.515003, 27.005875>,  <34.858589, 28.268768, 26.691675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884026, 28.515003, 27.005875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228369, 0.775184, -0.589014,
		-0.971496, -0.141930, 0.189872,
		0.063587, 0.615585, 0.785501,
		34.903103, 28.699678, 27.241526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203728, 28.653564, 26.585777>,  <34.858589, 28.268768, 26.691675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203728, 28.653564, 26.585777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.438633, 28.845322, 26.846638>,  <34.579578, 28.960377, 27.003153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.438633, 28.845322, 26.846638>,  <34.203728, 28.653564, 26.585777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438633, 28.845322, 26.846638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251148, 0.873886, -0.416231,
		-0.769443, 0.080653, 0.633603,
		0.587267, 0.479394, 0.652149,
		34.614815, 28.989140, 27.042282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517082, 28.852997, 26.747698>,  <34.203728, 28.653564, 26.585777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517082, 28.852997, 26.747698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269825, 28.665939, 26.494965>,  <33.121471, 28.553705, 26.343325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269825, 28.665939, 26.494965>,  <33.517082, 28.852997, 26.747698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269825, 28.665939, 26.494965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001860, -0.802916, 0.596089,
		-0.786065, 0.369642, 0.495446,
		-0.618141, -0.467644, -0.631832,
		33.084381, 28.525646, 26.305414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900269, 28.653662, 27.079296>,  <33.517082, 28.852997, 26.747698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900269, 28.653662, 27.079296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977013, 28.392273, 26.786404>,  <33.023060, 28.235439, 26.610668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977013, 28.392273, 26.786404>,  <32.900269, 28.653662, 27.079296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977013, 28.392273, 26.786404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091655, -0.754764, 0.649562,
		-0.977132, -0.057514, -0.204705,
		0.191863, -0.653470, -0.732233,
		33.034573, 28.196232, 26.566734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300472, 28.161520, 27.163252>,  <32.900269, 28.653662, 27.079296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300472, 28.161520, 27.163252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.594234, 27.990917, 26.952072>,  <32.770493, 27.888556, 26.825363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.594234, 27.990917, 26.952072>,  <32.300472, 28.161520, 27.163252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594234, 27.990917, 26.952072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065262, -0.818652, 0.570570,
		-0.675562, -0.384577, -0.629061,
		0.734410, -0.426508, -0.527952,
		32.814556, 27.862965, 26.793686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991964, 27.551678, 27.002363>,  <32.300472, 28.161520, 27.163252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991964, 27.551678, 27.002363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387379, 27.510914, 26.957809>,  <32.624626, 27.486456, 26.931076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387379, 27.510914, 26.957809>,  <31.991964, 27.551678, 27.002363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387379, 27.510914, 26.957809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044205, -0.900838, 0.431899,
		-0.144356, -0.422025, -0.895017,
		0.988538, -0.101912, -0.111386,
		32.683941, 27.480341, 26.924393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036209, 26.899727, 26.699684>,  <31.991964, 27.551678, 27.002363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036209, 26.899727, 26.699684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394543, 27.000702, 26.845974>,  <32.609543, 27.061287, 26.933748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394543, 27.000702, 26.845974>,  <32.036209, 26.899727, 26.699684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394543, 27.000702, 26.845974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128522, -0.934994, 0.330559,
		0.425394, -0.249123, -0.870045,
		0.895836, 0.252438, 0.365723,
		32.663292, 27.076433, 26.955690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511635, 26.399948, 26.442612>,  <32.036209, 26.899727, 26.699684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511635, 26.399948, 26.442612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.671749, 26.573063, 26.765713>,  <32.767818, 26.676931, 26.959574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.671749, 26.573063, 26.765713>,  <32.511635, 26.399948, 26.442612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671749, 26.573063, 26.765713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077770, -0.894316, 0.440625,
		0.913083, -0.113558, -0.391642,
		0.400288, 0.432785, 0.807754,
		32.791836, 26.702898, 27.008039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995945, 25.968191, 26.577127>,  <32.511635, 26.399948, 26.442612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995945, 25.968191, 26.577127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.922363, 26.164810, 26.917606>,  <32.878212, 26.282782, 27.121895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.922363, 26.164810, 26.917606>,  <32.995945, 25.968191, 26.577127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922363, 26.164810, 26.917606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003787, -0.865617, 0.500693,
		0.982927, 0.095329, 0.157374,
		-0.183956, 0.491549, 0.851199,
		32.867176, 26.312275, 27.172966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414730, 25.594688, 27.092627>,  <32.995945, 25.968191, 26.577127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414730, 25.594688, 27.092627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226151, 25.845207, 27.340977>,  <33.113003, 25.995520, 27.489986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226151, 25.845207, 27.340977>,  <33.414730, 25.594688, 27.092627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226151, 25.845207, 27.340977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184500, -0.618403, 0.763897,
		0.862380, 0.474688, 0.175992,
		-0.471446, 0.626299, 0.620877,
		33.084717, 26.033096, 27.527241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901115, 25.865879, 27.534729>,  <33.414730, 25.594688, 27.092627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901115, 25.865879, 27.534729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.544132, 25.868134, 27.715168>,  <33.329941, 25.869486, 27.823431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.544132, 25.868134, 27.715168>,  <33.901115, 25.865879, 27.534729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544132, 25.868134, 27.715168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338284, -0.653192, 0.677425,
		0.298469, 0.757172, 0.581040,
		-0.892458, 0.005634, 0.451096,
		33.276394, 25.869823, 27.850496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961147, 25.776037, 28.207678>,  <33.901115, 25.865879, 27.534729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961147, 25.776037, 28.207678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.573009, 25.679485, 28.202625>,  <33.340126, 25.621555, 28.199594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.573009, 25.679485, 28.202625>,  <33.961147, 25.776037, 28.207678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573009, 25.679485, 28.202625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146686, -0.629603, 0.762944,
		-0.192110, 0.738469, 0.646341,
		-0.970349, -0.241379, -0.012630,
		33.281906, 25.607071, 28.198835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600506, 25.908348, 28.839779>,  <33.961147, 25.776037, 28.207678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600506, 25.908348, 28.839779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.376633, 25.616653, 28.682312>,  <33.242310, 25.441637, 28.587831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.376633, 25.616653, 28.682312>,  <33.600506, 25.908348, 28.839779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376633, 25.616653, 28.682312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055471, -0.506939, 0.860195,
		-0.826849, 0.459598, 0.324176,
		-0.559681, -0.729234, -0.393668,
		33.208729, 25.397882, 28.564211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139751, 25.826019, 29.349436>,  <33.600506, 25.908348, 28.839779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139751, 25.826019, 29.349436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.094299, 25.500359, 29.121666>,  <33.067028, 25.304962, 28.985004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.094299, 25.500359, 29.121666>,  <33.139751, 25.826019, 29.349436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094299, 25.500359, 29.121666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134818, -0.555199, 0.820718,
		-0.984334, 0.170024, -0.046677,
		-0.113626, -0.814154, -0.569424,
		33.060211, 25.256113, 28.950838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521313, 25.505697, 29.531734>,  <33.139751, 25.826019, 29.349436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521313, 25.505697, 29.531734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761234, 25.227966, 29.372662>,  <32.905186, 25.061329, 29.277218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761234, 25.227966, 29.372662>,  <32.521313, 25.505697, 29.531734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761234, 25.227966, 29.372662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183949, -0.603350, 0.775971,
		-0.778718, -0.392275, -0.489610,
		0.599801, -0.694326, -0.397681,
		32.941174, 25.019669, 29.253357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211205, 24.947914, 29.519417>,  <32.521313, 25.505697, 29.531734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211205, 24.947914, 29.519417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.580761, 24.797619, 29.490425>,  <32.802494, 24.707441, 29.473030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.580761, 24.797619, 29.490425>,  <32.211205, 24.947914, 29.519417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580761, 24.797619, 29.490425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205978, -0.647931, 0.733320,
		-0.322497, -0.662576, -0.676009,
		0.923888, -0.375737, -0.072480,
		32.857925, 24.684898, 29.468681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594025, 24.608055, 29.049679>,  <32.211205, 24.947914, 29.519417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594025, 24.608055, 29.049679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203011, 24.684387, 29.085472>,  <30.968403, 24.730186, 29.106947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203011, 24.684387, 29.085472>,  <31.594025, 24.608055, 29.049679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203011, 24.684387, 29.085472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063798, 0.672534, -0.737312,
		-0.200883, -0.715040, -0.669600,
		-0.977535, 0.190832, 0.089482,
		30.909750, 24.741636, 29.112316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360964, 24.600550, 28.418026>,  <31.594025, 24.608055, 29.049679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360964, 24.600550, 28.418026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.095108, 24.822727, 28.617920>,  <30.935595, 24.956034, 28.737856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.095108, 24.822727, 28.617920>,  <31.360964, 24.600550, 28.418026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095108, 24.822727, 28.617920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040818, 0.640851, -0.766580,
		-0.746048, -0.529898, -0.403263,
		-0.664640, 0.555445, 0.499735,
		30.895716, 24.989361, 28.767839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817539, 24.775917, 27.897406>,  <31.360964, 24.600550, 28.418026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817539, 24.775917, 27.897406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.755306, 25.045063, 28.186695>,  <30.717966, 25.206551, 28.360268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.755306, 25.045063, 28.186695>,  <30.817539, 24.775917, 27.897406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755306, 25.045063, 28.186695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270680, 0.675075, -0.686299,
		-0.950014, -0.302538, 0.077101,
		-0.155583, 0.672863, 0.723222,
		30.708632, 25.246922, 28.403662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186651, 25.084866, 27.656191>,  <30.817539, 24.775917, 27.897406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186651, 25.084866, 27.656191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.353254, 25.331844, 27.923107>,  <30.453217, 25.480032, 28.083258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.353254, 25.331844, 27.923107>,  <30.186651, 25.084866, 27.656191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353254, 25.331844, 27.923107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226504, 0.781319, -0.581581,
		-0.880464, 0.091089, 0.465281,
		0.416508, 0.617449, 0.667291,
		30.478207, 25.517078, 28.123295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671522, 25.515530, 27.841969>,  <30.186651, 25.084866, 27.656191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671522, 25.515530, 27.841969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.004211, 25.724430, 27.917320>,  <30.203825, 25.849771, 27.962532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.004211, 25.724430, 27.917320>,  <29.671522, 25.515530, 27.841969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004211, 25.724430, 27.917320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231283, 0.634392, -0.737601,
		-0.504721, 0.569911, 0.648428,
		0.831724, 0.522253, 0.188380,
		30.253729, 25.881105, 27.973835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439856, 26.297472, 27.895752>,  <29.671522, 25.515530, 27.841969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439856, 26.297472, 27.895752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.824533, 26.291306, 27.786278>,  <30.055340, 26.287605, 27.720594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.824533, 26.291306, 27.786278>,  <29.439856, 26.297472, 27.895752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824533, 26.291306, 27.786278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212253, 0.589927, -0.779060,
		0.173463, 0.807309, 0.564059,
		0.961696, -0.015415, -0.273684,
		30.113043, 26.286680, 27.704172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710308, 27.035933, 27.778793>,  <29.439856, 26.297472, 27.895752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710308, 27.035933, 27.778793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.980658, 26.800030, 27.601986>,  <30.142868, 26.658487, 27.495901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.980658, 26.800030, 27.601986>,  <29.710308, 27.035933, 27.778793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980658, 26.800030, 27.601986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218217, 0.732981, -0.644298,
		0.703972, 0.339007, 0.624098,
		0.675873, -0.589757, -0.442021,
		30.183420, 26.623102, 27.469379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325802, 27.409826, 27.766039>,  <29.710308, 27.035933, 27.778793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325802, 27.409826, 27.766039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.347311, 27.137142, 27.474182>,  <30.360216, 26.973532, 27.299068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.347311, 27.137142, 27.474182>,  <30.325802, 27.409826, 27.766039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347311, 27.137142, 27.474182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357628, 0.695379, -0.623338,
		0.932314, -0.227422, 0.281193,
		0.053775, -0.681709, -0.729644,
		30.363443, 26.932629, 27.255289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903608, 27.682453, 27.417984>,  <30.325802, 27.409826, 27.766039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903608, 27.682453, 27.417984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.768606, 27.413254, 27.154724>,  <30.687605, 27.251734, 26.996769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.768606, 27.413254, 27.154724>,  <30.903608, 27.682453, 27.417984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768606, 27.413254, 27.154724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047010, 0.686252, -0.725843,
		0.940150, -0.275914, -0.199974,
		-0.337503, -0.673001, -0.658151,
		30.667355, 27.211353, 26.957279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317986, 27.775555, 26.868990>,  <30.903608, 27.682453, 27.417984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317986, 27.775555, 26.868990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.981010, 27.615452, 26.724716>,  <30.778826, 27.519390, 26.638151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.981010, 27.615452, 26.724716>,  <31.317986, 27.775555, 26.868990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981010, 27.615452, 26.724716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041913, 0.716085, -0.696754,
		0.537160, -0.571855, -0.620034,
		-0.842439, -0.400255, -0.360684,
		30.728279, 27.495375, 26.616510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389616, 27.749985, 26.149426>,  <31.317986, 27.775555, 26.868990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389616, 27.749985, 26.149426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.991592, 27.728992, 26.183147>,  <30.752779, 27.716398, 26.203381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.991592, 27.728992, 26.183147>,  <31.389616, 27.749985, 26.149426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991592, 27.728992, 26.183147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098941, 0.596467, -0.796516,
		-0.008485, -0.800920, -0.598711,
		-0.995057, -0.052479, 0.084305,
		30.693075, 27.713249, 26.208439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116848, 27.499565, 25.535074>,  <31.389616, 27.749985, 26.149426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116848, 27.499565, 25.535074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.829624, 27.726589, 25.696201>,  <30.657290, 27.862804, 25.792877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.829624, 27.726589, 25.696201>,  <31.116848, 27.499565, 25.535074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829624, 27.726589, 25.696201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035983, 0.547731, -0.835881,
		-0.695050, -0.614708, -0.372882,
		-0.718061, 0.567561, 0.402819,
		30.614206, 27.896858, 25.817047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674826, 27.590385, 24.963524>,  <31.116848, 27.499565, 25.535074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674826, 27.590385, 24.963524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553394, 27.864281, 25.228542>,  <30.480536, 28.028618, 25.387554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553394, 27.864281, 25.228542>,  <30.674826, 27.590385, 24.963524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553394, 27.864281, 25.228542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299861, 0.591370, -0.748575,
		-0.904391, -0.425924, 0.025799,
		-0.303580, 0.684740, 0.662548,
		30.462320, 28.069702, 25.427307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005951, 27.637426, 24.880297>,  <30.674826, 27.590385, 24.963524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005951, 27.637426, 24.880297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.080013, 27.989704, 25.054695>,  <30.124451, 28.201071, 25.159334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.080013, 27.989704, 25.054695>,  <30.005951, 27.637426, 24.880297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080013, 27.989704, 25.054695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587227, 0.454900, -0.669501,
		-0.787961, -0.132068, 0.601394,
		0.185154, 0.880695, 0.435997,
		30.135559, 28.253912, 25.185493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.702984, 33.670998, 16.840292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.924946, 33.349766, 16.927135>,  <45.058125, 33.157024, 16.979242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.924946, 33.349766, 16.927135>,  <44.702984, 33.670998, 16.840292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924946, 33.349766, 16.927135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729839, -0.344701, 0.590353,
		-0.399265, -0.486045, -0.777398,
		0.554908, -0.803083, 0.217108,
		45.091419, 33.108841, 16.992268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399616, 33.005497, 16.579548>,  <44.702984, 33.670998, 16.840292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399616, 33.005497, 16.579548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.641792, 32.922493, 16.886894>,  <44.787098, 32.872692, 17.071302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.641792, 32.922493, 16.886894>,  <44.399616, 33.005497, 16.579548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641792, 32.922493, 16.886894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795519, -0.187403, 0.576220,
		0.024426, -0.960116, -0.278534,
		0.605436, -0.207505, 0.768368,
		44.823421, 32.860241, 17.117405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995529, 32.708473, 16.990328>,  <44.399616, 33.005497, 16.579548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995529, 32.708473, 16.990328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.288815, 32.728119, 17.261616>,  <44.464787, 32.739906, 17.424389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.288815, 32.728119, 17.261616>,  <43.995529, 32.708473, 16.990328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288815, 32.728119, 17.261616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658447, -0.197827, 0.726162,
		0.169832, -0.979006, -0.112713,
		0.733215, 0.049110, 0.678222,
		44.508778, 32.742851, 17.465082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051353, 32.090149, 17.439468>,  <43.995529, 32.708473, 16.990328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051353, 32.090149, 17.439468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.258759, 32.331711, 17.681606>,  <44.383202, 32.476646, 17.826889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.258759, 32.331711, 17.681606>,  <44.051353, 32.090149, 17.439468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258759, 32.331711, 17.681606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577504, -0.274750, 0.768767,
		0.630579, -0.748207, 0.206294,
		0.518517, 0.603903, 0.605344,
		44.414314, 32.512882, 17.863209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235306, 31.713839, 18.050064>,  <44.051353, 32.090149, 17.439468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235306, 31.713839, 18.050064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.296013, 32.094170, 18.158058>,  <44.332436, 32.322369, 18.222855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.296013, 32.094170, 18.158058>,  <44.235306, 31.713839, 18.050064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296013, 32.094170, 18.158058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529755, -0.152357, 0.834354,
		0.834462, -0.269651, 0.480584,
		0.151764, 0.950829, 0.269985,
		44.341541, 32.379417, 18.239054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293369, 31.742538, 18.848255>,  <44.235306, 31.713839, 18.050064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293369, 31.742538, 18.848255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.162918, 32.096947, 18.716431>,  <44.084648, 32.309593, 18.637335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.162918, 32.096947, 18.716431>,  <44.293369, 31.742538, 18.848255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162918, 32.096947, 18.716431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489556, 0.139938, 0.860669,
		0.808688, 0.442025, 0.388119,
		-0.326125, 0.886020, -0.329562,
		44.065079, 32.362751, 18.617561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280293, 32.118984, 19.461691>,  <44.293369, 31.742538, 18.848255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280293, 32.118984, 19.461691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.028019, 32.293079, 19.204689>,  <43.876656, 32.397537, 19.050488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.028019, 32.293079, 19.204689>,  <44.280293, 32.118984, 19.461691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028019, 32.293079, 19.204689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631445, 0.193485, 0.750893,
		0.451129, 0.879281, 0.152798,
		-0.630682, 0.435234, -0.642504,
		43.838814, 32.423649, 19.011938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961266, 32.569130, 19.825319>,  <44.280293, 32.118984, 19.461691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961266, 32.569130, 19.825319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.717670, 32.573071, 19.508072>,  <43.571514, 32.575436, 19.317724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.717670, 32.573071, 19.508072>,  <43.961266, 32.569130, 19.825319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717670, 32.573071, 19.508072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768284, 0.241223, 0.592918,
		0.197162, 0.970420, -0.139331,
		-0.608989, 0.009855, -0.793117,
		43.534973, 32.576027, 19.270136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614132, 33.217018, 19.820263>,  <43.961266, 32.569130, 19.825319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614132, 33.217018, 19.820263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.394478, 32.942829, 19.629025>,  <43.262684, 32.778316, 19.514282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.394478, 32.942829, 19.629025>,  <43.614132, 33.217018, 19.820263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394478, 32.942829, 19.629025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792813, 0.246310, 0.557475,
		-0.264375, 0.685171, -0.678710,
		-0.549139, -0.685473, -0.478094,
		43.229736, 32.737186, 19.485596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089897, 33.509075, 19.749260>,  <43.614132, 33.217018, 19.820263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089897, 33.509075, 19.749260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.964088, 33.135403, 19.681866>,  <42.888603, 32.911201, 19.641430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.964088, 33.135403, 19.681866>,  <43.089897, 33.509075, 19.749260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964088, 33.135403, 19.681866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757361, 0.139956, 0.637822,
		-0.572258, 0.328215, -0.751529,
		-0.314524, -0.934177, -0.168486,
		42.869732, 32.855148, 19.631319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302906, 33.559723, 19.791819>,  <43.089897, 33.509075, 19.749260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302906, 33.559723, 19.791819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379627, 33.167755, 19.813629>,  <42.425659, 32.932575, 19.826715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379627, 33.167755, 19.813629>,  <42.302906, 33.559723, 19.791819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379627, 33.167755, 19.813629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807506, -0.125995, 0.576246,
		-0.557803, -0.154559, -0.815455,
		0.191807, -0.979917, 0.054527,
		42.437168, 32.873779, 19.829987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600613, 33.296444, 19.643421>,  <42.302906, 33.559723, 19.791819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600613, 33.296444, 19.643421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.833553, 33.027538, 19.826256>,  <41.973320, 32.866196, 19.935957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.833553, 33.027538, 19.826256>,  <41.600613, 33.296444, 19.643421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833553, 33.027538, 19.826256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741036, -0.207803, 0.638501,
		-0.334255, -0.710552, -0.619185,
		0.582356, -0.672260, 0.457085,
		42.008259, 32.825859, 19.963381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161655, 32.663498, 19.859140>,  <41.600613, 33.296444, 19.643421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161655, 32.663498, 19.859140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.489441, 32.681686, 20.087669>,  <41.686111, 32.692600, 20.224787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.489441, 32.681686, 20.087669>,  <41.161655, 32.663498, 19.859140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489441, 32.681686, 20.087669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542875, -0.258007, 0.799199,
		0.183743, -0.965073, -0.186744,
		0.819466, 0.045468, 0.571321,
		41.735279, 32.695328, 20.259066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206306, 31.969072, 20.123516>,  <41.161655, 32.663498, 19.859140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206306, 31.969072, 20.123516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.395493, 32.223454, 20.367439>,  <41.509007, 32.376083, 20.513794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.395493, 32.223454, 20.367439>,  <41.206306, 31.969072, 20.123516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395493, 32.223454, 20.367439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648590, -0.217147, 0.729505,
		0.596349, -0.740548, 0.309769,
		0.472968, 0.635953, 0.609807,
		41.537384, 32.414238, 20.550381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160469, 31.631231, 20.803558>,  <41.206306, 31.969072, 20.123516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160469, 31.631231, 20.803558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.266590, 32.008492, 20.883636>,  <41.330261, 32.234848, 20.931684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.266590, 32.008492, 20.883636>,  <41.160469, 31.631231, 20.803558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266590, 32.008492, 20.883636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614648, 0.005467, 0.788782,
		0.742847, -0.332318, 0.581157,
		0.265303, 0.943152, 0.200197,
		41.346180, 32.291435, 20.943695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450138, 31.667494, 21.545828>,  <41.160469, 31.631231, 20.803558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450138, 31.667494, 21.545828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.338676, 32.037579, 21.442806>,  <41.271797, 32.259628, 21.380993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.338676, 32.037579, 21.442806>,  <41.450138, 31.667494, 21.545828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338676, 32.037579, 21.442806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554027, 0.064193, 0.830020,
		0.784477, 0.373985, 0.494704,
		-0.278659, 0.925211, -0.257555,
		41.255077, 32.315144, 21.365540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627499, 32.104973, 22.114382>,  <41.450138, 31.667494, 21.545828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627499, 32.104973, 22.114382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.350159, 32.313507, 21.915398>,  <41.183754, 32.438629, 21.796007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.350159, 32.313507, 21.915398>,  <41.627499, 32.104973, 22.114382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350159, 32.313507, 21.915398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521983, 0.112560, 0.845496,
		0.496784, 0.845894, 0.194086,
		-0.693354, 0.521339, -0.497460,
		41.142151, 32.469910, 21.766159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515766, 32.696625, 22.522572>,  <41.627499, 32.104973, 22.114382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515766, 32.696625, 22.522572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.191700, 32.637413, 22.295689>,  <40.997261, 32.601887, 22.159559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.191700, 32.637413, 22.295689>,  <41.515766, 32.696625, 22.522572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191700, 32.637413, 22.295689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585878, 0.172248, 0.791882,
		-0.019519, 0.973868, -0.226274,
		-0.810164, -0.148025, -0.567206,
		40.948650, 32.593006, 22.125526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090225, 33.213100, 22.721594>,  <41.515766, 32.696625, 22.522572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090225, 33.213100, 22.721594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.831944, 32.953045, 22.561398>,  <40.676975, 32.797012, 22.465279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.831944, 32.953045, 22.561398>,  <41.090225, 33.213100, 22.721594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831944, 32.953045, 22.561398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658284, 0.208160, 0.723417,
		-0.386951, 0.730749, -0.562382,
		-0.645702, -0.650134, -0.400493,
		40.638233, 32.758003, 22.441250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535553, 33.491962, 22.851376>,  <41.090225, 33.213100, 22.721594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535553, 33.491962, 22.851376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.429646, 33.112617, 22.781502>,  <40.366100, 32.885010, 22.739578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.429646, 33.112617, 22.781502>,  <40.535553, 33.491962, 22.851376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429646, 33.112617, 22.781502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667509, 0.049511, 0.742953,
		-0.695937, 0.313315, -0.646147,
		-0.264770, -0.948358, -0.174684,
		40.350216, 32.828110, 22.729097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805267, 33.526127, 23.084709>,  <40.535553, 33.491962, 22.851376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805267, 33.526127, 23.084709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856209, 33.133835, 23.025455>,  <39.886772, 32.898460, 22.989904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856209, 33.133835, 23.025455>,  <39.805267, 33.526127, 23.084709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856209, 33.133835, 23.025455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640950, -0.195349, 0.742308,
		-0.756945, 0.000413, -0.653479,
		0.127350, -0.980734, -0.148133,
		39.894413, 32.839615, 22.981016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566875, 34.244530, 22.783268>,  <39.805267, 33.526127, 23.084709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566875, 34.244530, 22.783268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.392090, 34.222916, 22.424126>,  <39.287220, 34.209946, 22.208641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.392090, 34.222916, 22.424126>,  <39.566875, 34.244530, 22.783268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392090, 34.222916, 22.424126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750615, 0.528108, -0.397089,
		0.495622, -0.847456, -0.190202,
		-0.436963, -0.054037, -0.897855,
		39.261002, 34.206703, 22.154770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081512, 34.014938, 22.316666>,  <39.566875, 34.244530, 22.783268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081512, 34.014938, 22.316666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.796494, 34.202789, 22.108154>,  <39.625484, 34.315498, 21.983047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.796494, 34.202789, 22.108154>,  <40.081512, 34.014938, 22.316666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796494, 34.202789, 22.108154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698573, 0.544116, -0.464687,
		0.065405, -0.695260, -0.715776,
		-0.712544, 0.469629, -0.521278,
		39.582729, 34.343678, 21.951771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434078, 34.022999, 21.632771>,  <40.081512, 34.014938, 22.316666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434078, 34.022999, 21.632771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.135235, 34.287937, 21.655151>,  <39.955929, 34.446899, 21.668579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.135235, 34.287937, 21.655151>,  <40.434078, 34.022999, 21.632771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135235, 34.287937, 21.655151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544886, 0.658465, -0.519156,
		-0.380704, -0.357377, -0.852846,
		-0.747104, 0.662348, 0.055950,
		39.911102, 34.486641, 21.671936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343376, 34.253204, 21.045132>,  <40.434078, 34.022999, 21.632771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343376, 34.253204, 21.045132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.207951, 34.531769, 21.298237>,  <40.126694, 34.698906, 21.450100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.207951, 34.531769, 21.298237>,  <40.343376, 34.253204, 21.045132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207951, 34.531769, 21.298237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470547, 0.707659, -0.527071,
		-0.814837, 0.119298, -0.567281,
		-0.338563, 0.696410, 0.632762,
		40.106380, 34.740692, 21.488066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058434, 34.710758, 20.627840>,  <40.343376, 34.253204, 21.045132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058434, 34.710758, 20.627840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.071293, 34.923145, 20.966553>,  <40.079006, 35.050579, 21.169781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.071293, 34.923145, 20.966553>,  <40.058434, 34.710758, 20.627840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071293, 34.923145, 20.966553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398093, 0.770314, -0.498134,
		-0.916782, 0.353111, -0.186612,
		0.032147, 0.530969, 0.846781,
		40.080936, 35.082436, 21.220587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651535, 35.376255, 20.549158>,  <40.058434, 34.710758, 20.627840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651535, 35.376255, 20.549158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905579, 35.432095, 20.853039>,  <40.058006, 35.465599, 21.035368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905579, 35.432095, 20.853039>,  <39.651535, 35.376255, 20.549158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905579, 35.432095, 20.853039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356720, 0.819358, -0.448779,
		-0.685116, 0.556026, 0.470587,
		0.635111, 0.139598, 0.759701,
		40.096111, 35.473972, 21.080950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675846, 36.079399, 20.595266>,  <39.651535, 35.376255, 20.549158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675846, 36.079399, 20.595266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.004440, 35.916935, 20.755363>,  <40.201595, 35.819458, 20.851421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.004440, 35.916935, 20.755363>,  <39.675846, 36.079399, 20.595266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004440, 35.916935, 20.755363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568347, 0.640175, -0.516873,
		-0.046292, 0.652081, 0.756735,
		0.821486, -0.406160, 0.400243,
		40.250885, 35.795086, 20.875437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168365, 36.536121, 20.470299>,  <39.675846, 36.079399, 20.595266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168365, 36.536121, 20.470299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.398819, 36.233868, 20.594936>,  <40.537090, 36.052517, 20.669718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.398819, 36.233868, 20.594936>,  <40.168365, 36.536121, 20.470299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398819, 36.233868, 20.594936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750917, 0.338777, -0.566880,
		0.322793, 0.560578, 0.762599,
		0.576132, -0.755633, 0.311593,
		40.571659, 36.007179, 20.688414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845615, 36.845158, 20.735247>,  <40.168365, 36.536121, 20.470299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845615, 36.845158, 20.735247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.893444, 36.460514, 20.636448>,  <40.922142, 36.229729, 20.577169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.893444, 36.460514, 20.636448>,  <40.845615, 36.845158, 20.735247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893444, 36.460514, 20.636448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841969, 0.230045, -0.488024,
		0.526110, -0.149611, 0.837153,
		0.119569, -0.961611, -0.246997,
		40.929314, 36.172031, 20.562349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589840, 36.729424, 20.746178>,  <40.845615, 36.845158, 20.735247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589840, 36.729424, 20.746178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.443451, 36.412689, 20.550602>,  <41.355618, 36.222649, 20.433256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.443451, 36.412689, 20.550602>,  <41.589840, 36.729424, 20.746178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443451, 36.412689, 20.550602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737835, 0.073306, -0.670988,
		0.567156, -0.606317, 0.557418,
		-0.365969, -0.791837, -0.488938,
		41.333660, 36.175137, 20.403921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212818, 36.355198, 20.566200>,  <41.589840, 36.729424, 20.746178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212818, 36.355198, 20.566200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.909084, 36.273743, 20.318996>,  <41.726845, 36.224869, 20.170673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.909084, 36.273743, 20.318996>,  <42.212818, 36.355198, 20.566200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909084, 36.273743, 20.318996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639173, -0.055482, -0.767059,
		0.121911, -0.977474, 0.172287,
		-0.759339, -0.203634, -0.618011,
		41.681282, 36.212654, 20.133593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425888, 35.734367, 20.160355>,  <42.212818, 36.355198, 20.566200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425888, 35.734367, 20.160355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.157600, 35.943497, 19.949913>,  <41.996628, 36.068974, 19.823648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.157600, 35.943497, 19.949913>,  <42.425888, 35.734367, 20.160355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157600, 35.943497, 19.949913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566597, -0.096574, -0.818316,
		-0.478645, -0.846952, -0.231457,
		-0.670721, 0.522826, -0.526105,
		41.956383, 36.100346, 19.792082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376434, 35.400845, 19.465561>,  <42.425888, 35.734367, 20.160355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376434, 35.400845, 19.465561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.216328, 35.755684, 19.373608>,  <42.120262, 35.968586, 19.318436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.216328, 35.755684, 19.373608>,  <42.376434, 35.400845, 19.465561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216328, 35.755684, 19.373608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492997, -0.003016, -0.870026,
		-0.772491, -0.461573, -0.436129,
		-0.400265, 0.887097, -0.229884,
		42.096249, 36.021812, 19.304642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353157, 35.364841, 18.818253>,  <42.376434, 35.400845, 19.465561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353157, 35.364841, 18.818253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.348118, 35.760571, 18.876324>,  <42.345093, 35.998009, 18.911165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.348118, 35.760571, 18.876324>,  <42.353157, 35.364841, 18.818253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348118, 35.760571, 18.876324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537172, 0.129155, -0.833526,
		-0.843379, 0.067483, -0.533065,
		-0.012599, 0.989325, 0.145177,
		42.344337, 36.057369, 18.919876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967079, 35.625294, 18.132898>,  <42.353157, 35.364841, 18.818253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967079, 35.625294, 18.132898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.182285, 35.909515, 18.314293>,  <42.311409, 36.080048, 18.423130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.182285, 35.909515, 18.314293>,  <41.967079, 35.625294, 18.132898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182285, 35.909515, 18.314293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408863, 0.250482, -0.877548,
		-0.737136, 0.657548, -0.155757,
		0.538016, 0.710555, 0.453486,
		42.343689, 36.122681, 18.450338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980583, 36.067188, 17.617914>,  <41.967079, 35.625294, 18.132898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980583, 36.067188, 17.617914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.255375, 36.212505, 17.869656>,  <42.420250, 36.299694, 18.020700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.255375, 36.212505, 17.869656>,  <41.980583, 36.067188, 17.617914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255375, 36.212505, 17.869656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602690, 0.199021, -0.772758,
		-0.405989, 0.910171, -0.082228,
		0.686977, 0.363289, 0.629352,
		42.461468, 36.321491, 18.058460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166416, 36.707157, 17.316711>,  <41.980583, 36.067188, 17.617914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166416, 36.707157, 17.316711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.463493, 36.589199, 17.557194>,  <42.641739, 36.518425, 17.701483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.463493, 36.589199, 17.557194>,  <42.166416, 36.707157, 17.316711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463493, 36.589199, 17.557194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667656, 0.257114, -0.698662,
		0.051455, 0.920287, 0.387846,
		0.742690, -0.294897, 0.601205,
		42.686302, 36.500729, 17.737555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713055, 37.148460, 17.092354>,  <42.166416, 36.707157, 17.316711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713055, 37.148460, 17.092354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.883816, 36.857948, 17.307861>,  <42.986271, 36.683640, 17.437166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.883816, 36.857948, 17.307861>,  <42.713055, 37.148460, 17.092354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883816, 36.857948, 17.307861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803959, 0.032049, -0.593820,
		0.414014, 0.686649, 0.597583,
		0.426899, -0.726282, 0.538769,
		43.011887, 36.640064, 17.469492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359886, 37.398083, 17.159353>,  <42.713055, 37.148460, 17.092354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359886, 37.398083, 17.159353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.384449, 37.005333, 17.231068>,  <43.399185, 36.769684, 17.274096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.384449, 37.005333, 17.231068>,  <43.359886, 37.398083, 17.159353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384449, 37.005333, 17.231068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752545, -0.072452, -0.654544,
		0.655672, 0.175112, 0.734459,
		0.061406, -0.981879, 0.179284,
		43.402870, 36.710770, 17.284853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106705, 37.287663, 17.394403>,  <43.359886, 37.398083, 17.159353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106705, 37.287663, 17.394403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.960640, 36.936024, 17.271870>,  <43.873001, 36.725040, 17.198349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.960640, 36.936024, 17.271870>,  <44.106705, 37.287663, 17.394403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960640, 36.936024, 17.271870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787382, -0.116091, -0.605436,
		0.496677, -0.462281, 0.734580,
		-0.365160, -0.879101, -0.306332,
		43.851093, 36.672295, 17.179970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642876, 36.805515, 17.453922>,  <44.106705, 37.287663, 17.394403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642876, 36.805515, 17.453922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.399002, 36.632370, 17.188316>,  <44.252678, 36.528484, 17.028954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.399002, 36.632370, 17.188316>,  <44.642876, 36.805515, 17.453922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399002, 36.632370, 17.188316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792208, -0.305055, -0.528533,
		0.026221, -0.848277, 0.528903,
		-0.609687, -0.432860, -0.664013,
		44.216095, 36.502514, 16.989113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.288559, 26.539057, 30.017906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.518677, 26.681110, 30.312637>,  <30.656748, 26.766342, 30.489475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.518677, 26.681110, 30.312637>,  <30.288559, 26.539057, 30.017906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518677, 26.681110, 30.312637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278022, -0.762289, 0.584482,
		0.769245, -0.541105, -0.339806,
		0.575296, 0.355136, 0.736826,
		30.691265, 26.787651, 30.533686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759863, 25.965265, 30.263248>,  <30.288559, 26.539057, 30.017906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759863, 25.965265, 30.263248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.750959, 26.225792, 30.566639>,  <30.745617, 26.382109, 30.748674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.750959, 26.225792, 30.566639>,  <30.759863, 25.965265, 30.263248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750959, 26.225792, 30.566639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223188, -0.742757, 0.631268,
		0.974521, -0.155231, 0.161900,
		-0.022260, 0.651319, 0.758478,
		30.744282, 26.421188, 30.794182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011456, 25.656336, 30.849476>,  <30.759863, 25.965265, 30.263248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011456, 25.656336, 30.849476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874090, 25.954933, 31.077446>,  <30.791672, 26.134092, 31.214228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874090, 25.954933, 31.077446>,  <31.011456, 25.656336, 30.849476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874090, 25.954933, 31.077446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434775, -0.664251, 0.608063,
		0.832489, -0.038974, 0.552669,
		-0.343413, 0.746493, 0.569927,
		30.771067, 26.178881, 31.248425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201265, 25.458168, 31.560974>,  <31.011456, 25.656336, 30.849476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201265, 25.458168, 31.560974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.903780, 25.724670, 31.582863>,  <30.725288, 25.884571, 31.595997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.903780, 25.724670, 31.582863>,  <31.201265, 25.458168, 31.560974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903780, 25.724670, 31.582863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495870, -0.604709, 0.623249,
		0.448335, 0.436383, 0.780106,
		-0.743713, 0.666256, 0.054723,
		30.680666, 25.924547, 31.599279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081314, 25.634136, 32.232048>,  <31.201265, 25.458168, 31.560974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081314, 25.634136, 32.232048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.733892, 25.712513, 32.049961>,  <30.525440, 25.759539, 31.940708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.733892, 25.712513, 32.049961>,  <31.081314, 25.634136, 32.232048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733892, 25.712513, 32.049961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491518, -0.458184, 0.740592,
		-0.063463, 0.866992, 0.494265,
		-0.868552, 0.195940, -0.455220,
		30.473328, 25.771296, 31.913395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649038, 25.865595, 32.697918>,  <31.081314, 25.634136, 32.232048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649038, 25.865595, 32.697918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.401247, 25.735950, 32.411926>,  <30.252573, 25.658163, 32.240330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.401247, 25.735950, 32.411926>,  <30.649038, 25.865595, 32.697918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401247, 25.735950, 32.411926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522705, -0.509223, 0.683719,
		-0.585687, 0.797273, 0.146038,
		-0.619477, -0.324111, -0.714983,
		30.215405, 25.638718, 32.197430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055782, 25.977379, 32.991592>,  <30.649038, 25.865595, 32.697918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055782, 25.977379, 32.991592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013437, 25.686798, 32.719986>,  <29.988031, 25.512449, 32.557022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013437, 25.686798, 32.719986>,  <30.055782, 25.977379, 32.991592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013437, 25.686798, 32.719986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442325, -0.577172, 0.686455,
		-0.890585, 0.373014, -0.260227,
		-0.105862, -0.726452, -0.679015,
		29.981678, 25.468863, 32.516281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427691, 25.594265, 33.289906>,  <30.055782, 25.977379, 32.991592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427691, 25.594265, 33.289906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.573469, 25.361744, 32.998901>,  <29.660936, 25.222231, 32.824299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.573469, 25.361744, 32.998901>,  <29.427691, 25.594265, 33.289906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573469, 25.361744, 32.998901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347008, -0.809744, 0.473181,
		-0.864156, 0.080003, -0.496823,
		0.364444, -0.581304, -0.727507,
		29.682802, 25.187353, 32.780651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920485, 25.104740, 33.187504>,  <29.427691, 25.594265, 33.289906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920485, 25.104740, 33.187504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.253786, 24.935715, 33.044880>,  <29.453766, 24.834299, 32.959305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.253786, 24.935715, 33.044880>,  <28.920485, 25.104740, 33.187504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253786, 24.935715, 33.044880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236485, -0.855311, 0.460997,
		-0.499767, -0.299806, -0.812619,
		0.833251, -0.422563, -0.356557,
		29.503761, 24.808947, 32.937912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756699, 24.446695, 32.983585>,  <28.920485, 25.104740, 33.187504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756699, 24.446695, 32.983585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.150593, 24.396511, 33.031841>,  <29.386930, 24.366402, 33.060795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.150593, 24.396511, 33.031841>,  <28.756699, 24.446695, 32.983585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150593, 24.396511, 33.031841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170772, -0.830333, 0.530457,
		0.033618, -0.542962, -0.839084,
		0.984737, -0.125459, 0.120637,
		29.446014, 24.358873, 33.068031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865953, 23.727047, 32.733307>,  <28.756699, 24.446695, 32.983585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865953, 23.727047, 32.733307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.197199, 23.776768, 32.951950>,  <29.395947, 23.806601, 33.083134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.197199, 23.776768, 32.951950>,  <28.865953, 23.727047, 32.733307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197199, 23.776768, 32.951950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254859, -0.785010, 0.564630,
		0.499275, -0.606884, -0.618397,
		0.828113, 0.124302, 0.546606,
		29.445633, 23.814058, 33.115932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136719, 23.084938, 32.778881>,  <28.865953, 23.727047, 32.733307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136719, 23.084938, 32.778881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.305929, 23.297394, 33.072533>,  <29.407455, 23.424868, 33.248722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.305929, 23.297394, 33.072533>,  <29.136719, 23.084938, 32.778881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305929, 23.297394, 33.072533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179942, -0.744810, 0.642556,
		0.888072, -0.403917, -0.219498,
		0.423024, 0.531139, 0.734127,
		29.432837, 23.456736, 33.292770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690386, 22.646671, 33.295364>,  <29.136719, 23.084938, 32.778881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690386, 22.646671, 33.295364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.525885, 22.956936, 33.486874>,  <29.427185, 23.143095, 33.601780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.525885, 22.956936, 33.486874>,  <29.690386, 22.646671, 33.295364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525885, 22.956936, 33.486874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370948, -0.622201, 0.689393,
		0.832628, 0.105913, 0.543610,
		-0.411251, 0.775660, 0.478774,
		29.402510, 23.189634, 33.630505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589052, 22.393202, 33.802509>,  <29.690386, 22.646671, 33.295364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589052, 22.393202, 33.802509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.418144, 22.736881, 33.915089>,  <29.315599, 22.943089, 33.982635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.418144, 22.736881, 33.915089>,  <29.589052, 22.393202, 33.802509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418144, 22.736881, 33.915089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474171, -0.478001, 0.739376,
		0.769805, 0.182459, 0.611644,
		-0.427272, 0.859200, 0.281451,
		29.289963, 22.994640, 33.999523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198000, 22.078510, 33.478081>,  <29.589052, 22.393202, 33.802509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198000, 22.078510, 33.478081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.398266, 21.775112, 33.311218>,  <30.518425, 21.593073, 33.211102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.398266, 21.775112, 33.311218>,  <30.198000, 22.078510, 33.478081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398266, 21.775112, 33.311218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013793, 0.474854, -0.879956,
		0.865531, 0.446318, 0.227281,
		0.500666, -0.758494, -0.417157,
		30.548466, 21.547564, 33.186069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677856, 22.420080, 33.067554>,  <30.198000, 22.078510, 33.478081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677856, 22.420080, 33.067554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.676262, 22.046894, 32.923576>,  <30.675304, 21.822983, 32.837189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.676262, 22.046894, 32.923576>,  <30.677856, 22.420080, 33.067554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676262, 22.046894, 32.923576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171265, 0.353993, -0.919433,
		0.985217, -0.065310, 0.158373,
		-0.003986, -0.932965, -0.359945,
		30.675066, 21.767004, 32.815594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310480, 22.343277, 32.628437>,  <30.677856, 22.420080, 33.067554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310480, 22.343277, 32.628437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.040747, 22.087181, 32.481266>,  <30.878906, 21.933523, 32.392963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.040747, 22.087181, 32.481266>,  <31.310480, 22.343277, 32.628437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040747, 22.087181, 32.481266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065570, 0.444368, -0.893441,
		0.735512, -0.626601, -0.257671,
		-0.674332, -0.640241, -0.367924,
		30.838448, 21.895109, 32.370888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591173, 22.158369, 32.051132>,  <31.310480, 22.343277, 32.628437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591173, 22.158369, 32.051132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213825, 22.032337, 32.009605>,  <30.987417, 21.956718, 31.984690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213825, 22.032337, 32.009605>,  <31.591173, 22.158369, 32.051132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213825, 22.032337, 32.009605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024323, 0.246412, -0.968860,
		0.330852, -0.916518, -0.224794,
		-0.943369, -0.315082, -0.103818,
		30.930815, 21.937813, 31.978460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676126, 21.754128, 31.492437>,  <31.591173, 22.158369, 32.051132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676126, 21.754128, 31.492437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.280519, 21.806599, 31.519684>,  <31.043156, 21.838081, 31.536032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.280519, 21.806599, 31.519684>,  <31.676126, 21.754128, 31.492437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280519, 21.806599, 31.519684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042677, 0.187797, -0.981280,
		-0.141515, -0.973409, -0.180135,
		-0.989016, 0.131178, 0.068118,
		30.983814, 21.845951, 31.540119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483793, 21.541727, 30.792532>,  <31.676126, 21.754128, 31.492437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483793, 21.541727, 30.792532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.169621, 21.735031, 30.947224>,  <30.981117, 21.851013, 31.040039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.169621, 21.735031, 30.947224>,  <31.483793, 21.541727, 30.792532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169621, 21.735031, 30.947224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245592, 0.330196, -0.911403,
		-0.568141, -0.810821, -0.140661,
		-0.785430, 0.483260, 0.386729,
		30.933992, 21.880009, 31.063242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901001, 21.460979, 30.372297>,  <31.483793, 21.541727, 30.792532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901001, 21.460979, 30.372297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.818998, 21.795597, 30.575539>,  <30.769796, 21.996368, 30.697483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.818998, 21.795597, 30.575539>,  <30.901001, 21.460979, 30.372297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818998, 21.795597, 30.575539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223197, 0.465492, -0.856447,
		-0.952971, -0.288986, 0.091284,
		-0.205009, 0.836543, 0.508101,
		30.757496, 22.046560, 30.727968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295006, 21.692539, 30.043365>,  <30.901001, 21.460979, 30.372297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295006, 21.692539, 30.043365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.441729, 22.002735, 30.248917>,  <30.529762, 22.188852, 30.372248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.441729, 22.002735, 30.248917>,  <30.295006, 21.692539, 30.043365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441729, 22.002735, 30.248917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222157, 0.609416, -0.761090,
		-0.903383, 0.165010, 0.395817,
		0.366805, 0.775489, 0.513878,
		30.551769, 22.235382, 30.403080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879917, 22.299973, 30.089552>,  <30.295006, 21.692539, 30.043365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879917, 22.299973, 30.089552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.244543, 22.460777, 30.124050>,  <30.463318, 22.557261, 30.144749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.244543, 22.460777, 30.124050>,  <29.879917, 22.299973, 30.089552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244543, 22.460777, 30.124050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270713, 0.744712, -0.610015,
		-0.309461, 0.532720, 0.787682,
		0.911564, 0.402011, 0.086245,
		30.518013, 22.581381, 30.149923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686579, 23.000879, 30.157576>,  <29.879917, 22.299973, 30.089552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686579, 23.000879, 30.157576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.081079, 23.039806, 30.104160>,  <30.317780, 23.063164, 30.072111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.081079, 23.039806, 30.104160>,  <29.686579, 23.000879, 30.157576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081079, 23.039806, 30.104160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149864, 0.867237, -0.474806,
		0.069602, 0.488292, 0.869900,
		0.986253, 0.097320, -0.133539,
		30.376955, 23.069002, 30.064098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891600, 23.617401, 30.521626>,  <29.686579, 23.000879, 30.157576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891600, 23.617401, 30.521626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.180788, 23.514507, 30.265144>,  <30.354301, 23.452770, 30.111256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.180788, 23.514507, 30.265144>,  <29.891600, 23.617401, 30.521626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180788, 23.514507, 30.265144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123208, 0.961227, -0.246703,
		0.679805, 0.099357, 0.726632,
		0.722970, -0.257237, -0.641205,
		30.397678, 23.437336, 30.072783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408852, 24.161016, 30.570000>,  <29.891600, 23.617401, 30.521626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408852, 24.161016, 30.570000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.462217, 23.985069, 30.214760>,  <30.494236, 23.879501, 30.001616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.462217, 23.985069, 30.214760>,  <30.408852, 24.161016, 30.570000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462217, 23.985069, 30.214760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011864, 0.896753, -0.442371,
		0.990989, 0.048482, 0.124859,
		0.133415, -0.439867, -0.888098,
		30.502241, 23.853109, 29.948330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941462, 24.553247, 30.360115>,  <30.408852, 24.161016, 30.570000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941462, 24.553247, 30.360115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761375, 24.383842, 30.045677>,  <30.653324, 24.282200, 29.857016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761375, 24.383842, 30.045677>,  <30.941462, 24.553247, 30.360115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761375, 24.383842, 30.045677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049004, 0.867318, -0.495337,
		0.891575, -0.261529, -0.369724,
		-0.450213, -0.423512, -0.786095,
		30.626310, 24.256788, 29.809849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388090, 24.661947, 29.797945>,  <30.941462, 24.553247, 30.360115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388090, 24.661947, 29.797945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.030020, 24.585945, 29.636673>,  <30.815178, 24.540344, 29.539909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.030020, 24.585945, 29.636673>,  <31.388090, 24.661947, 29.797945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030020, 24.585945, 29.636673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142010, 0.735850, -0.662086,
		0.422480, -0.649941, -0.631734,
		-0.895178, -0.190005, -0.403179,
		30.761467, 24.528944, 29.515718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077152, 24.215487, 29.853495>,  <31.388090, 24.661947, 29.797945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077152, 24.215487, 29.853495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471966, 24.262287, 29.809547>,  <32.708855, 24.290367, 29.783178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471966, 24.262287, 29.809547>,  <32.077152, 24.215487, 29.853495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471966, 24.262287, 29.809547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160400, -0.743301, 0.649442,
		-0.005681, -0.658646, -0.752431,
		0.987036, 0.117000, -0.109869,
		32.768078, 24.297388, 29.776587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351913, 23.662338, 29.671589>,  <32.077152, 24.215487, 29.853495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351913, 23.662338, 29.671589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644188, 23.858532, 29.861546>,  <32.819553, 23.976248, 29.975519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644188, 23.858532, 29.861546>,  <32.351913, 23.662338, 29.671589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644188, 23.858532, 29.861546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186214, -0.812404, 0.552562,
		0.656825, -0.315319, -0.684948,
		0.730688, 0.490484, 0.474890,
		32.863396, 24.005676, 30.004013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813313, 23.179729, 29.813147>,  <32.351913, 23.662338, 29.671589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813313, 23.179729, 29.813147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983566, 23.467487, 30.032711>,  <33.085720, 23.640142, 30.164450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983566, 23.467487, 30.032711>,  <32.813313, 23.179729, 29.813147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983566, 23.467487, 30.032711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282749, -0.681962, 0.674523,
		0.859586, -0.131896, -0.493675,
		0.425634, 0.719397, 0.548912,
		33.111256, 23.683306, 30.197384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463390, 22.929266, 29.948097>,  <32.813313, 23.179729, 29.813147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463390, 22.929266, 29.948097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380276, 23.196655, 30.233746>,  <33.330406, 23.357090, 30.405134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380276, 23.196655, 30.233746>,  <33.463390, 22.929266, 29.948097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380276, 23.196655, 30.233746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243263, -0.671805, 0.699644,
		0.947443, 0.319094, -0.023025,
		-0.207783, 0.668474, 0.714121,
		33.317940, 23.397198, 30.447983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995193, 22.852694, 30.364256>,  <33.463390, 22.929266, 29.948097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995193, 22.852694, 30.364256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725311, 23.029255, 30.600876>,  <33.563381, 23.135191, 30.742847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725311, 23.029255, 30.600876>,  <33.995193, 22.852694, 30.364256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725311, 23.029255, 30.600876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255837, -0.611917, 0.748402,
		0.692325, 0.656295, 0.299940,
		-0.674710, 0.441401, 0.591550,
		33.522900, 23.161674, 30.778341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240051, 22.874424, 31.062199>,  <33.995193, 22.852694, 30.364256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240051, 22.874424, 31.062199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846390, 22.930534, 31.105595>,  <33.610195, 22.964201, 31.131632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846390, 22.930534, 31.105595>,  <34.240051, 22.874424, 31.062199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846390, 22.930534, 31.105595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016245, -0.537903, 0.842850,
		0.176587, 0.831254, 0.527099,
		-0.984151, 0.140274, 0.108490,
		33.551144, 22.972616, 31.138142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137341, 23.260395, 31.750595>,  <34.240051, 22.874424, 31.062199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137341, 23.260395, 31.750595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829952, 23.033512, 31.632114>,  <33.645519, 22.897383, 31.561026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829952, 23.033512, 31.632114>,  <34.137341, 23.260395, 31.750595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829952, 23.033512, 31.632114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009674, -0.452542, 0.891691,
		-0.639815, 0.688101, 0.342277,
		-0.768468, -0.567206, -0.296200,
		33.599411, 22.863350, 31.543255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186947, 23.732243, 32.351589>,  <34.137341, 23.260395, 31.750595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186947, 23.732243, 32.351589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524570, 23.823708, 32.545612>,  <34.727146, 23.878588, 32.662025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524570, 23.823708, 32.545612>,  <34.186947, 23.732243, 32.351589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524570, 23.823708, 32.545612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241630, 0.645324, -0.724687,
		-0.478727, 0.728882, 0.489439,
		0.844059, 0.228664, 0.485054,
		34.777786, 23.892307, 32.691128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187958, 24.350302, 32.175243>,  <34.186947, 23.732243, 32.351589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187958, 24.350302, 32.175243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556747, 24.276028, 32.311176>,  <34.778023, 24.231464, 32.392735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556747, 24.276028, 32.311176>,  <34.187958, 24.350302, 32.175243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556747, 24.276028, 32.311176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386363, 0.381648, -0.839684,
		0.026219, 0.905465, 0.423611,
		0.921974, -0.185683, 0.339832,
		34.833340, 24.220324, 32.413124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566528, 25.014082, 32.304581>,  <34.187958, 24.350302, 32.175243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566528, 25.014082, 32.304581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844120, 24.730049, 32.256950>,  <35.010674, 24.559629, 32.228371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844120, 24.730049, 32.256950>,  <34.566528, 25.014082, 32.304581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844120, 24.730049, 32.256950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258836, 0.400375, -0.879036,
		0.671865, 0.579207, 0.461646,
		0.693975, -0.710084, -0.119079,
		35.052311, 24.517023, 32.221226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166378, 25.423594, 32.223381>,  <34.566528, 25.014082, 32.304581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166378, 25.423594, 32.223381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.239754, 25.068344, 32.054817>,  <35.283779, 24.855194, 31.953678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.239754, 25.068344, 32.054817>,  <35.166378, 25.423594, 32.223381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239754, 25.068344, 32.054817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504149, 0.453015, -0.735263,
		0.843909, -0.077576, 0.530849,
		0.183444, -0.888121, -0.421413,
		35.294788, 24.801908, 31.928392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922283, 25.498711, 32.124882>,  <35.166378, 25.423594, 32.223381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922283, 25.498711, 32.124882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789730, 25.202301, 31.891277>,  <35.710197, 25.024456, 31.751116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789730, 25.202301, 31.891277>,  <35.922283, 25.498711, 32.124882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789730, 25.202301, 31.891277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367254, 0.468857, -0.803304,
		0.869084, -0.480684, 0.116771,
		-0.331386, -0.741023, -0.584010,
		35.690315, 24.979994, 31.716074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473057, 25.130543, 31.761353>,  <35.922283, 25.498711, 32.124882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473057, 25.130543, 31.761353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.145554, 25.049946, 31.546303>,  <35.949051, 25.001589, 31.417273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.145554, 25.049946, 31.546303>,  <36.473057, 25.130543, 31.761353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145554, 25.049946, 31.546303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370822, 0.529302, -0.763106,
		0.438321, -0.824162, -0.358654,
		-0.818759, -0.201488, -0.537621,
		35.899925, 24.989498, 31.385015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671696, 25.104212, 31.152065>,  <36.473057, 25.130543, 31.761353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671696, 25.104212, 31.152065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285290, 25.160275, 31.065197>,  <36.053444, 25.193913, 31.013077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285290, 25.160275, 31.065197>,  <36.671696, 25.104212, 31.152065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285290, 25.160275, 31.065197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258157, 0.564601, -0.783952,
		0.012738, -0.813377, -0.581598,
		-0.966019, 0.140158, -0.217171,
		35.995483, 25.202322, 31.000046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.923172, 26.040049, 36.048332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.929695, 25.773975, 35.749733>,  <29.933609, 25.614330, 35.570572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.929695, 25.773975, 35.749733>,  <29.923172, 26.040049, 36.048332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929695, 25.773975, 35.749733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237872, 0.722583, -0.649069,
		0.971160, 0.188157, -0.146444,
		0.016309, -0.665185, -0.746500,
		29.934587, 25.574419, 35.525784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538137, 26.097187, 35.603394>,  <29.923172, 26.040049, 36.048332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538137, 26.097187, 35.603394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.263203, 25.936092, 35.361610>,  <30.098242, 25.839436, 35.216541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.263203, 25.936092, 35.361610>,  <30.538137, 26.097187, 35.603394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263203, 25.936092, 35.361610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090107, 0.778494, -0.621151,
		0.720728, -0.481406, -0.498798,
		-0.687337, -0.402735, -0.604460,
		30.057001, 25.815271, 35.180271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871796, 26.008266, 34.975895>,  <30.538137, 26.097187, 35.603394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871796, 26.008266, 34.975895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.484818, 26.025570, 34.876152>,  <30.252630, 26.035952, 34.816307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.484818, 26.025570, 34.876152>,  <30.871796, 26.008266, 34.975895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484818, 26.025570, 34.876152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194374, 0.757993, -0.622628,
		0.162075, -0.650826, -0.741725,
		-0.967446, 0.043259, -0.249356,
		30.194584, 26.038548, 34.801346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876556, 26.029154, 34.274422>,  <30.871796, 26.008266, 34.975895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876556, 26.029154, 34.274422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519358, 26.171860, 34.384171>,  <30.305038, 26.257484, 34.450020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519358, 26.171860, 34.384171>,  <30.876556, 26.029154, 34.274422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519358, 26.171860, 34.384171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132047, 0.790476, -0.598090,
		-0.430260, -0.497862, -0.753000,
		-0.892995, 0.356766, 0.274369,
		30.251459, 26.278889, 34.466480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494112, 26.201262, 33.586670>,  <30.876556, 26.029154, 34.274422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494112, 26.201262, 33.586670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.316412, 26.408756, 33.878849>,  <30.209793, 26.533253, 34.054157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.316412, 26.408756, 33.878849>,  <30.494112, 26.201262, 33.586670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316412, 26.408756, 33.878849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162286, 0.755236, -0.635044,
		-0.881082, -0.400659, -0.251329,
		-0.444249, 0.518739, 0.730447,
		30.183138, 26.564379, 34.097984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127846, 26.813231, 33.236729>,  <30.494112, 26.201262, 33.586670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127846, 26.813231, 33.236729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.061941, 26.951988, 33.606056>,  <30.022398, 27.035244, 33.827652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.061941, 26.951988, 33.606056>,  <30.127846, 26.813231, 33.236729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061941, 26.951988, 33.606056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033301, 0.933622, -0.356709,
		-0.985771, -0.089519, -0.142273,
		-0.164761, 0.346896, 0.923319,
		30.012512, 27.056057, 33.883053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628042, 27.443939, 33.205891>,  <30.127846, 26.813231, 33.236729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628042, 27.443939, 33.205891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.829660, 27.488552, 33.548470>,  <29.950632, 27.515320, 33.754017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.829660, 27.488552, 33.548470>,  <29.628042, 27.443939, 33.205891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829660, 27.488552, 33.548470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058954, 0.984871, -0.162954,
		-0.861662, 0.132628, 0.489845,
		0.504046, 0.111533, 0.856445,
		29.980875, 27.522013, 33.805405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205206, 27.977503, 33.611320>,  <29.628042, 27.443939, 33.205891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205206, 27.977503, 33.611320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.579279, 27.947586, 33.749794>,  <29.803722, 27.929636, 33.832878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.579279, 27.947586, 33.749794>,  <29.205206, 27.977503, 33.611320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579279, 27.947586, 33.749794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105502, 0.991902, -0.070711,
		-0.338091, 0.102650, 0.935498,
		0.935181, -0.074790, 0.346183,
		29.859833, 27.925150, 33.853649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331392, 28.634506, 33.970909>,  <29.205206, 27.977503, 33.611320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331392, 28.634506, 33.970909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.687828, 28.463722, 33.909374>,  <29.901690, 28.361252, 33.872452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.687828, 28.463722, 33.909374>,  <29.331392, 28.634506, 33.970909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687828, 28.463722, 33.909374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365649, 0.876227, -0.313889,
		0.268815, 0.223453, 0.936914,
		0.891089, -0.426959, -0.153838,
		29.955154, 28.335634, 33.863224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832771, 29.132780, 34.304440>,  <29.331392, 28.634506, 33.970909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832771, 29.132780, 34.304440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.009054, 28.895916, 34.034588>,  <30.114824, 28.753798, 33.872677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.009054, 28.895916, 34.034588>,  <29.832771, 29.132780, 34.304440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009054, 28.895916, 34.034588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380328, 0.803935, -0.457207,
		0.813098, -0.055087, 0.579514,
		0.440706, -0.592160, -0.674630,
		30.141266, 28.718267, 33.832199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536596, 29.435051, 34.194603>,  <29.832771, 29.132780, 34.304440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536596, 29.435051, 34.194603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.456104, 29.217342, 33.868835>,  <30.407808, 29.086718, 33.673374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.456104, 29.217342, 33.868835>,  <30.536596, 29.435051, 34.194603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456104, 29.217342, 33.868835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380979, 0.722474, -0.576963,
		0.902420, -0.426378, 0.061973,
		-0.201230, -0.544273, -0.814416,
		30.395735, 29.054060, 33.624512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228306, 29.311665, 33.811386>,  <30.536596, 29.435051, 34.194603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228306, 29.311665, 33.811386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.897814, 29.306381, 33.586117>,  <30.699518, 29.303211, 33.450954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.897814, 29.306381, 33.586117>,  <31.228306, 29.311665, 33.811386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897814, 29.306381, 33.586117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397634, 0.694478, -0.599656,
		0.399035, -0.719393, -0.568547,
		-0.826232, -0.013210, -0.563176,
		30.649944, 29.302418, 33.417164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898581, 29.051287, 33.581970>,  <31.228306, 29.311665, 33.811386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898581, 29.051287, 33.581970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.293674, 28.996094, 33.611214>,  <32.530731, 28.962978, 33.628761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.293674, 28.996094, 33.611214>,  <31.898581, 29.051287, 33.581970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293674, 28.996094, 33.611214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155576, -0.909794, 0.384800,
		0.013423, -0.391454, -0.920100,
		0.987733, -0.137981, 0.073113,
		32.589993, 28.954700, 33.633148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973764, 28.333345, 33.440628>,  <31.898581, 29.051287, 33.581970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973764, 28.333345, 33.440628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.325684, 28.447086, 33.592999>,  <32.536835, 28.515331, 33.684422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.325684, 28.447086, 33.592999>,  <31.973764, 28.333345, 33.440628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325684, 28.447086, 33.592999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056550, -0.858273, 0.510069,
		0.471976, -0.427215, -0.771185,
		0.879796, 0.284350, 0.380925,
		32.589622, 28.532391, 33.707275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422104, 27.850222, 33.268047>,  <31.973764, 28.333345, 33.440628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422104, 27.850222, 33.268047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574753, 28.017078, 33.597980>,  <32.666344, 28.117193, 33.795940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574753, 28.017078, 33.597980>,  <32.422104, 27.850222, 33.268047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574753, 28.017078, 33.597980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012307, -0.894588, 0.446723,
		0.924235, -0.160330, -0.346533,
		0.381627, 0.417142, 0.824836,
		32.689240, 28.142221, 33.845432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895752, 27.368469, 33.471596>,  <32.422104, 27.850222, 33.268047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895752, 27.368469, 33.471596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896301, 27.592865, 33.802727>,  <32.896633, 27.727503, 34.001404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896301, 27.592865, 33.802727>,  <32.895752, 27.368469, 33.471596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896301, 27.592865, 33.802727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267333, -0.797901, 0.540265,
		0.963603, 0.220560, -0.151070,
		0.001378, 0.560987, 0.827823,
		32.896713, 27.761162, 34.051075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603138, 27.284178, 33.838287>,  <32.895752, 27.368469, 33.471596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603138, 27.284178, 33.838287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.334923, 27.406391, 34.108704>,  <33.173996, 27.479719, 34.270954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.334923, 27.406391, 34.108704>,  <33.603138, 27.284178, 33.838287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334923, 27.406391, 34.108704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392255, -0.627453, 0.672635,
		0.629698, 0.716206, 0.300882,
		-0.670535, 0.305534, 0.676041,
		33.133762, 27.498051, 34.311516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987564, 27.479561, 34.348240>,  <33.603138, 27.284178, 33.838287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987564, 27.479561, 34.348240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.621338, 27.403008, 34.489727>,  <33.401604, 27.357075, 34.574619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.621338, 27.403008, 34.489727>,  <33.987564, 27.479561, 34.348240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621338, 27.403008, 34.489727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388752, -0.646489, 0.656448,
		0.103043, 0.738528, 0.666302,
		-0.915562, -0.191384, 0.353720,
		33.346668, 27.345592, 34.595844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044586, 27.459223, 35.112659>,  <33.987564, 27.479561, 34.348240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044586, 27.459223, 35.112659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.701702, 27.267673, 35.036896>,  <33.495972, 27.152744, 34.991436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.701702, 27.267673, 35.036896>,  <34.044586, 27.459223, 35.112659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701702, 27.267673, 35.036896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264467, -0.724963, 0.635993,
		-0.441877, 0.495083, 0.748089,
		-0.857206, -0.478875, -0.189412,
		33.444542, 27.124010, 34.980072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688408, 27.388000, 35.803925>,  <34.044586, 27.459223, 35.112659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688408, 27.388000, 35.803925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.525513, 27.123291, 35.552143>,  <33.427776, 26.964466, 35.401073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.525513, 27.123291, 35.552143>,  <33.688408, 27.388000, 35.803925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525513, 27.123291, 35.552143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172961, -0.732603, 0.658314,
		-0.896796, 0.159219, 0.412804,
		-0.407237, -0.661772, -0.629456,
		33.403343, 26.924759, 35.363308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204262, 27.059933, 36.213375>,  <33.688408, 27.388000, 35.803925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204262, 27.059933, 36.213375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.252132, 26.817276, 35.899010>,  <33.280857, 26.671682, 35.710388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.252132, 26.817276, 35.899010>,  <33.204262, 27.059933, 36.213375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252132, 26.817276, 35.899010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114309, -0.794761, 0.596060,
		-0.986210, 0.018502, -0.164461,
		0.119679, -0.606640, -0.785917,
		33.288036, 26.635284, 35.663235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705059, 26.561182, 36.255318>,  <33.204262, 27.059933, 36.213375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705059, 26.561182, 36.255318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.997257, 26.398235, 36.036068>,  <33.172577, 26.300468, 35.904518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.997257, 26.398235, 36.036068>,  <32.705059, 26.561182, 36.255318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997257, 26.398235, 36.036068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187325, -0.891350, 0.412802,
		-0.656727, -0.198873, -0.727434,
		0.730493, -0.407364, -0.548120,
		33.216404, 26.276026, 35.871632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426853, 25.941500, 36.072514>,  <32.705059, 26.561182, 36.255318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426853, 25.941500, 36.072514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.820591, 25.892590, 36.021736>,  <33.056835, 25.863243, 35.991268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.820591, 25.892590, 36.021736>,  <32.426853, 25.941500, 36.072514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820591, 25.892590, 36.021736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054872, -0.897036, 0.438538,
		-0.167497, -0.424706, -0.889702,
		0.984344, -0.122273, -0.126946,
		33.115894, 25.855907, 35.983654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475613, 25.266586, 35.743629>,  <32.426853, 25.941500, 36.072514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475613, 25.266586, 35.743629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.823738, 25.361454, 35.916286>,  <33.032612, 25.418375, 36.019878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.823738, 25.361454, 35.916286>,  <32.475613, 25.266586, 35.743629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823738, 25.361454, 35.916286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040794, -0.908119, 0.416719,
		0.490814, -0.345066, -0.800020,
		0.870309, 0.237168, 0.431641,
		33.084831, 25.432604, 36.045780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977016, 24.700045, 35.547020>,  <32.475613, 25.266586, 35.743629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977016, 24.700045, 35.547020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.112404, 24.883121, 35.875885>,  <33.193634, 24.992968, 36.073204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.112404, 24.883121, 35.875885>,  <32.977016, 24.700045, 35.547020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112404, 24.883121, 35.875885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010520, -0.875522, 0.483063,
		0.940920, -0.154852, -0.301150,
		0.338467, 0.457692, 0.822167,
		33.213943, 25.020430, 36.122536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540123, 24.283751, 35.828075>,  <32.977016, 24.700045, 35.547020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540123, 24.283751, 35.828075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.480061, 24.517128, 36.147335>,  <33.444023, 24.657154, 36.338890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.480061, 24.517128, 36.147335>,  <33.540123, 24.283751, 35.828075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480061, 24.517128, 36.147335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187174, -0.775930, 0.602411,
		0.970783, 0.239848, 0.007304,
		-0.150155, 0.583443, 0.798152,
		33.435013, 24.692162, 36.386780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257519, 23.982908, 35.531105>,  <33.540123, 24.283751, 35.828075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257519, 23.982908, 35.531105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.221474, 23.591602, 35.456398>,  <34.199848, 23.356819, 35.411575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.221474, 23.591602, 35.456398>,  <34.257519, 23.982908, 35.531105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221474, 23.591602, 35.456398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122665, 0.175199, -0.976862,
		0.988349, -0.110939, 0.104211,
		-0.090114, -0.978263, -0.186766,
		34.194439, 23.298124, 35.400368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936211, 23.757727, 35.281483>,  <34.257519, 23.982908, 35.531105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936211, 23.757727, 35.281483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.665367, 23.496769, 35.145302>,  <34.502861, 23.340195, 35.063595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.665367, 23.496769, 35.145302>,  <34.936211, 23.757727, 35.281483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665367, 23.496769, 35.145302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350935, 0.120371, -0.928631,
		0.646814, -0.748259, 0.147444,
		-0.677109, -0.652395, -0.340448,
		34.462234, 23.301050, 35.043167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267578, 23.399982, 34.805550>,  <34.936211, 23.757727, 35.281483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267578, 23.399982, 34.805550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892124, 23.318726, 34.694054>,  <34.666851, 23.269972, 34.627155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892124, 23.318726, 34.694054>,  <35.267578, 23.399982, 34.805550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892124, 23.318726, 34.694054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314681, -0.173506, -0.933205,
		0.141212, -0.963654, 0.226784,
		-0.938635, -0.203144, -0.278742,
		34.610535, 23.257782, 34.610432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346474, 22.963339, 34.298870>,  <35.267578, 23.399982, 34.805550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346474, 22.963339, 34.298870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.981464, 23.098442, 34.206589>,  <34.762459, 23.179504, 34.151218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.981464, 23.098442, 34.206589>,  <35.346474, 22.963339, 34.298870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981464, 23.098442, 34.206589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261670, 0.048549, -0.963935,
		-0.314378, -0.939980, -0.132683,
		-0.912521, 0.337759, -0.230702,
		34.707706, 23.199770, 34.137379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211124, 22.705730, 33.695774>,  <35.346474, 22.963339, 34.298870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211124, 22.705730, 33.695774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.938156, 22.997204, 33.718807>,  <34.774376, 23.172089, 33.732628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.938156, 22.997204, 33.718807>,  <35.211124, 22.705730, 33.695774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938156, 22.997204, 33.718807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136119, 0.204090, -0.969443,
		-0.718171, -0.653732, -0.238464,
		-0.682423, 0.728685, 0.057587,
		34.733429, 23.215809, 33.736084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756054, 22.696955, 33.075787>,  <35.211124, 22.705730, 33.695774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756054, 22.696955, 33.075787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764313, 23.068562, 33.223568>,  <34.769268, 23.291527, 33.312237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764313, 23.068562, 33.223568>,  <34.756054, 22.696955, 33.075787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764313, 23.068562, 33.223568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256101, 0.352289, -0.900170,
		-0.966430, 0.113206, -0.230648,
		0.020650, 0.929020, 0.369455,
		34.770508, 23.347267, 33.334404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444553, 23.079493, 32.587448>,  <34.756054, 22.696955, 33.075787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444553, 23.079493, 32.587448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.612160, 23.378422, 32.793724>,  <34.712723, 23.557779, 32.917488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.612160, 23.378422, 32.793724>,  <34.444553, 23.079493, 32.587448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612160, 23.378422, 32.793724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005148, 0.565988, -0.824398,
		-0.907964, 0.348092, 0.233312,
		0.419018, 0.747322, 0.515688,
		34.737865, 23.602619, 32.948429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750851, 23.133879, 32.430813>,  <34.444553, 23.079493, 32.587448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750851, 23.133879, 32.430813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542725, 22.891682, 32.189934>,  <33.417850, 22.746363, 32.045406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542725, 22.891682, 32.189934>,  <33.750851, 23.133879, 32.430813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542725, 22.891682, 32.189934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115343, -0.648886, 0.752092,
		-0.846148, 0.460786, 0.267787,
		-0.520317, -0.605494, -0.602202,
		33.386631, 22.710033, 32.009274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998783, 22.942539, 32.795574>,  <33.750851, 23.133879, 32.430813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998783, 22.942539, 32.795574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051151, 22.651855, 32.525833>,  <33.082573, 22.477446, 32.363987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051151, 22.651855, 32.525833>,  <32.998783, 22.942539, 32.795574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051151, 22.651855, 32.525833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334481, -0.672703, 0.659995,
		-0.933265, 0.139155, -0.331138,
		0.130916, -0.726709, -0.674355,
		33.090427, 22.433844, 32.323528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566872, 22.581699, 33.009800>,  <32.998783, 22.942539, 32.795574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566872, 22.581699, 33.009800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.751236, 22.343178, 32.746899>,  <32.861855, 22.200064, 32.589157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.751236, 22.343178, 32.746899>,  <32.566872, 22.581699, 33.009800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751236, 22.343178, 32.746899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137857, -0.779730, 0.610751,
		-0.876675, -0.190893, -0.441588,
		0.460907, -0.596307, -0.657254,
		32.889507, 22.164286, 32.549721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203667, 22.007175, 32.842766>,  <32.566872, 22.581699, 33.009800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203667, 22.007175, 32.842766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.589394, 21.913677, 32.793030>,  <32.820827, 21.857578, 32.763187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.589394, 21.913677, 32.793030>,  <32.203667, 22.007175, 32.842766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589394, 21.913677, 32.793030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088762, -0.727879, 0.679937,
		-0.249436, -0.644637, -0.722652,
		0.964315, -0.233745, -0.124340,
		32.878689, 21.843554, 32.755726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105637, 21.364567, 32.761459>,  <32.203667, 22.007175, 32.842766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105637, 21.364567, 32.761459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.503941, 21.357483, 32.797585>,  <32.742924, 21.353231, 32.819260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.503941, 21.357483, 32.797585>,  <32.105637, 21.364567, 32.761459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503941, 21.357483, 32.797585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072688, -0.753220, 0.653740,
		0.056445, -0.657530, -0.751311,
		0.995756, -0.017711, 0.090310,
		32.802666, 21.352169, 32.824677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278477, 20.649582, 32.731018>,  <32.105637, 21.364567, 32.761459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278477, 20.649582, 32.731018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.578304, 20.841614, 32.913303>,  <32.758202, 20.956833, 33.022675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.578304, 20.841614, 32.913303>,  <32.278477, 20.649582, 32.731018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578304, 20.841614, 32.913303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056475, -0.732330, 0.678604,
		0.659514, -0.482923, -0.576044,
		0.749567, 0.480081, 0.455709,
		32.803173, 20.985638, 33.050014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751499, 20.048391, 32.889565>,  <32.278477, 20.649582, 32.731018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751499, 20.048391, 32.889565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840069, 20.368378, 33.112644>,  <32.893211, 20.560369, 33.246490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840069, 20.368378, 33.112644>,  <32.751499, 20.048391, 32.889565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840069, 20.368378, 33.112644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035878, -0.578190, 0.815113,
		0.974517, -0.160478, -0.156728,
		0.221427, 0.799965, 0.557698,
		32.906498, 20.608368, 33.279953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335781, 19.932280, 33.191250>,  <32.751499, 20.048391, 32.889565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335781, 19.932280, 33.191250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157764, 20.203781, 33.424911>,  <33.050957, 20.366682, 33.565109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157764, 20.203781, 33.424911>,  <33.335781, 19.932280, 33.191250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157764, 20.203781, 33.424911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172766, -0.574979, 0.799720,
		0.878689, 0.456826, 0.138621,
		-0.445037, 0.678756, 0.584151,
		33.024254, 20.407408, 33.600159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804546, 19.945091, 33.731926>,  <33.335781, 19.932280, 33.191250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804546, 19.945091, 33.731926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.465351, 20.122509, 33.847988>,  <33.261833, 20.228960, 33.917625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.465351, 20.122509, 33.847988>,  <33.804546, 19.945091, 33.731926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465351, 20.122509, 33.847988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089282, -0.420074, 0.903087,
		0.522445, 0.791711, 0.316617,
		-0.847986, 0.443545, 0.290151,
		33.210957, 20.255573, 33.935032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.172600, 32.513676, 23.654436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780655, 32.485897, 23.579559>,  <32.545486, 32.469231, 23.534634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780655, 32.485897, 23.579559>,  <33.172600, 32.513676, 23.654436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780655, 32.485897, 23.579559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092312, -0.673753, 0.733168,
		-0.177034, 0.735686, 0.653777,
		-0.979866, -0.069444, -0.187190,
		32.486694, 32.465065, 23.523403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871223, 32.710926, 24.298330>,  <33.172600, 32.513676, 23.654436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871223, 32.710926, 24.298330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632530, 32.466877, 24.089848>,  <32.489315, 32.320450, 23.964758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632530, 32.466877, 24.089848>,  <32.871223, 32.710926, 24.298330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632530, 32.466877, 24.089848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004806, -0.652238, 0.757999,
		-0.802422, 0.449821, 0.392148,
		-0.596738, -0.610120, -0.521208,
		32.453510, 32.283840, 23.933485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549099, 32.355335, 24.821857>,  <32.871223, 32.710926, 24.298330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549099, 32.355335, 24.821857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461414, 32.114494, 24.514763>,  <32.408806, 31.969990, 24.330505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461414, 32.114494, 24.514763>,  <32.549099, 32.355335, 24.821857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461414, 32.114494, 24.514763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029221, -0.790573, 0.611670,
		-0.975240, 0.111649, 0.190895,
		-0.219209, -0.602104, -0.767736,
		32.395653, 31.933863, 24.284443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949440, 31.863419, 25.045780>,  <32.549099, 32.355335, 24.821857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949440, 31.863419, 25.045780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100163, 31.689995, 24.718357>,  <32.190598, 31.585939, 24.521902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100163, 31.689995, 24.718357>,  <31.949440, 31.863419, 25.045780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100163, 31.689995, 24.718357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122137, -0.852725, 0.507881,
		-0.918204, -0.291350, -0.268360,
		0.376808, -0.433561, -0.818560,
		32.213203, 31.559927, 24.472790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701378, 31.138342, 25.114250>,  <31.949440, 31.863419, 25.045780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701378, 31.138342, 25.114250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981340, 31.093723, 24.832062>,  <32.149319, 31.066952, 24.662748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981340, 31.093723, 24.832062>,  <31.701378, 31.138342, 25.114250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981340, 31.093723, 24.832062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267679, -0.874771, 0.403885,
		-0.662179, -0.471521, -0.582397,
		0.699905, -0.111549, -0.705472,
		32.191311, 31.060259, 24.620420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651003, 30.508152, 24.925039>,  <31.701378, 31.138342, 25.114250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651003, 30.508152, 24.925039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019714, 30.584015, 24.789772>,  <32.240940, 30.629532, 24.708611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019714, 30.584015, 24.789772>,  <31.651003, 30.508152, 24.925039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019714, 30.584015, 24.789772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304841, -0.893460, 0.329849,
		-0.239583, -0.407135, -0.881386,
		0.921777, 0.189656, -0.338169,
		32.296246, 30.640911, 24.688322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779524, 29.971613, 24.531059>,  <31.651003, 30.508152, 24.925039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779524, 29.971613, 24.531059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115238, 30.131821, 24.678127>,  <32.316666, 30.227945, 24.766367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115238, 30.131821, 24.678127>,  <31.779524, 29.971613, 24.531059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115238, 30.131821, 24.678127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242375, -0.880960, 0.406403,
		0.486674, -0.251975, -0.836455,
		0.839287, 0.400522, 0.367668,
		32.367023, 30.251978, 24.788427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261971, 29.567698, 24.320677>,  <31.779524, 29.971613, 24.531059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261971, 29.567698, 24.320677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453262, 29.756779, 24.616745>,  <32.568035, 29.870228, 24.794386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453262, 29.756779, 24.616745>,  <32.261971, 29.567698, 24.320677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453262, 29.756779, 24.616745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277176, -0.880955, 0.383526,
		0.833351, 0.021747, -0.552316,
		0.478225, 0.472701, 0.740172,
		32.596729, 29.898588, 24.838797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981640, 29.274477, 24.319761>,  <32.261971, 29.567698, 24.320677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981640, 29.274477, 24.319761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892101, 29.416515, 24.682816>,  <32.838379, 29.501738, 24.900648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892101, 29.416515, 24.682816>,  <32.981640, 29.274477, 24.319761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892101, 29.416515, 24.682816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252148, -0.878461, 0.405866,
		0.941443, 0.319710, 0.107103,
		-0.223845, 0.355094, 0.907635,
		32.824947, 29.523043, 24.955107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500607, 29.019054, 24.725252>,  <32.981640, 29.274477, 24.319761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500607, 29.019054, 24.725252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229542, 29.144234, 24.991436>,  <33.066902, 29.219341, 25.151146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229542, 29.144234, 24.991436>,  <33.500607, 29.019054, 24.725252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229542, 29.144234, 24.991436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175183, -0.810176, 0.559398,
		0.714200, 0.495661, 0.494204,
		-0.677664, 0.312946, 0.665459,
		33.026241, 29.238117, 25.191074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765915, 28.783108, 25.297388>,  <33.500607, 29.019054, 24.725252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765915, 28.783108, 25.297388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399014, 28.883266, 25.421295>,  <33.178875, 28.943361, 25.495640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399014, 28.883266, 25.421295>,  <33.765915, 28.783108, 25.297388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399014, 28.883266, 25.421295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113641, -0.580860, 0.806032,
		0.381759, 0.774534, 0.504338,
		-0.917249, 0.250397, 0.309767,
		33.123840, 28.958385, 25.514225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855343, 29.013155, 26.020514>,  <33.765915, 28.783108, 25.297388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855343, 29.013155, 26.020514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482819, 28.882389, 25.956284>,  <33.259304, 28.803930, 25.917746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482819, 28.882389, 25.956284>,  <33.855343, 29.013155, 26.020514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482819, 28.882389, 25.956284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101959, -0.657248, 0.746746,
		-0.349661, 0.679081, 0.645435,
		-0.931312, -0.326915, -0.160576,
		33.203426, 28.784315, 25.908112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852028, 29.485306, 26.646135>,  <33.855343, 29.013155, 26.020514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852028, 29.485306, 26.646135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223099, 29.506798, 26.793934>,  <34.445740, 29.519693, 26.882614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223099, 29.506798, 26.793934>,  <33.852028, 29.485306, 26.646135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223099, 29.506798, 26.793934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229163, 0.699354, -0.677043,
		-0.294787, 0.712753, 0.636462,
		0.927677, 0.053730, 0.369497,
		34.501404, 29.522917, 26.904783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017986, 30.189116, 26.846691>,  <33.852028, 29.485306, 26.646135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017986, 30.189116, 26.846691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350719, 29.989697, 26.749123>,  <34.550362, 29.870045, 26.690582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350719, 29.989697, 26.749123>,  <34.017986, 30.189116, 26.846691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350719, 29.989697, 26.749123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251650, 0.730494, -0.634862,
		0.494693, 0.466719, 0.733112,
		0.831836, -0.498550, -0.243920,
		34.600269, 29.840132, 26.675947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491230, 30.738148, 26.759485>,  <34.017986, 30.189116, 26.846691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491230, 30.738148, 26.759485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667892, 30.439224, 26.560905>,  <34.773891, 30.259871, 26.441757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667892, 30.439224, 26.560905>,  <34.491230, 30.738148, 26.759485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667892, 30.439224, 26.560905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350138, 0.653038, -0.671525,
		0.826038, 0.122760, 0.550082,
		0.441661, -0.747310, -0.496451,
		34.800392, 30.215031, 26.411970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089256, 31.017586, 26.578062>,  <34.491230, 30.738148, 26.759485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089256, 31.017586, 26.578062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047272, 30.706478, 26.330173>,  <35.022079, 30.519814, 26.181440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047272, 30.706478, 26.330173>,  <35.089256, 31.017586, 26.578062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047272, 30.706478, 26.330173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478103, 0.506958, -0.717224,
		0.872009, -0.371573, 0.318642,
		-0.104963, -0.777770, -0.619723,
		35.015781, 30.473146, 26.144257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668369, 31.004459, 26.222940>,  <35.089256, 31.017586, 26.578062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668369, 31.004459, 26.222940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426952, 30.804955, 25.974113>,  <35.282101, 30.685251, 25.824818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426952, 30.804955, 25.974113>,  <35.668369, 31.004459, 26.222940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426952, 30.804955, 25.974113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483257, 0.391731, -0.782949,
		0.634191, -0.773163, 0.004604,
		-0.603544, -0.498764, -0.622069,
		35.245888, 30.655325, 25.787493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112762, 30.800465, 25.703260>,  <35.668369, 31.004459, 26.222940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112762, 30.800465, 25.703260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744278, 30.763729, 25.552032>,  <35.523186, 30.741688, 25.461296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744278, 30.763729, 25.552032>,  <36.112762, 30.800465, 25.703260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744278, 30.763729, 25.552032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258754, 0.581065, -0.771628,
		0.290549, -0.808659, -0.511519,
		-0.921210, -0.091838, -0.378071,
		35.467915, 30.736177, 25.438610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244011, 30.657415, 24.945276>,  <36.112762, 30.800465, 25.703260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244011, 30.657415, 24.945276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873440, 30.802452, 24.985794>,  <35.651096, 30.889475, 25.010105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873440, 30.802452, 24.985794>,  <36.244011, 30.657415, 24.945276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873440, 30.802452, 24.985794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125275, 0.550631, -0.825295,
		-0.355022, -0.751886, -0.555542,
		-0.926426, 0.362594, 0.101294,
		35.595512, 30.911230, 25.016182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992680, 30.720522, 24.185608>,  <36.244011, 30.657415, 24.945276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992680, 30.720522, 24.185608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758686, 30.950012, 24.414913>,  <35.618290, 31.087706, 24.552496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758686, 30.950012, 24.414913>,  <35.992680, 30.720522, 24.185608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758686, 30.950012, 24.414913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010359, 0.712050, -0.702053,
		-0.810975, -0.404754, -0.422484,
		-0.584988, 0.573724, 0.573262,
		35.583191, 31.122129, 24.586891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591339, 31.136677, 23.710894>,  <35.992680, 30.720522, 24.185608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591339, 31.136677, 23.710894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545860, 31.344959, 24.049347>,  <35.518574, 31.469929, 24.252419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545860, 31.344959, 24.049347>,  <35.591339, 31.136677, 23.710894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545860, 31.344959, 24.049347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109673, 0.853027, -0.510213,
		-0.987444, 0.034790, -0.154091,
		-0.113694, 0.520706, 0.846132,
		35.511753, 31.501171, 24.303186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115231, 31.649797, 23.473518>,  <35.591339, 31.136677, 23.710894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115231, 31.649797, 23.473518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299587, 31.778801, 23.804230>,  <35.410202, 31.856203, 24.002657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299587, 31.778801, 23.804230>,  <35.115231, 31.649797, 23.473518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299587, 31.778801, 23.804230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186725, 0.875534, -0.445616,
		-0.867588, 0.359763, 0.343310,
		0.460895, 0.322507, 0.826780,
		35.437855, 31.875553, 24.052263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798122, 32.272182, 23.619818>,  <35.115231, 31.649797, 23.473518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798122, 32.272182, 23.619818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126804, 32.315872, 23.843559>,  <35.324013, 32.342087, 23.977804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126804, 32.315872, 23.843559>,  <34.798122, 32.272182, 23.619818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126804, 32.315872, 23.843559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151042, 0.904635, -0.398525,
		-0.549536, 0.411956, 0.726844,
		0.821703, 0.109220, 0.559352,
		35.373314, 32.348637, 24.011364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663731, 32.901196, 23.867580>,  <34.798122, 32.272182, 23.619818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663731, 32.901196, 23.867580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057384, 32.832809, 23.886528>,  <35.293579, 32.791779, 23.897898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057384, 32.832809, 23.886528>,  <34.663731, 32.901196, 23.867580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057384, 32.832809, 23.886528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174227, 0.881115, -0.439639,
		0.033423, 0.440918, 0.896925,
		0.984138, -0.170962, 0.047371,
		35.352627, 32.781521, 23.900740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849663, 33.493389, 24.013670>,  <34.663731, 32.901196, 23.867580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849663, 33.493389, 24.013670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206326, 33.339916, 23.917557>,  <35.420322, 33.247833, 23.859888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206326, 33.339916, 23.917557>,  <34.849663, 33.493389, 24.013670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206326, 33.339916, 23.917557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247716, 0.857764, -0.450420,
		0.378923, 0.342098, 0.859876,
		0.891658, -0.383680, -0.240283,
		35.473824, 33.224812, 23.845472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356499, 33.915924, 24.192835>,  <34.849663, 33.493389, 24.013670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356499, 33.915924, 24.192835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546749, 33.713947, 23.904720>,  <35.660900, 33.592762, 23.731852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546749, 33.713947, 23.904720>,  <35.356499, 33.915924, 24.192835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546749, 33.713947, 23.904720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109928, 0.846539, -0.520853,
		0.872750, 0.168552, 0.458145,
		0.475629, -0.504937, -0.720288,
		35.689438, 33.562466, 23.688633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173031, 34.429398, 24.679111>,  <35.356499, 33.915924, 24.192835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173031, 34.429398, 24.679111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238396, 34.781544, 24.857216>,  <35.277615, 34.992832, 24.964079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238396, 34.781544, 24.857216>,  <35.173031, 34.429398, 24.679111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238396, 34.781544, 24.857216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201943, -0.471620, 0.858367,
		0.965668, -0.050353, -0.254852,
		0.163414, 0.880363, 0.445260,
		35.287418, 35.045654, 24.990793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788960, 34.385956, 25.012197>,  <35.173031, 34.429398, 24.679111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788960, 34.385956, 25.012197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559845, 34.655861, 25.198364>,  <35.422379, 34.817806, 25.310064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559845, 34.655861, 25.198364>,  <35.788960, 34.385956, 25.012197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559845, 34.655861, 25.198364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103372, -0.503792, 0.857618,
		0.813164, 0.539339, 0.218811,
		-0.572782, 0.674765, 0.465417,
		35.388012, 34.858292, 25.337990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205715, 34.630486, 25.594679>,  <35.788960, 34.385956, 25.012197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205715, 34.630486, 25.594679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813175, 34.680019, 25.653496>,  <35.577652, 34.709740, 25.688786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813175, 34.680019, 25.653496>,  <36.205715, 34.630486, 25.594679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813175, 34.680019, 25.653496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067452, -0.494453, 0.866583,
		0.180015, 0.860338, 0.476878,
		-0.981348, 0.123832, 0.147040,
		35.518772, 34.717171, 25.697607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091465, 34.959682, 26.194778>,  <36.205715, 34.630486, 25.594679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091465, 34.959682, 26.194778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741947, 34.773056, 26.139927>,  <35.532238, 34.661079, 26.107016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741947, 34.773056, 26.139927>,  <36.091465, 34.959682, 26.194778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741947, 34.773056, 26.139927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041715, -0.352857, 0.934747,
		-0.484505, 0.811055, 0.327787,
		-0.873793, -0.466563, -0.137128,
		35.479809, 34.633087, 26.098789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853523, 34.971462, 26.816797>,  <36.091465, 34.959682, 26.194778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853523, 34.971462, 26.816797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589451, 34.717278, 26.656624>,  <35.431007, 34.564766, 26.560520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589451, 34.717278, 26.656624>,  <35.853523, 34.971462, 26.816797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589451, 34.717278, 26.656624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000016, -0.533139, 0.846028,
		-0.751108, 0.558524, 0.351978,
		-0.660180, -0.635464, -0.400436,
		35.391396, 34.526638, 26.536493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381882, 34.852615, 27.293175>,  <35.853523, 34.971462, 26.816797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381882, 34.852615, 27.293175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329067, 34.525223, 27.069515>,  <35.297379, 34.328785, 26.935320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329067, 34.525223, 27.069515>,  <35.381882, 34.852615, 27.293175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329067, 34.525223, 27.069515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003428, -0.563709, 0.825967,
		-0.991239, 0.110977, 0.071626,
		-0.132040, -0.818484, -0.559150,
		35.289455, 34.279678, 26.901770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784134, 34.716522, 27.455452>,  <35.381882, 34.852615, 27.293175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784134, 34.716522, 27.455452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957390, 34.380383, 27.325100>,  <35.061344, 34.178699, 27.246889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957390, 34.380383, 27.325100>,  <34.784134, 34.716522, 27.455452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957390, 34.380383, 27.325100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278383, -0.468611, 0.838396,
		-0.857257, -0.272427, -0.436915,
		0.433144, -0.840350, -0.325881,
		35.087334, 34.128277, 27.227335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224285, 34.208580, 27.361631>,  <34.784134, 34.716522, 27.455452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224285, 34.208580, 27.361631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559978, 33.991795, 27.379307>,  <34.761395, 33.861721, 27.389912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559978, 33.991795, 27.379307>,  <34.224285, 34.208580, 27.361631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559978, 33.991795, 27.379307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362946, -0.497801, 0.787695,
		-0.404907, -0.677102, -0.614478,
		0.839238, -0.541966, 0.044188,
		34.811749, 33.829205, 27.392563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959179, 33.526020, 27.371155>,  <34.224285, 34.208580, 27.361631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959179, 33.526020, 27.371155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339664, 33.493073, 27.490093>,  <34.567955, 33.473305, 27.561457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339664, 33.493073, 27.490093>,  <33.959179, 33.526020, 27.371155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339664, 33.493073, 27.490093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275039, -0.663125, 0.696146,
		0.139834, -0.743962, -0.653427,
		0.951210, -0.082373, 0.297346,
		34.625027, 33.468361, 27.579296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026165, 32.852516, 27.407333>,  <33.959179, 33.526020, 27.371155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026165, 32.852516, 27.407333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322372, 33.014637, 27.621758>,  <34.500095, 33.111912, 27.750412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322372, 33.014637, 27.621758>,  <34.026165, 32.852516, 27.407333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322372, 33.014637, 27.621758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192967, -0.635838, 0.747311,
		0.643735, -0.656840, -0.392640,
		0.740519, 0.405304, 0.536060,
		34.544529, 33.136227, 27.782576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318478, 32.224537, 27.765373>,  <34.026165, 32.852516, 27.407333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318478, 32.224537, 27.765373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480766, 32.530575, 27.965382>,  <34.578140, 32.714199, 28.085386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480766, 32.530575, 27.965382>,  <34.318478, 32.224537, 27.765373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480766, 32.530575, 27.965382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009538, -0.543494, 0.839359,
		0.913948, -0.345312, -0.213208,
		0.405718, 0.765097, 0.500019,
		34.602482, 32.760105, 28.115387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935375, 31.982424, 28.010244>,  <34.318478, 32.224537, 27.765373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935375, 31.982424, 28.010244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829979, 32.292683, 28.239658>,  <34.766743, 32.478840, 28.377308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829979, 32.292683, 28.239658>,  <34.935375, 31.982424, 28.010244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829979, 32.292683, 28.239658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026883, -0.600219, 0.799384,
		0.964288, 0.195210, 0.179002,
		-0.263488, 0.775649, 0.573536,
		34.750931, 32.525375, 28.411718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349800, 31.872797, 28.604425>,  <34.935375, 31.982424, 28.010244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349800, 31.872797, 28.604425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056732, 32.118702, 28.721226>,  <34.880890, 32.266243, 28.791306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056732, 32.118702, 28.721226>,  <35.349800, 31.872797, 28.604425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056732, 32.118702, 28.721226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071924, -0.496579, 0.865006,
		0.676772, 0.612764, 0.408045,
		-0.732671, 0.614760, 0.291999,
		34.836929, 32.303131, 28.808825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414032, 32.023914, 29.388435>,  <35.349800, 31.872797, 28.604425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414032, 32.023914, 29.388435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035275, 32.086071, 29.275829>,  <34.808022, 32.123363, 29.208265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035275, 32.086071, 29.275829>,  <35.414032, 32.023914, 29.388435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035275, 32.086071, 29.275829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321552, -0.455019, 0.830399,
		0.000940, 0.876819, 0.480820,
		-0.946892, 0.155389, -0.281515,
		34.751205, 32.132687, 29.191374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125172, 32.372612, 29.987183>,  <35.414032, 32.023914, 29.388435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125172, 32.372612, 29.987183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823517, 32.231052, 29.765903>,  <34.642525, 32.146118, 29.633135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823517, 32.231052, 29.765903>,  <35.125172, 32.372612, 29.987183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823517, 32.231052, 29.765903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369533, -0.467678, 0.802946,
		-0.542882, 0.809958, 0.221916,
		-0.754138, -0.353900, -0.553200,
		34.597275, 32.124882, 29.599943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552086, 32.414799, 30.412882>,  <35.125172, 32.372612, 29.987183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552086, 32.414799, 30.412882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401260, 32.170013, 30.134796>,  <34.310764, 32.023144, 29.967945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401260, 32.170013, 30.134796>,  <34.552086, 32.414799, 30.412882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401260, 32.170013, 30.134796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414696, -0.559625, 0.717529,
		-0.828159, 0.558860, -0.042761,
		-0.377068, -0.611961, -0.695215,
		34.288139, 31.986425, 29.926231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738117, 32.341991, 30.478121>,  <34.552086, 32.414799, 30.412882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738117, 32.341991, 30.478121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865635, 32.024918, 30.270267>,  <33.942146, 31.834673, 30.145555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865635, 32.024918, 30.270267>,  <33.738117, 32.341991, 30.478121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865635, 32.024918, 30.270267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315280, -0.605705, 0.730561,
		-0.893849, -0.069070, -0.443015,
		0.318797, -0.792685, -0.519633,
		33.961273, 31.787111, 30.114378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175102, 31.940687, 30.578268>,  <33.738117, 32.341991, 30.478121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175102, 31.940687, 30.578268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477524, 31.703079, 30.468346>,  <33.658978, 31.560514, 30.402393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477524, 31.703079, 30.468346>,  <33.175102, 31.940687, 30.578268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477524, 31.703079, 30.468346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359943, -0.728039, 0.583439,
		-0.546642, -0.342200, -0.764253,
		0.756059, -0.594020, -0.274804,
		33.704342, 31.524874, 30.385904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871647, 31.306028, 30.439249>,  <33.175102, 31.940687, 30.578268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871647, 31.306028, 30.439249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260113, 31.221558, 30.483517>,  <33.493191, 31.170876, 30.510078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260113, 31.221558, 30.483517>,  <32.871647, 31.306028, 30.439249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260113, 31.221558, 30.483517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229828, -0.705724, 0.670173,
		-0.063421, -0.676283, -0.733907,
		0.971162, -0.211175, 0.110671,
		33.551460, 31.158205, 30.516718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908634, 30.549852, 30.415472>,  <32.871647, 31.306028, 30.439249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908634, 30.549852, 30.415472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232132, 30.697971, 30.598259>,  <33.426231, 30.786842, 30.707932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232132, 30.697971, 30.598259>,  <32.908634, 30.549852, 30.415472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232132, 30.697971, 30.598259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193448, -0.566243, 0.801216,
		0.555444, -0.736374, -0.386309,
		0.808740, 0.370300, 0.456966,
		33.474754, 30.809061, 30.735348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204601, 29.963762, 30.731955>,  <32.908634, 30.549852, 30.415472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204601, 29.963762, 30.731955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379444, 30.279659, 30.904118>,  <33.484348, 30.469196, 31.007416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379444, 30.279659, 30.904118>,  <33.204601, 29.963762, 30.731955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379444, 30.279659, 30.904118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020660, -0.469599, 0.882638,
		0.899174, -0.394696, -0.188947,
		0.437104, 0.789741, 0.430406,
		33.510574, 30.516582, 31.033239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678913, 29.667723, 31.197256>,  <33.204601, 29.963762, 30.731955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678913, 29.667723, 31.197256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619808, 30.036205, 31.341225>,  <33.584343, 30.257296, 31.427607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619808, 30.036205, 31.341225>,  <33.678913, 29.667723, 31.197256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619808, 30.036205, 31.341225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017389, -0.361442, 0.932232,
		0.988869, 0.144011, 0.037390,
		-0.147766, 0.921206, 0.359923,
		33.575478, 30.312567, 31.449202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309265, 29.881832, 31.591560>,  <33.678913, 29.667723, 31.197256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309265, 29.881832, 31.591560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978283, 30.069309, 31.715267>,  <33.779694, 30.181795, 31.789492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978283, 30.069309, 31.715267>,  <34.309265, 29.881832, 31.591560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978283, 30.069309, 31.715267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103286, -0.668396, 0.736600,
		0.551952, 0.577560, 0.601476,
		-0.827455, 0.468691, 0.309268,
		33.730045, 30.209917, 31.808048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353397, 29.955118, 32.381504>,  <34.309265, 29.881832, 31.591560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353397, 29.955118, 32.381504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974316, 29.994835, 32.260185>,  <33.746864, 30.018665, 32.187393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974316, 29.994835, 32.260185>,  <34.353397, 29.955118, 32.381504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974316, 29.994835, 32.260185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306619, -0.546876, 0.779045,
		-0.088514, 0.831305, 0.548723,
		-0.947708, 0.099293, -0.303300,
		33.690002, 30.024622, 32.169197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096165, 30.148926, 33.022987>,  <34.353397, 29.955118, 32.381504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096165, 30.148926, 33.022987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788391, 30.028576, 32.797619>,  <33.603725, 29.956366, 32.662399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788391, 30.028576, 32.797619>,  <34.096165, 30.148926, 33.022987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788391, 30.028576, 32.797619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447008, -0.376424, 0.811473,
		-0.456236, 0.876231, 0.155142,
		-0.769436, -0.300873, -0.563421,
		33.557560, 29.938314, 32.628593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497776, 30.297348, 33.375923>,  <34.096165, 30.148926, 33.022987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497776, 30.297348, 33.375923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396294, 30.009735, 33.117119>,  <33.335403, 29.837168, 32.961834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396294, 30.009735, 33.117119>,  <33.497776, 30.297348, 33.375923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396294, 30.009735, 33.117119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455771, -0.501130, 0.735623,
		-0.853175, 0.481519, -0.200577,
		-0.253701, -0.719032, -0.647015,
		33.320183, 29.794025, 32.923016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746376, 30.221008, 33.478252>,  <33.497776, 30.297348, 33.375923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746376, 30.221008, 33.478252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873451, 29.876354, 33.319931>,  <32.949696, 29.669561, 33.224937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873451, 29.876354, 33.319931>,  <32.746376, 30.221008, 33.478252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873451, 29.876354, 33.319931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445264, -0.504101, 0.740015,
		-0.837148, -0.058856, -0.543801,
		0.317686, -0.861637, -0.395800,
		32.968758, 29.617863, 33.201191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147316, 29.749043, 33.589970>,  <32.746376, 30.221008, 33.478252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147316, 29.749043, 33.589970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466518, 29.521950, 33.509106>,  <32.658039, 29.385695, 33.460587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466518, 29.521950, 33.509106>,  <32.147316, 29.749043, 33.589970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466518, 29.521950, 33.509106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310143, -0.674501, 0.669970,
		-0.516719, -0.471942, -0.714334,
		0.798006, -0.567732, -0.202157,
		32.705921, 29.351629, 33.448460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500393, 29.647049, 33.146664>,  <32.147316, 29.749043, 33.589970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500393, 29.647049, 33.146664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106001, 29.606731, 33.093472>,  <30.869366, 29.582541, 33.061554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106001, 29.606731, 33.093472>,  <31.500393, 29.647049, 33.146664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106001, 29.606731, 33.093472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037602, 0.642244, -0.765578,
		0.162572, -0.759844, -0.629449,
		-0.985980, -0.100793, -0.132982,
		30.810207, 29.576494, 33.053577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383001, 29.561966, 32.396282>,  <31.500393, 29.647049, 33.146664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383001, 29.561966, 32.396282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032825, 29.680119, 32.549305>,  <30.822720, 29.751009, 32.641121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032825, 29.680119, 32.549305>,  <31.383001, 29.561966, 32.396282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032825, 29.680119, 32.549305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058268, 0.721246, -0.690223,
		-0.479799, -0.626541, -0.614198,
		-0.875442, 0.295380, 0.382560,
		30.770193, 29.768732, 32.664074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108133, 29.831417, 31.764078>,  <31.383001, 29.561966, 32.396282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108133, 29.831417, 31.764078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891951, 29.990467, 32.060673>,  <30.762241, 30.085897, 32.238628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891951, 29.990467, 32.060673>,  <31.108133, 29.831417, 31.764078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891951, 29.990467, 32.060673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193400, 0.798973, -0.569420,
		-0.818843, -0.451149, -0.354908,
		-0.540455, 0.397627, 0.741486,
		30.729815, 30.109755, 32.283119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563454, 30.005730, 31.461100>,  <31.108133, 29.831417, 31.764078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563454, 30.005730, 31.461100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551331, 30.239952, 31.785126>,  <30.544058, 30.380486, 31.979542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551331, 30.239952, 31.785126>,  <30.563454, 30.005730, 31.461100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551331, 30.239952, 31.785126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087457, 0.805775, -0.585728,
		-0.995707, -0.088597, 0.026792,
		-0.030306, 0.585557, 0.810064,
		30.542238, 30.415619, 32.028145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959209, 30.444466, 31.459368>,  <30.563454, 30.005730, 31.461100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959209, 30.444466, 31.459368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209236, 30.662411, 31.682945>,  <30.359253, 30.793177, 31.817091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209236, 30.662411, 31.682945>,  <29.959209, 30.444466, 31.459368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209236, 30.662411, 31.682945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279289, 0.824778, -0.491669,
		-0.728896, 0.151219, 0.667715,
		0.625066, 0.544861, 0.558944,
		30.396755, 30.825869, 31.850628>
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
